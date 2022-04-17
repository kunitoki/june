# June - Copyright (c) 2022 Lucio Asnaghi, Gavin Ray
#
# Licensed and distributed under the
#   MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
#
# This file may not be copied, modified, or distributed except according to those terms.

const juce_core = "<juce_core/juce_core.h>"


type
  StringRef* {.header: juce_core, importcpp: "juce::StringRef".} = object


type
  MemoryBlock* {.header: juce_core, importcpp: "juce::MemoryBlock".} = object


type
  File* {.header: juce_core, importcpp: "juce::File".} = object
  FileNaturalFileComparator* {.header: juce_core, importcpp: "juce::File::NaturalFileComparator".} = object


type
  InputStream* {.header: juce_core, importcpp: "juce::InputStream".} = object


type
  OutputStream* {.header: juce_core, importcpp: "juce::OutputStream".} = object


type
  DynamicObject* {.header: juce_core, importcpp: "juce::DynamicObject".} = object


type
  FileInputStream* {.header: juce_core, importcpp: "juce::FileInputStream".} = object


type
  FileOutputStream* {.header: juce_core, importcpp: "juce::FileOutputStream".} = object


type
  XmlElement* {.header: juce_core, importcpp: "juce::XmlElement".} = object
  XmlElementTextFormat* {.header: juce_core, importcpp: "juce::XmlElement::TextFormat".} = object
  XmlElementXmlAttributeNode* {.header: juce_core, importcpp: "juce::XmlElement::XmlAttributeNode".} = object


type
  ByteOrder* {.header: juce_core, importcpp: "juce::ByteOrder".} = object


type
  CharacterFunctions* {.header: juce_core, importcpp: "juce::CharacterFunctions".} = object


type
  CharPointer_UTF8* {.header: juce_core, importcpp: "juce::CharPointer_UTF8".} = object

proc `CharPointer_UTF8=`*(this: var CharPointer_UTF8, other: CharPointer_UTF8): CharPointer_UTF8 {.header: juce_core, importcpp: "#.operator=(@)".}
proc `CharPointer_UTF8=`*(this: var CharPointer_UTF8, text: ptr char): CharPointer_UTF8 {.header: juce_core, importcpp: "#.operator=(@)".}
proc `CharPointer_UTF8==`*(this: CharPointer_UTF8, other: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `CharPointer_UTF8!=`*(this: CharPointer_UTF8, other: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc `CharPointer_UTF8<=`*(this: CharPointer_UTF8, other: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.operator<=(@)".}
proc `CharPointer_UTF8<`*(this: CharPointer_UTF8, other: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.operator<(@)".}
proc `CharPointer_UTF8>=`*(this: CharPointer_UTF8, other: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.operator>=(@)".}
proc `CharPointer_UTF8>`*(this: CharPointer_UTF8, other: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.operator>(@)".}
proc getAddress*(this: CharPointer_UTF8): ptr char {.header: juce_core, importcpp: "#.getAddress()".}
proc isEmpty*(this: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.isEmpty()".}
proc isNotEmpty*(this: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.isNotEmpty()".}
# proc operator**(this: CharPointer_UTF8): uint16 {.header: juce_core, importcpp: "#.operator*()".}
proc `inc`*(this: var CharPointer_UTF8): var CharPointer_UTF8 {.header: juce_core, importcpp: "#.operator++()".}
proc `dec`*(this: var CharPointer_UTF8): CharPointer_UTF8 {.header: juce_core, importcpp: "#.operator--()".}
proc getAndAdvance*(this: var CharPointer_UTF8): uint16 {.header: juce_core, importcpp: "#.getAndAdvance()".}
proc `inc`*(this: var CharPointer_UTF8, arg1: int): CharPointer_UTF8 {.header: juce_core, importcpp: "#.operator++(@)".}
proc `CharPointer_UTF8+=`*(this: var CharPointer_UTF8, numToSkip: int) {.header: juce_core, importcpp: "#.operator+=(@)".}
proc `CharPointer_UTF8-=`*(this: var CharPointer_UTF8, numToSkip: int) {.header: juce_core, importcpp: "#.operator-=(@)".}
proc `CharPointer_UTF8[]`*(this: CharPointer_UTF8, characterIndex: int): uint16 {.header: juce_core, importcpp: "#.operator[](@)".}
# proc operator+*(this: CharPointer_UTF8, numToSkip: int): CharPointer_UTF8 {.header: juce_core, importcpp: "#.operator+(@)".}
# proc operator-*(this: CharPointer_UTF8, numToSkip: int): CharPointer_UTF8 {.header: juce_core, importcpp: "#.operator-(@)".}
proc length*(this: CharPointer_UTF8): int {.header: juce_core, importcpp: "#.length()".}
proc lengthUpTo*(this: CharPointer_UTF8, maxCharsToCount: int): int {.header: juce_core, importcpp: "#.lengthUpTo(@)".}
proc lengthUpTo*(this: CharPointer_UTF8, `end`: CharPointer_UTF8): int {.header: juce_core, importcpp: "#.lengthUpTo(@)".}
proc sizeInBytes*(this: CharPointer_UTF8): int {.header: juce_core, importcpp: "#.sizeInBytes()".}
proc findTerminatingNull*(this: CharPointer_UTF8): CharPointer_UTF8 {.header: juce_core, importcpp: "#.findTerminatingNull()".}
proc write*(this: var CharPointer_UTF8, charToWrite: uint16) {.header: juce_core, importcpp: "#.write(@)".}
proc writeNull*(this: CharPointer_UTF8) {.header: juce_core, importcpp: "#.writeNull()".}
proc writeAll*(this: var CharPointer_UTF8, src: CharPointer_UTF8) {.header: juce_core, importcpp: "#.writeAll(@)".}
proc compareIgnoreCase*(this: CharPointer_UTF8, other: CharPointer_UTF8): int {.header: juce_core, importcpp: "#.compareIgnoreCase(@)".}
proc indexOf*(this: CharPointer_UTF8, charToFind: uint16): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc indexOf*(this: CharPointer_UTF8, charToFind: uint16, ignoreCase: bool): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc isWhitespace*(this: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.isWhitespace()".}
proc isDigit*(this: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.isDigit()".}
proc isLetter*(this: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.isLetter()".}
proc isLetterOrDigit*(this: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.isLetterOrDigit()".}
proc isUpperCase*(this: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.isUpperCase()".}
proc isLowerCase*(this: CharPointer_UTF8): bool {.header: juce_core, importcpp: "#.isLowerCase()".}
proc toUpperCase*(this: CharPointer_UTF8): uint16 {.header: juce_core, importcpp: "#.toUpperCase()".}
proc toLowerCase*(this: CharPointer_UTF8): uint16 {.header: juce_core, importcpp: "#.toLowerCase()".}
proc getIntValue32*(this: CharPointer_UTF8): int {.header: juce_core, importcpp: "#.getIntValue32()".}
proc getIntValue64*(this: CharPointer_UTF8): int64 {.header: juce_core, importcpp: "#.getIntValue64()".}
proc getDoubleValue*(this: CharPointer_UTF8): float64 {.header: juce_core, importcpp: "#.getDoubleValue()".}
proc findEndOfWhitespace*(this: CharPointer_UTF8): CharPointer_UTF8 {.header: juce_core, importcpp: "#.findEndOfWhitespace()".}
proc incrementToEndOfWhitespace*(this: var CharPointer_UTF8) {.header: juce_core, importcpp: "#.incrementToEndOfWhitespace()".}
proc atomicSwap*(this: var CharPointer_UTF8, newValue: CharPointer_UTF8): CharPointer_UTF8 {.header: juce_core, importcpp: "#.atomicSwap(@)".}

type
  CharPointer_UTF16* {.header: juce_core, importcpp: "juce::CharPointer_UTF16".} = object

proc `CharPointer_UTF16=`*(this: var CharPointer_UTF16, other: CharPointer_UTF16): CharPointer_UTF16 {.header: juce_core, importcpp: "#.operator=(@)".}
proc `CharPointer_UTF16=`*(this: var CharPointer_UTF16, text: ptr int16): CharPointer_UTF16 {.header: juce_core, importcpp: "#.operator=(@)".}
proc `CharPointer_UTF16==`*(this: CharPointer_UTF16, other: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `CharPointer_UTF16!=`*(this: CharPointer_UTF16, other: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc `CharPointer_UTF16<=`*(this: CharPointer_UTF16, other: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.operator<=(@)".}
proc `CharPointer_UTF16<`*(this: CharPointer_UTF16, other: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.operator<(@)".}
proc `CharPointer_UTF16>=`*(this: CharPointer_UTF16, other: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.operator>=(@)".}
proc `CharPointer_UTF16>`*(this: CharPointer_UTF16, other: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.operator>(@)".}
proc getAddress*(this: CharPointer_UTF16): ptr int16 {.header: juce_core, importcpp: "#.getAddress()".}
proc isEmpty*(this: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.isEmpty()".}
proc isNotEmpty*(this: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.isNotEmpty()".}
# proc operator**(this: CharPointer_UTF16): uint16 {.header: juce_core, importcpp: "#.operator*()".}
proc `inc`*(this: var CharPointer_UTF16): CharPointer_UTF16 {.header: juce_core, importcpp: "#.operator++()".}
proc `dec`*(this: var CharPointer_UTF16): CharPointer_UTF16 {.header: juce_core, importcpp: "#.operator--()".}
proc getAndAdvance*(this: var CharPointer_UTF16): uint16 {.header: juce_core, importcpp: "#.getAndAdvance()".}
proc `inc`*(this: var CharPointer_UTF16, arg1: int): CharPointer_UTF16 {.header: juce_core, importcpp: "#.operator++(@)".}
proc `CharPointer_UTF16+=`*(this: var CharPointer_UTF16, numToSkip: int) {.header: juce_core, importcpp: "#.operator+=(@)".}
proc `CharPointer_UTF16-=`*(this: var CharPointer_UTF16, numToSkip: int) {.header: juce_core, importcpp: "#.operator-=(@)".}
proc `CharPointer_UTF16[]`*(this: CharPointer_UTF16, characterIndex: int): uint16 {.header: juce_core, importcpp: "#.operator[](@)".}
# proc operator+*(this: CharPointer_UTF16, numToSkip: int): CharPointer_UTF16 {.header: juce_core, importcpp: "#.operator+(@)".}
# proc operator-*(this: CharPointer_UTF16, numToSkip: int): CharPointer_UTF16 {.header: juce_core, importcpp: "#.operator-(@)".}
proc write*(this: var CharPointer_UTF16, charToWrite: uint16) {.header: juce_core, importcpp: "#.write(@)".}
proc writeNull*(this: CharPointer_UTF16) {.header: juce_core, importcpp: "#.writeNull()".}
proc length*(this: CharPointer_UTF16): int {.header: juce_core, importcpp: "#.length()".}
proc lengthUpTo*(this: CharPointer_UTF16, maxCharsToCount: int): int {.header: juce_core, importcpp: "#.lengthUpTo(@)".}
proc lengthUpTo*(this: CharPointer_UTF16, `end`: CharPointer_UTF16): int {.header: juce_core, importcpp: "#.lengthUpTo(@)".}
proc sizeInBytes*(this: CharPointer_UTF16): int {.header: juce_core, importcpp: "#.sizeInBytes()".}
proc findTerminatingNull*(this: CharPointer_UTF16): CharPointer_UTF16 {.header: juce_core, importcpp: "#.findTerminatingNull()".}
proc writeAll*(this: var CharPointer_UTF16, src: CharPointer_UTF16) {.header: juce_core, importcpp: "#.writeAll(@)".}
proc indexOf*(this: CharPointer_UTF16, charToFind: uint16): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc indexOf*(this: CharPointer_UTF16, charToFind: uint16, ignoreCase: bool): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc isWhitespace*(this: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.isWhitespace()".}
proc isDigit*(this: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.isDigit()".}
proc isLetter*(this: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.isLetter()".}
proc isLetterOrDigit*(this: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.isLetterOrDigit()".}
proc isUpperCase*(this: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.isUpperCase()".}
proc isLowerCase*(this: CharPointer_UTF16): bool {.header: juce_core, importcpp: "#.isLowerCase()".}
proc toUpperCase*(this: CharPointer_UTF16): uint16 {.header: juce_core, importcpp: "#.toUpperCase()".}
proc toLowerCase*(this: CharPointer_UTF16): uint16 {.header: juce_core, importcpp: "#.toLowerCase()".}
proc getIntValue32*(this: CharPointer_UTF16): int {.header: juce_core, importcpp: "#.getIntValue32()".}
proc getIntValue64*(this: CharPointer_UTF16): int64 {.header: juce_core, importcpp: "#.getIntValue64()".}
proc getDoubleValue*(this: CharPointer_UTF16): float64 {.header: juce_core, importcpp: "#.getDoubleValue()".}
proc findEndOfWhitespace*(this: CharPointer_UTF16): CharPointer_UTF16 {.header: juce_core, importcpp: "#.findEndOfWhitespace()".}
proc incrementToEndOfWhitespace*(this: var CharPointer_UTF16) {.header: juce_core, importcpp: "#.incrementToEndOfWhitespace()".}
proc atomicSwap*(this: var CharPointer_UTF16, newValue: CharPointer_UTF16): CharPointer_UTF16 {.header: juce_core, importcpp: "#.atomicSwap(@)".}

type
  CharPointer_UTF32* {.header: juce_core, importcpp: "juce::CharPointer_UTF32".} = object

proc `CharPointer_UTF32=`*(this: var CharPointer_UTF32, other: CharPointer_UTF32): CharPointer_UTF32 {.header: juce_core, importcpp: "#.operator=(@)".}
proc `CharPointer_UTF32=`*(this: var CharPointer_UTF32, text: ptr uint16): CharPointer_UTF32 {.header: juce_core, importcpp: "#.operator=(@)".}
proc `CharPointer_UTF32==`*(this: CharPointer_UTF32, other: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `CharPointer_UTF32!=`*(this: CharPointer_UTF32, other: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc `CharPointer_UTF32<=`*(this: CharPointer_UTF32, other: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.operator<=(@)".}
proc `CharPointer_UTF32<`*(this: CharPointer_UTF32, other: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.operator<(@)".}
proc `CharPointer_UTF32>=`*(this: CharPointer_UTF32, other: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.operator>=(@)".}
proc `CharPointer_UTF32>`*(this: CharPointer_UTF32, other: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.operator>(@)".}
proc getAddress*(this: CharPointer_UTF32): ptr uint16 {.header: juce_core, importcpp: "#.getAddress()".}
proc isEmpty*(this: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.isEmpty()".}
proc isNotEmpty*(this: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.isNotEmpty()".}
# proc operator**(this: CharPointer_UTF32): uint16 {.header: juce_core, importcpp: "#.operator*()".}
proc `inc`*(this: var CharPointer_UTF32): CharPointer_UTF32 {.header: juce_core, importcpp: "#.operator++()".}
proc `dec`*(this: var CharPointer_UTF32): CharPointer_UTF32 {.header: juce_core, importcpp: "#.operator--()".}
proc getAndAdvance*(this: var CharPointer_UTF32): uint16 {.header: juce_core, importcpp: "#.getAndAdvance()".}
proc `inc`*(this: var CharPointer_UTF32, arg1: int): CharPointer_UTF32 {.header: juce_core, importcpp: "#.operator++(@)".}
proc `CharPointer_UTF32+=`*(this: var CharPointer_UTF32, numToSkip: int) {.header: juce_core, importcpp: "#.operator+=(@)".}
proc `CharPointer_UTF32-=`*(this: var CharPointer_UTF32, numToSkip: int) {.header: juce_core, importcpp: "#.operator-=(@)".}
proc `CharPointer_UTF32[]`*(this: CharPointer_UTF32, characterIndex: int): var uint16 {.header: juce_core, importcpp: "#.operator[](@)".}
# proc operator+*(this: CharPointer_UTF32, numToSkip: int): CharPointer_UTF32 {.header: juce_core, importcpp: "#.operator+(@)".}
# proc operator-*(this: CharPointer_UTF32, numToSkip: int): CharPointer_UTF32 {.header: juce_core, importcpp: "#.operator-(@)".}
proc write*(this: var CharPointer_UTF32, charToWrite: uint16) {.header: juce_core, importcpp: "#.write(@)".}
proc replaceChar*(this: var CharPointer_UTF32, newChar: uint16) {.header: juce_core, importcpp: "#.replaceChar(@)".}
proc writeNull*(this: CharPointer_UTF32) {.header: juce_core, importcpp: "#.writeNull()".}
proc length*(this: CharPointer_UTF32): int {.header: juce_core, importcpp: "#.length()".}
proc lengthUpTo*(this: CharPointer_UTF32, maxCharsToCount: int): int {.header: juce_core, importcpp: "#.lengthUpTo(@)".}
proc lengthUpTo*(this: CharPointer_UTF32, `end`: CharPointer_UTF32): int {.header: juce_core, importcpp: "#.lengthUpTo(@)".}
proc sizeInBytes*(this: CharPointer_UTF32): int {.header: juce_core, importcpp: "#.sizeInBytes()".}
proc findTerminatingNull*(this: CharPointer_UTF32): CharPointer_UTF32 {.header: juce_core, importcpp: "#.findTerminatingNull()".}
proc writeAll*(this: var CharPointer_UTF32, src: CharPointer_UTF32) {.header: juce_core, importcpp: "#.writeAll(@)".}
proc compare*(this: CharPointer_UTF32, other: CharPointer_UTF32): int {.header: juce_core, importcpp: "#.compare(@)".}
proc indexOf*(this: CharPointer_UTF32, charToFind: uint16): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc indexOf*(this: CharPointer_UTF32, charToFind: uint16, ignoreCase: bool): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc isWhitespace*(this: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.isWhitespace()".}
proc isDigit*(this: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.isDigit()".}
proc isLetter*(this: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.isLetter()".}
proc isLetterOrDigit*(this: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.isLetterOrDigit()".}
proc isUpperCase*(this: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.isUpperCase()".}
proc isLowerCase*(this: CharPointer_UTF32): bool {.header: juce_core, importcpp: "#.isLowerCase()".}
proc toUpperCase*(this: CharPointer_UTF32): uint16 {.header: juce_core, importcpp: "#.toUpperCase()".}
proc toLowerCase*(this: CharPointer_UTF32): uint16 {.header: juce_core, importcpp: "#.toLowerCase()".}
proc getIntValue32*(this: CharPointer_UTF32): int {.header: juce_core, importcpp: "#.getIntValue32()".}
proc getIntValue64*(this: CharPointer_UTF32): int64 {.header: juce_core, importcpp: "#.getIntValue64()".}
proc getDoubleValue*(this: CharPointer_UTF32): float64 {.header: juce_core, importcpp: "#.getDoubleValue()".}
proc findEndOfWhitespace*(this: CharPointer_UTF32): CharPointer_UTF32 {.header: juce_core, importcpp: "#.findEndOfWhitespace()".}
proc incrementToEndOfWhitespace*(this: var CharPointer_UTF32) {.header: juce_core, importcpp: "#.incrementToEndOfWhitespace()".}
proc atomicSwap*(this: var CharPointer_UTF32, newValue: CharPointer_UTF32): CharPointer_UTF32 {.header: juce_core, importcpp: "#.atomicSwap(@)".}

type
  CharPointer_ASCII* {.header: juce_core, importcpp: "juce::CharPointer_ASCII".} = object

proc `CharPointer_ASCII=`*(this: var CharPointer_ASCII, other: CharPointer_ASCII): CharPointer_ASCII {.header: juce_core, importcpp: "#.operator=(@)".}
proc `CharPointer_ASCII=`*(this: var CharPointer_ASCII, text: ptr char): CharPointer_ASCII {.header: juce_core, importcpp: "#.operator=(@)".}
proc `CharPointer_ASCII==`*(this: CharPointer_ASCII, other: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `CharPointer_ASCII!=`*(this: CharPointer_ASCII, other: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc `CharPointer_ASCII<=`*(this: CharPointer_ASCII, other: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.operator<=(@)".}
proc `CharPointer_ASCII<`*(this: CharPointer_ASCII, other: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.operator<(@)".}
proc `CharPointer_ASCII>=`*(this: CharPointer_ASCII, other: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.operator>=(@)".}
proc `CharPointer_ASCII>`*(this: CharPointer_ASCII, other: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.operator>(@)".}
proc getAddress*(this: CharPointer_ASCII): ptr char {.header: juce_core, importcpp: "#.getAddress()".}
proc isEmpty*(this: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.isEmpty()".}
proc isNotEmpty*(this: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.isNotEmpty()".}
# proc operator**(this: CharPointer_ASCII): uint16 {.header: juce_core, importcpp: "#.operator*()".}
proc `inc`*(this: var CharPointer_ASCII): CharPointer_ASCII {.header: juce_core, importcpp: "#.operator++()".}
proc `dec`*(this: var CharPointer_ASCII): CharPointer_ASCII {.header: juce_core, importcpp: "#.operator--()".}
proc getAndAdvance*(this: var CharPointer_ASCII): uint16 {.header: juce_core, importcpp: "#.getAndAdvance()".}
proc `inc`*(this: var CharPointer_ASCII, arg1: int): CharPointer_ASCII {.header: juce_core, importcpp: "#.operator++(@)".}
proc `CharPointer_ASCII+=`*(this: var CharPointer_ASCII, numToSkip: int) {.header: juce_core, importcpp: "#.operator+=(@)".}
proc `CharPointer_ASCII-=`*(this: var CharPointer_ASCII, numToSkip: int) {.header: juce_core, importcpp: "#.operator-=(@)".}
proc `CharPointer_ASCII[]`*(this: CharPointer_ASCII, characterIndex: int): uint16 {.header: juce_core, importcpp: "#.operator[](@)".}
# proc operator+*(this: CharPointer_ASCII, numToSkip: int): CharPointer_ASCII {.header: juce_core, importcpp: "#.operator+(@)".}
# proc operator-*(this: CharPointer_ASCII, numToSkip: int): CharPointer_ASCII {.header: juce_core, importcpp: "#.operator-(@)".}
proc write*(this: var CharPointer_ASCII, charToWrite: uint16) {.header: juce_core, importcpp: "#.write(@)".}
proc replaceChar*(this: var CharPointer_ASCII, newChar: uint16) {.header: juce_core, importcpp: "#.replaceChar(@)".}
proc writeNull*(this: CharPointer_ASCII) {.header: juce_core, importcpp: "#.writeNull()".}
proc length*(this: CharPointer_ASCII): int {.header: juce_core, importcpp: "#.length()".}
proc lengthUpTo*(this: CharPointer_ASCII, maxCharsToCount: int): int {.header: juce_core, importcpp: "#.lengthUpTo(@)".}
proc lengthUpTo*(this: CharPointer_ASCII, `end`: CharPointer_ASCII): int {.header: juce_core, importcpp: "#.lengthUpTo(@)".}
proc sizeInBytes*(this: CharPointer_ASCII): int {.header: juce_core, importcpp: "#.sizeInBytes()".}
proc findTerminatingNull*(this: CharPointer_ASCII): CharPointer_ASCII {.header: juce_core, importcpp: "#.findTerminatingNull()".}
proc compare*(this: CharPointer_ASCII, other: CharPointer_ASCII): int {.header: juce_core, importcpp: "#.compare(@)".}
proc compareUpTo*(this: CharPointer_ASCII, other: CharPointer_ASCII, maxChars: int): int {.header: juce_core, importcpp: "#.compareUpTo(@)".}
proc compareIgnoreCase*(this: CharPointer_ASCII, other: CharPointer_ASCII): int {.header: juce_core, importcpp: "#.compareIgnoreCase(@)".}
proc indexOf*(this: CharPointer_ASCII, charToFind: uint16): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc indexOf*(this: CharPointer_ASCII, charToFind: uint16, ignoreCase: bool): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc isWhitespace*(this: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.isWhitespace()".}
proc isDigit*(this: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.isDigit()".}
proc isLetter*(this: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.isLetter()".}
proc isLetterOrDigit*(this: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.isLetterOrDigit()".}
proc isUpperCase*(this: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.isUpperCase()".}
proc isLowerCase*(this: CharPointer_ASCII): bool {.header: juce_core, importcpp: "#.isLowerCase()".}
proc toUpperCase*(this: CharPointer_ASCII): uint16 {.header: juce_core, importcpp: "#.toUpperCase()".}
proc toLowerCase*(this: CharPointer_ASCII): uint16 {.header: juce_core, importcpp: "#.toLowerCase()".}
proc getIntValue32*(this: CharPointer_ASCII): int {.header: juce_core, importcpp: "#.getIntValue32()".}
proc getIntValue64*(this: CharPointer_ASCII): int64 {.header: juce_core, importcpp: "#.getIntValue64()".}
proc getDoubleValue*(this: CharPointer_ASCII): float64 {.header: juce_core, importcpp: "#.getDoubleValue()".}
proc findEndOfWhitespace*(this: CharPointer_ASCII): CharPointer_ASCII {.header: juce_core, importcpp: "#.findEndOfWhitespace()".}
proc incrementToEndOfWhitespace*(this: var CharPointer_ASCII) {.header: juce_core, importcpp: "#.incrementToEndOfWhitespace()".}

type
  String* {.header: juce_core, importcpp: "juce::String".} = object
  StringPreallocationBytes* {.header: juce_core, importcpp: "juce::String::PreallocationBytes".} = object

proc hashCode*(this: String): int {.header: juce_core, importcpp: "#.hashCode()".}
proc hashCode64*(this: String): int64 {.header: juce_core, importcpp: "#.hashCode64()".}
proc hash*(this: String): int {.header: juce_core, importcpp: "#.hash()".}
proc length*(this: String): int {.header: juce_core, importcpp: "#.length()".}
proc `String=`*(this: var String, other: String): var String {.header: juce_core, importcpp: "#.operator=(@)".}
proc `String=`*(this: var String, other: lent String): var String {.header: juce_core, importcpp: "#.operator=(@)".}
# proc `String+=`*(this: var String, stringToAppend: String): var String {.header: juce_core, importcpp: "#.operator+=(@)".}
# proc `String+=`*(this: var String, textToAppend: constChar): var String {.header: juce_core, importcpp: "#.operator+=(@)".}
# proc `String+=`*(this: var String, textToAppend: ptr uint16): var String {.header: juce_core, importcpp: "#.operator+=(@)".}
# proc `String+=`*(this: var String, textToAppend: StringRef): var String {.header: juce_core, importcpp: "#.operator+=(@)".}
# proc `String+=`*(this: var String, numberToAppend: int): var String {.header: juce_core, importcpp: "#.operator+=(@)".}
# proc `String+=`*(this: var String, numberToAppend: int64): var String {.header: juce_core, importcpp: "#.operator+=(@)".}
# proc `String+=`*(this: var String, numberToAppend: int64): var String {.header: juce_core, importcpp: "#.operator+=(@)".}
# proc `String+=`*(this: var String, numberToAppend: uint64): var String {.header: juce_core, importcpp: "#.operator+=(@)".}
# proc `String+=`*(this: var String, characterToAppend: char): var String {.header: juce_core, importcpp: "#.operator+=(@)".}
# proc `String+=`*(this: var String, characterToAppend: uint16): var String {.header: juce_core, importcpp: "#.operator+=(@)".}
proc append*(this: var String, textToAppend: String, maxCharsToTake: int) {.header: juce_core, importcpp: "#.append(@)".}
proc appendCharPointer*(this: var String, startOfTextToAppend: ptr char, endOfTextToAppend: ptr char) {.header: juce_core, importcpp: "#.appendCharPointer(@)".}
proc appendCharPointer*(this: var String, textToAppend: ptr char) {.header: juce_core, importcpp: "#.appendCharPointer(@)".}
proc isEmpty*(this: String): bool {.header: juce_core, importcpp: "#.isEmpty()".}
proc isNotEmpty*(this: String): bool {.header: juce_core, importcpp: "#.isNotEmpty()".}
proc clear*(this: var String) {.header: juce_core, importcpp: "#.clear()".}
proc equalsIgnoreCase*(this: String, other: String): bool {.header: juce_core, importcpp: "#.equalsIgnoreCase(@)".}
proc equalsIgnoreCase*(this: String, other: StringRef): bool {.header: juce_core, importcpp: "#.equalsIgnoreCase(@)".}
proc equalsIgnoreCase*(this: String, other: ptr uint16): bool {.header: juce_core, importcpp: "#.equalsIgnoreCase(@)".}
proc equalsIgnoreCase*(this: String, other: constChar): bool {.header: juce_core, importcpp: "#.equalsIgnoreCase(@)".}
proc compare*(this: String, other: String): int {.header: juce_core, importcpp: "#.compare(@)".}
proc compare*(this: String, other: constChar): int {.header: juce_core, importcpp: "#.compare(@)".}
proc compare*(this: String, other: ptr uint16): int {.header: juce_core, importcpp: "#.compare(@)".}
proc compareIgnoreCase*(this: String, other: String): int {.header: juce_core, importcpp: "#.compareIgnoreCase(@)".}
proc compareNatural*(this: String, other: StringRef, isCaseSensitive: bool = false): int {.header: juce_core, importcpp: "#.compareNatural(@)".}
proc startsWith*(this: String, text: StringRef): bool {.header: juce_core, importcpp: "#.startsWith(@)".}
proc startsWithChar*(this: String, character: uint16): bool {.header: juce_core, importcpp: "#.startsWithChar(@)".}
proc startsWithIgnoreCase*(this: String, text: StringRef): bool {.header: juce_core, importcpp: "#.startsWithIgnoreCase(@)".}
proc endsWith*(this: String, text: StringRef): bool {.header: juce_core, importcpp: "#.endsWith(@)".}
proc endsWithChar*(this: String, character: uint16): bool {.header: juce_core, importcpp: "#.endsWithChar(@)".}
proc endsWithIgnoreCase*(this: String, text: StringRef): bool {.header: juce_core, importcpp: "#.endsWithIgnoreCase(@)".}
proc contains*(this: String, text: StringRef): bool {.header: juce_core, importcpp: "#.contains(@)".}
proc containsChar*(this: String, character: uint16): bool {.header: juce_core, importcpp: "#.containsChar(@)".}
proc containsIgnoreCase*(this: String, text: StringRef): bool {.header: juce_core, importcpp: "#.containsIgnoreCase(@)".}
proc containsWholeWord*(this: String, wordToLookFor: StringRef): bool {.header: juce_core, importcpp: "#.containsWholeWord(@)".}
proc containsWholeWordIgnoreCase*(this: String, wordToLookFor: StringRef): bool {.header: juce_core, importcpp: "#.containsWholeWordIgnoreCase(@)".}
proc indexOfWholeWord*(this: String, wordToLookFor: StringRef): int {.header: juce_core, importcpp: "#.indexOfWholeWord(@)".}
proc indexOfWholeWordIgnoreCase*(this: String, wordToLookFor: StringRef): int {.header: juce_core, importcpp: "#.indexOfWholeWordIgnoreCase(@)".}
proc containsAnyOf*(this: String, charactersItMightContain: StringRef): bool {.header: juce_core, importcpp: "#.containsAnyOf(@)".}
proc containsOnly*(this: String, charactersItMightContain: StringRef): bool {.header: juce_core, importcpp: "#.containsOnly(@)".}
proc containsNonWhitespaceChars*(this: String): bool {.header: juce_core, importcpp: "#.containsNonWhitespaceChars()".}
proc matchesWildcard*(this: String, wildcard: StringRef, ignoreCase: bool): bool {.header: juce_core, importcpp: "#.matchesWildcard(@)".}
proc indexOfChar*(this: String, characterToLookFor: uint16): int {.header: juce_core, importcpp: "#.indexOfChar(@)".}
proc indexOfChar*(this: String, startIndex: int, characterToLookFor: uint16): int {.header: juce_core, importcpp: "#.indexOfChar(@)".}
proc indexOfAnyOf*(this: String, charactersToLookFor: StringRef, startIndex: int = 0, ignoreCase: bool = false): int {.header: juce_core, importcpp: "#.indexOfAnyOf(@)".}
proc indexOf*(this: String, textToLookFor: StringRef): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc indexOf*(this: String, startIndex: int, textToLookFor: StringRef): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc indexOfIgnoreCase*(this: String, textToLookFor: StringRef): int {.header: juce_core, importcpp: "#.indexOfIgnoreCase(@)".}
proc indexOfIgnoreCase*(this: String, startIndex: int, textToLookFor: StringRef): int {.header: juce_core, importcpp: "#.indexOfIgnoreCase(@)".}
proc lastIndexOfChar*(this: String, character: uint16): int {.header: juce_core, importcpp: "#.lastIndexOfChar(@)".}
proc lastIndexOf*(this: String, textToLookFor: StringRef): int {.header: juce_core, importcpp: "#.lastIndexOf(@)".}
proc lastIndexOfIgnoreCase*(this: String, textToLookFor: StringRef): int {.header: juce_core, importcpp: "#.lastIndexOfIgnoreCase(@)".}
proc lastIndexOfAnyOf*(this: String, charactersToLookFor: StringRef, ignoreCase: bool = false): int {.header: juce_core, importcpp: "#.lastIndexOfAnyOf(@)".}
proc `String[]`*(this: String, index: int): uint16 {.header: juce_core, importcpp: "#.operator[](@)".}
proc getLastCharacter*(this: String): uint16 {.header: juce_core, importcpp: "#.getLastCharacter()".}
proc substring*(this: String, startIndex: int, endIndex: int): String {.header: juce_core, importcpp: "#.substring(@)".}
proc substring*(this: String, startIndex: int): String {.header: juce_core, importcpp: "#.substring(@)".}
proc dropLastCharacters*(this: String, numberToDrop: int): String {.header: juce_core, importcpp: "#.dropLastCharacters(@)".}
proc getLastCharacters*(this: String, numCharacters: int): String {.header: juce_core, importcpp: "#.getLastCharacters(@)".}
proc fromFirstOccurrenceOf*(this: String, substringToStartFrom: StringRef, includeSubStringInResult: bool, ignoreCase: bool): String {.header: juce_core, importcpp: "#.fromFirstOccurrenceOf(@)".}
proc fromLastOccurrenceOf*(this: String, substringToFind: StringRef, includeSubStringInResult: bool, ignoreCase: bool): String {.header: juce_core, importcpp: "#.fromLastOccurrenceOf(@)".}
proc upToFirstOccurrenceOf*(this: String, substringToEndWith: StringRef, includeSubStringInResult: bool, ignoreCase: bool): String {.header: juce_core, importcpp: "#.upToFirstOccurrenceOf(@)".}
proc upToLastOccurrenceOf*(this: String, substringToFind: StringRef, includeSubStringInResult: bool, ignoreCase: bool): String {.header: juce_core, importcpp: "#.upToLastOccurrenceOf(@)".}
proc trim*(this: String): String {.header: juce_core, importcpp: "#.trim()".}
proc trimStart*(this: String): String {.header: juce_core, importcpp: "#.trimStart()".}
proc trimEnd*(this: String): String {.header: juce_core, importcpp: "#.trimEnd()".}
proc trimCharactersAtStart*(this: String, charactersToTrim: StringRef): String {.header: juce_core, importcpp: "#.trimCharactersAtStart(@)".}
proc trimCharactersAtEnd*(this: String, charactersToTrim: StringRef): String {.header: juce_core, importcpp: "#.trimCharactersAtEnd(@)".}
proc toUpperCase*(this: String): String {.header: juce_core, importcpp: "#.toUpperCase()".}
proc toLowerCase*(this: String): String {.header: juce_core, importcpp: "#.toLowerCase()".}
proc replaceSection*(this: String, startIndex: int, numCharactersToReplace: int, stringToInsert: StringRef): String {.header: juce_core, importcpp: "#.replaceSection(@)".}
proc replace*(this: String, stringToReplace: StringRef, stringToInsertInstead: StringRef, ignoreCase: bool = false): String {.header: juce_core, importcpp: "#.replace(@)".}
proc replaceFirstOccurrenceOf*(this: String, stringToReplace: StringRef, stringToInsertInstead: StringRef, ignoreCase: bool = false): String {.header: juce_core, importcpp: "#.replaceFirstOccurrenceOf(@)".}
proc replaceCharacter*(this: String, characterToReplace: uint16, characterToInsertInstead: uint16): String {.header: juce_core, importcpp: "#.replaceCharacter(@)".}
proc replaceCharacters*(this: String, charactersToReplace: StringRef, charactersToInsertInstead: StringRef): String {.header: juce_core, importcpp: "#.replaceCharacters(@)".}
proc retainCharacters*(this: String, charactersToRetain: StringRef): String {.header: juce_core, importcpp: "#.retainCharacters(@)".}
proc removeCharacters*(this: String, charactersToRemove: StringRef): String {.header: juce_core, importcpp: "#.removeCharacters(@)".}
proc initialSectionContainingOnly*(this: String, permittedCharacters: StringRef): String {.header: juce_core, importcpp: "#.initialSectionContainingOnly(@)".}
proc initialSectionNotContaining*(this: String, charactersToStopAt: StringRef): String {.header: juce_core, importcpp: "#.initialSectionNotContaining(@)".}
proc isQuotedString*(this: String): bool {.header: juce_core, importcpp: "#.isQuotedString()".}
proc unquoted*(this: String): String {.header: juce_core, importcpp: "#.unquoted()".}
proc quoted*(this: String, quoteCharacter: uint16): String {.header: juce_core, importcpp: "#.quoted(@)".}
proc paddedLeft*(this: String, padCharacter: uint16, minimumLength: int): String {.header: juce_core, importcpp: "#.paddedLeft(@)".}
proc paddedRight*(this: String, padCharacter: uint16, minimumLength: int): String {.header: juce_core, importcpp: "#.paddedRight(@)".}
# proc begin*(this: String): ptr char {.header: juce_core, importcpp: "#.begin()".}
# proc `end`*(this: String): ptr char {.header: juce_core, importcpp: "#.end()".}
proc getIntValue*(this: String): int {.header: juce_core, importcpp: "#.getIntValue()".}
proc getLargeIntValue*(this: String): int64 {.header: juce_core, importcpp: "#.getLargeIntValue()".}
proc getTrailingIntValue*(this: String): int {.header: juce_core, importcpp: "#.getTrailingIntValue()".}
proc getFloatValue*(this: String): float {.header: juce_core, importcpp: "#.getFloatValue()".}
proc getDoubleValue*(this: String): float64 {.header: juce_core, importcpp: "#.getDoubleValue()".}
proc getHexValue32*(this: String): int {.header: juce_core, importcpp: "#.getHexValue32()".}
proc getHexValue64*(this: String): int64 {.header: juce_core, importcpp: "#.getHexValue64()".}
proc getCharPointer*(this: String): ptr char {.header: juce_core, importcpp: "#.getCharPointer()".}
proc toUTF8*(this: String): CharPointer_UTF8 {.header: juce_core, importcpp: "#.toUTF8()".}
proc toRawUTF8Impl(this: String): constChar {.header: juce_core, importcpp: "#.toRawUTF8()".}
proc toUTF16*(this: String): CharPointer_UTF16 {.header: juce_core, importcpp: "#.toUTF16()".}
proc toUTF32*(this: String): CharPointer_UTF32 {.header: juce_core, importcpp: "#.toUTF32()".}
proc toWideCharPointer*(this: String): ptr uint16 {.header: juce_core, importcpp: "#.toWideCharPointer()".}
proc toStdString*(this: String): int {.header: juce_core, importcpp: "#.toStdString()".}
proc getNumBytesAsUTF8*(this: String): int {.header: juce_core, importcpp: "#.getNumBytesAsUTF8()".}
proc copyToUTF8*(this: String, destBuffer: ptr char, maxBufferSizeBytes: int): int {.header: juce_core, importcpp: "#.copyToUTF8(@)".}
proc copyToUTF16*(this: String, destBuffer: ptr int16, maxBufferSizeBytes: int): int {.header: juce_core, importcpp: "#.copyToUTF16(@)".}
proc copyToUTF32*(this: String, destBuffer: ptr uint16, maxBufferSizeBytes: int): int {.header: juce_core, importcpp: "#.copyToUTF32(@)".}
proc preallocateBytes*(this: var String, numBytesNeeded: int) {.header: juce_core, importcpp: "#.preallocateBytes(@)".}
proc swapWith*(this: var String, other: var String) {.header: juce_core, importcpp: "#.swapWith(@)".}
# proc toCFString*(this: String): CFStringRef {.header: juce_core, importcpp: "#.toCFString()".}
proc convertToPrecomposedUnicode*(this: String): String {.header: juce_core, importcpp: "#.convertToPrecomposedUnicode()".}
proc getReferenceCount*(this: String): int {.header: juce_core, importcpp: "#.getReferenceCount()".}

proc isEmpty*(this: StringRef): bool {.header: juce_core, importcpp: "#.isEmpty()".}
proc isNotEmpty*(this: StringRef): bool {.header: juce_core, importcpp: "#.isNotEmpty()".}
proc length*(this: StringRef): int {.header: juce_core, importcpp: "#.length()".}
proc `StringRef[]`*(this: StringRef, index: int): uint16 {.header: juce_core, importcpp: "#.operator[](@)".}
proc `StringRef==`*(this: StringRef, s: String): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `StringRef!=`*(this: StringRef, s: String): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc `StringRef<`*(this: StringRef, s: String): bool {.header: juce_core, importcpp: "#.operator<(@)".}
proc `StringRef<=`*(this: StringRef, s: String): bool {.header: juce_core, importcpp: "#.operator<=(@)".}
proc `StringRef>`*(this: StringRef, s: String): bool {.header: juce_core, importcpp: "#.operator>(@)".}
proc `StringRef>=`*(this: StringRef, s: String): bool {.header: juce_core, importcpp: "#.operator>=(@)".}
proc `StringRef==`*(this: StringRef, s: StringRef): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `StringRef!=`*(this: StringRef, s: StringRef): bool {.header: juce_core, importcpp: "#.operator!=(@)".}

type
  Logger* {.header: juce_core, importcpp: "juce::Logger".} = object


proc `MemoryBlock=`*(this: var MemoryBlock, arg1: MemoryBlock): var MemoryBlock {.header: juce_core, importcpp: "#.operator=(@)".}
proc `MemoryBlock=`*(this: var MemoryBlock, arg1: lent MemoryBlock): var MemoryBlock {.header: juce_core, importcpp: "#.operator=(@)".}
proc `MemoryBlock==`*(this: MemoryBlock, other: MemoryBlock): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `MemoryBlock!=`*(this: MemoryBlock, other: MemoryBlock): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc matches*(this: MemoryBlock, data: constPointer, dataSize: int): bool {.header: juce_core, importcpp: "#.matches(@)".}
proc getData*(this: var MemoryBlock): pointer {.header: juce_core, importcpp: "#.getData()".}
proc getData*(this: MemoryBlock): constPointer {.header: juce_core, importcpp: "#.getData()".}
# proc begin*(this: var MemoryBlock): ptr char {.header: juce_core, importcpp: "#.begin()".}
# proc begin*(this: MemoryBlock): constChar {.header: juce_core, importcpp: "#.begin()".}
# proc `end`*(this: var MemoryBlock): ptr char {.header: juce_core, importcpp: "#.end()".}
# proc `end`*(this: MemoryBlock): constChar {.header: juce_core, importcpp: "#.end()".}
proc getSize*(this: MemoryBlock): int {.header: juce_core, importcpp: "#.getSize()".}
proc setSize*(this: var MemoryBlock, newSize: int, initialiseNewSpaceToZero: bool = false) {.header: juce_core, importcpp: "#.setSize(@)".}
proc ensureSize*(this: var MemoryBlock, minimumSize: int, initialiseNewSpaceToZero: bool = false) {.header: juce_core, importcpp: "#.ensureSize(@)".}
proc reset*(this: var MemoryBlock) {.header: juce_core, importcpp: "#.reset()".}
proc fillWith*(this: var MemoryBlock, valueToUse: uint8) {.header: juce_core, importcpp: "#.fillWith(@)".}
proc append*(this: var MemoryBlock, data: constPointer, numBytes: int) {.header: juce_core, importcpp: "#.append(@)".}
proc replaceWith*(this: var MemoryBlock, data: constPointer, numBytes: int) {.header: juce_core, importcpp: "#.replaceWith(@)".}
proc insert*(this: var MemoryBlock, dataToInsert: constPointer, numBytesToInsert: int, insertPosition: int) {.header: juce_core, importcpp: "#.insert(@)".}
proc removeSection*(this: var MemoryBlock, startByte: int, numBytesToRemove: int) {.header: juce_core, importcpp: "#.removeSection(@)".}
proc copyFrom*(this: var MemoryBlock, srcData: constPointer, destinationOffset: int, numBytes: int) {.header: juce_core, importcpp: "#.copyFrom(@)".}
proc copyTo*(this: MemoryBlock, destData: pointer, sourceOffset: int, numBytes: int) {.header: juce_core, importcpp: "#.copyTo(@)".}
proc swapWith*(this: var MemoryBlock, other: var MemoryBlock) {.header: juce_core, importcpp: "#.swapWith(@)".}
proc toString*(this: MemoryBlock): String {.header: juce_core, importcpp: "#.toString()".}
proc loadFromHexString*(this: var MemoryBlock, sourceHexString: StringRef) {.header: juce_core, importcpp: "#.loadFromHexString(@)".}
proc setBitRange*(this: var MemoryBlock, bitRangeStart: int, numBits: int, binaryNumberToApply: int) {.header: juce_core, importcpp: "#.setBitRange(@)".}
proc getBitRange*(this: MemoryBlock, bitRangeStart: int, numBitsToRead: int): int {.header: juce_core, importcpp: "#.getBitRange(@)".}
proc toBase64Encoding*(this: MemoryBlock): String {.header: juce_core, importcpp: "#.toBase64Encoding()".}
proc fromBase64Encoding*(this: var MemoryBlock, encodedString: StringRef): bool {.header: juce_core, importcpp: "#.fromBase64Encoding(@)".}

type
  ReferenceCountedObject* {.header: juce_core, importcpp: "juce::ReferenceCountedObject".} = object

proc incReferenceCount*(this: var ReferenceCountedObject) {.header: juce_core, importcpp: "#.incReferenceCount()".}
proc decReferenceCount*(this: var ReferenceCountedObject) {.header: juce_core, importcpp: "#.decReferenceCount()".}
proc decReferenceCountWithoutDeleting*(this: var ReferenceCountedObject): bool {.header: juce_core, importcpp: "#.decReferenceCountWithoutDeleting()".}
proc getReferenceCount*(this: ReferenceCountedObject): int {.header: juce_core, importcpp: "#.getReferenceCount()".}

type
  SingleThreadedReferenceCountedObject* {.header: juce_core, importcpp: "juce::SingleThreadedReferenceCountedObject".} = object

proc incReferenceCount*(this: var SingleThreadedReferenceCountedObject) {.header: juce_core, importcpp: "#.incReferenceCount()".}
proc decReferenceCount*(this: var SingleThreadedReferenceCountedObject) {.header: juce_core, importcpp: "#.decReferenceCount()".}
proc decReferenceCountWithoutDeleting*(this: var SingleThreadedReferenceCountedObject): bool {.header: juce_core, importcpp: "#.decReferenceCountWithoutDeleting()".}
proc getReferenceCount*(this: SingleThreadedReferenceCountedObject): int {.header: juce_core, importcpp: "#.getReferenceCount()".}

type
  CriticalSection* {.header: juce_core, importcpp: "juce::CriticalSection".} = object

proc enter*(this: CriticalSection) {.header: juce_core, importcpp: "#.enter()".}
proc tryEnter*(this: CriticalSection): bool {.header: juce_core, importcpp: "#.tryEnter()".}
proc exit*(this: CriticalSection) {.header: juce_core, importcpp: "#.exit()".}

type
  DummyCriticalSection* {.header: juce_core, importcpp: "juce::DummyCriticalSection".} = object
  DummyCriticalSectionScopedLockType* {.header: juce_core, importcpp: "juce::DummyCriticalSection::ScopedLockType".} = object

proc enter*(this: DummyCriticalSection) {.header: juce_core, importcpp: "#.enter()".}
proc tryEnter*(this: DummyCriticalSection): bool {.header: juce_core, importcpp: "#.tryEnter()".}
proc exit*(this: DummyCriticalSection) {.header: juce_core, importcpp: "#.exit()".}

type
  AbstractFifo* {.header: juce_core, importcpp: "juce::AbstractFifo".} = object

proc getTotalSize*(this: AbstractFifo): int {.header: juce_core, importcpp: "#.getTotalSize()".}
proc getFreeSpace*(this: AbstractFifo): int {.header: juce_core, importcpp: "#.getFreeSpace()".}
proc getNumReady*(this: AbstractFifo): int {.header: juce_core, importcpp: "#.getNumReady()".}
proc reset*(this: var AbstractFifo) {.header: juce_core, importcpp: "#.reset()".}
proc setTotalSize*(this: var AbstractFifo, newSize: int) {.header: juce_core, importcpp: "#.setTotalSize(@)".}
proc prepareToWrite*(this: AbstractFifo, numToWrite: int, startIndex1: var int, blockSize1: var int, startIndex2: var int, blockSize2: var int) {.header: juce_core, importcpp: "#.prepareToWrite(@)".}
proc finishedWrite*(this: var AbstractFifo, numWritten: int) {.header: juce_core, importcpp: "#.finishedWrite(@)".}
proc prepareToRead*(this: AbstractFifo, numWanted: int, startIndex1: var int, blockSize1: var int, startIndex2: var int, blockSize2: var int) {.header: juce_core, importcpp: "#.prepareToRead(@)".}
proc finishedRead*(this: var AbstractFifo, numRead: int) {.header: juce_core, importcpp: "#.finishedRead(@)".}
# proc read*(this: var AbstractFifo, numToRead: int): juce::AbstractFifo::ScopedRead {.header: juce_core, importcpp: "#.read(@)".}
# proc write*(this: var AbstractFifo, numToWrite: int): juce::AbstractFifo::ScopedWrite {.header: juce_core, importcpp: "#.write(@)".}

type
  NewLine* {.header: juce_core, importcpp: "juce::NewLine".} = object


type
  StringPool* {.header: juce_core, importcpp: "juce::StringPool".} = object

proc getPooledString*(this: var StringPool, original: String): String {.header: juce_core, importcpp: "#.getPooledString(@)".}
proc getPooledString*(this: var StringPool, original: constChar): String {.header: juce_core, importcpp: "#.getPooledString(@)".}
proc getPooledString*(this: var StringPool, original: StringRef): String {.header: juce_core, importcpp: "#.getPooledString(@)".}
proc getPooledString*(this: var StringPool, start: CharPointer_UTF8, `end`: CharPointer_UTF8): String {.header: juce_core, importcpp: "#.getPooledString(@)".}
proc garbageCollect*(this: var StringPool) {.header: juce_core, importcpp: "#.garbageCollect()".}

type
  Identifier* {.header: juce_core, importcpp: "juce::Identifier".} = object

proc `Identifier=`*(this: var Identifier, other: Identifier): var Identifier {.header: juce_core, importcpp: "#.operator=(@)".}
proc `Identifier=`*(this: var Identifier, other: lent Identifier): var Identifier {.header: juce_core, importcpp: "#.operator=(@)".}
proc `Identifier==`*(this: Identifier, other: Identifier): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `Identifier!=`*(this: Identifier, other: Identifier): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc `Identifier==`*(this: Identifier, other: StringRef): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `Identifier!=`*(this: Identifier, other: StringRef): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc `Identifier<`*(this: Identifier, other: StringRef): bool {.header: juce_core, importcpp: "#.operator<(@)".}
proc `Identifier<=`*(this: Identifier, other: StringRef): bool {.header: juce_core, importcpp: "#.operator<=(@)".}
proc `Identifier>`*(this: Identifier, other: StringRef): bool {.header: juce_core, importcpp: "#.operator>(@)".}
proc `Identifier>=`*(this: Identifier, other: StringRef): bool {.header: juce_core, importcpp: "#.operator>=(@)".}
proc toString*(this: Identifier): String {.header: juce_core, importcpp: "#.toString()".}
proc getCharPointer*(this: Identifier): CharPointer_UTF8 {.header: juce_core, importcpp: "#.getCharPointer()".}
proc isValid*(this: Identifier): bool {.header: juce_core, importcpp: "#.isValid()".}
proc isNull*(this: Identifier): bool {.header: juce_core, importcpp: "#.isNull()".}

type
  StringArray* {.header: juce_core, importcpp: "juce::StringArray".} = object

proc `StringArray=`*(this: var StringArray, arg1: StringArray): var StringArray {.header: juce_core, importcpp: "#.operator=(@)".}
proc `StringArray=`*(this: var StringArray, arg1: lent StringArray): var StringArray {.header: juce_core, importcpp: "#.operator=(@)".}
proc swapWith*(this: var StringArray, arg1: var StringArray) {.header: juce_core, importcpp: "#.swapWith(@)".}
proc `StringArray==`*(this: StringArray, arg1: StringArray): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `StringArray!=`*(this: StringArray, arg1: StringArray): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc size*(this: StringArray): int {.header: juce_core, importcpp: "#.size()".}
proc isEmpty*(this: StringArray): bool {.header: juce_core, importcpp: "#.isEmpty()".}
proc `StringArray[]`*(this: StringArray, index: int): String {.header: juce_core, importcpp: "#.operator[](@)".}
proc getReference*(this: var StringArray, index: int): var String {.header: juce_core, importcpp: "#.getReference(@)".}
proc getReference*(this: StringArray, index: int): String {.header: juce_core, importcpp: "#.getReference(@)".}
# proc begin*(this: var StringArray): ptr String {.header: juce_core, importcpp: "#.begin()".}
# proc begin*(this: StringArray): ptr String {.header: juce_core, importcpp: "#.begin()".}
# proc `end`*(this: var StringArray): ptr String {.header: juce_core, importcpp: "#.end()".}
# proc `end`*(this: StringArray): ptr String {.header: juce_core, importcpp: "#.end()".}
proc contains*(this: StringArray, stringToLookFor: StringRef, ignoreCase: bool = false): bool {.header: juce_core, importcpp: "#.contains(@)".}
proc indexOf*(this: StringArray, stringToLookFor: StringRef, ignoreCase: bool = false, startIndex: int = 0): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc add*(this: var StringArray, stringToAdd: String) {.header: juce_core, importcpp: "#.add(@)".}
proc insert*(this: var StringArray, index: int, stringToAdd: String) {.header: juce_core, importcpp: "#.insert(@)".}
proc addIfNotAlreadyThere*(this: var StringArray, stringToAdd: String, ignoreCase: bool = false): bool {.header: juce_core, importcpp: "#.addIfNotAlreadyThere(@)".}
proc set*(this: var StringArray, index: int, newString: String) {.header: juce_core, importcpp: "#.set(@)".}
proc addArray*(this: var StringArray, other: StringArray, startIndex: int = 0, numElementsToAdd: int = -1) {.header: juce_core, importcpp: "#.addArray(@)".}
proc mergeArray*(this: var StringArray, other: StringArray, ignoreCase: bool = false) {.header: juce_core, importcpp: "#.mergeArray(@)".}
proc addTokens*(this: var StringArray, stringToTokenise: StringRef, preserveQuotedStrings: bool): int {.header: juce_core, importcpp: "#.addTokens(@)".}
proc addTokens*(this: var StringArray, stringToTokenise: StringRef, breakCharacters: StringRef, quoteCharacters: StringRef): int {.header: juce_core, importcpp: "#.addTokens(@)".}
proc addLines*(this: var StringArray, stringToBreakUp: StringRef): int {.header: juce_core, importcpp: "#.addLines(@)".}
proc clear*(this: var StringArray) {.header: juce_core, importcpp: "#.clear()".}
proc clearQuick*(this: var StringArray) {.header: juce_core, importcpp: "#.clearQuick()".}
proc remove*(this: var StringArray, index: int) {.header: juce_core, importcpp: "#.remove(@)".}
proc removeString*(this: var StringArray, stringToRemove: StringRef, ignoreCase: bool = false) {.header: juce_core, importcpp: "#.removeString(@)".}
proc removeRange*(this: var StringArray, startIndex: int, numberToRemove: int) {.header: juce_core, importcpp: "#.removeRange(@)".}
proc removeDuplicates*(this: var StringArray, ignoreCase: bool) {.header: juce_core, importcpp: "#.removeDuplicates(@)".}
proc removeEmptyStrings*(this: var StringArray, removeWhitespaceStrings: bool = true) {.header: juce_core, importcpp: "#.removeEmptyStrings(@)".}
proc move*(this: var StringArray, currentIndex: int, newIndex: int) {.header: juce_core, importcpp: "#.move(@)".}
proc trim*(this: var StringArray) {.header: juce_core, importcpp: "#.trim()".}
# proc appendNumbersToDuplicates*(this: var StringArray, ignoreCaseWhenComparing: bool, appendNumberToFirstInstance: bool, preNumberString: CharPointer_UTF8 = CharPointer_UTF8(nil), postNumberString: CharPointer_UTF8 = CharPointer_UTF8(nil)) {.header: juce_core, importcpp: "#.appendNumbersToDuplicates(@)".}
proc joinIntoString*(this: StringArray, separatorString: StringRef, startIndex: int = 0, numberOfElements: int = -1): String {.header: juce_core, importcpp: "#.joinIntoString(@)".}
proc sort*(this: var StringArray, ignoreCase: bool) {.header: juce_core, importcpp: "#.sort(@)".}
proc sortNatural*(this: var StringArray) {.header: juce_core, importcpp: "#.sortNatural()".}
proc ensureStorageAllocated*(this: var StringArray, minNumElements: int) {.header: juce_core, importcpp: "#.ensureStorageAllocated(@)".}
proc minimiseStorageOverheads*(this: var StringArray) {.header: juce_core, importcpp: "#.minimiseStorageOverheads()".}

type
  SystemStats* {.header: juce_core, importcpp: "juce::SystemStats".} = object


type
  StringPairArray* {.header: juce_core, importcpp: "juce::StringPairArray".} = object

proc `StringPairArray=`*(this: var StringPairArray, other: StringPairArray): var StringPairArray {.header: juce_core, importcpp: "#.operator=(@)".}
proc `StringPairArray==`*(this: StringPairArray, other: StringPairArray): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `StringPairArray!=`*(this: StringPairArray, other: StringPairArray): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc `StringPairArray[]`*(this: StringPairArray, key: StringRef): String {.header: juce_core, importcpp: "#.operator[](@)".}
proc getValue*(this: StringPairArray, arg1: StringRef, defaultReturnValue: String): String {.header: juce_core, importcpp: "#.getValue(@)".}
proc containsKey*(this: StringPairArray, key: StringRef): bool {.header: juce_core, importcpp: "#.containsKey(@)".}
proc getAllKeys*(this: StringPairArray): StringArray {.header: juce_core, importcpp: "#.getAllKeys()".}
proc getAllValues*(this: StringPairArray): StringArray {.header: juce_core, importcpp: "#.getAllValues()".}
proc size*(this: StringPairArray): int {.header: juce_core, importcpp: "#.size()".}
proc set*(this: var StringPairArray, key: String, value: String) {.header: juce_core, importcpp: "#.set(@)".}
proc addArray*(this: var StringPairArray, other: StringPairArray) {.header: juce_core, importcpp: "#.addArray(@)".}
proc clear*(this: var StringPairArray) {.header: juce_core, importcpp: "#.clear()".}
proc remove*(this: var StringPairArray, key: StringRef) {.header: juce_core, importcpp: "#.remove(@)".}
proc remove*(this: var StringPairArray, index: int) {.header: juce_core, importcpp: "#.remove(@)".}
proc setIgnoresCase*(this: var StringPairArray, shouldIgnoreCase: bool) {.header: juce_core, importcpp: "#.setIgnoresCase(@)".}
proc getIgnoresCase*(this: StringPairArray): bool {.header: juce_core, importcpp: "#.getIgnoresCase()".}
proc getDescription*(this: StringPairArray): String {.header: juce_core, importcpp: "#.getDescription()".}
proc minimiseStorageOverheads*(this: var StringPairArray) {.header: juce_core, importcpp: "#.minimiseStorageOverheads()".}
proc addMap*(this: var StringPairArray, mapToAdd: int) {.header: juce_core, importcpp: "#.addMap(@)".}

type
  TextDiff* {.header: juce_core, importcpp: "juce::TextDiff".} = object
  TextDiffChange* {.header: juce_core, importcpp: "juce::TextDiff::Change".} = object

proc appliedTo*(this: TextDiff, text: String): String {.header: juce_core, importcpp: "#.appliedTo(@)".}

type
  LocalisedStrings* {.header: juce_core, importcpp: "juce::LocalisedStrings".} = object

proc `LocalisedStrings=`*(this: var LocalisedStrings, arg1: LocalisedStrings): var LocalisedStrings {.header: juce_core, importcpp: "#.operator=(@)".}
proc translate*(this: LocalisedStrings, text: String): String {.header: juce_core, importcpp: "#.translate(@)".}
proc translate*(this: LocalisedStrings, text: String, resultIfNotFound: String): String {.header: juce_core, importcpp: "#.translate(@)".}
proc getLanguageName*(this: LocalisedStrings): String {.header: juce_core, importcpp: "#.getLanguageName()".}
proc getCountryCodes*(this: LocalisedStrings): StringArray {.header: juce_core, importcpp: "#.getCountryCodes()".}
proc getMappings*(this: LocalisedStrings): StringPairArray {.header: juce_core, importcpp: "#.getMappings()".}
proc addStrings*(this: var LocalisedStrings, arg1: LocalisedStrings) {.header: juce_core, importcpp: "#.addStrings(@)".}
proc setFallback*(this: var LocalisedStrings, fallbackStrings: ptr LocalisedStrings) {.header: juce_core, importcpp: "#.setFallback(@)".}

type
  Base64* {.header: juce_core, importcpp: "juce::Base64".} = object


type
  Result* {.header: juce_core, importcpp: "juce::Result".} = object

proc wasOk*(this: Result): bool {.header: juce_core, importcpp: "#.wasOk()".}
proc failed*(this: Result): bool {.header: juce_core, importcpp: "#.failed()".}
# proc operator!*(this: Result): bool {.header: juce_core, importcpp: "#.operator!()".}
proc getErrorMessage*(this: Result): String {.header: juce_core, importcpp: "#.getErrorMessage()".}
proc `Result=`*(this: var Result, arg1: Result): var Result {.header: juce_core, importcpp: "#.operator=(@)".}
proc `Result=`*(this: var Result, arg1: lent Result): var Result {.header: juce_core, importcpp: "#.operator=(@)".}
proc `Result==`*(this: Result, other: Result): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `Result!=`*(this: Result, other: Result): bool {.header: juce_core, importcpp: "#.operator!=(@)".}

type
  Uuid* {.header: juce_core, importcpp: "juce::Uuid".} = object

proc `Uuid=`*(this: var Uuid, arg1: Uuid): var Uuid {.header: juce_core, importcpp: "#.operator=(@)".}
proc isNull*(this: Uuid): bool {.header: juce_core, importcpp: "#.isNull()".}
proc `Uuid==`*(this: Uuid, arg1: Uuid): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `Uuid!=`*(this: Uuid, arg1: Uuid): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc `Uuid<`*(this: Uuid, arg1: Uuid): bool {.header: juce_core, importcpp: "#.operator<(@)".}
proc `Uuid>`*(this: Uuid, arg1: Uuid): bool {.header: juce_core, importcpp: "#.operator>(@)".}
proc `Uuid<=`*(this: Uuid, arg1: Uuid): bool {.header: juce_core, importcpp: "#.operator<=(@)".}
proc `Uuid>=`*(this: Uuid, arg1: Uuid): bool {.header: juce_core, importcpp: "#.operator>=(@)".}
proc toString*(this: Uuid): String {.header: juce_core, importcpp: "#.toString()".}
proc toDashedString*(this: Uuid): String {.header: juce_core, importcpp: "#.toDashedString()".}
proc `Uuid=`*(this: var Uuid, uuidString: String): var Uuid {.header: juce_core, importcpp: "#.operator=(@)".}
proc getTimeLow*(this: Uuid): uint32 {.header: juce_core, importcpp: "#.getTimeLow()".}
proc getTimeMid*(this: Uuid): uint16 {.header: juce_core, importcpp: "#.getTimeMid()".}
proc getTimeHighAndVersion*(this: Uuid): uint16 {.header: juce_core, importcpp: "#.getTimeHighAndVersion()".}
proc getClockSeqAndReserved*(this: Uuid): uint8 {.header: juce_core, importcpp: "#.getClockSeqAndReserved()".}
proc getClockSeqLow*(this: Uuid): uint8 {.header: juce_core, importcpp: "#.getClockSeqLow()".}
proc getNode*(this: Uuid): uint64 {.header: juce_core, importcpp: "#.getNode()".}
proc hash*(this: Uuid): uint64 {.header: juce_core, importcpp: "#.hash()".}
proc getRawData*(this: Uuid): ptr uint8 {.header: juce_core, importcpp: "#.getRawData()".}
proc `Uuid=`*(this: var Uuid, rawData: ptr uint8): var Uuid {.header: juce_core, importcpp: "#.operator=(@)".}

type
  ArgumentList* {.header: juce_core, importcpp: "juce::ArgumentList".} = object
  ArgumentListArgument* {.header: juce_core, importcpp: "juce::ArgumentList::Argument".} = object

proc `ArgumentList=`*(this: var ArgumentList, arg1: ArgumentList): var ArgumentList {.header: juce_core, importcpp: "#.operator=(@)".}
proc size*(this: ArgumentList): int {.header: juce_core, importcpp: "#.size()".}
proc `ArgumentList[]`*(this: ArgumentList, index: int): ArgumentListArgument {.header: juce_core, importcpp: "#.operator[](@)".}
proc checkMinNumArguments*(this: ArgumentList, expectedMinNumberOfArgs: int) {.header: juce_core, importcpp: "#.checkMinNumArguments(@)".}
proc containsOption*(this: ArgumentList, option: StringRef): bool {.header: juce_core, importcpp: "#.containsOption(@)".}
proc removeOptionIfFound*(this: var ArgumentList, option: StringRef): bool {.header: juce_core, importcpp: "#.removeOptionIfFound(@)".}
proc indexOfOption*(this: ArgumentList, option: StringRef): int {.header: juce_core, importcpp: "#.indexOfOption(@)".}
proc failIfOptionIsMissing*(this: ArgumentList, option: StringRef) {.header: juce_core, importcpp: "#.failIfOptionIsMissing(@)".}
proc getValueForOption*(this: ArgumentList, option: StringRef): String {.header: juce_core, importcpp: "#.getValueForOption(@)".}
proc removeValueForOption*(this: var ArgumentList, option: StringRef): String {.header: juce_core, importcpp: "#.removeValueForOption(@)".}
proc getFileForOption*(this: ArgumentList, option: StringRef): File {.header: juce_core, importcpp: "#.getFileForOption(@)".}
proc getFileForOptionAndRemove*(this: var ArgumentList, option: StringRef): File {.header: juce_core, importcpp: "#.getFileForOptionAndRemove(@)".}
proc getExistingFileForOption*(this: ArgumentList, option: StringRef): File {.header: juce_core, importcpp: "#.getExistingFileForOption(@)".}
proc getExistingFileForOptionAndRemove*(this: var ArgumentList, option: StringRef): File {.header: juce_core, importcpp: "#.getExistingFileForOptionAndRemove(@)".}
proc getExistingFolderForOption*(this: ArgumentList, option: StringRef): File {.header: juce_core, importcpp: "#.getExistingFolderForOption(@)".}
proc getExistingFolderForOptionAndRemove*(this: var ArgumentList, option: StringRef): File {.header: juce_core, importcpp: "#.getExistingFolderForOptionAndRemove(@)".}

type
  ConsoleApplication* {.header: juce_core, importcpp: "juce::ConsoleApplication".} = object
  ConsoleApplicationCommand* {.header: juce_core, importcpp: "juce::ConsoleApplication::Command".} = object

proc addCommand*(this: var ConsoleApplication, arg1: ConsoleApplicationCommand) {.header: juce_core, importcpp: "#.addCommand(@)".}
proc addDefaultCommand*(this: var ConsoleApplication, arg1: ConsoleApplicationCommand) {.header: juce_core, importcpp: "#.addDefaultCommand(@)".}
proc addVersionCommand*(this: var ConsoleApplication, versionArgument: String, versionText: String) {.header: juce_core, importcpp: "#.addVersionCommand(@)".}
proc addHelpCommand*(this: var ConsoleApplication, helpArgument: String, helpMessage: String, makeDefaultCommand: bool) {.header: juce_core, importcpp: "#.addHelpCommand(@)".}
proc printCommandList*(this: ConsoleApplication, arg1: ArgumentList) {.header: juce_core, importcpp: "#.printCommandList(@)".}
proc printCommandDetails*(this: ConsoleApplication, arg1: ArgumentList, arg2: ConsoleApplicationCommand) {.header: juce_core, importcpp: "#.printCommandDetails(@)".}
# proc findAndRunCommand*(this: ConsoleApplication, arg1: ArgumentList, optionMustBeFirstArg: bool = false): int {.header: juce_core, importcpp: "#.findAndRunCommand(@)".}
# proc findAndRunCommand*(this: ConsoleApplication, argc: int, argv: ptr char[]): int {.header: juce_core, importcpp: "#.findAndRunCommand(@)".}
proc findCommand*(this: ConsoleApplication, arg1: ArgumentList, optionMustBeFirstArg: bool): ptr ConsoleApplicationCommand {.header: juce_core, importcpp: "#.findCommand(@)".}
proc getCommands*(this: ConsoleApplication): int {.header: juce_core, importcpp: "#.getCommands()".}

type
  juce_var* {.header: juce_core, importcpp: "juce::var".} = object
  juce_varNativeFunctionArgs* {.header: juce_core, importcpp: "juce::var::NativeFunctionArgs".} = object

proc `juce_var=`*(this: var juce_var, valueToCopy: juce_var): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc `juce_var=`*(this: var juce_var, value: int): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc `juce_var=`*(this: var juce_var, value: int64): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc `juce_var=`*(this: var juce_var, value: bool): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc `juce_var=`*(this: var juce_var, value: float64): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc `juce_var=`*(this: var juce_var, value: constChar): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc `juce_var=`*(this: var juce_var, value: ptr uint16): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc `juce_var=`*(this: var juce_var, value: String): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc `juce_var=`*(this: var juce_var, value: MemoryBlock): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
# proc `juce_var=`*(this: var juce_var, value: int): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc `juce_var=`*(this: var juce_var, `object`: ptr ReferenceCountedObject): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc `juce_var=`*(this: var juce_var, `method`: int): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc `juce_var=`*(this: var juce_var, arg1: lent juce_var): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc `juce_var=`*(this: var juce_var, arg1: lent String): var juce_var {.header: juce_core, importcpp: "#.operator=(@)".}
proc swapWith*(this: var juce_var, other: var juce_var) {.header: juce_core, importcpp: "#.swapWith(@)".}
proc toString*(this: juce_var): String {.header: juce_core, importcpp: "#.toString()".}
proc getArray*(this: juce_var): ptr int {.header: juce_core, importcpp: "#.getArray()".}
proc getBinaryData*(this: juce_var): ptr MemoryBlock {.header: juce_core, importcpp: "#.getBinaryData()".}
proc getObject*(this: juce_var): ptr ReferenceCountedObject {.header: juce_core, importcpp: "#.getObject()".}
proc getDynamicObject*(this: juce_var): ptr DynamicObject {.header: juce_core, importcpp: "#.getDynamicObject()".}
proc isVoid*(this: juce_var): bool {.header: juce_core, importcpp: "#.isVoid()".}
proc isUndefined*(this: juce_var): bool {.header: juce_core, importcpp: "#.isUndefined()".}
proc isInt*(this: juce_var): bool {.header: juce_core, importcpp: "#.isInt()".}
proc isInt64*(this: juce_var): bool {.header: juce_core, importcpp: "#.isInt64()".}
proc isBool*(this: juce_var): bool {.header: juce_core, importcpp: "#.isBool()".}
proc isDouble*(this: juce_var): bool {.header: juce_core, importcpp: "#.isDouble()".}
proc isString*(this: juce_var): bool {.header: juce_core, importcpp: "#.isString()".}
proc isObject*(this: juce_var): bool {.header: juce_core, importcpp: "#.isObject()".}
proc isArray*(this: juce_var): bool {.header: juce_core, importcpp: "#.isArray()".}
proc isBinaryData*(this: juce_var): bool {.header: juce_core, importcpp: "#.isBinaryData()".}
proc isMethod*(this: juce_var): bool {.header: juce_core, importcpp: "#.isMethod()".}
proc equals*(this: juce_var, other: juce_var): bool {.header: juce_core, importcpp: "#.equals(@)".}
proc equalsWithSameType*(this: juce_var, other: juce_var): bool {.header: juce_core, importcpp: "#.equalsWithSameType(@)".}
proc hasSameTypeAs*(this: juce_var, other: juce_var): bool {.header: juce_core, importcpp: "#.hasSameTypeAs(@)".}
proc clone*(this: juce_var): juce_var {.header: juce_core, importcpp: "#.clone()".}
proc size*(this: juce_var): int {.header: juce_core, importcpp: "#.size()".}
proc `juce_var[]`*(this: juce_var, arrayIndex: int): juce_var {.header: juce_core, importcpp: "#.operator[](@)".}
proc `juce_var[]`*(this: var juce_var, arrayIndex: int): var juce_var {.header: juce_core, importcpp: "#.operator[](@)".}
proc append*(this: var juce_var, valueToAppend: juce_var) {.header: juce_core, importcpp: "#.append(@)".}
proc insert*(this: var juce_var, index: int, value: juce_var) {.header: juce_core, importcpp: "#.insert(@)".}
proc remove*(this: var juce_var, index: int) {.header: juce_core, importcpp: "#.remove(@)".}
proc resize*(this: var juce_var, numArrayElementsWanted: int) {.header: juce_core, importcpp: "#.resize(@)".}
proc indexOf*(this: juce_var, value: juce_var): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc `juce_var[]`*(this: juce_var, propertyName: Identifier): juce_var {.header: juce_core, importcpp: "#.operator[](@)".}
proc `juce_var[]`*(this: juce_var, propertyName: constChar): juce_var {.header: juce_core, importcpp: "#.operator[](@)".}
proc getProperty*(this: juce_var, propertyName: Identifier, defaultReturnValue: juce_var): juce_var {.header: juce_core, importcpp: "#.getProperty(@)".}
proc hasProperty*(this: juce_var, propertyName: Identifier): bool {.header: juce_core, importcpp: "#.hasProperty(@)".}
proc call*(this: juce_var, `method`: Identifier): juce_var {.header: juce_core, importcpp: "#.call(@)".}
proc call*(this: juce_var, `method`: Identifier, arg1: juce_var): juce_var {.header: juce_core, importcpp: "#.call(@)".}
proc call*(this: juce_var, `method`: Identifier, arg1: juce_var, arg2: juce_var): juce_var {.header: juce_core, importcpp: "#.call(@)".}
proc call*(this: var juce_var, `method`: Identifier, arg1: juce_var, arg2: juce_var, arg3: juce_var): juce_var {.header: juce_core, importcpp: "#.call(@)".}
proc call*(this: juce_var, `method`: Identifier, arg1: juce_var, arg2: juce_var, arg3: juce_var, arg4: juce_var): juce_var {.header: juce_core, importcpp: "#.call(@)".}
proc call*(this: juce_var, `method`: Identifier, arg1: juce_var, arg2: juce_var, arg3: juce_var, arg4: juce_var, arg5: juce_var): juce_var {.header: juce_core, importcpp: "#.call(@)".}
proc invoke*(this: juce_var, `method`: Identifier, arguments: ptr juce_var, numArguments: int): juce_var {.header: juce_core, importcpp: "#.invoke(@)".}
proc getNativeFunction*(this: juce_var): int {.header: juce_core, importcpp: "#.getNativeFunction()".}
proc writeToStream*(this: juce_var, output: var OutputStream) {.header: juce_core, importcpp: "#.writeToStream(@)".}

type
  VariantConverter* {.header: juce_core, importcpp: "juce::VariantConverter".} = object


type
  NamedValueSet* {.header: juce_core, importcpp: "juce::NamedValueSet".} = object
  NamedValueSetNamedValue* {.header: juce_core, importcpp: "juce::NamedValueSet::NamedValue".} = object

proc `NamedValueSet=`*(this: var NamedValueSet, arg1: NamedValueSet): var NamedValueSet {.header: juce_core, importcpp: "#.operator=(@)".}
proc `NamedValueSet=`*(this: var NamedValueSet, arg1: lent NamedValueSet): var NamedValueSet {.header: juce_core, importcpp: "#.operator=(@)".}
proc `NamedValueSet==`*(this: NamedValueSet, arg1: NamedValueSet): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `NamedValueSet!=`*(this: NamedValueSet, arg1: NamedValueSet): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
# proc begin*(this: NamedValueSet): ptr NamedValueSetNamedValue {.header: juce_core, importcpp: "#.begin()".}
# proc `end`*(this: NamedValueSet): ptr NamedValueSetNamedValue {.header: juce_core, importcpp: "#.end()".}
proc size*(this: NamedValueSet): int {.header: juce_core, importcpp: "#.size()".}
proc isEmpty*(this: NamedValueSet): bool {.header: juce_core, importcpp: "#.isEmpty()".}
proc `NamedValueSet[]`*(this: NamedValueSet, name: Identifier): juce_var {.header: juce_core, importcpp: "#.operator[](@)".}
proc getWithDefault*(this: NamedValueSet, name: Identifier, defaultReturnValue: juce_var): juce_var {.header: juce_core, importcpp: "#.getWithDefault(@)".}
proc set*(this: var NamedValueSet, name: Identifier, newValue: juce_var): bool {.header: juce_core, importcpp: "#.set(@)".}
proc set*(this: var NamedValueSet, name: Identifier, newValue: lent juce_var): bool {.header: juce_core, importcpp: "#.set(@)".}
proc contains*(this: NamedValueSet, name: Identifier): bool {.header: juce_core, importcpp: "#.contains(@)".}
proc remove*(this: var NamedValueSet, name: Identifier): bool {.header: juce_core, importcpp: "#.remove(@)".}
proc getName*(this: NamedValueSet, index: int): Identifier {.header: juce_core, importcpp: "#.getName(@)".}
proc getVarPointer*(this: var NamedValueSet, name: Identifier): ptr juce_var {.header: juce_core, importcpp: "#.getVarPointer(@)".}
proc getVarPointer*(this: NamedValueSet, name: Identifier): ptr juce_var {.header: juce_core, importcpp: "#.getVarPointer(@)".}
proc getValueAt*(this: NamedValueSet, index: int): juce_var {.header: juce_core, importcpp: "#.getValueAt(@)".}
proc getVarPointerAt*(this: var NamedValueSet, index: int): ptr juce_var {.header: juce_core, importcpp: "#.getVarPointerAt(@)".}
proc getVarPointerAt*(this: NamedValueSet, index: int): ptr juce_var {.header: juce_core, importcpp: "#.getVarPointerAt(@)".}
proc indexOf*(this: NamedValueSet, name: Identifier): int {.header: juce_core, importcpp: "#.indexOf(@)".}
proc clear*(this: var NamedValueSet) {.header: juce_core, importcpp: "#.clear()".}
proc setFromXmlAttributes*(this: var NamedValueSet, xml: XmlElement) {.header: juce_core, importcpp: "#.setFromXmlAttributes(@)".}
proc copyToXmlAttributes*(this: NamedValueSet, xml: var XmlElement) {.header: juce_core, importcpp: "#.copyToXmlAttributes(@)".}

proc hasProperty*(this: DynamicObject, propertyName: Identifier): bool {.header: juce_core, importcpp: "#.hasProperty(@)".}
proc getProperty*(this: DynamicObject, propertyName: Identifier): juce_var {.header: juce_core, importcpp: "#.getProperty(@)".}
proc setProperty*(this: var DynamicObject, propertyName: Identifier, newValue: juce_var) {.header: juce_core, importcpp: "#.setProperty(@)".}
proc removeProperty*(this: var DynamicObject, propertyName: Identifier) {.header: juce_core, importcpp: "#.removeProperty(@)".}
proc hasMethod*(this: DynamicObject, methodName: Identifier): bool {.header: juce_core, importcpp: "#.hasMethod(@)".}
proc invokeMethod*(this: var DynamicObject, methodName: Identifier, args: juce_varNativeFunctionArgs): juce_var {.header: juce_core, importcpp: "#.invokeMethod(@)".}
proc setMethod*(this: var DynamicObject, methodName: Identifier, function: int) {.header: juce_core, importcpp: "#.setMethod(@)".}
proc clear*(this: var DynamicObject) {.header: juce_core, importcpp: "#.clear()".}
proc getProperties*(this: var DynamicObject): var NamedValueSet {.header: juce_core, importcpp: "#.getProperties()".}
proc cloneAllProperties*(this: var DynamicObject) {.header: juce_core, importcpp: "#.cloneAllProperties()".}
# proc clone*(this: var DynamicObject): juce::DynamicObject::Ptr {.header: juce_core, importcpp: "#.clone()".}
proc writeAsJSON*(this: var DynamicObject, arg1: var OutputStream, indentLevel: int, allOnOneLine: bool, maximumDecimalPlaces: int) {.header: juce_core, importcpp: "#.writeAsJSON(@)".}

type
  DefaultHashFunctions* {.header: juce_core, importcpp: "juce::DefaultHashFunctions".} = object


type
  RelativeTime* {.header: juce_core, importcpp: "juce::RelativeTime".} = object

proc `RelativeTime=`*(this: var RelativeTime, other: RelativeTime): var RelativeTime {.header: juce_core, importcpp: "#.operator=(@)".}
proc inMilliseconds*(this: RelativeTime): int64 {.header: juce_core, importcpp: "#.inMilliseconds()".}
proc inSeconds*(this: RelativeTime): float64 {.header: juce_core, importcpp: "#.inSeconds()".}
proc inMinutes*(this: RelativeTime): float64 {.header: juce_core, importcpp: "#.inMinutes()".}
proc inHours*(this: RelativeTime): float64 {.header: juce_core, importcpp: "#.inHours()".}
proc inDays*(this: RelativeTime): float64 {.header: juce_core, importcpp: "#.inDays()".}
proc inWeeks*(this: RelativeTime): float64 {.header: juce_core, importcpp: "#.inWeeks()".}
# proc getDescription*(this: RelativeTime, returnValueForZeroTime: String = "0"): String {.header: juce_core, importcpp: "#.getDescription(@)".}
proc getApproximateDescription*(this: RelativeTime): String {.header: juce_core, importcpp: "#.getApproximateDescription()".}
proc `RelativeTime+=`*(this: var RelativeTime, timeToAdd: RelativeTime): RelativeTime {.header: juce_core, importcpp: "#.operator+=(@)".}
proc `RelativeTime-=`*(this: var RelativeTime, timeToSubtract: RelativeTime): RelativeTime {.header: juce_core, importcpp: "#.operator-=(@)".}
proc `RelativeTime+=`*(this: var RelativeTime, secondsToAdd: float64): RelativeTime {.header: juce_core, importcpp: "#.operator+=(@)".}
proc `RelativeTime-=`*(this: var RelativeTime, secondsToSubtract: float64): RelativeTime {.header: juce_core, importcpp: "#.operator-=(@)".}

type
  Time* {.header: juce_core, importcpp: "juce::Time".} = object

proc `Time=`*(this: var Time, arg1: Time): var Time {.header: juce_core, importcpp: "#.operator=(@)".}
proc toMilliseconds*(this: Time): int64 {.header: juce_core, importcpp: "#.toMilliseconds()".}
proc getYear*(this: Time): int {.header: juce_core, importcpp: "#.getYear()".}
proc getMonth*(this: Time): int {.header: juce_core, importcpp: "#.getMonth()".}
proc getMonthName*(this: Time, threeLetterVersion: bool): String {.header: juce_core, importcpp: "#.getMonthName(@)".}
proc getDayOfMonth*(this: Time): int {.header: juce_core, importcpp: "#.getDayOfMonth()".}
proc getDayOfWeek*(this: Time): int {.header: juce_core, importcpp: "#.getDayOfWeek()".}
proc getDayOfYear*(this: Time): int {.header: juce_core, importcpp: "#.getDayOfYear()".}
proc getWeekdayName*(this: Time, threeLetterVersion: bool): String {.header: juce_core, importcpp: "#.getWeekdayName(@)".}
proc getHours*(this: Time): int {.header: juce_core, importcpp: "#.getHours()".}
proc isAfternoon*(this: Time): bool {.header: juce_core, importcpp: "#.isAfternoon()".}
proc getHoursInAmPmFormat*(this: Time): int {.header: juce_core, importcpp: "#.getHoursInAmPmFormat()".}
proc getMinutes*(this: Time): int {.header: juce_core, importcpp: "#.getMinutes()".}
proc getSeconds*(this: Time): int {.header: juce_core, importcpp: "#.getSeconds()".}
proc getMilliseconds*(this: Time): int {.header: juce_core, importcpp: "#.getMilliseconds()".}
proc isDaylightSavingTime*(this: Time): bool {.header: juce_core, importcpp: "#.isDaylightSavingTime()".}
proc getTimeZone*(this: Time): String {.header: juce_core, importcpp: "#.getTimeZone()".}
proc getUTCOffsetSeconds*(this: Time): int {.header: juce_core, importcpp: "#.getUTCOffsetSeconds()".}
proc getUTCOffsetString*(this: Time, includeDividerCharacters: bool): String {.header: juce_core, importcpp: "#.getUTCOffsetString(@)".}
proc toString*(this: Time, includeDate: bool, includeTime: bool, includeSeconds: bool = true, use24HourClock: bool = false): String {.header: juce_core, importcpp: "#.toString(@)".}
proc formatted*(this: Time, format: String): String {.header: juce_core, importcpp: "#.formatted(@)".}
proc toISO8601*(this: Time, includeDividerCharacters: bool): String {.header: juce_core, importcpp: "#.toISO8601(@)".}
proc `Time+=`*(this: var Time, delta: RelativeTime): var Time {.header: juce_core, importcpp: "#.operator+=(@)".}
proc `Time-=`*(this: var Time, delta: RelativeTime): var Time {.header: juce_core, importcpp: "#.operator-=(@)".}
proc setSystemTimeToThisTime*(this: Time): bool {.header: juce_core, importcpp: "#.setSystemTimeToThisTime()".}

proc getTotalLength*(this: var InputStream): int64 {.header: juce_core, importcpp: "#.getTotalLength()".}
proc getNumBytesRemaining*(this: var InputStream): int64 {.header: juce_core, importcpp: "#.getNumBytesRemaining()".}
proc isExhausted*(this: var InputStream): bool {.header: juce_core, importcpp: "#.isExhausted()".}
proc read*(this: var InputStream, destBuffer: pointer, maxBytesToRead: int): int {.header: juce_core, importcpp: "#.read(@)".}
# proc read*(this: var InputStream, destBuffer: pointer, maxBytesToRead: int): int {.header: juce_core, importcpp: "#.read(@)".}
proc readByte*(this: var InputStream): char {.header: juce_core, importcpp: "#.readByte()".}
proc readBool*(this: var InputStream): bool {.header: juce_core, importcpp: "#.readBool()".}
proc readShort*(this: var InputStream): int16 {.header: juce_core, importcpp: "#.readShort()".}
proc readShortBigEndian*(this: var InputStream): int16 {.header: juce_core, importcpp: "#.readShortBigEndian()".}
proc readInt*(this: var InputStream): int {.header: juce_core, importcpp: "#.readInt()".}
proc readIntBigEndian*(this: var InputStream): int {.header: juce_core, importcpp: "#.readIntBigEndian()".}
proc readInt64*(this: var InputStream): int64 {.header: juce_core, importcpp: "#.readInt64()".}
proc readInt64BigEndian*(this: var InputStream): int64 {.header: juce_core, importcpp: "#.readInt64BigEndian()".}
proc readFloat*(this: var InputStream): float {.header: juce_core, importcpp: "#.readFloat()".}
proc readFloatBigEndian*(this: var InputStream): float {.header: juce_core, importcpp: "#.readFloatBigEndian()".}
proc readDouble*(this: var InputStream): float64 {.header: juce_core, importcpp: "#.readDouble()".}
proc readDoubleBigEndian*(this: var InputStream): float64 {.header: juce_core, importcpp: "#.readDoubleBigEndian()".}
proc readCompressedInt*(this: var InputStream): int {.header: juce_core, importcpp: "#.readCompressedInt()".}
proc readNextLine*(this: var InputStream): String {.header: juce_core, importcpp: "#.readNextLine()".}
proc readString*(this: var InputStream): String {.header: juce_core, importcpp: "#.readString()".}
proc readEntireStreamAsString*(this: var InputStream): String {.header: juce_core, importcpp: "#.readEntireStreamAsString()".}
proc readIntoMemoryBlock*(this: var InputStream, destBlock: var MemoryBlock, maxNumBytesToRead: int = -1): int {.header: juce_core, importcpp: "#.readIntoMemoryBlock(@)".}
proc getPosition*(this: var InputStream): int64 {.header: juce_core, importcpp: "#.getPosition()".}
proc setPosition*(this: var InputStream, newPosition: int64): bool {.header: juce_core, importcpp: "#.setPosition(@)".}
proc skipNextBytes*(this: var InputStream, numBytesToSkip: int64) {.header: juce_core, importcpp: "#.skipNextBytes(@)".}

proc flush*(this: var OutputStream) {.header: juce_core, importcpp: "#.flush()".}
proc setPosition*(this: var OutputStream, newPosition: int64): bool {.header: juce_core, importcpp: "#.setPosition(@)".}
proc getPosition*(this: var OutputStream): int64 {.header: juce_core, importcpp: "#.getPosition()".}
proc write*(this: var OutputStream, dataToWrite: constPointer, numberOfBytes: int): bool {.header: juce_core, importcpp: "#.write(@)".}
proc writeByte*(this: var OutputStream, byte: char): bool {.header: juce_core, importcpp: "#.writeByte(@)".}
proc writeBool*(this: var OutputStream, boolValue: bool): bool {.header: juce_core, importcpp: "#.writeBool(@)".}
proc writeShort*(this: var OutputStream, value: int16): bool {.header: juce_core, importcpp: "#.writeShort(@)".}
proc writeShortBigEndian*(this: var OutputStream, value: int16): bool {.header: juce_core, importcpp: "#.writeShortBigEndian(@)".}
proc writeInt*(this: var OutputStream, value: int): bool {.header: juce_core, importcpp: "#.writeInt(@)".}
proc writeIntBigEndian*(this: var OutputStream, value: int): bool {.header: juce_core, importcpp: "#.writeIntBigEndian(@)".}
proc writeInt64*(this: var OutputStream, value: int64): bool {.header: juce_core, importcpp: "#.writeInt64(@)".}
proc writeInt64BigEndian*(this: var OutputStream, value: int64): bool {.header: juce_core, importcpp: "#.writeInt64BigEndian(@)".}
proc writeFloat*(this: var OutputStream, value: float): bool {.header: juce_core, importcpp: "#.writeFloat(@)".}
proc writeFloatBigEndian*(this: var OutputStream, value: float): bool {.header: juce_core, importcpp: "#.writeFloatBigEndian(@)".}
proc writeDouble*(this: var OutputStream, value: float64): bool {.header: juce_core, importcpp: "#.writeDouble(@)".}
proc writeDoubleBigEndian*(this: var OutputStream, value: float64): bool {.header: juce_core, importcpp: "#.writeDoubleBigEndian(@)".}
proc writeRepeatedByte*(this: var OutputStream, byte: uint8, numTimesToRepeat: int): bool {.header: juce_core, importcpp: "#.writeRepeatedByte(@)".}
proc writeCompressedInt*(this: var OutputStream, value: int): bool {.header: juce_core, importcpp: "#.writeCompressedInt(@)".}
proc writeString*(this: var OutputStream, text: String): bool {.header: juce_core, importcpp: "#.writeString(@)".}
proc writeText*(this: var OutputStream, text: String, asUTF16: bool, writeUTF16ByteOrderMark: bool, lineEndings: constChar): bool {.header: juce_core, importcpp: "#.writeText(@)".}
proc writeFromInputStream*(this: var OutputStream, source: var InputStream, maxNumBytesToWrite: int64): int64 {.header: juce_core, importcpp: "#.writeFromInputStream(@)".}
proc setNewLineString*(this: var OutputStream, newLineString: String) {.header: juce_core, importcpp: "#.setNewLineString(@)".}
proc getNewLineString*(this: OutputStream): String {.header: juce_core, importcpp: "#.getNewLineString()".}

type
  BufferedInputStream* {.header: juce_core, importcpp: "juce::BufferedInputStream".} = object

proc peekByte*(this: var BufferedInputStream): char {.header: juce_core, importcpp: "#.peekByte()".}
proc getTotalLength*(this: var BufferedInputStream): int64 {.header: juce_core, importcpp: "#.getTotalLength()".}
proc getPosition*(this: var BufferedInputStream): int64 {.header: juce_core, importcpp: "#.getPosition()".}
proc setPosition*(this: var BufferedInputStream, newPosition: int64): bool {.header: juce_core, importcpp: "#.setPosition(@)".}
proc read*(this: var BufferedInputStream, destBuffer: pointer, maxBytesToRead: int): int {.header: juce_core, importcpp: "#.read(@)".}
proc readString*(this: var BufferedInputStream): String {.header: juce_core, importcpp: "#.readString()".}
proc isExhausted*(this: var BufferedInputStream): bool {.header: juce_core, importcpp: "#.isExhausted()".}

type
  MemoryInputStream* {.header: juce_core, importcpp: "juce::MemoryInputStream".} = object

proc getData*(this: MemoryInputStream): constPointer {.header: juce_core, importcpp: "#.getData()".}
proc getDataSize*(this: MemoryInputStream): int {.header: juce_core, importcpp: "#.getDataSize()".}
proc getPosition*(this: var MemoryInputStream): int64 {.header: juce_core, importcpp: "#.getPosition()".}
proc setPosition*(this: var MemoryInputStream, arg1: int64): bool {.header: juce_core, importcpp: "#.setPosition(@)".}
proc getTotalLength*(this: var MemoryInputStream): int64 {.header: juce_core, importcpp: "#.getTotalLength()".}
proc isExhausted*(this: var MemoryInputStream): bool {.header: juce_core, importcpp: "#.isExhausted()".}
proc read*(this: var MemoryInputStream, destBuffer: pointer, maxBytesToRead: int): int {.header: juce_core, importcpp: "#.read(@)".}
proc skipNextBytes*(this: var MemoryInputStream, numBytesToSkip: int64) {.header: juce_core, importcpp: "#.skipNextBytes(@)".}

type
  MemoryOutputStream* {.header: juce_core, importcpp: "juce::MemoryOutputStream".} = object

proc getData*(this: MemoryOutputStream): constPointer {.header: juce_core, importcpp: "#.getData()".}
proc getDataSize*(this: MemoryOutputStream): int {.header: juce_core, importcpp: "#.getDataSize()".}
proc reset*(this: var MemoryOutputStream) {.header: juce_core, importcpp: "#.reset()".}
proc preallocate*(this: var MemoryOutputStream, bytesToPreallocate: int) {.header: juce_core, importcpp: "#.preallocate(@)".}
proc appendUTF8Char*(this: var MemoryOutputStream, character: uint16): bool {.header: juce_core, importcpp: "#.appendUTF8Char(@)".}
proc toUTF8*(this: MemoryOutputStream): String {.header: juce_core, importcpp: "#.toUTF8()".}
proc toString*(this: MemoryOutputStream): String {.header: juce_core, importcpp: "#.toString()".}
proc getMemoryBlock*(this: MemoryOutputStream): MemoryBlock {.header: juce_core, importcpp: "#.getMemoryBlock()".}
proc flush*(this: var MemoryOutputStream) {.header: juce_core, importcpp: "#.flush()".}
proc write*(this: var MemoryOutputStream, arg1: constPointer, arg2: int): bool {.header: juce_core, importcpp: "#.write(@)".}
proc getPosition*(this: var MemoryOutputStream): int64 {.header: juce_core, importcpp: "#.getPosition()".}
proc setPosition*(this: var MemoryOutputStream, arg1: int64): bool {.header: juce_core, importcpp: "#.setPosition(@)".}
proc writeFromInputStream*(this: var MemoryOutputStream, arg1: var InputStream, maxNumBytesToWrite: int64): int64 {.header: juce_core, importcpp: "#.writeFromInputStream(@)".}
proc writeRepeatedByte*(this: var MemoryOutputStream, byte: uint8, numTimesToRepeat: int): bool {.header: juce_core, importcpp: "#.writeRepeatedByte(@)".}

type
  SubregionStream* {.header: juce_core, importcpp: "juce::SubregionStream".} = object

proc getTotalLength*(this: var SubregionStream): int64 {.header: juce_core, importcpp: "#.getTotalLength()".}
proc getPosition*(this: var SubregionStream): int64 {.header: juce_core, importcpp: "#.getPosition()".}
proc setPosition*(this: var SubregionStream, newPosition: int64): bool {.header: juce_core, importcpp: "#.setPosition(@)".}
proc read*(this: var SubregionStream, destBuffer: pointer, maxBytesToRead: int): int {.header: juce_core, importcpp: "#.read(@)".}
proc isExhausted*(this: var SubregionStream): bool {.header: juce_core, importcpp: "#.isExhausted()".}

type
  InputSource* {.header: juce_core, importcpp: "juce::InputSource".} = object

proc createInputStream*(this: var InputSource): ptr InputStream {.header: juce_core, importcpp: "#.createInputStream()".}
proc createInputStreamFor*(this: var InputSource, relatedItemPath: String): ptr InputStream {.header: juce_core, importcpp: "#.createInputStreamFor(@)".}
proc hashCode*(this: InputSource): int64 {.header: juce_core, importcpp: "#.hashCode()".}

proc `File=`*(this: var File, newAbsolutePath: String): var File {.header: juce_core, importcpp: "#.operator=(@)".}
proc `File=`*(this: var File, otherFile: File): var File {.header: juce_core, importcpp: "#.operator=(@)".}
proc `File=`*(this: var File, arg1: lent File): var File {.header: juce_core, importcpp: "#.operator=(@)".}
proc exists*(this: File): bool {.header: juce_core, importcpp: "#.exists()".}
proc existsAsFile*(this: File): bool {.header: juce_core, importcpp: "#.existsAsFile()".}
proc isDirectory*(this: File): bool {.header: juce_core, importcpp: "#.isDirectory()".}
proc isRoot*(this: File): bool {.header: juce_core, importcpp: "#.isRoot()".}
proc getSize*(this: File): int64 {.header: juce_core, importcpp: "#.getSize()".}
proc getFullPathName*(this: File): String {.header: juce_core, importcpp: "#.getFullPathName()".}
proc getFileName*(this: File): String {.header: juce_core, importcpp: "#.getFileName()".}
proc getRelativePathFrom*(this: File, directoryToBeRelativeTo: File): String {.header: juce_core, importcpp: "#.getRelativePathFrom(@)".}
proc getFileExtension*(this: File): String {.header: juce_core, importcpp: "#.getFileExtension()".}
proc hasFileExtension*(this: File, extensionToTest: StringRef): bool {.header: juce_core, importcpp: "#.hasFileExtension(@)".}
proc withFileExtension*(this: File, newExtension: StringRef): File {.header: juce_core, importcpp: "#.withFileExtension(@)".}
proc getFileNameWithoutExtension*(this: File): String {.header: juce_core, importcpp: "#.getFileNameWithoutExtension()".}
proc hashCode*(this: File): int {.header: juce_core, importcpp: "#.hashCode()".}
proc hashCode64*(this: File): int64 {.header: juce_core, importcpp: "#.hashCode64()".}
proc getChildFile*(this: File, relativeOrAbsolutePath: StringRef): File {.header: juce_core, importcpp: "#.getChildFile(@)".}
proc getSiblingFile*(this: File, siblingFileName: StringRef): File {.header: juce_core, importcpp: "#.getSiblingFile(@)".}
proc getParentDirectory*(this: File): File {.header: juce_core, importcpp: "#.getParentDirectory()".}
proc isAChildOf*(this: File, potentialParentDirectory: File): bool {.header: juce_core, importcpp: "#.isAChildOf(@)".}
proc getNonexistentChildFile*(this: File, prefix: String, suffix: String, putNumbersInBrackets: bool = true): File {.header: juce_core, importcpp: "#.getNonexistentChildFile(@)".}
proc getNonexistentSibling*(this: File, putNumbersInBrackets: bool = true): File {.header: juce_core, importcpp: "#.getNonexistentSibling(@)".}
proc `File==`*(this: File, arg1: File): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `File!=`*(this: File, arg1: File): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc `File<`*(this: File, arg1: File): bool {.header: juce_core, importcpp: "#.operator<(@)".}
proc `File>`*(this: File, arg1: File): bool {.header: juce_core, importcpp: "#.operator>(@)".}
proc hasWriteAccess*(this: File): bool {.header: juce_core, importcpp: "#.hasWriteAccess()".}
proc setReadOnly*(this: File, shouldBeReadOnly: bool, applyRecursively: bool = false): bool {.header: juce_core, importcpp: "#.setReadOnly(@)".}
proc setExecutePermission*(this: File, shouldBeExecutable: bool): bool {.header: juce_core, importcpp: "#.setExecutePermission(@)".}
proc isHidden*(this: File): bool {.header: juce_core, importcpp: "#.isHidden()".}
proc getFileIdentifier*(this: File): uint64 {.header: juce_core, importcpp: "#.getFileIdentifier()".}
proc getLastModificationTime*(this: File): Time {.header: juce_core, importcpp: "#.getLastModificationTime()".}
proc getLastAccessTime*(this: File): Time {.header: juce_core, importcpp: "#.getLastAccessTime()".}
proc getCreationTime*(this: File): Time {.header: juce_core, importcpp: "#.getCreationTime()".}
proc setLastModificationTime*(this: File, newTime: Time): bool {.header: juce_core, importcpp: "#.setLastModificationTime(@)".}
proc setLastAccessTime*(this: File, newTime: Time): bool {.header: juce_core, importcpp: "#.setLastAccessTime(@)".}
proc setCreationTime*(this: File, newTime: Time): bool {.header: juce_core, importcpp: "#.setCreationTime(@)".}
proc getVersion*(this: File): String {.header: juce_core, importcpp: "#.getVersion()".}
proc create*(this: File): Result {.header: juce_core, importcpp: "#.create()".}
proc createDirectory*(this: File): Result {.header: juce_core, importcpp: "#.createDirectory()".}
proc deleteFile*(this: File): bool {.header: juce_core, importcpp: "#.deleteFile()".}
proc deleteRecursively*(this: File, followSymlinks: bool = false): bool {.header: juce_core, importcpp: "#.deleteRecursively(@)".}
proc moveToTrash*(this: File): bool {.header: juce_core, importcpp: "#.moveToTrash()".}
proc moveFileTo*(this: File, targetLocation: File): bool {.header: juce_core, importcpp: "#.moveFileTo(@)".}
proc copyFileTo*(this: File, targetLocation: File): bool {.header: juce_core, importcpp: "#.copyFileTo(@)".}
proc replaceFileIn*(this: File, targetLocation: File): bool {.header: juce_core, importcpp: "#.replaceFileIn(@)".}
proc copyDirectoryTo*(this: File, newDirectory: File): bool {.header: juce_core, importcpp: "#.copyDirectoryTo(@)".}
proc findChildFiles*(this: File, whatToLookFor: int, searchRecursively: bool, wildCardPattern: String): int {.header: juce_core, importcpp: "#.findChildFiles(@)".}
proc findChildFiles*(this: File, results: var int, whatToLookFor: int, searchRecursively: bool, wildCardPattern: String): int {.header: juce_core, importcpp: "#.findChildFiles(@)".}
proc getNumberOfChildFiles*(this: File, whatToLookFor: int, wildCardPattern: String): int {.header: juce_core, importcpp: "#.getNumberOfChildFiles(@)".}
proc containsSubDirectories*(this: File): bool {.header: juce_core, importcpp: "#.containsSubDirectories()".}
proc createInputStream*(this: File): int {.header: juce_core, importcpp: "#.createInputStream()".}
proc createOutputStream*(this: File, bufferSize: int = 0x8000): int {.header: juce_core, importcpp: "#.createOutputStream(@)".}
proc loadFileAsData*(this: File, result: var MemoryBlock): bool {.header: juce_core, importcpp: "#.loadFileAsData(@)".}
proc loadFileAsString*(this: File): String {.header: juce_core, importcpp: "#.loadFileAsString()".}
proc readLines*(this: File, destLines: var StringArray) {.header: juce_core, importcpp: "#.readLines(@)".}
proc appendData*(this: File, dataToAppend: constPointer, numberOfBytes: int): bool {.header: juce_core, importcpp: "#.appendData(@)".}
proc replaceWithData*(this: File, dataToWrite: constPointer, numberOfBytes: int): bool {.header: juce_core, importcpp: "#.replaceWithData(@)".}
proc appendText*(this: File, textToAppend: String, asUnicode: bool = false, writeUnicodeHeaderBytes: bool = false, lineEndings: constChar = "\r\n"): bool {.header: juce_core, importcpp: "#.appendText(@)".}
proc replaceWithText*(this: File, textToWrite: String, asUnicode: bool = false, writeUnicodeHeaderBytes: bool = false, lineEndings: constChar = "\r\n"): bool {.header: juce_core, importcpp: "#.replaceWithText(@)".}
proc hasIdenticalContentTo*(this: File, other: File): bool {.header: juce_core, importcpp: "#.hasIdenticalContentTo(@)".}
proc getVolumeLabel*(this: File): String {.header: juce_core, importcpp: "#.getVolumeLabel()".}
proc getVolumeSerialNumber*(this: File): int {.header: juce_core, importcpp: "#.getVolumeSerialNumber()".}
proc getBytesFreeOnVolume*(this: File): int64 {.header: juce_core, importcpp: "#.getBytesFreeOnVolume()".}
proc getVolumeTotalSize*(this: File): int64 {.header: juce_core, importcpp: "#.getVolumeTotalSize()".}
proc isOnCDRomDrive*(this: File): bool {.header: juce_core, importcpp: "#.isOnCDRomDrive()".}
proc isOnHardDisk*(this: File): bool {.header: juce_core, importcpp: "#.isOnHardDisk()".}
proc isOnRemovableDrive*(this: File): bool {.header: juce_core, importcpp: "#.isOnRemovableDrive()".}
proc startAsProcess*(this: File, parameters: String = String()): bool {.header: juce_core, importcpp: "#.startAsProcess(@)".}
proc revealToUser*(this: File) {.header: juce_core, importcpp: "#.revealToUser()".}
proc setAsCurrentWorkingDirectory*(this: File): bool {.header: juce_core, importcpp: "#.setAsCurrentWorkingDirectory()".}
proc createSymbolicLink*(this: File, linkFileToCreate: File, overwriteExisting: bool): bool {.header: juce_core, importcpp: "#.createSymbolicLink(@)".}
proc isSymbolicLink*(this: File): bool {.header: juce_core, importcpp: "#.isSymbolicLink()".}
proc getLinkedTarget*(this: File): File {.header: juce_core, importcpp: "#.getLinkedTarget()".}
proc getNativeLinkedTarget*(this: File): String {.header: juce_core, importcpp: "#.getNativeLinkedTarget()".}
# proc getMacOSType*(this: File): OSType {.header: juce_core, importcpp: "#.getMacOSType()".}
proc isBundle*(this: File): bool {.header: juce_core, importcpp: "#.isBundle()".}
proc addToDock*(this: File) {.header: juce_core, importcpp: "#.addToDock()".}

type
  DirectoryIterator* {.header: juce_core, importcpp: "juce::DirectoryIterator".} = object
  DirectoryIteratorNativeIterator* {.header: juce_core, importcpp: "juce::DirectoryIterator::NativeIterator".} = object

proc next*(this: var DirectoryIterator): bool {.header: juce_core, importcpp: "#.next()".}
proc next*(this: var DirectoryIterator, isDirectory: ptr bool, isHidden: ptr bool, fileSize: ptr int64, modTime: ptr Time, creationTime: ptr Time, isReadOnly: ptr bool): bool {.header: juce_core, importcpp: "#.next(@)".}
proc getFile*(this: DirectoryIterator): File {.header: juce_core, importcpp: "#.getFile()".}
proc getEstimatedProgress*(this: DirectoryIterator): float {.header: juce_core, importcpp: "#.getEstimatedProgress()".}

type
  DirectoryEntry* {.header: juce_core, importcpp: "juce::DirectoryEntry".} = object

proc getFile*(this: DirectoryEntry): File {.header: juce_core, importcpp: "#.getFile()".}
proc getModificationTime*(this: DirectoryEntry): Time {.header: juce_core, importcpp: "#.getModificationTime()".}
proc getCreationTime*(this: DirectoryEntry): Time {.header: juce_core, importcpp: "#.getCreationTime()".}
proc getFileSize*(this: DirectoryEntry): int64 {.header: juce_core, importcpp: "#.getFileSize()".}
proc isDirectory*(this: DirectoryEntry): bool {.header: juce_core, importcpp: "#.isDirectory()".}
proc isHidden*(this: DirectoryEntry): bool {.header: juce_core, importcpp: "#.isHidden()".}
proc isReadOnly*(this: DirectoryEntry): bool {.header: juce_core, importcpp: "#.isReadOnly()".}
proc getEstimatedProgress*(this: DirectoryEntry): float {.header: juce_core, importcpp: "#.getEstimatedProgress()".}

type
  RangedDirectoryIterator* {.header: juce_core, importcpp: "juce::RangedDirectoryIterator".} = object

proc `RangedDirectoryIterator==`*(this: RangedDirectoryIterator, other: RangedDirectoryIterator): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `RangedDirectoryIterator!=`*(this: RangedDirectoryIterator, other: RangedDirectoryIterator): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
# proc operator**(this: RangedDirectoryIterator): DirectoryEntry {.header: juce_core, importcpp: "#.operator*()".}
# proc operator->*(this: RangedDirectoryIterator): ptr DirectoryEntry {.header: juce_core, importcpp: "#.operator->()".}
proc `inc`*(this: var RangedDirectoryIterator): var RangedDirectoryIterator {.header: juce_core, importcpp: "#.operator++()".}
proc `inc`*(this: var RangedDirectoryIterator, arg1: int): DirectoryEntry {.header: juce_core, importcpp: "#.operator++(@)".}

proc getFile*(this: FileInputStream): File {.header: juce_core, importcpp: "#.getFile()".}
proc getStatus*(this: FileInputStream): Result {.header: juce_core, importcpp: "#.getStatus()".}
proc failedToOpen*(this: FileInputStream): bool {.header: juce_core, importcpp: "#.failedToOpen()".}
proc openedOk*(this: FileInputStream): bool {.header: juce_core, importcpp: "#.openedOk()".}
proc getTotalLength*(this: var FileInputStream): int64 {.header: juce_core, importcpp: "#.getTotalLength()".}
proc read*(this: var FileInputStream, arg1: pointer, arg2: int): int {.header: juce_core, importcpp: "#.read(@)".}
proc isExhausted*(this: var FileInputStream): bool {.header: juce_core, importcpp: "#.isExhausted()".}
proc getPosition*(this: var FileInputStream): int64 {.header: juce_core, importcpp: "#.getPosition()".}
proc setPosition*(this: var FileInputStream, arg1: int64): bool {.header: juce_core, importcpp: "#.setPosition(@)".}

proc getFile*(this: FileOutputStream): File {.header: juce_core, importcpp: "#.getFile()".}
proc getStatus*(this: FileOutputStream): Result {.header: juce_core, importcpp: "#.getStatus()".}
proc failedToOpen*(this: FileOutputStream): bool {.header: juce_core, importcpp: "#.failedToOpen()".}
proc openedOk*(this: FileOutputStream): bool {.header: juce_core, importcpp: "#.openedOk()".}
proc truncate*(this: var FileOutputStream): Result {.header: juce_core, importcpp: "#.truncate()".}
proc flush*(this: var FileOutputStream) {.header: juce_core, importcpp: "#.flush()".}
proc getPosition*(this: var FileOutputStream): int64 {.header: juce_core, importcpp: "#.getPosition()".}
proc setPosition*(this: var FileOutputStream, arg1: int64): bool {.header: juce_core, importcpp: "#.setPosition(@)".}
proc write*(this: var FileOutputStream, arg1: constPointer, arg2: int): bool {.header: juce_core, importcpp: "#.write(@)".}
proc writeRepeatedByte*(this: var FileOutputStream, byte: uint8, numTimesToRepeat: int): bool {.header: juce_core, importcpp: "#.writeRepeatedByte(@)".}

type
  FileSearchPath* {.header: juce_core, importcpp: "juce::FileSearchPath".} = object

proc `FileSearchPath=`*(this: var FileSearchPath, arg1: FileSearchPath): var FileSearchPath {.header: juce_core, importcpp: "#.operator=(@)".}
proc `FileSearchPath=`*(this: var FileSearchPath, path: String): var FileSearchPath {.header: juce_core, importcpp: "#.operator=(@)".}
proc getNumPaths*(this: FileSearchPath): int {.header: juce_core, importcpp: "#.getNumPaths()".}
proc `FileSearchPath[]`*(this: FileSearchPath, index: int): File {.header: juce_core, importcpp: "#.operator[](@)".}
proc toString*(this: FileSearchPath): String {.header: juce_core, importcpp: "#.toString()".}
proc add*(this: var FileSearchPath, directoryToAdd: File, insertIndex: int = -1) {.header: juce_core, importcpp: "#.add(@)".}
proc addIfNotAlreadyThere*(this: var FileSearchPath, directoryToAdd: File): bool {.header: juce_core, importcpp: "#.addIfNotAlreadyThere(@)".}
proc remove*(this: var FileSearchPath, indexToRemove: int) {.header: juce_core, importcpp: "#.remove(@)".}
proc addPath*(this: var FileSearchPath, arg1: FileSearchPath) {.header: juce_core, importcpp: "#.addPath(@)".}
proc removeRedundantPaths*(this: var FileSearchPath) {.header: juce_core, importcpp: "#.removeRedundantPaths()".}
proc removeNonExistentPaths*(this: var FileSearchPath) {.header: juce_core, importcpp: "#.removeNonExistentPaths()".}
proc findChildFiles*(this: FileSearchPath, whatToLookFor: int, searchRecursively: bool, wildCardPattern: String): int {.header: juce_core, importcpp: "#.findChildFiles(@)".}
proc findChildFiles*(this: FileSearchPath, results: var int, whatToLookFor: int, searchRecursively: bool, wildCardPattern: String): int {.header: juce_core, importcpp: "#.findChildFiles(@)".}
proc isFileInPath*(this: FileSearchPath, fileToCheck: File, checkRecursively: bool): bool {.header: juce_core, importcpp: "#.isFileInPath(@)".}

type
  MemoryMappedFile* {.header: juce_core, importcpp: "juce::MemoryMappedFile".} = object

proc getData*(this: MemoryMappedFile): pointer {.header: juce_core, importcpp: "#.getData()".}
proc getSize*(this: MemoryMappedFile): int {.header: juce_core, importcpp: "#.getSize()".}
# proc getRange*(this: MemoryMappedFile): Range<juce::int64> {.header: juce_core, importcpp: "#.getRange()".}

type
  TemporaryFile* {.header: juce_core, importcpp: "juce::TemporaryFile".} = object

proc getFile*(this: TemporaryFile): File {.header: juce_core, importcpp: "#.getFile()".}
proc getTargetFile*(this: TemporaryFile): File {.header: juce_core, importcpp: "#.getTargetFile()".}
proc overwriteTargetFileWithTemporary*(this: TemporaryFile): bool {.header: juce_core, importcpp: "#.overwriteTargetFileWithTemporary()".}
proc deleteTemporaryFile*(this: TemporaryFile): bool {.header: juce_core, importcpp: "#.deleteTemporaryFile()".}

type
  FileFilter* {.header: juce_core, importcpp: "juce::FileFilter".} = object

proc getDescription*(this: FileFilter): String {.header: juce_core, importcpp: "#.getDescription()".}
proc isFileSuitable*(this: FileFilter, file: File): bool {.header: juce_core, importcpp: "#.isFileSuitable(@)".}
proc isDirectorySuitable*(this: FileFilter, file: File): bool {.header: juce_core, importcpp: "#.isDirectorySuitable(@)".}

type
  WildcardFileFilter* {.header: juce_core, importcpp: "juce::WildcardFileFilter".} = object

proc isFileSuitable*(this: WildcardFileFilter, file: File): bool {.header: juce_core, importcpp: "#.isFileSuitable(@)".}
proc isDirectorySuitable*(this: WildcardFileFilter, file: File): bool {.header: juce_core, importcpp: "#.isDirectorySuitable(@)".}

type
  FileInputSource* {.header: juce_core, importcpp: "juce::FileInputSource".} = object

proc createInputStream*(this: var FileInputSource): ptr InputStream {.header: juce_core, importcpp: "#.createInputStream()".}
proc createInputStreamFor*(this: var FileInputSource, relatedItemPath: String): ptr InputStream {.header: juce_core, importcpp: "#.createInputStreamFor(@)".}
proc hashCode*(this: FileInputSource): int64 {.header: juce_core, importcpp: "#.hashCode()".}

type
  FileLogger* {.header: juce_core, importcpp: "juce::FileLogger".} = object

proc getLogFile*(this: FileLogger): File {.header: juce_core, importcpp: "#.getLogFile()".}
proc logMessage*(this: var FileLogger, arg1: String) {.header: juce_core, importcpp: "#.logMessage(@)".}

type
  JSON* {.header: juce_core, importcpp: "juce::JSON".} = object


type
  JavascriptEngine* {.header: juce_core, importcpp: "juce::JavascriptEngine".} = object

proc execute*(this: var JavascriptEngine, javascriptCode: String): Result {.header: juce_core, importcpp: "#.execute(@)".}
proc evaluate*(this: var JavascriptEngine, javascriptCode: String, errorMessage: ptr Result = nil): juce_var {.header: juce_core, importcpp: "#.evaluate(@)".}
proc callFunction*(this: var JavascriptEngine, function: Identifier, args: juce_varNativeFunctionArgs, errorMessage: ptr Result = nil): juce_var {.header: juce_core, importcpp: "#.callFunction(@)".}
proc callFunctionObject*(this: var JavascriptEngine, objectScope: ptr DynamicObject, functionObject: juce_var, args: juce_varNativeFunctionArgs, errorMessage: ptr Result = nil): juce_var {.header: juce_core, importcpp: "#.callFunctionObject(@)".}
proc registerNativeObject*(this: var JavascriptEngine, objectName: Identifier, `object`: ptr DynamicObject) {.header: juce_core, importcpp: "#.registerNativeObject(@)".}
proc stop*(this: var JavascriptEngine) {.header: juce_core, importcpp: "#.stop()".}
proc getRootObjectProperties*(this: JavascriptEngine): NamedValueSet {.header: juce_core, importcpp: "#.getRootObjectProperties()".}

type
  BigInteger* {.header: juce_core, importcpp: "juce::BigInteger".} = object

proc `BigInteger=`*(this: var BigInteger, arg1: lent BigInteger): var BigInteger {.header: juce_core, importcpp: "#.operator=(@)".}
proc `BigInteger=`*(this: var BigInteger, arg1: BigInteger): var BigInteger {.header: juce_core, importcpp: "#.operator=(@)".}
proc swapWith*(this: var BigInteger, arg1: var BigInteger) {.header: juce_core, importcpp: "#.swapWith(@)".}
proc `BigInteger[]`*(this: BigInteger, bit: int): bool {.header: juce_core, importcpp: "#.operator[](@)".}
proc isZero*(this: BigInteger): bool {.header: juce_core, importcpp: "#.isZero()".}
proc isOne*(this: BigInteger): bool {.header: juce_core, importcpp: "#.isOne()".}
proc toInteger*(this: BigInteger): int {.header: juce_core, importcpp: "#.toInteger()".}
proc toInt64*(this: BigInteger): int64 {.header: juce_core, importcpp: "#.toInt64()".}
proc clear*(this: var BigInteger) {.header: juce_core, importcpp: "#.clear()".}
proc clearBit*(this: var BigInteger, bitNumber: int) {.header: juce_core, importcpp: "#.clearBit(@)".}
proc setBit*(this: var BigInteger, bitNumber: int) {.header: juce_core, importcpp: "#.setBit(@)".}
proc setBit*(this: var BigInteger, bitNumber: int, shouldBeSet: bool) {.header: juce_core, importcpp: "#.setBit(@)".}
proc setRange*(this: var BigInteger, startBit: int, numBits: int, shouldBeSet: bool) {.header: juce_core, importcpp: "#.setRange(@)".}
proc insertBit*(this: var BigInteger, bitNumber: int, shouldBeSet: bool) {.header: juce_core, importcpp: "#.insertBit(@)".}
proc getBitRange*(this: BigInteger, startBit: int, numBits: int): BigInteger {.header: juce_core, importcpp: "#.getBitRange(@)".}
proc getBitRangeAsInt*(this: BigInteger, startBit: int, numBits: int): uint32 {.header: juce_core, importcpp: "#.getBitRangeAsInt(@)".}
proc setBitRangeAsInt*(this: var BigInteger, startBit: int, numBits: int, valueToSet: uint32) {.header: juce_core, importcpp: "#.setBitRangeAsInt(@)".}
proc shiftBits*(this: var BigInteger, howManyBitsLeft: int, startBit: int) {.header: juce_core, importcpp: "#.shiftBits(@)".}
proc countNumberOfSetBits*(this: BigInteger): int {.header: juce_core, importcpp: "#.countNumberOfSetBits()".}
proc findNextSetBit*(this: BigInteger, startIndex: int): int {.header: juce_core, importcpp: "#.findNextSetBit(@)".}
proc findNextClearBit*(this: BigInteger, startIndex: int): int {.header: juce_core, importcpp: "#.findNextClearBit(@)".}
proc getHighestBit*(this: BigInteger): int {.header: juce_core, importcpp: "#.getHighestBit()".}
proc isNegative*(this: BigInteger): bool {.header: juce_core, importcpp: "#.isNegative()".}
proc setNegative*(this: var BigInteger, shouldBeNegative: bool) {.header: juce_core, importcpp: "#.setNegative(@)".}
proc negate*(this: var BigInteger) {.header: juce_core, importcpp: "#.negate()".}
proc `BigInteger+=`*(this: var BigInteger, arg1: BigInteger): var BigInteger {.header: juce_core, importcpp: "#.operator+=(@)".}
proc `BigInteger-=`*(this: var BigInteger, arg1: BigInteger): var BigInteger {.header: juce_core, importcpp: "#.operator-=(@)".}
proc `BigInteger*=`*(this: var BigInteger, arg1: BigInteger): var BigInteger {.header: juce_core, importcpp: "#.operator*=(@)".}
proc `BigInteger/=`*(this: var BigInteger, arg1: BigInteger): var BigInteger {.header: juce_core, importcpp: "#.operator/=(@)".}
proc `BigInteger|=`*(this: var BigInteger, arg1: BigInteger): var BigInteger {.header: juce_core, importcpp: "#.operator|=(@)".}
proc `BigInteger&=`*(this: var BigInteger, arg1: BigInteger): var BigInteger {.header: juce_core, importcpp: "#.operator&=(@)".}
proc `BigInteger^=`*(this: var BigInteger, arg1: BigInteger): var BigInteger {.header: juce_core, importcpp: "#.operator^=(@)".}
proc `BigInteger%=`*(this: var BigInteger, arg1: BigInteger): var BigInteger {.header: juce_core, importcpp: "#.operator%=(@)".}
proc `BigInteger<<=`*(this: var BigInteger, numBitsToShift: int): var BigInteger {.header: juce_core, importcpp: "#.operator<<=(@)".}
proc `BigInteger>>=`*(this: var BigInteger, numBitsToShift: int): var BigInteger {.header: juce_core, importcpp: "#.operator>>=(@)".}
proc `inc`*(this: var BigInteger): var BigInteger {.header: juce_core, importcpp: "#.operator++()".}
proc `dec`*(this: var BigInteger): var BigInteger {.header: juce_core, importcpp: "#.operator--()".}
proc `inc`*(this: var BigInteger, arg1: int): BigInteger {.header: juce_core, importcpp: "#.operator++(@)".}
proc `dec`*(this: var BigInteger, arg1: int): BigInteger {.header: juce_core, importcpp: "#.operator--(@)".}
# proc operator-*(this: BigInteger): BigInteger {.header: juce_core, importcpp: "#.operator-()".}
# proc operator+*(this: BigInteger, arg1: BigInteger): BigInteger {.header: juce_core, importcpp: "#.operator+(@)".}
# proc operator-*(this: BigInteger, arg1: BigInteger): BigInteger {.header: juce_core, importcpp: "#.operator-(@)".}
# proc operator**(this: BigInteger, arg1: BigInteger): BigInteger {.header: juce_core, importcpp: "#.operator*(@)".}
# proc operator/*(this: BigInteger, arg1: BigInteger): BigInteger {.header: juce_core, importcpp: "#.operator/(@)".}
# proc operator|*(this: BigInteger, arg1: BigInteger): BigInteger {.header: juce_core, importcpp: "#.operator|(@)".}
# proc operator&*(this: BigInteger, arg1: BigInteger): BigInteger {.header: juce_core, importcpp: "#.operator&(@)".}
# proc operator^*(this: BigInteger, arg1: BigInteger): BigInteger {.header: juce_core, importcpp: "#.operator^(@)".}
# proc operator%*(this: BigInteger, arg1: BigInteger): BigInteger {.header: juce_core, importcpp: "#.operator%(@)".}
# proc operator<<*(this: BigInteger, numBitsToShift: int): BigInteger {.header: juce_core, importcpp: "#.operator<<(@)".}
# proc operator>>*(this: BigInteger, numBitsToShift: int): BigInteger {.header: juce_core, importcpp: "#.operator>>(@)".}
proc `BigInteger==`*(this: BigInteger, arg1: BigInteger): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `BigInteger!=`*(this: BigInteger, arg1: BigInteger): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc `BigInteger<`*(this: BigInteger, arg1: BigInteger): bool {.header: juce_core, importcpp: "#.operator<(@)".}
proc `BigInteger<=`*(this: BigInteger, arg1: BigInteger): bool {.header: juce_core, importcpp: "#.operator<=(@)".}
proc `BigInteger>`*(this: BigInteger, arg1: BigInteger): bool {.header: juce_core, importcpp: "#.operator>(@)".}
proc `BigInteger>=`*(this: BigInteger, arg1: BigInteger): bool {.header: juce_core, importcpp: "#.operator>=(@)".}
proc compare*(this: BigInteger, other: BigInteger): int {.header: juce_core, importcpp: "#.compare(@)".}
proc compareAbsolute*(this: BigInteger, other: BigInteger): int {.header: juce_core, importcpp: "#.compareAbsolute(@)".}
proc divideBy*(this: var BigInteger, divisor: BigInteger, remainder: var BigInteger) {.header: juce_core, importcpp: "#.divideBy(@)".}
proc findGreatestCommonDivisor*(this: BigInteger, other: BigInteger): BigInteger {.header: juce_core, importcpp: "#.findGreatestCommonDivisor(@)".}
proc exponentModulo*(this: var BigInteger, exponent: BigInteger, modulus: BigInteger) {.header: juce_core, importcpp: "#.exponentModulo(@)".}
proc inverseModulo*(this: var BigInteger, modulus: BigInteger) {.header: juce_core, importcpp: "#.inverseModulo(@)".}
proc montgomeryMultiplication*(this: var BigInteger, other: BigInteger, modulus: BigInteger, modulusp: BigInteger, k: int) {.header: juce_core, importcpp: "#.montgomeryMultiplication(@)".}
proc extendedEuclidean*(this: var BigInteger, a: BigInteger, b: BigInteger, xOut: var BigInteger, yOut: var BigInteger) {.header: juce_core, importcpp: "#.extendedEuclidean(@)".}
proc toString*(this: BigInteger, base: int, minimumNumCharacters: int = 1): String {.header: juce_core, importcpp: "#.toString(@)".}
proc parseString*(this: var BigInteger, text: StringRef, base: int) {.header: juce_core, importcpp: "#.parseString(@)".}
proc toMemoryBlock*(this: BigInteger): MemoryBlock {.header: juce_core, importcpp: "#.toMemoryBlock()".}
proc loadFromMemoryBlock*(this: var BigInteger, data: MemoryBlock) {.header: juce_core, importcpp: "#.loadFromMemoryBlock(@)".}

type
  Expression* {.header: juce_core, importcpp: "juce::Expression".} = object
  ExpressionScope* {.header: juce_core, importcpp: "juce::Expression::Scope".} = object
  ExpressionSymbol* {.header: juce_core, importcpp: "juce::Expression::Symbol".} = object

proc `Expression=`*(this: var Expression, arg1: Expression): var Expression {.header: juce_core, importcpp: "#.operator=(@)".}
proc `Expression=`*(this: var Expression, arg1: lent Expression): var Expression {.header: juce_core, importcpp: "#.operator=(@)".}
proc toString*(this: Expression): String {.header: juce_core, importcpp: "#.toString()".}
# proc operator+*(this: Expression, arg1: Expression): Expression {.header: juce_core, importcpp: "#.operator+(@)".}
# proc operator-*(this: Expression, arg1: Expression): Expression {.header: juce_core, importcpp: "#.operator-(@)".}
# proc operator**(this: Expression, arg1: Expression): Expression {.header: juce_core, importcpp: "#.operator*(@)".}
# proc operator/*(this: Expression, arg1: Expression): Expression {.header: juce_core, importcpp: "#.operator/(@)".}
# proc operator-*(this: Expression): Expression {.header: juce_core, importcpp: "#.operator-()".}
proc evaluate*(this: Expression): float64 {.header: juce_core, importcpp: "#.evaluate()".}
proc evaluate*(this: Expression, scope: ExpressionScope): float64 {.header: juce_core, importcpp: "#.evaluate(@)".}
proc evaluate*(this: Expression, scope: ExpressionScope, evaluationError: var String): float64 {.header: juce_core, importcpp: "#.evaluate(@)".}
proc adjustedToGiveNewResult*(this: Expression, targetValue: float64, scope: ExpressionScope): Expression {.header: juce_core, importcpp: "#.adjustedToGiveNewResult(@)".}
proc withRenamedSymbol*(this: Expression, oldSymbol: ExpressionSymbol, newName: String, scope: ExpressionScope): Expression {.header: juce_core, importcpp: "#.withRenamedSymbol(@)".}
proc referencesSymbol*(this: Expression, symbol: ExpressionSymbol, scope: ExpressionScope): bool {.header: juce_core, importcpp: "#.referencesSymbol(@)".}
proc usesAnySymbols*(this: Expression): bool {.header: juce_core, importcpp: "#.usesAnySymbols()".}
proc findReferencedSymbols*(this: Expression, results: var int, scope: ExpressionScope) {.header: juce_core, importcpp: "#.findReferencedSymbols(@)".}
# proc getType*(this: Expression): juce::Expression::Type {.header: juce_core, importcpp: "#.getType()".}
proc getSymbolOrFunction*(this: Expression): String {.header: juce_core, importcpp: "#.getSymbolOrFunction()".}
proc getNumInputs*(this: Expression): int {.header: juce_core, importcpp: "#.getNumInputs()".}
proc getInput*(this: Expression, index: int): Expression {.header: juce_core, importcpp: "#.getInput(@)".}

type
  Random* {.header: juce_core, importcpp: "juce::Random".} = object

proc nextInt*(this: var Random): int {.header: juce_core, importcpp: "#.nextInt()".}
proc nextInt*(this: var Random, maxValue: int): int {.header: juce_core, importcpp: "#.nextInt(@)".}
# proc nextInt*(this: var Random, range: Range<int>): int {.header: juce_core, importcpp: "#.nextInt(@)".}
proc nextInt64*(this: var Random): int64 {.header: juce_core, importcpp: "#.nextInt64()".}
proc nextFloat*(this: var Random): float {.header: juce_core, importcpp: "#.nextFloat()".}
proc nextDouble*(this: var Random): float64 {.header: juce_core, importcpp: "#.nextDouble()".}
proc nextBool*(this: var Random): bool {.header: juce_core, importcpp: "#.nextBool()".}
proc nextLargeNumber*(this: var Random, maximumValue: BigInteger): BigInteger {.header: juce_core, importcpp: "#.nextLargeNumber(@)".}
proc fillBitsRandomly*(this: var Random, bufferToFill: pointer, sizeInBytes: int) {.header: juce_core, importcpp: "#.fillBitsRandomly(@)".}
proc fillBitsRandomly*(this: var Random, arrayToChange: var BigInteger, startBit: int, numBits: int) {.header: juce_core, importcpp: "#.fillBitsRandomly(@)".}
proc setSeed*(this: var Random, newSeed: int64) {.header: juce_core, importcpp: "#.setSeed(@)".}
proc getSeed*(this: Random): int64 {.header: juce_core, importcpp: "#.getSeed()".}
proc combineSeed*(this: var Random, seedValue: int64) {.header: juce_core, importcpp: "#.combineSeed(@)".}
proc setSeedRandomly*(this: var Random) {.header: juce_core, importcpp: "#.setSeedRandomly()".}

type
  RuntimePermissions* {.header: juce_core, importcpp: "juce::RuntimePermissions".} = object


type
  ChildProcess* {.header: juce_core, importcpp: "juce::ChildProcess".} = object

proc start*(this: var ChildProcess, command: String, streamFlags: int): bool {.header: juce_core, importcpp: "#.start(@)".}
proc start*(this: var ChildProcess, arguments: StringArray, streamFlags: int): bool {.header: juce_core, importcpp: "#.start(@)".}
proc isRunning*(this: ChildProcess): bool {.header: juce_core, importcpp: "#.isRunning()".}
proc readProcessOutput*(this: var ChildProcess, destBuffer: pointer, numBytesToRead: int): int {.header: juce_core, importcpp: "#.readProcessOutput(@)".}
proc readAllProcessOutput*(this: var ChildProcess): String {.header: juce_core, importcpp: "#.readAllProcessOutput()".}
proc waitForProcessToFinish*(this: ChildProcess, timeoutMs: int): bool {.header: juce_core, importcpp: "#.waitForProcessToFinish(@)".}
proc getExitCode*(this: ChildProcess): uint32 {.header: juce_core, importcpp: "#.getExitCode()".}
proc kill*(this: var ChildProcess): bool {.header: juce_core, importcpp: "#.kill()".}

type
  DynamicLibrary* {.header: juce_core, importcpp: "juce::DynamicLibrary".} = object

proc open*(this: var DynamicLibrary, name: String): bool {.header: juce_core, importcpp: "#.open(@)".}
proc close*(this: var DynamicLibrary) {.header: juce_core, importcpp: "#.close()".}
proc getFunction*(this: var DynamicLibrary, functionName: String): pointer {.header: juce_core, importcpp: "#.getFunction(@)".}
proc getNativeHandle*(this: DynamicLibrary): pointer {.header: juce_core, importcpp: "#.getNativeHandle()".}

type
  HighResolutionTimer* {.header: juce_core, importcpp: "juce::HighResolutionTimer".} = object

proc hiResTimerCallback*(this: var HighResolutionTimer) {.header: juce_core, importcpp: "#.hiResTimerCallback()".}
proc startTimer*(this: var HighResolutionTimer, intervalInMilliseconds: int) {.header: juce_core, importcpp: "#.startTimer(@)".}
proc stopTimer*(this: var HighResolutionTimer) {.header: juce_core, importcpp: "#.stopTimer()".}
proc isTimerRunning*(this: HighResolutionTimer): bool {.header: juce_core, importcpp: "#.isTimerRunning()".}
proc getTimerInterval*(this: HighResolutionTimer): int {.header: juce_core, importcpp: "#.getTimerInterval()".}

type
  InterProcessLock* {.header: juce_core, importcpp: "juce::InterProcessLock".} = object
  InterProcessLockScopedLockType* {.header: juce_core, importcpp: "juce::InterProcessLock::ScopedLockType".} = object

proc enter*(this: var InterProcessLock, timeOutMillisecs: int = -1): bool {.header: juce_core, importcpp: "#.enter(@)".}
proc exit*(this: var InterProcessLock) {.header: juce_core, importcpp: "#.exit()".}

type
  Process* {.header: juce_core, importcpp: "juce::Process".} = object


type
  SpinLock* {.header: juce_core, importcpp: "juce::SpinLock".} = object

proc enter*(this: SpinLock) {.header: juce_core, importcpp: "#.enter()".}
proc tryEnter*(this: SpinLock): bool {.header: juce_core, importcpp: "#.tryEnter()".}
proc exit*(this: SpinLock) {.header: juce_core, importcpp: "#.exit()".}

type
  WaitableEvent* {.header: juce_core, importcpp: "juce::WaitableEvent".} = object

proc wait*(this: WaitableEvent, timeOutMilliseconds: int = -1): bool {.header: juce_core, importcpp: "#.wait(@)".}
proc signal*(this: WaitableEvent) {.header: juce_core, importcpp: "#.signal()".}
proc reset*(this: WaitableEvent) {.header: juce_core, importcpp: "#.reset()".}

type
  Thread* {.header: juce_core, importcpp: "juce::Thread".} = object
  ThreadListener* {.header: juce_core, importcpp: "juce::Thread::Listener".} = object

proc run*(this: var Thread) {.header: juce_core, importcpp: "#.run()".}
proc startThread*(this: var Thread) {.header: juce_core, importcpp: "#.startThread()".}
proc startThread*(this: var Thread, priority: int) {.header: juce_core, importcpp: "#.startThread(@)".}
proc stopThread*(this: var Thread, timeOutMilliseconds: int): bool {.header: juce_core, importcpp: "#.stopThread(@)".}
proc isThreadRunning*(this: Thread): bool {.header: juce_core, importcpp: "#.isThreadRunning()".}
proc signalThreadShouldExit*(this: var Thread) {.header: juce_core, importcpp: "#.signalThreadShouldExit()".}
proc threadShouldExit*(this: Thread): bool {.header: juce_core, importcpp: "#.threadShouldExit()".}
proc waitForThreadToExit*(this: Thread, timeOutMilliseconds: int): bool {.header: juce_core, importcpp: "#.waitForThreadToExit(@)".}
proc addListener*(this: var Thread, arg1: ptr ThreadListener) {.header: juce_core, importcpp: "#.addListener(@)".}
proc removeListener*(this: var Thread, arg1: ptr ThreadListener) {.header: juce_core, importcpp: "#.removeListener(@)".}
proc setPriority*(this: var Thread, priority: int): bool {.header: juce_core, importcpp: "#.setPriority(@)".}
proc setAffinityMask*(this: var Thread, affinityMask: uint32) {.header: juce_core, importcpp: "#.setAffinityMask(@)".}
proc wait*(this: Thread, timeOutMilliseconds: int): bool {.header: juce_core, importcpp: "#.wait(@)".}
proc notify*(this: Thread) {.header: juce_core, importcpp: "#.notify()".}
# proc getThreadId*(this: Thread): juce::Thread::ThreadID {.header: juce_core, importcpp: "#.getThreadId()".}
proc getThreadName*(this: Thread): String {.header: juce_core, importcpp: "#.getThreadName()".}

type
  ThreadPool* {.header: juce_core, importcpp: "juce::ThreadPool".} = object
  ThreadPoolJobSelector* {.header: juce_core, importcpp: "juce::ThreadPool::JobSelector".} = object


type
  ThreadPoolJob* {.header: juce_core, importcpp: "juce::ThreadPoolJob".} = object

proc getJobName*(this: ThreadPoolJob): String {.header: juce_core, importcpp: "#.getJobName()".}
proc setJobName*(this: var ThreadPoolJob, newName: String) {.header: juce_core, importcpp: "#.setJobName(@)".}
# proc runJob*(this: var ThreadPoolJob): juce::ThreadPoolJob::JobStatus {.header: juce_core, importcpp: "#.runJob()".}
proc isRunning*(this: ThreadPoolJob): bool {.header: juce_core, importcpp: "#.isRunning()".}
proc shouldExit*(this: ThreadPoolJob): bool {.header: juce_core, importcpp: "#.shouldExit()".}
proc signalJobShouldExit*(this: var ThreadPoolJob) {.header: juce_core, importcpp: "#.signalJobShouldExit()".}
# proc addListener*(this: var ThreadPoolJob, arg1: ptr Thread::Listener) {.header: juce_core, importcpp: "#.addListener(@)".}
# proc removeListener*(this: var ThreadPoolJob, arg1: ptr Thread::Listener) {.header: juce_core, importcpp: "#.removeListener(@)".}

proc addJob*(this: var ThreadPool, job: ptr ThreadPoolJob, deleteJobWhenFinished: bool) {.header: juce_core, importcpp: "#.addJob(@)".}
proc addJob*(this: var ThreadPool, job: int) {.header: juce_core, importcpp: "#.addJob(@)".}
# proc addJob*(this: var ThreadPool, job: int) {.header: juce_core, importcpp: "#.addJob(@)".}
proc removeJob*(this: var ThreadPool, job: ptr ThreadPoolJob, interruptIfRunning: bool, timeOutMilliseconds: int): bool {.header: juce_core, importcpp: "#.removeJob(@)".}
proc removeAllJobs*(this: var ThreadPool, interruptRunningJobs: bool, timeOutMilliseconds: int, selectedJobsToRemove: ptr ThreadPoolJobSelector = nil): bool {.header: juce_core, importcpp: "#.removeAllJobs(@)".}
proc getNumJobs*(this: ThreadPool): int {.header: juce_core, importcpp: "#.getNumJobs()".}
proc getNumThreads*(this: ThreadPool): int {.header: juce_core, importcpp: "#.getNumThreads()".}
proc getJob*(this: ThreadPool, index: int): ptr ThreadPoolJob {.header: juce_core, importcpp: "#.getJob(@)".}
proc contains*(this: ThreadPool, job: ptr ThreadPoolJob): bool {.header: juce_core, importcpp: "#.contains(@)".}
proc isJobRunning*(this: ThreadPool, job: ptr ThreadPoolJob): bool {.header: juce_core, importcpp: "#.isJobRunning(@)".}
proc waitForJobToFinish*(this: ThreadPool, job: ptr ThreadPoolJob, timeOutMilliseconds: int): bool {.header: juce_core, importcpp: "#.waitForJobToFinish(@)".}
proc moveJobToFront*(this: var ThreadPool, jobToMove: ptr ThreadPoolJob) {.header: juce_core, importcpp: "#.moveJobToFront(@)".}
proc getNamesOfAllJobs*(this: ThreadPool, onlyReturnActiveJobs: bool): StringArray {.header: juce_core, importcpp: "#.getNamesOfAllJobs(@)".}
proc setThreadPriorities*(this: var ThreadPool, newPriority: int): bool {.header: juce_core, importcpp: "#.setThreadPriorities(@)".}

type
  TimeSliceThread* {.header: juce_core, importcpp: "juce::TimeSliceThread".} = object


type
  TimeSliceClient* {.header: juce_core, importcpp: "juce::TimeSliceClient".} = object

proc useTimeSlice*(this: var TimeSliceClient): int {.header: juce_core, importcpp: "#.useTimeSlice()".}

proc addTimeSliceClient*(this: var TimeSliceThread, clientToAdd: ptr TimeSliceClient, millisecondsBeforeStarting: int = 0) {.header: juce_core, importcpp: "#.addTimeSliceClient(@)".}
proc moveToFrontOfQueue*(this: var TimeSliceThread, clientToMove: ptr TimeSliceClient) {.header: juce_core, importcpp: "#.moveToFrontOfQueue(@)".}
proc removeTimeSliceClient*(this: var TimeSliceThread, clientToRemove: ptr TimeSliceClient) {.header: juce_core, importcpp: "#.removeTimeSliceClient(@)".}
proc removeAllClients*(this: var TimeSliceThread) {.header: juce_core, importcpp: "#.removeAllClients()".}
proc getNumClients*(this: TimeSliceThread): int {.header: juce_core, importcpp: "#.getNumClients()".}
proc getClient*(this: TimeSliceThread, index: int): ptr TimeSliceClient {.header: juce_core, importcpp: "#.getClient(@)".}
proc run*(this: var TimeSliceThread) {.header: juce_core, importcpp: "#.run()".}

type
  ReadWriteLock* {.header: juce_core, importcpp: "juce::ReadWriteLock".} = object

proc enterRead*(this: ReadWriteLock) {.header: juce_core, importcpp: "#.enterRead()".}
proc tryEnterRead*(this: ReadWriteLock): bool {.header: juce_core, importcpp: "#.tryEnterRead()".}
proc exitRead*(this: ReadWriteLock) {.header: juce_core, importcpp: "#.exitRead()".}
proc enterWrite*(this: ReadWriteLock) {.header: juce_core, importcpp: "#.enterWrite()".}
proc tryEnterWrite*(this: ReadWriteLock): bool {.header: juce_core, importcpp: "#.tryEnterWrite()".}
proc exitWrite*(this: ReadWriteLock) {.header: juce_core, importcpp: "#.exitWrite()".}

type
  ScopedReadLock* {.header: juce_core, importcpp: "juce::ScopedReadLock".} = object


type
  ScopedWriteLock* {.header: juce_core, importcpp: "juce::ScopedWriteLock".} = object


type
  IPAddress* {.header: juce_core, importcpp: "juce::IPAddress".} = object

proc isNull*(this: IPAddress): bool {.header: juce_core, importcpp: "#.isNull()".}
proc toString*(this: IPAddress): String {.header: juce_core, importcpp: "#.toString()".}
proc compare*(this: IPAddress, arg1: IPAddress): int {.header: juce_core, importcpp: "#.compare(@)".}
proc `IPAddress==`*(this: IPAddress, arg1: IPAddress): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `IPAddress!=`*(this: IPAddress, arg1: IPAddress): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc `IPAddress<`*(this: IPAddress, arg1: IPAddress): bool {.header: juce_core, importcpp: "#.operator<(@)".}
proc `IPAddress>`*(this: IPAddress, arg1: IPAddress): bool {.header: juce_core, importcpp: "#.operator>(@)".}
proc `IPAddress<=`*(this: IPAddress, arg1: IPAddress): bool {.header: juce_core, importcpp: "#.operator<=(@)".}
proc `IPAddress>=`*(this: IPAddress, arg1: IPAddress): bool {.header: juce_core, importcpp: "#.operator>=(@)".}

type
  MACAddress* {.header: juce_core, importcpp: "juce::MACAddress".} = object

proc `MACAddress=`*(this: var MACAddress, arg1: MACAddress): var MACAddress {.header: juce_core, importcpp: "#.operator=(@)".}
proc getBytes*(this: MACAddress): ptr uint8 {.header: juce_core, importcpp: "#.getBytes()".}
proc toString*(this: MACAddress): String {.header: juce_core, importcpp: "#.toString()".}
proc toString*(this: MACAddress, separator: StringRef): String {.header: juce_core, importcpp: "#.toString(@)".}
proc toInt64*(this: MACAddress): int64 {.header: juce_core, importcpp: "#.toInt64()".}
proc isNull*(this: MACAddress): bool {.header: juce_core, importcpp: "#.isNull()".}
proc `MACAddress==`*(this: MACAddress, arg1: MACAddress): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `MACAddress!=`*(this: MACAddress, arg1: MACAddress): bool {.header: juce_core, importcpp: "#.operator!=(@)".}

type
  NamedPipe* {.header: juce_core, importcpp: "juce::NamedPipe".} = object

proc openExisting*(this: var NamedPipe, pipeName: String): bool {.header: juce_core, importcpp: "#.openExisting(@)".}
proc createNewPipe*(this: var NamedPipe, pipeName: String, mustNotExist: bool = false): bool {.header: juce_core, importcpp: "#.createNewPipe(@)".}
proc close*(this: var NamedPipe) {.header: juce_core, importcpp: "#.close()".}
proc isOpen*(this: NamedPipe): bool {.header: juce_core, importcpp: "#.isOpen()".}
proc getName*(this: NamedPipe): String {.header: juce_core, importcpp: "#.getName()".}
proc read*(this: var NamedPipe, destBuffer: pointer, maxBytesToRead: int, timeOutMilliseconds: int): int {.header: juce_core, importcpp: "#.read(@)".}
proc write*(this: var NamedPipe, sourceBuffer: constPointer, numBytesToWrite: int, timeOutMilliseconds: int): int {.header: juce_core, importcpp: "#.write(@)".}

type
  StreamingSocket* {.header: juce_core, importcpp: "juce::StreamingSocket".} = object

proc bindToPort*(this: var StreamingSocket, localPortNumber: int): bool {.header: juce_core, importcpp: "#.bindToPort(@)".}
proc bindToPort*(this: var StreamingSocket, localPortNumber: int, localAddress: String): bool {.header: juce_core, importcpp: "#.bindToPort(@)".}
proc getBoundPort*(this: StreamingSocket): int {.header: juce_core, importcpp: "#.getBoundPort()".}
proc connect*(this: var StreamingSocket, remoteHostname: String, remotePortNumber: int, timeOutMillisecs: int = 3000): bool {.header: juce_core, importcpp: "#.connect(@)".}
proc isConnected*(this: StreamingSocket): bool {.header: juce_core, importcpp: "#.isConnected()".}
proc close*(this: var StreamingSocket) {.header: juce_core, importcpp: "#.close()".}
proc getHostName*(this: StreamingSocket): String {.header: juce_core, importcpp: "#.getHostName()".}
proc getPort*(this: StreamingSocket): int {.header: juce_core, importcpp: "#.getPort()".}
proc isLocal*(this: StreamingSocket): bool {.header: juce_core, importcpp: "#.isLocal()".}
proc getRawSocketHandle*(this: StreamingSocket): int {.header: juce_core, importcpp: "#.getRawSocketHandle()".}
proc waitUntilReady*(this: var StreamingSocket, readyForReading: bool, timeoutMsecs: int): int {.header: juce_core, importcpp: "#.waitUntilReady(@)".}
proc read*(this: var StreamingSocket, destBuffer: pointer, maxBytesToRead: int, blockUntilSpecifiedAmountHasArrived: bool): int {.header: juce_core, importcpp: "#.read(@)".}
proc write*(this: var StreamingSocket, sourceBuffer: constPointer, numBytesToWrite: int): int {.header: juce_core, importcpp: "#.write(@)".}
proc createListener*(this: var StreamingSocket, portNumber: int, localHostName: String = String()): bool {.header: juce_core, importcpp: "#.createListener(@)".}
proc waitForNextConnection*(this: StreamingSocket): ptr StreamingSocket {.header: juce_core, importcpp: "#.waitForNextConnection()".}

type
  DatagramSocket* {.header: juce_core, importcpp: "juce::DatagramSocket".} = object

proc bindToPort*(this: var DatagramSocket, localPortNumber: int): bool {.header: juce_core, importcpp: "#.bindToPort(@)".}
proc bindToPort*(this: var DatagramSocket, localPortNumber: int, localAddress: String): bool {.header: juce_core, importcpp: "#.bindToPort(@)".}
proc getBoundPort*(this: DatagramSocket): int {.header: juce_core, importcpp: "#.getBoundPort()".}
proc getRawSocketHandle*(this: DatagramSocket): int {.header: juce_core, importcpp: "#.getRawSocketHandle()".}
proc waitUntilReady*(this: var DatagramSocket, readyForReading: bool, timeoutMsecs: int): int {.header: juce_core, importcpp: "#.waitUntilReady(@)".}
proc read*(this: var DatagramSocket, destBuffer: pointer, maxBytesToRead: int, blockUntilSpecifiedAmountHasArrived: bool): int {.header: juce_core, importcpp: "#.read(@)".}
proc read*(this: var DatagramSocket, destBuffer: pointer, maxBytesToRead: int, blockUntilSpecifiedAmountHasArrived: bool, senderIPAddress: var String, senderPortNumber: var int): int {.header: juce_core, importcpp: "#.read(@)".}
proc write*(this: var DatagramSocket, remoteHostname: String, remotePortNumber: int, sourceBuffer: constPointer, numBytesToWrite: int): int {.header: juce_core, importcpp: "#.write(@)".}
proc shutdown*(this: var DatagramSocket) {.header: juce_core, importcpp: "#.shutdown()".}
proc joinMulticast*(this: var DatagramSocket, multicastIPAddress: String): bool {.header: juce_core, importcpp: "#.joinMulticast(@)".}
proc leaveMulticast*(this: var DatagramSocket, multicastIPAddress: String): bool {.header: juce_core, importcpp: "#.leaveMulticast(@)".}
proc setMulticastLoopbackEnabled*(this: var DatagramSocket, enableLoopback: bool): bool {.header: juce_core, importcpp: "#.setMulticastLoopbackEnabled(@)".}
proc setEnablePortReuse*(this: var DatagramSocket, enabled: bool): bool {.header: juce_core, importcpp: "#.setEnablePortReuse(@)".}

type
  WebInputStream* {.header: juce_core, importcpp: "juce::WebInputStream".} = object
  WebInputStreamListener* {.header: juce_core, importcpp: "juce::WebInputStream::Listener".} = object


type
  URL* {.header: juce_core, importcpp: "juce::URL".} = object
  URLInputStreamOptions* {.header: juce_core, importcpp: "juce::URL::InputStreamOptions".} = object
  URLDownloadTask* {.header: juce_core, importcpp: "juce::URL::DownloadTask".} = object
  URLUpload* {.header: juce_core, importcpp: "juce::URL::Upload".} = object

proc `URL==`*(this: URL, arg1: URL): bool {.header: juce_core, importcpp: "#.operator==(@)".}
proc `URL!=`*(this: URL, arg1: URL): bool {.header: juce_core, importcpp: "#.operator!=(@)".}
proc toString*(this: URL, includeGetParameters: bool): String {.header: juce_core, importcpp: "#.toString(@)".}
proc isEmpty*(this: URL): bool {.header: juce_core, importcpp: "#.isEmpty()".}
proc isWellFormed*(this: URL): bool {.header: juce_core, importcpp: "#.isWellFormed()".}
proc getDomain*(this: URL): String {.header: juce_core, importcpp: "#.getDomain()".}
proc getSubPath*(this: URL, includeGetParameters: bool = false): String {.header: juce_core, importcpp: "#.getSubPath(@)".}
proc getQueryString*(this: URL): String {.header: juce_core, importcpp: "#.getQueryString()".}
proc getScheme*(this: URL): String {.header: juce_core, importcpp: "#.getScheme()".}
proc isLocalFile*(this: URL): bool {.header: juce_core, importcpp: "#.isLocalFile()".}
proc getLocalFile*(this: URL): File {.header: juce_core, importcpp: "#.getLocalFile()".}
proc getFileName*(this: URL): String {.header: juce_core, importcpp: "#.getFileName()".}
proc getPort*(this: URL): int {.header: juce_core, importcpp: "#.getPort()".}
proc withNewDomainAndPath*(this: URL, newFullPath: String): URL {.header: juce_core, importcpp: "#.withNewDomainAndPath(@)".}
proc withNewSubPath*(this: URL, newPath: String): URL {.header: juce_core, importcpp: "#.withNewSubPath(@)".}
proc getParentURL*(this: URL): URL {.header: juce_core, importcpp: "#.getParentURL()".}
proc getChildURL*(this: URL, subPath: String): URL {.header: juce_core, importcpp: "#.getChildURL(@)".}
proc withParameter*(this: URL, parameterName: String, parameterValue: String): URL {.header: juce_core, importcpp: "#.withParameter(@)".}
proc withParameters*(this: URL, parametersToAdd: StringPairArray): URL {.header: juce_core, importcpp: "#.withParameters(@)".}
proc withFileToUpload*(this: URL, parameterName: String, fileToUpload: File, mimeType: String): URL {.header: juce_core, importcpp: "#.withFileToUpload(@)".}
proc withDataToUpload*(this: URL, parameterName: String, filename: String, fileContentToUpload: MemoryBlock, mimeType: String): URL {.header: juce_core, importcpp: "#.withDataToUpload(@)".}
proc getParameterNames*(this: URL): StringArray {.header: juce_core, importcpp: "#.getParameterNames()".}
proc getParameterValues*(this: URL): StringArray {.header: juce_core, importcpp: "#.getParameterValues()".}
proc withPOSTData*(this: URL, postData: String): URL {.header: juce_core, importcpp: "#.withPOSTData(@)".}
proc withPOSTData*(this: URL, postData: MemoryBlock): URL {.header: juce_core, importcpp: "#.withPOSTData(@)".}
proc getPostData*(this: URL): String {.header: juce_core, importcpp: "#.getPostData()".}
proc getPostDataAsMemoryBlock*(this: URL): MemoryBlock {.header: juce_core, importcpp: "#.getPostDataAsMemoryBlock()".}
proc launchInDefaultBrowser*(this: URL): bool {.header: juce_core, importcpp: "#.launchInDefaultBrowser()".}
proc createInputStream*(this: URL, options: URLInputStreamOptions): int {.header: juce_core, importcpp: "#.createInputStream(@)".}
proc createOutputStream*(this: URL): int {.header: juce_core, importcpp: "#.createOutputStream()".}
# proc downloadToFile*(this: var URL, targetLocation: File, extraHeaders: String = String(), listener: ptr DownloadTask::Listener = nil, usePostCommand: bool = false): int {.header: juce_core, importcpp: "#.downloadToFile(@)".}
proc readEntireBinaryStream*(this: URL, destData: var MemoryBlock, usePostCommand: bool = false): bool {.header: juce_core, importcpp: "#.readEntireBinaryStream(@)".}
proc readEntireTextStream*(this: URL, usePostCommand: bool = false): String {.header: juce_core, importcpp: "#.readEntireTextStream(@)".}
proc readEntireXmlStream*(this: URL, usePostCommand: bool = false): int {.header: juce_core, importcpp: "#.readEntireXmlStream(@)".}
# proc createInputStream*(this: URL, doPostLikeRequest: bool, progressCallback: ptr juce::URL::OpenStreamProgressCallback = nil, progressCallbackContext: pointer = nil, extraHeaders: String = {}, connectionTimeOutMs: int = 0, responseHeaders: ptr StringPairArray = nil, statusCode: ptr int = nil, numRedirectsToFollow: int = 5, httpRequestCmd: String = {}): int {.header: juce_core, importcpp: "#.createInputStream(@)".}

proc withExtraHeaders*(this: var WebInputStream, extraHeaders: String): var WebInputStream {.header: juce_core, importcpp: "#.withExtraHeaders(@)".}
proc withCustomRequestCommand*(this: var WebInputStream, customRequestCommand: String): var WebInputStream {.header: juce_core, importcpp: "#.withCustomRequestCommand(@)".}
proc withConnectionTimeout*(this: var WebInputStream, timeoutInMs: int): var WebInputStream {.header: juce_core, importcpp: "#.withConnectionTimeout(@)".}
proc withNumRedirectsToFollow*(this: var WebInputStream, numRedirects: int): var WebInputStream {.header: juce_core, importcpp: "#.withNumRedirectsToFollow(@)".}
proc connect*(this: var WebInputStream, listener: ptr WebInputStreamListener): bool {.header: juce_core, importcpp: "#.connect(@)".}
proc isError*(this: WebInputStream): bool {.header: juce_core, importcpp: "#.isError()".}
proc cancel*(this: var WebInputStream) {.header: juce_core, importcpp: "#.cancel()".}
proc getRequestHeaders*(this: WebInputStream): StringPairArray {.header: juce_core, importcpp: "#.getRequestHeaders()".}
proc getResponseHeaders*(this: var WebInputStream): StringPairArray {.header: juce_core, importcpp: "#.getResponseHeaders()".}
proc getStatusCode*(this: var WebInputStream): int {.header: juce_core, importcpp: "#.getStatusCode()".}
proc getTotalLength*(this: var WebInputStream): int64 {.header: juce_core, importcpp: "#.getTotalLength()".}
proc read*(this: var WebInputStream, destBuffer: pointer, maxBytesToRead: int): int {.header: juce_core, importcpp: "#.read(@)".}
proc isExhausted*(this: var WebInputStream): bool {.header: juce_core, importcpp: "#.isExhausted()".}
proc getPosition*(this: var WebInputStream): int64 {.header: juce_core, importcpp: "#.getPosition()".}
proc setPosition*(this: var WebInputStream, wantedPos: int64): bool {.header: juce_core, importcpp: "#.setPosition(@)".}

type
  URLInputSource* {.header: juce_core, importcpp: "juce::URLInputSource".} = object

proc createInputStream*(this: var URLInputSource): ptr InputStream {.header: juce_core, importcpp: "#.createInputStream()".}
proc createInputStreamFor*(this: var URLInputSource, relatedItemPath: String): ptr InputStream {.header: juce_core, importcpp: "#.createInputStreamFor(@)".}
proc hashCode*(this: URLInputSource): int64 {.header: juce_core, importcpp: "#.hashCode()".}

type
  PerformanceCounter* {.header: juce_core, importcpp: "juce::PerformanceCounter".} = object
  PerformanceCounterStatistics* {.header: juce_core, importcpp: "juce::PerformanceCounter::Statistics".} = object

proc start*(this: var PerformanceCounter) {.header: juce_core, importcpp: "#.start()".}
proc stop*(this: var PerformanceCounter): bool {.header: juce_core, importcpp: "#.stop()".}
proc printStatistics*(this: var PerformanceCounter) {.header: juce_core, importcpp: "#.printStatistics()".}
proc getStatisticsAndReset*(this: var PerformanceCounter): PerformanceCounterStatistics {.header: juce_core, importcpp: "#.getStatisticsAndReset()".}

type
  ScopedTimeMeasurement* {.header: juce_core, importcpp: "juce::ScopedTimeMeasurement".} = object


type
  UnitTestRunner* {.header: juce_core, importcpp: "juce::UnitTestRunner".} = object
  UnitTestRunnerTestResult* {.header: juce_core, importcpp: "juce::UnitTestRunner::TestResult".} = object


type
  UnitTest* {.header: juce_core, importcpp: "juce::UnitTest".} = object

proc getName*(this: UnitTest): String {.header: juce_core, importcpp: "#.getName()".}
proc getCategory*(this: UnitTest): String {.header: juce_core, importcpp: "#.getCategory()".}
proc performTest*(this: var UnitTest, runner: ptr UnitTestRunner) {.header: juce_core, importcpp: "#.performTest(@)".}
proc initialise*(this: var UnitTest) {.header: juce_core, importcpp: "#.initialise()".}
proc shutdown*(this: var UnitTest) {.header: juce_core, importcpp: "#.shutdown()".}
proc runTest*(this: var UnitTest) {.header: juce_core, importcpp: "#.runTest()".}
proc beginTest*(this: var UnitTest, testName: String) {.header: juce_core, importcpp: "#.beginTest(@)".}
proc expect*(this: var UnitTest, testResult: bool, failureMessage: String = String()) {.header: juce_core, importcpp: "#.expect(@)".}
proc logMessage*(this: var UnitTest, message: String) {.header: juce_core, importcpp: "#.logMessage(@)".}
proc getRandom*(this: UnitTest): Random {.header: juce_core, importcpp: "#.getRandom()".}

proc runTests*(this: var UnitTestRunner, tests: int, randomSeed: int64 = 0) {.header: juce_core, importcpp: "#.runTests(@)".}
proc runAllTests*(this: var UnitTestRunner, randomSeed: int64 = 0) {.header: juce_core, importcpp: "#.runAllTests(@)".}
proc runTestsInCategory*(this: var UnitTestRunner, category: String, randomSeed: int64 = 0) {.header: juce_core, importcpp: "#.runTestsInCategory(@)".}
proc setAssertOnFailure*(this: var UnitTestRunner, shouldAssert: bool) {.header: juce_core, importcpp: "#.setAssertOnFailure(@)".}
proc setPassesAreLogged*(this: var UnitTestRunner, shouldDisplayPasses: bool) {.header: juce_core, importcpp: "#.setPassesAreLogged(@)".}
proc getNumResults*(this: UnitTestRunner): int {.header: juce_core, importcpp: "#.getNumResults()".}
proc getResult*(this: UnitTestRunner, index: int): ptr UnitTestRunnerTestResult {.header: juce_core, importcpp: "#.getResult(@)".}

type
  XmlDocument* {.header: juce_core, importcpp: "juce::XmlDocument".} = object

proc getDocumentElement*(this: var XmlDocument, onlyReadOuterDocumentElement: bool = false): int {.header: juce_core, importcpp: "#.getDocumentElement(@)".}
proc getDocumentElementIfTagMatches*(this: var XmlDocument, requiredTag: StringRef): int {.header: juce_core, importcpp: "#.getDocumentElementIfTagMatches(@)".}
proc getLastParseError*(this: XmlDocument): String {.header: juce_core, importcpp: "#.getLastParseError()".}
proc setInputSource*(this: var XmlDocument, newSource: ptr InputSource) {.header: juce_core, importcpp: "#.setInputSource(@)".}
proc setEmptyTextElementsIgnored*(this: var XmlDocument, shouldBeIgnored: bool) {.header: juce_core, importcpp: "#.setEmptyTextElementsIgnored(@)".}

proc `XmlElement=`*(this: var XmlElement, arg1: XmlElement): var XmlElement {.header: juce_core, importcpp: "#.operator=(@)".}
proc `XmlElement=`*(this: var XmlElement, arg1: lent XmlElement): var XmlElement {.header: juce_core, importcpp: "#.operator=(@)".}
proc isEquivalentTo*(this: XmlElement, other: ptr XmlElement, ignoreOrderOfAttributes: bool): bool {.header: juce_core, importcpp: "#.isEquivalentTo(@)".}
# proc toString*(this: XmlElement, format: XmlElementTextFormat = {}): String {.header: juce_core, importcpp: "#.toString(@)".}
# proc writeTo*(this: XmlElement, output: var OutputStream, format: XmlElementTextFormat = {}) {.header: juce_core, importcpp: "#.writeTo(@)".}
# proc writeTo*(this: XmlElement, destinationFile: File, format: XmlElementTextFormat = {}): bool {.header: juce_core, importcpp: "#.writeTo(@)".}
proc getTagName*(this: XmlElement): String {.header: juce_core, importcpp: "#.getTagName()".}
proc getNamespace*(this: XmlElement): String {.header: juce_core, importcpp: "#.getNamespace()".}
proc getTagNameWithoutNamespace*(this: XmlElement): String {.header: juce_core, importcpp: "#.getTagNameWithoutNamespace()".}
proc hasTagName*(this: XmlElement, possibleTagName: StringRef): bool {.header: juce_core, importcpp: "#.hasTagName(@)".}
proc hasTagNameIgnoringNamespace*(this: XmlElement, possibleTagName: StringRef): bool {.header: juce_core, importcpp: "#.hasTagNameIgnoringNamespace(@)".}
proc setTagName*(this: var XmlElement, newTagName: StringRef) {.header: juce_core, importcpp: "#.setTagName(@)".}
proc getNumAttributes*(this: XmlElement): int {.header: juce_core, importcpp: "#.getNumAttributes()".}
proc getAttributeName*(this: XmlElement, attributeIndex: int): String {.header: juce_core, importcpp: "#.getAttributeName(@)".}
proc getAttributeValue*(this: XmlElement, attributeIndex: int): String {.header: juce_core, importcpp: "#.getAttributeValue(@)".}
proc hasAttribute*(this: XmlElement, attributeName: StringRef): bool {.header: juce_core, importcpp: "#.hasAttribute(@)".}
proc getStringAttribute*(this: XmlElement, attributeName: StringRef): String {.header: juce_core, importcpp: "#.getStringAttribute(@)".}
proc getStringAttribute*(this: XmlElement, attributeName: StringRef, defaultReturnValue: String): String {.header: juce_core, importcpp: "#.getStringAttribute(@)".}
proc compareAttribute*(this: XmlElement, attributeName: StringRef, stringToCompareAgainst: StringRef, ignoreCase: bool = false): bool {.header: juce_core, importcpp: "#.compareAttribute(@)".}
proc getIntAttribute*(this: XmlElement, attributeName: StringRef, defaultReturnValue: int = 0): int {.header: juce_core, importcpp: "#.getIntAttribute(@)".}
proc getDoubleAttribute*(this: XmlElement, attributeName: StringRef, defaultReturnValue: float64 = 0.0): float64 {.header: juce_core, importcpp: "#.getDoubleAttribute(@)".}
proc getBoolAttribute*(this: XmlElement, attributeName: StringRef, defaultReturnValue: bool = false): bool {.header: juce_core, importcpp: "#.getBoolAttribute(@)".}
proc setAttribute*(this: var XmlElement, attributeName: Identifier, newValue: String) {.header: juce_core, importcpp: "#.setAttribute(@)".}
proc setAttribute*(this: var XmlElement, attributeName: Identifier, newValue: int) {.header: juce_core, importcpp: "#.setAttribute(@)".}
proc setAttribute*(this: var XmlElement, attributeName: Identifier, newValue: float64) {.header: juce_core, importcpp: "#.setAttribute(@)".}
proc removeAttribute*(this: var XmlElement, attributeName: Identifier) {.header: juce_core, importcpp: "#.removeAttribute(@)".}
proc removeAllAttributes*(this: var XmlElement) {.header: juce_core, importcpp: "#.removeAllAttributes()".}
proc getFirstChildElement*(this: XmlElement): ptr XmlElement {.header: juce_core, importcpp: "#.getFirstChildElement()".}
proc getNextElement*(this: XmlElement): ptr XmlElement {.header: juce_core, importcpp: "#.getNextElement()".}
proc getNextElementWithTagName*(this: XmlElement, requiredTagName: StringRef): ptr XmlElement {.header: juce_core, importcpp: "#.getNextElementWithTagName(@)".}
proc getNumChildElements*(this: XmlElement): int {.header: juce_core, importcpp: "#.getNumChildElements()".}
proc getChildElement*(this: XmlElement, index: int): ptr XmlElement {.header: juce_core, importcpp: "#.getChildElement(@)".}
proc getChildByName*(this: XmlElement, tagNameToLookFor: StringRef): ptr XmlElement {.header: juce_core, importcpp: "#.getChildByName(@)".}
proc getChildByAttribute*(this: XmlElement, attributeName: StringRef, attributeValue: StringRef): ptr XmlElement {.header: juce_core, importcpp: "#.getChildByAttribute(@)".}
proc addChildElement*(this: var XmlElement, newChildElement: ptr XmlElement) {.header: juce_core, importcpp: "#.addChildElement(@)".}
proc insertChildElement*(this: var XmlElement, newChildElement: ptr XmlElement, indexToInsertAt: int) {.header: juce_core, importcpp: "#.insertChildElement(@)".}
proc prependChildElement*(this: var XmlElement, newChildElement: ptr XmlElement) {.header: juce_core, importcpp: "#.prependChildElement(@)".}
proc createNewChildElement*(this: var XmlElement, tagName: StringRef): ptr XmlElement {.header: juce_core, importcpp: "#.createNewChildElement(@)".}
proc replaceChildElement*(this: var XmlElement, currentChildElement: ptr XmlElement, newChildNode: ptr XmlElement): bool {.header: juce_core, importcpp: "#.replaceChildElement(@)".}
proc removeChildElement*(this: var XmlElement, childToRemove: ptr XmlElement, shouldDeleteTheChild: bool) {.header: juce_core, importcpp: "#.removeChildElement(@)".}
proc deleteAllChildElements*(this: var XmlElement) {.header: juce_core, importcpp: "#.deleteAllChildElements()".}
proc deleteAllChildElementsWithTagName*(this: var XmlElement, tagName: StringRef) {.header: juce_core, importcpp: "#.deleteAllChildElementsWithTagName(@)".}
proc containsChildElement*(this: XmlElement, possibleChild: ptr XmlElement): bool {.header: juce_core, importcpp: "#.containsChildElement(@)".}
proc findParentElementOf*(this: var XmlElement, childToSearchFor: ptr XmlElement): ptr XmlElement {.header: juce_core, importcpp: "#.findParentElementOf(@)".}
proc isTextElement*(this: XmlElement): bool {.header: juce_core, importcpp: "#.isTextElement()".}
proc getText*(this: XmlElement): String {.header: juce_core, importcpp: "#.getText()".}
proc setText*(this: var XmlElement, newText: String) {.header: juce_core, importcpp: "#.setText(@)".}
proc getAllSubText*(this: XmlElement): String {.header: juce_core, importcpp: "#.getAllSubText()".}
proc getChildElementAllSubText*(this: XmlElement, childTagName: StringRef, defaultReturnValue: String): String {.header: juce_core, importcpp: "#.getChildElementAllSubText(@)".}
proc addTextElement*(this: var XmlElement, text: String) {.header: juce_core, importcpp: "#.addTextElement(@)".}
proc deleteAllTextElements*(this: var XmlElement) {.header: juce_core, importcpp: "#.deleteAllTextElements()".}
# proc getChildIterator*(this: XmlElement): Iterator<juce::XmlElement::GetNextElement> {.header: juce_core, importcpp: "#.getChildIterator()".}
# proc getChildWithTagNameIterator*(this: XmlElement, name: StringRef): Iterator<juce::XmlElement::GetNextElementWithTagName> {.header: juce_core, importcpp: "#.getChildWithTagNameIterator(@)".}
proc macroBasedForLoop*(this: XmlElement) {.header: juce_core, importcpp: "#.macroBasedForLoop()".}
proc createDocument*(this: XmlElement, dtdToUse: StringRef, allOnOneLine: bool = false, includeXmlHeader: bool = true, encodingType: StringRef, lineWrapLength: int = 60): String {.header: juce_core, importcpp: "#.createDocument(@)".}
proc writeToStream*(this: XmlElement, output: var OutputStream, dtdToUse: StringRef, allOnOneLine: bool = false, includeXmlHeader: bool = true, encodingType: StringRef, lineWrapLength: int = 60) {.header: juce_core, importcpp: "#.writeToStream(@)".}
proc writeToFile*(this: XmlElement, destinationFile: File, dtdToUse: StringRef, encodingType: StringRef, lineWrapLength: int = 60): bool {.header: juce_core, importcpp: "#.writeToFile(@)".}

type
  GZIPCompressorOutputStream* {.header: juce_core, importcpp: "juce::GZIPCompressorOutputStream".} = object

proc flush*(this: var GZIPCompressorOutputStream) {.header: juce_core, importcpp: "#.flush()".}
proc getPosition*(this: var GZIPCompressorOutputStream): int64 {.header: juce_core, importcpp: "#.getPosition()".}
proc setPosition*(this: var GZIPCompressorOutputStream, arg1: int64): bool {.header: juce_core, importcpp: "#.setPosition(@)".}
proc write*(this: var GZIPCompressorOutputStream, arg1: constPointer, arg2: int): bool {.header: juce_core, importcpp: "#.write(@)".}

type
  GZIPDecompressorInputStream* {.header: juce_core, importcpp: "juce::GZIPDecompressorInputStream".} = object

proc getPosition*(this: var GZIPDecompressorInputStream): int64 {.header: juce_core, importcpp: "#.getPosition()".}
proc setPosition*(this: var GZIPDecompressorInputStream, pos: int64): bool {.header: juce_core, importcpp: "#.setPosition(@)".}
proc getTotalLength*(this: var GZIPDecompressorInputStream): int64 {.header: juce_core, importcpp: "#.getTotalLength()".}
proc isExhausted*(this: var GZIPDecompressorInputStream): bool {.header: juce_core, importcpp: "#.isExhausted()".}
proc read*(this: var GZIPDecompressorInputStream, destBuffer: pointer, maxBytesToRead: int): int {.header: juce_core, importcpp: "#.read(@)".}

type
  ZipFile* {.header: juce_core, importcpp: "juce::ZipFile".} = object
  ZipFileZipEntry* {.header: juce_core, importcpp: "juce::ZipFile::ZipEntry".} = object
  ZipFileBuilder* {.header: juce_core, importcpp: "juce::ZipFile::Builder".} = object

proc getNumEntries*(this: ZipFile): int {.header: juce_core, importcpp: "#.getNumEntries()".}
proc getEntry*(this: ZipFile, index: int): ptr ZipFileZipEntry {.header: juce_core, importcpp: "#.getEntry(@)".}
proc getIndexOfFileName*(this: ZipFile, fileName: String, ignoreCase: bool = false): int {.header: juce_core, importcpp: "#.getIndexOfFileName(@)".}
proc getEntry*(this: ZipFile, fileName: String, ignoreCase: bool = false): ptr ZipFileZipEntry {.header: juce_core, importcpp: "#.getEntry(@)".}
proc sortEntriesByFilename*(this: var ZipFile) {.header: juce_core, importcpp: "#.sortEntriesByFilename()".}
proc createStreamForEntry*(this: var ZipFile, index: int): ptr InputStream {.header: juce_core, importcpp: "#.createStreamForEntry(@)".}
proc createStreamForEntry*(this: var ZipFile, entry: ZipFileZipEntry): ptr InputStream {.header: juce_core, importcpp: "#.createStreamForEntry(@)".}
proc uncompressTo*(this: var ZipFile, targetDirectory: File, shouldOverwriteFiles: bool = true): Result {.header: juce_core, importcpp: "#.uncompressTo(@)".}
proc uncompressEntry*(this: var ZipFile, index: int, targetDirectory: File, shouldOverwriteFiles: bool = true): Result {.header: juce_core, importcpp: "#.uncompressEntry(@)".}

type
  PropertySet* {.header: juce_core, importcpp: "juce::PropertySet".} = object

proc `PropertySet=`*(this: var PropertySet, other: PropertySet): var PropertySet {.header: juce_core, importcpp: "#.operator=(@)".}
proc getValue*(this: PropertySet, keyName: StringRef, defaultReturnValue: String = String()): String {.header: juce_core, importcpp: "#.getValue(@)".}
proc getIntValue*(this: PropertySet, keyName: StringRef, defaultReturnValue: int = 0): int {.header: juce_core, importcpp: "#.getIntValue(@)".}
proc getDoubleValue*(this: PropertySet, keyName: StringRef, defaultReturnValue: float64 = 0.0): float64 {.header: juce_core, importcpp: "#.getDoubleValue(@)".}
proc getBoolValue*(this: PropertySet, keyName: StringRef, defaultReturnValue: bool = false): bool {.header: juce_core, importcpp: "#.getBoolValue(@)".}
proc getXmlValue*(this: PropertySet, keyName: StringRef): int {.header: juce_core, importcpp: "#.getXmlValue(@)".}
proc setValue*(this: var PropertySet, keyName: StringRef, value: juce_var) {.header: juce_core, importcpp: "#.setValue(@)".}
proc setValue*(this: var PropertySet, keyName: StringRef, xml: ptr XmlElement) {.header: juce_core, importcpp: "#.setValue(@)".}
proc addAllPropertiesFrom*(this: var PropertySet, source: PropertySet) {.header: juce_core, importcpp: "#.addAllPropertiesFrom(@)".}
proc removeValue*(this: var PropertySet, keyName: StringRef) {.header: juce_core, importcpp: "#.removeValue(@)".}
proc containsKey*(this: PropertySet, keyName: StringRef): bool {.header: juce_core, importcpp: "#.containsKey(@)".}
proc clear*(this: var PropertySet) {.header: juce_core, importcpp: "#.clear()".}
proc getAllProperties*(this: var PropertySet): var StringPairArray {.header: juce_core, importcpp: "#.getAllProperties()".}
proc getLock*(this: PropertySet): CriticalSection {.header: juce_core, importcpp: "#.getLock()".}
proc createXml*(this: PropertySet, nodeName: String): int {.header: juce_core, importcpp: "#.createXml(@)".}
proc restoreFromXml*(this: var PropertySet, xml: XmlElement) {.header: juce_core, importcpp: "#.restoreFromXml(@)".}
proc setFallbackPropertySet*(this: var PropertySet, fallbackProperties: ptr PropertySet) {.header: juce_core, importcpp: "#.setFallbackPropertySet(@)".}
proc getFallbackPropertySet*(this: PropertySet): ptr PropertySet {.header: juce_core, importcpp: "#.getFallbackPropertySet()".}

include juce_core_lifting
