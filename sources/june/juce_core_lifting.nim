
# String
proc makeString*(text: cstring, bufferSizeByts: int = -1): String {.header: juce_core, importcpp: "juce::String::fromUTF8(@)".}

proc toRawUTF8*(this: String): string =
  result = newString(this.length())
  copyMem(result.cstring, cast[ptr char](this.toRawUTF8Impl()), this.length())

proc `$`*(text: String): string = text.toRawUTF8

converter toJuceString*(text: string): String = makeString(text)
converter toNimString*(text: String): string = text.toRawUTF8

# StringRef
proc makeStringRef*(text: cstring): StringRef {.header: juce_core, importcpp: "juce::StringRef(@)", constructor.}
proc makeStringRef*(text: String): StringRef {.header: juce_core, importcpp: "juce::StringRef(@)", constructor.}

converter toStringRef*(text: String): StringRef = makeStringRef(text)
converter toStringRef*(text: string): StringRef = makeStringRef(text.cstring)
