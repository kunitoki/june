# June - Copyright (c) 2022 Lucio Asnaghi, Gavin Ray
#
# Licensed and distributed under the
#   MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
#
# This file may not be copied, modified, or distributed except according to those terms.

# JUCEApplication =============================================================

#dumpAstGen:
#  type
#    JUCEApplication* {.importcpp: "june::JUCEApplication".} = object of JUCEApplicationImpl
#      onGetApplicationName*: CppFunctionObjectR0[String] # proc(this: ptr JUCEApplication): String {.cdecl.}


defineCppClassInternal JUCEApplication of JUCEApplication:
    include "juce_gui_basics/juce_gui_basics.h"
    proc getApplicationName(): constval[String] = discard
    proc getApplicationVersion(): constval[String] = discard
    proc moreThanOneInstanceAllowed(): bool = discard
    proc anotherInstanceStarted(commandLine: constref[String]) = discard
    proc initialise(commandLine: constref[String]) = discard
    proc shutdown() = discard
    proc systemRequestedQuit() = discard
    proc suspended() = discard
    proc resumed() = discard

#[
type
  JUCEApplication* {.importcpp: "june::JUCEApplication".} = object of JUCEApplicationImpl
    onGetApplicationName*: CppFunctionObject(proc(): String) # proc(this: ptr JUCEApplication): String {.cdecl.}
    onGetApplicationVersion*: proc(this: ptr JUCEApplication): String {.cdecl.}
    onMoreThanOneInstanceAllowed*: proc(this: ptr JUCEApplication): bool {.cdecl.}
    onAnotherInstanceStarted*: proc(this: ptr JUCEApplication, commandLine: String) {.cdecl.}
    onInitialise*: proc(this: ptr JUCEApplication, commandLine: String) {.cdecl.}
    onShutdown*: proc(this: ptr JUCEApplication) {.cdecl.}
    onSystemRequestedQuit*: proc(this: ptr JUCEApplication) {.cdecl.}
    onSuspended*: proc(this: ptr JUCEApplication) {.cdecl.}
    onResumed*: proc(this: ptr JUCEApplication) {.cdecl.}
]#

proc newApplication*(): ptr JUCEApplication {.importcpp: "(new june::JUCEApplication)".}
proc constructApplication*(): JUCEApplication {.importcpp: "june::JUCEApplication()".}

proc quit*(this: var JUCEApplicationBase) {.header: juce_gui_basics, importcpp: "juce::JUCEApplication::quit()".}
proc getCommandLineParameterArray*(this: var JUCEApplicationBase): StringArray {.header: juce_gui_basics, importcpp: "juce::JUCEApplication::getCommandLineParameterArray()".}
proc getCommandLineParameters*(this: var JUCEApplicationBase): String {.header: juce_gui_basics, importcpp: "juce::JUCEApplication::getCommandLineParameters()".}

proc getInstance*(this: typedesc[JUCEApplication]): var JUCEApplication {.header: juce_gui_basics, importcpp: "(*dynamic_cast<june::JUCEApplication*>(juce::JUCEApplication::getInstance()))".}

# Document Window =============================================================

const DocumentWindow_minimiseButton* = 1
const DocumentWindow_maximiseButton* = 2
const DocumentWindow_closeButton* = 4
const DocumentWindow_allButtons* = 7

defineCppClassInternal DocumentWindow of DocumentWindow:
    include "juce_gui_basics/juce_gui_basics.h"
    proc closeButtonPressed() = discard

#type
#  DocumentWindow* {.importcpp: "june::DocumentWindow".} = object of DocumentWindowImpl
#    onCloseButtonPressed*: proc(this: ptr DocumentWindow) {.cdecl.}

proc newDocumentWindow*(name: String, colour: Colour, requiredButtons: int, addToDesktop: bool = true): ptr DocumentWindow {.importcpp: "(new june::DocumentWindow(@))".}

proc minimiseButton*(this: typedesc[DocumentWindow]): cint {.header: juce_gui_basics, importcpp: "juce::DocumentWindow::minimiseButton".}
proc maximiseButton*(this: typedesc[DocumentWindow]): cint {.header: juce_gui_basics, importcpp: "juce::DocumentWindow::maximiseButton".}
proc closeButton*(this: typedesc[DocumentWindow]): cint {.header: juce_gui_basics, importcpp: "juce::DocumentWindow::closeButton".}
proc allButtons*(this: typedesc[DocumentWindow]): cint {.header: juce_gui_basics, importcpp: "juce::DocumentWindow::allButtons".}
