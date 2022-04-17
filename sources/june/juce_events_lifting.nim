# June
# Copyright (c) 2022 Lucio Asnaghi
# Licensed and distributed under either of
#   * MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
# at your option. This file may not be copied, modified, or distributed except according to those terms.

proc initialiseJuce_GUI*() {.header: juce_events, importcpp: "juce::initialiseJuce_GUI()".}
proc shutdownJuce_GUI*() {.header: juce_events, importcpp: "juce::shutdownJuce_GUI()".}

proc MessageManager_getInstance*(): ptr MessageManager {.header: juce_events, importcpp: "juce::MessageManager::getInstance()".}
