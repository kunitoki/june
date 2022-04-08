import system

{.emit: """/*TYPESECTION*/
#include <june.h>
""".}

include june/june_common
include june/juce_core
include june/juce_events
include june/juce_data_structures
include june/juce_graphics
include june/juce_gui_basics


proc initialiseJune() {.header:"<june.h>", importcpp: "june::initialiseJune()".}
proc initialiseApplication(application: ptr JUCEApplication): bool {.header:"<june.h>", importcpp: "june::initialiseApplication(@)".}
proc shutdownApplication(application: ptr JUCEApplication): int {.header:"<june.h>", importcpp: "june::shutdownApplication(@)".}


var messageManager: ptr MessageManager = nil


proc ctrlc() {.noconv.} =
  echo "Handling Control+C"

  if not isNil(messageManager):
    echo "Stopping the message loop..."

    messageManager[].stopDispatchLoop()
    messageManager = nil


proc START_JUCE_APPLICATION*(createApplication: (proc(): ptr JUCEApplication)) =
    echo "START_JUCE_APPLICATION enter..."

    initialiseJune()

    initialiseJuce_GUI()

    var result = QuitSuccess
    var application: ptr JUCEApplication = nil

    messageManager = MessageManager_getInstance()
    messageManager[].setCurrentThreadAsMessageThread()

    setControlCHook(ctrlc)

    try:
        echo "Creating application..."

        application = createApplication()

        echo "Initialising application..."

        if isNil(application) or not initialiseApplication(application):
            raise newException(OSError, "failed initialising june application")

        echo "Starting message loop..."

        messageManager[].runDispatchLoop()

        echo "Finishing message loop..."

    except:
        let exception = getCurrentException()
        echo "Exception: " & exception.msg
        echo exception.getStackTrace()

        result = QuitFailure

    finally:
        echo "Finalizing application..."

        if not isNil(application):
            result = shutdownApplication(application)
            cdelete application

    shutdownJuce_GUI()

    echo "START_JUCE_APPLICATION exit..."

    quit(result)
