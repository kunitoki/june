import june

{.emit: """/*TYPESECTION*/ #include <june.h>""".}

var window {.global.}: ptr DocumentWindow = nil

proc onGetApplicationName(this: ptr JUCEApplication): String {.cdecl.} = "JUNE App"
proc onGetApplicationVersion(this: ptr JUCEApplication): String {.cdecl.} = "0.1"

proc onInitialise(this: ptr JUCEApplication, commandLine: String) {.cdecl.} =
    echo "Starting JUNE App " & commandLine

    window = newDocumentWindow("JUNE App", makeColour(50'u8, 62'u8, 68'u8, 255'u8), DocumentWindow_allButtons, true)
    window[].onCloseButtonPressed = proc(this: ptr DocumentWindow) {.cdecl.} = JUCEApplication_getInstance().systemRequestedQuit()
    window[].setResizable(true, true)
    window[].centreWithSize(640, 480)
    window[].setVisible(true)

    echo "Starting JUNE App completed"

proc onShutdown(this: ptr JUCEApplication) {.cdecl.} =
    echo "Shutdown JUNE App "

    cdelete(window)

    echo "Shutdown JUNE App completed"


proc onSystemRequestedQuit(this: ptr JUCEApplication) {.cdecl.} =
    this[].quit()


proc createApplication(): ptr JUCEApplication =
    var application: ptr JUCEApplication = newJUCEApplication()
    application.onGetApplicationName = onGetApplicationName
    application.onGetApplicationVersion = onGetApplicationVersion
    application.onInitialise = onInitialise
    application.onShutdown = onShutdown
    application.onSystemRequestedQuit = onSystemRequestedQuit
    result = application

when isMainModule:
    START_JUCE_APPLICATION(createApplication)
