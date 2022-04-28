# June - Copyright (c) 2022 Lucio Asnaghi, Gavin Ray
#
# Licensed and distributed under the
#   MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
#
# This file may not be copied, modified, or distributed except according to those terms.

import std/strutils

type
  #wcharConstImpl {.importc:"const wchar_t*".} = object
  cstringConstImpl {.importc:"const char*".} = cstring
  voidpConstImpl {.importc:"const void*".} = pointer
  #juce_wchar* = distinct wcharConstImpl
  constChar* = distinct cstringConstImpl
  constPointer* = distinct voidpConstImpl


converter toConstChar*(text: string): constChar = cast[constChar](text.cstring)


proc cnew*[T](x: T): ptr T {.importcpp: "(new '*0#@)", nodecl.}
proc cdelete*[T](x: ptr T) {.importcpp: "(delete @)", nodecl.}
