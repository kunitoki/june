/**
 * June - Copyright (c) 2022 Lucio Asnaghi, Gavin Ray
 *
 * Licensed and distributed under the
 *   MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
 *
 * This file may not be copied, modified, or distributed except according to those terms.
 */

#pragma once

#include <juce_gui_basics/juce_gui_basics.h>

#include <exception>

#if JUCE_MAC
namespace juce { extern void initialiseNSApplication(); }
#endif

namespace june {

class JUCEApplication : public juce::JUCEApplication
{
public:
    JUCEApplication() = default;
    ~JUCEApplication() = default;

    juce::String (*onGetApplicationName)(JUCEApplication*) = nullptr;
    const juce::String getApplicationName() override
    {
        if (onGetApplicationName == nullptr)
            throw std::runtime_error("Must override onGetApplicationName");

        return onGetApplicationName(this);
    }

    juce::String (*onGetApplicationVersion)(JUCEApplication*) = nullptr;
    const juce::String getApplicationVersion() override
    {
        if (onGetApplicationVersion == nullptr)
            throw std::runtime_error("Must override onGetApplicationVersion");

        return onGetApplicationVersion(this);
    }

    bool (*onMoreThanOneInstanceAllowed)(JUCEApplication*) = nullptr;
    bool moreThanOneInstanceAllowed() override
    {
        return onMoreThanOneInstanceAllowed != nullptr
            ? onMoreThanOneInstanceAllowed(this)
            : true;
    }

    void (*onAnotherInstanceStarted)(JUCEApplication*, juce::String) = nullptr;
    void anotherInstanceStarted(const juce::String& commandLine) override
    {
        if (onAnotherInstanceStarted)
            onAnotherInstanceStarted(this, commandLine);
    }

    void (*onInitialise)(JUCEApplication*, juce::String) = nullptr;
    void initialise(const juce::String& commandLine) override
    {
        if (onInitialise)
            onInitialise(this, commandLine);
    }

    void (*onShutdown)(JUCEApplication*) = nullptr;
    void shutdown() override
    {
        if (onShutdown)
            onShutdown(this);
    }

    void (*onSystemRequestedQuit)(JUCEApplication*) = nullptr;
    void systemRequestedQuit() override
    {
        if (onSystemRequestedQuit)
            onSystemRequestedQuit(this);
    }

    void (*onSuspended)(JUCEApplication*) = nullptr;
    void suspended() override
    {
        if (onSuspended)
            onSuspended(this);
    }

    void (*onResumed)(JUCEApplication*) = nullptr;
    void resumed() override
    {
        if (onResumed)
            onResumed(this);
    }

    void unhandledException(const std::exception* e, const juce::String& sourceFilename, int lineNumber) override
    {
        throw *e;
    }
};

class DocumentWindow : public juce::DocumentWindow
{
public:
    using juce::DocumentWindow::DocumentWindow;

    void (*onCloseButtonPressed)(DocumentWindow*) = nullptr;
    void closeButtonPressed() override
    {
        if (onCloseButtonPressed)
            onCloseButtonPressed(this);
    }
};

inline juce::JUCEApplicationBase* createJuceApplicationEmptyInstance() { return nullptr; }

inline void initialiseJune()
{
    juce::JUCEApplicationBase::createInstance = &createJuceApplicationEmptyInstance;

#if JUCE_MAC
    juce::initialiseNSApplication();
#endif
}

inline bool initialiseApplication(JUCEApplication* application)
{
    return static_cast<juce::JUCEApplicationBase*>(application)->initialiseApp();
}

inline int shutdownApplication(JUCEApplication* application)
{
    return static_cast<juce::JUCEApplicationBase*>(application)->shutdownApp();
}

} // namespace june
