# June
# Copyright (c) 2022 Lucio Asnaghi
# Licensed and distributed under either of
#   * MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
# at your option. This file may not be copied, modified, or distributed except according to those terms.

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

# Range
type
    Range*[T] {.header: juce_core, importcpp: "juce::Range".} = object

proc makeRange*[T](): Range[T] {.header: juce_core, importcpp: "juce::Range<'*0>()", constructor.}
proc makeRange*[T](startValue: T, endValue: T): Range[T] {.header: juce_core, importcpp: "juce::Range<'*0>(@)", constructor.}
proc makeRange*[T](other: Range[T]): Range[T] {.header: juce_core, importcpp: "juce::Range<'*0>(@)", constructor.}

proc between*[T](this: typedesc[Range[T]], position1: T, position2: T): Range[T] {.header: juce_core, importcpp: "juce::Range<'*0>::between(@)".}
proc withStartAndLength*[T](this: typedesc[Range[T]], startValue: T, length: T): Range[T] {.header: juce_core, importcpp: "juce::Range<'*0>::withStartAndLength(@)".}
proc emptyRange*[T](this: typedesc[Range[T]], start: T): Range[T] {.header: juce_core, importcpp: "juce::Range<'*0>::emptyRange(@)".}
proc findMinAndMax*[T](this: typedesc[Range[T]], values: ptr T, numValues: cint): Range[T] {.header: juce_core, importcpp: "juce::Range<'*0>::findMinAndMax(@)".}

proc getStart*[T](this: Range[T]): T {.header: juce_core, importcpp: "#.getStart(@)".}
proc getLength*[T](this: Range[T]): T {.header: juce_core, importcpp: "#.getLength(@)".}
proc getEnd*[T](this: Range[T]): T {.header: juce_core, importcpp: "#.getEnd(@)".}
proc isEmpty*[T](this: Range[T]): bool {.header: juce_core, importcpp: "#.isEmpty()".}
proc setStart*[T](this: Range[T], newStart: T) {.header: juce_core, importcpp: "#.setStart(@)".}
proc withStart*[T](this: Range[T], newStart: T): Range[T] {.header: juce_core, importcpp: "#.withStart(@)".}
proc movedToStartAt*[T](this: Range[T], newStart: T): Range[T] {.header: juce_core, importcpp: "#.movedToStartAt(@)".}
proc setEnd*[T](this: Range[T], newEnd: T) {.header: juce_core, importcpp: "#.setEnd(@)".}
proc withEnd*[T](this: Range[T], newEnd: T): Range[T] {.header: juce_core, importcpp: "#.withEnd(@)".}
proc movedToEndAt*[T](this: Range[T], newEnd: T): Range[T] {.header: juce_core, importcpp: "#.movedToEndAt(@)".}
proc setLength*[T](this: Range[T], newLength: T) {.header: juce_core, importcpp: "#.setLength(@)".}
proc withLength*[T](this: Range[T], newLength: T): Range[T] {.header: juce_core, importcpp: "#.withLength(@)".}
proc expanded*[T](this: Range[T], amount: T): Range[T] {.header: juce_core, importcpp: "#.expanded(@)".}
proc contains*[T](this: Range[T], position: T): bool {.header: juce_core, importcpp: "#.contains(@)".}
proc clipValue*[T](this: Range[T], value: T): T {.header: juce_core, importcpp: "#.clipValue(@)".}
proc contains*[T](this: Range[T], other: Range[T]): bool {.header: juce_core, importcpp: "#.contains(@)".}
proc intersects*[T](this: Range[T], other: Range[T]): bool {.header: juce_core, importcpp: "#.intersects(@)".}
proc getIntersectionWith*[T](this: Range[T], other: Range[T]): Range[T] {.header: juce_core, importcpp: "#.getIntersectionWith(@)".}
proc getUnionWith*[T](this: Range[T], other: Range[T]): Range[T] {.header: juce_core, importcpp: "#.getUnionWith(@)".}
proc getUnionWith*[T](this: Range[T], valueToInclude: T): Range[T] {.header: juce_core, importcpp: "#.getUnionWith(@)".}
proc constrainRange*[T](this: Range[T], rangeToConstrain: Range[T]): Range[T] {.header: juce_core, importcpp: "#.constrainRange(@)".}

#[
    Range& operator= (const Range&) = default;
    inline Range operator+= (const ValueType amountToAdd) noexcept
    inline Range operator-= (const ValueType amountToSubtract) noexcept
    constexpr Range operator+ (const ValueType amountToAdd) const noexcept
    constexpr Range operator- (const ValueType amountToSubtract) const noexcept
    constexpr bool operator== (Range other) const noexcept
    constexpr bool operator!= (Range other) const noexcept
]#
