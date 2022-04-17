# June
# Copyright (c) 2022 Lucio Asnaghi
# Licensed and distributed under either of
#   * MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
# at your option. This file may not be copied, modified, or distributed except according to those terms.

const juce_data_structures = "<juce_data_structures/juce_data_structures.h>"

type
  UndoableAction* {.header: juce_data_structures, importcpp: "juce::UndoableAction".} = object

proc perform*(this: var UndoableAction): bool {.header: juce_data_structures, importcpp: "#.perform()".}
proc undo*(this: var UndoableAction): bool {.header: juce_data_structures, importcpp: "#.undo()".}
proc getSizeInUnits*(this: var UndoableAction): int {.header: juce_data_structures, importcpp: "#.getSizeInUnits()".}
proc createCoalescedAction*(this: var UndoableAction, nextAction: ptr UndoableAction): ptr UndoableAction {.header: juce_data_structures, importcpp: "#.createCoalescedAction(@)".}

type
  UndoManager* {.header: juce_data_structures, importcpp: "juce::UndoManager".} = object

proc clearUndoHistory*(this: var UndoManager) {.header: juce_data_structures, importcpp: "#.clearUndoHistory()".}
proc getNumberOfUnitsTakenUpByStoredCommands*(this: UndoManager): int {.header: juce_data_structures, importcpp: "#.getNumberOfUnitsTakenUpByStoredCommands()".}
proc setMaxNumberOfStoredUnits*(this: var UndoManager, maxNumberOfUnitsToKeep: int, minimumTransactionsToKeep: int) {.header: juce_data_structures, importcpp: "#.setMaxNumberOfStoredUnits(@)".}
proc perform*(this: var UndoManager, action: ptr UndoableAction): bool {.header: juce_data_structures, importcpp: "#.perform(@)".}
proc perform*(this: var UndoManager, action: ptr UndoableAction, actionName: int): bool {.header: juce_data_structures, importcpp: "#.perform(@)".}
proc beginNewTransaction*(this: var UndoManager) {.header: juce_data_structures, importcpp: "#.beginNewTransaction()".}
proc beginNewTransaction*(this: var UndoManager, actionName: int) {.header: juce_data_structures, importcpp: "#.beginNewTransaction(@)".}
proc setCurrentTransactionName*(this: var UndoManager, newName: int) {.header: juce_data_structures, importcpp: "#.setCurrentTransactionName(@)".}
proc getCurrentTransactionName*(this: UndoManager): int {.header: juce_data_structures, importcpp: "#.getCurrentTransactionName()".}
proc canUndo*(this: UndoManager): bool {.header: juce_data_structures, importcpp: "#.canUndo()".}
proc undo*(this: var UndoManager): bool {.header: juce_data_structures, importcpp: "#.undo()".}
proc undoCurrentTransactionOnly*(this: var UndoManager): bool {.header: juce_data_structures, importcpp: "#.undoCurrentTransactionOnly()".}
proc getUndoDescription*(this: UndoManager): int {.header: juce_data_structures, importcpp: "#.getUndoDescription()".}
proc getUndoDescriptions*(this: UndoManager): int {.header: juce_data_structures, importcpp: "#.getUndoDescriptions()".}
proc getTimeOfUndoTransaction*(this: UndoManager): int {.header: juce_data_structures, importcpp: "#.getTimeOfUndoTransaction()".}
proc getActionsInCurrentTransaction*(this: UndoManager, actionsFound: var int) {.header: juce_data_structures, importcpp: "#.getActionsInCurrentTransaction(@)".}
proc getNumActionsInCurrentTransaction*(this: UndoManager): int {.header: juce_data_structures, importcpp: "#.getNumActionsInCurrentTransaction()".}
proc canRedo*(this: UndoManager): bool {.header: juce_data_structures, importcpp: "#.canRedo()".}
proc redo*(this: var UndoManager): bool {.header: juce_data_structures, importcpp: "#.redo()".}
proc getRedoDescription*(this: UndoManager): int {.header: juce_data_structures, importcpp: "#.getRedoDescription()".}
proc getRedoDescriptions*(this: UndoManager): int {.header: juce_data_structures, importcpp: "#.getRedoDescriptions()".}
proc getTimeOfRedoTransaction*(this: UndoManager): int {.header: juce_data_structures, importcpp: "#.getTimeOfRedoTransaction()".}
proc isPerformingUndoRedo*(this: UndoManager): bool {.header: juce_data_structures, importcpp: "#.isPerformingUndoRedo()".}

type
  Value* {.header: juce_data_structures, importcpp: "juce::Value".} = object
  ValueListener* {.header: juce_data_structures, importcpp: "juce::Value::Listener".} = object
  ValueValueSource* {.header: juce_data_structures, importcpp: "juce::Value::ValueSource".} = object

proc getValue*(this: Value): int {.header: juce_data_structures, importcpp: "#.getValue()".}
proc toString*(this: Value): int {.header: juce_data_structures, importcpp: "#.toString()".}
proc setValue*(this: var Value, newValue: int) {.header: juce_data_structures, importcpp: "#.setValue(@)".}
proc `Value=`*(this: var Value, newValue: int): var Value {.header: juce_data_structures, importcpp: "#.operator=(@)".}
proc `Value=`*(this: var Value, arg1: lent Value): var Value {.header: juce_data_structures, importcpp: "#.operator=(@)".}
proc referTo*(this: var Value, valueToReferTo: Value) {.header: juce_data_structures, importcpp: "#.referTo(@)".}
proc refersToSameSourceAs*(this: Value, other: Value): bool {.header: juce_data_structures, importcpp: "#.refersToSameSourceAs(@)".}
proc `Value==`*(this: Value, other: Value): bool {.header: juce_data_structures, importcpp: "#.operator==(@)".}
proc `Value!=`*(this: Value, other: Value): bool {.header: juce_data_structures, importcpp: "#.operator!=(@)".}
proc addListener*(this: var Value, listener: ptr ValueListener) {.header: juce_data_structures, importcpp: "#.addListener(@)".}
proc removeListener*(this: var Value, listener: ptr ValueListener) {.header: juce_data_structures, importcpp: "#.removeListener(@)".}
proc getValueSource*(this: var Value): var ValueValueSource {.header: juce_data_structures, importcpp: "#.getValueSource()".}

type
  ValueTree* {.header: juce_data_structures, importcpp: "juce::ValueTree".} = object
  ValueTreeIterator* {.header: juce_data_structures, importcpp: "juce::ValueTree::Iterator".} = object
  ValueTreeListener* {.header: juce_data_structures, importcpp: "juce::ValueTree::Listener".} = object

proc `ValueTree=`*(this: var ValueTree, arg1: ValueTree): var ValueTree {.header: juce_data_structures, importcpp: "#.operator=(@)".}
proc `ValueTree==`*(this: ValueTree, arg1: ValueTree): bool {.header: juce_data_structures, importcpp: "#.operator==(@)".}
proc `ValueTree!=`*(this: ValueTree, arg1: ValueTree): bool {.header: juce_data_structures, importcpp: "#.operator!=(@)".}
proc isEquivalentTo*(this: ValueTree, arg1: ValueTree): bool {.header: juce_data_structures, importcpp: "#.isEquivalentTo(@)".}
proc isValid*(this: ValueTree): bool {.header: juce_data_structures, importcpp: "#.isValid()".}
proc createCopy*(this: ValueTree): ValueTree {.header: juce_data_structures, importcpp: "#.createCopy()".}
proc copyPropertiesFrom*(this: var ValueTree, source: ValueTree, undoManager: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.copyPropertiesFrom(@)".}
proc copyPropertiesAndChildrenFrom*(this: var ValueTree, source: ValueTree, undoManager: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.copyPropertiesAndChildrenFrom(@)".}
proc getType*(this: ValueTree): int {.header: juce_data_structures, importcpp: "#.getType()".}
proc hasType*(this: ValueTree, typeName: int): bool {.header: juce_data_structures, importcpp: "#.hasType(@)".}
proc getProperty*(this: ValueTree, name: int): int {.header: juce_data_structures, importcpp: "#.getProperty(@)".}
proc getProperty*(this: ValueTree, name: int, defaultReturnValue: int): int {.header: juce_data_structures, importcpp: "#.getProperty(@)".}
proc getPropertyPointer*(this: ValueTree, name: int): ptr int {.header: juce_data_structures, importcpp: "#.getPropertyPointer(@)".}
proc `ValueTree[]`*(this: ValueTree, name: int): int {.header: juce_data_structures, importcpp: "#.operator[](@)".}
proc setProperty*(this: var ValueTree, name: int, newValue: int, undoManager: ptr UndoManager): var ValueTree {.header: juce_data_structures, importcpp: "#.setProperty(@)".}
proc hasProperty*(this: ValueTree, name: int): bool {.header: juce_data_structures, importcpp: "#.hasProperty(@)".}
proc removeProperty*(this: var ValueTree, name: int, undoManager: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.removeProperty(@)".}
proc removeAllProperties*(this: var ValueTree, undoManager: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.removeAllProperties(@)".}
proc getNumProperties*(this: ValueTree): int {.header: juce_data_structures, importcpp: "#.getNumProperties()".}
proc getPropertyName*(this: ValueTree, index: int): int {.header: juce_data_structures, importcpp: "#.getPropertyName(@)".}
proc getPropertyAsValue*(this: var ValueTree, name: int, undoManager: ptr UndoManager, shouldUpdateSynchronously: bool = false): Value {.header: juce_data_structures, importcpp: "#.getPropertyAsValue(@)".}
proc getNumChildren*(this: ValueTree): int {.header: juce_data_structures, importcpp: "#.getNumChildren()".}
proc getChild*(this: ValueTree, index: int): ValueTree {.header: juce_data_structures, importcpp: "#.getChild(@)".}
proc getChildWithName*(this: ValueTree, `type`: int): ValueTree {.header: juce_data_structures, importcpp: "#.getChildWithName(@)".}
proc getOrCreateChildWithName*(this: var ValueTree, `type`: int, undoManager: ptr UndoManager): ValueTree {.header: juce_data_structures, importcpp: "#.getOrCreateChildWithName(@)".}
proc getChildWithProperty*(this: ValueTree, propertyName: int, propertyValue: int): ValueTree {.header: juce_data_structures, importcpp: "#.getChildWithProperty(@)".}
proc addChild*(this: var ValueTree, child: ValueTree, index: int, undoManager: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.addChild(@)".}
proc appendChild*(this: var ValueTree, child: ValueTree, undoManager: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.appendChild(@)".}
proc removeChild*(this: var ValueTree, child: ValueTree, undoManager: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.removeChild(@)".}
proc removeChild*(this: var ValueTree, childIndex: int, undoManager: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.removeChild(@)".}
proc removeAllChildren*(this: var ValueTree, undoManager: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.removeAllChildren(@)".}
proc moveChild*(this: var ValueTree, currentIndex: int, newIndex: int, undoManager: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.moveChild(@)".}
proc isAChildOf*(this: ValueTree, possibleParent: ValueTree): bool {.header: juce_data_structures, importcpp: "#.isAChildOf(@)".}
proc indexOf*(this: ValueTree, child: ValueTree): int {.header: juce_data_structures, importcpp: "#.indexOf(@)".}
proc getParent*(this: ValueTree): ValueTree {.header: juce_data_structures, importcpp: "#.getParent()".}
proc getRoot*(this: ValueTree): ValueTree {.header: juce_data_structures, importcpp: "#.getRoot()".}
proc getSibling*(this: ValueTree, delta: int): ValueTree {.header: juce_data_structures, importcpp: "#.getSibling(@)".}
# proc begin*(this: ValueTree): ValueTreeIterator {.header: juce_data_structures, importcpp: "#.begin()".}
# proc `end`*(this: ValueTree): ValueTreeIterator {.header: juce_data_structures, importcpp: "#.end()".}
proc createXml*(this: ValueTree): int {.header: juce_data_structures, importcpp: "#.createXml()".}
# proc toXmlString*(this: ValueTree, format: int = {}): int {.header: juce_data_structures, importcpp: "#.toXmlString(@)".}
proc writeToStream*(this: ValueTree, output: var int) {.header: juce_data_structures, importcpp: "#.writeToStream(@)".}
proc addListener*(this: var ValueTree, listener: ptr ValueTreeListener) {.header: juce_data_structures, importcpp: "#.addListener(@)".}
proc removeListener*(this: var ValueTree, listener: ptr ValueTreeListener) {.header: juce_data_structures, importcpp: "#.removeListener(@)".}
proc setPropertyExcludingListener*(this: var ValueTree, listenerToExclude: ptr ValueTreeListener, name: int, newValue: int, undoManager: ptr UndoManager): var ValueTree {.header: juce_data_structures, importcpp: "#.setPropertyExcludingListener(@)".}
proc sendPropertyChangeMessage*(this: var ValueTree, property: int) {.header: juce_data_structures, importcpp: "#.sendPropertyChangeMessage(@)".}
proc getReferenceCount*(this: ValueTree): int {.header: juce_data_structures, importcpp: "#.getReferenceCount()".}
proc createListOfChildren*(this: ValueTree, arg1: var int) {.header: juce_data_structures, importcpp: "#.createListOfChildren(@)".}
proc reorderChildren*(this: var ValueTree, arg1: int, arg2: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.reorderChildren(@)".}

type
  ValueTreeSynchroniser* {.header: juce_data_structures, importcpp: "juce::ValueTreeSynchroniser".} = object

proc stateChanged*(this: var ValueTreeSynchroniser, encodedChange: constPointer, encodedChangeSize: int) {.header: juce_data_structures, importcpp: "#.stateChanged(@)".}
proc sendFullSyncCallback*(this: var ValueTreeSynchroniser) {.header: juce_data_structures, importcpp: "#.sendFullSyncCallback()".}
proc getRoot*(this: var ValueTreeSynchroniser): ValueTree {.header: juce_data_structures, importcpp: "#.getRoot()".}

type
  ValueWithDefault* {.header: juce_data_structures, importcpp: "juce::ValueWithDefault".} = object

proc get*(this: ValueWithDefault): int {.header: juce_data_structures, importcpp: "#.get()".}
proc getPropertyAsValue*(this: var ValueWithDefault): Value {.header: juce_data_structures, importcpp: "#.getPropertyAsValue()".}
proc getDefault*(this: ValueWithDefault): int {.header: juce_data_structures, importcpp: "#.getDefault()".}
proc setDefault*(this: var ValueWithDefault, newDefault: int) {.header: juce_data_structures, importcpp: "#.setDefault(@)".}
proc isUsingDefault*(this: ValueWithDefault): bool {.header: juce_data_structures, importcpp: "#.isUsingDefault()".}
proc resetToDefault*(this: var ValueWithDefault) {.header: juce_data_structures, importcpp: "#.resetToDefault()".}
proc `ValueWithDefault=`*(this: var ValueWithDefault, newValue: int): var ValueWithDefault {.header: juce_data_structures, importcpp: "#.operator=(@)".}
proc setValue*(this: var ValueWithDefault, newValue: int, undoManagerToUse: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.setValue(@)".}
proc referTo*(this: var ValueWithDefault, tree: var ValueTree, property: int, um: ptr UndoManager) {.header: juce_data_structures, importcpp: "#.referTo(@)".}
proc referTo*(this: var ValueWithDefault, tree: var ValueTree, property: int, um: ptr UndoManager, defaultVal: int) {.header: juce_data_structures, importcpp: "#.referTo(@)".}
proc referTo*(this: var ValueWithDefault, tree: var ValueTree, property: int, um: ptr UndoManager, defaultVal: int, arrayDelimiter: int) {.header: juce_data_structures, importcpp: "#.referTo(@)".}
proc getValueTree*(this: var ValueWithDefault): var ValueTree {.header: juce_data_structures, importcpp: "#.getValueTree()".}
proc getPropertyID*(this: var ValueWithDefault): var int {.header: juce_data_structures, importcpp: "#.getPropertyID()".}
proc getUndoManager*(this: var ValueWithDefault): ptr UndoManager {.header: juce_data_structures, importcpp: "#.getUndoManager()".}
proc `ValueWithDefault=`*(this: var ValueWithDefault, other: ValueWithDefault): var ValueWithDefault {.header: juce_data_structures, importcpp: "#.operator=(@)".}

type
  PropertiesFile* {.header: juce_data_structures, importcpp: "juce::PropertiesFile".} = object
  PropertiesFileOptions* {.header: juce_data_structures, importcpp: "juce::PropertiesFile::Options".} = object

proc isValidFile*(this: PropertiesFile): bool {.header: juce_data_structures, importcpp: "#.isValidFile()".}
proc saveIfNeeded*(this: var PropertiesFile): bool {.header: juce_data_structures, importcpp: "#.saveIfNeeded()".}
proc save*(this: var PropertiesFile): bool {.header: juce_data_structures, importcpp: "#.save()".}
proc needsToBeSaved*(this: PropertiesFile): bool {.header: juce_data_structures, importcpp: "#.needsToBeSaved()".}
proc setNeedsToBeSaved*(this: var PropertiesFile, needsToBeSaved: bool) {.header: juce_data_structures, importcpp: "#.setNeedsToBeSaved(@)".}
proc reload*(this: var PropertiesFile): bool {.header: juce_data_structures, importcpp: "#.reload()".}
proc getFile*(this: PropertiesFile): int {.header: juce_data_structures, importcpp: "#.getFile()".}

type
  ApplicationProperties* {.header: juce_data_structures, importcpp: "juce::ApplicationProperties".} = object

# proc setStorageParameters*(this: var ApplicationProperties, options: PropertiesFile::Options) {.header: juce_data_structures, importcpp: "#.setStorageParameters(@)".}
# proc getStorageParameters*(this: ApplicationProperties): PropertiesFile::Options {.header: juce_data_structures, importcpp: "#.getStorageParameters()".}
proc getUserSettings*(this: var ApplicationProperties): ptr PropertiesFile {.header: juce_data_structures, importcpp: "#.getUserSettings()".}
proc getCommonSettings*(this: var ApplicationProperties, returnUserPropsIfReadOnly: bool): ptr PropertiesFile {.header: juce_data_structures, importcpp: "#.getCommonSettings(@)".}
proc saveIfNeeded*(this: var ApplicationProperties): bool {.header: juce_data_structures, importcpp: "#.saveIfNeeded()".}
proc closeFiles*(this: var ApplicationProperties) {.header: juce_data_structures, importcpp: "#.closeFiles()".}



include juce_data_structures_lifting

