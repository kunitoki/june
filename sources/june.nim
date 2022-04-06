import system

import june/juce_core
import june/juce_events
import june/juce_data_structures
import june/juce_graphics
import june/juce_gui_basics

{.emit: """

#include <juce_gui_basics/juce_gui_basics.h>

namespace june {

class JUNEApplication : public juce::JUCEApplication
{
public:
    JUNEApplication()
    {
    }

    ~JUNEApplication()
    {
    }

    const juce::String getApplicationName() override
    {
    }

    const juce::String getApplicationVersion() override
    {
    }

    bool moreThanOneInstanceAllowed() override
    {
        return false;
    }

    void anotherInstanceStarted(const juce::String& commandLine) override
    {
    }

    void initialise(const juce::String& commandLine) override
    {
    }

    void shutdown() override
    {
    }

    void systemRequestedQuit() override
    {
    }

    void suspended() override
    {
    }

    void resumed() override
    {
    }

    void unhandledException(const std::exception* e, const juce::String& sourceFilename, int lineNumber) override
    {
    }
};

inline juce::JUCEApplicationBase* createJuceApplicationEmptyInstance() { return nullptr; }

inline void initialiseJune()
{
    juce::JUCEApplicationBase::createInstance = createJuceApplicationEmptyInstance;
}

inline juce::JUCEApplicationBase* createApplication()
{
    static JUNEApplication application;
    return std::addressof(application);
}

} // namespace june
""".}


proc initialiseJune() {.importcpp: "june::initialiseJune()".}
proc createApplication(): ptr JUCEApplicationBase {.importcpp: "june::createApplication()".}


proc START_JUCE_APPLICATION*() =
    echo "START_JUCE_APPLICATION enter..."

    initialiseJune()

    initialiseJuce_GUI()

    var result = QuitSuccess

    var mm = MessageManager_getInstance()
    mm[].setCurrentThreadAsMessageThread()

    var application: ptr JUCEApplicationBase = nil

    try:
        application = createApplication()
        if application[].initialiseApp():
            mm[].runDispatchLoop()

    except OSError:
        result = QuitFailure

    finally:
        if not isNil(application):
            result = application[].shutdownApp()

    shutdownJuce_GUI()

    echo "START_JUCE_APPLICATION exit..."

    quit(result)
