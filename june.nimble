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

task juce, "Build juce":
  exec "mkdir -p build && cd build && cmake 'Ninja Multi-Config' ../ && cmake --build . --config Release"

task app, "Test june app":
  exec "nim cpp -r examples/test_app.nim"
