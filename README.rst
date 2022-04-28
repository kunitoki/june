.. image:: https://github.com/kunitoki/june/raw/main/logo.png
    :alt: june
    :target: https://github.com/kunitoki/june

JUNE is a Nim binding of the JUCE framework, allowing fast prototyping JUCE applications in your favourite
compiled programming language.

-----------------
Build From Source
-----------------

Build the JUCE shared library.

.. code-block:: bash

  nimble juce_debug
  # nimble juce_release


Then build the nim test (tweak nim.cfg if needed).

.. code-block:: bash

  nimble app_debug
  # nimble app_release


-------------------
Example Application
-------------------

A simple example application (subject to changes):

.. code-block:: nim

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
      var windowName = application[].getApplicationName()

      application[].window = newDocumentWindow(windowName, makeColour(50'u8, 62'u8, 68'u8, 255'u8), DocumentWindow_allButtons, true)
      application[].window[].onCloseButtonPressed = bindClosure(proc() = JUCEApplication.getInstance().systemRequestedQuit())
      application[].window[].setResizable(true, true)
      application[].window[].centreWithSize(640, 480)
      application[].window[].setVisible(true)
    )

    application[].onShutdown = bindClosure(proc() =
      cdelete(application[].window)
      application[].window = nil
    )

    application[].onSystemRequestedQuit = bindClosure(proc() = application[].quit())

    result = application

  when isMainModule:
    START_JUCE_APPLICATION(createApplication)


Will look like this:

.. image:: https://github.com/kunitoki/june/raw/master/assets/example_app.png
    :target: https://github.com/kunitoki/june/blob/main/examples/test_app.nim
