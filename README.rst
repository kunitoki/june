====
june
====

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
