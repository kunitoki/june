import june

{.emit: """/*INCLUDESECTION*/
#include <june.h>
""".}


defineCppClass TestApplication of JUCEApplication:
    window: ptr DocumentWindow


proc constructTestApplication*(): TestApplication =
    result = TestApplication()


proc createApplication(): ptr JUCEApplication =
    var application: ptr TestApplication = cnew constructTestApplication()
    application.window = nil

    application[].onGetApplicationName = bindClosure(proc(): String = "JUNE App")
    application[].onGetApplicationVersion = bindClosure(proc(): String = "0.1")

    application[].onInitialise = bindClosure(proc(commandLine: String) =
        echo "Starting JUNE App " & commandLine

        var windowName = application[].getApplicationName()

        application[].window = newDocumentWindow(windowName, makeColour(50'u8, 62'u8, 68'u8, 255'u8), DocumentWindow_allButtons, true)
        application[].window[].onCloseButtonPressed = bindClosure(proc() = JUCEApplication.getInstance().systemRequestedQuit())
        application[].window[].setResizable(true, true)
        application[].window[].centreWithSize(640, 480)
        application[].window[].setVisible(true)

        echo "Starting JUNE App completed"
    )

    application[].onShutdown = bindClosure(proc() =
        echo "Shutdown JUNE App "

        cdelete(application[].window)
        application[].window = nil

        echo "Shutdown JUNE App completed"
    )

    application[].onSystemRequestedQuit = bindClosure(proc() = application[].quit())

    result = application


when isMainModule:
    START_JUCE_APPLICATION(createApplication)
