# Package

version       = "0.0.1"
author        = "kunitoki"
description   = "Juce Bindings For Nim"
license       = "MIT"
srcDir        = "sources"

# tests
task test, "Runs the test suite":
  exec "nim cpp -r tests/test_juce_core.nim"
  exec "nim cpp -r tests/test_juce_events.nim"
  exec "nim cpp -r tests/test_juce_data_structures.nim"
  exec "nim cpp -r tests/test_juce_graphics.nim"
  exec "nim cpp -r tests/test_juce_gui_basics.nim"

task juce_debug, "Build juce (debug)":
  exec "mkdir -p build && cd build && cmake 'Ninja' -DCMAKE_BUILD_TYPE=Debug ../ && cmake --build ."

task juce_release, "Build juce (release)":
  exec "mkdir -p build && cd build && cmake 'Ninja' -DCMAKE_BUILD_TYPE=Release ../ && cmake --build ."

task app_debug, "Compile and run june app (debug)":
  exec "nim cpp examples/test_app.nim"
  exec "mkdir -p examples/test_app.app/Contents/{MacOS,Resources,Frameworks}"
  exec "cp Info.plist examples/test_app.app/Contents"
  exec "sed -e 's/APP_NAME/test_app/g' -i '' examples/test_app.app/Contents/Info.plist"
  exec "mv examples/test_app examples/test_app.app/Contents/MacOS"
  exec "chmod +x examples/test_app.app/Contents/MacOS/*"
  exec "examples/test_app.app/Contents/MacOS/test_app"

task app_release, "Compile and run june app (release)":
  exec "nim cpp -d:release examples/test_app.nim"
  exec "mkdir -p examples/test_app.app/Contents/{MacOS,Resources,Frameworks}"
  exec "cp Info.plist examples/test_app.app/Contents"
  exec "sed -e 's/APP_NAME/test_app/g' -i '' examples/test_app.app/Contents/Info.plist"
  exec "mv examples/test_app examples/test_app.app/Contents/MacOS"
  exec "chmod +x examples/test_app.app/Contents/MacOS/*"
  exec "examples/test_app.app/Contents/MacOS/test_app"
