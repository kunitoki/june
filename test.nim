const
  juce_core = "JUCE/modules/juce_core/juce_core.h"

type
  MemoryBlock {.header: juce_core, importcpp: "juce::MemoryBlock".} = object

proc setSize(this: var MemoryBlock, a: csize_t, b: bool = false) {.importcpp: "#.setSize(@)".}
proc getSize(this: MemoryBlock): csize_t {.importcpp: "#.getSize()".}
proc reset(this: var MemoryBlock) {.importcpp: "#.reset()".}

var x = MemoryBlock()
x.setSize(1000)
assert x.getSize() == 1000
x.reset()
assert x.getSize() == 0

echo "Result: ", x.getSize()
