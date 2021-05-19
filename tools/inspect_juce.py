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

nim_class_def = """type
  {spelling} {{.header: juce_core, importcpp: "{spelling}".}} = object
"""

nim_method_def = """proc {name}({args}){return} {{.importcpp: "#.{name}(@)".}}"""

#==================================================================================================

index = clang.cindex.Index.create()

translation_unit = index.parse('../JUCE/modules/juce_core/juce_core.h',
    args=['-std=c++17', '-DJUCE_API=', '-DNDEBUG=1'])

all_classes = filter_node_list_by_node_kind(translation_unit.cursor.get_children(),
    [clang.cindex.CursorKind.CLASS_DECL, clang.cindex.CursorKind.STRUCT_DECL])

class_map = {}
class_inheritance_map = {}
class_field_map = {}

for c in all_classes:
    bases = [node.referenced for node in filter(lambda x: x.kind == clang.cindex.CursorKind.CXX_BASE_SPECIFIER, c.get_children())]

    class_map[c.spelling] = c
    class_inheritance_map[c.spelling] = bases

for c in all_classes:
    if c.spelling != "Thread":
        continue

    print(nim_class_def.format(**{ "spelling": c.spelling }))

    #print(c.spelling)
    #print(list(map(lambda x: x.spelling, class_inheritance_map[c.spelling])))

    for m in filter(lambda x: x.kind == clang.cindex.CursorKind.CXX_METHOD, c.get_children()):
        if m.access_specifier != clang.cindex.AccessSpecifier.PUBLIC:
            continue

        is_static_method = m.is_static_method()
        is_const_method = m.is_const_method()

        if is_static_method:
            continue

        args = [ f"this: {c.spelling}" ]
        for arg in m.get_arguments():
            args.append(f"{arg.spelling}: {arg.type.spelling}")

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
