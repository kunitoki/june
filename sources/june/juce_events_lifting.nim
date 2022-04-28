# June - Copyright (c) 2022 Lucio Asnaghi, Gavin Ray
#
# Licensed and distributed under the
#   MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
#
# This file may not be copied, modified, or distributed except according to those terms.

proc initialiseJuce_GUI*() {.header: juce_events, importcpp: "juce::initialiseJuce_GUI()".}
proc shutdownJuce_GUI*() {.header: juce_events, importcpp: "juce::shutdownJuce_GUI()".}

proc getInstance*(this: typedesc[MessageManager]): ptr MessageManager {.header: juce_events, importcpp: "juce::MessageManager::getInstance()".}
