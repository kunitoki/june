====
june
====

-----------------
Build From Source
-----------------

Build the JUCE shared library.

.. code-block:: bash

  rm -Rf build && mkdir -p build

  pushd build
  cmake -G "Ninja Multi-Config" ../
  cmake --build . --config Release
  popd


Then build the nim test (tweak nim.cfg if needed).

.. code-block:: bash

  nim cpp -r test.nim
