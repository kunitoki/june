# Package

version       = "0.0.1"
author        = "kunitoki"
description   = "Juce Bindings For Nim"
license       = "MIT"
srcDir        = "sources"

# tests
task test, "Runs the test suite":
  exec "nim cpp -r tests/test_juce_core.nim"

task juce, "Build juce":
  exec "mkdir -p build && cd build && cmake 'Ninja Multi-Config' ../ && cmake --build . --config Release"
