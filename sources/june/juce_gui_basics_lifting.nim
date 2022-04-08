# JUCEApplication =============================================================

type
  JUCEApplication* {.importcpp: "june::JUCEApplication".} = object of JUCEApplicationImpl
    onGetApplicationName*: proc(this: ptr JUCEApplication): String {.cdecl.}
    onGetApplicationVersion*: proc(this: ptr JUCEApplication): String {.cdecl.}
    onMoreThanOneInstanceAllowed*: proc(this: ptr JUCEApplication): bool {.cdecl.}
    onAnotherInstanceStarted*: proc(this: ptr JUCEApplication, commandLine: String) {.cdecl.}
    onInitialise*: proc(this: ptr JUCEApplication, commandLine: String) {.cdecl.}
    onShutdown*: proc(this: ptr JUCEApplication) {.cdecl.}
    onSystemRequestedQuit*: proc(this: ptr JUCEApplication) {.cdecl.}
    onSuspended*: proc(this: ptr JUCEApplication) {.cdecl.}
    onResumed*: proc(this: ptr JUCEApplication) {.cdecl.}

proc newJUCEApplication*(): ptr JUCEApplication {.importcpp: "(new june::JUCEApplication)".}

proc quit*(this: var JUCEApplicationBase) {.header: juce_gui_basics, importcpp: "juce::JUCEApplication::quit()".}
proc getCommandLineParameterArray*(this: var JUCEApplicationBase): StringArray {.header: juce_gui_basics, importcpp: "juce::JUCEApplication::getCommandLineParameterArray()".}
proc getCommandLineParameters*(this: var JUCEApplicationBase): String {.header: juce_gui_basics, importcpp: "juce::JUCEApplication::getCommandLineParameters()".}

proc JUCEApplication_getInstance*(): var JUCEApplication {.header: juce_gui_basics, importcpp: "(*dynamic_cast<june::JUCEApplication*>(juce::JUCEApplication::getInstance()))".}

# Document Window =============================================================

const DocumentWindow_minimiseButton* = 1
const DocumentWindow_maximiseButton* = 2
const DocumentWindow_closeButton* = 4
const DocumentWindow_allButtons* = 7

type
  DocumentWindow* {.importcpp: "june::DocumentWindow".} = object of DocumentWindowImpl
    onCloseButtonPressed*: proc(this: ptr DocumentWindow) {.cdecl.}

proc newDocumentWindow*(name: String, colour: Colour, requiredButtons: int, addToDesktop: bool = true): ptr DocumentWindow {.importcpp: "(new june::DocumentWindow(@))".}
