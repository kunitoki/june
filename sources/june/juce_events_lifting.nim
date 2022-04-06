
proc initialiseJuce_GUI*() {.header: juce_events, importcpp: "juce::initialiseJuce_GUI()".}
proc shutdownJuce_GUI*() {.header: juce_events, importcpp: "juce::shutdownJuce_GUI()".}

proc MessageManager_getInstance*(): ptr MessageManager {.header: juce_events, importcpp: "juce::MessageManager::getInstance()".}
