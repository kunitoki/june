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

task juce_debug, "Build juce":
  exec "mkdir -p build && cd build && cmake 'Ninja' -DCMAKE_BUILD_TYPE=Debug ../ && cmake --build ."

task juce_release, "Build juce":
  exec "mkdir -p build && cd build && cmake 'Ninja' -DCMAKE_BUILD_TYPE=Release ../ && cmake --build ."

task app_debug, "Test june app":
  exec "nim cpp -r examples/test_app.nim"

task app_release, "Test june app":
  exec "nim cpp -r -d:release examples/test_app.nim"
