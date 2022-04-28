# June - Copyright (c) 2022 Lucio Asnaghi, Gavin Ray
#
# Licensed and distributed under the
#   MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
#
# This file may not be copied, modified, or distributed except according to those terms.

const juce_events = "<juce_events/juce_events.h>"


type
  ActionListener* {.header: juce_events, importcpp: "juce::ActionListener".} = object


type
  ActionBroadcaster* {.header: juce_events, importcpp: "juce::ActionBroadcaster".} = object


type
  MessageManager* {.header: juce_events, importcpp: "juce::MessageManager".} = object
  MessageManagerMessageBase* {.header: juce_events, importcpp: "juce::MessageManager::MessageBase".} = object
  MessageManagerLock* {.header: juce_events, importcpp: "juce::MessageManagerLock".} = object

proc runDispatchLoop*(this: var MessageManager) {.header: juce_events, importcpp: "#.runDispatchLoop()".}
proc stopDispatchLoop*(this: var MessageManager) {.header: juce_events, importcpp: "#.stopDispatchLoop()".}
proc hasStopMessageBeenSent*(this: MessageManager): bool {.header: juce_events, importcpp: "#.hasStopMessageBeenSent()".}
# proc callFunctionOnMessageThread*(this: var MessageManager, callback: ptr juce::MessageCallbackFunction, userData: pointer): pointer {.header: juce_events, importcpp: "#.callFunctionOnMessageThread(@)".}
proc isThisTheMessageThread*(this: MessageManager): bool {.header: juce_events, importcpp: "#.isThisTheMessageThread()".}
proc setCurrentThreadAsMessageThread*(this: var MessageManager) {.header: juce_events, importcpp: "#.setCurrentThreadAsMessageThread()".}
proc getCurrentMessageThread*(this: MessageManager): int {.header: juce_events, importcpp: "#.getCurrentMessageThread()".}
proc currentThreadHasLockedMessageManager*(this: MessageManager): bool {.header: juce_events, importcpp: "#.currentThreadHasLockedMessageManager()".}
proc registerBroadcastListener*(this: var MessageManager, listener: ptr ActionListener) {.header: juce_events, importcpp: "#.registerBroadcastListener(@)".}
proc deregisterBroadcastListener*(this: var MessageManager, listener: ptr ActionListener) {.header: juce_events, importcpp: "#.deregisterBroadcastListener(@)".}
proc deliverBroadcastMessage*(this: var MessageManager, arg1: int) {.header: juce_events, importcpp: "#.deliverBroadcastMessage(@)".}

proc lockWasGained*(this: MessageManagerLock): bool {.header: juce_events, importcpp: "#.lockWasGained()".}

type
  MessageListener* {.header: juce_events, importcpp: "juce::MessageListener".} = object


type
  Message* {.header: juce_events, importcpp: "juce::Message".} = object


proc handleMessage*(this: var MessageListener, message: Message) {.header: juce_events, importcpp: "#.handleMessage(@)".}
proc postMessage*(this: MessageListener, message: ptr Message) {.header: juce_events, importcpp: "#.postMessage(@)".}

type
  CallbackMessage* {.header: juce_events, importcpp: "juce::CallbackMessage".} = object

proc messageCallback*(this: var CallbackMessage) {.header: juce_events, importcpp: "#.messageCallback()".}

type
  DeletedAtShutdown* {.header: juce_events, importcpp: "juce::DeletedAtShutdown".} = object


type
  JUCEApplicationBase* {.header: juce_events, importcpp: "juce::JUCEApplicationBase", inheritable.} = object

proc getApplicationName*(this: var JUCEApplicationBase): String {.header: juce_events, importcpp: "#.getApplicationName()".}
proc getApplicationVersion*(this: var JUCEApplicationBase): String {.header: juce_events, importcpp: "#.getApplicationVersion()".}
proc moreThanOneInstanceAllowed*(this: var JUCEApplicationBase): bool {.header: juce_events, importcpp: "#.moreThanOneInstanceAllowed()".}
proc initialise*(this: var JUCEApplicationBase, commandLineParameters: String) {.header: juce_events, importcpp: "#.initialise(@)".}
proc shutdown*(this: var JUCEApplicationBase) {.header: juce_events, importcpp: "#.shutdown()".}
proc anotherInstanceStarted*(this: var JUCEApplicationBase, commandLine: String) {.header: juce_events, importcpp: "#.anotherInstanceStarted(@)".}
proc systemRequestedQuit*(this: var JUCEApplicationBase) {.header: juce_events, importcpp: "#.systemRequestedQuit()".}
proc suspended*(this: var JUCEApplicationBase) {.header: juce_events, importcpp: "#.suspended()".}
proc resumed*(this: var JUCEApplicationBase) {.header: juce_events, importcpp: "#.resumed()".}
proc unhandledException*(this: var JUCEApplicationBase, arg1: ptr int, sourceFilename: String, lineNumber: int) {.header: juce_events, importcpp: "#.unhandledException(@)".}
proc memoryWarningReceived*(this: var JUCEApplicationBase) {.header: juce_events, importcpp: "#.memoryWarningReceived()".}
proc backButtonPressed*(this: var JUCEApplicationBase): bool {.header: juce_events, importcpp: "#.backButtonPressed()".}
proc setApplicationReturnValue*(this: var JUCEApplicationBase, newReturnValue: int) {.header: juce_events, importcpp: "#.setApplicationReturnValue(@)".}
proc getApplicationReturnValue*(this: var JUCEApplicationBase): int {.header: juce_events, importcpp: "#.getApplicationReturnValue()".}
proc isInitialising*(this: var JUCEApplicationBase): bool {.header: juce_events, importcpp: "#.isInitialising()".}
proc initialiseApp*(this: var JUCEApplicationBase): bool {.header: juce_events, importcpp: "#.initialiseApp()".}
proc shutdownApp*(this: var JUCEApplicationBase): int {.header: juce_events, importcpp: "#.shutdownApp()".}
proc sendCommandLineToPreexistingInstance*(this: var JUCEApplicationBase): bool {.header: juce_events, importcpp: "#.sendCommandLineToPreexistingInstance()".}

type
  ScopedJuceInitialiser_GUI* {.header: juce_events, importcpp: "juce::ScopedJuceInitialiser_GUI".} = object


proc addActionListener*(this: var ActionBroadcaster, listener: ptr ActionListener) {.header: juce_events, importcpp: "#.addActionListener(@)".}
proc removeActionListener*(this: var ActionBroadcaster, listener: ptr ActionListener) {.header: juce_events, importcpp: "#.removeActionListener(@)".}
proc removeAllActionListeners*(this: var ActionBroadcaster) {.header: juce_events, importcpp: "#.removeAllActionListeners()".}
proc sendActionMessage*(this: ActionBroadcaster, message: int) {.header: juce_events, importcpp: "#.sendActionMessage(@)".}

proc actionListenerCallback*(this: var ActionListener, message: int) {.header: juce_events, importcpp: "#.actionListenerCallback(@)".}

type
  AsyncUpdater* {.header: juce_events, importcpp: "juce::AsyncUpdater".} = object

proc triggerAsyncUpdate*(this: var AsyncUpdater) {.header: juce_events, importcpp: "#.triggerAsyncUpdate()".}
proc cancelPendingUpdate*(this: var AsyncUpdater) {.header: juce_events, importcpp: "#.cancelPendingUpdate()".}
proc handleUpdateNowIfNeeded*(this: var AsyncUpdater) {.header: juce_events, importcpp: "#.handleUpdateNowIfNeeded()".}
proc isUpdatePending*(this: AsyncUpdater): bool {.header: juce_events, importcpp: "#.isUpdatePending()".}
proc handleAsyncUpdate*(this: var AsyncUpdater) {.header: juce_events, importcpp: "#.handleAsyncUpdate()".}

type
  ChangeBroadcaster* {.header: juce_events, importcpp: "juce::ChangeBroadcaster".} = object
  ChangeBroadcasterChangeBroadcasterCallback* {.header: juce_events, importcpp: "juce::ChangeBroadcaster::ChangeBroadcasterCallback".} = object


type
  ChangeListener* {.header: juce_events, importcpp: "juce::ChangeListener".} = object

proc changeListenerCallback*(this: var ChangeListener, source: ptr ChangeBroadcaster) {.header: juce_events, importcpp: "#.changeListenerCallback(@)".}

proc addChangeListener*(this: var ChangeBroadcaster, listener: ptr ChangeListener) {.header: juce_events, importcpp: "#.addChangeListener(@)".}
proc removeChangeListener*(this: var ChangeBroadcaster, listener: ptr ChangeListener) {.header: juce_events, importcpp: "#.removeChangeListener(@)".}
proc removeAllChangeListeners*(this: var ChangeBroadcaster) {.header: juce_events, importcpp: "#.removeAllChangeListeners()".}
proc sendChangeMessage*(this: var ChangeBroadcaster) {.header: juce_events, importcpp: "#.sendChangeMessage()".}
proc sendSynchronousChangeMessage*(this: var ChangeBroadcaster) {.header: juce_events, importcpp: "#.sendSynchronousChangeMessage()".}
proc dispatchPendingMessages*(this: var ChangeBroadcaster) {.header: juce_events, importcpp: "#.dispatchPendingMessages()".}

type
  Timer* {.header: juce_events, importcpp: "juce::Timer".} = object

proc timerCallback*(this: var Timer) {.header: juce_events, importcpp: "#.timerCallback()".}
proc startTimer*(this: var Timer, intervalInMilliseconds: int) {.header: juce_events, importcpp: "#.startTimer(@)".}
proc startTimerHz*(this: var Timer, timerFrequencyHz: int) {.header: juce_events, importcpp: "#.startTimerHz(@)".}
proc stopTimer*(this: var Timer) {.header: juce_events, importcpp: "#.stopTimer()".}
proc isTimerRunning*(this: Timer): bool {.header: juce_events, importcpp: "#.isTimerRunning()".}
proc getTimerInterval*(this: Timer): int {.header: juce_events, importcpp: "#.getTimerInterval()".}

type
  MultiTimer* {.header: juce_events, importcpp: "juce::MultiTimer".} = object

proc timerCallback*(this: var MultiTimer, timerID: int) {.header: juce_events, importcpp: "#.timerCallback(@)".}
proc startTimer*(this: var MultiTimer, timerID: int, intervalInMilliseconds: int) {.header: juce_events, importcpp: "#.startTimer(@)".}
proc stopTimer*(this: var MultiTimer, timerID: int) {.header: juce_events, importcpp: "#.stopTimer(@)".}
proc isTimerRunning*(this: MultiTimer, timerID: int): bool {.header: juce_events, importcpp: "#.isTimerRunning(@)".}
proc getTimerInterval*(this: MultiTimer, timerID: int): int {.header: juce_events, importcpp: "#.getTimerInterval(@)".}

type
  InterprocessConnectionServer* {.header: juce_events, importcpp: "juce::InterprocessConnectionServer".} = object

type
  InterprocessConnection* {.header: juce_events, importcpp: "juce::InterprocessConnection".} = object

proc connectToSocket*(this: var InterprocessConnection, hostName: int, portNumber: int, timeOutMillisecs: int): bool {.header: juce_events, importcpp: "#.connectToSocket(@)".}
proc connectToPipe*(this: var InterprocessConnection, pipeName: int, pipeReceiveMessageTimeoutMs: int): bool {.header: juce_events, importcpp: "#.connectToPipe(@)".}
proc createPipe*(this: var InterprocessConnection, pipeName: int, pipeReceiveMessageTimeoutMs: int, mustNotExist: bool = false): bool {.header: juce_events, importcpp: "#.createPipe(@)".}
# proc disconnect*(this: var InterprocessConnection, timeoutMs: int = -1, notify: juce::InterprocessConnection::Notify = Notify::yes) {.header: juce_events, importcpp: "#.disconnect(@)".}
proc isConnected*(this: InterprocessConnection): bool {.header: juce_events, importcpp: "#.isConnected()".}
proc getSocket*(this: InterprocessConnection): ptr int {.header: juce_events, importcpp: "#.getSocket()".}
proc getPipe*(this: InterprocessConnection): ptr int {.header: juce_events, importcpp: "#.getPipe()".}
proc getConnectedHostName*(this: InterprocessConnection): int {.header: juce_events, importcpp: "#.getConnectedHostName()".}
proc sendMessage*(this: var InterprocessConnection, message: MemoryBlock): bool {.header: juce_events, importcpp: "#.sendMessage(@)".}
proc connectionMade*(this: var InterprocessConnection) {.header: juce_events, importcpp: "#.connectionMade()".}
proc connectionLost*(this: var InterprocessConnection) {.header: juce_events, importcpp: "#.connectionLost()".}
proc messageReceived*(this: var InterprocessConnection, message: MemoryBlock) {.header: juce_events, importcpp: "#.messageReceived(@)".}

proc beginWaitingForSocket*(this: var InterprocessConnectionServer, portNumber: int, bindAddress: String = ""): bool {.header: juce_events, importcpp: "#.beginWaitingForSocket(@)".}
proc stop*(this: var InterprocessConnectionServer) {.header: juce_events, importcpp: "#.stop()".}
proc getBoundPort*(this: InterprocessConnectionServer): int {.header: juce_events, importcpp: "#.getBoundPort()".}

type
  ChildProcessSlave* {.header: juce_events, importcpp: "juce::ChildProcessSlave".} = object

proc initialiseFromCommandLine*(this: var ChildProcessSlave, commandLine: int, commandLineUniqueID: int, timeoutMs: int = 0): bool {.header: juce_events, importcpp: "#.initialiseFromCommandLine(@)".}
proc handleMessageFromMaster*(this: var ChildProcessSlave, arg1: MemoryBlock) {.header: juce_events, importcpp: "#.handleMessageFromMaster(@)".}
proc handleConnectionMade*(this: var ChildProcessSlave) {.header: juce_events, importcpp: "#.handleConnectionMade()".}
proc handleConnectionLost*(this: var ChildProcessSlave) {.header: juce_events, importcpp: "#.handleConnectionLost()".}
proc sendMessageToMaster*(this: var ChildProcessSlave, arg1: MemoryBlock): bool {.header: juce_events, importcpp: "#.sendMessageToMaster(@)".}

type
  ChildProcessMaster* {.header: juce_events, importcpp: "juce::ChildProcessMaster".} = object

proc launchSlaveProcess*(this: var ChildProcessMaster, executableToLaunch: int, commandLineUniqueID: int, timeoutMs: int = 0, streamFlags: int = 1 or 2): bool {.header: juce_events, importcpp: "#.launchSlaveProcess(@)".}
proc killSlaveProcess*(this: var ChildProcessMaster) {.header: juce_events, importcpp: "#.killSlaveProcess()".}
proc handleMessageFromSlave*(this: var ChildProcessMaster, arg1: MemoryBlock) {.header: juce_events, importcpp: "#.handleMessageFromSlave(@)".}
proc handleConnectionLost*(this: var ChildProcessMaster) {.header: juce_events, importcpp: "#.handleConnectionLost()".}
proc sendMessageToSlave*(this: var ChildProcessMaster, arg1: MemoryBlock): bool {.header: juce_events, importcpp: "#.sendMessageToSlave(@)".}

type
  NetworkServiceDiscovery* {.header: juce_events, importcpp: "juce::NetworkServiceDiscovery".} = object
  NetworkServiceDiscoveryAdvertiser* {.header: juce_events, importcpp: "juce::NetworkServiceDiscovery::Advertiser".} = object
  NetworkServiceDiscoveryService* {.header: juce_events, importcpp: "juce::NetworkServiceDiscovery::Service".} = object
  NetworkServiceDiscoveryAvailableServiceList* {.header: juce_events, importcpp: "juce::NetworkServiceDiscovery::AvailableServiceList".} = object


include juce_events_lifting

