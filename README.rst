.. image:: https://github.com/kunitoki/june/raw/master/logo.png
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
