import sys
import os
import clang.cindex
import typing
import argparse

from clang_base_enumerations import CursorKind, AccessSpecifier

#==================================================================================================

nim_type_def = """type
{classes}
"""

nim_prolog_def = """import june_common

const {juce_module_name} = "{juce_module_prefix}{juce_module_path}"
"""

nim_suffix_def = """

include {juce_module_name}_lifting
"""

nim_class_def = """  {class_name}* {{.header: {juce_module_name}, importcpp: "{spelling}".}} = object"""

nim_method_def = """{comment}proc {method_name}*({method_args}){method_return} {{.header: {juce_module_name}, importcpp: "#.{juce_spelling}({juce_args})".}}"""

#==================================================================================================

def remap_type(t, *args):
    remap_table = {
        "short": "int16",
        "long": "int64",
        "double": "float64",
        "wchar_t": "uint16",
        "juce::int8": "int8",
        "juce::int16": "int16",
        "juce::int32": "int32",
        "juce::int64": "int64",
        "juce::uint8": "uint8",
        "juce::uint16": "uint16",
        "juce::uint32": "uint32",
        "juce::uint64": "uint64",
        "juce::juce_wchar": "uint16",
        "juce::String::CharPointerType": "ptr char",
        "juce::CharPointer_ASCII::CharType": "char",
        "juce::CharPointer_UTF8::CharType": "char",
        "juce::CharPointer_UTF16::CharType": "int16",
        "juce::CharPointer_UTF32::CharType": "uint16",
        "String::CharPointerType": "CharPointer_UTF8",
        "CharPointer_ASCII::CharType": "char",
        "CharPointer_UTF8::CharType": "char",
        "CharPointer_UTF16::CharType": "int16",
        "CharPointer_UTF32::CharType": "uint16",
        "juce::var": "juce_var",
        "var": "juce_var",
        "var::NativeFunctionArgs": "juce_varNativeFunctionArgs",
        "NamedValueSet::NamedValue": "NamedValueSetNamedValue"
    }

    parts = list(filter(lambda part: part, t.spelling.split(" ")))

    is_pointer = "*" in parts
    is_const = "const" in parts

    result = t.spelling
    # Remap common types
    result = result.replace("const void *", "kPointer")
    result = result.replace("void *", "pointer")
    result = result.replace("const char *", "kChar")
    result = result.replace("char *", "ptr char")
    # Extract the type itself
    result = result.replace("const", "")
    result = result.replace("*", "")
    result = result.replace("&", "")
    # Replace internal june types
    result = result.replace("kPointer", "constPointer")
    result = result.replace("kChar", "constChar")
    result = result.strip()

    result = remap_table.get(result, result)
    for a in args:
        result = a.get(result, result)

    if not is_const and not t.get_pointee().is_const_qualified():
        if "&&" in parts:
            result = f"lent {result}"
        if "&" in parts:
            result = f"var {result}"

    implicit_pointer_types = ["pointer", "ptr char", "constChar", "constPointer"]

    return f"ptr {result}" if is_pointer and result not in implicit_pointer_types else result

def remap_class_name(class_name):
    remap_table = {
        "var": "juce_var",
        "juce::var": "juce_var",
    }

    return remap_table.get(class_name, class_name)

def remap_identifier(identifier):
    remap_table = {
        "type": "`type`",
        "end": "`end`",
        "object": "`object`",
        "method": "`method`",
    }

    return remap_table.get(identifier, identifier)

def remap_method_name(method_name):
    return remap_identifier(method_name)

def remap_operator_name(class_name, method_name):
    remap_table = {
        "operator[]": f"`{class_name}[]`",
        "operator==": f"`{class_name}==`",
        "operator!=": f"`{class_name}!=`",
        "operator<": f"`{class_name}<`",
        "operator<=": f"`{class_name}<=`",
        "operator>": f"`{class_name}>`",
        "operator>=": f"`{class_name}>=`",
        "operator=": f"`{class_name}=`",
        "operator+=": f"`{class_name}+=`",
        "operator-=": f"`{class_name}-=`",
        "operator/=": f"`{class_name}/=`",
        "operator*=": f"`{class_name}*=`",
        "operator|=": f"`{class_name}|=`",
        "operator&=": f"`{class_name}&=`",
        "operator^=": f"`{class_name}^=`",
        "operator%=": f"`{class_name}%=`",
        "operator<<=": f"`{class_name}<<=`",
        "operator>>=": f"`{class_name}>>=`",
        "operator++": "`inc`",
        "operator--": "`dec`",
    }

    return remap_table.get(method_name)

def remap_argument_name(arg_name, count):
    if not arg_name:
        return f"arg{count + 1}"

    return remap_identifier(arg_name)

#==================================================================================================

def skip_class_method(class_name, method_name):
    skip_table = {
        "ConsoleApplication": "findAndRunCommand",
        "AbstractFifo": "read",
        "AbstractFifo": "write",
        "String": "quoted",
        "String": "operator+=",
        "StringArray": "appendNumbersToDuplicates",
        "DynamicObject": "clone",
        "MemoryMappedFile": "getRange",
        "RelativeTime": "getDescription",
        "Expression": "getType",
        "Random": "nextInt",
        "Thread": "getThreadID",
        "ThreadPoolJob": "runJob",
        "ThreadPoolJob": "addListener",
        "ThreadPoolJob": "removeListener",
        "ThreadPoolJob": "addJob",
        "URL": "downloadToFile",
        "URL": "createInputStream",
        "XmlElement": "getChildIterator",
        "XmlElement": "getChildWithTagNameIterator",
    }

    return method_name.strip() in skip_table.get(class_name.strip(), {})

#==================================================================================================

def run_main(juce_module_name, juce_class_name_to_export):
    class_map = {}
    class_inheritance_map = {}
    class_inner = {}
    class_field_map = {}
    class_juce_map = {}

    done_classes = set()

    base_path = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

    juce_module_prefix = "../../"
    juce_module_path = f"JUCE/modules/{juce_module_name}/{juce_module_name}.h"
    juce_args = ["-std=c++17", "-DJUCE_API=", "-DNDEBUG=1"]

    index = clang.cindex.Index.create()
    translation_unit = index.parse(os.path.join(base_path, juce_module_path), args=juce_args)

    top_level = translation_unit.cursor.get_children()

    juce_namespace = []
    for entry in top_level:
        if entry.kind == CursorKind.NAMESPACE and entry.spelling == "juce":
            juce_namespace.append(entry)

    # TODO - Extract base types (ints, floats, aliases)

    # Extract free functions
    all_functions = []
    for entry in juce_namespace:
        all_functions += [node for node in filter(
            lambda x: x.kind == CursorKind.FUNCTION_DECL, entry.get_children())]

    # Extract all juce classes
    all_classes = []
    for entry in juce_namespace:
        all_classes += [node for node in filter(
            lambda x: x.kind == CursorKind.CLASS_DECL or x.kind == CursorKind.STRUCT_DECL, entry.get_children())]

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
    print(nim_prolog_def.format(**{
        "juce_module_name": juce_module_name,
        "juce_module_prefix": juce_module_prefix,
        "juce_module_path": juce_module_path }))

    for c in all_classes:
        if juce_class_name_to_export is not None and c.spelling != juce_class_name_to_export:
            continue

        if c.spelling.startswith("this_will_fail_to_link"):
            continue

        class_name = remap_class_name(c.spelling)
        qualified_name = f"juce::{c.spelling}"

        classes_text = []

        if c.spelling not in done_classes:
            classes_text.append(
                nim_class_def.format(**{
                    "class_name": class_name,
                    "spelling": qualified_name,
                    "juce_module_name": juce_module_name })
            )

        remap_inner_classes = {}
        if class_inner[c.spelling]:
            for ic in class_inner[c.spelling]:
                inner_name = f"{class_name}{ic.spelling}"
                inner_qualified_name = f"juce::{c.spelling}::{ic.spelling}"

                if c.spelling not in done_classes:
                    classes_text.append(
                        nim_class_def.format(**{
                            "class_name": inner_name,
                            "spelling": inner_qualified_name,
                            "juce_module_name": juce_module_name })
                    )

                remap_inner_classes[inner_qualified_name] = inner_name

        if c.spelling not in done_classes:
            print(nim_type_def.format(**{ "classes": "\n".join(classes_text) }))

        done_classes.add(c.spelling)

        #print(c.spelling)
        #print(list(map(lambda x: x.spelling, class_inheritance_map[c.spelling])))

        for m in filter(lambda x: x.kind == CursorKind.CXX_METHOD, c.get_children()):
            if m.access_specifier != AccessSpecifier.PUBLIC:
                continue

            if m.spelling in ["JUCE_DEPRECATED", "JUCE_DEPRECATED_STATIC"]:
                continue

            is_static_method = m.is_static_method()
            is_const_method = m.is_const_method()

            if is_static_method: # TODO
                continue

            comment = ""

            args = [ f"this: {'' if is_const_method else 'var '}{class_name}" ]
            for count, arg in enumerate(m.get_arguments()):
                default_value = ""

                contains_default = any(filter(lambda t: t == "=", [t.spelling for t in arg.get_tokens()]))
                if contains_default:
                    arg_children = [t.spelling for t in arg.get_tokens()]
                    default_value = "".join(arg_children[arg_children.index("=") + 1:])
                    default_value = default_value.replace("nullptr", "nil")
                    default_value = f" = {default_value}"

                spelling = remap_argument_name(arg.spelling, count)
                args.append(f"{spelling}: {remap_type(arg.type, remap_inner_classes, class_juce_map)}{default_value}")

            return_type = ""
            if m.result_type.spelling != "void":
                return_type = f": {remap_type(m.result_type, remap_inner_classes, class_juce_map)}"

            if m.result_type.spelling in ["CFStringRef", "OSType"]:
                comment = "# "

            if skip_class_method(class_name, m.spelling) or m.spelling in ["begin", "end", "cbegin", "cend"]:
                comment = "# "

            method_spelling = m.spelling
            method_name = remap_method_name(m.spelling)
            if method_name.startswith("operator"):
                method_name = remap_operator_name(class_name, method_name)
                if not method_name:
                    method_name = m.spelling
                    comment = "# "

            print(nim_method_def.format(**{
                "comment": comment,
                "method_name": method_name,
                "method_args": ", ".join(args),
                "method_return": return_type,
                "juce_module_name": juce_module_name,
                "juce_spelling": method_spelling,
                "juce_args": "@" if len(args) > 1 else "",
            }))

        print()

    print(nim_suffix_def.format(**{"juce_module_name": juce_module_name}))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Juce to Nim binding converter")
    parser.add_argument("--module", default="juce_core", help="Name of the juce module to export")
    parser.add_argument("--class-name", help="Name of the juce class to export, if none all classes will be exported")
    args = parser.parse_args()

    run_main(args.module, args.class_name)
