# June - Copyright (c) 2022 Lucio Asnaghi, Gavin Ray
#
# Licensed and distributed under the
#   MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
#
# This file may not be copied, modified, or distributed except according to those terms.

import system
import std/os
import std/compilesettings

when not defined(cpp):
  {.error: "C++ backend required to use nimpp".}

const june_header = "<june.h>"
const june_cache_dir = querySetting(SingleValueSetting.nimcacheDir)

include june/june_common
include june/june_function_utils
include june/june_cpp_utils
include june/juce_core
include june/juce_events
include june/juce_data_structures
include june/juce_graphics
include june/juce_gui_basics


proc initialiseJune() {.header: june_header, importcpp: "june::initialiseJune()".}
proc initialiseApplication(application: ptr JUCEApplication): bool {.header: june_header, importcpp: "june::initialiseApplication(@)".}
proc shutdownApplication(application: ptr JUCEApplication): int {.header: june_header, importcpp: "june::shutdownApplication(@)".}


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

    messageManager = MessageManager.getInstance()
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
