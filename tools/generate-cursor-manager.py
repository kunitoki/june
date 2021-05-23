import clang.cindex

if __name__ == "__main__":
  buf = f"""
# AUTOGENERATED

import typing
import clang.cindex
from clang_base_enumerations import CursorKind
from dataclasses import dataclass

@dataclass
class CursorManager:
    _cursor: clang.cindex.Cursor

    @staticmethod
    def print_cursor_kind_counts(cursor: clang.cindex.Cursor):
      from collections import Counter
      kinds = []
      cursor_visitor: typing.Iterator[clang.cindex.Cursor] = cursor.get_children()
      for it in cursor_visitor:
          kinds.append(it.kind)
      print(Counter(kinds))

    @staticmethod
    def filter_node_list_by_node_kind(
            nodes: typing.Iterable[clang.cindex.Cursor],
            kinds: list[CursorKind]) -> typing.Iterable[clang.cindex.Cursor]:
        result = []
        for i in nodes:
            if i.kind == CursorKind.NAMESPACE:
                for k in i.get_children():
                    if k.kind in kinds:
                        result.append(k)
        return result

  """

  for cursor in clang.cindex.CursorKind.get_all_kinds():
    buf += f"""
    def {cursor.name.lower()}s(self):
      return self.filter_node_list_by_node_kind(self._cursor.get_children(), [CursorKind.{cursor.name}])
    """

  with open("clang_cursor_manager.py", "w+") as f:
    f.write(buf)