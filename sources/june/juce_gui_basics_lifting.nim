
const DocumentWindow_minimiseButton* = 1
const DocumentWindow_maximiseButton* = 2
const DocumentWindow_closeButton* = 4
const DocumentWindow_allButtons* = 7

proc newDocumentWindow*(name: String, colour: Colour, requiredButtons: int, addToDesktop: bool = true): ptr DocumentWindow {.importcpp: "(new juce::DocumentWindow(@))", nodecl.}
