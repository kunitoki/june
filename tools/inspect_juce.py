import clang.cindex
import typing

from clang_base_enumerations import CursorKind, AccessSpecifier

#==================================================================================================

nim_type_def = """type
{classes}
"""

nim_class_def = """  {name} {{.inheritable.}} {{.header: juce_core, importcpp: "{spelling}".}} = object"""
nim_method_def = """proc {name}({args}){return} {{.importcpp: "#.{name}(@)".}}"""

#==================================================================================================

def remap_type(t, *args):
    type_remapping = {
        "juce::int8": "int8",
        "juce::int16": "int16",
        "juce::int32": "int32",
        "juce::int64": "int64",
        "juce::uint8": "uint8",
        "juce::uint16": "uint16",
        "juce::uint32": "uint32",
        "juce::uint64": "uint64"
    }

    parts = t.spelling.split(" ")

    result = t.spelling
    result = result.replace("const", "")
    result = result.replace("*", "")
    result = result.replace("&", "")
    result = result.strip()

    result = type_remapping.get(result, result)
    for a in args:
        result = a.get(result, result)

    if "const" not in parts and not t.get_pointee().is_const_qualified():
        if "&" in parts:
            result = f"var {result}"

    return result

#==================================================================================================

class_map = {}
class_inheritance_map = {}
class_inner = {}
class_field_map = {}
class_juce_map = {}

#==================================================================================================

index = clang.cindex.Index.create()

translation_unit = index.parse('../JUCE/modules/juce_core/juce_core.h',
    args=['-std=c++17', '-DJUCE_API=', '-DNDEBUG=1'])

top_level = translation_unit.cursor.get_children()

juce_namespace = None
for namespace in top_level.get_children():
    if namespace.kind == CursorKind.NAMESPACE and namespace.spelling == "juce":
        juce_namespace = namespace
        break

# TODO - Extract base types (ints, floats, aliases)

# TODO - Extract freee functions

# Extract all juce classes
all_classes = [node for node in filter(
    lambda x: x.kind == CursorKind.CLASS_DECL or x.kind == CursorKind.STRUCT_DECL, juce_namespace.get_children())]

# Store internal mapping tables, build inheritance map
for c in all_classes:
    bases = [node.referenced for node in filter(
        lambda x: x.kind == CursorKind.CXX_BASE_SPECIFIER, c.get_children())]

    inner_classes = [node for node in filter(
        lambda x: x.access_specifier == AccessSpecifier.PUBLIC and
            (x.kind == CursorKind.CLASS_DECL or x.kind == CursorKind.STRUCT_DECL), c.get_children())]

    class_map[c.spelling] = c
    class_inheritance_map[c.spelling] = bases
    class_inner[c.spelling] = inner_classes

    qualified_name = f"juce::{c.spelling}"
    class_juce_map[qualified_name] = c.spelling

# TODO - First pass: iterate classes and build dependency graph based on types in public interface

# TODO - Sort the classes by dependencies

# Second pass: iterate sorted classes (TODO) and generate Nim code
for c in all_classes:
    #if c.spelling != "Thread":
    #    continue

    qualified_name = f"juce::{c.spelling}"
    classes_text = [
        nim_class_def.format(**{ "name": c.spelling, "spelling": qualified_name })
    ]

    remap_inner_classes = {}
    if class_inner[c.spelling]:
        for ic in class_inner[c.spelling]:
            name = f"{c.spelling}{ic.spelling}"
            qualified_name = f"juce::{c.spelling}::{ic.spelling}"
            classes_text.append(
                nim_class_def.format(**{ "name": name, "spelling": qualified_name }))
            remap_inner_classes[qualified_name] = name

    print(nim_type_def.format(**{ "classes": "\n".join(classes_text) }))

    #print(c.spelling)
    #print(list(map(lambda x: x.spelling, class_inheritance_map[c.spelling])))

    for m in filter(lambda x: x.kind == CursorKind.CXX_METHOD, c.get_children()):
        if m.access_specifier != AccessSpecifier.PUBLIC:
            continue

        is_static_method = m.is_static_method()
        is_const_method = m.is_const_method()

        if is_static_method: # TODO
            continue

        args = [ f"this: {'' if is_const_method else 'var '}{c.spelling}" ]
        for count, arg in enumerate(m.get_arguments()):
            spelling = arg.spelling if arg.spelling else f"arg{count + 1}"
            args.append(f"{spelling}: {remap_type(arg.type, remap_inner_classes, class_juce_map)}")

        return_type = ""
        if m.result_type.spelling != "void":
            return_type = f": {remap_type(m.result_type, remap_inner_classes, class_juce_map)}"

        print(nim_method_def.format(**{
            "name": m.spelling,
            "args": ", ".join(args),
            "return": return_type
        }))

    print()
