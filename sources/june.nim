import system

import june/june_common

import june/juce_core
import june/juce_events
import june/juce_data_structures
import june/juce_graphics
import june/juce_gui_basics

{.emit: """/*TYPESECTION*/

#include <juce_gui_basics/juce_gui_basics.h>

namespace juce {
#if JUCE_MAC
extern void initialiseNSApplication();
#endif
} // namespace juce

namespace june {

class JUNEApplication : public juce::JUCEApplication
{
public:
    JUNEApplication() = default;
    ~JUNEApplication() = default;

    const juce::String getApplicationName() override
    {
        return applicationName;
    }

    const juce::String getApplicationVersion() override
    {
        return applicationVersion;
    }

    bool moreThanOneInstanceAllowed() override
    {
        return true;
    }

    void anotherInstanceStarted(const juce::String& commandLine) override
    {
    }

    void initialise(const juce::String& commandLine) override
    {
        if (initialiseCallback)
            initialiseCallback(this, commandLine);
    }

    void shutdown() override
    {
        if (shutdownCallback)
            shutdownCallback(this);
    }

    void systemRequestedQuit() override
    {
        quit();
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

public:
    using InitialiseCallback = void (*)(JUNEApplication*, juce::String);
    using ShutdownCallback = void (*)(JUNEApplication*);

    juce::String applicationName;
    juce::String applicationVersion;

    juce::DocumentWindow* window = nullptr;

    InitialiseCallback initialiseCallback = nullptr;
    ShutdownCallback shutdownCallback = nullptr;
};

inline juce::JUCEApplicationBase* createJuceApplicationEmptyInstance() { return nullptr; }

inline void initialiseJune()
{
    juce::JUCEApplicationBase::createInstance = createJuceApplicationEmptyInstance;

#if JUCE_MAC
    juce::initialiseNSApplication();
#endif
}

inline JUNEApplication* createApplication()
{
    static JUNEApplication application;
    return std::addressof(application);
}

inline bool initialiseApplication(JUNEApplication* application)
{
    if (auto app = dynamic_cast<juce::JUCEApplicationBase*>(application))
        return app->initialiseApp();

    return false;
}

} // namespace june
""".}


type
  JUNEApplication {.importcpp: "june::JUNEApplication".} = object of JUCEApplication
    applicationName: String
    applicationVersion: String
    window: ptr DocumentWindow
    initialiseCallback: proc(this: ptr JUNEApplication, commandLine: String) {.cdecl.}
    shutdownCallback: proc(this: ptr JUNEApplication) {.cdecl.}

var messageManager: ptr MessageManager = nil

proc initialiseJune() {.importcpp: "june::initialiseJune()".}
proc createApplication(): ptr JUNEApplication {.importcpp: "june::createApplication()".}
proc initialiseApplication(application: ptr JUNEApplication): bool {.importcpp: "june::initialiseApplication(@)".}

proc ctrlc() {.noconv.} =
  echo "Handling Control+C"

  if not isNil(messageManager):
    echo "Stopping the message loop..."

    messageManager[].stopDispatchLoop()
    messageManager = nil


proc initialiseCallback(this: ptr JUNEApplication, commandLine: String) {.cdecl.} =
    echo "Starting JUNE App " & commandLine

    this[].window = newDocumentWindow("JUNE App", Colour(), DocumentWindow_allButtons, true)
    this[].window[].setResizable(true, true)
    this[].window[].centreWithSize(640, 480)
    this[].window[].setVisible(true)


proc shutdownCallback(this: ptr JUNEApplication) {.cdecl.} =
    echo "Shutdown JUNE App "
    cdelete(this[].window)


proc START_JUCE_APPLICATION*() =
    echo "START_JUCE_APPLICATION enter..."

    initialiseJune()

    initialiseJuce_GUI()

    var result = QuitSuccess

    messageManager = MessageManager_getInstance()
    messageManager[].setCurrentThreadAsMessageThread()

    setControlCHook(ctrlc)

    var application: ptr JUNEApplication = nil

    try:
        echo "Creating application..."

        application = createApplication()
        application.applicationName = "JUNE App"
        application.applicationVersion = "1.0"
        application.initialiseCallback = initialiseCallback
        application.shutdownCallback = shutdownCallback

        echo "Initialising application..."

        if not initialiseApplication(application):
            raise newException(OSError, "failed initialising june application")

        echo "Starting message loop..."

        messageManager[].runDispatchLoop()

        echo "Finishing message loop..."

    except:
        echo "Exception catch..."

        result = QuitFailure

    finally:
        echo "Finalizing application..."

        if not isNil(application):
            result = application[].shutdownApp()

    shutdownJuce_GUI()

    echo "START_JUCE_APPLICATION exit..."

    quit(result)
