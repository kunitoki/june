import clang.cindex
import typing

#==================================================================================================

def filter_node_list_by_node_kind(
        nodes: typing.Iterable[clang.cindex.Cursor],
        kinds: list) -> typing.Iterable[clang.cindex.Cursor]:
    result = []
    for i in nodes:
        if i.kind == clang.cindex.CursorKind.NAMESPACE:
            for k in i.get_children():
                if k.kind in kinds:
                    result.append(k)
    return result

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

    result = type_remapping.get(t.spelling, t.spelling)
    result = result.replace("*", "")
    result = result.replace("&", "")
    result = result.strip()

    for a in args:
        result = a.get(result, result)

    if t.get_pointee().is_const_qualified():
        result = f"var {result}"

    return result

#==================================================================================================

index = clang.cindex.Index.create()

translation_unit = index.parse('../JUCE/modules/juce_core/juce_core.h',
    args=['-std=c++17', '-DJUCE_API=', '-DNDEBUG=1'])

all_classes = filter_node_list_by_node_kind(translation_unit.cursor.get_children(),
    [clang.cindex.CursorKind.CLASS_DECL, clang.cindex.CursorKind.STRUCT_DECL])

class_map = {}
class_inheritance_map = {}
class_inner = {}
class_field_map = {}

for c in all_classes:
    bases = [node.referenced for node in filter(
        lambda x: x.kind == clang.cindex.CursorKind.CXX_BASE_SPECIFIER, c.get_children())]

    inner_classes = [node for node in filter(
        lambda x: x.kind == clang.cindex.CursorKind.CLASS_DECL
            or x.kind == clang.cindex.CursorKind.STRUCT_DECL, c.get_children())]

    class_map[c.spelling] = c
    class_inheritance_map[c.spelling] = bases
    class_inner[c.spelling] = inner_classes

for c in all_classes:
    if c.spelling != "Thread":
        continue

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

    for m in filter(lambda x: x.kind == clang.cindex.CursorKind.CXX_METHOD, c.get_children()):
        if m.access_specifier != clang.cindex.AccessSpecifier.PUBLIC:
            continue

        is_static_method = m.is_static_method()
        is_const_method = m.is_const_method()

        if is_static_method: # TODO
            continue

        args = [ f"this: {'' if is_const_method else 'var '}{c.spelling}" ]
        for count, arg in enumerate(m.get_arguments()):
            spelling = arg.spelling if arg.spelling else f"arg{count + 1}"
            args.append(f"{spelling}: {remap_type(arg.type, remap_inner_classes)}")

        return_type = ""
        if m.result_type.spelling != "void":
            return_type = f": {m.result_type.spelling}"

        print(nim_method_def.format(**{
            "name": m.spelling,
            "args": ", ".join(args),
            "return": return_type
        }))

        """
        print(
            "  -> ",
            "static " if is_static_method else "",
            m.result_type.spelling,
            m.spelling,
            "const" if m.is_const_method() else "")

        #print(m.result_type)
        #print(dir(m))

        for arg in m.get_arguments():
            print(dir(arg))
            print("    | ARG=%s %s" % (arg.type.spelling, arg.spelling))
        """

    print()
