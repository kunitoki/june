import june

{.emit: """/*TYPESECTION*/ #include <june.h>""".}

defineCppClass TestApplication of JUCEApplication:
    window: ptr DocumentWindow

proc onGetApplicationName(this: ptr JUCEApplication): String {.cdecl.} = "JUNE App"
proc onGetApplicationVersion(this: ptr JUCEApplication): String {.cdecl.} = "0.1"

proc onInitialise(this: ptr JUCEApplication, commandLine: String) {.cdecl.} =
    echo "Starting JUNE App " & commandLine

    var self = cast[ptr TestApplication](this)
    var windowName = onGetApplicationName(this)

    self.window = newDocumentWindow(windowName, makeColour(50'u8, 62'u8, 68'u8, 255'u8), DocumentWindow_allButtons, true)
    self.window[].onCloseButtonPressed = proc(this: ptr DocumentWindow) {.cdecl.} = JUCEApplication.getInstance().systemRequestedQuit()
    self.window[].setResizable(true, true)
    self.window[].centreWithSize(640, 480)
    self.window[].setVisible(true)

    echo "Starting JUNE App completed"

proc onShutdown(this: ptr JUCEApplication) {.cdecl.} =
    echo "Shutdown JUNE App "

    var self = cast[ptr TestApplication](this)
    cdelete(self.window)
    self.window = nil

    echo "Shutdown JUNE App completed"

proc onSystemRequestedQuit(this: ptr JUCEApplication) {.cdecl.} =
    this[].quit()


proc constructTestApplication*(): TestApplication =
    result = TestApplication()

proc createApplication(): ptr JUCEApplication =
    var application: ptr TestApplication = cnew constructTestApplication()
    application.window = nil
    application.onGetApplicationName = onGetApplicationName
    application.onGetApplicationVersion = onGetApplicationVersion
    application.onInitialise = onInitialise
    application.onShutdown = onShutdown
    application.onSystemRequestedQuit = onSystemRequestedQuit
    result = application

when isMainModule:
    START_JUCE_APPLICATION(createApplication)
