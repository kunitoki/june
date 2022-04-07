
type
  #wcharConstImpl {.importc:"const wchar_t*".} = object
  cstringConstImpl {.importc:"const char*".} = cstring
  voidpConstImpl {.importc:"const void*".} = pointer
  #juce_wchar* = distinct wcharConstImpl
  constChar* = distinct cstringConstImpl
  constPointer* = distinct voidpConstImpl

converter toConstChar*(text: string): constChar = cast[constChar](text.cstring)

proc cdelete*[T](x: ptr T) {.importcpp: "(delete @)", nodecl.}
