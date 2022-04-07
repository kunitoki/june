import june_common
import juce_core
import juce_events
import juce_data_structures
import juce_graphics

const juce_gui_basics = "../../JUCE/modules/juce_gui_basics/juce_gui_basics.h"

type
  Component* {.header: juce_gui_basics, importcpp: "juce::Component", inheritable.} = object
  ComponentBailOutChecker* {.header: juce_gui_basics, importcpp: "juce::Component::BailOutChecker".} = object
  ComponentPositioner* {.header: juce_gui_basics, importcpp: "juce::Component::Positioner".} = object


type
  LookAndFeel* {.header: juce_gui_basics, importcpp: "juce::LookAndFeel".} = object
  LookAndFeelColourSetting* {.header: juce_gui_basics, importcpp: "juce::LookAndFeel::ColourSetting".} = object


type
  MouseInputSource* {.header: juce_gui_basics, importcpp: "juce::MouseInputSource".} = object


type
  MouseInputSourceInternal* {.header: juce_gui_basics, importcpp: "juce::MouseInputSourceInternal".} = object


type
  ComponentPeer* {.header: juce_gui_basics, importcpp: "juce::ComponentPeer".} = object
  ComponentPeerDragInfo* {.header: juce_gui_basics, importcpp: "juce::ComponentPeer::DragInfo".} = object
  ComponentPeerScaleFactorListener* {.header: juce_gui_basics, importcpp: "juce::ComponentPeer::ScaleFactorListener".} = object


type
  MouseEvent* {.header: juce_gui_basics, importcpp: "juce::MouseEvent".} = object


type
  MouseWheelDetails* {.header: juce_gui_basics, importcpp: "juce::MouseWheelDetails".} = object


type
  PenDetails* {.header: juce_gui_basics, importcpp: "juce::PenDetails".} = object


type
  ToggleButton* {.header: juce_gui_basics, importcpp: "juce::ToggleButton".} = object


type
  TextButton* {.header: juce_gui_basics, importcpp: "juce::TextButton".} = object


type
  TopLevelWindow* {.header: juce_gui_basics, importcpp: "juce::TopLevelWindow".} = object of Component


type
  AlertWindow* {.header: juce_gui_basics, importcpp: "juce::AlertWindow".} = object
  AlertWindowLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::AlertWindow::LookAndFeelMethods".} = object


type
  TextLayout* {.header: juce_gui_basics, importcpp: "juce::TextLayout".} = object


type
  ScrollBar* {.header: juce_gui_basics, importcpp: "juce::ScrollBar".} = object
  ScrollBarListener* {.header: juce_gui_basics, importcpp: "juce::ScrollBar::Listener".} = object
  ScrollBarLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::ScrollBar::LookAndFeelMethods".} = object


type
  ComboBox* {.header: juce_gui_basics, importcpp: "juce::ComboBox".} = object
  ComboBoxListener* {.header: juce_gui_basics, importcpp: "juce::ComboBox::Listener".} = object
  ComboBoxLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::ComboBox::LookAndFeelMethods".} = object


type
  Button* {.header: juce_gui_basics, importcpp: "juce::Button".} = object
  ButtonListener* {.header: juce_gui_basics, importcpp: "juce::Button::Listener".} = object
  ButtonLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::Button::LookAndFeelMethods".} = object


type
  FilenameComponent* {.header: juce_gui_basics, importcpp: "juce::FilenameComponent".} = object
  FilenameComponentLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::FilenameComponent::LookAndFeelMethods".} = object


type
  ResizableWindow* {.header: juce_gui_basics, importcpp: "juce::ResizableWindow".} = object of TopLevelWindow
  ResizableWindowLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::ResizableWindow::LookAndFeelMethods".} = object


type
  MenuBarComponent* {.header: juce_gui_basics, importcpp: "juce::MenuBarComponent".} = object


type
  GlyphArrangement* {.header: juce_gui_basics, importcpp: "juce::GlyphArrangement".} = object


type
  TableHeaderComponent* {.header: juce_gui_basics, importcpp: "juce::TableHeaderComponent".} = object
  TableHeaderComponentListener* {.header: juce_gui_basics, importcpp: "juce::TableHeaderComponent::Listener".} = object
  TableHeaderComponentLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::TableHeaderComponent::LookAndFeelMethods".} = object
  TableHeaderComponentColumnInfo* {.header: juce_gui_basics, importcpp: "juce::TableHeaderComponent::ColumnInfo".} = object


type
  Toolbar* {.header: juce_gui_basics, importcpp: "juce::Toolbar".} = object
  ToolbarLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::Toolbar::LookAndFeelMethods".} = object


type
  PopupMenu* {.header: juce_gui_basics, importcpp: "juce::PopupMenu".} = object
  PopupMenuCustomComponent* {.header: juce_gui_basics, importcpp: "juce::PopupMenu::CustomComponent".} = object
  PopupMenuCustomCallback* {.header: juce_gui_basics, importcpp: "juce::PopupMenu::CustomCallback".} = object
  PopupMenuItem* {.header: juce_gui_basics, importcpp: "juce::PopupMenu::Item".} = object
  PopupMenuOptions* {.header: juce_gui_basics, importcpp: "juce::PopupMenu::Options".} = object
  PopupMenuMenuItemIterator* {.header: juce_gui_basics, importcpp: "juce::PopupMenu::MenuItemIterator".} = object
  #PopupMenuCustomComponent* {.header: juce_gui_basics, importcpp: "juce::PopupMenu::CustomComponent".} = object
  #PopupMenuCustomCallback* {.header: juce_gui_basics, importcpp: "juce::PopupMenu::CustomCallback".} = object
  PopupMenuLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::PopupMenu::LookAndFeelMethods".} = object


type
  ProgressBar* {.header: juce_gui_basics, importcpp: "juce::ProgressBar".} = object
  ProgressBarLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::ProgressBar::LookAndFeelMethods".} = object


type
  FileBrowserComponent* {.header: juce_gui_basics, importcpp: "juce::FileBrowserComponent".} = object
  FileBrowserComponentLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::FileBrowserComponent::LookAndFeelMethods".} = object


type
  DirectoryContentsDisplayComponent* {.header: juce_gui_basics, importcpp: "juce::DirectoryContentsDisplayComponent".} = object


type
  FilePreviewComponent* {.header: juce_gui_basics, importcpp: "juce::FilePreviewComponent".} = object


type
  CallOutBox* {.header: juce_gui_basics, importcpp: "juce::CallOutBox".} = object
  CallOutBoxLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::CallOutBox::LookAndFeelMethods".} = object


type
  Drawable* {.header: juce_gui_basics, importcpp: "juce::Drawable".} = object


type
  DrawablePath* {.header: juce_gui_basics, importcpp: "juce::DrawablePath".} = object


type
  DrawableComposite* {.header: juce_gui_basics, importcpp: "juce::DrawableComposite".} = object


type
  CaretComponent* {.header: juce_gui_basics, importcpp: "juce::CaretComponent".} = object


type
  KeyPressMappingSet* {.header: juce_gui_basics, importcpp: "juce::KeyPressMappingSet".} = object
  KeyPressMappingSetCommandMapping* {.header: juce_gui_basics, importcpp: "juce::KeyPressMappingSet::CommandMapping".} = object
  KeyPressMappingSetKeyPressTime* {.header: juce_gui_basics, importcpp: "juce::KeyPressMappingSet::KeyPressTime".} = object


type
  ApplicationCommandManagerListener* {.header: juce_gui_basics, importcpp: "juce::ApplicationCommandManagerListener".} = object


type
  DrawableButton* {.header: juce_gui_basics, importcpp: "juce::DrawableButton".} = object


type
  Displays* {.header: juce_gui_basics, importcpp: "juce::Displays".} = object
  DisplaysDisplay* {.header: juce_gui_basics, importcpp: "juce::Displays::Display".} = object


type
  FlexBox* {.header: juce_gui_basics, importcpp: "juce::FlexBox".} = object


type
  Grid* {.header: juce_gui_basics, importcpp: "juce::Grid".} = object
  GridPx* {.header: juce_gui_basics, importcpp: "juce::Grid::Px".} = object
  GridFr* {.header: juce_gui_basics, importcpp: "juce::Grid::Fr".} = object
  GridTrackInfo* {.header: juce_gui_basics, importcpp: "juce::Grid::TrackInfo".} = object


type
  MouseCursor* {.header: juce_gui_basics, importcpp: "juce::MouseCursor".} = object

proc `MouseCursor=`*(this: var MouseCursor, arg1: MouseCursor): var MouseCursor {.header: juce_gui_basics, importcpp: "#.operator=(@)".}
proc `MouseCursor=`*(this: var MouseCursor, arg1: lent MouseCursor): var MouseCursor {.header: juce_gui_basics, importcpp: "#.operator=(@)".}
proc `MouseCursor==`*(this: MouseCursor, arg1: MouseCursor): bool {.header: juce_gui_basics, importcpp: "#.operator==(@)".}
proc `MouseCursor!=`*(this: MouseCursor, arg1: MouseCursor): bool {.header: juce_gui_basics, importcpp: "#.operator!=(@)".}
# proc `MouseCursor==`*(this: MouseCursor, `type`: juce::MouseCursor::StandardCursorType): bool {.header: juce_gui_basics, importcpp: "#.operator==(@)".}
# proc `MouseCursor!=`*(this: MouseCursor, `type`: juce::MouseCursor::StandardCursorType): bool {.header: juce_gui_basics, importcpp: "#.operator!=(@)".}

type
  MouseListener* {.header: juce_gui_basics, importcpp: "juce::MouseListener".} = object

proc mouseMove*(this: var MouseListener, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseMove(@)".}
proc mouseEnter*(this: var MouseListener, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseEnter(@)".}
proc mouseExit*(this: var MouseListener, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseExit(@)".}
proc mouseDown*(this: var MouseListener, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDown(@)".}
proc mouseDrag*(this: var MouseListener, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDrag(@)".}
proc mouseUp*(this: var MouseListener, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseUp(@)".}
proc mouseDoubleClick*(this: var MouseListener, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDoubleClick(@)".}
proc mouseWheelMove*(this: var MouseListener, event: MouseEvent, wheel: MouseWheelDetails) {.header: juce_gui_basics, importcpp: "#.mouseWheelMove(@)".}
proc mouseMagnify*(this: var MouseListener, event: MouseEvent, scaleFactor: float) {.header: juce_gui_basics, importcpp: "#.mouseMagnify(@)".}

type
  ModifierKeys* {.header: juce_gui_basics, importcpp: "juce::ModifierKeys".} = object

proc `ModifierKeys=`*(this: var ModifierKeys, arg1: ModifierKeys): var ModifierKeys {.header: juce_gui_basics, importcpp: "#.operator=(@)".}
proc isCommandDown*(this: ModifierKeys): bool {.header: juce_gui_basics, importcpp: "#.isCommandDown()".}
proc isPopupMenu*(this: ModifierKeys): bool {.header: juce_gui_basics, importcpp: "#.isPopupMenu()".}
proc isLeftButtonDown*(this: ModifierKeys): bool {.header: juce_gui_basics, importcpp: "#.isLeftButtonDown()".}
proc isRightButtonDown*(this: ModifierKeys): bool {.header: juce_gui_basics, importcpp: "#.isRightButtonDown()".}
proc isMiddleButtonDown*(this: ModifierKeys): bool {.header: juce_gui_basics, importcpp: "#.isMiddleButtonDown()".}
proc isAnyMouseButtonDown*(this: ModifierKeys): bool {.header: juce_gui_basics, importcpp: "#.isAnyMouseButtonDown()".}
proc isAnyModifierKeyDown*(this: ModifierKeys): bool {.header: juce_gui_basics, importcpp: "#.isAnyModifierKeyDown()".}
proc isShiftDown*(this: ModifierKeys): bool {.header: juce_gui_basics, importcpp: "#.isShiftDown()".}
proc isCtrlDown*(this: ModifierKeys): bool {.header: juce_gui_basics, importcpp: "#.isCtrlDown()".}
proc isAltDown*(this: ModifierKeys): bool {.header: juce_gui_basics, importcpp: "#.isAltDown()".}
proc withOnlyMouseButtons*(this: ModifierKeys): ModifierKeys {.header: juce_gui_basics, importcpp: "#.withOnlyMouseButtons()".}
proc withoutMouseButtons*(this: ModifierKeys): ModifierKeys {.header: juce_gui_basics, importcpp: "#.withoutMouseButtons()".}
proc `ModifierKeys==`*(this: ModifierKeys, other: ModifierKeys): bool {.header: juce_gui_basics, importcpp: "#.operator==(@)".}
proc `ModifierKeys!=`*(this: ModifierKeys, other: ModifierKeys): bool {.header: juce_gui_basics, importcpp: "#.operator!=(@)".}
proc getRawFlags*(this: ModifierKeys): int {.header: juce_gui_basics, importcpp: "#.getRawFlags()".}
proc withoutFlags*(this: ModifierKeys, rawFlagsToClear: int): ModifierKeys {.header: juce_gui_basics, importcpp: "#.withoutFlags(@)".}
proc withFlags*(this: ModifierKeys, rawFlagsToSet: int): ModifierKeys {.header: juce_gui_basics, importcpp: "#.withFlags(@)".}
proc testFlags*(this: ModifierKeys, flagsToTest: int): bool {.header: juce_gui_basics, importcpp: "#.testFlags(@)".}
proc getNumMouseButtonsDown*(this: ModifierKeys): int {.header: juce_gui_basics, importcpp: "#.getNumMouseButtonsDown()".}

proc `MouseInputSource=`*(this: var MouseInputSource, arg1: MouseInputSource): var MouseInputSource {.header: juce_gui_basics, importcpp: "#.operator=(@)".}
proc `MouseInputSource==`*(this: MouseInputSource, other: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.operator==(@)".}
proc `MouseInputSource!=`*(this: MouseInputSource, other: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.operator!=(@)".}
# proc getType*(this: MouseInputSource): MouseInputSource::InputSourceType {.header: juce_gui_basics, importcpp: "#.getType()".}
proc isMouse*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.isMouse()".}
proc isTouch*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.isTouch()".}
proc isPen*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.isPen()".}
proc canHover*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.canHover()".}
proc hasMouseWheel*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.hasMouseWheel()".}
proc getIndex*(this: MouseInputSource): int {.header: juce_gui_basics, importcpp: "#.getIndex()".}
proc isDragging*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.isDragging()".}
proc getScreenPosition*(this: MouseInputSource): int {.header: juce_gui_basics, importcpp: "#.getScreenPosition()".}
proc getRawScreenPosition*(this: MouseInputSource): int {.header: juce_gui_basics, importcpp: "#.getRawScreenPosition()".}
proc getCurrentModifiers*(this: MouseInputSource): ModifierKeys {.header: juce_gui_basics, importcpp: "#.getCurrentModifiers()".}
proc getCurrentPressure*(this: MouseInputSource): float {.header: juce_gui_basics, importcpp: "#.getCurrentPressure()".}
proc getCurrentOrientation*(this: MouseInputSource): float {.header: juce_gui_basics, importcpp: "#.getCurrentOrientation()".}
proc getCurrentRotation*(this: MouseInputSource): float {.header: juce_gui_basics, importcpp: "#.getCurrentRotation()".}
proc getCurrentTilt*(this: MouseInputSource, tiltX: bool): float {.header: juce_gui_basics, importcpp: "#.getCurrentTilt(@)".}
proc isPressureValid*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.isPressureValid()".}
proc isOrientationValid*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.isOrientationValid()".}
proc isRotationValid*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.isRotationValid()".}
proc isTiltValid*(this: MouseInputSource, tiltX: bool): bool {.header: juce_gui_basics, importcpp: "#.isTiltValid(@)".}
proc getComponentUnderMouse*(this: MouseInputSource): ptr Component {.header: juce_gui_basics, importcpp: "#.getComponentUnderMouse()".}
proc triggerFakeMove*(this: MouseInputSource) {.header: juce_gui_basics, importcpp: "#.triggerFakeMove()".}
proc getNumberOfMultipleClicks*(this: MouseInputSource): int {.header: juce_gui_basics, importcpp: "#.getNumberOfMultipleClicks()".}
proc getLastMouseDownTime*(this: MouseInputSource): int {.header: juce_gui_basics, importcpp: "#.getLastMouseDownTime()".}
proc getLastMouseDownPosition*(this: MouseInputSource): int {.header: juce_gui_basics, importcpp: "#.getLastMouseDownPosition()".}
proc isLongPressOrDrag*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.isLongPressOrDrag()".}
proc hasMovedSignificantlySincePressed*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.hasMovedSignificantlySincePressed()".}
proc hasMouseCursor*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.hasMouseCursor()".}
proc showMouseCursor*(this: var MouseInputSource, cursor: MouseCursor) {.header: juce_gui_basics, importcpp: "#.showMouseCursor(@)".}
proc hideCursor*(this: var MouseInputSource) {.header: juce_gui_basics, importcpp: "#.hideCursor()".}
proc revealCursor*(this: var MouseInputSource) {.header: juce_gui_basics, importcpp: "#.revealCursor()".}
proc forceMouseCursorUpdate*(this: var MouseInputSource) {.header: juce_gui_basics, importcpp: "#.forceMouseCursorUpdate()".}
proc canDoUnboundedMovement*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.canDoUnboundedMovement()".}
proc enableUnboundedMouseMovement*(this: MouseInputSource, isEnabled: bool, keepCursorVisibleUntilOffscreen: bool = false) {.header: juce_gui_basics, importcpp: "#.enableUnboundedMouseMovement(@)".}
proc isUnboundedMouseMovementEnabled*(this: MouseInputSource): bool {.header: juce_gui_basics, importcpp: "#.isUnboundedMouseMovementEnabled()".}
proc setScreenPosition*(this: var MouseInputSource, newPosition: int) {.header: juce_gui_basics, importcpp: "#.setScreenPosition(@)".}

proc getMouseDownX*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getMouseDownX()".}
proc getMouseDownY*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getMouseDownY()".}
proc getMouseDownPosition*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getMouseDownPosition()".}
proc getDistanceFromDragStart*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getDistanceFromDragStart()".}
proc getDistanceFromDragStartX*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getDistanceFromDragStartX()".}
proc getDistanceFromDragStartY*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getDistanceFromDragStartY()".}
proc getOffsetFromDragStart*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getOffsetFromDragStart()".}
proc mouseWasDraggedSinceMouseDown*(this: MouseEvent): bool {.header: juce_gui_basics, importcpp: "#.mouseWasDraggedSinceMouseDown()".}
proc mouseWasClicked*(this: MouseEvent): bool {.header: juce_gui_basics, importcpp: "#.mouseWasClicked()".}
proc getNumberOfClicks*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getNumberOfClicks()".}
proc getLengthOfMousePress*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getLengthOfMousePress()".}
proc isPressureValid*(this: MouseEvent): bool {.header: juce_gui_basics, importcpp: "#.isPressureValid()".}
proc isOrientationValid*(this: MouseEvent): bool {.header: juce_gui_basics, importcpp: "#.isOrientationValid()".}
proc isRotationValid*(this: MouseEvent): bool {.header: juce_gui_basics, importcpp: "#.isRotationValid()".}
proc isTiltValid*(this: MouseEvent, tiltX: bool): bool {.header: juce_gui_basics, importcpp: "#.isTiltValid(@)".}
proc getPosition*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getPosition()".}
proc getScreenX*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getScreenX()".}
proc getScreenY*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getScreenY()".}
proc getScreenPosition*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getScreenPosition()".}
proc getMouseDownScreenX*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getMouseDownScreenX()".}
proc getMouseDownScreenY*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getMouseDownScreenY()".}
proc getMouseDownScreenPosition*(this: MouseEvent): int {.header: juce_gui_basics, importcpp: "#.getMouseDownScreenPosition()".}
proc getEventRelativeTo*(this: MouseEvent, newComponent: ptr Component): MouseEvent {.header: juce_gui_basics, importcpp: "#.getEventRelativeTo(@)".}
proc withNewPosition*(this: MouseEvent, newPosition: int): MouseEvent {.header: juce_gui_basics, importcpp: "#.withNewPosition(@)".}
# proc withNewPosition*(this: MouseEvent, newPosition: int): MouseEvent {.header: juce_gui_basics, importcpp: "#.withNewPosition(@)".}



type
  KeyPress* {.header: juce_gui_basics, importcpp: "juce::KeyPress".} = object

proc `KeyPress=`*(this: var KeyPress, arg1: KeyPress): var KeyPress {.header: juce_gui_basics, importcpp: "#.operator=(@)".}
proc `KeyPress==`*(this: KeyPress, other: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.operator==(@)".}
proc `KeyPress!=`*(this: KeyPress, other: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.operator!=(@)".}
proc `KeyPress==`*(this: KeyPress, keyCode: int): bool {.header: juce_gui_basics, importcpp: "#.operator==(@)".}
proc `KeyPress!=`*(this: KeyPress, keyCode: int): bool {.header: juce_gui_basics, importcpp: "#.operator!=(@)".}
proc isValid*(this: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.isValid()".}
proc getKeyCode*(this: KeyPress): int {.header: juce_gui_basics, importcpp: "#.getKeyCode()".}
proc getModifiers*(this: KeyPress): ModifierKeys {.header: juce_gui_basics, importcpp: "#.getModifiers()".}
proc getTextCharacter*(this: KeyPress): int {.header: juce_gui_basics, importcpp: "#.getTextCharacter()".}
proc isKeyCode*(this: KeyPress, keyCodeToCompare: int): bool {.header: juce_gui_basics, importcpp: "#.isKeyCode(@)".}
proc getTextDescription*(this: KeyPress): int {.header: juce_gui_basics, importcpp: "#.getTextDescription()".}
proc getTextDescriptionWithIcons*(this: KeyPress): int {.header: juce_gui_basics, importcpp: "#.getTextDescriptionWithIcons()".}
proc isCurrentlyDown*(this: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.isCurrentlyDown()".}

type
  KeyListener* {.header: juce_gui_basics, importcpp: "juce::KeyListener".} = object

proc keyPressed*(this: var KeyListener, key: KeyPress, originatingComponent: ptr Component): bool {.header: juce_gui_basics, importcpp: "#.keyPressed(@)".}
proc keyStateChanged*(this: var KeyListener, isKeyDown: bool, originatingComponent: ptr Component): bool {.header: juce_gui_basics, importcpp: "#.keyStateChanged(@)".}

type
  KeyboardFocusTraverser* {.header: juce_gui_basics, importcpp: "juce::KeyboardFocusTraverser".} = object

proc getNextComponent*(this: var KeyboardFocusTraverser, current: ptr Component): ptr Component {.header: juce_gui_basics, importcpp: "#.getNextComponent(@)".}
proc getPreviousComponent*(this: var KeyboardFocusTraverser, current: ptr Component): ptr Component {.header: juce_gui_basics, importcpp: "#.getPreviousComponent(@)".}
proc getDefaultComponent*(this: var KeyboardFocusTraverser, parentComponent: ptr Component): ptr Component {.header: juce_gui_basics, importcpp: "#.getDefaultComponent(@)".}

type
  ModalComponentManager* {.header: juce_gui_basics, importcpp: "juce::ModalComponentManager".} = object
  ModalComponentManagerCallback* {.header: juce_gui_basics, importcpp: "juce::ModalComponentManager::Callback".} = object

proc getModalComponent*(this: ModalComponentManager, index: int): ptr Component {.header: juce_gui_basics, importcpp: "#.getModalComponent(@)".}
proc isModal*(this: ModalComponentManager, component: ptr Component): bool {.header: juce_gui_basics, importcpp: "#.isModal(@)".}
proc isFrontModalComponent*(this: ModalComponentManager, component: ptr Component): bool {.header: juce_gui_basics, importcpp: "#.isFrontModalComponent(@)".}
proc attachCallback*(this: var ModalComponentManager, component: ptr Component, callback: ptr ModalComponentManagerCallback) {.header: juce_gui_basics, importcpp: "#.attachCallback(@)".}
proc bringModalComponentsToFront*(this: var ModalComponentManager, topOneShouldGrabFocus: bool = true) {.header: juce_gui_basics, importcpp: "#.bringModalComponentsToFront(@)".}
proc cancelAllModalComponents*(this: var ModalComponentManager): bool {.header: juce_gui_basics, importcpp: "#.cancelAllModalComponents()".}

type
  ModalCallbackFunction* {.header: juce_gui_basics, importcpp: "juce::ModalCallbackFunction".} = object


type
  ComponentListener* {.header: juce_gui_basics, importcpp: "juce::ComponentListener".} = object

proc componentMovedOrResized*(this: var ComponentListener, component: var Component, wasMoved: bool, wasResized: bool) {.header: juce_gui_basics, importcpp: "#.componentMovedOrResized(@)".}
proc componentBroughtToFront*(this: var ComponentListener, component: var Component) {.header: juce_gui_basics, importcpp: "#.componentBroughtToFront(@)".}
proc componentVisibilityChanged*(this: var ComponentListener, component: var Component) {.header: juce_gui_basics, importcpp: "#.componentVisibilityChanged(@)".}
proc componentChildrenChanged*(this: var ComponentListener, component: var Component) {.header: juce_gui_basics, importcpp: "#.componentChildrenChanged(@)".}
proc componentParentHierarchyChanged*(this: var ComponentListener, component: var Component) {.header: juce_gui_basics, importcpp: "#.componentParentHierarchyChanged(@)".}
proc componentNameChanged*(this: var ComponentListener, component: var Component) {.header: juce_gui_basics, importcpp: "#.componentNameChanged(@)".}
proc componentBeingDeleted*(this: var ComponentListener, component: var Component) {.header: juce_gui_basics, importcpp: "#.componentBeingDeleted(@)".}
proc componentEnablementChanged*(this: var ComponentListener, component: var Component) {.header: juce_gui_basics, importcpp: "#.componentEnablementChanged(@)".}

type
  CachedComponentImage* {.header: juce_gui_basics, importcpp: "juce::CachedComponentImage".} = object

proc paint*(this: var CachedComponentImage, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc invalidateAll*(this: var CachedComponentImage): bool {.header: juce_gui_basics, importcpp: "#.invalidateAll()".}
proc invalidate*(this: var CachedComponentImage, area: int): bool {.header: juce_gui_basics, importcpp: "#.invalidate(@)".}
proc releaseResources*(this: var CachedComponentImage) {.header: juce_gui_basics, importcpp: "#.releaseResources()".}

proc getName*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getName()".}
proc setName*(this: var Component, newName: int) {.header: juce_gui_basics, importcpp: "#.setName(@)".}
proc getComponentID*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getComponentID()".}
proc setComponentID*(this: var Component, newID: int) {.header: juce_gui_basics, importcpp: "#.setComponentID(@)".}
proc setVisible*(this: var Component, shouldBeVisible: bool) {.header: juce_gui_basics, importcpp: "#.setVisible(@)".}
proc isVisible*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.isVisible()".}
proc visibilityChanged*(this: var Component) {.header: juce_gui_basics, importcpp: "#.visibilityChanged()".}
proc isShowing*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.isShowing()".}
proc addToDesktop*(this: var Component, windowStyleFlags: int, nativeWindowToAttachTo: pointer = nil) {.header: juce_gui_basics, importcpp: "#.addToDesktop(@)".}
proc removeFromDesktop*(this: var Component) {.header: juce_gui_basics, importcpp: "#.removeFromDesktop()".}
proc isOnDesktop*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.isOnDesktop()".}
proc getPeer*(this: Component): ptr ComponentPeer {.header: juce_gui_basics, importcpp: "#.getPeer()".}
proc userTriedToCloseWindow*(this: var Component) {.header: juce_gui_basics, importcpp: "#.userTriedToCloseWindow()".}
proc minimisationStateChanged*(this: var Component, isNowMinimised: bool) {.header: juce_gui_basics, importcpp: "#.minimisationStateChanged(@)".}
proc getDesktopScaleFactor*(this: Component): float {.header: juce_gui_basics, importcpp: "#.getDesktopScaleFactor()".}
proc toFront*(this: var Component, shouldAlsoGainFocus: bool) {.header: juce_gui_basics, importcpp: "#.toFront(@)".}
proc toBack*(this: var Component) {.header: juce_gui_basics, importcpp: "#.toBack()".}
proc toBehind*(this: var Component, other: ptr Component) {.header: juce_gui_basics, importcpp: "#.toBehind(@)".}
proc setAlwaysOnTop*(this: var Component, shouldStayOnTop: bool) {.header: juce_gui_basics, importcpp: "#.setAlwaysOnTop(@)".}
proc isAlwaysOnTop*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.isAlwaysOnTop()".}
proc getX*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getX()".}
proc getY*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getY()".}
proc getWidth*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getWidth()".}
proc getHeight*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getHeight()".}
proc getRight*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getRight()".}
proc getPosition*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getPosition()".}
proc getBottom*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getBottom()".}
proc getBounds*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getBounds()".}
proc getLocalBounds*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getLocalBounds()".}
proc getBoundsInParent*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getBoundsInParent()".}
proc getScreenX*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getScreenX()".}
proc getScreenY*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getScreenY()".}
proc getScreenPosition*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getScreenPosition()".}
proc getScreenBounds*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getScreenBounds()".}
proc getLocalPoint*(this: Component, sourceComponent: ptr Component, pointRelativeToSourceComponent: int): int {.header: juce_gui_basics, importcpp: "#.getLocalPoint(@)".}
# proc getLocalPoint*(this: Component, sourceComponent: ptr Component, pointRelativeToSourceComponent: int): int {.header: juce_gui_basics, importcpp: "#.getLocalPoint(@)".}
proc getLocalArea*(this: Component, sourceComponent: ptr Component, areaRelativeToSourceComponent: int): int {.header: juce_gui_basics, importcpp: "#.getLocalArea(@)".}
# proc getLocalArea*(this: Component, sourceComponent: ptr Component, areaRelativeToSourceComponent: int): int {.header: juce_gui_basics, importcpp: "#.getLocalArea(@)".}
proc localPointToGlobal*(this: Component, localPoint: int): int {.header: juce_gui_basics, importcpp: "#.localPointToGlobal(@)".}
# proc localPointToGlobal*(this: Component, localPoint: int): int {.header: juce_gui_basics, importcpp: "#.localPointToGlobal(@)".}
proc localAreaToGlobal*(this: Component, localArea: int): int {.header: juce_gui_basics, importcpp: "#.localAreaToGlobal(@)".}
# proc localAreaToGlobal*(this: Component, localArea: int): int {.header: juce_gui_basics, importcpp: "#.localAreaToGlobal(@)".}
proc setTopLeftPosition*(this: var Component, x: int, y: int) {.header: juce_gui_basics, importcpp: "#.setTopLeftPosition(@)".}
proc setTopLeftPosition*(this: var Component, newTopLeftPosition: int) {.header: juce_gui_basics, importcpp: "#.setTopLeftPosition(@)".}
proc setTopRightPosition*(this: var Component, x: int, y: int) {.header: juce_gui_basics, importcpp: "#.setTopRightPosition(@)".}
proc setSize*(this: var Component, newWidth: int, newHeight: int) {.header: juce_gui_basics, importcpp: "#.setSize(@)".}
proc setBounds*(this: var Component, x: int, y: int, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.setBounds(@)".}
proc setBounds*(this: var Component, newBounds: int) {.header: juce_gui_basics, importcpp: "#.setBounds(@)".}
proc setBoundsRelative*(this: var Component, proportionalX: float, proportionalY: float, proportionalWidth: float, proportionalHeight: float) {.header: juce_gui_basics, importcpp: "#.setBoundsRelative(@)".}
proc setBoundsRelative*(this: var Component, proportionalArea: int) {.header: juce_gui_basics, importcpp: "#.setBoundsRelative(@)".}
proc setBoundsInset*(this: var Component, borders: int) {.header: juce_gui_basics, importcpp: "#.setBoundsInset(@)".}
proc setBoundsToFit*(this: var Component, targetArea: int, justification: int, onlyReduceInSize: bool) {.header: juce_gui_basics, importcpp: "#.setBoundsToFit(@)".}
proc setCentrePosition*(this: var Component, x: int, y: int) {.header: juce_gui_basics, importcpp: "#.setCentrePosition(@)".}
proc setCentrePosition*(this: var Component, newCentrePosition: int) {.header: juce_gui_basics, importcpp: "#.setCentrePosition(@)".}
proc setCentreRelative*(this: var Component, x: float, y: float) {.header: juce_gui_basics, importcpp: "#.setCentreRelative(@)".}
proc centreWithSize*(this: var Component, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.centreWithSize(@)".}
proc setTransform*(this: var Component, transform: int) {.header: juce_gui_basics, importcpp: "#.setTransform(@)".}
proc getTransform*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getTransform()".}
proc isTransformed*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.isTransformed()".}
proc proportionOfWidth*(this: Component, proportion: float): int {.header: juce_gui_basics, importcpp: "#.proportionOfWidth(@)".}
proc proportionOfHeight*(this: Component, proportion: float): int {.header: juce_gui_basics, importcpp: "#.proportionOfHeight(@)".}
proc getParentWidth*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getParentWidth()".}
proc getParentHeight*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getParentHeight()".}
proc getParentMonitorArea*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getParentMonitorArea()".}
proc getNumChildComponents*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getNumChildComponents()".}
proc getChildComponent*(this: Component, index: int): ptr Component {.header: juce_gui_basics, importcpp: "#.getChildComponent(@)".}
proc getIndexOfChildComponent*(this: Component, child: ptr Component): int {.header: juce_gui_basics, importcpp: "#.getIndexOfChildComponent(@)".}
proc getChildren*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getChildren()".}
proc findChildWithID*(this: Component, componentID: int): ptr Component {.header: juce_gui_basics, importcpp: "#.findChildWithID(@)".}
proc addChildComponent*(this: var Component, child: ptr Component, zOrder: int = -1) {.header: juce_gui_basics, importcpp: "#.addChildComponent(@)".}
proc addChildComponent*(this: var Component, child: var Component, zOrder: int = -1) {.header: juce_gui_basics, importcpp: "#.addChildComponent(@)".}
proc addAndMakeVisible*(this: var Component, child: ptr Component, zOrder: int = -1) {.header: juce_gui_basics, importcpp: "#.addAndMakeVisible(@)".}
proc addAndMakeVisible*(this: var Component, child: var Component, zOrder: int = -1) {.header: juce_gui_basics, importcpp: "#.addAndMakeVisible(@)".}
proc addChildAndSetID*(this: var Component, child: ptr Component, componentID: int) {.header: juce_gui_basics, importcpp: "#.addChildAndSetID(@)".}
proc removeChildComponent*(this: var Component, childToRemove: ptr Component) {.header: juce_gui_basics, importcpp: "#.removeChildComponent(@)".}
proc removeChildComponent*(this: var Component, childIndexToRemove: int): ptr Component {.header: juce_gui_basics, importcpp: "#.removeChildComponent(@)".}
proc removeAllChildren*(this: var Component) {.header: juce_gui_basics, importcpp: "#.removeAllChildren()".}
proc deleteAllChildren*(this: var Component) {.header: juce_gui_basics, importcpp: "#.deleteAllChildren()".}
proc getParentComponent*(this: Component): ptr Component {.header: juce_gui_basics, importcpp: "#.getParentComponent()".}
proc getTopLevelComponent*(this: Component): ptr Component {.header: juce_gui_basics, importcpp: "#.getTopLevelComponent()".}
proc isParentOf*(this: Component, possibleChild: ptr Component): bool {.header: juce_gui_basics, importcpp: "#.isParentOf(@)".}
proc parentHierarchyChanged*(this: var Component) {.header: juce_gui_basics, importcpp: "#.parentHierarchyChanged()".}
proc childrenChanged*(this: var Component) {.header: juce_gui_basics, importcpp: "#.childrenChanged()".}
proc hitTest*(this: var Component, x: int, y: int): bool {.header: juce_gui_basics, importcpp: "#.hitTest(@)".}
proc setInterceptsMouseClicks*(this: var Component, allowClicksOnThisComponent: bool, allowClicksOnChildComponents: bool) {.header: juce_gui_basics, importcpp: "#.setInterceptsMouseClicks(@)".}
proc getInterceptsMouseClicks*(this: Component, allowsClicksOnThisComponent: var bool, allowsClicksOnChildComponents: var bool) {.header: juce_gui_basics, importcpp: "#.getInterceptsMouseClicks(@)".}
proc contains*(this: var Component, localPoint: int): bool {.header: juce_gui_basics, importcpp: "#.contains(@)".}
proc reallyContains*(this: var Component, localPoint: int, returnTrueIfWithinAChild: bool): bool {.header: juce_gui_basics, importcpp: "#.reallyContains(@)".}
proc getComponentAt*(this: var Component, x: int, y: int): ptr Component {.header: juce_gui_basics, importcpp: "#.getComponentAt(@)".}
proc getComponentAt*(this: var Component, position: int): ptr Component {.header: juce_gui_basics, importcpp: "#.getComponentAt(@)".}
proc repaint*(this: var Component) {.header: juce_gui_basics, importcpp: "#.repaint()".}
proc repaint*(this: var Component, x: int, y: int, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.repaint(@)".}
proc repaint*(this: var Component, area: int) {.header: juce_gui_basics, importcpp: "#.repaint(@)".}
proc setBufferedToImage*(this: var Component, shouldBeBuffered: bool) {.header: juce_gui_basics, importcpp: "#.setBufferedToImage(@)".}
proc createComponentSnapshot*(this: var Component, areaToGrab: int, clipImageToComponentBounds: bool = true, scaleFactor: float = 1.0f): int {.header: juce_gui_basics, importcpp: "#.createComponentSnapshot(@)".}
proc paintEntireComponent*(this: var Component, context: var int, ignoreAlphaLevel: bool) {.header: juce_gui_basics, importcpp: "#.paintEntireComponent(@)".}
proc setPaintingIsUnclipped*(this: var Component, shouldPaintWithoutClipping: bool) {.header: juce_gui_basics, importcpp: "#.setPaintingIsUnclipped(@)".}
proc isPaintingUnclipped*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.isPaintingUnclipped()".}
proc setComponentEffect*(this: var Component, newEffect: ptr int) {.header: juce_gui_basics, importcpp: "#.setComponentEffect(@)".}
proc getComponentEffect*(this: Component): ptr int {.header: juce_gui_basics, importcpp: "#.getComponentEffect()".}
proc getLookAndFeel*(this: Component): var LookAndFeel {.header: juce_gui_basics, importcpp: "#.getLookAndFeel()".}
proc setLookAndFeel*(this: var Component, newLookAndFeel: ptr LookAndFeel) {.header: juce_gui_basics, importcpp: "#.setLookAndFeel(@)".}
proc lookAndFeelChanged*(this: var Component) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}
proc sendLookAndFeelChange*(this: var Component) {.header: juce_gui_basics, importcpp: "#.sendLookAndFeelChange()".}
proc setOpaque*(this: var Component, shouldBeOpaque: bool) {.header: juce_gui_basics, importcpp: "#.setOpaque(@)".}
proc isOpaque*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.isOpaque()".}
proc setBroughtToFrontOnMouseClick*(this: var Component, shouldBeBroughtToFront: bool) {.header: juce_gui_basics, importcpp: "#.setBroughtToFrontOnMouseClick(@)".}
proc isBroughtToFrontOnMouseClick*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.isBroughtToFrontOnMouseClick()".}
proc setWantsKeyboardFocus*(this: var Component, wantsFocus: bool) {.header: juce_gui_basics, importcpp: "#.setWantsKeyboardFocus(@)".}
proc getWantsKeyboardFocus*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.getWantsKeyboardFocus()".}
proc setMouseClickGrabsKeyboardFocus*(this: var Component, shouldGrabFocus: bool) {.header: juce_gui_basics, importcpp: "#.setMouseClickGrabsKeyboardFocus(@)".}
proc getMouseClickGrabsKeyboardFocus*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.getMouseClickGrabsKeyboardFocus()".}
proc grabKeyboardFocus*(this: var Component) {.header: juce_gui_basics, importcpp: "#.grabKeyboardFocus()".}
proc hasKeyboardFocus*(this: Component, trueIfChildIsFocused: bool): bool {.header: juce_gui_basics, importcpp: "#.hasKeyboardFocus(@)".}
proc moveKeyboardFocusToSibling*(this: var Component, moveToNext: bool) {.header: juce_gui_basics, importcpp: "#.moveKeyboardFocusToSibling(@)".}
proc createFocusTraverser*(this: var Component): ptr KeyboardFocusTraverser {.header: juce_gui_basics, importcpp: "#.createFocusTraverser()".}
proc getExplicitFocusOrder*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getExplicitFocusOrder()".}
proc setExplicitFocusOrder*(this: var Component, newFocusOrderIndex: int) {.header: juce_gui_basics, importcpp: "#.setExplicitFocusOrder(@)".}
proc setFocusContainer*(this: var Component, shouldBeFocusContainer: bool) {.header: juce_gui_basics, importcpp: "#.setFocusContainer(@)".}
proc isFocusContainer*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.isFocusContainer()".}
proc isEnabled*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.isEnabled()".}
proc setEnabled*(this: var Component, shouldBeEnabled: bool) {.header: juce_gui_basics, importcpp: "#.setEnabled(@)".}
proc enablementChanged*(this: var Component) {.header: juce_gui_basics, importcpp: "#.enablementChanged()".}
proc getAlpha*(this: Component): float {.header: juce_gui_basics, importcpp: "#.getAlpha()".}
proc setAlpha*(this: var Component, newAlpha: float) {.header: juce_gui_basics, importcpp: "#.setAlpha(@)".}
proc alphaChanged*(this: var Component) {.header: juce_gui_basics, importcpp: "#.alphaChanged()".}
proc setMouseCursor*(this: var Component, cursorType: MouseCursor) {.header: juce_gui_basics, importcpp: "#.setMouseCursor(@)".}
proc getMouseCursor*(this: var Component): MouseCursor {.header: juce_gui_basics, importcpp: "#.getMouseCursor()".}
proc updateMouseCursor*(this: Component) {.header: juce_gui_basics, importcpp: "#.updateMouseCursor()".}
proc paint*(this: var Component, g: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc paintOverChildren*(this: var Component, g: var int) {.header: juce_gui_basics, importcpp: "#.paintOverChildren(@)".}
proc mouseMove*(this: var Component, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseMove(@)".}
proc mouseEnter*(this: var Component, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseEnter(@)".}
proc mouseExit*(this: var Component, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseExit(@)".}
proc mouseDown*(this: var Component, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDown(@)".}
proc mouseDrag*(this: var Component, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDrag(@)".}
proc mouseUp*(this: var Component, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseUp(@)".}
proc mouseDoubleClick*(this: var Component, event: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDoubleClick(@)".}
proc mouseWheelMove*(this: var Component, event: MouseEvent, wheel: MouseWheelDetails) {.header: juce_gui_basics, importcpp: "#.mouseWheelMove(@)".}
proc mouseMagnify*(this: var Component, event: MouseEvent, scaleFactor: float) {.header: juce_gui_basics, importcpp: "#.mouseMagnify(@)".}
proc setRepaintsOnMouseActivity*(this: var Component, shouldRepaint: bool) {.header: juce_gui_basics, importcpp: "#.setRepaintsOnMouseActivity(@)".}
proc addMouseListener*(this: var Component, newListener: ptr MouseListener, wantsEventsForAllNestedChildComponents: bool) {.header: juce_gui_basics, importcpp: "#.addMouseListener(@)".}
proc removeMouseListener*(this: var Component, listenerToRemove: ptr MouseListener) {.header: juce_gui_basics, importcpp: "#.removeMouseListener(@)".}
proc addKeyListener*(this: var Component, newListener: ptr KeyListener) {.header: juce_gui_basics, importcpp: "#.addKeyListener(@)".}
proc removeKeyListener*(this: var Component, listenerToRemove: ptr KeyListener) {.header: juce_gui_basics, importcpp: "#.removeKeyListener(@)".}
proc keyPressed*(this: var Component, key: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.keyPressed(@)".}
proc keyStateChanged*(this: var Component, isKeyDown: bool): bool {.header: juce_gui_basics, importcpp: "#.keyStateChanged(@)".}
proc modifierKeysChanged*(this: var Component, modifiers: ModifierKeys) {.header: juce_gui_basics, importcpp: "#.modifierKeysChanged(@)".}
# proc focusGained*(this: var Component, cause: juce::Component::FocusChangeType) {.header: juce_gui_basics, importcpp: "#.focusGained(@)".}
# proc focusLost*(this: var Component, cause: juce::Component::FocusChangeType) {.header: juce_gui_basics, importcpp: "#.focusLost(@)".}
# proc focusOfChildComponentChanged*(this: var Component, cause: juce::Component::FocusChangeType) {.header: juce_gui_basics, importcpp: "#.focusOfChildComponentChanged(@)".}
proc isMouseOver*(this: Component, includeChildren: bool = false): bool {.header: juce_gui_basics, importcpp: "#.isMouseOver(@)".}
proc isMouseButtonDown*(this: Component, includeChildren: bool = false): bool {.header: juce_gui_basics, importcpp: "#.isMouseButtonDown(@)".}
proc isMouseOverOrDragging*(this: Component, includeChildren: bool = false): bool {.header: juce_gui_basics, importcpp: "#.isMouseOverOrDragging(@)".}
proc getMouseXYRelative*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getMouseXYRelative()".}
proc resized*(this: var Component) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc moved*(this: var Component) {.header: juce_gui_basics, importcpp: "#.moved()".}
proc childBoundsChanged*(this: var Component, child: ptr Component) {.header: juce_gui_basics, importcpp: "#.childBoundsChanged(@)".}
proc parentSizeChanged*(this: var Component) {.header: juce_gui_basics, importcpp: "#.parentSizeChanged()".}
proc broughtToFront*(this: var Component) {.header: juce_gui_basics, importcpp: "#.broughtToFront()".}
proc addComponentListener*(this: var Component, newListener: ptr ComponentListener) {.header: juce_gui_basics, importcpp: "#.addComponentListener(@)".}
proc removeComponentListener*(this: var Component, listenerToRemove: ptr ComponentListener) {.header: juce_gui_basics, importcpp: "#.removeComponentListener(@)".}
proc postCommandMessage*(this: var Component, commandId: int) {.header: juce_gui_basics, importcpp: "#.postCommandMessage(@)".}
proc handleCommandMessage*(this: var Component, commandId: int) {.header: juce_gui_basics, importcpp: "#.handleCommandMessage(@)".}
# proc enterModalState*(this: var Component, takeKeyboardFocus: bool = true, callback: ptr ModalComponentManager::Callback = nil, deleteWhenDismissed: bool = false) {.header: juce_gui_basics, importcpp: "#.enterModalState(@)".}
proc exitModalState*(this: var Component, returnValue: int) {.header: juce_gui_basics, importcpp: "#.exitModalState(@)".}
proc isCurrentlyModal*(this: Component, onlyConsiderForemostModalComponent: bool = true): bool {.header: juce_gui_basics, importcpp: "#.isCurrentlyModal(@)".}
proc isCurrentlyBlockedByAnotherModalComponent*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.isCurrentlyBlockedByAnotherModalComponent()".}
proc canModalEventBeSentToComponent*(this: var Component, targetComponent: ptr Component): bool {.header: juce_gui_basics, importcpp: "#.canModalEventBeSentToComponent(@)".}
proc inputAttemptWhenModal*(this: var Component) {.header: juce_gui_basics, importcpp: "#.inputAttemptWhenModal()".}
proc getProperties*(this: var Component): var int {.header: juce_gui_basics, importcpp: "#.getProperties()".}
proc getProperties*(this: Component): int {.header: juce_gui_basics, importcpp: "#.getProperties()".}
proc findColour*(this: Component, colourID: int, inheritFromParent: bool = false): int {.header: juce_gui_basics, importcpp: "#.findColour(@)".}
proc setColour*(this: var Component, colourID: int, newColour: int) {.header: juce_gui_basics, importcpp: "#.setColour(@)".}
proc removeColour*(this: var Component, colourID: int) {.header: juce_gui_basics, importcpp: "#.removeColour(@)".}
proc isColourSpecified*(this: Component, colourID: int): bool {.header: juce_gui_basics, importcpp: "#.isColourSpecified(@)".}
proc copyAllExplicitColoursTo*(this: Component, target: var Component) {.header: juce_gui_basics, importcpp: "#.copyAllExplicitColoursTo(@)".}
proc colourChanged*(this: var Component) {.header: juce_gui_basics, importcpp: "#.colourChanged()".}
proc getWindowHandle*(this: Component): pointer {.header: juce_gui_basics, importcpp: "#.getWindowHandle()".}
proc getPositioner*(this: Component): ptr ComponentPositioner {.header: juce_gui_basics, importcpp: "#.getPositioner()".}
proc setPositioner*(this: var Component, newPositioner: ptr ComponentPositioner) {.header: juce_gui_basics, importcpp: "#.setPositioner(@)".}
proc setCachedComponentImage*(this: var Component, newCachedImage: ptr CachedComponentImage) {.header: juce_gui_basics, importcpp: "#.setCachedComponentImage(@)".}
proc getCachedComponentImage*(this: Component): ptr CachedComponentImage {.header: juce_gui_basics, importcpp: "#.getCachedComponentImage()".}
proc setViewportIgnoreDragFlag*(this: var Component, ignoreDrag: bool) {.header: juce_gui_basics, importcpp: "#.setViewportIgnoreDragFlag(@)".}
proc getViewportIgnoreDragFlag*(this: Component): bool {.header: juce_gui_basics, importcpp: "#.getViewportIgnoreDragFlag()".}

type
  ComponentAnimator* {.header: juce_gui_basics, importcpp: "juce::ComponentAnimator".} = object

proc animateComponent*(this: var ComponentAnimator, component: ptr Component, finalBounds: int, finalAlpha: float, animationDurationMilliseconds: int, useProxyComponent: bool, startSpeed: float64, endSpeed: float64) {.header: juce_gui_basics, importcpp: "#.animateComponent(@)".}
proc fadeOut*(this: var ComponentAnimator, component: ptr Component, millisecondsToTake: int) {.header: juce_gui_basics, importcpp: "#.fadeOut(@)".}
proc fadeIn*(this: var ComponentAnimator, component: ptr Component, millisecondsToTake: int) {.header: juce_gui_basics, importcpp: "#.fadeIn(@)".}
proc cancelAnimation*(this: var ComponentAnimator, component: ptr Component, moveComponentToItsFinalPosition: bool) {.header: juce_gui_basics, importcpp: "#.cancelAnimation(@)".}
proc cancelAllAnimations*(this: var ComponentAnimator, moveComponentsToTheirFinalPositions: bool) {.header: juce_gui_basics, importcpp: "#.cancelAllAnimations(@)".}
proc getComponentDestination*(this: var ComponentAnimator, component: ptr Component): int {.header: juce_gui_basics, importcpp: "#.getComponentDestination(@)".}
proc isAnimating*(this: ComponentAnimator, component: ptr Component): bool {.header: juce_gui_basics, importcpp: "#.isAnimating(@)".}
proc isAnimating*(this: ComponentAnimator): bool {.header: juce_gui_basics, importcpp: "#.isAnimating()".}

type
  FocusChangeListener* {.header: juce_gui_basics, importcpp: "juce::FocusChangeListener".} = object

proc globalFocusChanged*(this: var FocusChangeListener, focusedComponent: ptr Component) {.header: juce_gui_basics, importcpp: "#.globalFocusChanged(@)".}

type
  Desktop* {.header: juce_gui_basics, importcpp: "juce::Desktop".} = object

proc getMouseButtonClickCounter*(this: Desktop): int {.header: juce_gui_basics, importcpp: "#.getMouseButtonClickCounter()".}
proc getMouseWheelMoveCounter*(this: Desktop): int {.header: juce_gui_basics, importcpp: "#.getMouseWheelMoveCounter()".}
proc addGlobalMouseListener*(this: var Desktop, listener: ptr MouseListener) {.header: juce_gui_basics, importcpp: "#.addGlobalMouseListener(@)".}
proc removeGlobalMouseListener*(this: var Desktop, listener: ptr MouseListener) {.header: juce_gui_basics, importcpp: "#.removeGlobalMouseListener(@)".}
proc addFocusChangeListener*(this: var Desktop, listener: ptr FocusChangeListener) {.header: juce_gui_basics, importcpp: "#.addFocusChangeListener(@)".}
proc removeFocusChangeListener*(this: var Desktop, listener: ptr FocusChangeListener) {.header: juce_gui_basics, importcpp: "#.removeFocusChangeListener(@)".}
proc setKioskModeComponent*(this: var Desktop, componentToUse: ptr Component, allowMenusAndBars: bool = true) {.header: juce_gui_basics, importcpp: "#.setKioskModeComponent(@)".}
proc getKioskModeComponent*(this: Desktop): ptr Component {.header: juce_gui_basics, importcpp: "#.getKioskModeComponent()".}
proc getNumComponents*(this: Desktop): int {.header: juce_gui_basics, importcpp: "#.getNumComponents()".}
proc getComponent*(this: Desktop, index: int): ptr Component {.header: juce_gui_basics, importcpp: "#.getComponent(@)".}
proc findComponentAt*(this: Desktop, screenPosition: int): ptr Component {.header: juce_gui_basics, importcpp: "#.findComponentAt(@)".}
proc getAnimator*(this: var Desktop): var ComponentAnimator {.header: juce_gui_basics, importcpp: "#.getAnimator()".}
proc getDefaultLookAndFeel*(this: var Desktop): var LookAndFeel {.header: juce_gui_basics, importcpp: "#.getDefaultLookAndFeel()".}
proc setDefaultLookAndFeel*(this: var Desktop, newDefaultLookAndFeel: ptr LookAndFeel) {.header: juce_gui_basics, importcpp: "#.setDefaultLookAndFeel(@)".}
proc getMouseSources*(this: Desktop): int {.header: juce_gui_basics, importcpp: "#.getMouseSources()".}
proc getNumMouseSources*(this: Desktop): int {.header: juce_gui_basics, importcpp: "#.getNumMouseSources()".}
proc getMouseSource*(this: Desktop, index: int): ptr MouseInputSource {.header: juce_gui_basics, importcpp: "#.getMouseSource(@)".}
proc getMainMouseSource*(this: Desktop): MouseInputSource {.header: juce_gui_basics, importcpp: "#.getMainMouseSource()".}
proc getNumDraggingMouseSources*(this: Desktop): int {.header: juce_gui_basics, importcpp: "#.getNumDraggingMouseSources()".}
proc getDraggingMouseSource*(this: Desktop, index: int): ptr MouseInputSource {.header: juce_gui_basics, importcpp: "#.getDraggingMouseSource(@)".}
proc beginDragAutoRepeat*(this: var Desktop, millisecondsBetweenCallbacks: int) {.header: juce_gui_basics, importcpp: "#.beginDragAutoRepeat(@)".}
# proc getCurrentOrientation*(this: Desktop): juce::Desktop::DisplayOrientation {.header: juce_gui_basics, importcpp: "#.getCurrentOrientation()".}
proc setOrientationsEnabled*(this: var Desktop, allowedOrientations: int) {.header: juce_gui_basics, importcpp: "#.setOrientationsEnabled(@)".}
proc getOrientationsEnabled*(this: Desktop): int {.header: juce_gui_basics, importcpp: "#.getOrientationsEnabled()".}
# proc isOrientationEnabled*(this: Desktop, orientation: juce::Desktop::DisplayOrientation): bool {.header: juce_gui_basics, importcpp: "#.isOrientationEnabled(@)".}
proc getDisplays*(this: Desktop): Displays {.header: juce_gui_basics, importcpp: "#.getDisplays()".}
proc setGlobalScaleFactor*(this: var Desktop, newScaleFactor: float) {.header: juce_gui_basics, importcpp: "#.setGlobalScaleFactor(@)".}
proc getGlobalScaleFactor*(this: Desktop): float {.header: juce_gui_basics, importcpp: "#.getGlobalScaleFactor()".}
proc isHeadless*(this: Desktop): bool {.header: juce_gui_basics, importcpp: "#.isHeadless()".}

proc physicalToLogical*(this: Displays, physicalRect: int, useScaleFactorOfDisplay: ptr DisplaysDisplay = nil): int {.header: juce_gui_basics, importcpp: "#.physicalToLogical(@)".}
# proc physicalToLogical*(this: Displays, physicalRect: int, useScaleFactorOfDisplay: ptr DisplaysDisplay = nil): int {.header: juce_gui_basics, importcpp: "#.physicalToLogical(@)".}
proc logicalToPhysical*(this: Displays, logicalRect: int, useScaleFactorOfDisplay: ptr DisplaysDisplay = nil): int {.header: juce_gui_basics, importcpp: "#.logicalToPhysical(@)".}
# proc logicalToPhysical*(this: Displays, logicalRect: int, useScaleFactorOfDisplay: ptr DisplaysDisplay = nil): int {.header: juce_gui_basics, importcpp: "#.logicalToPhysical(@)".}
proc getDisplayForRect*(this: Displays, rect: int, isPhysical: bool = false): ptr DisplaysDisplay {.header: juce_gui_basics, importcpp: "#.getDisplayForRect(@)".}
proc getDisplayForPoint*(this: Displays, point: int, isPhysical: bool = false): ptr DisplaysDisplay {.header: juce_gui_basics, importcpp: "#.getDisplayForPoint(@)".}
proc getPrimaryDisplay*(this: Displays): ptr DisplaysDisplay {.header: juce_gui_basics, importcpp: "#.getPrimaryDisplay()".}
proc getRectangleList*(this: Displays, userAreasOnly: bool): int {.header: juce_gui_basics, importcpp: "#.getRectangleList(@)".}
proc getTotalBounds*(this: Displays, userAreasOnly: bool): int {.header: juce_gui_basics, importcpp: "#.getTotalBounds(@)".}
proc refresh*(this: var Displays) {.header: juce_gui_basics, importcpp: "#.refresh()".}

type
  ComponentBoundsConstrainer* {.header: juce_gui_basics, importcpp: "juce::ComponentBoundsConstrainer".} = object

proc setMinimumWidth*(this: var ComponentBoundsConstrainer, minimumWidth: int) {.header: juce_gui_basics, importcpp: "#.setMinimumWidth(@)".}
proc getMinimumWidth*(this: ComponentBoundsConstrainer): int {.header: juce_gui_basics, importcpp: "#.getMinimumWidth()".}
proc setMaximumWidth*(this: var ComponentBoundsConstrainer, maximumWidth: int) {.header: juce_gui_basics, importcpp: "#.setMaximumWidth(@)".}
proc getMaximumWidth*(this: ComponentBoundsConstrainer): int {.header: juce_gui_basics, importcpp: "#.getMaximumWidth()".}
proc setMinimumHeight*(this: var ComponentBoundsConstrainer, minimumHeight: int) {.header: juce_gui_basics, importcpp: "#.setMinimumHeight(@)".}
proc getMinimumHeight*(this: ComponentBoundsConstrainer): int {.header: juce_gui_basics, importcpp: "#.getMinimumHeight()".}
proc setMaximumHeight*(this: var ComponentBoundsConstrainer, maximumHeight: int) {.header: juce_gui_basics, importcpp: "#.setMaximumHeight(@)".}
proc getMaximumHeight*(this: ComponentBoundsConstrainer): int {.header: juce_gui_basics, importcpp: "#.getMaximumHeight()".}
proc setMinimumSize*(this: var ComponentBoundsConstrainer, minimumWidth: int, minimumHeight: int) {.header: juce_gui_basics, importcpp: "#.setMinimumSize(@)".}
proc setMaximumSize*(this: var ComponentBoundsConstrainer, maximumWidth: int, maximumHeight: int) {.header: juce_gui_basics, importcpp: "#.setMaximumSize(@)".}
proc setSizeLimits*(this: var ComponentBoundsConstrainer, minimumWidth: int, minimumHeight: int, maximumWidth: int, maximumHeight: int) {.header: juce_gui_basics, importcpp: "#.setSizeLimits(@)".}
proc setMinimumOnscreenAmounts*(this: var ComponentBoundsConstrainer, minimumWhenOffTheTop: int, minimumWhenOffTheLeft: int, minimumWhenOffTheBottom: int, minimumWhenOffTheRight: int) {.header: juce_gui_basics, importcpp: "#.setMinimumOnscreenAmounts(@)".}
proc getMinimumWhenOffTheTop*(this: ComponentBoundsConstrainer): int {.header: juce_gui_basics, importcpp: "#.getMinimumWhenOffTheTop()".}
proc getMinimumWhenOffTheLeft*(this: ComponentBoundsConstrainer): int {.header: juce_gui_basics, importcpp: "#.getMinimumWhenOffTheLeft()".}
proc getMinimumWhenOffTheBottom*(this: ComponentBoundsConstrainer): int {.header: juce_gui_basics, importcpp: "#.getMinimumWhenOffTheBottom()".}
proc getMinimumWhenOffTheRight*(this: ComponentBoundsConstrainer): int {.header: juce_gui_basics, importcpp: "#.getMinimumWhenOffTheRight()".}
proc setFixedAspectRatio*(this: var ComponentBoundsConstrainer, widthOverHeight: float64) {.header: juce_gui_basics, importcpp: "#.setFixedAspectRatio(@)".}
proc getFixedAspectRatio*(this: ComponentBoundsConstrainer): float64 {.header: juce_gui_basics, importcpp: "#.getFixedAspectRatio()".}
proc checkBounds*(this: var ComponentBoundsConstrainer, bounds: var int, previousBounds: int, limits: int, isStretchingTop: bool, isStretchingLeft: bool, isStretchingBottom: bool, isStretchingRight: bool) {.header: juce_gui_basics, importcpp: "#.checkBounds(@)".}
proc resizeStart*(this: var ComponentBoundsConstrainer) {.header: juce_gui_basics, importcpp: "#.resizeStart()".}
proc resizeEnd*(this: var ComponentBoundsConstrainer) {.header: juce_gui_basics, importcpp: "#.resizeEnd()".}
proc setBoundsForComponent*(this: var ComponentBoundsConstrainer, component: ptr Component, bounds: int, isStretchingTop: bool, isStretchingLeft: bool, isStretchingBottom: bool, isStretchingRight: bool) {.header: juce_gui_basics, importcpp: "#.setBoundsForComponent(@)".}
proc checkComponentBounds*(this: var ComponentBoundsConstrainer, component: ptr Component) {.header: juce_gui_basics, importcpp: "#.checkComponentBounds(@)".}
proc applyBoundsToComponent*(this: var ComponentBoundsConstrainer, arg1: var Component, bounds: int) {.header: juce_gui_basics, importcpp: "#.applyBoundsToComponent(@)".}

type
  ComponentDragger* {.header: juce_gui_basics, importcpp: "juce::ComponentDragger".} = object

proc startDraggingComponent*(this: var ComponentDragger, componentToDrag: ptr Component, e: MouseEvent) {.header: juce_gui_basics, importcpp: "#.startDraggingComponent(@)".}
proc dragComponent*(this: var ComponentDragger, componentToDrag: ptr Component, e: MouseEvent, constrainer: ptr ComponentBoundsConstrainer) {.header: juce_gui_basics, importcpp: "#.dragComponent(@)".}

type
  DragAndDropTarget* {.header: juce_gui_basics, importcpp: "juce::DragAndDropTarget".} = object
  DragAndDropTargetSourceDetails* {.header: juce_gui_basics, importcpp: "juce::DragAndDropTarget::SourceDetails".} = object

proc isInterestedInDragSource*(this: var DragAndDropTarget, dragSourceDetails: DragAndDropTargetSourceDetails): bool {.header: juce_gui_basics, importcpp: "#.isInterestedInDragSource(@)".}
proc itemDragEnter*(this: var DragAndDropTarget, dragSourceDetails: DragAndDropTargetSourceDetails) {.header: juce_gui_basics, importcpp: "#.itemDragEnter(@)".}
proc itemDragMove*(this: var DragAndDropTarget, dragSourceDetails: DragAndDropTargetSourceDetails) {.header: juce_gui_basics, importcpp: "#.itemDragMove(@)".}
proc itemDragExit*(this: var DragAndDropTarget, dragSourceDetails: DragAndDropTargetSourceDetails) {.header: juce_gui_basics, importcpp: "#.itemDragExit(@)".}
proc itemDropped*(this: var DragAndDropTarget, dragSourceDetails: DragAndDropTargetSourceDetails) {.header: juce_gui_basics, importcpp: "#.itemDropped(@)".}
proc shouldDrawDragImageWhenOver*(this: var DragAndDropTarget): bool {.header: juce_gui_basics, importcpp: "#.shouldDrawDragImageWhenOver()".}

type
  DragAndDropContainer* {.header: juce_gui_basics, importcpp: "juce::DragAndDropContainer".} = object

# proc startDragging*(this: var DragAndDropContainer, sourceDescription: int, sourceComponent: ptr Component, dragImage: int = Image(), allowDraggingToOtherJuceWindows: bool = false, imageOffsetFromMouse: ptr int = nil, inputSourceCausingDrag: ptr MouseInputSource = nil) {.header: juce_gui_basics, importcpp: "#.startDragging(@)".}
proc isDragAndDropActive*(this: DragAndDropContainer): bool {.header: juce_gui_basics, importcpp: "#.isDragAndDropActive()".}
proc getNumCurrentDrags*(this: DragAndDropContainer): int {.header: juce_gui_basics, importcpp: "#.getNumCurrentDrags()".}
proc getCurrentDragDescription*(this: DragAndDropContainer): int {.header: juce_gui_basics, importcpp: "#.getCurrentDragDescription()".}
proc getDragDescriptionForIndex*(this: DragAndDropContainer, index: int): int {.header: juce_gui_basics, importcpp: "#.getDragDescriptionForIndex(@)".}
proc setCurrentDragImage*(this: var DragAndDropContainer, newImage: int) {.header: juce_gui_basics, importcpp: "#.setCurrentDragImage(@)".}
proc setDragImageForIndex*(this: var DragAndDropContainer, index: int, newImage: int) {.header: juce_gui_basics, importcpp: "#.setDragImageForIndex(@)".}

type
  FileDragAndDropTarget* {.header: juce_gui_basics, importcpp: "juce::FileDragAndDropTarget".} = object

proc isInterestedInFileDrag*(this: var FileDragAndDropTarget, files: int): bool {.header: juce_gui_basics, importcpp: "#.isInterestedInFileDrag(@)".}
proc fileDragEnter*(this: var FileDragAndDropTarget, files: int, x: int, y: int) {.header: juce_gui_basics, importcpp: "#.fileDragEnter(@)".}
proc fileDragMove*(this: var FileDragAndDropTarget, files: int, x: int, y: int) {.header: juce_gui_basics, importcpp: "#.fileDragMove(@)".}
proc fileDragExit*(this: var FileDragAndDropTarget, files: int) {.header: juce_gui_basics, importcpp: "#.fileDragExit(@)".}
proc filesDropped*(this: var FileDragAndDropTarget, files: int, x: int, y: int) {.header: juce_gui_basics, importcpp: "#.filesDropped(@)".}

type
  MouseInactivityDetector* {.header: juce_gui_basics, importcpp: "juce::MouseInactivityDetector".} = object
  MouseInactivityDetectorListener* {.header: juce_gui_basics, importcpp: "juce::MouseInactivityDetector::Listener".} = object

proc setDelay*(this: var MouseInactivityDetector, newDelayMilliseconds: int) {.header: juce_gui_basics, importcpp: "#.setDelay(@)".}
proc setMouseMoveTolerance*(this: var MouseInactivityDetector, pixelsNeededToTrigger: int) {.header: juce_gui_basics, importcpp: "#.setMouseMoveTolerance(@)".}
proc addListener*(this: var MouseInactivityDetector, listener: ptr MouseInactivityDetectorListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var MouseInactivityDetector, listener: ptr MouseInactivityDetectorListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}

type
  TextDragAndDropTarget* {.header: juce_gui_basics, importcpp: "juce::TextDragAndDropTarget".} = object

proc isInterestedInTextDrag*(this: var TextDragAndDropTarget, text: int): bool {.header: juce_gui_basics, importcpp: "#.isInterestedInTextDrag(@)".}
proc textDragEnter*(this: var TextDragAndDropTarget, text: int, x: int, y: int) {.header: juce_gui_basics, importcpp: "#.textDragEnter(@)".}
proc textDragMove*(this: var TextDragAndDropTarget, text: int, x: int, y: int) {.header: juce_gui_basics, importcpp: "#.textDragMove(@)".}
proc textDragExit*(this: var TextDragAndDropTarget, text: int) {.header: juce_gui_basics, importcpp: "#.textDragExit(@)".}
proc textDropped*(this: var TextDragAndDropTarget, text: int, x: int, y: int) {.header: juce_gui_basics, importcpp: "#.textDropped(@)".}

type
  TooltipClient* {.header: juce_gui_basics, importcpp: "juce::TooltipClient".} = object

proc getTooltip*(this: var TooltipClient): int {.header: juce_gui_basics, importcpp: "#.getTooltip()".}

type
  SettableTooltipClient* {.header: juce_gui_basics, importcpp: "juce::SettableTooltipClient".} = object

proc setTooltip*(this: var SettableTooltipClient, newTooltip: int) {.header: juce_gui_basics, importcpp: "#.setTooltip(@)".}
proc getTooltip*(this: var SettableTooltipClient): int {.header: juce_gui_basics, importcpp: "#.getTooltip()".}

proc setCaretPosition*(this: var CaretComponent, characterArea: int) {.header: juce_gui_basics, importcpp: "#.setCaretPosition(@)".}
proc paint*(this: var CaretComponent, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}

type
  SystemClipboard* {.header: juce_gui_basics, importcpp: "juce::SystemClipboard".} = object


type
  TextInputTarget* {.header: juce_gui_basics, importcpp: "juce::TextInputTarget".} = object

proc isTextInputActive*(this: TextInputTarget): bool {.header: juce_gui_basics, importcpp: "#.isTextInputActive()".}
proc getHighlightedRegion*(this: TextInputTarget): int {.header: juce_gui_basics, importcpp: "#.getHighlightedRegion()".}
proc setHighlightedRegion*(this: var TextInputTarget, newRange: int) {.header: juce_gui_basics, importcpp: "#.setHighlightedRegion(@)".}
proc setTemporaryUnderlining*(this: var TextInputTarget, underlinedRegions: int) {.header: juce_gui_basics, importcpp: "#.setTemporaryUnderlining(@)".}
proc getTextInRange*(this: TextInputTarget, range: int): int {.header: juce_gui_basics, importcpp: "#.getTextInRange(@)".}
proc insertTextAtCaret*(this: var TextInputTarget, textToInsert: int) {.header: juce_gui_basics, importcpp: "#.insertTextAtCaret(@)".}
proc getCaretRectangle*(this: var TextInputTarget): int {.header: juce_gui_basics, importcpp: "#.getCaretRectangle()".}
# proc getKeyboardType*(this: var TextInputTarget): juce::TextInputTarget::VirtualKeyboardType {.header: juce_gui_basics, importcpp: "#.getKeyboardType()".}

type
  ApplicationCommandInfo* {.header: juce_gui_basics, importcpp: "juce::ApplicationCommandInfo".} = object

proc setInfo*(this: var ApplicationCommandInfo, shortName: int, description: int, categoryName: int, flags: int) {.header: juce_gui_basics, importcpp: "#.setInfo(@)".}
proc setActive*(this: var ApplicationCommandInfo, isActive: bool) {.header: juce_gui_basics, importcpp: "#.setActive(@)".}
proc setTicked*(this: var ApplicationCommandInfo, isTicked: bool) {.header: juce_gui_basics, importcpp: "#.setTicked(@)".}
proc addDefaultKeypress*(this: var ApplicationCommandInfo, keyCode: int, modifiers: ModifierKeys) {.header: juce_gui_basics, importcpp: "#.addDefaultKeypress(@)".}

type
  ApplicationCommandTarget* {.header: juce_gui_basics, importcpp: "juce::ApplicationCommandTarget".} = object
  ApplicationCommandTargetInvocationInfo* {.header: juce_gui_basics, importcpp: "juce::ApplicationCommandTarget::InvocationInfo".} = object

proc getNextCommandTarget*(this: var ApplicationCommandTarget): ptr ApplicationCommandTarget {.header: juce_gui_basics, importcpp: "#.getNextCommandTarget()".}
proc getAllCommands*(this: var ApplicationCommandTarget, commands: var int) {.header: juce_gui_basics, importcpp: "#.getAllCommands(@)".}
# proc getCommandInfo*(this: var ApplicationCommandTarget, commandID: juce::CommandID, result: var ApplicationCommandInfo) {.header: juce_gui_basics, importcpp: "#.getCommandInfo(@)".}
proc perform*(this: var ApplicationCommandTarget, info: ApplicationCommandTargetInvocationInfo): bool {.header: juce_gui_basics, importcpp: "#.perform(@)".}
proc invoke*(this: var ApplicationCommandTarget, invocationInfo: ApplicationCommandTargetInvocationInfo, asynchronously: bool): bool {.header: juce_gui_basics, importcpp: "#.invoke(@)".}
# proc invokeDirectly*(this: var ApplicationCommandTarget, commandID: juce::CommandID, asynchronously: bool): bool {.header: juce_gui_basics, importcpp: "#.invokeDirectly(@)".}
# proc getTargetForCommand*(this: var ApplicationCommandTarget, commandID: juce::CommandID): ptr ApplicationCommandTarget {.header: juce_gui_basics, importcpp: "#.getTargetForCommand(@)".}
# proc isCommandActive*(this: var ApplicationCommandTarget, commandID: juce::CommandID): bool {.header: juce_gui_basics, importcpp: "#.isCommandActive(@)".}
proc findFirstTargetParentComponent*(this: var ApplicationCommandTarget): ptr ApplicationCommandTarget {.header: juce_gui_basics, importcpp: "#.findFirstTargetParentComponent()".}

type
  ApplicationCommandManager* {.header: juce_gui_basics, importcpp: "juce::ApplicationCommandManager".} = object

proc clearCommands*(this: var ApplicationCommandManager) {.header: juce_gui_basics, importcpp: "#.clearCommands()".}
proc registerCommand*(this: var ApplicationCommandManager, newCommand: ApplicationCommandInfo) {.header: juce_gui_basics, importcpp: "#.registerCommand(@)".}
proc registerAllCommandsForTarget*(this: var ApplicationCommandManager, target: ptr ApplicationCommandTarget) {.header: juce_gui_basics, importcpp: "#.registerAllCommandsForTarget(@)".}
# proc removeCommand*(this: var ApplicationCommandManager, commandID: juce::CommandID) {.header: juce_gui_basics, importcpp: "#.removeCommand(@)".}
proc commandStatusChanged*(this: var ApplicationCommandManager) {.header: juce_gui_basics, importcpp: "#.commandStatusChanged()".}
proc getNumCommands*(this: ApplicationCommandManager): int {.header: juce_gui_basics, importcpp: "#.getNumCommands()".}
proc getCommandForIndex*(this: ApplicationCommandManager, index: int): ptr ApplicationCommandInfo {.header: juce_gui_basics, importcpp: "#.getCommandForIndex(@)".}
# proc getCommandForID*(this: ApplicationCommandManager, commandID: juce::CommandID): ptr ApplicationCommandInfo {.header: juce_gui_basics, importcpp: "#.getCommandForID(@)".}
# proc getNameOfCommand*(this: ApplicationCommandManager, commandID: juce::CommandID): int {.header: juce_gui_basics, importcpp: "#.getNameOfCommand(@)".}
# proc getDescriptionOfCommand*(this: ApplicationCommandManager, commandID: juce::CommandID): int {.header: juce_gui_basics, importcpp: "#.getDescriptionOfCommand(@)".}
proc getCommandCategories*(this: ApplicationCommandManager): int {.header: juce_gui_basics, importcpp: "#.getCommandCategories()".}
proc getCommandsInCategory*(this: ApplicationCommandManager, categoryName: int): int {.header: juce_gui_basics, importcpp: "#.getCommandsInCategory(@)".}
proc getKeyMappings*(this: ApplicationCommandManager): ptr KeyPressMappingSet {.header: juce_gui_basics, importcpp: "#.getKeyMappings()".}
# proc invokeDirectly*(this: var ApplicationCommandManager, commandID: juce::CommandID, asynchronously: bool): bool {.header: juce_gui_basics, importcpp: "#.invokeDirectly(@)".}
# proc invoke*(this: var ApplicationCommandManager, invocationInfo: ApplicationCommandTarget::InvocationInfo, asynchronously: bool): bool {.header: juce_gui_basics, importcpp: "#.invoke(@)".}
# proc getFirstCommandTarget*(this: var ApplicationCommandManager, commandID: juce::CommandID): ptr ApplicationCommandTarget {.header: juce_gui_basics, importcpp: "#.getFirstCommandTarget(@)".}
proc setFirstCommandTarget*(this: var ApplicationCommandManager, newTarget: ptr ApplicationCommandTarget) {.header: juce_gui_basics, importcpp: "#.setFirstCommandTarget(@)".}
# proc getTargetForCommand*(this: var ApplicationCommandManager, commandID: juce::CommandID, upToDateInfo: var ApplicationCommandInfo): ptr ApplicationCommandTarget {.header: juce_gui_basics, importcpp: "#.getTargetForCommand(@)".}
proc addListener*(this: var ApplicationCommandManager, listener: ptr ApplicationCommandManagerListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var ApplicationCommandManager, listener: ptr ApplicationCommandManagerListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}

# proc applicationCommandInvoked*(this: var ApplicationCommandManagerListener, arg1: ApplicationCommandTarget::InvocationInfo) {.header: juce_gui_basics, importcpp: "#.applicationCommandInvoked(@)".}
proc applicationCommandListChanged*(this: var ApplicationCommandManagerListener) {.header: juce_gui_basics, importcpp: "#.applicationCommandListChanged()".}

proc getCommandManager*(this: KeyPressMappingSet): var ApplicationCommandManager {.header: juce_gui_basics, importcpp: "#.getCommandManager()".}
# proc getKeyPressesAssignedToCommand*(this: KeyPressMappingSet, commandID: juce::CommandID): int {.header: juce_gui_basics, importcpp: "#.getKeyPressesAssignedToCommand(@)".}
# proc addKeyPress*(this: var KeyPressMappingSet, commandID: juce::CommandID, newKeyPress: KeyPress, insertIndex: int = -1) {.header: juce_gui_basics, importcpp: "#.addKeyPress(@)".}
proc resetToDefaultMappings*(this: var KeyPressMappingSet) {.header: juce_gui_basics, importcpp: "#.resetToDefaultMappings()".}
# proc resetToDefaultMapping*(this: var KeyPressMappingSet, commandID: juce::CommandID) {.header: juce_gui_basics, importcpp: "#.resetToDefaultMapping(@)".}
proc clearAllKeyPresses*(this: var KeyPressMappingSet) {.header: juce_gui_basics, importcpp: "#.clearAllKeyPresses()".}
# proc clearAllKeyPresses*(this: var KeyPressMappingSet, commandID: juce::CommandID) {.header: juce_gui_basics, importcpp: "#.clearAllKeyPresses(@)".}
# proc removeKeyPress*(this: var KeyPressMappingSet, commandID: juce::CommandID, keyPressIndex: int) {.header: juce_gui_basics, importcpp: "#.removeKeyPress(@)".}
proc removeKeyPress*(this: var KeyPressMappingSet, keypress: KeyPress) {.header: juce_gui_basics, importcpp: "#.removeKeyPress(@)".}
# proc containsMapping*(this: KeyPressMappingSet, commandID: juce::CommandID, keyPress: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.containsMapping(@)".}
# proc findCommandForKeyPress*(this: KeyPressMappingSet, keyPress: KeyPress): juce::CommandID {.header: juce_gui_basics, importcpp: "#.findCommandForKeyPress(@)".}
proc restoreFromXml*(this: var KeyPressMappingSet, xmlVersion: int): bool {.header: juce_gui_basics, importcpp: "#.restoreFromXml(@)".}
proc createXml*(this: KeyPressMappingSet, saveDifferencesFromDefaultSet: bool): int {.header: juce_gui_basics, importcpp: "#.createXml(@)".}
proc keyPressed*(this: var KeyPressMappingSet, arg1: KeyPress, arg2: ptr Component): bool {.header: juce_gui_basics, importcpp: "#.keyPressed(@)".}
proc keyStateChanged*(this: var KeyPressMappingSet, isKeyDown: bool, arg2: ptr Component): bool {.header: juce_gui_basics, importcpp: "#.keyStateChanged(@)".}
proc globalFocusChanged*(this: var KeyPressMappingSet, arg1: ptr Component) {.header: juce_gui_basics, importcpp: "#.globalFocusChanged(@)".}

proc setButtonText*(this: var Button, newText: int) {.header: juce_gui_basics, importcpp: "#.setButtonText(@)".}
proc getButtonText*(this: Button): int {.header: juce_gui_basics, importcpp: "#.getButtonText()".}
proc isDown*(this: Button): bool {.header: juce_gui_basics, importcpp: "#.isDown()".}
proc isOver*(this: Button): bool {.header: juce_gui_basics, importcpp: "#.isOver()".}
proc setToggleState*(this: var Button, shouldBeOn: bool, notification: int) {.header: juce_gui_basics, importcpp: "#.setToggleState(@)".}
proc getToggleState*(this: Button): bool {.header: juce_gui_basics, importcpp: "#.getToggleState()".}
proc getToggleStateValue*(this: var Button): var int {.header: juce_gui_basics, importcpp: "#.getToggleStateValue()".}
proc setClickingTogglesState*(this: var Button, shouldAutoToggleOnClick: bool) {.header: juce_gui_basics, importcpp: "#.setClickingTogglesState(@)".}
proc getClickingTogglesState*(this: Button): bool {.header: juce_gui_basics, importcpp: "#.getClickingTogglesState()".}
# proc setRadioGroupId*(this: var Button, newGroupId: int, notification: int = ) {.header: juce_gui_basics, importcpp: "#.setRadioGroupId(@)".}
# proc getRadioGroupId*(this: Button): int {.header: juce_gui_basics, importcpp: "#.getRadioGroupId()".}
proc addListener*(this: var Button, newListener: ptr ButtonListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var Button, listener: ptr ButtonListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
proc triggerClick*(this: var Button) {.header: juce_gui_basics, importcpp: "#.triggerClick()".}
# proc setCommandToTrigger*(this: var Button, commandManagerToUse: ptr ApplicationCommandManager, commandID: juce::CommandID, generateTooltip: bool) {.header: juce_gui_basics, importcpp: "#.setCommandToTrigger(@)".}
# proc getCommandID*(this: Button): juce::CommandID {.header: juce_gui_basics, importcpp: "#.getCommandID()".}
proc addShortcut*(this: var Button, arg1: KeyPress) {.header: juce_gui_basics, importcpp: "#.addShortcut(@)".}
proc clearShortcuts*(this: var Button) {.header: juce_gui_basics, importcpp: "#.clearShortcuts()".}
proc isRegisteredForShortcut*(this: Button, arg1: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.isRegisteredForShortcut(@)".}
proc setRepeatSpeed*(this: var Button, initialDelayInMillisecs: int, repeatDelayInMillisecs: int, minimumDelayInMillisecs: int = -1) {.header: juce_gui_basics, importcpp: "#.setRepeatSpeed(@)".}
proc setTriggeredOnMouseDown*(this: var Button, isTriggeredOnMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.setTriggeredOnMouseDown(@)".}
proc getTriggeredOnMouseDown*(this: Button): bool {.header: juce_gui_basics, importcpp: "#.getTriggeredOnMouseDown()".}
proc getMillisecondsSinceButtonDown*(this: Button): int {.header: juce_gui_basics, importcpp: "#.getMillisecondsSinceButtonDown()".}
proc setTooltip*(this: var Button, newTooltip: int) {.header: juce_gui_basics, importcpp: "#.setTooltip(@)".}
proc setConnectedEdges*(this: var Button, connectedEdgeFlags: int) {.header: juce_gui_basics, importcpp: "#.setConnectedEdges(@)".}
proc getConnectedEdgeFlags*(this: Button): int {.header: juce_gui_basics, importcpp: "#.getConnectedEdgeFlags()".}
proc isConnectedOnLeft*(this: Button): bool {.header: juce_gui_basics, importcpp: "#.isConnectedOnLeft()".}
proc isConnectedOnRight*(this: Button): bool {.header: juce_gui_basics, importcpp: "#.isConnectedOnRight()".}
proc isConnectedOnTop*(this: Button): bool {.header: juce_gui_basics, importcpp: "#.isConnectedOnTop()".}
proc isConnectedOnBottom*(this: Button): bool {.header: juce_gui_basics, importcpp: "#.isConnectedOnBottom()".}
# proc setState*(this: var Button, newState: juce::Button::ButtonState) {.header: juce_gui_basics, importcpp: "#.setState(@)".}
# proc getState*(this: Button): juce::Button::ButtonState {.header: juce_gui_basics, importcpp: "#.getState()".}

type
  ArrowButton* {.header: juce_gui_basics, importcpp: "juce::ArrowButton".} = object

proc paintButton*(this: var ArrowButton, arg1: var int, arg2: bool, arg3: bool) {.header: juce_gui_basics, importcpp: "#.paintButton(@)".}

proc setImages*(this: var DrawableButton, normalImage: ptr Drawable, overImage: ptr Drawable = nil, downImage: ptr Drawable = nil, disabledImage: ptr Drawable = nil, normalImageOn: ptr Drawable = nil, overImageOn: ptr Drawable = nil, downImageOn: ptr Drawable = nil, disabledImageOn: ptr Drawable = nil) {.header: juce_gui_basics, importcpp: "#.setImages(@)".}
# proc setButtonStyle*(this: var DrawableButton, newStyle: juce::DrawableButton::ButtonStyle) {.header: juce_gui_basics, importcpp: "#.setButtonStyle(@)".}
# proc getStyle*(this: DrawableButton): juce::DrawableButton::ButtonStyle {.header: juce_gui_basics, importcpp: "#.getStyle()".}
proc setEdgeIndent*(this: var DrawableButton, numPixelsIndent: int) {.header: juce_gui_basics, importcpp: "#.setEdgeIndent(@)".}
proc getEdgeIndent*(this: DrawableButton): int {.header: juce_gui_basics, importcpp: "#.getEdgeIndent()".}
proc getCurrentImage*(this: DrawableButton): ptr Drawable {.header: juce_gui_basics, importcpp: "#.getCurrentImage()".}
proc getNormalImage*(this: DrawableButton): ptr Drawable {.header: juce_gui_basics, importcpp: "#.getNormalImage()".}
proc getOverImage*(this: DrawableButton): ptr Drawable {.header: juce_gui_basics, importcpp: "#.getOverImage()".}
proc getDownImage*(this: DrawableButton): ptr Drawable {.header: juce_gui_basics, importcpp: "#.getDownImage()".}
proc getImageBounds*(this: DrawableButton): int {.header: juce_gui_basics, importcpp: "#.getImageBounds()".}
proc paintButton*(this: var DrawableButton, arg1: var int, arg2: bool, arg3: bool) {.header: juce_gui_basics, importcpp: "#.paintButton(@)".}
proc buttonStateChanged*(this: var DrawableButton) {.header: juce_gui_basics, importcpp: "#.buttonStateChanged()".}
proc resized*(this: var DrawableButton) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc enablementChanged*(this: var DrawableButton) {.header: juce_gui_basics, importcpp: "#.enablementChanged()".}
proc colourChanged*(this: var DrawableButton) {.header: juce_gui_basics, importcpp: "#.colourChanged()".}

type
  HyperlinkButton* {.header: juce_gui_basics, importcpp: "juce::HyperlinkButton".} = object

# proc setFont*(this: var HyperlinkButton, newFont: int, resizeToMatchComponentHeight: bool, justificationType: int = ) {.header: juce_gui_basics, importcpp: "#.setFont(@)".}
# proc setURL*(this: var HyperlinkButton, newURL: int) {.header: juce_gui_basics, importcpp: "#.setURL(@)".}
proc getURL*(this: HyperlinkButton): int {.header: juce_gui_basics, importcpp: "#.getURL()".}
proc changeWidthToFitText*(this: var HyperlinkButton) {.header: juce_gui_basics, importcpp: "#.changeWidthToFitText()".}
proc setJustificationType*(this: var HyperlinkButton, justification: int) {.header: juce_gui_basics, importcpp: "#.setJustificationType(@)".}
proc getJustificationType*(this: HyperlinkButton): int {.header: juce_gui_basics, importcpp: "#.getJustificationType()".}

type
  ImageButton* {.header: juce_gui_basics, importcpp: "juce::ImageButton".} = object
  ImageButtonLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::ImageButton::LookAndFeelMethods".} = object

proc setImages*(this: var ImageButton, resizeButtonNowToFitThisImage: bool, rescaleImagesWhenButtonSizeChanges: bool, preserveImageProportions: bool, normalImage: int, imageOpacityWhenNormal: float, overlayColourWhenNormal: int, overImage: int, imageOpacityWhenOver: float, overlayColourWhenOver: int, downImage: int, imageOpacityWhenDown: float, overlayColourWhenDown: int, hitTestAlphaThreshold: float = 0.0f) {.header: juce_gui_basics, importcpp: "#.setImages(@)".}
proc getNormalImage*(this: ImageButton): int {.header: juce_gui_basics, importcpp: "#.getNormalImage()".}
proc getOverImage*(this: ImageButton): int {.header: juce_gui_basics, importcpp: "#.getOverImage()".}
proc getDownImage*(this: ImageButton): int {.header: juce_gui_basics, importcpp: "#.getDownImage()".}

type
  ShapeButton* {.header: juce_gui_basics, importcpp: "juce::ShapeButton".} = object

proc setShape*(this: var ShapeButton, newShape: int, resizeNowToFitThisShape: bool, maintainShapeProportions: bool, hasDropShadow: bool) {.header: juce_gui_basics, importcpp: "#.setShape(@)".}
proc setColours*(this: var ShapeButton, normalColour: int, overColour: int, downColour: int) {.header: juce_gui_basics, importcpp: "#.setColours(@)".}
proc setOnColours*(this: var ShapeButton, normalColourOn: int, overColourOn: int, downColourOn: int) {.header: juce_gui_basics, importcpp: "#.setOnColours(@)".}
proc shouldUseOnColours*(this: var ShapeButton, shouldUse: bool) {.header: juce_gui_basics, importcpp: "#.shouldUseOnColours(@)".}
proc setOutline*(this: var ShapeButton, outlineColour: int, outlineStrokeWidth: float) {.header: juce_gui_basics, importcpp: "#.setOutline(@)".}
proc setBorderSize*(this: var ShapeButton, border: int) {.header: juce_gui_basics, importcpp: "#.setBorderSize(@)".}
proc paintButton*(this: var ShapeButton, arg1: var int, arg2: bool, arg3: bool) {.header: juce_gui_basics, importcpp: "#.paintButton(@)".}

proc changeWidthToFitText*(this: var TextButton) {.header: juce_gui_basics, importcpp: "#.changeWidthToFitText()".}
proc changeWidthToFitText*(this: var TextButton, newHeight: int) {.header: juce_gui_basics, importcpp: "#.changeWidthToFitText(@)".}
proc getBestWidthForHeight*(this: var TextButton, buttonHeight: int): int {.header: juce_gui_basics, importcpp: "#.getBestWidthForHeight(@)".}
proc paintButton*(this: var TextButton, arg1: var int, arg2: bool, arg3: bool) {.header: juce_gui_basics, importcpp: "#.paintButton(@)".}
proc colourChanged*(this: var TextButton) {.header: juce_gui_basics, importcpp: "#.colourChanged()".}

proc changeWidthToFitText*(this: var ToggleButton) {.header: juce_gui_basics, importcpp: "#.changeWidthToFitText()".}

type
  ComponentBuilder* {.header: juce_gui_basics, importcpp: "juce::ComponentBuilder".} = object
  ComponentBuilderTypeHandler* {.header: juce_gui_basics, importcpp: "juce::ComponentBuilder::TypeHandler".} = object
  ComponentBuilderImageProvider* {.header: juce_gui_basics, importcpp: "juce::ComponentBuilder::ImageProvider".} = object

proc getManagedComponent*(this: var ComponentBuilder): ptr Component {.header: juce_gui_basics, importcpp: "#.getManagedComponent()".}
proc createComponent*(this: var ComponentBuilder): ptr Component {.header: juce_gui_basics, importcpp: "#.createComponent()".}
proc registerTypeHandler*(this: var ComponentBuilder, `type`: ptr ComponentBuilderTypeHandler) {.header: juce_gui_basics, importcpp: "#.registerTypeHandler(@)".}
proc getHandlerForState*(this: ComponentBuilder, state: int): ptr ComponentBuilderTypeHandler {.header: juce_gui_basics, importcpp: "#.getHandlerForState(@)".}
proc getNumHandlers*(this: ComponentBuilder): int {.header: juce_gui_basics, importcpp: "#.getNumHandlers()".}
proc getHandler*(this: ComponentBuilder, index: int): ptr ComponentBuilderTypeHandler {.header: juce_gui_basics, importcpp: "#.getHandler(@)".}
proc registerStandardComponentTypes*(this: var ComponentBuilder) {.header: juce_gui_basics, importcpp: "#.registerStandardComponentTypes()".}
proc setImageProvider*(this: var ComponentBuilder, newImageProvider: ptr ComponentBuilderImageProvider) {.header: juce_gui_basics, importcpp: "#.setImageProvider(@)".}
proc getImageProvider*(this: ComponentBuilder): ptr ComponentBuilderImageProvider {.header: juce_gui_basics, importcpp: "#.getImageProvider()".}
proc updateChildComponents*(this: var ComponentBuilder, parent: var Component, children: int) {.header: juce_gui_basics, importcpp: "#.updateChildComponents(@)".}

type
  ComponentMovementWatcher* {.header: juce_gui_basics, importcpp: "juce::ComponentMovementWatcher".} = object

proc componentMovedOrResized*(this: var ComponentMovementWatcher, wasMoved: bool, wasResized: bool) {.header: juce_gui_basics, importcpp: "#.componentMovedOrResized(@)".}
proc componentPeerChanged*(this: var ComponentMovementWatcher) {.header: juce_gui_basics, importcpp: "#.componentPeerChanged()".}
proc componentVisibilityChanged*(this: var ComponentMovementWatcher) {.header: juce_gui_basics, importcpp: "#.componentVisibilityChanged()".}
proc getComponent*(this: ComponentMovementWatcher): ptr Component {.header: juce_gui_basics, importcpp: "#.getComponent()".}
proc componentParentHierarchyChanged*(this: var ComponentMovementWatcher, arg1: var Component) {.header: juce_gui_basics, importcpp: "#.componentParentHierarchyChanged(@)".}
proc componentMovedOrResized*(this: var ComponentMovementWatcher, arg1: var Component, wasMoved: bool, wasResized: bool) {.header: juce_gui_basics, importcpp: "#.componentMovedOrResized(@)".}
proc componentBeingDeleted*(this: var ComponentMovementWatcher, arg1: var Component) {.header: juce_gui_basics, importcpp: "#.componentBeingDeleted(@)".}
proc componentVisibilityChanged*(this: var ComponentMovementWatcher, arg1: var Component) {.header: juce_gui_basics, importcpp: "#.componentVisibilityChanged(@)".}

type
  ConcertinaPanel* {.header: juce_gui_basics, importcpp: "juce::ConcertinaPanel".} = object
  ConcertinaPanelLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::ConcertinaPanel::LookAndFeelMethods".} = object

proc addPanel*(this: var ConcertinaPanel, insertIndex: int, component: ptr Component, takeOwnership: bool) {.header: juce_gui_basics, importcpp: "#.addPanel(@)".}
proc removePanel*(this: var ConcertinaPanel, panelComponent: ptr Component) {.header: juce_gui_basics, importcpp: "#.removePanel(@)".}
proc getNumPanels*(this: ConcertinaPanel): int {.header: juce_gui_basics, importcpp: "#.getNumPanels()".}
proc getPanel*(this: ConcertinaPanel, index: int): ptr Component {.header: juce_gui_basics, importcpp: "#.getPanel(@)".}
proc setPanelSize*(this: var ConcertinaPanel, panelComponent: ptr Component, newHeight: int, animate: bool): bool {.header: juce_gui_basics, importcpp: "#.setPanelSize(@)".}
proc expandPanelFully*(this: var ConcertinaPanel, panelComponent: ptr Component, animate: bool): bool {.header: juce_gui_basics, importcpp: "#.expandPanelFully(@)".}
proc setMaximumPanelSize*(this: var ConcertinaPanel, panelComponent: ptr Component, maximumSize: int) {.header: juce_gui_basics, importcpp: "#.setMaximumPanelSize(@)".}
proc setPanelHeaderSize*(this: var ConcertinaPanel, panelComponent: ptr Component, headerSize: int) {.header: juce_gui_basics, importcpp: "#.setPanelHeaderSize(@)".}
proc setCustomPanelHeader*(this: var ConcertinaPanel, panelComponent: ptr Component, customHeaderComponent: ptr Component, takeOwnership: bool) {.header: juce_gui_basics, importcpp: "#.setCustomPanelHeader(@)".}

type
  GroupComponent* {.header: juce_gui_basics, importcpp: "juce::GroupComponent".} = object
  GroupComponentLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::GroupComponent::LookAndFeelMethods".} = object

proc setText*(this: var GroupComponent, newText: int) {.header: juce_gui_basics, importcpp: "#.setText(@)".}
proc getText*(this: GroupComponent): int {.header: juce_gui_basics, importcpp: "#.getText()".}
proc setTextLabelPosition*(this: var GroupComponent, justification: int) {.header: juce_gui_basics, importcpp: "#.setTextLabelPosition(@)".}
proc getTextLabelPosition*(this: GroupComponent): int {.header: juce_gui_basics, importcpp: "#.getTextLabelPosition()".}
proc paint*(this: var GroupComponent, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc enablementChanged*(this: var GroupComponent) {.header: juce_gui_basics, importcpp: "#.enablementChanged()".}
proc colourChanged*(this: var GroupComponent) {.header: juce_gui_basics, importcpp: "#.colourChanged()".}

type
  ResizableBorderComponent* {.header: juce_gui_basics, importcpp: "juce::ResizableBorderComponent".} = object
  ResizableBorderComponentZone* {.header: juce_gui_basics, importcpp: "juce::ResizableBorderComponent::Zone".} = object

proc setBorderThickness*(this: var ResizableBorderComponent, newBorderSize: int) {.header: juce_gui_basics, importcpp: "#.setBorderThickness(@)".}
proc getBorderThickness*(this: ResizableBorderComponent): int {.header: juce_gui_basics, importcpp: "#.getBorderThickness()".}
proc getCurrentZone*(this: ResizableBorderComponent): ResizableBorderComponentZone {.header: juce_gui_basics, importcpp: "#.getCurrentZone()".}

type
  ResizableCornerComponent* {.header: juce_gui_basics, importcpp: "juce::ResizableCornerComponent".} = object


type
  ResizableEdgeComponent* {.header: juce_gui_basics, importcpp: "juce::ResizableEdgeComponent".} = object

proc isVertical*(this: ResizableEdgeComponent): bool {.header: juce_gui_basics, importcpp: "#.isVertical()".}

proc isVertical*(this: ScrollBar): bool {.header: juce_gui_basics, importcpp: "#.isVertical()".}
proc setOrientation*(this: var ScrollBar, shouldBeVertical: bool) {.header: juce_gui_basics, importcpp: "#.setOrientation(@)".}
proc setAutoHide*(this: var ScrollBar, shouldHideWhenFullRange: bool) {.header: juce_gui_basics, importcpp: "#.setAutoHide(@)".}
proc autoHides*(this: ScrollBar): bool {.header: juce_gui_basics, importcpp: "#.autoHides()".}
# proc setRangeLimits*(this: var ScrollBar, newRangeLimit: int, notification: int = ) {.header: juce_gui_basics, importcpp: "#.setRangeLimits(@)".}
# proc setRangeLimits*(this: var ScrollBar, minimum: float64, maximum: float64, notification: int = ) {.header: juce_gui_basics, importcpp: "#.setRangeLimits(@)".}
proc getRangeLimit*(this: ScrollBar): int {.header: juce_gui_basics, importcpp: "#.getRangeLimit()".}
proc getMinimumRangeLimit*(this: ScrollBar): float64 {.header: juce_gui_basics, importcpp: "#.getMinimumRangeLimit()".}
proc getMaximumRangeLimit*(this: ScrollBar): float64 {.header: juce_gui_basics, importcpp: "#.getMaximumRangeLimit()".}
# proc setCurrentRange*(this: var ScrollBar, newRange: int, notification: int = ): bool {.header: juce_gui_basics, importcpp: "#.setCurrentRange(@)".}
# proc setCurrentRange*(this: var ScrollBar, newStart: float64, newSize: float64, notification: int = ) {.header: juce_gui_basics, importcpp: "#.setCurrentRange(@)".}
# proc setCurrentRangeStart*(this: var ScrollBar, newStart: float64, notification: int = ) {.header: juce_gui_basics, importcpp: "#.setCurrentRangeStart(@)".}
# proc getCurrentRange*(this: ScrollBar): int {.header: juce_gui_basics, importcpp: "#.getCurrentRange()".}
proc getCurrentRangeStart*(this: ScrollBar): float64 {.header: juce_gui_basics, importcpp: "#.getCurrentRangeStart()".}
proc getCurrentRangeSize*(this: ScrollBar): float64 {.header: juce_gui_basics, importcpp: "#.getCurrentRangeSize()".}
proc setSingleStepSize*(this: var ScrollBar, newSingleStepSize: float64) {.header: juce_gui_basics, importcpp: "#.setSingleStepSize(@)".}
# proc moveScrollbarInSteps*(this: var ScrollBar, howManySteps: int, notification: int = ): bool {.header: juce_gui_basics, importcpp: "#.moveScrollbarInSteps(@)".}
# proc moveScrollbarInPages*(this: var ScrollBar, howManyPages: int, notification: int = ): bool {.header: juce_gui_basics, importcpp: "#.moveScrollbarInPages(@)".}
# proc scrollToTop*(this: var ScrollBar, notification: int = ): bool {.header: juce_gui_basics, importcpp: "#.scrollToTop(@)".}
# proc scrollToBottom*(this: var ScrollBar, notification: int = ): bool {.header: juce_gui_basics, importcpp: "#.scrollToBottom(@)".}
proc setButtonRepeatSpeed*(this: var ScrollBar, initialDelayInMillisecs: int, repeatDelayInMillisecs: int, minimumDelayInMillisecs: int = -1) {.header: juce_gui_basics, importcpp: "#.setButtonRepeatSpeed(@)".}
proc addListener*(this: var ScrollBar, listener: ptr ScrollBarListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var ScrollBar, listener: ptr ScrollBarListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
proc keyPressed*(this: var ScrollBar, arg1: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.keyPressed(@)".}
proc mouseWheelMove*(this: var ScrollBar, arg1: MouseEvent, arg2: MouseWheelDetails) {.header: juce_gui_basics, importcpp: "#.mouseWheelMove(@)".}
proc lookAndFeelChanged*(this: var ScrollBar) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}
proc mouseDown*(this: var ScrollBar, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDown(@)".}
proc mouseDrag*(this: var ScrollBar, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDrag(@)".}
proc mouseUp*(this: var ScrollBar, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseUp(@)".}
proc paint*(this: var ScrollBar, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var ScrollBar) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc parentHierarchyChanged*(this: var ScrollBar) {.header: juce_gui_basics, importcpp: "#.parentHierarchyChanged()".}
proc setVisible*(this: var ScrollBar, arg1: bool) {.header: juce_gui_basics, importcpp: "#.setVisible(@)".}

type
  StretchableLayoutManager* {.header: juce_gui_basics, importcpp: "juce::StretchableLayoutManager".} = object

proc setItemLayout*(this: var StretchableLayoutManager, itemIndex: int, minimumSize: float64, maximumSize: float64, preferredSize: float64) {.header: juce_gui_basics, importcpp: "#.setItemLayout(@)".}
proc getItemLayout*(this: StretchableLayoutManager, itemIndex: int, minimumSize: var float64, maximumSize: var float64, preferredSize: var float64): bool {.header: juce_gui_basics, importcpp: "#.getItemLayout(@)".}
proc clearAllItems*(this: var StretchableLayoutManager) {.header: juce_gui_basics, importcpp: "#.clearAllItems()".}
proc layOutComponents*(this: var StretchableLayoutManager, components: Component, numComponents: int, x: int, y: int, width: int, height: int, vertically: bool, resizeOtherDimension: bool) {.header: juce_gui_basics, importcpp: "#.layOutComponents(@)".}
proc getItemCurrentPosition*(this: StretchableLayoutManager, itemIndex: int): int {.header: juce_gui_basics, importcpp: "#.getItemCurrentPosition(@)".}
proc getItemCurrentAbsoluteSize*(this: StretchableLayoutManager, itemIndex: int): int {.header: juce_gui_basics, importcpp: "#.getItemCurrentAbsoluteSize(@)".}
proc getItemCurrentRelativeSize*(this: StretchableLayoutManager, itemIndex: int): float64 {.header: juce_gui_basics, importcpp: "#.getItemCurrentRelativeSize(@)".}
proc setItemPosition*(this: var StretchableLayoutManager, itemIndex: int, newPosition: int) {.header: juce_gui_basics, importcpp: "#.setItemPosition(@)".}

type
  StretchableLayoutResizerBar* {.header: juce_gui_basics, importcpp: "juce::StretchableLayoutResizerBar".} = object
  StretchableLayoutResizerBarLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::StretchableLayoutResizerBar::LookAndFeelMethods".} = object

proc hasBeenMoved*(this: var StretchableLayoutResizerBar) {.header: juce_gui_basics, importcpp: "#.hasBeenMoved()".}
proc paint*(this: var StretchableLayoutResizerBar, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc mouseDown*(this: var StretchableLayoutResizerBar, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDown(@)".}
proc mouseDrag*(this: var StretchableLayoutResizerBar, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDrag(@)".}

type
  StretchableObjectResizer* {.header: juce_gui_basics, importcpp: "juce::StretchableObjectResizer".} = object

proc addItem*(this: var StretchableObjectResizer, currentSize: float64, minSize: float64, maxSize: float64, order: int = 0) {.header: juce_gui_basics, importcpp: "#.addItem(@)".}
proc resizeToFit*(this: var StretchableObjectResizer, targetSize: float64) {.header: juce_gui_basics, importcpp: "#.resizeToFit(@)".}
proc getNumItems*(this: StretchableObjectResizer): int {.header: juce_gui_basics, importcpp: "#.getNumItems()".}
proc getItemSize*(this: StretchableObjectResizer, index: int): float64 {.header: juce_gui_basics, importcpp: "#.getItemSize(@)".}

type
  TabbedButtonBar* {.header: juce_gui_basics, importcpp: "juce::TabbedButtonBar".} = object
  TabbedButtonBarLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::TabbedButtonBar::LookAndFeelMethods".} = object
  TabbedButtonBarTabInfo* {.header: juce_gui_basics, importcpp: "juce::TabbedButtonBar::TabInfo".} = object


type
  TabBarButton* {.header: juce_gui_basics, importcpp: "juce::TabBarButton".} = object

proc getTabbedButtonBar*(this: TabBarButton): var TabbedButtonBar {.header: juce_gui_basics, importcpp: "#.getTabbedButtonBar()".}
# proc setExtraComponent*(this: var TabBarButton, extraTabComponent: ptr Component, extraComponentPlacement: juce::TabBarButton::ExtraComponentPlacement) {.header: juce_gui_basics, importcpp: "#.setExtraComponent(@)".}
proc getExtraComponent*(this: TabBarButton): ptr Component {.header: juce_gui_basics, importcpp: "#.getExtraComponent()".}
# proc getExtraComponentPlacement*(this: TabBarButton): juce::TabBarButton::ExtraComponentPlacement {.header: juce_gui_basics, importcpp: "#.getExtraComponentPlacement()".}
proc getActiveArea*(this: TabBarButton): int {.header: juce_gui_basics, importcpp: "#.getActiveArea()".}
proc getTextArea*(this: TabBarButton): int {.header: juce_gui_basics, importcpp: "#.getTextArea()".}
proc getIndex*(this: TabBarButton): int {.header: juce_gui_basics, importcpp: "#.getIndex()".}
proc getTabBackgroundColour*(this: TabBarButton): int {.header: juce_gui_basics, importcpp: "#.getTabBackgroundColour()".}
proc isFrontTab*(this: TabBarButton): bool {.header: juce_gui_basics, importcpp: "#.isFrontTab()".}
proc getBestTabLength*(this: var TabBarButton, depth: int): int {.header: juce_gui_basics, importcpp: "#.getBestTabLength(@)".}
proc paintButton*(this: var TabBarButton, arg1: var int, arg2: bool, arg3: bool) {.header: juce_gui_basics, importcpp: "#.paintButton(@)".}
proc clicked*(this: var TabBarButton, arg1: ModifierKeys) {.header: juce_gui_basics, importcpp: "#.clicked(@)".}
proc hitTest*(this: var TabBarButton, x: int, y: int): bool {.header: juce_gui_basics, importcpp: "#.hitTest(@)".}
proc resized*(this: var TabBarButton) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc childBoundsChanged*(this: var TabBarButton, arg1: ptr Component) {.header: juce_gui_basics, importcpp: "#.childBoundsChanged(@)".}

# proc setOrientation*(this: var TabbedButtonBar, orientation: juce::TabbedButtonBar::Orientation) {.header: juce_gui_basics, importcpp: "#.setOrientation(@)".}
# proc getOrientation*(this: TabbedButtonBar): juce::TabbedButtonBar::Orientation {.header: juce_gui_basics, importcpp: "#.getOrientation()".}
proc isVertical*(this: TabbedButtonBar): bool {.header: juce_gui_basics, importcpp: "#.isVertical()".}
proc getThickness*(this: TabbedButtonBar): int {.header: juce_gui_basics, importcpp: "#.getThickness()".}
proc setMinimumTabScaleFactor*(this: var TabbedButtonBar, newMinimumScale: float64) {.header: juce_gui_basics, importcpp: "#.setMinimumTabScaleFactor(@)".}
proc clearTabs*(this: var TabbedButtonBar) {.header: juce_gui_basics, importcpp: "#.clearTabs()".}
proc addTab*(this: var TabbedButtonBar, tabName: int, tabBackgroundColour: int, insertIndex: int) {.header: juce_gui_basics, importcpp: "#.addTab(@)".}
proc setTabName*(this: var TabbedButtonBar, tabIndex: int, newName: int) {.header: juce_gui_basics, importcpp: "#.setTabName(@)".}
proc removeTab*(this: var TabbedButtonBar, tabIndex: int, animate: bool = false) {.header: juce_gui_basics, importcpp: "#.removeTab(@)".}
proc moveTab*(this: var TabbedButtonBar, currentIndex: int, newIndex: int, animate: bool = false) {.header: juce_gui_basics, importcpp: "#.moveTab(@)".}
proc getNumTabs*(this: TabbedButtonBar): int {.header: juce_gui_basics, importcpp: "#.getNumTabs()".}
proc getTabNames*(this: TabbedButtonBar): int {.header: juce_gui_basics, importcpp: "#.getTabNames()".}
proc setCurrentTabIndex*(this: var TabbedButtonBar, newTabIndex: int, sendChangeMessage: bool = true) {.header: juce_gui_basics, importcpp: "#.setCurrentTabIndex(@)".}
proc getCurrentTabName*(this: TabbedButtonBar): int {.header: juce_gui_basics, importcpp: "#.getCurrentTabName()".}
proc getCurrentTabIndex*(this: TabbedButtonBar): int {.header: juce_gui_basics, importcpp: "#.getCurrentTabIndex()".}
proc getTabButton*(this: TabbedButtonBar, index: int): ptr TabBarButton {.header: juce_gui_basics, importcpp: "#.getTabButton(@)".}
proc indexOfTabButton*(this: TabbedButtonBar, button: ptr TabBarButton): int {.header: juce_gui_basics, importcpp: "#.indexOfTabButton(@)".}
proc getTargetBounds*(this: TabbedButtonBar, button: ptr TabBarButton): int {.header: juce_gui_basics, importcpp: "#.getTargetBounds(@)".}
proc currentTabChanged*(this: var TabbedButtonBar, newCurrentTabIndex: int, newCurrentTabName: int) {.header: juce_gui_basics, importcpp: "#.currentTabChanged(@)".}
proc popupMenuClickOnTab*(this: var TabbedButtonBar, tabIndex: int, tabName: int) {.header: juce_gui_basics, importcpp: "#.popupMenuClickOnTab(@)".}
proc getTabBackgroundColour*(this: var TabbedButtonBar, tabIndex: int): int {.header: juce_gui_basics, importcpp: "#.getTabBackgroundColour(@)".}
proc setTabBackgroundColour*(this: var TabbedButtonBar, tabIndex: int, newColour: int) {.header: juce_gui_basics, importcpp: "#.setTabBackgroundColour(@)".}
proc paint*(this: var TabbedButtonBar, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var TabbedButtonBar) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc lookAndFeelChanged*(this: var TabbedButtonBar) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}

type
  TabbedComponent* {.header: juce_gui_basics, importcpp: "juce::TabbedComponent".} = object

# proc setOrientation*(this: var TabbedComponent, orientation: TabbedButtonBar::Orientation) {.header: juce_gui_basics, importcpp: "#.setOrientation(@)".}
# proc getOrientation*(this: TabbedComponent): TabbedButtonBar::Orientation {.header: juce_gui_basics, importcpp: "#.getOrientation()".}
proc setTabBarDepth*(this: var TabbedComponent, newDepth: int) {.header: juce_gui_basics, importcpp: "#.setTabBarDepth(@)".}
proc getTabBarDepth*(this: TabbedComponent): int {.header: juce_gui_basics, importcpp: "#.getTabBarDepth()".}
proc setOutline*(this: var TabbedComponent, newThickness: int) {.header: juce_gui_basics, importcpp: "#.setOutline(@)".}
proc setIndent*(this: var TabbedComponent, indentThickness: int) {.header: juce_gui_basics, importcpp: "#.setIndent(@)".}
proc clearTabs*(this: var TabbedComponent) {.header: juce_gui_basics, importcpp: "#.clearTabs()".}
proc addTab*(this: var TabbedComponent, tabName: int, tabBackgroundColour: int, contentComponent: ptr Component, deleteComponentWhenNotNeeded: bool, insertIndex: int = -1) {.header: juce_gui_basics, importcpp: "#.addTab(@)".}
proc setTabName*(this: var TabbedComponent, tabIndex: int, newName: int) {.header: juce_gui_basics, importcpp: "#.setTabName(@)".}
proc removeTab*(this: var TabbedComponent, tabIndex: int) {.header: juce_gui_basics, importcpp: "#.removeTab(@)".}
proc moveTab*(this: var TabbedComponent, currentIndex: int, newIndex: int, animate: bool = false) {.header: juce_gui_basics, importcpp: "#.moveTab(@)".}
proc getNumTabs*(this: TabbedComponent): int {.header: juce_gui_basics, importcpp: "#.getNumTabs()".}
proc getTabNames*(this: TabbedComponent): int {.header: juce_gui_basics, importcpp: "#.getTabNames()".}
proc getTabContentComponent*(this: TabbedComponent, tabIndex: int): ptr Component {.header: juce_gui_basics, importcpp: "#.getTabContentComponent(@)".}
proc getTabBackgroundColour*(this: TabbedComponent, tabIndex: int): int {.header: juce_gui_basics, importcpp: "#.getTabBackgroundColour(@)".}
proc setTabBackgroundColour*(this: var TabbedComponent, tabIndex: int, newColour: int) {.header: juce_gui_basics, importcpp: "#.setTabBackgroundColour(@)".}
proc setCurrentTabIndex*(this: var TabbedComponent, newTabIndex: int, sendChangeMessage: bool = true) {.header: juce_gui_basics, importcpp: "#.setCurrentTabIndex(@)".}
proc getCurrentTabIndex*(this: TabbedComponent): int {.header: juce_gui_basics, importcpp: "#.getCurrentTabIndex()".}
proc getCurrentTabName*(this: TabbedComponent): int {.header: juce_gui_basics, importcpp: "#.getCurrentTabName()".}
proc getCurrentContentComponent*(this: TabbedComponent): ptr Component {.header: juce_gui_basics, importcpp: "#.getCurrentContentComponent()".}
proc currentTabChanged*(this: var TabbedComponent, newCurrentTabIndex: int, newCurrentTabName: int) {.header: juce_gui_basics, importcpp: "#.currentTabChanged(@)".}
proc popupMenuClickOnTab*(this: var TabbedComponent, tabIndex: int, tabName: int) {.header: juce_gui_basics, importcpp: "#.popupMenuClickOnTab(@)".}
proc getTabbedButtonBar*(this: TabbedComponent): var TabbedButtonBar {.header: juce_gui_basics, importcpp: "#.getTabbedButtonBar()".}
proc paint*(this: var TabbedComponent, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var TabbedComponent) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc lookAndFeelChanged*(this: var TabbedComponent) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}

type
  Viewport* {.header: juce_gui_basics, importcpp: "juce::Viewport".} = object

proc setViewedComponent*(this: var Viewport, newViewedComponent: ptr Component, deleteComponentWhenNoLongerNeeded: bool = true) {.header: juce_gui_basics, importcpp: "#.setViewedComponent(@)".}
proc getViewedComponent*(this: Viewport): ptr Component {.header: juce_gui_basics, importcpp: "#.getViewedComponent()".}
proc setViewPosition*(this: var Viewport, xPixelsOffset: int, yPixelsOffset: int) {.header: juce_gui_basics, importcpp: "#.setViewPosition(@)".}
proc setViewPosition*(this: var Viewport, newPosition: int) {.header: juce_gui_basics, importcpp: "#.setViewPosition(@)".}
proc setViewPositionProportionately*(this: var Viewport, proportionX: float64, proportionY: float64) {.header: juce_gui_basics, importcpp: "#.setViewPositionProportionately(@)".}
proc autoScroll*(this: var Viewport, mouseX: int, mouseY: int, distanceFromEdge: int, maximumSpeed: int): bool {.header: juce_gui_basics, importcpp: "#.autoScroll(@)".}
proc getViewPosition*(this: Viewport): int {.header: juce_gui_basics, importcpp: "#.getViewPosition()".}
proc getViewArea*(this: Viewport): int {.header: juce_gui_basics, importcpp: "#.getViewArea()".}
proc getViewPositionX*(this: Viewport): int {.header: juce_gui_basics, importcpp: "#.getViewPositionX()".}
proc getViewPositionY*(this: Viewport): int {.header: juce_gui_basics, importcpp: "#.getViewPositionY()".}
proc getViewWidth*(this: Viewport): int {.header: juce_gui_basics, importcpp: "#.getViewWidth()".}
proc getViewHeight*(this: Viewport): int {.header: juce_gui_basics, importcpp: "#.getViewHeight()".}
proc getMaximumVisibleWidth*(this: Viewport): int {.header: juce_gui_basics, importcpp: "#.getMaximumVisibleWidth()".}
proc getMaximumVisibleHeight*(this: Viewport): int {.header: juce_gui_basics, importcpp: "#.getMaximumVisibleHeight()".}
proc visibleAreaChanged*(this: var Viewport, newVisibleArea: int) {.header: juce_gui_basics, importcpp: "#.visibleAreaChanged(@)".}
proc viewedComponentChanged*(this: var Viewport, newComponent: ptr Component) {.header: juce_gui_basics, importcpp: "#.viewedComponentChanged(@)".}
proc setScrollBarsShown*(this: var Viewport, showVerticalScrollbarIfNeeded: bool, showHorizontalScrollbarIfNeeded: bool, allowVerticalScrollingWithoutScrollbar: bool = false, allowHorizontalScrollingWithoutScrollbar: bool = false) {.header: juce_gui_basics, importcpp: "#.setScrollBarsShown(@)".}
proc setScrollBarPosition*(this: var Viewport, verticalScrollbarOnRight: bool, horizontalScrollbarAtBottom: bool) {.header: juce_gui_basics, importcpp: "#.setScrollBarPosition(@)".}
proc isVerticalScrollbarOnTheRight*(this: Viewport): bool {.header: juce_gui_basics, importcpp: "#.isVerticalScrollbarOnTheRight()".}
proc isHorizontalScrollbarAtBottom*(this: Viewport): bool {.header: juce_gui_basics, importcpp: "#.isHorizontalScrollbarAtBottom()".}
proc isVerticalScrollBarShown*(this: Viewport): bool {.header: juce_gui_basics, importcpp: "#.isVerticalScrollBarShown()".}
proc isHorizontalScrollBarShown*(this: Viewport): bool {.header: juce_gui_basics, importcpp: "#.isHorizontalScrollBarShown()".}
proc setScrollBarThickness*(this: var Viewport, thickness: int) {.header: juce_gui_basics, importcpp: "#.setScrollBarThickness(@)".}
proc getScrollBarThickness*(this: Viewport): int {.header: juce_gui_basics, importcpp: "#.getScrollBarThickness()".}
proc setSingleStepSizes*(this: var Viewport, stepX: int, stepY: int) {.header: juce_gui_basics, importcpp: "#.setSingleStepSizes(@)".}
proc getVerticalScrollBar*(this: var Viewport): var ScrollBar {.header: juce_gui_basics, importcpp: "#.getVerticalScrollBar()".}
proc getHorizontalScrollBar*(this: var Viewport): var ScrollBar {.header: juce_gui_basics, importcpp: "#.getHorizontalScrollBar()".}
proc recreateScrollbars*(this: var Viewport) {.header: juce_gui_basics, importcpp: "#.recreateScrollbars()".}
proc canScrollVertically*(this: Viewport): bool {.header: juce_gui_basics, importcpp: "#.canScrollVertically()".}
proc canScrollHorizontally*(this: Viewport): bool {.header: juce_gui_basics, importcpp: "#.canScrollHorizontally()".}
proc setScrollOnDragEnabled*(this: var Viewport, shouldScrollOnDrag: bool) {.header: juce_gui_basics, importcpp: "#.setScrollOnDragEnabled(@)".}
proc isScrollOnDragEnabled*(this: Viewport): bool {.header: juce_gui_basics, importcpp: "#.isScrollOnDragEnabled()".}
proc isCurrentlyScrollingOnDrag*(this: Viewport): bool {.header: juce_gui_basics, importcpp: "#.isCurrentlyScrollingOnDrag()".}
proc resized*(this: var Viewport) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc scrollBarMoved*(this: var Viewport, arg1: ptr ScrollBar, newRangeStart: float64) {.header: juce_gui_basics, importcpp: "#.scrollBarMoved(@)".}
proc mouseWheelMove*(this: var Viewport, arg1: MouseEvent, arg2: MouseWheelDetails) {.header: juce_gui_basics, importcpp: "#.mouseWheelMove(@)".}
proc keyPressed*(this: var Viewport, arg1: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.keyPressed(@)".}
proc componentMovedOrResized*(this: var Viewport, arg1: var Component, wasMoved: bool, wasResized: bool) {.header: juce_gui_basics, importcpp: "#.componentMovedOrResized(@)".}
proc lookAndFeelChanged*(this: var Viewport) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}
proc useMouseWheelMoveIfNeeded*(this: var Viewport, arg1: MouseEvent, arg2: MouseWheelDetails): bool {.header: juce_gui_basics, importcpp: "#.useMouseWheelMoveIfNeeded(@)".}

proc `PopupMenu=`*(this: var PopupMenu, arg1: PopupMenu): var PopupMenu {.header: juce_gui_basics, importcpp: "#.operator=(@)".}
proc `PopupMenu=`*(this: var PopupMenu, arg1: lent PopupMenu): var PopupMenu {.header: juce_gui_basics, importcpp: "#.operator=(@)".}
proc clear*(this: var PopupMenu) {.header: juce_gui_basics, importcpp: "#.clear()".}
proc addItem*(this: var PopupMenu, newItem: PopupMenuItem) {.header: juce_gui_basics, importcpp: "#.addItem(@)".}
proc addItem*(this: var PopupMenu, itemText: int, action: int) {.header: juce_gui_basics, importcpp: "#.addItem(@)".}
proc addItem*(this: var PopupMenu, itemText: int, isEnabled: bool, isTicked: bool, action: int) {.header: juce_gui_basics, importcpp: "#.addItem(@)".}
proc addItem*(this: var PopupMenu, itemResultID: int, itemText: int, isEnabled: bool = true, isTicked: bool = false) {.header: juce_gui_basics, importcpp: "#.addItem(@)".}
proc addItem*(this: var PopupMenu, itemResultID: int, itemText: int, isEnabled: bool, isTicked: bool, iconToUse: int) {.header: juce_gui_basics, importcpp: "#.addItem(@)".}
# proc addItem*(this: var PopupMenu, itemResultID: int, itemText: int, isEnabled: bool, isTicked: bool, iconToUse: int) {.header: juce_gui_basics, importcpp: "#.addItem(@)".}
# proc addCommandItem*(this: var PopupMenu, commandManager: ptr ApplicationCommandManager, commandID: juce::CommandID, displayName: int = {}, iconToUse: int = {}) {.header: juce_gui_basics, importcpp: "#.addCommandItem(@)".}
# proc addColouredItem*(this: var PopupMenu, itemResultID: int, itemText: int, itemTextColour: int, isEnabled: bool = true, isTicked: bool = false, iconToUse: int = {}) {.header: juce_gui_basics, importcpp: "#.addColouredItem(@)".}
# proc addColouredItem*(this: var PopupMenu, itemResultID: int, itemText: int, itemTextColour: int, isEnabled: bool, isTicked: bool, iconToUse: int) {.header: juce_gui_basics, importcpp: "#.addColouredItem(@)".}
# proc addCustomItem*(this: var PopupMenu, itemResultID: int, customComponent: int, optionalSubMenu: int = ) {.header: juce_gui_basics, importcpp: "#.addCustomItem(@)".}
# proc addCustomItem*(this: var PopupMenu, itemResultID: int, customComponent: var Component, idealWidth: int, idealHeight: int, triggerMenuItemAutomaticallyWhenClicked: bool, optionalSubMenu: int = ) {.header: juce_gui_basics, importcpp: "#.addCustomItem(@)".}
# proc addSubMenu*(this: var PopupMenu, subMenuName: int, subMenu: PopupMenu, isEnabled: bool = true) {.header: juce_gui_basics, importcpp: "#.addSubMenu(@)".}
proc addSubMenu*(this: var PopupMenu, subMenuName: int, subMenu: PopupMenu, isEnabled: bool, iconToUse: int, isTicked: bool = false, itemResultID: int = 0) {.header: juce_gui_basics, importcpp: "#.addSubMenu(@)".}
# proc addSubMenu*(this: var PopupMenu, subMenuName: int, subMenu: PopupMenu, isEnabled: bool, iconToUse: int, isTicked: bool = false, itemResultID: int = 0) {.header: juce_gui_basics, importcpp: "#.addSubMenu(@)".}
proc addSeparator*(this: var PopupMenu) {.header: juce_gui_basics, importcpp: "#.addSeparator()".}
proc addSectionHeader*(this: var PopupMenu, title: int) {.header: juce_gui_basics, importcpp: "#.addSectionHeader(@)".}
proc addColumnBreak*(this: var PopupMenu) {.header: juce_gui_basics, importcpp: "#.addColumnBreak()".}
proc getNumItems*(this: PopupMenu): int {.header: juce_gui_basics, importcpp: "#.getNumItems()".}
proc containsCommandItem*(this: PopupMenu, commandID: int): bool {.header: juce_gui_basics, importcpp: "#.containsCommandItem(@)".}
proc containsAnyActiveItems*(this: PopupMenu): bool {.header: juce_gui_basics, importcpp: "#.containsAnyActiveItems()".}
proc showMenuAsync*(this: var PopupMenu, options: PopupMenuOptions) {.header: juce_gui_basics, importcpp: "#.showMenuAsync(@)".}
# proc showMenuAsync*(this: var PopupMenu, options: PopupMenuOptions, callback: ptr ModalComponentManager::Callback) {.header: juce_gui_basics, importcpp: "#.showMenuAsync(@)".}
proc showMenuAsync*(this: var PopupMenu, options: PopupMenuOptions, callback: int) {.header: juce_gui_basics, importcpp: "#.showMenuAsync(@)".}
proc setLookAndFeel*(this: var PopupMenu, newLookAndFeel: ptr LookAndFeel) {.header: juce_gui_basics, importcpp: "#.setLookAndFeel(@)".}

type
  MenuBarModel* {.header: juce_gui_basics, importcpp: "juce::MenuBarModel".} = object
  MenuBarModelListener* {.header: juce_gui_basics, importcpp: "juce::MenuBarModel::Listener".} = object

proc menuItemsChanged*(this: var MenuBarModel) {.header: juce_gui_basics, importcpp: "#.menuItemsChanged()".}
proc setApplicationCommandManagerToWatch*(this: var MenuBarModel, manager: ptr ApplicationCommandManager) {.header: juce_gui_basics, importcpp: "#.setApplicationCommandManagerToWatch(@)".}
proc addListener*(this: var MenuBarModel, listenerToAdd: ptr MenuBarModelListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var MenuBarModel, listenerToRemove: ptr MenuBarModelListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
proc getMenuBarNames*(this: var MenuBarModel): int {.header: juce_gui_basics, importcpp: "#.getMenuBarNames()".}
proc getMenuForIndex*(this: var MenuBarModel, topLevelMenuIndex: int, menuName: int): PopupMenu {.header: juce_gui_basics, importcpp: "#.getMenuForIndex(@)".}
proc menuItemSelected*(this: var MenuBarModel, menuItemID: int, topLevelMenuIndex: int) {.header: juce_gui_basics, importcpp: "#.menuItemSelected(@)".}
proc menuBarActivated*(this: var MenuBarModel, isActive: bool) {.header: juce_gui_basics, importcpp: "#.menuBarActivated(@)".}
# proc applicationCommandInvoked*(this: var MenuBarModel, arg1: ApplicationCommandTarget::InvocationInfo) {.header: juce_gui_basics, importcpp: "#.applicationCommandInvoked(@)".}
proc applicationCommandListChanged*(this: var MenuBarModel) {.header: juce_gui_basics, importcpp: "#.applicationCommandListChanged()".}
proc handleAsyncUpdate*(this: var MenuBarModel) {.header: juce_gui_basics, importcpp: "#.handleAsyncUpdate()".}
proc handleMenuBarActivate*(this: var MenuBarModel, isActive: bool) {.header: juce_gui_basics, importcpp: "#.handleMenuBarActivate(@)".}

proc setModel*(this: var MenuBarComponent, newModel: ptr MenuBarModel) {.header: juce_gui_basics, importcpp: "#.setModel(@)".}
proc getModel*(this: MenuBarComponent): ptr MenuBarModel {.header: juce_gui_basics, importcpp: "#.getModel()".}
proc showMenu*(this: var MenuBarComponent, menuIndex: int) {.header: juce_gui_basics, importcpp: "#.showMenu(@)".}
proc paint*(this: var MenuBarComponent, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var MenuBarComponent) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc mouseEnter*(this: var MenuBarComponent, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseEnter(@)".}
proc mouseExit*(this: var MenuBarComponent, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseExit(@)".}
proc mouseDown*(this: var MenuBarComponent, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDown(@)".}
proc mouseDrag*(this: var MenuBarComponent, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDrag(@)".}
proc mouseUp*(this: var MenuBarComponent, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseUp(@)".}
proc mouseMove*(this: var MenuBarComponent, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseMove(@)".}
proc handleCommandMessage*(this: var MenuBarComponent, commandId: int) {.header: juce_gui_basics, importcpp: "#.handleCommandMessage(@)".}
proc keyPressed*(this: var MenuBarComponent, arg1: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.keyPressed(@)".}
proc menuBarItemsChanged*(this: var MenuBarComponent, arg1: ptr MenuBarModel) {.header: juce_gui_basics, importcpp: "#.menuBarItemsChanged(@)".}
# proc menuCommandInvoked*(this: var MenuBarComponent, arg1: ptr MenuBarModel, arg2: ApplicationCommandTarget::InvocationInfo) {.header: juce_gui_basics, importcpp: "#.menuCommandInvoked(@)".}

type
  RelativeCoordinate* {.header: juce_gui_basics, importcpp: "juce::RelativeCoordinate".} = object
  RelativeCoordinateStrings* {.header: juce_gui_basics, importcpp: "juce::RelativeCoordinate::Strings".} = object
  RelativeCoordinateStandardStrings* {.header: juce_gui_basics, importcpp: "juce::RelativeCoordinate::StandardStrings".} = object

proc `RelativeCoordinate=`*(this: var RelativeCoordinate, arg1: RelativeCoordinate): var RelativeCoordinate {.header: juce_gui_basics, importcpp: "#.operator=(@)".}
proc `RelativeCoordinate=`*(this: var RelativeCoordinate, arg1: lent RelativeCoordinate): var RelativeCoordinate {.header: juce_gui_basics, importcpp: "#.operator=(@)".}
proc `RelativeCoordinate==`*(this: RelativeCoordinate, arg1: RelativeCoordinate): bool {.header: juce_gui_basics, importcpp: "#.operator==(@)".}
proc `RelativeCoordinate!=`*(this: RelativeCoordinate, arg1: RelativeCoordinate): bool {.header: juce_gui_basics, importcpp: "#.operator!=(@)".}
proc resolve*(this: RelativeCoordinate, evaluationScope: ptr int): float64 {.header: juce_gui_basics, importcpp: "#.resolve(@)".}
proc references*(this: RelativeCoordinate, coordName: int, evaluationScope: ptr int): bool {.header: juce_gui_basics, importcpp: "#.references(@)".}
proc isRecursive*(this: RelativeCoordinate, evaluationScope: ptr int): bool {.header: juce_gui_basics, importcpp: "#.isRecursive(@)".}
proc isDynamic*(this: RelativeCoordinate): bool {.header: juce_gui_basics, importcpp: "#.isDynamic()".}
proc moveToAbsolute*(this: var RelativeCoordinate, absoluteTargetPosition: float64, evaluationScope: ptr int) {.header: juce_gui_basics, importcpp: "#.moveToAbsolute(@)".}
proc getExpression*(this: RelativeCoordinate): int {.header: juce_gui_basics, importcpp: "#.getExpression()".}
proc toString*(this: RelativeCoordinate): String {.header: juce_gui_basics, importcpp: "#.toString()".}

type
  MarkerList* {.header: juce_gui_basics, importcpp: "juce::MarkerList".} = object
  MarkerListMarker* {.header: juce_gui_basics, importcpp: "juce::MarkerList::Marker".} = object
  MarkerListListener* {.header: juce_gui_basics, importcpp: "juce::MarkerList::Listener".} = object
  MarkerListMarkerListHolder* {.header: juce_gui_basics, importcpp: "juce::MarkerList::MarkerListHolder".} = object
  MarkerListValueTreeWrapper* {.header: juce_gui_basics, importcpp: "juce::MarkerList::ValueTreeWrapper".} = object

proc `MarkerList=`*(this: var MarkerList, arg1: MarkerList): var MarkerList {.header: juce_gui_basics, importcpp: "#.operator=(@)".}
proc getNumMarkers*(this: MarkerList): int {.header: juce_gui_basics, importcpp: "#.getNumMarkers()".}
proc getMarker*(this: MarkerList, index: int): ptr MarkerListMarker {.header: juce_gui_basics, importcpp: "#.getMarker(@)".}
proc getMarker*(this: MarkerList, name: int): ptr MarkerListMarker {.header: juce_gui_basics, importcpp: "#.getMarker(@)".}
proc getMarkerPosition*(this: MarkerList, marker: MarkerListMarker, parentComponent: ptr Component): float64 {.header: juce_gui_basics, importcpp: "#.getMarkerPosition(@)".}
proc setMarker*(this: var MarkerList, name: int, position: RelativeCoordinate) {.header: juce_gui_basics, importcpp: "#.setMarker(@)".}
proc removeMarker*(this: var MarkerList, index: int) {.header: juce_gui_basics, importcpp: "#.removeMarker(@)".}
proc removeMarker*(this: var MarkerList, name: int) {.header: juce_gui_basics, importcpp: "#.removeMarker(@)".}
proc `MarkerList==`*(this: MarkerList, arg1: MarkerList): bool {.header: juce_gui_basics, importcpp: "#.operator==(@)".}
proc `MarkerList!=`*(this: MarkerList, arg1: MarkerList): bool {.header: juce_gui_basics, importcpp: "#.operator!=(@)".}
proc addListener*(this: var MarkerList, listener: ptr MarkerListListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var MarkerList, listener: ptr MarkerListListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
proc markersHaveChanged*(this: var MarkerList) {.header: juce_gui_basics, importcpp: "#.markersHaveChanged()".}

type
  RelativePoint* {.header: juce_gui_basics, importcpp: "juce::RelativePoint".} = object

proc `RelativePoint==`*(this: RelativePoint, arg1: RelativePoint): bool {.header: juce_gui_basics, importcpp: "#.operator==(@)".}
proc `RelativePoint!=`*(this: RelativePoint, arg1: RelativePoint): bool {.header: juce_gui_basics, importcpp: "#.operator!=(@)".}
proc resolve*(this: RelativePoint, evaluationContext: ptr int): int {.header: juce_gui_basics, importcpp: "#.resolve(@)".}
proc moveToAbsolute*(this: var RelativePoint, newPos: int, evaluationContext: ptr int) {.header: juce_gui_basics, importcpp: "#.moveToAbsolute(@)".}
proc toString*(this: RelativePoint): int {.header: juce_gui_basics, importcpp: "#.toString()".}
proc isDynamic*(this: RelativePoint): bool {.header: juce_gui_basics, importcpp: "#.isDynamic()".}

type
  RelativeRectangle* {.header: juce_gui_basics, importcpp: "juce::RelativeRectangle".} = object

proc `RelativeRectangle==`*(this: RelativeRectangle, arg1: RelativeRectangle): bool {.header: juce_gui_basics, importcpp: "#.operator==(@)".}
proc `RelativeRectangle!=`*(this: RelativeRectangle, arg1: RelativeRectangle): bool {.header: juce_gui_basics, importcpp: "#.operator!=(@)".}
proc resolve*(this: RelativeRectangle, scope: ptr int): int {.header: juce_gui_basics, importcpp: "#.resolve(@)".}
proc moveToAbsolute*(this: var RelativeRectangle, newPos: int, scope: ptr int) {.header: juce_gui_basics, importcpp: "#.moveToAbsolute(@)".}
proc isDynamic*(this: RelativeRectangle): bool {.header: juce_gui_basics, importcpp: "#.isDynamic()".}
proc toString*(this: RelativeRectangle): int {.header: juce_gui_basics, importcpp: "#.toString()".}
proc renameSymbol*(this: var RelativeRectangle, oldSymbol: int, newName: int, scope: int) {.header: juce_gui_basics, importcpp: "#.renameSymbol(@)".}
proc applyToComponent*(this: RelativeRectangle, component: var Component) {.header: juce_gui_basics, importcpp: "#.applyToComponent(@)".}

type
  RelativeCoordinatePositionerBase* {.header: juce_gui_basics, importcpp: "juce::RelativeCoordinatePositionerBase".} = object
  RelativeCoordinatePositionerBaseComponentScope* {.header: juce_gui_basics, importcpp: "juce::RelativeCoordinatePositionerBase::ComponentScope".} = object

proc componentMovedOrResized*(this: var RelativeCoordinatePositionerBase, arg1: var Component, arg2: bool, arg3: bool) {.header: juce_gui_basics, importcpp: "#.componentMovedOrResized(@)".}
proc componentParentHierarchyChanged*(this: var RelativeCoordinatePositionerBase, arg1: var Component) {.header: juce_gui_basics, importcpp: "#.componentParentHierarchyChanged(@)".}
proc componentChildrenChanged*(this: var RelativeCoordinatePositionerBase, arg1: var Component) {.header: juce_gui_basics, importcpp: "#.componentChildrenChanged(@)".}
proc componentBeingDeleted*(this: var RelativeCoordinatePositionerBase, arg1: var Component) {.header: juce_gui_basics, importcpp: "#.componentBeingDeleted(@)".}
proc markersChanged*(this: var RelativeCoordinatePositionerBase, arg1: ptr MarkerList) {.header: juce_gui_basics, importcpp: "#.markersChanged(@)".}
proc markerListBeingDeleted*(this: var RelativeCoordinatePositionerBase, arg1: ptr MarkerList) {.header: juce_gui_basics, importcpp: "#.markerListBeingDeleted(@)".}
proc apply*(this: var RelativeCoordinatePositionerBase) {.header: juce_gui_basics, importcpp: "#.apply()".}
proc addCoordinate*(this: var RelativeCoordinatePositionerBase, arg1: RelativeCoordinate): bool {.header: juce_gui_basics, importcpp: "#.addCoordinate(@)".}
proc addPoint*(this: var RelativeCoordinatePositionerBase, arg1: RelativePoint): bool {.header: juce_gui_basics, importcpp: "#.addPoint(@)".}

type
  RelativeParallelogram* {.header: juce_gui_basics, importcpp: "juce::RelativeParallelogram".} = object

proc resolveThreePoints*(this: RelativeParallelogram, points: ptr int, scope: ptr int) {.header: juce_gui_basics, importcpp: "#.resolveThreePoints(@)".}
proc resolveFourCorners*(this: RelativeParallelogram, points: ptr int, scope: ptr int) {.header: juce_gui_basics, importcpp: "#.resolveFourCorners(@)".}
proc getBounds*(this: RelativeParallelogram, scope: ptr int): int {.header: juce_gui_basics, importcpp: "#.getBounds(@)".}
proc getPath*(this: RelativeParallelogram, path: var int, scope: ptr int) {.header: juce_gui_basics, importcpp: "#.getPath(@)".}
proc resetToPerpendicular*(this: var RelativeParallelogram, scope: ptr int): int {.header: juce_gui_basics, importcpp: "#.resetToPerpendicular(@)".}
proc isDynamic*(this: RelativeParallelogram): bool {.header: juce_gui_basics, importcpp: "#.isDynamic()".}
proc `RelativeParallelogram==`*(this: RelativeParallelogram, arg1: RelativeParallelogram): bool {.header: juce_gui_basics, importcpp: "#.operator==(@)".}
proc `RelativeParallelogram!=`*(this: RelativeParallelogram, arg1: RelativeParallelogram): bool {.header: juce_gui_basics, importcpp: "#.operator!=(@)".}

type
  RelativePointPath* {.header: juce_gui_basics, importcpp: "juce::RelativePointPath".} = object
  RelativePointPathElementBase* {.header: juce_gui_basics, importcpp: "juce::RelativePointPath::ElementBase".} = object
  RelativePointPathStartSubPath* {.header: juce_gui_basics, importcpp: "juce::RelativePointPath::StartSubPath".} = object
  RelativePointPathCloseSubPath* {.header: juce_gui_basics, importcpp: "juce::RelativePointPath::CloseSubPath".} = object
  RelativePointPathLineTo* {.header: juce_gui_basics, importcpp: "juce::RelativePointPath::LineTo".} = object
  RelativePointPathQuadraticTo* {.header: juce_gui_basics, importcpp: "juce::RelativePointPath::QuadraticTo".} = object
  RelativePointPathCubicTo* {.header: juce_gui_basics, importcpp: "juce::RelativePointPath::CubicTo".} = object

proc `RelativePointPath==`*(this: RelativePointPath, arg1: RelativePointPath): bool {.header: juce_gui_basics, importcpp: "#.operator==(@)".}
proc `RelativePointPath!=`*(this: RelativePointPath, arg1: RelativePointPath): bool {.header: juce_gui_basics, importcpp: "#.operator!=(@)".}
proc createPath*(this: RelativePointPath, path: var int, scope: ptr int) {.header: juce_gui_basics, importcpp: "#.createPath(@)".}
proc containsAnyDynamicPoints*(this: RelativePointPath): bool {.header: juce_gui_basics, importcpp: "#.containsAnyDynamicPoints()".}
proc swapWith*(this: var RelativePointPath, arg1: var RelativePointPath) {.header: juce_gui_basics, importcpp: "#.swapWith(@)".}
proc addElement*(this: var RelativePointPath, newElement: ptr RelativePointPathElementBase) {.header: juce_gui_basics, importcpp: "#.addElement(@)".}

proc createCopy*(this: Drawable): int {.header: juce_gui_basics, importcpp: "#.createCopy()".}
proc getOutlineAsPath*(this: Drawable): int {.header: juce_gui_basics, importcpp: "#.getOutlineAsPath()".}
# proc draw*(this: Drawable, g: var int, opacity: float, transform: int = AffineTransform()) {.header: juce_gui_basics, importcpp: "#.draw(@)".}
proc drawAt*(this: Drawable, g: var int, x: float, y: float, opacity: float) {.header: juce_gui_basics, importcpp: "#.drawAt(@)".}
proc drawWithin*(this: Drawable, g: var int, destArea: int, placement: int, opacity: float) {.header: juce_gui_basics, importcpp: "#.drawWithin(@)".}
proc setOriginWithOriginalSize*(this: var Drawable, originWithinParent: int) {.header: juce_gui_basics, importcpp: "#.setOriginWithOriginalSize(@)".}
proc setTransformToFit*(this: var Drawable, areaInParent: int, placement: int) {.header: juce_gui_basics, importcpp: "#.setTransformToFit(@)".}
proc getParent*(this: Drawable): ptr DrawableComposite {.header: juce_gui_basics, importcpp: "#.getParent()".}
proc setClipPath*(this: var Drawable, drawableClipPath: int) {.header: juce_gui_basics, importcpp: "#.setClipPath(@)".}
proc getDrawableBounds*(this: Drawable): int {.header: juce_gui_basics, importcpp: "#.getDrawableBounds()".}
proc replaceColour*(this: var Drawable, originalColour: int, replacementColour: int): bool {.header: juce_gui_basics, importcpp: "#.replaceColour(@)".}

type
  DrawableShape* {.header: juce_gui_basics, importcpp: "juce::DrawableShape".} = object

proc setFill*(this: var DrawableShape, newFill: int) {.header: juce_gui_basics, importcpp: "#.setFill(@)".}
proc getFill*(this: DrawableShape): int {.header: juce_gui_basics, importcpp: "#.getFill()".}
proc setStrokeFill*(this: var DrawableShape, newStrokeFill: int) {.header: juce_gui_basics, importcpp: "#.setStrokeFill(@)".}
proc getStrokeFill*(this: DrawableShape): int {.header: juce_gui_basics, importcpp: "#.getStrokeFill()".}
proc setStrokeType*(this: var DrawableShape, newStrokeType: int) {.header: juce_gui_basics, importcpp: "#.setStrokeType(@)".}
proc setStrokeThickness*(this: var DrawableShape, newThickness: float) {.header: juce_gui_basics, importcpp: "#.setStrokeThickness(@)".}
proc getStrokeType*(this: DrawableShape): int {.header: juce_gui_basics, importcpp: "#.getStrokeType()".}
proc setDashLengths*(this: var DrawableShape, newDashLengths: int) {.header: juce_gui_basics, importcpp: "#.setDashLengths(@)".}
proc getDashLengths*(this: DrawableShape): int {.header: juce_gui_basics, importcpp: "#.getDashLengths()".}
proc getDrawableBounds*(this: DrawableShape): int {.header: juce_gui_basics, importcpp: "#.getDrawableBounds()".}
proc paint*(this: var DrawableShape, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc hitTest*(this: var DrawableShape, x: int, y: int): bool {.header: juce_gui_basics, importcpp: "#.hitTest(@)".}
proc replaceColour*(this: var DrawableShape, originalColour: int, replacementColour: int): bool {.header: juce_gui_basics, importcpp: "#.replaceColour(@)".}
proc getOutlineAsPath*(this: DrawableShape): int {.header: juce_gui_basics, importcpp: "#.getOutlineAsPath()".}

proc setBoundingBox*(this: var DrawableComposite, newBoundingBox: int) {.header: juce_gui_basics, importcpp: "#.setBoundingBox(@)".}
# proc setBoundingBox*(this: var DrawableComposite, newBoundingBox: int) {.header: juce_gui_basics, importcpp: "#.setBoundingBox(@)".}
proc getBoundingBox*(this: DrawableComposite): int {.header: juce_gui_basics, importcpp: "#.getBoundingBox()".}
proc resetBoundingBoxToContentArea*(this: var DrawableComposite) {.header: juce_gui_basics, importcpp: "#.resetBoundingBoxToContentArea()".}
proc getContentArea*(this: DrawableComposite): int {.header: juce_gui_basics, importcpp: "#.getContentArea()".}
proc setContentArea*(this: var DrawableComposite, newArea: int) {.header: juce_gui_basics, importcpp: "#.setContentArea(@)".}
proc resetContentAreaAndBoundingBoxToFitChildren*(this: var DrawableComposite) {.header: juce_gui_basics, importcpp: "#.resetContentAreaAndBoundingBoxToFitChildren()".}
proc createCopy*(this: DrawableComposite): int {.header: juce_gui_basics, importcpp: "#.createCopy()".}
proc getDrawableBounds*(this: DrawableComposite): int {.header: juce_gui_basics, importcpp: "#.getDrawableBounds()".}
proc childBoundsChanged*(this: var DrawableComposite, arg1: ptr Component) {.header: juce_gui_basics, importcpp: "#.childBoundsChanged(@)".}
proc childrenChanged*(this: var DrawableComposite) {.header: juce_gui_basics, importcpp: "#.childrenChanged()".}
proc parentHierarchyChanged*(this: var DrawableComposite) {.header: juce_gui_basics, importcpp: "#.parentHierarchyChanged()".}
proc getOutlineAsPath*(this: DrawableComposite): int {.header: juce_gui_basics, importcpp: "#.getOutlineAsPath()".}

type
  DrawableImage* {.header: juce_gui_basics, importcpp: "juce::DrawableImage".} = object

proc setImage*(this: var DrawableImage, imageToUse: int) {.header: juce_gui_basics, importcpp: "#.setImage(@)".}
proc getImage*(this: DrawableImage): int {.header: juce_gui_basics, importcpp: "#.getImage()".}
proc setOpacity*(this: var DrawableImage, newOpacity: float) {.header: juce_gui_basics, importcpp: "#.setOpacity(@)".}
proc getOpacity*(this: DrawableImage): float {.header: juce_gui_basics, importcpp: "#.getOpacity()".}
proc setOverlayColour*(this: var DrawableImage, newOverlayColour: int) {.header: juce_gui_basics, importcpp: "#.setOverlayColour(@)".}
proc getOverlayColour*(this: DrawableImage): int {.header: juce_gui_basics, importcpp: "#.getOverlayColour()".}
proc setBoundingBox*(this: var DrawableImage, newBounds: int) {.header: juce_gui_basics, importcpp: "#.setBoundingBox(@)".}
# proc setBoundingBox*(this: var DrawableImage, newBounds: int) {.header: juce_gui_basics, importcpp: "#.setBoundingBox(@)".}
proc getBoundingBox*(this: DrawableImage): int {.header: juce_gui_basics, importcpp: "#.getBoundingBox()".}
proc paint*(this: var DrawableImage, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc hitTest*(this: var DrawableImage, x: int, y: int): bool {.header: juce_gui_basics, importcpp: "#.hitTest(@)".}
proc createCopy*(this: DrawableImage): int {.header: juce_gui_basics, importcpp: "#.createCopy()".}
proc getDrawableBounds*(this: DrawableImage): int {.header: juce_gui_basics, importcpp: "#.getDrawableBounds()".}
proc getOutlineAsPath*(this: DrawableImage): int {.header: juce_gui_basics, importcpp: "#.getOutlineAsPath()".}

proc setPath*(this: var DrawablePath, newPath: int) {.header: juce_gui_basics, importcpp: "#.setPath(@)".}
proc setPath*(this: var DrawablePath, newPath: lent int) {.header: juce_gui_basics, importcpp: "#.setPath(@)".}
proc getPath*(this: DrawablePath): int {.header: juce_gui_basics, importcpp: "#.getPath()".}
proc getStrokePath*(this: DrawablePath): int {.header: juce_gui_basics, importcpp: "#.getStrokePath()".}
proc createCopy*(this: DrawablePath): int {.header: juce_gui_basics, importcpp: "#.createCopy()".}

type
  DrawableRectangle* {.header: juce_gui_basics, importcpp: "juce::DrawableRectangle".} = object

proc setRectangle*(this: var DrawableRectangle, newBounds: int) {.header: juce_gui_basics, importcpp: "#.setRectangle(@)".}
proc getRectangle*(this: DrawableRectangle): int {.header: juce_gui_basics, importcpp: "#.getRectangle()".}
proc getCornerSize*(this: DrawableRectangle): int {.header: juce_gui_basics, importcpp: "#.getCornerSize()".}
proc setCornerSize*(this: var DrawableRectangle, newSize: int) {.header: juce_gui_basics, importcpp: "#.setCornerSize(@)".}
proc createCopy*(this: DrawableRectangle): int {.header: juce_gui_basics, importcpp: "#.createCopy()".}

type
  DrawableText* {.header: juce_gui_basics, importcpp: "juce::DrawableText".} = object

proc setText*(this: var DrawableText, newText: int) {.header: juce_gui_basics, importcpp: "#.setText(@)".}
proc getText*(this: DrawableText): int {.header: juce_gui_basics, importcpp: "#.getText()".}
proc setColour*(this: var DrawableText, newColour: int) {.header: juce_gui_basics, importcpp: "#.setColour(@)".}
proc getColour*(this: DrawableText): int {.header: juce_gui_basics, importcpp: "#.getColour()".}
proc setFont*(this: var DrawableText, newFont: int, applySizeAndScale: bool) {.header: juce_gui_basics, importcpp: "#.setFont(@)".}
proc getFont*(this: DrawableText): int {.header: juce_gui_basics, importcpp: "#.getFont()".}
proc setJustification*(this: var DrawableText, newJustification: int) {.header: juce_gui_basics, importcpp: "#.setJustification(@)".}
proc getJustification*(this: DrawableText): int {.header: juce_gui_basics, importcpp: "#.getJustification()".}
proc getBoundingBox*(this: DrawableText): int {.header: juce_gui_basics, importcpp: "#.getBoundingBox()".}
proc setBoundingBox*(this: var DrawableText, newBounds: int) {.header: juce_gui_basics, importcpp: "#.setBoundingBox(@)".}
proc getFontHeight*(this: DrawableText): float {.header: juce_gui_basics, importcpp: "#.getFontHeight()".}
proc setFontHeight*(this: var DrawableText, newHeight: float) {.header: juce_gui_basics, importcpp: "#.setFontHeight(@)".}
proc getFontHorizontalScale*(this: DrawableText): float {.header: juce_gui_basics, importcpp: "#.getFontHorizontalScale()".}
proc setFontHorizontalScale*(this: var DrawableText, newScale: float) {.header: juce_gui_basics, importcpp: "#.setFontHorizontalScale(@)".}
proc paint*(this: var DrawableText, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc createCopy*(this: DrawableText): int {.header: juce_gui_basics, importcpp: "#.createCopy()".}
proc getDrawableBounds*(this: DrawableText): int {.header: juce_gui_basics, importcpp: "#.getDrawableBounds()".}
proc getOutlineAsPath*(this: DrawableText): int {.header: juce_gui_basics, importcpp: "#.getOutlineAsPath()".}
proc replaceColour*(this: var DrawableText, originalColour: int, replacementColour: int): bool {.header: juce_gui_basics, importcpp: "#.replaceColour(@)".}

type
  TextEditor* {.header: juce_gui_basics, importcpp: "juce::TextEditor".} = object
  TextEditorListener* {.header: juce_gui_basics, importcpp: "juce::TextEditor::Listener".} = object
  TextEditorInputFilter* {.header: juce_gui_basics, importcpp: "juce::TextEditor::InputFilter".} = object
  TextEditorLengthAndCharacterRestriction* {.header: juce_gui_basics, importcpp: "juce::TextEditor::LengthAndCharacterRestriction".} = object
  TextEditorLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::TextEditor::LookAndFeelMethods".} = object

proc setMultiLine*(this: var TextEditor, shouldBeMultiLine: bool, shouldWordWrap: bool = true) {.header: juce_gui_basics, importcpp: "#.setMultiLine(@)".}
proc isMultiLine*(this: TextEditor): bool {.header: juce_gui_basics, importcpp: "#.isMultiLine()".}
proc setReturnKeyStartsNewLine*(this: var TextEditor, shouldStartNewLine: bool) {.header: juce_gui_basics, importcpp: "#.setReturnKeyStartsNewLine(@)".}
proc getReturnKeyStartsNewLine*(this: TextEditor): bool {.header: juce_gui_basics, importcpp: "#.getReturnKeyStartsNewLine()".}
proc setTabKeyUsedAsCharacter*(this: var TextEditor, shouldTabKeyBeUsed: bool) {.header: juce_gui_basics, importcpp: "#.setTabKeyUsedAsCharacter(@)".}
proc isTabKeyUsedAsCharacter*(this: TextEditor): bool {.header: juce_gui_basics, importcpp: "#.isTabKeyUsedAsCharacter()".}
proc setEscapeAndReturnKeysConsumed*(this: var TextEditor, shouldBeConsumed: bool) {.header: juce_gui_basics, importcpp: "#.setEscapeAndReturnKeysConsumed(@)".}
proc setReadOnly*(this: var TextEditor, shouldBeReadOnly: bool) {.header: juce_gui_basics, importcpp: "#.setReadOnly(@)".}
proc isReadOnly*(this: TextEditor): bool {.header: juce_gui_basics, importcpp: "#.isReadOnly()".}
proc setCaretVisible*(this: var TextEditor, shouldBeVisible: bool) {.header: juce_gui_basics, importcpp: "#.setCaretVisible(@)".}
proc isCaretVisible*(this: TextEditor): bool {.header: juce_gui_basics, importcpp: "#.isCaretVisible()".}
proc setScrollbarsShown*(this: var TextEditor, shouldBeEnabled: bool) {.header: juce_gui_basics, importcpp: "#.setScrollbarsShown(@)".}
proc areScrollbarsShown*(this: TextEditor): bool {.header: juce_gui_basics, importcpp: "#.areScrollbarsShown()".}
proc setPasswordCharacter*(this: var TextEditor, passwordCharacter: int) {.header: juce_gui_basics, importcpp: "#.setPasswordCharacter(@)".}
proc getPasswordCharacter*(this: TextEditor): int {.header: juce_gui_basics, importcpp: "#.getPasswordCharacter()".}
proc setPopupMenuEnabled*(this: var TextEditor, menuEnabled: bool) {.header: juce_gui_basics, importcpp: "#.setPopupMenuEnabled(@)".}
proc isPopupMenuEnabled*(this: TextEditor): bool {.header: juce_gui_basics, importcpp: "#.isPopupMenuEnabled()".}
proc isPopupMenuCurrentlyActive*(this: TextEditor): bool {.header: juce_gui_basics, importcpp: "#.isPopupMenuCurrentlyActive()".}
proc setFont*(this: var TextEditor, newFont: int) {.header: juce_gui_basics, importcpp: "#.setFont(@)".}
proc applyFontToAllText*(this: var TextEditor, newFont: int, changeCurrentFont: bool = true) {.header: juce_gui_basics, importcpp: "#.applyFontToAllText(@)".}
proc getFont*(this: TextEditor): int {.header: juce_gui_basics, importcpp: "#.getFont()".}
proc applyColourToAllText*(this: var TextEditor, newColour: int, changeCurrentTextColour: bool = true) {.header: juce_gui_basics, importcpp: "#.applyColourToAllText(@)".}
proc setWhitespaceUnderlined*(this: var TextEditor, shouldUnderlineWhitespace: bool) {.header: juce_gui_basics, importcpp: "#.setWhitespaceUnderlined(@)".}
proc isWhitespaceUnderlined*(this: TextEditor): bool {.header: juce_gui_basics, importcpp: "#.isWhitespaceUnderlined()".}
proc setSelectAllWhenFocused*(this: var TextEditor, shouldSelectAll: bool) {.header: juce_gui_basics, importcpp: "#.setSelectAllWhenFocused(@)".}
proc setTextToShowWhenEmpty*(this: var TextEditor, text: int, colourToUse: int) {.header: juce_gui_basics, importcpp: "#.setTextToShowWhenEmpty(@)".}
proc getTextToShowWhenEmpty*(this: TextEditor): int {.header: juce_gui_basics, importcpp: "#.getTextToShowWhenEmpty()".}
proc setScrollBarThickness*(this: var TextEditor, newThicknessPixels: int) {.header: juce_gui_basics, importcpp: "#.setScrollBarThickness(@)".}
proc addListener*(this: var TextEditor, newListener: ptr TextEditorListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var TextEditor, listenerToRemove: ptr TextEditorListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
proc getText*(this: TextEditor): int {.header: juce_gui_basics, importcpp: "#.getText()".}
proc getTextInRange*(this: TextEditor, textRange: int): int {.header: juce_gui_basics, importcpp: "#.getTextInRange(@)".}
proc isEmpty*(this: TextEditor): bool {.header: juce_gui_basics, importcpp: "#.isEmpty()".}
proc setText*(this: var TextEditor, newText: int, sendTextChangeMessage: bool = true) {.header: juce_gui_basics, importcpp: "#.setText(@)".}
proc getTextValue*(this: var TextEditor): var int {.header: juce_gui_basics, importcpp: "#.getTextValue()".}
proc insertTextAtCaret*(this: var TextEditor, textToInsert: int) {.header: juce_gui_basics, importcpp: "#.insertTextAtCaret(@)".}
proc clear*(this: var TextEditor) {.header: juce_gui_basics, importcpp: "#.clear()".}
proc cut*(this: var TextEditor) {.header: juce_gui_basics, importcpp: "#.cut()".}
proc copy*(this: var TextEditor) {.header: juce_gui_basics, importcpp: "#.copy()".}
proc paste*(this: var TextEditor) {.header: juce_gui_basics, importcpp: "#.paste()".}
proc getCaretPosition*(this: TextEditor): int {.header: juce_gui_basics, importcpp: "#.getCaretPosition()".}
proc setCaretPosition*(this: var TextEditor, newIndex: int) {.header: juce_gui_basics, importcpp: "#.setCaretPosition(@)".}
proc scrollEditorToPositionCaret*(this: var TextEditor, desiredCaretX: int, desiredCaretY: int) {.header: juce_gui_basics, importcpp: "#.scrollEditorToPositionCaret(@)".}
proc getCaretRectangle*(this: var TextEditor): int {.header: juce_gui_basics, importcpp: "#.getCaretRectangle()".}
proc setHighlightedRegion*(this: var TextEditor, newSelection: int) {.header: juce_gui_basics, importcpp: "#.setHighlightedRegion(@)".}
proc getHighlightedRegion*(this: TextEditor): int {.header: juce_gui_basics, importcpp: "#.getHighlightedRegion()".}
proc getHighlightedText*(this: TextEditor): int {.header: juce_gui_basics, importcpp: "#.getHighlightedText()".}
proc getTextIndexAt*(this: var TextEditor, x: int, y: int): int {.header: juce_gui_basics, importcpp: "#.getTextIndexAt(@)".}
proc getTotalNumChars*(this: TextEditor): int {.header: juce_gui_basics, importcpp: "#.getTotalNumChars()".}
proc getTextWidth*(this: TextEditor): int {.header: juce_gui_basics, importcpp: "#.getTextWidth()".}
proc getTextHeight*(this: TextEditor): int {.header: juce_gui_basics, importcpp: "#.getTextHeight()".}
proc setIndents*(this: var TextEditor, newLeftIndent: int, newTopIndent: int) {.header: juce_gui_basics, importcpp: "#.setIndents(@)".}
proc setBorder*(this: var TextEditor, border: int) {.header: juce_gui_basics, importcpp: "#.setBorder(@)".}
proc getBorder*(this: TextEditor): int {.header: juce_gui_basics, importcpp: "#.getBorder()".}
proc setScrollToShowCursor*(this: var TextEditor, shouldScrollToShowCaret: bool) {.header: juce_gui_basics, importcpp: "#.setScrollToShowCursor(@)".}
proc setJustification*(this: var TextEditor, newJustification: int) {.header: juce_gui_basics, importcpp: "#.setJustification(@)".}
proc getJustificationType*(this: TextEditor): int {.header: juce_gui_basics, importcpp: "#.getJustificationType()".}
proc setLineSpacing*(this: var TextEditor, newLineSpacing: float) {.header: juce_gui_basics, importcpp: "#.setLineSpacing(@)".}
proc getLineSpacing*(this: TextEditor): float {.header: juce_gui_basics, importcpp: "#.getLineSpacing()".}
proc moveCaretToEnd*(this: var TextEditor) {.header: juce_gui_basics, importcpp: "#.moveCaretToEnd()".}
proc moveCaretLeft*(this: var TextEditor, moveInWholeWordSteps: bool, selecting: bool): bool {.header: juce_gui_basics, importcpp: "#.moveCaretLeft(@)".}
proc moveCaretRight*(this: var TextEditor, moveInWholeWordSteps: bool, selecting: bool): bool {.header: juce_gui_basics, importcpp: "#.moveCaretRight(@)".}
proc moveCaretUp*(this: var TextEditor, selecting: bool): bool {.header: juce_gui_basics, importcpp: "#.moveCaretUp(@)".}
proc moveCaretDown*(this: var TextEditor, selecting: bool): bool {.header: juce_gui_basics, importcpp: "#.moveCaretDown(@)".}
proc pageUp*(this: var TextEditor, selecting: bool): bool {.header: juce_gui_basics, importcpp: "#.pageUp(@)".}
proc pageDown*(this: var TextEditor, selecting: bool): bool {.header: juce_gui_basics, importcpp: "#.pageDown(@)".}
proc scrollDown*(this: var TextEditor): bool {.header: juce_gui_basics, importcpp: "#.scrollDown()".}
proc scrollUp*(this: var TextEditor): bool {.header: juce_gui_basics, importcpp: "#.scrollUp()".}
proc moveCaretToTop*(this: var TextEditor, selecting: bool): bool {.header: juce_gui_basics, importcpp: "#.moveCaretToTop(@)".}
proc moveCaretToStartOfLine*(this: var TextEditor, selecting: bool): bool {.header: juce_gui_basics, importcpp: "#.moveCaretToStartOfLine(@)".}
proc moveCaretToEnd*(this: var TextEditor, selecting: bool): bool {.header: juce_gui_basics, importcpp: "#.moveCaretToEnd(@)".}
proc moveCaretToEndOfLine*(this: var TextEditor, selecting: bool): bool {.header: juce_gui_basics, importcpp: "#.moveCaretToEndOfLine(@)".}
proc deleteBackwards*(this: var TextEditor, moveInWholeWordSteps: bool): bool {.header: juce_gui_basics, importcpp: "#.deleteBackwards(@)".}
proc deleteForwards*(this: var TextEditor, moveInWholeWordSteps: bool): bool {.header: juce_gui_basics, importcpp: "#.deleteForwards(@)".}
proc copyToClipboard*(this: var TextEditor): bool {.header: juce_gui_basics, importcpp: "#.copyToClipboard()".}
proc cutToClipboard*(this: var TextEditor): bool {.header: juce_gui_basics, importcpp: "#.cutToClipboard()".}
proc pasteFromClipboard*(this: var TextEditor): bool {.header: juce_gui_basics, importcpp: "#.pasteFromClipboard()".}
proc selectAll*(this: var TextEditor): bool {.header: juce_gui_basics, importcpp: "#.selectAll()".}
proc undo*(this: var TextEditor): bool {.header: juce_gui_basics, importcpp: "#.undo()".}
proc redo*(this: var TextEditor): bool {.header: juce_gui_basics, importcpp: "#.redo()".}
proc addPopupMenuItems*(this: var TextEditor, menuToAddTo: var PopupMenu, mouseClickEvent: ptr MouseEvent) {.header: juce_gui_basics, importcpp: "#.addPopupMenuItems(@)".}
proc performPopupMenuAction*(this: var TextEditor, menuItemID: int) {.header: juce_gui_basics, importcpp: "#.performPopupMenuAction(@)".}
proc setInputFilter*(this: var TextEditor, newFilter: ptr TextEditorInputFilter, takeOwnership: bool) {.header: juce_gui_basics, importcpp: "#.setInputFilter(@)".}
proc getInputFilter*(this: TextEditor): ptr TextEditorInputFilter {.header: juce_gui_basics, importcpp: "#.getInputFilter()".}
# proc setInputRestrictions*(this: var TextEditor, maxTextLength: int, allowedCharacters: int = String()) {.header: juce_gui_basics, importcpp: "#.setInputRestrictions(@)".}
# proc setKeyboardType*(this: var TextEditor, `type`: juce::TextInputTarget::VirtualKeyboardType) {.header: juce_gui_basics, importcpp: "#.setKeyboardType(@)".}
proc paint*(this: var TextEditor, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc paintOverChildren*(this: var TextEditor, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paintOverChildren(@)".}
proc mouseDown*(this: var TextEditor, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDown(@)".}
proc mouseUp*(this: var TextEditor, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseUp(@)".}
proc mouseDrag*(this: var TextEditor, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDrag(@)".}
proc mouseDoubleClick*(this: var TextEditor, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDoubleClick(@)".}
proc mouseWheelMove*(this: var TextEditor, arg1: MouseEvent, arg2: MouseWheelDetails) {.header: juce_gui_basics, importcpp: "#.mouseWheelMove(@)".}
proc keyPressed*(this: var TextEditor, arg1: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.keyPressed(@)".}
proc keyStateChanged*(this: var TextEditor, arg1: bool): bool {.header: juce_gui_basics, importcpp: "#.keyStateChanged(@)".}
# proc focusGained*(this: var TextEditor, arg1: juce::Component::FocusChangeType) {.header: juce_gui_basics, importcpp: "#.focusGained(@)".}
# proc focusLost*(this: var TextEditor, arg1: juce::Component::FocusChangeType) {.header: juce_gui_basics, importcpp: "#.focusLost(@)".}
proc resized*(this: var TextEditor) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc enablementChanged*(this: var TextEditor) {.header: juce_gui_basics, importcpp: "#.enablementChanged()".}
proc lookAndFeelChanged*(this: var TextEditor) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}
proc parentHierarchyChanged*(this: var TextEditor) {.header: juce_gui_basics, importcpp: "#.parentHierarchyChanged()".}
proc isTextInputActive*(this: TextEditor): bool {.header: juce_gui_basics, importcpp: "#.isTextInputActive()".}
proc setTemporaryUnderlining*(this: var TextEditor, arg1: int) {.header: juce_gui_basics, importcpp: "#.setTemporaryUnderlining(@)".}
# proc getKeyboardType*(this: var TextEditor): juce::TextInputTarget::VirtualKeyboardType {.header: juce_gui_basics, importcpp: "#.getKeyboardType()".}

type
  Label* {.header: juce_gui_basics, importcpp: "juce::Label".} = object
  LabelListener* {.header: juce_gui_basics, importcpp: "juce::Label::Listener".} = object
  LabelLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::Label::LookAndFeelMethods".} = object

proc setText*(this: var Label, newText: int, notification: int) {.header: juce_gui_basics, importcpp: "#.setText(@)".}
proc getText*(this: Label, returnActiveEditorContents: bool = false): int {.header: juce_gui_basics, importcpp: "#.getText(@)".}
proc getTextValue*(this: var Label): var int {.header: juce_gui_basics, importcpp: "#.getTextValue()".}
proc setFont*(this: var Label, newFont: int) {.header: juce_gui_basics, importcpp: "#.setFont(@)".}
proc getFont*(this: Label): int {.header: juce_gui_basics, importcpp: "#.getFont()".}
proc setJustificationType*(this: var Label, justification: int) {.header: juce_gui_basics, importcpp: "#.setJustificationType(@)".}
proc getJustificationType*(this: Label): int {.header: juce_gui_basics, importcpp: "#.getJustificationType()".}
proc setBorderSize*(this: var Label, newBorderSize: int) {.header: juce_gui_basics, importcpp: "#.setBorderSize(@)".}
proc getBorderSize*(this: Label): int {.header: juce_gui_basics, importcpp: "#.getBorderSize()".}
proc attachToComponent*(this: var Label, owner: ptr Component, onLeft: bool) {.header: juce_gui_basics, importcpp: "#.attachToComponent(@)".}
proc getAttachedComponent*(this: Label): ptr Component {.header: juce_gui_basics, importcpp: "#.getAttachedComponent()".}
proc isAttachedOnLeft*(this: Label): bool {.header: juce_gui_basics, importcpp: "#.isAttachedOnLeft()".}
proc setMinimumHorizontalScale*(this: var Label, newScale: float) {.header: juce_gui_basics, importcpp: "#.setMinimumHorizontalScale(@)".}
proc getMinimumHorizontalScale*(this: Label): float {.header: juce_gui_basics, importcpp: "#.getMinimumHorizontalScale()".}
# proc setKeyboardType*(this: var Label, `type`: TextInputTarget::VirtualKeyboardType) {.header: juce_gui_basics, importcpp: "#.setKeyboardType(@)".}
proc addListener*(this: var Label, listener: ptr LabelListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var Label, listener: ptr LabelListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
proc setEditable*(this: var Label, editOnSingleClick: bool, editOnDoubleClick: bool = false, lossOfFocusDiscardsChanges: bool = false) {.header: juce_gui_basics, importcpp: "#.setEditable(@)".}
proc isEditableOnSingleClick*(this: Label): bool {.header: juce_gui_basics, importcpp: "#.isEditableOnSingleClick()".}
proc isEditableOnDoubleClick*(this: Label): bool {.header: juce_gui_basics, importcpp: "#.isEditableOnDoubleClick()".}
proc doesLossOfFocusDiscardChanges*(this: Label): bool {.header: juce_gui_basics, importcpp: "#.doesLossOfFocusDiscardChanges()".}
proc isEditable*(this: Label): bool {.header: juce_gui_basics, importcpp: "#.isEditable()".}
proc showEditor*(this: var Label) {.header: juce_gui_basics, importcpp: "#.showEditor()".}
proc hideEditor*(this: var Label, discardCurrentEditorContents: bool) {.header: juce_gui_basics, importcpp: "#.hideEditor(@)".}
proc isBeingEdited*(this: Label): bool {.header: juce_gui_basics, importcpp: "#.isBeingEdited()".}
proc getCurrentTextEditor*(this: Label): ptr TextEditor {.header: juce_gui_basics, importcpp: "#.getCurrentTextEditor()".}

proc setEditableText*(this: var ComboBox, isEditable: bool) {.header: juce_gui_basics, importcpp: "#.setEditableText(@)".}
proc isTextEditable*(this: ComboBox): bool {.header: juce_gui_basics, importcpp: "#.isTextEditable()".}
proc setJustificationType*(this: var ComboBox, justification: int) {.header: juce_gui_basics, importcpp: "#.setJustificationType(@)".}
proc getJustificationType*(this: ComboBox): int {.header: juce_gui_basics, importcpp: "#.getJustificationType()".}
proc addItem*(this: var ComboBox, newItemText: int, newItemId: int) {.header: juce_gui_basics, importcpp: "#.addItem(@)".}
proc addItemList*(this: var ComboBox, items: int, firstItemIdOffset: int) {.header: juce_gui_basics, importcpp: "#.addItemList(@)".}
proc addSeparator*(this: var ComboBox) {.header: juce_gui_basics, importcpp: "#.addSeparator()".}
proc addSectionHeading*(this: var ComboBox, headingName: int) {.header: juce_gui_basics, importcpp: "#.addSectionHeading(@)".}
proc setItemEnabled*(this: var ComboBox, itemId: int, shouldBeEnabled: bool) {.header: juce_gui_basics, importcpp: "#.setItemEnabled(@)".}
proc isItemEnabled*(this: ComboBox, itemId: int): bool {.header: juce_gui_basics, importcpp: "#.isItemEnabled(@)".}
proc changeItemText*(this: var ComboBox, itemId: int, newText: int) {.header: juce_gui_basics, importcpp: "#.changeItemText(@)".}
# proc clear*(this: var ComboBox, notification: int = ) {.header: juce_gui_basics, importcpp: "#.clear(@)".}
# proc getNumItems*(this: ComboBox): int {.header: juce_gui_basics, importcpp: "#.getNumItems()".}
proc getItemText*(this: ComboBox, index: int): int {.header: juce_gui_basics, importcpp: "#.getItemText(@)".}
proc getItemId*(this: ComboBox, index: int): int {.header: juce_gui_basics, importcpp: "#.getItemId(@)".}
proc indexOfItemId*(this: ComboBox, itemId: int): int {.header: juce_gui_basics, importcpp: "#.indexOfItemId(@)".}
proc getSelectedId*(this: ComboBox): int {.header: juce_gui_basics, importcpp: "#.getSelectedId()".}
proc getSelectedIdAsValue*(this: var ComboBox): var int {.header: juce_gui_basics, importcpp: "#.getSelectedIdAsValue()".}
# proc setSelectedId*(this: var ComboBox, newItemId: int, notification: int = ) {.header: juce_gui_basics, importcpp: "#.setSelectedId(@)".}
# proc getSelectedItemIndex*(this: ComboBox): int {.header: juce_gui_basics, importcpp: "#.getSelectedItemIndex()".}
# proc setSelectedItemIndex*(this: var ComboBox, newItemIndex: int, notification: int = ) {.header: juce_gui_basics, importcpp: "#.setSelectedItemIndex(@)".}
# proc getText*(this: ComboBox): int {.header: juce_gui_basics, importcpp: "#.getText()".}
# proc setText*(this: var ComboBox, newText: int, notification: int = ) {.header: juce_gui_basics, importcpp: "#.setText(@)".}
# proc showEditor*(this: var ComboBox) {.header: juce_gui_basics, importcpp: "#.showEditor()".}
# proc showPopup*(this: var ComboBox) {.header: juce_gui_basics, importcpp: "#.showPopup()".}
proc hidePopup*(this: var ComboBox) {.header: juce_gui_basics, importcpp: "#.hidePopup()".}
proc isPopupActive*(this: ComboBox): bool {.header: juce_gui_basics, importcpp: "#.isPopupActive()".}
proc getRootMenu*(this: var ComboBox): ptr PopupMenu {.header: juce_gui_basics, importcpp: "#.getRootMenu()".}
proc getRootMenu*(this: ComboBox): ptr PopupMenu {.header: juce_gui_basics, importcpp: "#.getRootMenu()".}
proc addListener*(this: var ComboBox, listener: ptr ComboBoxListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var ComboBox, listener: ptr ComboBoxListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
proc setTextWhenNothingSelected*(this: var ComboBox, newMessage: int) {.header: juce_gui_basics, importcpp: "#.setTextWhenNothingSelected(@)".}
proc getTextWhenNothingSelected*(this: ComboBox): int {.header: juce_gui_basics, importcpp: "#.getTextWhenNothingSelected()".}
proc setTextWhenNoChoicesAvailable*(this: var ComboBox, newMessage: int) {.header: juce_gui_basics, importcpp: "#.setTextWhenNoChoicesAvailable(@)".}
proc getTextWhenNoChoicesAvailable*(this: ComboBox): int {.header: juce_gui_basics, importcpp: "#.getTextWhenNoChoicesAvailable()".}
proc setTooltip*(this: var ComboBox, newTooltip: int) {.header: juce_gui_basics, importcpp: "#.setTooltip(@)".}
proc setScrollWheelEnabled*(this: var ComboBox, enabled: bool) {.header: juce_gui_basics, importcpp: "#.setScrollWheelEnabled(@)".}
proc enablementChanged*(this: var ComboBox) {.header: juce_gui_basics, importcpp: "#.enablementChanged()".}
proc colourChanged*(this: var ComboBox) {.header: juce_gui_basics, importcpp: "#.colourChanged()".}
# proc focusGained*(this: var ComboBox, arg1: Component::FocusChangeType) {.header: juce_gui_basics, importcpp: "#.focusGained(@)".}
# proc focusLost*(this: var ComboBox, arg1: Component::FocusChangeType) {.header: juce_gui_basics, importcpp: "#.focusLost(@)".}
proc handleAsyncUpdate*(this: var ComboBox) {.header: juce_gui_basics, importcpp: "#.handleAsyncUpdate()".}
proc getTooltip*(this: var ComboBox): int {.header: juce_gui_basics, importcpp: "#.getTooltip()".}
proc mouseDown*(this: var ComboBox, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDown(@)".}
proc mouseDrag*(this: var ComboBox, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDrag(@)".}
proc mouseUp*(this: var ComboBox, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseUp(@)".}
proc mouseWheelMove*(this: var ComboBox, arg1: MouseEvent, arg2: MouseWheelDetails) {.header: juce_gui_basics, importcpp: "#.mouseWheelMove(@)".}
proc lookAndFeelChanged*(this: var ComboBox) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}
proc paint*(this: var ComboBox, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var ComboBox) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc keyStateChanged*(this: var ComboBox, arg1: bool): bool {.header: juce_gui_basics, importcpp: "#.keyStateChanged(@)".}
proc keyPressed*(this: var ComboBox, arg1: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.keyPressed(@)".}
proc valueChanged*(this: var ComboBox, arg1: var int) {.header: juce_gui_basics, importcpp: "#.valueChanged(@)".}
proc parentHierarchyChanged*(this: var ComboBox) {.header: juce_gui_basics, importcpp: "#.parentHierarchyChanged()".}

type
  ImageComponent* {.header: juce_gui_basics, importcpp: "juce::ImageComponent".} = object

proc setImage*(this: var ImageComponent, newImage: int) {.header: juce_gui_basics, importcpp: "#.setImage(@)".}
proc setImage*(this: var ImageComponent, newImage: int, placementToUse: int) {.header: juce_gui_basics, importcpp: "#.setImage(@)".}
proc getImage*(this: ImageComponent): int {.header: juce_gui_basics, importcpp: "#.getImage()".}
proc setImagePlacement*(this: var ImageComponent, newPlacement: int) {.header: juce_gui_basics, importcpp: "#.setImagePlacement(@)".}
proc getImagePlacement*(this: ImageComponent): int {.header: juce_gui_basics, importcpp: "#.getImagePlacement()".}
proc paint*(this: var ImageComponent, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}

type
  ListBoxModel* {.header: juce_gui_basics, importcpp: "juce::ListBoxModel".} = object

proc getNumRows*(this: var ListBoxModel): int {.header: juce_gui_basics, importcpp: "#.getNumRows()".}
proc paintListBoxItem*(this: var ListBoxModel, rowNumber: int, g: var int, width: int, height: int, rowIsSelected: bool) {.header: juce_gui_basics, importcpp: "#.paintListBoxItem(@)".}
proc refreshComponentForRow*(this: var ListBoxModel, rowNumber: int, isRowSelected: bool, existingComponentToUpdate: ptr Component): ptr Component {.header: juce_gui_basics, importcpp: "#.refreshComponentForRow(@)".}
proc listBoxItemClicked*(this: var ListBoxModel, row: int, arg2: MouseEvent) {.header: juce_gui_basics, importcpp: "#.listBoxItemClicked(@)".}
proc listBoxItemDoubleClicked*(this: var ListBoxModel, row: int, arg2: MouseEvent) {.header: juce_gui_basics, importcpp: "#.listBoxItemDoubleClicked(@)".}
proc backgroundClicked*(this: var ListBoxModel, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.backgroundClicked(@)".}
proc selectedRowsChanged*(this: var ListBoxModel, lastRowSelected: int) {.header: juce_gui_basics, importcpp: "#.selectedRowsChanged(@)".}
proc deleteKeyPressed*(this: var ListBoxModel, lastRowSelected: int) {.header: juce_gui_basics, importcpp: "#.deleteKeyPressed(@)".}
proc returnKeyPressed*(this: var ListBoxModel, lastRowSelected: int) {.header: juce_gui_basics, importcpp: "#.returnKeyPressed(@)".}
proc listWasScrolled*(this: var ListBoxModel) {.header: juce_gui_basics, importcpp: "#.listWasScrolled()".}
proc getDragSourceDescription*(this: var ListBoxModel, rowsToDescribe: int): int {.header: juce_gui_basics, importcpp: "#.getDragSourceDescription(@)".}
proc getTooltipForRow*(this: var ListBoxModel, row: int): int {.header: juce_gui_basics, importcpp: "#.getTooltipForRow(@)".}
proc getMouseCursorForRow*(this: var ListBoxModel, row: int): MouseCursor {.header: juce_gui_basics, importcpp: "#.getMouseCursorForRow(@)".}

type
  ListBox* {.header: juce_gui_basics, importcpp: "juce::ListBox".} = object

proc setModel*(this: var ListBox, newModel: ptr ListBoxModel) {.header: juce_gui_basics, importcpp: "#.setModel(@)".}
proc getModel*(this: ListBox): ptr ListBoxModel {.header: juce_gui_basics, importcpp: "#.getModel()".}
proc updateContent*(this: var ListBox) {.header: juce_gui_basics, importcpp: "#.updateContent()".}
proc setMultipleSelectionEnabled*(this: var ListBox, shouldBeEnabled: bool) {.header: juce_gui_basics, importcpp: "#.setMultipleSelectionEnabled(@)".}
proc setClickingTogglesRowSelection*(this: var ListBox, flipRowSelection: bool) {.header: juce_gui_basics, importcpp: "#.setClickingTogglesRowSelection(@)".}
proc setRowSelectedOnMouseDown*(this: var ListBox, isSelectedOnMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.setRowSelectedOnMouseDown(@)".}
proc setMouseMoveSelectsRows*(this: var ListBox, shouldSelect: bool) {.header: juce_gui_basics, importcpp: "#.setMouseMoveSelectsRows(@)".}
proc selectRow*(this: var ListBox, rowNumber: int, dontScrollToShowThisRow: bool = false, deselectOthersFirst: bool = true) {.header: juce_gui_basics, importcpp: "#.selectRow(@)".}
proc selectRangeOfRows*(this: var ListBox, firstRow: int, lastRow: int, dontScrollToShowThisRange: bool = false) {.header: juce_gui_basics, importcpp: "#.selectRangeOfRows(@)".}
proc deselectRow*(this: var ListBox, rowNumber: int) {.header: juce_gui_basics, importcpp: "#.deselectRow(@)".}
proc deselectAllRows*(this: var ListBox) {.header: juce_gui_basics, importcpp: "#.deselectAllRows()".}
proc flipRowSelection*(this: var ListBox, rowNumber: int) {.header: juce_gui_basics, importcpp: "#.flipRowSelection(@)".}
proc getSelectedRows*(this: ListBox): int {.header: juce_gui_basics, importcpp: "#.getSelectedRows()".}
# proc setSelectedRows*(this: var ListBox, setOfRowsToBeSelected: int, sendNotificationEventToModel: int = ) {.header: juce_gui_basics, importcpp: "#.setSelectedRows(@)".}
# proc isRowSelected*(this: ListBox, rowNumber: int): bool {.header: juce_gui_basics, importcpp: "#.isRowSelected(@)".}
proc getNumSelectedRows*(this: ListBox): int {.header: juce_gui_basics, importcpp: "#.getNumSelectedRows()".}
proc getSelectedRow*(this: ListBox, index: int = 0): int {.header: juce_gui_basics, importcpp: "#.getSelectedRow(@)".}
proc getLastRowSelected*(this: ListBox): int {.header: juce_gui_basics, importcpp: "#.getLastRowSelected()".}
proc selectRowsBasedOnModifierKeys*(this: var ListBox, rowThatWasClickedOn: int, modifiers: ModifierKeys, isMouseUpEvent: bool) {.header: juce_gui_basics, importcpp: "#.selectRowsBasedOnModifierKeys(@)".}
proc setVerticalPosition*(this: var ListBox, newProportion: float64) {.header: juce_gui_basics, importcpp: "#.setVerticalPosition(@)".}
proc getVerticalPosition*(this: ListBox): float64 {.header: juce_gui_basics, importcpp: "#.getVerticalPosition()".}
proc scrollToEnsureRowIsOnscreen*(this: var ListBox, row: int) {.header: juce_gui_basics, importcpp: "#.scrollToEnsureRowIsOnscreen(@)".}
proc getVerticalScrollBar*(this: ListBox): var ScrollBar {.header: juce_gui_basics, importcpp: "#.getVerticalScrollBar()".}
proc getHorizontalScrollBar*(this: ListBox): var ScrollBar {.header: juce_gui_basics, importcpp: "#.getHorizontalScrollBar()".}
proc getRowContainingPosition*(this: ListBox, x: int, y: int): int {.header: juce_gui_basics, importcpp: "#.getRowContainingPosition(@)".}
proc getInsertionIndexForPosition*(this: ListBox, x: int, y: int): int {.header: juce_gui_basics, importcpp: "#.getInsertionIndexForPosition(@)".}
proc getRowPosition*(this: ListBox, rowNumber: int, relativeToComponentTopLeft: bool): int {.header: juce_gui_basics, importcpp: "#.getRowPosition(@)".}
proc getComponentForRowNumber*(this: ListBox, rowNumber: int): ptr Component {.header: juce_gui_basics, importcpp: "#.getComponentForRowNumber(@)".}
proc getRowNumberOfComponent*(this: ListBox, rowComponent: ptr Component): int {.header: juce_gui_basics, importcpp: "#.getRowNumberOfComponent(@)".}
proc getVisibleRowWidth*(this: ListBox): int {.header: juce_gui_basics, importcpp: "#.getVisibleRowWidth()".}
proc setRowHeight*(this: var ListBox, newHeight: int) {.header: juce_gui_basics, importcpp: "#.setRowHeight(@)".}
proc getRowHeight*(this: ListBox): int {.header: juce_gui_basics, importcpp: "#.getRowHeight()".}
proc getNumRowsOnScreen*(this: ListBox): int {.header: juce_gui_basics, importcpp: "#.getNumRowsOnScreen()".}
proc setOutlineThickness*(this: var ListBox, outlineThickness: int) {.header: juce_gui_basics, importcpp: "#.setOutlineThickness(@)".}
proc getOutlineThickness*(this: ListBox): int {.header: juce_gui_basics, importcpp: "#.getOutlineThickness()".}
proc setHeaderComponent*(this: var ListBox, newHeaderComponent: int) {.header: juce_gui_basics, importcpp: "#.setHeaderComponent(@)".}
proc getHeaderComponent*(this: ListBox): ptr Component {.header: juce_gui_basics, importcpp: "#.getHeaderComponent()".}
proc setMinimumContentWidth*(this: var ListBox, newMinimumWidth: int) {.header: juce_gui_basics, importcpp: "#.setMinimumContentWidth(@)".}
proc getVisibleContentWidth*(this: ListBox): int {.header: juce_gui_basics, importcpp: "#.getVisibleContentWidth()".}
proc repaintRow*(this: var ListBox, rowNumber: int) {.header: juce_gui_basics, importcpp: "#.repaintRow(@)".}
proc createSnapshotOfRows*(this: var ListBox, rows: int, x: var int, y: var int): int {.header: juce_gui_basics, importcpp: "#.createSnapshotOfRows(@)".}
proc getViewport*(this: ListBox): ptr Viewport {.header: juce_gui_basics, importcpp: "#.getViewport()".}
proc keyPressed*(this: var ListBox, arg1: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.keyPressed(@)".}
proc keyStateChanged*(this: var ListBox, isKeyDown: bool): bool {.header: juce_gui_basics, importcpp: "#.keyStateChanged(@)".}
proc paint*(this: var ListBox, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc paintOverChildren*(this: var ListBox, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paintOverChildren(@)".}
proc resized*(this: var ListBox) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc visibilityChanged*(this: var ListBox) {.header: juce_gui_basics, importcpp: "#.visibilityChanged()".}
proc mouseWheelMove*(this: var ListBox, arg1: MouseEvent, arg2: MouseWheelDetails) {.header: juce_gui_basics, importcpp: "#.mouseWheelMove(@)".}
proc mouseUp*(this: var ListBox, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseUp(@)".}
proc colourChanged*(this: var ListBox) {.header: juce_gui_basics, importcpp: "#.colourChanged()".}
proc parentHierarchyChanged*(this: var ListBox) {.header: juce_gui_basics, importcpp: "#.parentHierarchyChanged()".}
proc startDragAndDrop*(this: var ListBox, arg1: MouseEvent, rowsToDrag: int, dragDescription: int, allowDraggingToOtherWindows: bool) {.header: juce_gui_basics, importcpp: "#.startDragAndDrop(@)".}

proc setPercentageDisplay*(this: var ProgressBar, shouldDisplayPercentage: bool) {.header: juce_gui_basics, importcpp: "#.setPercentageDisplay(@)".}
proc setTextToDisplay*(this: var ProgressBar, text: int) {.header: juce_gui_basics, importcpp: "#.setTextToDisplay(@)".}

type
  Slider* {.header: juce_gui_basics, importcpp: "juce::Slider".} = object
  SliderRotaryParameters* {.header: juce_gui_basics, importcpp: "juce::Slider::RotaryParameters".} = object
  SliderListener* {.header: juce_gui_basics, importcpp: "juce::Slider::Listener".} = object
  SliderSliderLayout* {.header: juce_gui_basics, importcpp: "juce::Slider::SliderLayout".} = object
  SliderLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::Slider::LookAndFeelMethods".} = object

# proc setSliderStyle*(this: var Slider, newStyle: juce::Slider::SliderStyle) {.header: juce_gui_basics, importcpp: "#.setSliderStyle(@)".}
# proc getSliderStyle*(this: Slider): juce::Slider::SliderStyle {.header: juce_gui_basics, importcpp: "#.getSliderStyle()".}
proc setRotaryParameters*(this: var Slider, newParameters: SliderRotaryParameters) {.header: juce_gui_basics, importcpp: "#.setRotaryParameters(@)".}
proc setRotaryParameters*(this: var Slider, startAngleRadians: float, endAngleRadians: float, stopAtEnd: bool) {.header: juce_gui_basics, importcpp: "#.setRotaryParameters(@)".}
proc getRotaryParameters*(this: Slider): SliderRotaryParameters {.header: juce_gui_basics, importcpp: "#.getRotaryParameters()".}
proc setMouseDragSensitivity*(this: var Slider, distanceForFullScaleDrag: int) {.header: juce_gui_basics, importcpp: "#.setMouseDragSensitivity(@)".}
proc getMouseDragSensitivity*(this: Slider): int {.header: juce_gui_basics, importcpp: "#.getMouseDragSensitivity()".}
proc setVelocityBasedMode*(this: var Slider, isVelocityBased: bool) {.header: juce_gui_basics, importcpp: "#.setVelocityBasedMode(@)".}
proc getVelocityBasedMode*(this: Slider): bool {.header: juce_gui_basics, importcpp: "#.getVelocityBasedMode()".}
# proc setVelocityModeParameters*(this: var Slider, sensitivity: float64 = 1.0, threshold: int = 1, offset: float64 = 0.0, userCanPressKeyToSwapMode: bool = true, modifiersToSwapModes: ModifierKeys::Flags = ModifierKeys::ctrlAltCommandModifiers) {.header: juce_gui_basics, importcpp: "#.setVelocityModeParameters(@)".}
proc getVelocitySensitivity*(this: Slider): float64 {.header: juce_gui_basics, importcpp: "#.getVelocitySensitivity()".}
proc getVelocityThreshold*(this: Slider): int {.header: juce_gui_basics, importcpp: "#.getVelocityThreshold()".}
proc getVelocityOffset*(this: Slider): float64 {.header: juce_gui_basics, importcpp: "#.getVelocityOffset()".}
proc getVelocityModeIsSwappable*(this: Slider): bool {.header: juce_gui_basics, importcpp: "#.getVelocityModeIsSwappable()".}
proc setSkewFactor*(this: var Slider, factor: float64, symmetricSkew: bool = false) {.header: juce_gui_basics, importcpp: "#.setSkewFactor(@)".}
proc setSkewFactorFromMidPoint*(this: var Slider, sliderValueToShowAtMidPoint: float64) {.header: juce_gui_basics, importcpp: "#.setSkewFactorFromMidPoint(@)".}
proc getSkewFactor*(this: Slider): float64 {.header: juce_gui_basics, importcpp: "#.getSkewFactor()".}
proc isSymmetricSkew*(this: Slider): bool {.header: juce_gui_basics, importcpp: "#.isSymmetricSkew()".}
# proc setIncDecButtonsMode*(this: var Slider, mode: juce::Slider::IncDecButtonMode) {.header: juce_gui_basics, importcpp: "#.setIncDecButtonsMode(@)".}
# proc setTextBoxStyle*(this: var Slider, newPosition: juce::Slider::TextEntryBoxPosition, isReadOnly: bool, textEntryBoxWidth: int, textEntryBoxHeight: int) {.header: juce_gui_basics, importcpp: "#.setTextBoxStyle(@)".}
# proc getTextBoxPosition*(this: Slider): juce::Slider::TextEntryBoxPosition {.header: juce_gui_basics, importcpp: "#.getTextBoxPosition()".}
proc getTextBoxWidth*(this: Slider): int {.header: juce_gui_basics, importcpp: "#.getTextBoxWidth()".}
proc getTextBoxHeight*(this: Slider): int {.header: juce_gui_basics, importcpp: "#.getTextBoxHeight()".}
proc setTextBoxIsEditable*(this: var Slider, shouldBeEditable: bool) {.header: juce_gui_basics, importcpp: "#.setTextBoxIsEditable(@)".}
proc isTextBoxEditable*(this: Slider): bool {.header: juce_gui_basics, importcpp: "#.isTextBoxEditable()".}
proc showTextBox*(this: var Slider) {.header: juce_gui_basics, importcpp: "#.showTextBox()".}
proc hideTextBox*(this: var Slider, discardCurrentEditorContents: bool) {.header: juce_gui_basics, importcpp: "#.hideTextBox(@)".}
# proc setValue*(this: var Slider, newValue: float64, notification: int = ) {.header: juce_gui_basics, importcpp: "#.setValue(@)".}
# proc getValue*(this: Slider): float64 {.header: juce_gui_basics, importcpp: "#.getValue()".}
proc getValueObject*(this: var Slider): var int {.header: juce_gui_basics, importcpp: "#.getValueObject()".}
proc setRange*(this: var Slider, newMinimum: float64, newMaximum: float64, newInterval: float64 = 0) {.header: juce_gui_basics, importcpp: "#.setRange(@)".}
proc setRange*(this: var Slider, newRange: int, newInterval: float64) {.header: juce_gui_basics, importcpp: "#.setRange(@)".}
proc setNormalisableRange*(this: var Slider, newNormalisableRange: int) {.header: juce_gui_basics, importcpp: "#.setNormalisableRange(@)".}
proc getRange*(this: Slider): int {.header: juce_gui_basics, importcpp: "#.getRange()".}
proc getMaximum*(this: Slider): float64 {.header: juce_gui_basics, importcpp: "#.getMaximum()".}
proc getMinimum*(this: Slider): float64 {.header: juce_gui_basics, importcpp: "#.getMinimum()".}
proc getInterval*(this: Slider): float64 {.header: juce_gui_basics, importcpp: "#.getInterval()".}
proc getMinValue*(this: Slider): float64 {.header: juce_gui_basics, importcpp: "#.getMinValue()".}
proc getMinValueObject*(this: var Slider): var int {.header: juce_gui_basics, importcpp: "#.getMinValueObject()".}
# proc setMinValue*(this: var Slider, newValue: float64, notification: int = , allowNudgingOfOtherValues: bool = false) {.header: juce_gui_basics, importcpp: "#.setMinValue(@)".}
proc getMaxValue*(this: Slider): float64 {.header: juce_gui_basics, importcpp: "#.getMaxValue()".}
proc getMaxValueObject*(this: var Slider): var int {.header: juce_gui_basics, importcpp: "#.getMaxValueObject()".}
# proc setMaxValue*(this: var Slider, newValue: float64, notification: int = , allowNudgingOfOtherValues: bool = false) {.header: juce_gui_basics, importcpp: "#.setMaxValue(@)".}
# proc setMinAndMaxValues*(this: var Slider, newMinValue: float64, newMaxValue: float64, notification: int = ) {.header: juce_gui_basics, importcpp: "#.setMinAndMaxValues(@)".}
# proc addListener*(this: var Slider, listener: ptr SliderListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
# proc removeListener*(this: var Slider, listener: ptr SliderListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
# proc setDoubleClickReturnValue*(this: var Slider, shouldDoubleClickBeEnabled: bool, valueToSetOnDoubleClick: float64, singleClickModifiers: ModifierKeys = ModifierKeys::altModifier) {.header: juce_gui_basics, importcpp: "#.setDoubleClickReturnValue(@)".}
proc getDoubleClickReturnValue*(this: Slider): float64 {.header: juce_gui_basics, importcpp: "#.getDoubleClickReturnValue()".}
proc isDoubleClickReturnEnabled*(this: Slider): bool {.header: juce_gui_basics, importcpp: "#.isDoubleClickReturnEnabled()".}
proc setChangeNotificationOnlyOnRelease*(this: var Slider, onlyNotifyOnRelease: bool) {.header: juce_gui_basics, importcpp: "#.setChangeNotificationOnlyOnRelease(@)".}
proc setSliderSnapsToMousePosition*(this: var Slider, shouldSnapToMouse: bool) {.header: juce_gui_basics, importcpp: "#.setSliderSnapsToMousePosition(@)".}
proc getSliderSnapsToMousePosition*(this: Slider): bool {.header: juce_gui_basics, importcpp: "#.getSliderSnapsToMousePosition()".}
proc setPopupDisplayEnabled*(this: var Slider, shouldShowOnMouseDrag: bool, shouldShowOnMouseHover: bool, parentComponentToUse: ptr Component, hoverTimeout: int = 2000) {.header: juce_gui_basics, importcpp: "#.setPopupDisplayEnabled(@)".}
proc getCurrentPopupDisplay*(this: Slider): ptr Component {.header: juce_gui_basics, importcpp: "#.getCurrentPopupDisplay()".}
proc setPopupMenuEnabled*(this: var Slider, menuEnabled: bool) {.header: juce_gui_basics, importcpp: "#.setPopupMenuEnabled(@)".}
proc setScrollWheelEnabled*(this: var Slider, enabled: bool) {.header: juce_gui_basics, importcpp: "#.setScrollWheelEnabled(@)".}
proc getThumbBeingDragged*(this: Slider): int {.header: juce_gui_basics, importcpp: "#.getThumbBeingDragged()".}
proc startedDragging*(this: var Slider) {.header: juce_gui_basics, importcpp: "#.startedDragging()".}
proc stoppedDragging*(this: var Slider) {.header: juce_gui_basics, importcpp: "#.stoppedDragging()".}
proc valueChanged*(this: var Slider) {.header: juce_gui_basics, importcpp: "#.valueChanged()".}
proc getValueFromText*(this: var Slider, text: int): float64 {.header: juce_gui_basics, importcpp: "#.getValueFromText(@)".}
proc getTextFromValue*(this: var Slider, value: float64): int {.header: juce_gui_basics, importcpp: "#.getTextFromValue(@)".}
proc setTextValueSuffix*(this: var Slider, suffix: int) {.header: juce_gui_basics, importcpp: "#.setTextValueSuffix(@)".}
proc getTextValueSuffix*(this: Slider): int {.header: juce_gui_basics, importcpp: "#.getTextValueSuffix()".}
proc getNumDecimalPlacesToDisplay*(this: Slider): int {.header: juce_gui_basics, importcpp: "#.getNumDecimalPlacesToDisplay()".}
proc setNumDecimalPlacesToDisplay*(this: var Slider, decimalPlacesToDisplay: int) {.header: juce_gui_basics, importcpp: "#.setNumDecimalPlacesToDisplay(@)".}
proc proportionOfLengthToValue*(this: var Slider, proportion: float64): float64 {.header: juce_gui_basics, importcpp: "#.proportionOfLengthToValue(@)".}
proc valueToProportionOfLength*(this: var Slider, value: float64): float64 {.header: juce_gui_basics, importcpp: "#.valueToProportionOfLength(@)".}
proc getPositionOfValue*(this: Slider, value: float64): float {.header: juce_gui_basics, importcpp: "#.getPositionOfValue(@)".}
# proc snapValue*(this: var Slider, attemptedValue: float64, dragMode: juce::Slider::DragMode): float64 {.header: juce_gui_basics, importcpp: "#.snapValue(@)".}
proc updateText*(this: var Slider) {.header: juce_gui_basics, importcpp: "#.updateText()".}
proc isHorizontal*(this: Slider): bool {.header: juce_gui_basics, importcpp: "#.isHorizontal()".}
proc isVertical*(this: Slider): bool {.header: juce_gui_basics, importcpp: "#.isVertical()".}
proc isRotary*(this: Slider): bool {.header: juce_gui_basics, importcpp: "#.isRotary()".}
proc isBar*(this: Slider): bool {.header: juce_gui_basics, importcpp: "#.isBar()".}
proc isTwoValue*(this: Slider): bool {.header: juce_gui_basics, importcpp: "#.isTwoValue()".}
proc isThreeValue*(this: Slider): bool {.header: juce_gui_basics, importcpp: "#.isThreeValue()".}
proc paint*(this: var Slider, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var Slider) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc mouseDown*(this: var Slider, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDown(@)".}
proc mouseUp*(this: var Slider, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseUp(@)".}
proc mouseDrag*(this: var Slider, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDrag(@)".}
proc mouseDoubleClick*(this: var Slider, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDoubleClick(@)".}
proc mouseWheelMove*(this: var Slider, arg1: MouseEvent, arg2: MouseWheelDetails) {.header: juce_gui_basics, importcpp: "#.mouseWheelMove(@)".}
proc modifierKeysChanged*(this: var Slider, arg1: ModifierKeys) {.header: juce_gui_basics, importcpp: "#.modifierKeysChanged(@)".}
proc lookAndFeelChanged*(this: var Slider) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}
proc enablementChanged*(this: var Slider) {.header: juce_gui_basics, importcpp: "#.enablementChanged()".}
# proc focusOfChildComponentChanged*(this: var Slider, arg1: juce::Component::FocusChangeType) {.header: juce_gui_basics, importcpp: "#.focusOfChildComponentChanged(@)".}
proc colourChanged*(this: var Slider) {.header: juce_gui_basics, importcpp: "#.colourChanged()".}
proc mouseMove*(this: var Slider, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseMove(@)".}
proc mouseExit*(this: var Slider, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseExit(@)".}
proc mouseEnter*(this: var Slider, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseEnter(@)".}

# proc addColumn*(this: var TableHeaderComponent, columnName: int, columnId: int, width: int, minimumWidth: int = 30, maximumWidth: int = -1, propertyFlags: int = defaultFlags, insertIndex: int = -1) {.header: juce_gui_basics, importcpp: "#.addColumn(@)".}
proc removeColumn*(this: var TableHeaderComponent, columnIdToRemove: int) {.header: juce_gui_basics, importcpp: "#.removeColumn(@)".}
proc removeAllColumns*(this: var TableHeaderComponent) {.header: juce_gui_basics, importcpp: "#.removeAllColumns()".}
proc getNumColumns*(this: TableHeaderComponent, onlyCountVisibleColumns: bool): int {.header: juce_gui_basics, importcpp: "#.getNumColumns(@)".}
proc getColumnName*(this: TableHeaderComponent, columnId: int): int {.header: juce_gui_basics, importcpp: "#.getColumnName(@)".}
proc setColumnName*(this: var TableHeaderComponent, columnId: int, newName: int) {.header: juce_gui_basics, importcpp: "#.setColumnName(@)".}
proc moveColumn*(this: var TableHeaderComponent, columnId: int, newVisibleIndex: int) {.header: juce_gui_basics, importcpp: "#.moveColumn(@)".}
proc getColumnWidth*(this: TableHeaderComponent, columnId: int): int {.header: juce_gui_basics, importcpp: "#.getColumnWidth(@)".}
proc setColumnWidth*(this: var TableHeaderComponent, columnId: int, newWidth: int) {.header: juce_gui_basics, importcpp: "#.setColumnWidth(@)".}
proc setColumnVisible*(this: var TableHeaderComponent, columnId: int, shouldBeVisible: bool) {.header: juce_gui_basics, importcpp: "#.setColumnVisible(@)".}
proc isColumnVisible*(this: TableHeaderComponent, columnId: int): bool {.header: juce_gui_basics, importcpp: "#.isColumnVisible(@)".}
proc setSortColumnId*(this: var TableHeaderComponent, columnId: int, sortForwards: bool) {.header: juce_gui_basics, importcpp: "#.setSortColumnId(@)".}
proc getSortColumnId*(this: TableHeaderComponent): int {.header: juce_gui_basics, importcpp: "#.getSortColumnId()".}
proc isSortedForwards*(this: TableHeaderComponent): bool {.header: juce_gui_basics, importcpp: "#.isSortedForwards()".}
proc reSortTable*(this: var TableHeaderComponent) {.header: juce_gui_basics, importcpp: "#.reSortTable()".}
proc getTotalWidth*(this: TableHeaderComponent): int {.header: juce_gui_basics, importcpp: "#.getTotalWidth()".}
proc getIndexOfColumnId*(this: TableHeaderComponent, columnId: int, onlyCountVisibleColumns: bool): int {.header: juce_gui_basics, importcpp: "#.getIndexOfColumnId(@)".}
proc getColumnIdOfIndex*(this: TableHeaderComponent, index: int, onlyCountVisibleColumns: bool): int {.header: juce_gui_basics, importcpp: "#.getColumnIdOfIndex(@)".}
proc getColumnPosition*(this: TableHeaderComponent, index: int): int {.header: juce_gui_basics, importcpp: "#.getColumnPosition(@)".}
proc getColumnIdAtX*(this: TableHeaderComponent, xToFind: int): int {.header: juce_gui_basics, importcpp: "#.getColumnIdAtX(@)".}
proc setStretchToFitActive*(this: var TableHeaderComponent, shouldStretchToFit: bool) {.header: juce_gui_basics, importcpp: "#.setStretchToFitActive(@)".}
proc isStretchToFitActive*(this: TableHeaderComponent): bool {.header: juce_gui_basics, importcpp: "#.isStretchToFitActive()".}
proc resizeAllColumnsToFit*(this: var TableHeaderComponent, targetTotalWidth: int) {.header: juce_gui_basics, importcpp: "#.resizeAllColumnsToFit(@)".}
proc setPopupMenuActive*(this: var TableHeaderComponent, hasMenu: bool) {.header: juce_gui_basics, importcpp: "#.setPopupMenuActive(@)".}
proc isPopupMenuActive*(this: TableHeaderComponent): bool {.header: juce_gui_basics, importcpp: "#.isPopupMenuActive()".}
proc toString*(this: TableHeaderComponent): int {.header: juce_gui_basics, importcpp: "#.toString()".}
proc restoreFromString*(this: var TableHeaderComponent, storedVersion: int) {.header: juce_gui_basics, importcpp: "#.restoreFromString(@)".}
proc addListener*(this: var TableHeaderComponent, newListener: ptr TableHeaderComponentListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var TableHeaderComponent, listenerToRemove: ptr TableHeaderComponentListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
proc columnClicked*(this: var TableHeaderComponent, columnId: int, mods: ModifierKeys) {.header: juce_gui_basics, importcpp: "#.columnClicked(@)".}
proc addMenuItems*(this: var TableHeaderComponent, menu: var PopupMenu, columnIdClicked: int) {.header: juce_gui_basics, importcpp: "#.addMenuItems(@)".}
proc reactToMenuItem*(this: var TableHeaderComponent, menuReturnId: int, columnIdClicked: int) {.header: juce_gui_basics, importcpp: "#.reactToMenuItem(@)".}
proc paint*(this: var TableHeaderComponent, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc mouseMove*(this: var TableHeaderComponent, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseMove(@)".}
proc mouseEnter*(this: var TableHeaderComponent, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseEnter(@)".}
proc mouseExit*(this: var TableHeaderComponent, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseExit(@)".}
proc mouseDown*(this: var TableHeaderComponent, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDown(@)".}
proc mouseDrag*(this: var TableHeaderComponent, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDrag(@)".}
proc mouseUp*(this: var TableHeaderComponent, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseUp(@)".}
proc getMouseCursor*(this: var TableHeaderComponent): MouseCursor {.header: juce_gui_basics, importcpp: "#.getMouseCursor()".}
proc showColumnChooserMenu*(this: var TableHeaderComponent, columnIdClicked: int) {.header: juce_gui_basics, importcpp: "#.showColumnChooserMenu(@)".}

type
  TableListBoxModel* {.header: juce_gui_basics, importcpp: "juce::TableListBoxModel".} = object

proc getNumRows*(this: var TableListBoxModel): int {.header: juce_gui_basics, importcpp: "#.getNumRows()".}
proc paintRowBackground*(this: var TableListBoxModel, arg1: var int, rowNumber: int, width: int, height: int, rowIsSelected: bool) {.header: juce_gui_basics, importcpp: "#.paintRowBackground(@)".}
proc paintCell*(this: var TableListBoxModel, arg1: var int, rowNumber: int, columnId: int, width: int, height: int, rowIsSelected: bool) {.header: juce_gui_basics, importcpp: "#.paintCell(@)".}
proc refreshComponentForCell*(this: var TableListBoxModel, rowNumber: int, columnId: int, isRowSelected: bool, existingComponentToUpdate: ptr Component): ptr Component {.header: juce_gui_basics, importcpp: "#.refreshComponentForCell(@)".}
proc cellClicked*(this: var TableListBoxModel, rowNumber: int, columnId: int, arg3: MouseEvent) {.header: juce_gui_basics, importcpp: "#.cellClicked(@)".}
proc cellDoubleClicked*(this: var TableListBoxModel, rowNumber: int, columnId: int, arg3: MouseEvent) {.header: juce_gui_basics, importcpp: "#.cellDoubleClicked(@)".}
proc backgroundClicked*(this: var TableListBoxModel, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.backgroundClicked(@)".}
proc sortOrderChanged*(this: var TableListBoxModel, newSortColumnId: int, isForwards: bool) {.header: juce_gui_basics, importcpp: "#.sortOrderChanged(@)".}
proc getColumnAutoSizeWidth*(this: var TableListBoxModel, columnId: int): int {.header: juce_gui_basics, importcpp: "#.getColumnAutoSizeWidth(@)".}
proc getCellTooltip*(this: var TableListBoxModel, rowNumber: int, columnId: int): int {.header: juce_gui_basics, importcpp: "#.getCellTooltip(@)".}
proc selectedRowsChanged*(this: var TableListBoxModel, lastRowSelected: int) {.header: juce_gui_basics, importcpp: "#.selectedRowsChanged(@)".}
proc deleteKeyPressed*(this: var TableListBoxModel, lastRowSelected: int) {.header: juce_gui_basics, importcpp: "#.deleteKeyPressed(@)".}
proc returnKeyPressed*(this: var TableListBoxModel, lastRowSelected: int) {.header: juce_gui_basics, importcpp: "#.returnKeyPressed(@)".}
proc listWasScrolled*(this: var TableListBoxModel) {.header: juce_gui_basics, importcpp: "#.listWasScrolled()".}
proc getDragSourceDescription*(this: var TableListBoxModel, currentlySelectedRows: int): int {.header: juce_gui_basics, importcpp: "#.getDragSourceDescription(@)".}

type
  TableListBox* {.header: juce_gui_basics, importcpp: "juce::TableListBox".} = object

proc setModel*(this: var TableListBox, newModel: ptr TableListBoxModel) {.header: juce_gui_basics, importcpp: "#.setModel(@)".}
proc getModel*(this: TableListBox): ptr TableListBoxModel {.header: juce_gui_basics, importcpp: "#.getModel()".}
proc getHeader*(this: TableListBox): var TableHeaderComponent {.header: juce_gui_basics, importcpp: "#.getHeader()".}
proc setHeader*(this: var TableListBox, newHeader: int) {.header: juce_gui_basics, importcpp: "#.setHeader(@)".}
proc setHeaderHeight*(this: var TableListBox, newHeight: int) {.header: juce_gui_basics, importcpp: "#.setHeaderHeight(@)".}
proc getHeaderHeight*(this: TableListBox): int {.header: juce_gui_basics, importcpp: "#.getHeaderHeight()".}
proc autoSizeColumn*(this: var TableListBox, columnId: int) {.header: juce_gui_basics, importcpp: "#.autoSizeColumn(@)".}
proc autoSizeAllColumns*(this: var TableListBox) {.header: juce_gui_basics, importcpp: "#.autoSizeAllColumns()".}
proc setAutoSizeMenuOptionShown*(this: var TableListBox, shouldBeShown: bool) {.header: juce_gui_basics, importcpp: "#.setAutoSizeMenuOptionShown(@)".}
proc isAutoSizeMenuOptionShown*(this: TableListBox): bool {.header: juce_gui_basics, importcpp: "#.isAutoSizeMenuOptionShown()".}
proc getCellPosition*(this: TableListBox, columnId: int, rowNumber: int, relativeToComponentTopLeft: bool): int {.header: juce_gui_basics, importcpp: "#.getCellPosition(@)".}
proc getCellComponent*(this: TableListBox, columnId: int, rowNumber: int): ptr Component {.header: juce_gui_basics, importcpp: "#.getCellComponent(@)".}
proc scrollToEnsureColumnIsOnscreen*(this: var TableListBox, columnId: int) {.header: juce_gui_basics, importcpp: "#.scrollToEnsureColumnIsOnscreen(@)".}
proc getNumRows*(this: var TableListBox): int {.header: juce_gui_basics, importcpp: "#.getNumRows()".}
proc paintListBoxItem*(this: var TableListBox, arg1: int, arg2: var int, arg3: int, arg4: int, arg5: bool) {.header: juce_gui_basics, importcpp: "#.paintListBoxItem(@)".}
proc refreshComponentForRow*(this: var TableListBox, rowNumber: int, isRowSelected: bool, existingComponentToUpdate: ptr Component): ptr Component {.header: juce_gui_basics, importcpp: "#.refreshComponentForRow(@)".}
proc selectedRowsChanged*(this: var TableListBox, row: int) {.header: juce_gui_basics, importcpp: "#.selectedRowsChanged(@)".}
proc deleteKeyPressed*(this: var TableListBox, currentSelectedRow: int) {.header: juce_gui_basics, importcpp: "#.deleteKeyPressed(@)".}
proc returnKeyPressed*(this: var TableListBox, currentSelectedRow: int) {.header: juce_gui_basics, importcpp: "#.returnKeyPressed(@)".}
proc backgroundClicked*(this: var TableListBox, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.backgroundClicked(@)".}
proc listWasScrolled*(this: var TableListBox) {.header: juce_gui_basics, importcpp: "#.listWasScrolled()".}
proc tableColumnsChanged*(this: var TableListBox, arg1: ptr TableHeaderComponent) {.header: juce_gui_basics, importcpp: "#.tableColumnsChanged(@)".}
proc tableColumnsResized*(this: var TableListBox, arg1: ptr TableHeaderComponent) {.header: juce_gui_basics, importcpp: "#.tableColumnsResized(@)".}
proc tableSortOrderChanged*(this: var TableListBox, arg1: ptr TableHeaderComponent) {.header: juce_gui_basics, importcpp: "#.tableSortOrderChanged(@)".}
proc tableColumnDraggingChanged*(this: var TableListBox, arg1: ptr TableHeaderComponent, arg2: int) {.header: juce_gui_basics, importcpp: "#.tableColumnDraggingChanged(@)".}
proc resized*(this: var TableListBox) {.header: juce_gui_basics, importcpp: "#.resized()".}

type
  ToolbarItemComponent* {.header: juce_gui_basics, importcpp: "juce::ToolbarItemComponent".} = object


type
  ToolbarItemFactory* {.header: juce_gui_basics, importcpp: "juce::ToolbarItemFactory".} = object


proc setVertical*(this: var Toolbar, shouldBeVertical: bool) {.header: juce_gui_basics, importcpp: "#.setVertical(@)".}
proc isVertical*(this: Toolbar): bool {.header: juce_gui_basics, importcpp: "#.isVertical()".}
proc getThickness*(this: Toolbar): int {.header: juce_gui_basics, importcpp: "#.getThickness()".}
proc getLength*(this: Toolbar): int {.header: juce_gui_basics, importcpp: "#.getLength()".}
proc clear*(this: var Toolbar) {.header: juce_gui_basics, importcpp: "#.clear()".}
proc addItem*(this: var Toolbar, factory: var ToolbarItemFactory, itemId: int, insertIndex: int = -1) {.header: juce_gui_basics, importcpp: "#.addItem(@)".}
proc removeToolbarItem*(this: var Toolbar, itemIndex: int) {.header: juce_gui_basics, importcpp: "#.removeToolbarItem(@)".}
proc removeAndReturnItem*(this: var Toolbar, itemIndex: int): ptr ToolbarItemComponent {.header: juce_gui_basics, importcpp: "#.removeAndReturnItem(@)".}
proc getNumItems*(this: Toolbar): int {.header: juce_gui_basics, importcpp: "#.getNumItems()".}
proc getItemId*(this: Toolbar, itemIndex: int): int {.header: juce_gui_basics, importcpp: "#.getItemId(@)".}
proc getItemComponent*(this: Toolbar, itemIndex: int): ptr ToolbarItemComponent {.header: juce_gui_basics, importcpp: "#.getItemComponent(@)".}
proc addDefaultItems*(this: var Toolbar, factoryToUse: var ToolbarItemFactory) {.header: juce_gui_basics, importcpp: "#.addDefaultItems(@)".}
# proc getStyle*(this: Toolbar): juce::Toolbar::ToolbarItemStyle {.header: juce_gui_basics, importcpp: "#.getStyle()".}
# proc setStyle*(this: var Toolbar, newStyle: juce::Toolbar::ToolbarItemStyle) {.header: juce_gui_basics, importcpp: "#.setStyle(@)".}
# proc showCustomisationDialog*(this: var Toolbar, factory: var ToolbarItemFactory, optionFlags: int = allCustomisationOptionsEnabled) {.header: juce_gui_basics, importcpp: "#.showCustomisationDialog(@)".}
proc setEditingActive*(this: var Toolbar, editingEnabled: bool) {.header: juce_gui_basics, importcpp: "#.setEditingActive(@)".}
proc toString*(this: Toolbar): int {.header: juce_gui_basics, importcpp: "#.toString()".}
proc restoreFromString*(this: var Toolbar, factoryToUse: var ToolbarItemFactory, savedVersion: int): bool {.header: juce_gui_basics, importcpp: "#.restoreFromString(@)".}
proc paint*(this: var Toolbar, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var Toolbar) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc mouseDown*(this: var Toolbar, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDown(@)".}
# proc isInterestedInDragSource*(this: var Toolbar, arg1: juce::DragAndDropTarget::SourceDetails): bool {.header: juce_gui_basics, importcpp: "#.isInterestedInDragSource(@)".}
# proc itemDragMove*(this: var Toolbar, arg1: juce::DragAndDropTarget::SourceDetails) {.header: juce_gui_basics, importcpp: "#.itemDragMove(@)".}
# proc itemDragExit*(this: var Toolbar, arg1: juce::DragAndDropTarget::SourceDetails) {.header: juce_gui_basics, importcpp: "#.itemDragExit(@)".}
# proc itemDropped*(this: var Toolbar, arg1: juce::DragAndDropTarget::SourceDetails) {.header: juce_gui_basics, importcpp: "#.itemDropped(@)".}
proc lookAndFeelChanged*(this: var Toolbar) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}
proc updateAllItemPositions*(this: var Toolbar, animate: bool) {.header: juce_gui_basics, importcpp: "#.updateAllItemPositions(@)".}

proc getItemId*(this: ToolbarItemComponent): int {.header: juce_gui_basics, importcpp: "#.getItemId()".}
proc getToolbar*(this: ToolbarItemComponent): ptr Toolbar {.header: juce_gui_basics, importcpp: "#.getToolbar()".}
proc isToolbarVertical*(this: ToolbarItemComponent): bool {.header: juce_gui_basics, importcpp: "#.isToolbarVertical()".}
# proc getStyle*(this: ToolbarItemComponent): Toolbar::ToolbarItemStyle {.header: juce_gui_basics, importcpp: "#.getStyle()".}
# proc setStyle*(this: var ToolbarItemComponent, newStyle: Toolbar::ToolbarItemStyle) {.header: juce_gui_basics, importcpp: "#.setStyle(@)".}
proc getContentArea*(this: ToolbarItemComponent): int {.header: juce_gui_basics, importcpp: "#.getContentArea()".}
proc getToolbarItemSizes*(this: var ToolbarItemComponent, toolbarThickness: int, isToolbarVertical: bool, preferredSize: var int, minSize: var int, maxSize: var int): bool {.header: juce_gui_basics, importcpp: "#.getToolbarItemSizes(@)".}
proc paintButtonArea*(this: var ToolbarItemComponent, g: var int, width: int, height: int, isMouseOver: bool, isMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.paintButtonArea(@)".}
proc contentAreaChanged*(this: var ToolbarItemComponent, newBounds: int) {.header: juce_gui_basics, importcpp: "#.contentAreaChanged(@)".}
# proc setEditingMode*(this: var ToolbarItemComponent, newMode: juce::ToolbarItemComponent::ToolbarEditingMode) {.header: juce_gui_basics, importcpp: "#.setEditingMode(@)".}
# proc getEditingMode*(this: ToolbarItemComponent): juce::ToolbarItemComponent::ToolbarEditingMode {.header: juce_gui_basics, importcpp: "#.getEditingMode()".}
proc paintButton*(this: var ToolbarItemComponent, arg1: var int, isMouseOver: bool, isMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.paintButton(@)".}
proc resized*(this: var ToolbarItemComponent) {.header: juce_gui_basics, importcpp: "#.resized()".}

proc getAllToolbarItemIds*(this: var ToolbarItemFactory, ids: var int) {.header: juce_gui_basics, importcpp: "#.getAllToolbarItemIds(@)".}
proc getDefaultItemSet*(this: var ToolbarItemFactory, ids: var int) {.header: juce_gui_basics, importcpp: "#.getDefaultItemSet(@)".}
proc createItem*(this: var ToolbarItemFactory, itemId: int): ptr ToolbarItemComponent {.header: juce_gui_basics, importcpp: "#.createItem(@)".}

type
  ToolbarItemPalette* {.header: juce_gui_basics, importcpp: "juce::ToolbarItemPalette".} = object

proc resized*(this: var ToolbarItemPalette) {.header: juce_gui_basics, importcpp: "#.resized()".}

type
  BurgerMenuComponent* {.header: juce_gui_basics, importcpp: "juce::BurgerMenuComponent".} = object
  BurgerMenuComponentRow* {.header: juce_gui_basics, importcpp: "juce::BurgerMenuComponent::Row".} = object

proc setModel*(this: var BurgerMenuComponent, newModel: ptr MenuBarModel) {.header: juce_gui_basics, importcpp: "#.setModel(@)".}
proc getModel*(this: BurgerMenuComponent): ptr MenuBarModel {.header: juce_gui_basics, importcpp: "#.getModel()".}
proc lookAndFeelChanged*(this: var BurgerMenuComponent) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}

type
  ToolbarButton* {.header: juce_gui_basics, importcpp: "juce::ToolbarButton".} = object

proc getToolbarItemSizes*(this: var ToolbarButton, toolbarDepth: int, isToolbarVertical: bool, preferredSize: var int, minSize: var int, maxSize: var int): bool {.header: juce_gui_basics, importcpp: "#.getToolbarItemSizes(@)".}
proc paintButtonArea*(this: var ToolbarButton, arg1: var int, width: int, height: int, isMouseOver: bool, isMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.paintButtonArea(@)".}
proc contentAreaChanged*(this: var ToolbarButton, arg1: int) {.header: juce_gui_basics, importcpp: "#.contentAreaChanged(@)".}
proc buttonStateChanged*(this: var ToolbarButton) {.header: juce_gui_basics, importcpp: "#.buttonStateChanged()".}
proc resized*(this: var ToolbarButton) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc enablementChanged*(this: var ToolbarButton) {.header: juce_gui_basics, importcpp: "#.enablementChanged()".}

type
  DropShadower* {.header: juce_gui_basics, importcpp: "juce::DropShadower".} = object

proc setOwner*(this: var DropShadower, componentToFollow: ptr Component) {.header: juce_gui_basics, importcpp: "#.setOwner(@)".}

type
  JUCESplashScreen* {.header: juce_gui_basics, importcpp: "juce::JUCESplashScreen".} = object


type
  TreeView* {.header: juce_gui_basics, importcpp: "juce::TreeView".} = object
  TreeViewLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::TreeView::LookAndFeelMethods".} = object


type
  TreeViewItem* {.header: juce_gui_basics, importcpp: "juce::TreeViewItem".} = object
  TreeViewItemOpennessRestorer* {.header: juce_gui_basics, importcpp: "juce::TreeViewItem::OpennessRestorer".} = object

proc getNumSubItems*(this: TreeViewItem): int {.header: juce_gui_basics, importcpp: "#.getNumSubItems()".}
proc getSubItem*(this: TreeViewItem, index: int): ptr TreeViewItem {.header: juce_gui_basics, importcpp: "#.getSubItem(@)".}
proc clearSubItems*(this: var TreeViewItem) {.header: juce_gui_basics, importcpp: "#.clearSubItems()".}
proc addSubItem*(this: var TreeViewItem, newItem: ptr TreeViewItem, insertPosition: int = -1) {.header: juce_gui_basics, importcpp: "#.addSubItem(@)".}
proc removeSubItem*(this: var TreeViewItem, index: int, deleteItem: bool = true) {.header: juce_gui_basics, importcpp: "#.removeSubItem(@)".}
proc getOwnerView*(this: TreeViewItem): ptr TreeView {.header: juce_gui_basics, importcpp: "#.getOwnerView()".}
proc getParentItem*(this: TreeViewItem): ptr TreeViewItem {.header: juce_gui_basics, importcpp: "#.getParentItem()".}
proc isOpen*(this: TreeViewItem): bool {.header: juce_gui_basics, importcpp: "#.isOpen()".}
proc setOpen*(this: var TreeViewItem, shouldBeOpen: bool) {.header: juce_gui_basics, importcpp: "#.setOpen(@)".}
# proc getOpenness*(this: TreeViewItem): juce::TreeViewItem::Openness {.header: juce_gui_basics, importcpp: "#.getOpenness()".}
# proc setOpenness*(this: var TreeViewItem, newOpenness: juce::TreeViewItem::Openness) {.header: juce_gui_basics, importcpp: "#.setOpenness(@)".}
proc isSelected*(this: TreeViewItem): bool {.header: juce_gui_basics, importcpp: "#.isSelected()".}
# proc setSelected*(this: var TreeViewItem, shouldBeSelected: bool, deselectOtherItemsFirst: bool, shouldNotify: int = ) {.header: juce_gui_basics, importcpp: "#.setSelected(@)".}
proc getItemPosition*(this: TreeViewItem, relativeToTreeViewTopLeft: bool): int {.header: juce_gui_basics, importcpp: "#.getItemPosition(@)".}
proc treeHasChanged*(this: TreeViewItem) {.header: juce_gui_basics, importcpp: "#.treeHasChanged()".}
proc repaintItem*(this: TreeViewItem) {.header: juce_gui_basics, importcpp: "#.repaintItem()".}
proc getRowNumberInTree*(this: TreeViewItem): int {.header: juce_gui_basics, importcpp: "#.getRowNumberInTree()".}
proc areAllParentsOpen*(this: TreeViewItem): bool {.header: juce_gui_basics, importcpp: "#.areAllParentsOpen()".}
proc setLinesDrawnForSubItems*(this: var TreeViewItem, shouldDrawLines: bool) {.header: juce_gui_basics, importcpp: "#.setLinesDrawnForSubItems(@)".}
proc mightContainSubItems*(this: var TreeViewItem): bool {.header: juce_gui_basics, importcpp: "#.mightContainSubItems()".}
proc getUniqueName*(this: TreeViewItem): int {.header: juce_gui_basics, importcpp: "#.getUniqueName()".}
proc itemOpennessChanged*(this: var TreeViewItem, isNowOpen: bool) {.header: juce_gui_basics, importcpp: "#.itemOpennessChanged(@)".}
proc getItemWidth*(this: TreeViewItem): int {.header: juce_gui_basics, importcpp: "#.getItemWidth()".}
proc getItemHeight*(this: TreeViewItem): int {.header: juce_gui_basics, importcpp: "#.getItemHeight()".}
proc canBeSelected*(this: TreeViewItem): bool {.header: juce_gui_basics, importcpp: "#.canBeSelected()".}
proc createItemComponent*(this: var TreeViewItem): ptr Component {.header: juce_gui_basics, importcpp: "#.createItemComponent()".}
proc paintItem*(this: var TreeViewItem, g: var int, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.paintItem(@)".}
proc paintOpenCloseButton*(this: var TreeViewItem, arg1: var int, area: int, backgroundColour: int, isMouseOver: bool) {.header: juce_gui_basics, importcpp: "#.paintOpenCloseButton(@)".}
proc paintHorizontalConnectingLine*(this: var TreeViewItem, arg1: var int, line: int) {.header: juce_gui_basics, importcpp: "#.paintHorizontalConnectingLine(@)".}
proc paintVerticalConnectingLine*(this: var TreeViewItem, arg1: var int, line: int) {.header: juce_gui_basics, importcpp: "#.paintVerticalConnectingLine(@)".}
proc itemClicked*(this: var TreeViewItem, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.itemClicked(@)".}
proc itemDoubleClicked*(this: var TreeViewItem, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.itemDoubleClicked(@)".}
proc itemSelectionChanged*(this: var TreeViewItem, isNowSelected: bool) {.header: juce_gui_basics, importcpp: "#.itemSelectionChanged(@)".}
proc ownerViewChanged*(this: var TreeViewItem, newOwner: ptr TreeView) {.header: juce_gui_basics, importcpp: "#.ownerViewChanged(@)".}
proc getTooltip*(this: var TreeViewItem): int {.header: juce_gui_basics, importcpp: "#.getTooltip()".}
proc getDragSourceDescription*(this: var TreeViewItem): int {.header: juce_gui_basics, importcpp: "#.getDragSourceDescription()".}
proc isInterestedInFileDrag*(this: var TreeViewItem, files: int): bool {.header: juce_gui_basics, importcpp: "#.isInterestedInFileDrag(@)".}
proc filesDropped*(this: var TreeViewItem, files: int, insertIndex: int) {.header: juce_gui_basics, importcpp: "#.filesDropped(@)".}
# proc isInterestedInDragSource*(this: var TreeViewItem, dragSourceDetails: DragAndDropTarget::SourceDetails): bool {.header: juce_gui_basics, importcpp: "#.isInterestedInDragSource(@)".}
# proc itemDropped*(this: var TreeViewItem, dragSourceDetails: DragAndDropTarget::SourceDetails, insertIndex: int) {.header: juce_gui_basics, importcpp: "#.itemDropped(@)".}
proc setDrawsInLeftMargin*(this: var TreeViewItem, canDrawInLeftMargin: bool) {.header: juce_gui_basics, importcpp: "#.setDrawsInLeftMargin(@)".}
proc setDrawsInRightMargin*(this: var TreeViewItem, canDrawInRightMargin: bool) {.header: juce_gui_basics, importcpp: "#.setDrawsInRightMargin(@)".}
proc getOpennessState*(this: TreeViewItem): int {.header: juce_gui_basics, importcpp: "#.getOpennessState()".}
proc restoreOpennessState*(this: var TreeViewItem, xml: int) {.header: juce_gui_basics, importcpp: "#.restoreOpennessState(@)".}
proc getIndexInParent*(this: TreeViewItem): int {.header: juce_gui_basics, importcpp: "#.getIndexInParent()".}
proc isLastOfSiblings*(this: TreeViewItem): bool {.header: juce_gui_basics, importcpp: "#.isLastOfSiblings()".}
proc getItemIdentifierString*(this: TreeViewItem): int {.header: juce_gui_basics, importcpp: "#.getItemIdentifierString()".}

proc setRootItem*(this: var TreeView, newRootItem: ptr TreeViewItem) {.header: juce_gui_basics, importcpp: "#.setRootItem(@)".}
proc getRootItem*(this: TreeView): ptr TreeViewItem {.header: juce_gui_basics, importcpp: "#.getRootItem()".}
proc deleteRootItem*(this: var TreeView) {.header: juce_gui_basics, importcpp: "#.deleteRootItem()".}
proc setRootItemVisible*(this: var TreeView, shouldBeVisible: bool) {.header: juce_gui_basics, importcpp: "#.setRootItemVisible(@)".}
proc isRootItemVisible*(this: TreeView): bool {.header: juce_gui_basics, importcpp: "#.isRootItemVisible()".}
proc setDefaultOpenness*(this: var TreeView, isOpenByDefault: bool) {.header: juce_gui_basics, importcpp: "#.setDefaultOpenness(@)".}
proc areItemsOpenByDefault*(this: TreeView): bool {.header: juce_gui_basics, importcpp: "#.areItemsOpenByDefault()".}
proc setMultiSelectEnabled*(this: var TreeView, canMultiSelect: bool) {.header: juce_gui_basics, importcpp: "#.setMultiSelectEnabled(@)".}
proc isMultiSelectEnabled*(this: TreeView): bool {.header: juce_gui_basics, importcpp: "#.isMultiSelectEnabled()".}
proc setOpenCloseButtonsVisible*(this: var TreeView, shouldBeVisible: bool) {.header: juce_gui_basics, importcpp: "#.setOpenCloseButtonsVisible(@)".}
proc areOpenCloseButtonsVisible*(this: TreeView): bool {.header: juce_gui_basics, importcpp: "#.areOpenCloseButtonsVisible()".}
proc clearSelectedItems*(this: var TreeView) {.header: juce_gui_basics, importcpp: "#.clearSelectedItems()".}
proc getNumSelectedItems*(this: TreeView, maximumDepthToSearchTo: int = -1): int {.header: juce_gui_basics, importcpp: "#.getNumSelectedItems(@)".}
proc getSelectedItem*(this: TreeView, index: int): ptr TreeViewItem {.header: juce_gui_basics, importcpp: "#.getSelectedItem(@)".}
proc moveSelectedRow*(this: var TreeView, deltaRows: int) {.header: juce_gui_basics, importcpp: "#.moveSelectedRow(@)".}
proc getNumRowsInTree*(this: TreeView): int {.header: juce_gui_basics, importcpp: "#.getNumRowsInTree()".}
proc getItemOnRow*(this: TreeView, index: int): ptr TreeViewItem {.header: juce_gui_basics, importcpp: "#.getItemOnRow(@)".}
proc getItemAt*(this: TreeView, yPosition: int): ptr TreeViewItem {.header: juce_gui_basics, importcpp: "#.getItemAt(@)".}
proc scrollToKeepItemVisible*(this: var TreeView, item: ptr TreeViewItem) {.header: juce_gui_basics, importcpp: "#.scrollToKeepItemVisible(@)".}
proc getViewport*(this: TreeView): ptr Viewport {.header: juce_gui_basics, importcpp: "#.getViewport()".}
proc getIndentSize*(this: var TreeView): int {.header: juce_gui_basics, importcpp: "#.getIndentSize()".}
proc setIndentSize*(this: var TreeView, newIndentSize: int) {.header: juce_gui_basics, importcpp: "#.setIndentSize(@)".}
proc findItemFromIdentifierString*(this: TreeView, identifierString: int): ptr TreeViewItem {.header: juce_gui_basics, importcpp: "#.findItemFromIdentifierString(@)".}
proc getOpennessState*(this: TreeView, alsoIncludeScrollPosition: bool): int {.header: juce_gui_basics, importcpp: "#.getOpennessState(@)".}
proc restoreOpennessState*(this: var TreeView, newState: int, restoreStoredSelection: bool) {.header: juce_gui_basics, importcpp: "#.restoreOpennessState(@)".}
proc paint*(this: var TreeView, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var TreeView) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc keyPressed*(this: var TreeView, arg1: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.keyPressed(@)".}
proc colourChanged*(this: var TreeView) {.header: juce_gui_basics, importcpp: "#.colourChanged()".}
proc enablementChanged*(this: var TreeView) {.header: juce_gui_basics, importcpp: "#.enablementChanged()".}
proc isInterestedInFileDrag*(this: var TreeView, files: int): bool {.header: juce_gui_basics, importcpp: "#.isInterestedInFileDrag(@)".}
proc fileDragEnter*(this: var TreeView, files: int, x: int, y: int) {.header: juce_gui_basics, importcpp: "#.fileDragEnter(@)".}
proc fileDragMove*(this: var TreeView, files: int, x: int, y: int) {.header: juce_gui_basics, importcpp: "#.fileDragMove(@)".}
proc fileDragExit*(this: var TreeView, files: int) {.header: juce_gui_basics, importcpp: "#.fileDragExit(@)".}
proc filesDropped*(this: var TreeView, files: int, x: int, y: int) {.header: juce_gui_basics, importcpp: "#.filesDropped(@)".}
# proc isInterestedInDragSource*(this: var TreeView, arg1: juce::DragAndDropTarget::SourceDetails): bool {.header: juce_gui_basics, importcpp: "#.isInterestedInDragSource(@)".}
# proc itemDragEnter*(this: var TreeView, arg1: juce::DragAndDropTarget::SourceDetails) {.header: juce_gui_basics, importcpp: "#.itemDragEnter(@)".}
# proc itemDragMove*(this: var TreeView, arg1: juce::DragAndDropTarget::SourceDetails) {.header: juce_gui_basics, importcpp: "#.itemDragMove(@)".}
# proc itemDragExit*(this: var TreeView, arg1: juce::DragAndDropTarget::SourceDetails) {.header: juce_gui_basics, importcpp: "#.itemDragExit(@)".}
# proc itemDropped*(this: var TreeView, arg1: juce::DragAndDropTarget::SourceDetails) {.header: juce_gui_basics, importcpp: "#.itemDropped(@)".}

proc isActiveWindow*(this: TopLevelWindow): bool {.header: juce_gui_basics, importcpp: "#.isActiveWindow()".}
proc centreAroundComponent*(this: var TopLevelWindow, componentToCentreAround: ptr Component, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.centreAroundComponent(@)".}
proc setDropShadowEnabled*(this: var TopLevelWindow, useShadow: bool) {.header: juce_gui_basics, importcpp: "#.setDropShadowEnabled(@)".}
proc isDropShadowEnabled*(this: TopLevelWindow): bool {.header: juce_gui_basics, importcpp: "#.isDropShadowEnabled()".}
proc setUsingNativeTitleBar*(this: var TopLevelWindow, useNativeTitleBar: bool) {.header: juce_gui_basics, importcpp: "#.setUsingNativeTitleBar(@)".}
proc isUsingNativeTitleBar*(this: TopLevelWindow): bool {.header: juce_gui_basics, importcpp: "#.isUsingNativeTitleBar()".}
proc addToDesktop*(this: var TopLevelWindow) {.header: juce_gui_basics, importcpp: "#.addToDesktop()".}
proc addToDesktop*(this: var TopLevelWindow, windowStyleFlags: int, nativeWindowToAttachTo: pointer = nil) {.header: juce_gui_basics, importcpp: "#.addToDesktop(@)".}

# proc getAlertType*(this: AlertWindow): juce::AlertWindow::AlertIconType {.header: juce_gui_basics, importcpp: "#.getAlertType()".}
proc setMessage*(this: var AlertWindow, message: int) {.header: juce_gui_basics, importcpp: "#.setMessage(@)".}
proc addButton*(this: var AlertWindow, name: int, returnValue: int, shortcutKey1: KeyPress = KeyPress(), shortcutKey2: KeyPress = KeyPress()) {.header: juce_gui_basics, importcpp: "#.addButton(@)".}
proc getNumButtons*(this: AlertWindow): int {.header: juce_gui_basics, importcpp: "#.getNumButtons()".}
proc triggerButtonClick*(this: var AlertWindow, buttonName: int) {.header: juce_gui_basics, importcpp: "#.triggerButtonClick(@)".}
proc setEscapeKeyCancels*(this: var AlertWindow, shouldEscapeKeyCancel: bool) {.header: juce_gui_basics, importcpp: "#.setEscapeKeyCancels(@)".}
# proc addTextEditor*(this: var AlertWindow, name: int, initialContents: int, onScreenLabel: int = String(), isPasswordBox: bool = false) {.header: juce_gui_basics, importcpp: "#.addTextEditor(@)".}
proc getTextEditorContents*(this: AlertWindow, nameOfTextEditor: int): int {.header: juce_gui_basics, importcpp: "#.getTextEditorContents(@)".}
proc getTextEditor*(this: AlertWindow, nameOfTextEditor: int): ptr TextEditor {.header: juce_gui_basics, importcpp: "#.getTextEditor(@)".}
# proc addComboBox*(this: var AlertWindow, name: int, items: int, onScreenLabel: int = String()) {.header: juce_gui_basics, importcpp: "#.addComboBox(@)".}
proc getComboBoxComponent*(this: AlertWindow, nameOfList: int): ptr ComboBox {.header: juce_gui_basics, importcpp: "#.getComboBoxComponent(@)".}
proc addTextBlock*(this: var AlertWindow, text: int) {.header: juce_gui_basics, importcpp: "#.addTextBlock(@)".}
proc addProgressBarComponent*(this: var AlertWindow, progressValue: var float64) {.header: juce_gui_basics, importcpp: "#.addProgressBarComponent(@)".}
proc addCustomComponent*(this: var AlertWindow, component: ptr Component) {.header: juce_gui_basics, importcpp: "#.addCustomComponent(@)".}
proc getNumCustomComponents*(this: AlertWindow): int {.header: juce_gui_basics, importcpp: "#.getNumCustomComponents()".}
proc getCustomComponent*(this: AlertWindow, index: int): ptr Component {.header: juce_gui_basics, importcpp: "#.getCustomComponent(@)".}
proc removeCustomComponent*(this: var AlertWindow, index: int): ptr Component {.header: juce_gui_basics, importcpp: "#.removeCustomComponent(@)".}
proc containsAnyExtraComponents*(this: AlertWindow): bool {.header: juce_gui_basics, importcpp: "#.containsAnyExtraComponents()".}

proc setArrowSize*(this: var CallOutBox, newSize: float) {.header: juce_gui_basics, importcpp: "#.setArrowSize(@)".}
proc updatePosition*(this: var CallOutBox, newAreaToPointTo: int, newAreaToFitIn: int) {.header: juce_gui_basics, importcpp: "#.updatePosition(@)".}
proc dismiss*(this: var CallOutBox) {.header: juce_gui_basics, importcpp: "#.dismiss()".}
proc setDismissalMouseClicksAreAlwaysConsumed*(this: var CallOutBox, shouldAlwaysBeConsumed: bool) {.header: juce_gui_basics, importcpp: "#.setDismissalMouseClicksAreAlwaysConsumed(@)".}
proc paint*(this: var CallOutBox, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var CallOutBox) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc moved*(this: var CallOutBox) {.header: juce_gui_basics, importcpp: "#.moved()".}
proc childBoundsChanged*(this: var CallOutBox, arg1: ptr Component) {.header: juce_gui_basics, importcpp: "#.childBoundsChanged(@)".}
proc hitTest*(this: var CallOutBox, x: int, y: int): bool {.header: juce_gui_basics, importcpp: "#.hitTest(@)".}
proc inputAttemptWhenModal*(this: var CallOutBox) {.header: juce_gui_basics, importcpp: "#.inputAttemptWhenModal()".}
proc keyPressed*(this: var CallOutBox, arg1: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.keyPressed(@)".}
proc handleCommandMessage*(this: var CallOutBox, arg1: int) {.header: juce_gui_basics, importcpp: "#.handleCommandMessage(@)".}
proc getBorderSize*(this: CallOutBox): int {.header: juce_gui_basics, importcpp: "#.getBorderSize()".}
proc lookAndFeelChanged*(this: var CallOutBox) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}

proc getComponent*(this: var ComponentPeer): var Component {.header: juce_gui_basics, importcpp: "#.getComponent()".}
proc getStyleFlags*(this: ComponentPeer): int {.header: juce_gui_basics, importcpp: "#.getStyleFlags()".}
proc getUniqueID*(this: ComponentPeer): int {.header: juce_gui_basics, importcpp: "#.getUniqueID()".}
proc getNativeHandle*(this: ComponentPeer): pointer {.header: juce_gui_basics, importcpp: "#.getNativeHandle()".}
proc setVisible*(this: var ComponentPeer, shouldBeVisible: bool) {.header: juce_gui_basics, importcpp: "#.setVisible(@)".}
proc setTitle*(this: var ComponentPeer, title: int) {.header: juce_gui_basics, importcpp: "#.setTitle(@)".}
proc setDocumentEditedStatus*(this: var ComponentPeer, edited: bool): bool {.header: juce_gui_basics, importcpp: "#.setDocumentEditedStatus(@)".}
proc setRepresentedFile*(this: var ComponentPeer, arg1: int) {.header: juce_gui_basics, importcpp: "#.setRepresentedFile(@)".}
proc setBounds*(this: var ComponentPeer, newBounds: int, isNowFullScreen: bool) {.header: juce_gui_basics, importcpp: "#.setBounds(@)".}
proc updateBounds*(this: var ComponentPeer) {.header: juce_gui_basics, importcpp: "#.updateBounds()".}
proc getBounds*(this: ComponentPeer): int {.header: juce_gui_basics, importcpp: "#.getBounds()".}
proc localToGlobal*(this: var ComponentPeer, relativePosition: int): int {.header: juce_gui_basics, importcpp: "#.localToGlobal(@)".}
proc globalToLocal*(this: var ComponentPeer, screenPosition: int): int {.header: juce_gui_basics, importcpp: "#.globalToLocal(@)".}
# proc localToGlobal*(this: var ComponentPeer, relativePosition: int): int {.header: juce_gui_basics, importcpp: "#.localToGlobal(@)".}
# proc globalToLocal*(this: var ComponentPeer, screenPosition: int): int {.header: juce_gui_basics, importcpp: "#.globalToLocal(@)".}
# proc localToGlobal*(this: var ComponentPeer, relativePosition: int): int {.header: juce_gui_basics, importcpp: "#.localToGlobal(@)".}
# proc globalToLocal*(this: var ComponentPeer, screenPosition: int): int {.header: juce_gui_basics, importcpp: "#.globalToLocal(@)".}
# proc localToGlobal*(this: var ComponentPeer, relativePosition: int): int {.header: juce_gui_basics, importcpp: "#.localToGlobal(@)".}
# proc globalToLocal*(this: var ComponentPeer, screenPosition: int): int {.header: juce_gui_basics, importcpp: "#.globalToLocal(@)".}
proc getAreaCoveredBy*(this: ComponentPeer, subComponent: var Component): int {.header: juce_gui_basics, importcpp: "#.getAreaCoveredBy(@)".}
proc setMinimised*(this: var ComponentPeer, shouldBeMinimised: bool) {.header: juce_gui_basics, importcpp: "#.setMinimised(@)".}
proc isMinimised*(this: ComponentPeer): bool {.header: juce_gui_basics, importcpp: "#.isMinimised()".}
proc setFullScreen*(this: var ComponentPeer, shouldBeFullScreen: bool) {.header: juce_gui_basics, importcpp: "#.setFullScreen(@)".}
proc isFullScreen*(this: ComponentPeer): bool {.header: juce_gui_basics, importcpp: "#.isFullScreen()".}
proc isKioskMode*(this: ComponentPeer): bool {.header: juce_gui_basics, importcpp: "#.isKioskMode()".}
proc setNonFullScreenBounds*(this: var ComponentPeer, newBounds: int) {.header: juce_gui_basics, importcpp: "#.setNonFullScreenBounds(@)".}
proc getNonFullScreenBounds*(this: ComponentPeer): int {.header: juce_gui_basics, importcpp: "#.getNonFullScreenBounds()".}
proc setIcon*(this: var ComponentPeer, newIcon: int) {.header: juce_gui_basics, importcpp: "#.setIcon(@)".}
proc setConstrainer*(this: var ComponentPeer, newConstrainer: ptr ComponentBoundsConstrainer) {.header: juce_gui_basics, importcpp: "#.setConstrainer(@)".}
proc getConstrainer*(this: ComponentPeer): ptr ComponentBoundsConstrainer {.header: juce_gui_basics, importcpp: "#.getConstrainer()".}
proc contains*(this: ComponentPeer, localPos: int, trueIfInAChildWindow: bool): bool {.header: juce_gui_basics, importcpp: "#.contains(@)".}
proc getFrameSize*(this: ComponentPeer): int {.header: juce_gui_basics, importcpp: "#.getFrameSize()".}
proc handleMovedOrResized*(this: var ComponentPeer) {.header: juce_gui_basics, importcpp: "#.handleMovedOrResized()".}
proc handleScreenSizeChange*(this: var ComponentPeer) {.header: juce_gui_basics, importcpp: "#.handleScreenSizeChange()".}
proc handlePaint*(this: var ComponentPeer, contextToPaintTo: var int) {.header: juce_gui_basics, importcpp: "#.handlePaint(@)".}
proc setAlwaysOnTop*(this: var ComponentPeer, alwaysOnTop: bool): bool {.header: juce_gui_basics, importcpp: "#.setAlwaysOnTop(@)".}
proc toFront*(this: var ComponentPeer, makeActive: bool) {.header: juce_gui_basics, importcpp: "#.toFront(@)".}
proc toBehind*(this: var ComponentPeer, other: ptr ComponentPeer) {.header: juce_gui_basics, importcpp: "#.toBehind(@)".}
proc handleBroughtToFront*(this: var ComponentPeer) {.header: juce_gui_basics, importcpp: "#.handleBroughtToFront()".}
proc isFocused*(this: ComponentPeer): bool {.header: juce_gui_basics, importcpp: "#.isFocused()".}
proc grabFocus*(this: var ComponentPeer) {.header: juce_gui_basics, importcpp: "#.grabFocus()".}
proc handleFocusGain*(this: var ComponentPeer) {.header: juce_gui_basics, importcpp: "#.handleFocusGain()".}
proc handleFocusLoss*(this: var ComponentPeer) {.header: juce_gui_basics, importcpp: "#.handleFocusLoss()".}
proc getLastFocusedSubcomponent*(this: ComponentPeer): ptr Component {.header: juce_gui_basics, importcpp: "#.getLastFocusedSubcomponent()".}
proc handleKeyPress*(this: var ComponentPeer, keyCode: int, textCharacter: int): bool {.header: juce_gui_basics, importcpp: "#.handleKeyPress(@)".}
proc handleKeyPress*(this: var ComponentPeer, key: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.handleKeyPress(@)".}
proc handleKeyUpOrDown*(this: var ComponentPeer, isKeyDown: bool): bool {.header: juce_gui_basics, importcpp: "#.handleKeyUpOrDown(@)".}
proc handleModifierKeysChange*(this: var ComponentPeer) {.header: juce_gui_basics, importcpp: "#.handleModifierKeysChange()".}
proc textInputRequired*(this: var ComponentPeer, position: int, arg2: var TextInputTarget) {.header: juce_gui_basics, importcpp: "#.textInputRequired(@)".}
proc dismissPendingTextInput*(this: var ComponentPeer) {.header: juce_gui_basics, importcpp: "#.dismissPendingTextInput()".}
proc findCurrentTextInputTarget*(this: var ComponentPeer): ptr TextInputTarget {.header: juce_gui_basics, importcpp: "#.findCurrentTextInputTarget()".}
proc repaint*(this: var ComponentPeer, area: int) {.header: juce_gui_basics, importcpp: "#.repaint(@)".}
proc performAnyPendingRepaintsNow*(this: var ComponentPeer) {.header: juce_gui_basics, importcpp: "#.performAnyPendingRepaintsNow()".}
proc setAlpha*(this: var ComponentPeer, newAlpha: float) {.header: juce_gui_basics, importcpp: "#.setAlpha(@)".}
# proc handleMouseEvent*(this: var ComponentPeer, `type`: MouseInputSource::InputSourceType, positionWithinPeer: int, newMods: ModifierKeys, pressure: float, orientation: float, time: int, pen: PenDetails = {}, touchIndex: int = 0) {.header: juce_gui_basics, importcpp: "#.handleMouseEvent(@)".}
# proc handleMouseWheel*(this: var ComponentPeer, `type`: MouseInputSource::InputSourceType, positionWithinPeer: int, time: int, arg4: MouseWheelDetails, touchIndex: int = 0) {.header: juce_gui_basics, importcpp: "#.handleMouseWheel(@)".}
# proc handleMagnifyGesture*(this: var ComponentPeer, `type`: MouseInputSource::InputSourceType, positionWithinPeer: int, time: int, scaleFactor: float, touchIndex: int = 0) {.header: juce_gui_basics, importcpp: "#.handleMagnifyGesture(@)".}
proc handleUserClosingWindow*(this: var ComponentPeer) {.header: juce_gui_basics, importcpp: "#.handleUserClosingWindow()".}
proc handleDragMove*(this: var ComponentPeer, arg1: ComponentPeerDragInfo): bool {.header: juce_gui_basics, importcpp: "#.handleDragMove(@)".}
proc handleDragExit*(this: var ComponentPeer, arg1: ComponentPeerDragInfo): bool {.header: juce_gui_basics, importcpp: "#.handleDragExit(@)".}
proc handleDragDrop*(this: var ComponentPeer, arg1: ComponentPeerDragInfo): bool {.header: juce_gui_basics, importcpp: "#.handleDragDrop(@)".}
proc getAvailableRenderingEngines*(this: var ComponentPeer): int {.header: juce_gui_basics, importcpp: "#.getAvailableRenderingEngines()".}
proc getCurrentRenderingEngine*(this: ComponentPeer): int {.header: juce_gui_basics, importcpp: "#.getCurrentRenderingEngine()".}
proc setCurrentRenderingEngine*(this: var ComponentPeer, index: int) {.header: juce_gui_basics, importcpp: "#.setCurrentRenderingEngine(@)".}
proc addScaleFactorListener*(this: var ComponentPeer, listenerToAdd: ptr ComponentPeerScaleFactorListener) {.header: juce_gui_basics, importcpp: "#.addScaleFactorListener(@)".}
proc removeScaleFactorListener*(this: var ComponentPeer, listenerToRemove: ptr ComponentPeerScaleFactorListener) {.header: juce_gui_basics, importcpp: "#.removeScaleFactorListener(@)".}
proc getPlatformScaleFactor*(this: ComponentPeer): float64 {.header: juce_gui_basics, importcpp: "#.getPlatformScaleFactor()".}

proc getBackgroundColour*(this: ResizableWindow): int {.header: juce_gui_basics, importcpp: "#.getBackgroundColour()".}
proc setBackgroundColour*(this: var ResizableWindow, newColour: int) {.header: juce_gui_basics, importcpp: "#.setBackgroundColour(@)".}
proc setResizable*(this: var ResizableWindow, shouldBeResizable: bool, useBottomRightCornerResizer: bool) {.header: juce_gui_basics, importcpp: "#.setResizable(@)".}
proc isResizable*(this: ResizableWindow): bool {.header: juce_gui_basics, importcpp: "#.isResizable()".}
proc setResizeLimits*(this: var ResizableWindow, newMinimumWidth: int, newMinimumHeight: int, newMaximumWidth: int, newMaximumHeight: int) {.header: juce_gui_basics, importcpp: "#.setResizeLimits(@)".}
proc setDraggable*(this: var ResizableWindow, shouldBeDraggable: bool) {.header: juce_gui_basics, importcpp: "#.setDraggable(@)".}
proc isDraggable*(this: ResizableWindow): bool {.header: juce_gui_basics, importcpp: "#.isDraggable()".}
proc getConstrainer*(this: var ResizableWindow): ptr ComponentBoundsConstrainer {.header: juce_gui_basics, importcpp: "#.getConstrainer()".}
proc setConstrainer*(this: var ResizableWindow, newConstrainer: ptr ComponentBoundsConstrainer) {.header: juce_gui_basics, importcpp: "#.setConstrainer(@)".}
proc setBoundsConstrained*(this: var ResizableWindow, newBounds: int) {.header: juce_gui_basics, importcpp: "#.setBoundsConstrained(@)".}
proc isFullScreen*(this: ResizableWindow): bool {.header: juce_gui_basics, importcpp: "#.isFullScreen()".}
proc setFullScreen*(this: var ResizableWindow, shouldBeFullScreen: bool) {.header: juce_gui_basics, importcpp: "#.setFullScreen(@)".}
proc isMinimised*(this: ResizableWindow): bool {.header: juce_gui_basics, importcpp: "#.isMinimised()".}
proc setMinimised*(this: var ResizableWindow, shouldMinimise: bool) {.header: juce_gui_basics, importcpp: "#.setMinimised(@)".}
proc isKioskMode*(this: ResizableWindow): bool {.header: juce_gui_basics, importcpp: "#.isKioskMode()".}
proc getWindowStateAsString*(this: var ResizableWindow): int {.header: juce_gui_basics, importcpp: "#.getWindowStateAsString()".}
proc restoreWindowStateFromString*(this: var ResizableWindow, previousState: int): bool {.header: juce_gui_basics, importcpp: "#.restoreWindowStateFromString(@)".}
proc getContentComponent*(this: ResizableWindow): ptr Component {.header: juce_gui_basics, importcpp: "#.getContentComponent()".}
proc setContentOwned*(this: var ResizableWindow, newContentComponent: ptr Component, resizeToFitWhenContentChangesSize: bool) {.header: juce_gui_basics, importcpp: "#.setContentOwned(@)".}
proc setContentNonOwned*(this: var ResizableWindow, newContentComponent: ptr Component, resizeToFitWhenContentChangesSize: bool) {.header: juce_gui_basics, importcpp: "#.setContentNonOwned(@)".}
proc clearContentComponent*(this: var ResizableWindow) {.header: juce_gui_basics, importcpp: "#.clearContentComponent()".}
proc setContentComponentSize*(this: var ResizableWindow, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.setContentComponentSize(@)".}
proc getBorderThickness*(this: var ResizableWindow): int {.header: juce_gui_basics, importcpp: "#.getBorderThickness()".}
proc getContentComponentBorder*(this: var ResizableWindow): int {.header: juce_gui_basics, importcpp: "#.getContentComponentBorder()".}

type
  DocumentWindow* {.header: juce_gui_basics, importcpp: "juce::DocumentWindow".} = object of ResizableWindow
  DocumentWindowLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::DocumentWindow::LookAndFeelMethods".} = object

proc setName*(this: var DocumentWindow, newName: StringRef) {.header: juce_gui_basics, importcpp: "#.setName(@)".}
proc setIcon*(this: var DocumentWindow, imageToUse: int) {.header: juce_gui_basics, importcpp: "#.setIcon(@)".}
proc setTitleBarHeight*(this: var DocumentWindow, newHeight: int) {.header: juce_gui_basics, importcpp: "#.setTitleBarHeight(@)".}
proc getTitleBarHeight*(this: DocumentWindow): int {.header: juce_gui_basics, importcpp: "#.getTitleBarHeight()".}
proc setTitleBarButtonsRequired*(this: var DocumentWindow, requiredButtons: int, positionTitleBarButtonsOnLeft: bool) {.header: juce_gui_basics, importcpp: "#.setTitleBarButtonsRequired(@)".}
proc setTitleBarTextCentred*(this: var DocumentWindow, textShouldBeCentred: bool) {.header: juce_gui_basics, importcpp: "#.setTitleBarTextCentred(@)".}
proc setMenuBar*(this: var DocumentWindow, menuBarModel: ptr MenuBarModel, menuBarHeight: int = 0) {.header: juce_gui_basics, importcpp: "#.setMenuBar(@)".}
proc getMenuBarComponent*(this: DocumentWindow): ptr Component {.header: juce_gui_basics, importcpp: "#.getMenuBarComponent()".}
proc setMenuBarComponent*(this: var DocumentWindow, newMenuBarComponent: ptr Component) {.header: juce_gui_basics, importcpp: "#.setMenuBarComponent(@)".}
proc closeButtonPressed*(this: var DocumentWindow) {.header: juce_gui_basics, importcpp: "#.closeButtonPressed()".}
proc minimiseButtonPressed*(this: var DocumentWindow) {.header: juce_gui_basics, importcpp: "#.minimiseButtonPressed()".}
proc maximiseButtonPressed*(this: var DocumentWindow) {.header: juce_gui_basics, importcpp: "#.maximiseButtonPressed()".}
proc getCloseButton*(this: DocumentWindow): ptr Button {.header: juce_gui_basics, importcpp: "#.getCloseButton()".}
proc getMinimiseButton*(this: DocumentWindow): ptr Button {.header: juce_gui_basics, importcpp: "#.getMinimiseButton()".}
proc getMaximiseButton*(this: DocumentWindow): ptr Button {.header: juce_gui_basics, importcpp: "#.getMaximiseButton()".}
proc paint*(this: var DocumentWindow, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var DocumentWindow) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc lookAndFeelChanged*(this: var DocumentWindow) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}
proc getBorderThickness*(this: var DocumentWindow): int {.header: juce_gui_basics, importcpp: "#.getBorderThickness()".}
proc getContentComponentBorder*(this: var DocumentWindow): int {.header: juce_gui_basics, importcpp: "#.getContentComponentBorder()".}
proc mouseDoubleClick*(this: var DocumentWindow, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDoubleClick(@)".}
proc userTriedToCloseWindow*(this: var DocumentWindow) {.header: juce_gui_basics, importcpp: "#.userTriedToCloseWindow()".}
proc activeWindowStatusChanged*(this: var DocumentWindow) {.header: juce_gui_basics, importcpp: "#.activeWindowStatusChanged()".}
proc getDesktopWindowStyleFlags*(this: DocumentWindow): int {.header: juce_gui_basics, importcpp: "#.getDesktopWindowStyleFlags()".}
proc parentHierarchyChanged*(this: var DocumentWindow) {.header: juce_gui_basics, importcpp: "#.parentHierarchyChanged()".}
proc getTitleBarArea*(this: var DocumentWindow): int {.header: juce_gui_basics, importcpp: "#.getTitleBarArea()".}

type
  DialogWindow* {.header: juce_gui_basics, importcpp: "juce::DialogWindow".} = object
  DialogWindowLaunchOptions* {.header: juce_gui_basics, importcpp: "juce::DialogWindow::LaunchOptions".} = object

proc escapeKeyPressed*(this: var DialogWindow): bool {.header: juce_gui_basics, importcpp: "#.escapeKeyPressed()".}

type
  NativeMessageBox* {.header: juce_gui_basics, importcpp: "juce::NativeMessageBox".} = object


type
  ThreadWithProgressWindow* {.header: juce_gui_basics, importcpp: "juce::ThreadWithProgressWindow".} = object

proc launchThread*(this: var ThreadWithProgressWindow, priority: int = 5) {.header: juce_gui_basics, importcpp: "#.launchThread(@)".}
proc setProgress*(this: var ThreadWithProgressWindow, newProgress: float64) {.header: juce_gui_basics, importcpp: "#.setProgress(@)".}
proc setStatusMessage*(this: var ThreadWithProgressWindow, newStatusMessage: int) {.header: juce_gui_basics, importcpp: "#.setStatusMessage(@)".}
proc getAlertWindow*(this: ThreadWithProgressWindow): ptr AlertWindow {.header: juce_gui_basics, importcpp: "#.getAlertWindow()".}
proc threadComplete*(this: var ThreadWithProgressWindow, userPressedCancel: bool) {.header: juce_gui_basics, importcpp: "#.threadComplete(@)".}

type
  TooltipWindow* {.header: juce_gui_basics, importcpp: "juce::TooltipWindow".} = object
  TooltipWindowLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::TooltipWindow::LookAndFeelMethods".} = object

proc setMillisecondsBeforeTipAppears*(this: var TooltipWindow, newTimeMs: int = 700) {.header: juce_gui_basics, importcpp: "#.setMillisecondsBeforeTipAppears(@)".}
proc displayTip*(this: var TooltipWindow, screenPosition: int, text: int) {.header: juce_gui_basics, importcpp: "#.displayTip(@)".}
proc hideTip*(this: var TooltipWindow) {.header: juce_gui_basics, importcpp: "#.hideTip()".}
proc getTipFor*(this: var TooltipWindow, arg1: var Component): int {.header: juce_gui_basics, importcpp: "#.getTipFor(@)".}

type
  MultiDocumentPanel* {.header: juce_gui_basics, importcpp: "juce::MultiDocumentPanel".} = object


type
  MultiDocumentPanelWindow* {.header: juce_gui_basics, importcpp: "juce::MultiDocumentPanelWindow".} = object

proc maximiseButtonPressed*(this: var MultiDocumentPanelWindow) {.header: juce_gui_basics, importcpp: "#.maximiseButtonPressed()".}
proc closeButtonPressed*(this: var MultiDocumentPanelWindow) {.header: juce_gui_basics, importcpp: "#.closeButtonPressed()".}
proc activeWindowStatusChanged*(this: var MultiDocumentPanelWindow) {.header: juce_gui_basics, importcpp: "#.activeWindowStatusChanged()".}
proc broughtToFront*(this: var MultiDocumentPanelWindow) {.header: juce_gui_basics, importcpp: "#.broughtToFront()".}

proc closeAllDocuments*(this: var MultiDocumentPanel, checkItsOkToCloseFirst: bool): bool {.header: juce_gui_basics, importcpp: "#.closeAllDocuments(@)".}
proc addDocument*(this: var MultiDocumentPanel, component: ptr Component, backgroundColour: int, deleteWhenRemoved: bool): bool {.header: juce_gui_basics, importcpp: "#.addDocument(@)".}
proc closeDocument*(this: var MultiDocumentPanel, component: ptr Component, checkItsOkToCloseFirst: bool): bool {.header: juce_gui_basics, importcpp: "#.closeDocument(@)".}
proc getNumDocuments*(this: MultiDocumentPanel): int {.header: juce_gui_basics, importcpp: "#.getNumDocuments()".}
proc getDocument*(this: MultiDocumentPanel, index: int): ptr Component {.header: juce_gui_basics, importcpp: "#.getDocument(@)".}
proc getActiveDocument*(this: MultiDocumentPanel): ptr Component {.header: juce_gui_basics, importcpp: "#.getActiveDocument()".}
proc setActiveDocument*(this: var MultiDocumentPanel, component: ptr Component) {.header: juce_gui_basics, importcpp: "#.setActiveDocument(@)".}
proc activeDocumentChanged*(this: var MultiDocumentPanel) {.header: juce_gui_basics, importcpp: "#.activeDocumentChanged()".}
proc setMaximumNumDocuments*(this: var MultiDocumentPanel, maximumNumDocuments: int) {.header: juce_gui_basics, importcpp: "#.setMaximumNumDocuments(@)".}
proc useFullscreenWhenOneDocument*(this: var MultiDocumentPanel, shouldUseTabs: bool) {.header: juce_gui_basics, importcpp: "#.useFullscreenWhenOneDocument(@)".}
proc isFullscreenWhenOneDocument*(this: MultiDocumentPanel): bool {.header: juce_gui_basics, importcpp: "#.isFullscreenWhenOneDocument()".}
# proc setLayoutMode*(this: var MultiDocumentPanel, newLayoutMode: juce::MultiDocumentPanel::LayoutMode) {.header: juce_gui_basics, importcpp: "#.setLayoutMode(@)".}
# proc getLayoutMode*(this: MultiDocumentPanel): juce::MultiDocumentPanel::LayoutMode {.header: juce_gui_basics, importcpp: "#.getLayoutMode()".}
proc setBackgroundColour*(this: var MultiDocumentPanel, newBackgroundColour: int) {.header: juce_gui_basics, importcpp: "#.setBackgroundColour(@)".}
proc getBackgroundColour*(this: MultiDocumentPanel): int {.header: juce_gui_basics, importcpp: "#.getBackgroundColour()".}
proc getCurrentTabbedComponent*(this: MultiDocumentPanel): ptr TabbedComponent {.header: juce_gui_basics, importcpp: "#.getCurrentTabbedComponent()".}
proc tryToCloseDocument*(this: var MultiDocumentPanel, component: ptr Component): bool {.header: juce_gui_basics, importcpp: "#.tryToCloseDocument(@)".}
proc createNewDocumentWindow*(this: var MultiDocumentPanel): ptr MultiDocumentPanelWindow {.header: juce_gui_basics, importcpp: "#.createNewDocumentWindow()".}
proc paint*(this: var MultiDocumentPanel, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var MultiDocumentPanel) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc componentNameChanged*(this: var MultiDocumentPanel, arg1: var Component) {.header: juce_gui_basics, importcpp: "#.componentNameChanged(@)".}

type
  SidePanel* {.header: juce_gui_basics, importcpp: "juce::SidePanel".} = object
  SidePanelLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::SidePanel::LookAndFeelMethods".} = object

proc setContent*(this: var SidePanel, newContentComponent: ptr Component, deleteComponentWhenNoLongerNeeded: bool = true) {.header: juce_gui_basics, importcpp: "#.setContent(@)".}
proc getContent*(this: SidePanel): ptr Component {.header: juce_gui_basics, importcpp: "#.getContent()".}
proc setTitleBarComponent*(this: var SidePanel, titleBarComponentToUse: ptr Component, keepDismissButton: bool, deleteComponentWhenNoLongerNeeded: bool = true) {.header: juce_gui_basics, importcpp: "#.setTitleBarComponent(@)".}
proc getTitleBarComponent*(this: SidePanel): ptr Component {.header: juce_gui_basics, importcpp: "#.getTitleBarComponent()".}
proc showOrHide*(this: var SidePanel, show: bool) {.header: juce_gui_basics, importcpp: "#.showOrHide(@)".}
proc isPanelShowing*(this: SidePanel): bool {.header: juce_gui_basics, importcpp: "#.isPanelShowing()".}
proc isPanelOnLeft*(this: SidePanel): bool {.header: juce_gui_basics, importcpp: "#.isPanelOnLeft()".}
proc setShadowWidth*(this: var SidePanel, newWidth: int) {.header: juce_gui_basics, importcpp: "#.setShadowWidth(@)".}
proc getShadowWidth*(this: SidePanel): int {.header: juce_gui_basics, importcpp: "#.getShadowWidth()".}
proc setTitleBarHeight*(this: var SidePanel, newHeight: int) {.header: juce_gui_basics, importcpp: "#.setTitleBarHeight(@)".}
proc getTitleBarHeight*(this: SidePanel): int {.header: juce_gui_basics, importcpp: "#.getTitleBarHeight()".}
proc getTitleText*(this: SidePanel): int {.header: juce_gui_basics, importcpp: "#.getTitleText()".}
proc moved*(this: var SidePanel) {.header: juce_gui_basics, importcpp: "#.moved()".}
proc resized*(this: var SidePanel) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc paint*(this: var SidePanel, g: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc parentHierarchyChanged*(this: var SidePanel) {.header: juce_gui_basics, importcpp: "#.parentHierarchyChanged()".}
proc mouseDrag*(this: var SidePanel, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseDrag(@)".}
proc mouseUp*(this: var SidePanel, arg1: MouseEvent) {.header: juce_gui_basics, importcpp: "#.mouseUp(@)".}

type
  FileBrowserListener* {.header: juce_gui_basics, importcpp: "juce::FileBrowserListener".} = object

proc selectionChanged*(this: var FileBrowserListener) {.header: juce_gui_basics, importcpp: "#.selectionChanged()".}
proc fileClicked*(this: var FileBrowserListener, file: int, e: MouseEvent) {.header: juce_gui_basics, importcpp: "#.fileClicked(@)".}
proc fileDoubleClicked*(this: var FileBrowserListener, file: int) {.header: juce_gui_basics, importcpp: "#.fileDoubleClicked(@)".}
proc browserRootChanged*(this: var FileBrowserListener, newRoot: int) {.header: juce_gui_basics, importcpp: "#.browserRootChanged(@)".}

type
  DirectoryContentsList* {.header: juce_gui_basics, importcpp: "juce::DirectoryContentsList".} = object
  DirectoryContentsListFileInfo* {.header: juce_gui_basics, importcpp: "juce::DirectoryContentsList::FileInfo".} = object

proc getDirectory*(this: DirectoryContentsList): int {.header: juce_gui_basics, importcpp: "#.getDirectory()".}
proc setDirectory*(this: var DirectoryContentsList, directory: int, includeDirectories: bool, includeFiles: bool) {.header: juce_gui_basics, importcpp: "#.setDirectory(@)".}
proc isFindingDirectories*(this: DirectoryContentsList): bool {.header: juce_gui_basics, importcpp: "#.isFindingDirectories()".}
proc isFindingFiles*(this: DirectoryContentsList): bool {.header: juce_gui_basics, importcpp: "#.isFindingFiles()".}
proc clear*(this: var DirectoryContentsList) {.header: juce_gui_basics, importcpp: "#.clear()".}
proc refresh*(this: var DirectoryContentsList) {.header: juce_gui_basics, importcpp: "#.refresh()".}
proc isStillLoading*(this: DirectoryContentsList): bool {.header: juce_gui_basics, importcpp: "#.isStillLoading()".}
proc setIgnoresHiddenFiles*(this: var DirectoryContentsList, shouldIgnoreHiddenFiles: bool) {.header: juce_gui_basics, importcpp: "#.setIgnoresHiddenFiles(@)".}
proc ignoresHiddenFiles*(this: DirectoryContentsList): bool {.header: juce_gui_basics, importcpp: "#.ignoresHiddenFiles()".}
proc setFileFilter*(this: var DirectoryContentsList, newFileFilter: ptr int) {.header: juce_gui_basics, importcpp: "#.setFileFilter(@)".}
proc getNumFiles*(this: DirectoryContentsList): int {.header: juce_gui_basics, importcpp: "#.getNumFiles()".}
proc getFileInfo*(this: DirectoryContentsList, index: int, resultInfo: var DirectoryContentsListFileInfo): bool {.header: juce_gui_basics, importcpp: "#.getFileInfo(@)".}
proc getFile*(this: DirectoryContentsList, index: int): int {.header: juce_gui_basics, importcpp: "#.getFile(@)".}
proc getFilter*(this: DirectoryContentsList): ptr int {.header: juce_gui_basics, importcpp: "#.getFilter()".}
proc contains*(this: DirectoryContentsList, arg1: int): bool {.header: juce_gui_basics, importcpp: "#.contains(@)".}
proc getTimeSliceThread*(this: DirectoryContentsList): var int {.header: juce_gui_basics, importcpp: "#.getTimeSliceThread()".}

proc getNumSelectedFiles*(this: DirectoryContentsDisplayComponent): int {.header: juce_gui_basics, importcpp: "#.getNumSelectedFiles()".}
proc getSelectedFile*(this: DirectoryContentsDisplayComponent, index: int): int {.header: juce_gui_basics, importcpp: "#.getSelectedFile(@)".}
proc deselectAllFiles*(this: var DirectoryContentsDisplayComponent) {.header: juce_gui_basics, importcpp: "#.deselectAllFiles()".}
proc scrollToTop*(this: var DirectoryContentsDisplayComponent) {.header: juce_gui_basics, importcpp: "#.scrollToTop()".}
proc setSelectedFile*(this: var DirectoryContentsDisplayComponent, arg1: int) {.header: juce_gui_basics, importcpp: "#.setSelectedFile(@)".}
proc addListener*(this: var DirectoryContentsDisplayComponent, listener: ptr FileBrowserListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var DirectoryContentsDisplayComponent, listener: ptr FileBrowserListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
proc sendSelectionChangeMessage*(this: var DirectoryContentsDisplayComponent) {.header: juce_gui_basics, importcpp: "#.sendSelectionChangeMessage()".}
proc sendDoubleClickMessage*(this: var DirectoryContentsDisplayComponent, arg1: int) {.header: juce_gui_basics, importcpp: "#.sendDoubleClickMessage(@)".}
proc sendMouseClickMessage*(this: var DirectoryContentsDisplayComponent, arg1: int, arg2: MouseEvent) {.header: juce_gui_basics, importcpp: "#.sendMouseClickMessage(@)".}

proc getNumSelectedFiles*(this: FileBrowserComponent): int {.header: juce_gui_basics, importcpp: "#.getNumSelectedFiles()".}
proc getSelectedFile*(this: FileBrowserComponent, index: int): int {.header: juce_gui_basics, importcpp: "#.getSelectedFile(@)".}
proc deselectAllFiles*(this: var FileBrowserComponent) {.header: juce_gui_basics, importcpp: "#.deselectAllFiles()".}
proc currentFileIsValid*(this: FileBrowserComponent): bool {.header: juce_gui_basics, importcpp: "#.currentFileIsValid()".}
proc getHighlightedFile*(this: FileBrowserComponent): int {.header: juce_gui_basics, importcpp: "#.getHighlightedFile()".}
proc getRoot*(this: FileBrowserComponent): int {.header: juce_gui_basics, importcpp: "#.getRoot()".}
proc setRoot*(this: var FileBrowserComponent, newRootDirectory: int) {.header: juce_gui_basics, importcpp: "#.setRoot(@)".}
proc setFileName*(this: var FileBrowserComponent, newName: int) {.header: juce_gui_basics, importcpp: "#.setFileName(@)".}
proc goUp*(this: var FileBrowserComponent) {.header: juce_gui_basics, importcpp: "#.goUp()".}
proc refresh*(this: var FileBrowserComponent) {.header: juce_gui_basics, importcpp: "#.refresh()".}
proc setFileFilter*(this: var FileBrowserComponent, newFileFilter: ptr int) {.header: juce_gui_basics, importcpp: "#.setFileFilter(@)".}
proc getActionVerb*(this: FileBrowserComponent): int {.header: juce_gui_basics, importcpp: "#.getActionVerb()".}
proc isSaveMode*(this: FileBrowserComponent): bool {.header: juce_gui_basics, importcpp: "#.isSaveMode()".}
proc setFilenameBoxLabel*(this: var FileBrowserComponent, name: int) {.header: juce_gui_basics, importcpp: "#.setFilenameBoxLabel(@)".}
proc addListener*(this: var FileBrowserComponent, listener: ptr FileBrowserListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var FileBrowserComponent, listener: ptr FileBrowserListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
proc resized*(this: var FileBrowserComponent) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc lookAndFeelChanged*(this: var FileBrowserComponent) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}
proc keyPressed*(this: var FileBrowserComponent, arg1: KeyPress): bool {.header: juce_gui_basics, importcpp: "#.keyPressed(@)".}
proc selectionChanged*(this: var FileBrowserComponent) {.header: juce_gui_basics, importcpp: "#.selectionChanged()".}
proc fileClicked*(this: var FileBrowserComponent, arg1: int, arg2: MouseEvent) {.header: juce_gui_basics, importcpp: "#.fileClicked(@)".}
proc fileDoubleClicked*(this: var FileBrowserComponent, arg1: int) {.header: juce_gui_basics, importcpp: "#.fileDoubleClicked(@)".}
proc browserRootChanged*(this: var FileBrowserComponent, arg1: int) {.header: juce_gui_basics, importcpp: "#.browserRootChanged(@)".}
proc isFileSuitable*(this: FileBrowserComponent, arg1: int): bool {.header: juce_gui_basics, importcpp: "#.isFileSuitable(@)".}
proc isDirectorySuitable*(this: FileBrowserComponent, arg1: int): bool {.header: juce_gui_basics, importcpp: "#.isDirectorySuitable(@)".}
proc getPreviewComponent*(this: FileBrowserComponent): ptr FilePreviewComponent {.header: juce_gui_basics, importcpp: "#.getPreviewComponent()".}
proc getDisplayComponent*(this: FileBrowserComponent): ptr DirectoryContentsDisplayComponent {.header: juce_gui_basics, importcpp: "#.getDisplayComponent()".}

type
  FileChooser* {.header: juce_gui_basics, importcpp: "juce::FileChooser".} = object
  FileChooserNative* {.header: juce_gui_basics, importcpp: "juce::FileChooser::Native".} = object

proc showDialog*(this: var FileChooser, flags: int, previewComponent: ptr FilePreviewComponent): bool {.header: juce_gui_basics, importcpp: "#.showDialog(@)".}
proc launchAsync*(this: var FileChooser, flags: int, arg2: int, previewComponent: ptr FilePreviewComponent = nil) {.header: juce_gui_basics, importcpp: "#.launchAsync(@)".}
proc getResult*(this: FileChooser): int {.header: juce_gui_basics, importcpp: "#.getResult()".}
proc getResults*(this: FileChooser): int {.header: juce_gui_basics, importcpp: "#.getResults()".}
proc getURLResult*(this: FileChooser): int {.header: juce_gui_basics, importcpp: "#.getURLResult()".}
proc getURLResults*(this: FileChooser): int {.header: juce_gui_basics, importcpp: "#.getURLResults()".}

type
  FileChooserDialogBox* {.header: juce_gui_basics, importcpp: "juce::FileChooserDialogBox".} = object

proc centreWithDefaultSize*(this: var FileChooserDialogBox, componentToCentreAround: ptr Component = nil) {.header: juce_gui_basics, importcpp: "#.centreWithDefaultSize(@)".}

type
  FileListComponent* {.header: juce_gui_basics, importcpp: "juce::FileListComponent".} = object

proc getNumSelectedFiles*(this: FileListComponent): int {.header: juce_gui_basics, importcpp: "#.getNumSelectedFiles()".}
proc getSelectedFile*(this: FileListComponent, index: int = 0): int {.header: juce_gui_basics, importcpp: "#.getSelectedFile(@)".}
proc deselectAllFiles*(this: var FileListComponent) {.header: juce_gui_basics, importcpp: "#.deselectAllFiles()".}
proc scrollToTop*(this: var FileListComponent) {.header: juce_gui_basics, importcpp: "#.scrollToTop()".}
proc setSelectedFile*(this: var FileListComponent, arg1: int) {.header: juce_gui_basics, importcpp: "#.setSelectedFile(@)".}

type
  FilenameComponentListener* {.header: juce_gui_basics, importcpp: "juce::FilenameComponentListener".} = object

proc filenameComponentChanged*(this: var FilenameComponentListener, fileComponentThatHasChanged: ptr FilenameComponent) {.header: juce_gui_basics, importcpp: "#.filenameComponentChanged(@)".}

proc getCurrentFile*(this: FilenameComponent): int {.header: juce_gui_basics, importcpp: "#.getCurrentFile()".}
proc getCurrentFileText*(this: FilenameComponent): int {.header: juce_gui_basics, importcpp: "#.getCurrentFileText()".}
# proc setCurrentFile*(this: var FilenameComponent, newFile: int, addToRecentlyUsedList: bool, notification: int = ) {.header: juce_gui_basics, importcpp: "#.setCurrentFile(@)".}
proc setFilenameIsEditable*(this: var FilenameComponent, shouldBeEditable: bool) {.header: juce_gui_basics, importcpp: "#.setFilenameIsEditable(@)".}
proc setDefaultBrowseTarget*(this: var FilenameComponent, newDefaultDirectory: int) {.header: juce_gui_basics, importcpp: "#.setDefaultBrowseTarget(@)".}
proc getLocationToBrowse*(this: var FilenameComponent): int {.header: juce_gui_basics, importcpp: "#.getLocationToBrowse()".}
proc getRecentlyUsedFilenames*(this: FilenameComponent): int {.header: juce_gui_basics, importcpp: "#.getRecentlyUsedFilenames()".}
proc setRecentlyUsedFilenames*(this: var FilenameComponent, filenames: int) {.header: juce_gui_basics, importcpp: "#.setRecentlyUsedFilenames(@)".}
proc addRecentlyUsedFile*(this: var FilenameComponent, file: int) {.header: juce_gui_basics, importcpp: "#.addRecentlyUsedFile(@)".}
proc setMaxNumberOfRecentFiles*(this: var FilenameComponent, newMaximum: int) {.header: juce_gui_basics, importcpp: "#.setMaxNumberOfRecentFiles(@)".}
proc setBrowseButtonText*(this: var FilenameComponent, browseButtonText: int) {.header: juce_gui_basics, importcpp: "#.setBrowseButtonText(@)".}
proc addListener*(this: var FilenameComponent, listener: ptr FilenameComponentListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var FilenameComponent, listener: ptr FilenameComponentListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
proc setTooltip*(this: var FilenameComponent, newTooltip: int) {.header: juce_gui_basics, importcpp: "#.setTooltip(@)".}
proc paintOverChildren*(this: var FilenameComponent, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paintOverChildren(@)".}
proc resized*(this: var FilenameComponent) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc lookAndFeelChanged*(this: var FilenameComponent) {.header: juce_gui_basics, importcpp: "#.lookAndFeelChanged()".}
proc isInterestedInFileDrag*(this: var FilenameComponent, arg1: int): bool {.header: juce_gui_basics, importcpp: "#.isInterestedInFileDrag(@)".}
proc filesDropped*(this: var FilenameComponent, arg1: int, arg2: int, arg3: int) {.header: juce_gui_basics, importcpp: "#.filesDropped(@)".}
proc fileDragEnter*(this: var FilenameComponent, arg1: int, arg2: int, arg3: int) {.header: juce_gui_basics, importcpp: "#.fileDragEnter(@)".}
proc fileDragExit*(this: var FilenameComponent, arg1: int) {.header: juce_gui_basics, importcpp: "#.fileDragExit(@)".}
proc createFocusTraverser*(this: var FilenameComponent): ptr KeyboardFocusTraverser {.header: juce_gui_basics, importcpp: "#.createFocusTraverser()".}

proc selectedFileChanged*(this: var FilePreviewComponent, newSelectedFile: int) {.header: juce_gui_basics, importcpp: "#.selectedFileChanged(@)".}

type
  FileSearchPathListComponent* {.header: juce_gui_basics, importcpp: "juce::FileSearchPathListComponent".} = object

proc getPath*(this: FileSearchPathListComponent): int {.header: juce_gui_basics, importcpp: "#.getPath()".}
proc setPath*(this: var FileSearchPathListComponent, newPath: int) {.header: juce_gui_basics, importcpp: "#.setPath(@)".}
proc setDefaultBrowseTarget*(this: var FileSearchPathListComponent, newDefaultDirectory: int) {.header: juce_gui_basics, importcpp: "#.setDefaultBrowseTarget(@)".}
proc getNumRows*(this: var FileSearchPathListComponent): int {.header: juce_gui_basics, importcpp: "#.getNumRows()".}
proc paintListBoxItem*(this: var FileSearchPathListComponent, rowNumber: int, g: var int, width: int, height: int, rowIsSelected: bool) {.header: juce_gui_basics, importcpp: "#.paintListBoxItem(@)".}
proc deleteKeyPressed*(this: var FileSearchPathListComponent, lastRowSelected: int) {.header: juce_gui_basics, importcpp: "#.deleteKeyPressed(@)".}
proc returnKeyPressed*(this: var FileSearchPathListComponent, lastRowSelected: int) {.header: juce_gui_basics, importcpp: "#.returnKeyPressed(@)".}
proc listBoxItemDoubleClicked*(this: var FileSearchPathListComponent, row: int, arg2: MouseEvent) {.header: juce_gui_basics, importcpp: "#.listBoxItemDoubleClicked(@)".}
proc selectedRowsChanged*(this: var FileSearchPathListComponent, lastRowSelected: int) {.header: juce_gui_basics, importcpp: "#.selectedRowsChanged(@)".}
proc resized*(this: var FileSearchPathListComponent) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc paint*(this: var FileSearchPathListComponent, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc isInterestedInFileDrag*(this: var FileSearchPathListComponent, arg1: int): bool {.header: juce_gui_basics, importcpp: "#.isInterestedInFileDrag(@)".}
proc filesDropped*(this: var FileSearchPathListComponent, files: int, arg2: int, arg3: int) {.header: juce_gui_basics, importcpp: "#.filesDropped(@)".}

type
  FileTreeComponent* {.header: juce_gui_basics, importcpp: "juce::FileTreeComponent".} = object

proc getNumSelectedFiles*(this: FileTreeComponent): int {.header: juce_gui_basics, importcpp: "#.getNumSelectedFiles()".}
proc getSelectedFile*(this: FileTreeComponent, index: int = 0): int {.header: juce_gui_basics, importcpp: "#.getSelectedFile(@)".}
proc deselectAllFiles*(this: var FileTreeComponent) {.header: juce_gui_basics, importcpp: "#.deselectAllFiles()".}
proc scrollToTop*(this: var FileTreeComponent) {.header: juce_gui_basics, importcpp: "#.scrollToTop()".}
proc setSelectedFile*(this: var FileTreeComponent, arg1: int) {.header: juce_gui_basics, importcpp: "#.setSelectedFile(@)".}
proc refresh*(this: var FileTreeComponent) {.header: juce_gui_basics, importcpp: "#.refresh()".}
proc setDragAndDropDescription*(this: var FileTreeComponent, description: int) {.header: juce_gui_basics, importcpp: "#.setDragAndDropDescription(@)".}
proc getDragAndDropDescription*(this: FileTreeComponent): int {.header: juce_gui_basics, importcpp: "#.getDragAndDropDescription()".}
proc setItemHeight*(this: var FileTreeComponent, newHeight: int) {.header: juce_gui_basics, importcpp: "#.setItemHeight(@)".}
proc getItemHeight*(this: FileTreeComponent): int {.header: juce_gui_basics, importcpp: "#.getItemHeight()".}

type
  ImagePreviewComponent* {.header: juce_gui_basics, importcpp: "juce::ImagePreviewComponent".} = object

proc selectedFileChanged*(this: var ImagePreviewComponent, newSelectedFile: int) {.header: juce_gui_basics, importcpp: "#.selectedFileChanged(@)".}
proc paint*(this: var ImagePreviewComponent, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc timerCallback*(this: var ImagePreviewComponent) {.header: juce_gui_basics, importcpp: "#.timerCallback()".}

type
  ContentSharer* {.header: juce_gui_basics, importcpp: "juce::ContentSharer".} = object

proc JUCE_DECLARE_SINGLETON*(this: var ContentSharer, arg1: ContentSharer): int {.header: juce_gui_basics, importcpp: "#.JUCE_DECLARE_SINGLETON(@)".}
proc shareText*(this: var ContentSharer, text: int, callback: int) {.header: juce_gui_basics, importcpp: "#.shareText(@)".}
proc shareImages*(this: var ContentSharer, images: int, callback: int, imageFileFormatToUse: ptr int = nil) {.header: juce_gui_basics, importcpp: "#.shareImages(@)".}
proc shareData*(this: var ContentSharer, mb: int, callback: int) {.header: juce_gui_basics, importcpp: "#.shareData(@)".}

type
  PropertyComponent* {.header: juce_gui_basics, importcpp: "juce::PropertyComponent".} = object
  PropertyComponentLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::PropertyComponent::LookAndFeelMethods".} = object

proc getPreferredHeight*(this: PropertyComponent): int {.header: juce_gui_basics, importcpp: "#.getPreferredHeight()".}
proc setPreferredHeight*(this: var PropertyComponent, newHeight: int) {.header: juce_gui_basics, importcpp: "#.setPreferredHeight(@)".}
proc refresh*(this: var PropertyComponent) {.header: juce_gui_basics, importcpp: "#.refresh()".}
proc paint*(this: var PropertyComponent, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var PropertyComponent) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc enablementChanged*(this: var PropertyComponent) {.header: juce_gui_basics, importcpp: "#.enablementChanged()".}

type
  BooleanPropertyComponent* {.header: juce_gui_basics, importcpp: "juce::BooleanPropertyComponent".} = object

proc setState*(this: var BooleanPropertyComponent, newState: bool) {.header: juce_gui_basics, importcpp: "#.setState(@)".}
proc getState*(this: BooleanPropertyComponent): bool {.header: juce_gui_basics, importcpp: "#.getState()".}
proc paint*(this: var BooleanPropertyComponent, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc refresh*(this: var BooleanPropertyComponent) {.header: juce_gui_basics, importcpp: "#.refresh()".}

type
  ButtonPropertyComponent* {.header: juce_gui_basics, importcpp: "juce::ButtonPropertyComponent".} = object

proc buttonClicked*(this: var ButtonPropertyComponent) {.header: juce_gui_basics, importcpp: "#.buttonClicked()".}
proc getButtonText*(this: ButtonPropertyComponent): int {.header: juce_gui_basics, importcpp: "#.getButtonText()".}
proc refresh*(this: var ButtonPropertyComponent) {.header: juce_gui_basics, importcpp: "#.refresh()".}

type
  ChoicePropertyComponent* {.header: juce_gui_basics, importcpp: "juce::ChoicePropertyComponent".} = object

proc setIndex*(this: var ChoicePropertyComponent, newIndex: int) {.header: juce_gui_basics, importcpp: "#.setIndex(@)".}
proc getIndex*(this: ChoicePropertyComponent): int {.header: juce_gui_basics, importcpp: "#.getIndex()".}
proc getChoices*(this: ChoicePropertyComponent): int {.header: juce_gui_basics, importcpp: "#.getChoices()".}
proc refresh*(this: var ChoicePropertyComponent) {.header: juce_gui_basics, importcpp: "#.refresh()".}

type
  PropertyPanel* {.header: juce_gui_basics, importcpp: "juce::PropertyPanel".} = object

proc clear*(this: var PropertyPanel) {.header: juce_gui_basics, importcpp: "#.clear()".}
proc addProperties*(this: var PropertyPanel, newPropertyComponents: int, extraPaddingBetweenComponents: int = 0) {.header: juce_gui_basics, importcpp: "#.addProperties(@)".}
proc addSection*(this: var PropertyPanel, sectionTitle: int, newPropertyComponents: int, shouldSectionInitiallyBeOpen: bool = true, indexToInsertAt: int = -1, extraPaddingBetweenComponents: int = 0) {.header: juce_gui_basics, importcpp: "#.addSection(@)".}
proc refreshAll*(this: PropertyPanel) {.header: juce_gui_basics, importcpp: "#.refreshAll()".}
proc isEmpty*(this: PropertyPanel): bool {.header: juce_gui_basics, importcpp: "#.isEmpty()".}
proc getTotalContentHeight*(this: PropertyPanel): int {.header: juce_gui_basics, importcpp: "#.getTotalContentHeight()".}
proc getSectionNames*(this: PropertyPanel): int {.header: juce_gui_basics, importcpp: "#.getSectionNames()".}
proc isSectionOpen*(this: PropertyPanel, sectionIndex: int): bool {.header: juce_gui_basics, importcpp: "#.isSectionOpen(@)".}
proc setSectionOpen*(this: var PropertyPanel, sectionIndex: int, shouldBeOpen: bool) {.header: juce_gui_basics, importcpp: "#.setSectionOpen(@)".}
proc setSectionEnabled*(this: var PropertyPanel, sectionIndex: int, shouldBeEnabled: bool) {.header: juce_gui_basics, importcpp: "#.setSectionEnabled(@)".}
proc removeSection*(this: var PropertyPanel, sectionIndex: int) {.header: juce_gui_basics, importcpp: "#.removeSection(@)".}
proc getOpennessState*(this: PropertyPanel): int {.header: juce_gui_basics, importcpp: "#.getOpennessState()".}
proc restoreOpennessState*(this: var PropertyPanel, newState: int) {.header: juce_gui_basics, importcpp: "#.restoreOpennessState(@)".}
proc setMessageWhenEmpty*(this: var PropertyPanel, newMessage: int) {.header: juce_gui_basics, importcpp: "#.setMessageWhenEmpty(@)".}
proc getMessageWhenEmpty*(this: PropertyPanel): int {.header: juce_gui_basics, importcpp: "#.getMessageWhenEmpty()".}
proc getViewport*(this: var PropertyPanel): var Viewport {.header: juce_gui_basics, importcpp: "#.getViewport()".}
proc paint*(this: var PropertyPanel, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var PropertyPanel) {.header: juce_gui_basics, importcpp: "#.resized()".}

type
  SliderPropertyComponent* {.header: juce_gui_basics, importcpp: "juce::SliderPropertyComponent".} = object

proc setValue*(this: var SliderPropertyComponent, newValue: float64) {.header: juce_gui_basics, importcpp: "#.setValue(@)".}
proc getValue*(this: SliderPropertyComponent): float64 {.header: juce_gui_basics, importcpp: "#.getValue()".}
proc refresh*(this: var SliderPropertyComponent) {.header: juce_gui_basics, importcpp: "#.refresh()".}

type
  TextPropertyComponent* {.header: juce_gui_basics, importcpp: "juce::TextPropertyComponent".} = object
  TextPropertyComponentListener* {.header: juce_gui_basics, importcpp: "juce::TextPropertyComponent::Listener".} = object

proc setText*(this: var TextPropertyComponent, newText: int) {.header: juce_gui_basics, importcpp: "#.setText(@)".}
proc getText*(this: TextPropertyComponent): int {.header: juce_gui_basics, importcpp: "#.getText()".}
proc getValue*(this: TextPropertyComponent): var int {.header: juce_gui_basics, importcpp: "#.getValue()".}
proc isTextEditorMultiLine*(this: TextPropertyComponent): bool {.header: juce_gui_basics, importcpp: "#.isTextEditorMultiLine()".}
proc colourChanged*(this: var TextPropertyComponent) {.header: juce_gui_basics, importcpp: "#.colourChanged()".}
proc addListener*(this: var TextPropertyComponent, newListener: ptr TextPropertyComponentListener) {.header: juce_gui_basics, importcpp: "#.addListener(@)".}
proc removeListener*(this: var TextPropertyComponent, listener: ptr TextPropertyComponentListener) {.header: juce_gui_basics, importcpp: "#.removeListener(@)".}
proc setInterestedInFileDrag*(this: var TextPropertyComponent, isInterested: bool) {.header: juce_gui_basics, importcpp: "#.setInterestedInFileDrag(@)".}
proc setEditable*(this: var TextPropertyComponent, isEditable: bool) {.header: juce_gui_basics, importcpp: "#.setEditable(@)".}
proc refresh*(this: var TextPropertyComponent) {.header: juce_gui_basics, importcpp: "#.refresh()".}
proc textWasEdited*(this: var TextPropertyComponent) {.header: juce_gui_basics, importcpp: "#.textWasEdited()".}

type
  MultiChoicePropertyComponent* {.header: juce_gui_basics, importcpp: "juce::MultiChoicePropertyComponent".} = object

proc isExpanded*(this: MultiChoicePropertyComponent): bool {.header: juce_gui_basics, importcpp: "#.isExpanded()".}
proc isExpandable*(this: MultiChoicePropertyComponent): bool {.header: juce_gui_basics, importcpp: "#.isExpandable()".}
proc setExpanded*(this: var MultiChoicePropertyComponent, expanded: bool) {.header: juce_gui_basics, importcpp: "#.setExpanded(@)".}
proc paint*(this: var MultiChoicePropertyComponent, g: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}
proc resized*(this: var MultiChoicePropertyComponent) {.header: juce_gui_basics, importcpp: "#.resized()".}
proc refresh*(this: var MultiChoicePropertyComponent) {.header: juce_gui_basics, importcpp: "#.refresh()".}

type
  JUCEApplication* {.header: juce_gui_basics, importcpp: "juce::JUCEApplication".} = object of JUCEApplicationBase

proc moreThanOneInstanceAllowed*(this: var JUCEApplication): bool {.header: juce_gui_basics, importcpp: "#.moreThanOneInstanceAllowed()".}
proc anotherInstanceStarted*(this: var JUCEApplication, commandLine: int) {.header: juce_gui_basics, importcpp: "#.anotherInstanceStarted(@)".}
proc systemRequestedQuit*(this: var JUCEApplication) {.header: juce_gui_basics, importcpp: "#.systemRequestedQuit()".}
proc suspended*(this: var JUCEApplication) {.header: juce_gui_basics, importcpp: "#.suspended()".}
proc resumed*(this: var JUCEApplication) {.header: juce_gui_basics, importcpp: "#.resumed()".}
proc unhandledException*(this: var JUCEApplication, e: ptr int, sourceFilename: int, lineNumber: int) {.header: juce_gui_basics, importcpp: "#.unhandledException(@)".}
proc getNextCommandTarget*(this: var JUCEApplication): ptr ApplicationCommandTarget {.header: juce_gui_basics, importcpp: "#.getNextCommandTarget()".}
# proc getCommandInfo*(this: var JUCEApplication, arg1: juce::CommandID, arg2: var ApplicationCommandInfo) {.header: juce_gui_basics, importcpp: "#.getCommandInfo(@)".}
proc getAllCommands*(this: var JUCEApplication, arg1: var int) {.header: juce_gui_basics, importcpp: "#.getAllCommands(@)".}
# proc perform*(this: var JUCEApplication, arg1: juce::ApplicationCommandTarget::InvocationInfo): bool {.header: juce_gui_basics, importcpp: "#.perform(@)".}

type
  BubbleComponent* {.header: juce_gui_basics, importcpp: "juce::BubbleComponent".} = object
  BubbleComponentLookAndFeelMethods* {.header: juce_gui_basics, importcpp: "juce::BubbleComponent::LookAndFeelMethods".} = object

proc setAllowedPlacement*(this: var BubbleComponent, newPlacement: int) {.header: juce_gui_basics, importcpp: "#.setAllowedPlacement(@)".}
proc setPosition*(this: var BubbleComponent, componentToPointTo: ptr Component, distanceFromTarget: int = 15, arrowLength: int = 10) {.header: juce_gui_basics, importcpp: "#.setPosition(@)".}
proc setPosition*(this: var BubbleComponent, arrowTipPosition: int, arrowLength: int = 10) {.header: juce_gui_basics, importcpp: "#.setPosition(@)".}
proc setPosition*(this: var BubbleComponent, rectangleToPointTo: int, distanceFromTarget: int = 15, arrowLength: int = 10) {.header: juce_gui_basics, importcpp: "#.setPosition(@)".}
proc paint*(this: var BubbleComponent, arg1: var int) {.header: juce_gui_basics, importcpp: "#.paint(@)".}

type
  ExtraLookAndFeelBaseClasses* {.header: juce_gui_basics, importcpp: "juce::ExtraLookAndFeelBaseClasses".} = object
  ExtraLookAndFeelBaseClassesLassoComponentMethods* {.header: juce_gui_basics, importcpp: "juce::ExtraLookAndFeelBaseClasses::LassoComponentMethods".} = object
  ExtraLookAndFeelBaseClassesKeyMappingEditorComponentMethods* {.header: juce_gui_basics, importcpp: "juce::ExtraLookAndFeelBaseClasses::KeyMappingEditorComponentMethods".} = object
  ExtraLookAndFeelBaseClassesAudioDeviceSelectorComponentMethods* {.header: juce_gui_basics, importcpp: "juce::ExtraLookAndFeelBaseClasses::AudioDeviceSelectorComponentMethods".} = object


proc findColour*(this: LookAndFeel, colourId: int): int {.header: juce_gui_basics, importcpp: "#.findColour(@)".}
proc setColour*(this: var LookAndFeel, colourId: int, colour: int) {.header: juce_gui_basics, importcpp: "#.setColour(@)".}
proc isColourSpecified*(this: LookAndFeel, colourId: int): bool {.header: juce_gui_basics, importcpp: "#.isColourSpecified(@)".}
proc getTypefaceForFont*(this: var LookAndFeel, arg1: int): int {.header: juce_gui_basics, importcpp: "#.getTypefaceForFont(@)".}
proc setDefaultSansSerifTypeface*(this: var LookAndFeel, newDefaultTypeface: int) {.header: juce_gui_basics, importcpp: "#.setDefaultSansSerifTypeface(@)".}
proc setDefaultSansSerifTypefaceName*(this: var LookAndFeel, newName: int) {.header: juce_gui_basics, importcpp: "#.setDefaultSansSerifTypefaceName(@)".}
proc getMouseCursorFor*(this: var LookAndFeel, arg1: var Component): MouseCursor {.header: juce_gui_basics, importcpp: "#.getMouseCursorFor(@)".}
proc createGraphicsContext*(this: var LookAndFeel, imageToRenderOn: int, origin: int, initialClip: int): int {.header: juce_gui_basics, importcpp: "#.createGraphicsContext(@)".}
proc setUsingNativeAlertWindows*(this: var LookAndFeel, shouldUseNativeAlerts: bool) {.header: juce_gui_basics, importcpp: "#.setUsingNativeAlertWindows(@)".}
proc isUsingNativeAlertWindows*(this: var LookAndFeel): bool {.header: juce_gui_basics, importcpp: "#.isUsingNativeAlertWindows()".}
proc drawSpinningWaitAnimation*(this: var LookAndFeel, arg1: var int, colour: int, x: int, y: int, w: int, h: int) {.header: juce_gui_basics, importcpp: "#.drawSpinningWaitAnimation(@)".}
proc getTickShape*(this: var LookAndFeel, height: float): int {.header: juce_gui_basics, importcpp: "#.getTickShape(@)".}
proc getCrossShape*(this: var LookAndFeel, height: float): int {.header: juce_gui_basics, importcpp: "#.getCrossShape(@)".}
proc createDropShadowerForComponent*(this: var LookAndFeel, arg1: ptr Component): ptr DropShadower {.header: juce_gui_basics, importcpp: "#.createDropShadowerForComponent(@)".}
proc playAlertSound*(this: var LookAndFeel) {.header: juce_gui_basics, importcpp: "#.playAlertSound()".}

type
  LookAndFeel_V2* {.header: juce_gui_basics, importcpp: "juce::LookAndFeel_V2".} = object

proc drawButtonBackground*(this: var LookAndFeel_V2, arg1: var int, arg2: var Button, backgroundColour: int, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawButtonBackground(@)".}
proc getTextButtonFont*(this: var LookAndFeel_V2, arg1: var TextButton, buttonHeight: int): int {.header: juce_gui_basics, importcpp: "#.getTextButtonFont(@)".}
proc drawButtonText*(this: var LookAndFeel_V2, arg1: var int, arg2: var TextButton, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawButtonText(@)".}
proc getTextButtonWidthToFitText*(this: var LookAndFeel_V2, arg1: var TextButton, buttonHeight: int): int {.header: juce_gui_basics, importcpp: "#.getTextButtonWidthToFitText(@)".}
proc drawToggleButton*(this: var LookAndFeel_V2, arg1: var int, arg2: var ToggleButton, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawToggleButton(@)".}
proc changeToggleButtonWidthToFitText*(this: var LookAndFeel_V2, arg1: var ToggleButton) {.header: juce_gui_basics, importcpp: "#.changeToggleButtonWidthToFitText(@)".}
proc drawTickBox*(this: var LookAndFeel_V2, arg1: var int, arg2: var Component, x: float, y: float, w: float, h: float, ticked: bool, isEnabled: bool, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawTickBox(@)".}
proc drawDrawableButton*(this: var LookAndFeel_V2, arg1: var int, arg2: var DrawableButton, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawDrawableButton(@)".}
# proc createAlertWindow*(this: var LookAndFeel_V2, title: int, message: int, button1: int, button2: int, button3: int, iconType: AlertWindow::AlertIconType, numButtons: int, associatedComponent: ptr Component): ptr AlertWindow {.header: juce_gui_basics, importcpp: "#.createAlertWindow(@)".}
proc drawAlertBox*(this: var LookAndFeel_V2, arg1: var int, arg2: var AlertWindow, textArea: int, arg4: var TextLayout) {.header: juce_gui_basics, importcpp: "#.drawAlertBox(@)".}
proc getAlertBoxWindowFlags*(this: var LookAndFeel_V2): int {.header: juce_gui_basics, importcpp: "#.getAlertBoxWindowFlags()".}
proc getWidthsForTextButtons*(this: var LookAndFeel_V2, arg1: var AlertWindow, arg2: int): int {.header: juce_gui_basics, importcpp: "#.getWidthsForTextButtons(@)".}
proc getAlertWindowButtonHeight*(this: var LookAndFeel_V2): int {.header: juce_gui_basics, importcpp: "#.getAlertWindowButtonHeight()".}
proc getAlertWindowTitleFont*(this: var LookAndFeel_V2): int {.header: juce_gui_basics, importcpp: "#.getAlertWindowTitleFont()".}
proc getAlertWindowMessageFont*(this: var LookAndFeel_V2): int {.header: juce_gui_basics, importcpp: "#.getAlertWindowMessageFont()".}
proc getAlertWindowFont*(this: var LookAndFeel_V2): int {.header: juce_gui_basics, importcpp: "#.getAlertWindowFont()".}
proc drawProgressBar*(this: var LookAndFeel_V2, arg1: var int, arg2: var ProgressBar, width: int, height: int, progress: float64, textToShow: int) {.header: juce_gui_basics, importcpp: "#.drawProgressBar(@)".}
proc drawSpinningWaitAnimation*(this: var LookAndFeel_V2, arg1: var int, colour: int, x: int, y: int, w: int, h: int) {.header: juce_gui_basics, importcpp: "#.drawSpinningWaitAnimation(@)".}
proc isProgressBarOpaque*(this: var LookAndFeel_V2, arg1: var ProgressBar): bool {.header: juce_gui_basics, importcpp: "#.isProgressBarOpaque(@)".}
proc areScrollbarButtonsVisible*(this: var LookAndFeel_V2): bool {.header: juce_gui_basics, importcpp: "#.areScrollbarButtonsVisible()".}
proc drawScrollbarButton*(this: var LookAndFeel_V2, arg1: var int, arg2: var ScrollBar, width: int, height: int, buttonDirection: int, isScrollbarVertical: bool, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawScrollbarButton(@)".}
proc drawScrollbar*(this: var LookAndFeel_V2, arg1: var int, arg2: var ScrollBar, x: int, y: int, width: int, height: int, isScrollbarVertical: bool, thumbStartPosition: int, thumbSize: int, isMouseOver: bool, isMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.drawScrollbar(@)".}
proc getScrollbarEffect*(this: var LookAndFeel_V2): ptr int {.header: juce_gui_basics, importcpp: "#.getScrollbarEffect()".}
proc getMinimumScrollbarThumbSize*(this: var LookAndFeel_V2, arg1: var ScrollBar): int {.header: juce_gui_basics, importcpp: "#.getMinimumScrollbarThumbSize(@)".}
proc getDefaultScrollbarWidth*(this: var LookAndFeel_V2): int {.header: juce_gui_basics, importcpp: "#.getDefaultScrollbarWidth()".}
proc getScrollbarButtonSize*(this: var LookAndFeel_V2, arg1: var ScrollBar): int {.header: juce_gui_basics, importcpp: "#.getScrollbarButtonSize(@)".}
proc getTickShape*(this: var LookAndFeel_V2, height: float): int {.header: juce_gui_basics, importcpp: "#.getTickShape(@)".}
proc getCrossShape*(this: var LookAndFeel_V2, height: float): int {.header: juce_gui_basics, importcpp: "#.getCrossShape(@)".}
proc drawTreeviewPlusMinusBox*(this: var LookAndFeel_V2, arg1: var int, area: int, backgroundColour: int, isOpen: bool, isMouseOver: bool) {.header: juce_gui_basics, importcpp: "#.drawTreeviewPlusMinusBox(@)".}
proc areLinesDrawnForTreeView*(this: var LookAndFeel_V2, arg1: var TreeView): bool {.header: juce_gui_basics, importcpp: "#.areLinesDrawnForTreeView(@)".}
proc getTreeViewIndentSize*(this: var LookAndFeel_V2, arg1: var TreeView): int {.header: juce_gui_basics, importcpp: "#.getTreeViewIndentSize(@)".}
proc fillTextEditorBackground*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, arg4: var TextEditor) {.header: juce_gui_basics, importcpp: "#.fillTextEditorBackground(@)".}
proc drawTextEditorOutline*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, arg4: var TextEditor) {.header: juce_gui_basics, importcpp: "#.drawTextEditorOutline(@)".}
proc createCaretComponent*(this: var LookAndFeel_V2, keyFocusOwner: ptr Component): ptr CaretComponent {.header: juce_gui_basics, importcpp: "#.createCaretComponent(@)".}
proc getDefaultFolderImage*(this: var LookAndFeel_V2): ptr Drawable {.header: juce_gui_basics, importcpp: "#.getDefaultFolderImage()".}
proc getDefaultDocumentFileImage*(this: var LookAndFeel_V2): ptr Drawable {.header: juce_gui_basics, importcpp: "#.getDefaultDocumentFileImage()".}
proc createFileChooserHeaderText*(this: var LookAndFeel_V2, title: int, instructions: int): int {.header: juce_gui_basics, importcpp: "#.createFileChooserHeaderText(@)".}
proc drawFileBrowserRow*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, file: int, filename: int, icon: ptr int, fileSizeDescription: int, fileTimeDescription: int, isDirectory: bool, isItemSelected: bool, itemIndex: int, arg12: var DirectoryContentsDisplayComponent) {.header: juce_gui_basics, importcpp: "#.drawFileBrowserRow(@)".}
proc createFileBrowserGoUpButton*(this: var LookAndFeel_V2): ptr Button {.header: juce_gui_basics, importcpp: "#.createFileBrowserGoUpButton()".}
proc layoutFileBrowserComponent*(this: var LookAndFeel_V2, arg1: var FileBrowserComponent, arg2: ptr DirectoryContentsDisplayComponent, arg3: ptr FilePreviewComponent, currentPathBox: ptr ComboBox, filenameBox: ptr TextEditor, goUpButton: ptr Button) {.header: juce_gui_basics, importcpp: "#.layoutFileBrowserComponent(@)".}
proc drawBubble*(this: var LookAndFeel_V2, arg1: var int, arg2: var BubbleComponent, tip: int, body: int) {.header: juce_gui_basics, importcpp: "#.drawBubble(@)".}
proc drawLasso*(this: var LookAndFeel_V2, arg1: var int, arg2: var Component) {.header: juce_gui_basics, importcpp: "#.drawLasso(@)".}
proc drawPopupMenuBackground*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.drawPopupMenuBackground(@)".}
# proc drawPopupMenuBackgroundWithOptions*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, arg4: PopupMenu::Options) {.header: juce_gui_basics, importcpp: "#.drawPopupMenuBackgroundWithOptions(@)".}
proc drawPopupMenuItem*(this: var LookAndFeel_V2, arg1: var int, area: int, isSeparator: bool, isActive: bool, isHighlighted: bool, isTicked: bool, hasSubMenu: bool, text: int, shortcutKeyText: int, icon: ptr Drawable, textColour: ptr int) {.header: juce_gui_basics, importcpp: "#.drawPopupMenuItem(@)".}
# proc drawPopupMenuItemWithOptions*(this: var LookAndFeel_V2, arg1: var int, area: int, isHighlighted: bool, item: PopupMenu::Item, arg5: PopupMenu::Options) {.header: juce_gui_basics, importcpp: "#.drawPopupMenuItemWithOptions(@)".}
proc drawPopupMenuSectionHeader*(this: var LookAndFeel_V2, arg1: var int, area: int, sectionName: int) {.header: juce_gui_basics, importcpp: "#.drawPopupMenuSectionHeader(@)".}
# proc drawPopupMenuSectionHeaderWithOptions*(this: var LookAndFeel_V2, arg1: var int, area: int, sectionName: int, arg4: PopupMenu::Options) {.header: juce_gui_basics, importcpp: "#.drawPopupMenuSectionHeaderWithOptions(@)".}
proc getPopupMenuFont*(this: var LookAndFeel_V2): int {.header: juce_gui_basics, importcpp: "#.getPopupMenuFont()".}
proc drawPopupMenuUpDownArrow*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, isScrollUpArrow: bool) {.header: juce_gui_basics, importcpp: "#.drawPopupMenuUpDownArrow(@)".}
# proc drawPopupMenuUpDownArrowWithOptions*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, isScrollUpArrow: bool, arg5: PopupMenu::Options) {.header: juce_gui_basics, importcpp: "#.drawPopupMenuUpDownArrowWithOptions(@)".}
proc getIdealPopupMenuItemSize*(this: var LookAndFeel_V2, text: int, isSeparator: bool, standardMenuItemHeight: int, idealWidth: var int, idealHeight: var int) {.header: juce_gui_basics, importcpp: "#.getIdealPopupMenuItemSize(@)".}
# proc getIdealPopupMenuItemSizeWithOptions*(this: var LookAndFeel_V2, text: int, isSeparator: bool, standardMenuItemHeight: int, idealWidth: var int, idealHeight: var int, arg6: PopupMenu::Options) {.header: juce_gui_basics, importcpp: "#.getIdealPopupMenuItemSizeWithOptions(@)".}
proc getMenuWindowFlags*(this: var LookAndFeel_V2): int {.header: juce_gui_basics, importcpp: "#.getMenuWindowFlags()".}
proc preparePopupMenuWindow*(this: var LookAndFeel_V2, arg1: var Component) {.header: juce_gui_basics, importcpp: "#.preparePopupMenuWindow(@)".}
proc drawMenuBarBackground*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, isMouseOverBar: bool, arg5: var MenuBarComponent) {.header: juce_gui_basics, importcpp: "#.drawMenuBarBackground(@)".}
proc getMenuBarItemWidth*(this: var LookAndFeel_V2, arg1: var MenuBarComponent, itemIndex: int, itemText: int): int {.header: juce_gui_basics, importcpp: "#.getMenuBarItemWidth(@)".}
proc getMenuBarFont*(this: var LookAndFeel_V2, arg1: var MenuBarComponent, itemIndex: int, itemText: int): int {.header: juce_gui_basics, importcpp: "#.getMenuBarFont(@)".}
proc getDefaultMenuBarHeight*(this: var LookAndFeel_V2): int {.header: juce_gui_basics, importcpp: "#.getDefaultMenuBarHeight()".}
proc drawMenuBarItem*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, itemIndex: int, itemText: int, isMouseOverItem: bool, isMenuOpen: bool, isMouseOverBar: bool, arg9: var MenuBarComponent) {.header: juce_gui_basics, importcpp: "#.drawMenuBarItem(@)".}
# proc getParentComponentForMenuOptions*(this: var LookAndFeel_V2, options: PopupMenu::Options): ptr Component {.header: juce_gui_basics, importcpp: "#.getParentComponentForMenuOptions(@)".}
# proc shouldPopupMenuScaleWithTargetComponent*(this: var LookAndFeel_V2, options: PopupMenu::Options): bool {.header: juce_gui_basics, importcpp: "#.shouldPopupMenuScaleWithTargetComponent(@)".}
proc getPopupMenuBorderSize*(this: var LookAndFeel_V2): int {.header: juce_gui_basics, importcpp: "#.getPopupMenuBorderSize()".}
# proc getPopupMenuBorderSizeWithOptions*(this: var LookAndFeel_V2, arg1: PopupMenu::Options): int {.header: juce_gui_basics, importcpp: "#.getPopupMenuBorderSizeWithOptions(@)".}
# proc drawPopupMenuColumnSeparatorWithOptions*(this: var LookAndFeel_V2, g: var int, bounds: int, arg3: PopupMenu::Options) {.header: juce_gui_basics, importcpp: "#.drawPopupMenuColumnSeparatorWithOptions(@)".}
# proc getPopupMenuColumnSeparatorWidthWithOptions*(this: var LookAndFeel_V2, arg1: PopupMenu::Options): int {.header: juce_gui_basics, importcpp: "#.getPopupMenuColumnSeparatorWidthWithOptions(@)".}
proc drawComboBox*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, isMouseButtonDown: bool, buttonX: int, buttonY: int, buttonW: int, buttonH: int, arg9: var ComboBox) {.header: juce_gui_basics, importcpp: "#.drawComboBox(@)".}
proc getComboBoxFont*(this: var LookAndFeel_V2, arg1: var ComboBox): int {.header: juce_gui_basics, importcpp: "#.getComboBoxFont(@)".}
proc createComboBoxTextBox*(this: var LookAndFeel_V2, arg1: var ComboBox): ptr Label {.header: juce_gui_basics, importcpp: "#.createComboBoxTextBox(@)".}
proc positionComboBoxText*(this: var LookAndFeel_V2, arg1: var ComboBox, arg2: var Label) {.header: juce_gui_basics, importcpp: "#.positionComboBoxText(@)".}
# proc getOptionsForComboBoxPopupMenu*(this: var LookAndFeel_V2, arg1: var ComboBox, arg2: var Label): PopupMenu::Options {.header: juce_gui_basics, importcpp: "#.getOptionsForComboBoxPopupMenu(@)".}
proc drawComboBoxTextWhenNothingSelected*(this: var LookAndFeel_V2, arg1: var int, arg2: var ComboBox, arg3: var Label) {.header: juce_gui_basics, importcpp: "#.drawComboBoxTextWhenNothingSelected(@)".}
proc drawLabel*(this: var LookAndFeel_V2, arg1: var int, arg2: var Label) {.header: juce_gui_basics, importcpp: "#.drawLabel(@)".}
proc getLabelFont*(this: var LookAndFeel_V2, arg1: var Label): int {.header: juce_gui_basics, importcpp: "#.getLabelFont(@)".}
proc getLabelBorderSize*(this: var LookAndFeel_V2, arg1: var Label): int {.header: juce_gui_basics, importcpp: "#.getLabelBorderSize(@)".}
# proc drawLinearSlider*(this: var LookAndFeel_V2, arg1: var int, x: int, y: int, width: int, height: int, sliderPos: float, minSliderPos: float, maxSliderPos: float, arg9: Slider::SliderStyle, arg10: var Slider) {.header: juce_gui_basics, importcpp: "#.drawLinearSlider(@)".}
# proc drawLinearSliderBackground*(this: var LookAndFeel_V2, arg1: var int, x: int, y: int, width: int, height: int, sliderPos: float, minSliderPos: float, maxSliderPos: float, arg9: Slider::SliderStyle, arg10: var Slider) {.header: juce_gui_basics, importcpp: "#.drawLinearSliderBackground(@)".}
# proc drawLinearSliderThumb*(this: var LookAndFeel_V2, arg1: var int, x: int, y: int, width: int, height: int, sliderPos: float, minSliderPos: float, maxSliderPos: float, arg9: Slider::SliderStyle, arg10: var Slider) {.header: juce_gui_basics, importcpp: "#.drawLinearSliderThumb(@)".}
proc drawRotarySlider*(this: var LookAndFeel_V2, arg1: var int, x: int, y: int, width: int, height: int, sliderPosProportional: float, rotaryStartAngle: float, rotaryEndAngle: float, arg9: var Slider) {.header: juce_gui_basics, importcpp: "#.drawRotarySlider(@)".}
proc getSliderThumbRadius*(this: var LookAndFeel_V2, arg1: var Slider): int {.header: juce_gui_basics, importcpp: "#.getSliderThumbRadius(@)".}
proc createSliderButton*(this: var LookAndFeel_V2, arg1: var Slider, isIncrement: bool): ptr Button {.header: juce_gui_basics, importcpp: "#.createSliderButton(@)".}
proc createSliderTextBox*(this: var LookAndFeel_V2, arg1: var Slider): ptr Label {.header: juce_gui_basics, importcpp: "#.createSliderTextBox(@)".}
proc getSliderEffect*(this: var LookAndFeel_V2, arg1: var Slider): ptr int {.header: juce_gui_basics, importcpp: "#.getSliderEffect(@)".}
proc getSliderPopupFont*(this: var LookAndFeel_V2, arg1: var Slider): int {.header: juce_gui_basics, importcpp: "#.getSliderPopupFont(@)".}
proc getSliderPopupPlacement*(this: var LookAndFeel_V2, arg1: var Slider): int {.header: juce_gui_basics, importcpp: "#.getSliderPopupPlacement(@)".}
# proc getSliderLayout*(this: var LookAndFeel_V2, arg1: var Slider): Slider::SliderLayout {.header: juce_gui_basics, importcpp: "#.getSliderLayout(@)".}
proc getTooltipBounds*(this: var LookAndFeel_V2, tipText: int, screenPos: int, parentArea: int): int {.header: juce_gui_basics, importcpp: "#.getTooltipBounds(@)".}
proc drawTooltip*(this: var LookAndFeel_V2, arg1: var int, text: int, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.drawTooltip(@)".}
proc createFilenameComponentBrowseButton*(this: var LookAndFeel_V2, text: int): ptr Button {.header: juce_gui_basics, importcpp: "#.createFilenameComponentBrowseButton(@)".}
proc layoutFilenameComponent*(this: var LookAndFeel_V2, arg1: var FilenameComponent, filenameBox: ptr ComboBox, browseButton: ptr Button) {.header: juce_gui_basics, importcpp: "#.layoutFilenameComponent(@)".}
proc drawConcertinaPanelHeader*(this: var LookAndFeel_V2, arg1: var int, area: int, isMouseOver: bool, isMouseDown: bool, arg5: var ConcertinaPanel, panel: var Component) {.header: juce_gui_basics, importcpp: "#.drawConcertinaPanelHeader(@)".}
proc drawCornerResizer*(this: var LookAndFeel_V2, arg1: var int, w: int, h: int, isMouseOver: bool, isMouseDragging: bool) {.header: juce_gui_basics, importcpp: "#.drawCornerResizer(@)".}
proc drawResizableFrame*(this: var LookAndFeel_V2, arg1: var int, w: int, h: int, arg4: int) {.header: juce_gui_basics, importcpp: "#.drawResizableFrame(@)".}
proc fillResizableWindowBackground*(this: var LookAndFeel_V2, arg1: var int, w: int, h: int, arg4: int, arg5: var ResizableWindow) {.header: juce_gui_basics, importcpp: "#.fillResizableWindowBackground(@)".}
proc drawResizableWindowBorder*(this: var LookAndFeel_V2, arg1: var int, w: int, h: int, border: int, arg5: var ResizableWindow) {.header: juce_gui_basics, importcpp: "#.drawResizableWindowBorder(@)".}
proc drawDocumentWindowTitleBar*(this: var LookAndFeel_V2, arg1: var DocumentWindow, arg2: var int, w: int, h: int, titleSpaceX: int, titleSpaceW: int, icon: ptr int, drawTitleTextOnLeft: bool) {.header: juce_gui_basics, importcpp: "#.drawDocumentWindowTitleBar(@)".}
proc createDocumentWindowButton*(this: var LookAndFeel_V2, buttonType: int): ptr Button {.header: juce_gui_basics, importcpp: "#.createDocumentWindowButton(@)".}
proc positionDocumentWindowButtons*(this: var LookAndFeel_V2, arg1: var DocumentWindow, titleBarX: int, titleBarY: int, titleBarW: int, titleBarH: int, minimiseButton: ptr Button, maximiseButton: ptr Button, closeButton: ptr Button, positionTitleBarButtonsOnLeft: bool) {.header: juce_gui_basics, importcpp: "#.positionDocumentWindowButtons(@)".}
proc createDropShadowerForComponent*(this: var LookAndFeel_V2, arg1: ptr Component): ptr DropShadower {.header: juce_gui_basics, importcpp: "#.createDropShadowerForComponent(@)".}
proc drawStretchableLayoutResizerBar*(this: var LookAndFeel_V2, arg1: var int, w: int, h: int, isVerticalBar: bool, isMouseOver: bool, isMouseDragging: bool) {.header: juce_gui_basics, importcpp: "#.drawStretchableLayoutResizerBar(@)".}
proc drawGroupComponentOutline*(this: var LookAndFeel_V2, arg1: var int, w: int, h: int, text: int, arg5: int, arg6: var GroupComponent) {.header: juce_gui_basics, importcpp: "#.drawGroupComponentOutline(@)".}
proc getTabButtonSpaceAroundImage*(this: var LookAndFeel_V2): int {.header: juce_gui_basics, importcpp: "#.getTabButtonSpaceAroundImage()".}
proc getTabButtonOverlap*(this: var LookAndFeel_V2, tabDepth: int): int {.header: juce_gui_basics, importcpp: "#.getTabButtonOverlap(@)".}
proc getTabButtonBestWidth*(this: var LookAndFeel_V2, arg1: var TabBarButton, tabDepth: int): int {.header: juce_gui_basics, importcpp: "#.getTabButtonBestWidth(@)".}
proc getTabButtonExtraComponentBounds*(this: var LookAndFeel_V2, arg1: TabBarButton, textArea: var int, extraComp: var Component): int {.header: juce_gui_basics, importcpp: "#.getTabButtonExtraComponentBounds(@)".}
proc drawTabButton*(this: var LookAndFeel_V2, arg1: var TabBarButton, arg2: var int, isMouseOver: bool, isMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.drawTabButton(@)".}
proc getTabButtonFont*(this: var LookAndFeel_V2, arg1: var TabBarButton, height: float): int {.header: juce_gui_basics, importcpp: "#.getTabButtonFont(@)".}
proc drawTabButtonText*(this: var LookAndFeel_V2, arg1: var TabBarButton, arg2: var int, isMouseOver: bool, isMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.drawTabButtonText(@)".}
proc drawTabbedButtonBarBackground*(this: var LookAndFeel_V2, arg1: var TabbedButtonBar, arg2: var int) {.header: juce_gui_basics, importcpp: "#.drawTabbedButtonBarBackground(@)".}
proc drawTabAreaBehindFrontButton*(this: var LookAndFeel_V2, arg1: var TabbedButtonBar, arg2: var int, w: int, h: int) {.header: juce_gui_basics, importcpp: "#.drawTabAreaBehindFrontButton(@)".}
proc createTabButtonShape*(this: var LookAndFeel_V2, arg1: var TabBarButton, arg2: var int, isMouseOver: bool, isMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.createTabButtonShape(@)".}
proc fillTabButtonShape*(this: var LookAndFeel_V2, arg1: var TabBarButton, arg2: var int, arg3: int, isMouseOver: bool, isMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.fillTabButtonShape(@)".}
proc createTabBarExtrasButton*(this: var LookAndFeel_V2): ptr Button {.header: juce_gui_basics, importcpp: "#.createTabBarExtrasButton()".}
proc drawImageButton*(this: var LookAndFeel_V2, arg1: var int, arg2: ptr int, imageX: int, imageY: int, imageW: int, imageH: int, overlayColour: int, imageOpacity: float, arg9: var ImageButton) {.header: juce_gui_basics, importcpp: "#.drawImageButton(@)".}
proc drawTableHeaderBackground*(this: var LookAndFeel_V2, arg1: var int, arg2: var TableHeaderComponent) {.header: juce_gui_basics, importcpp: "#.drawTableHeaderBackground(@)".}
proc drawTableHeaderColumn*(this: var LookAndFeel_V2, arg1: var int, arg2: var TableHeaderComponent, columnName: int, columnId: int, width: int, height: int, isMouseOver: bool, isMouseDown: bool, columnFlags: int) {.header: juce_gui_basics, importcpp: "#.drawTableHeaderColumn(@)".}
proc paintToolbarBackground*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, arg4: var Toolbar) {.header: juce_gui_basics, importcpp: "#.paintToolbarBackground(@)".}
proc createToolbarMissingItemsButton*(this: var LookAndFeel_V2, arg1: var Toolbar): ptr Button {.header: juce_gui_basics, importcpp: "#.createToolbarMissingItemsButton(@)".}
proc paintToolbarButtonBackground*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, isMouseOver: bool, isMouseDown: bool, arg6: var ToolbarItemComponent) {.header: juce_gui_basics, importcpp: "#.paintToolbarButtonBackground(@)".}
proc paintToolbarButtonLabel*(this: var LookAndFeel_V2, arg1: var int, x: int, y: int, width: int, height: int, text: int, arg7: var ToolbarItemComponent) {.header: juce_gui_basics, importcpp: "#.paintToolbarButtonLabel(@)".}
proc drawPropertyPanelSectionHeader*(this: var LookAndFeel_V2, arg1: var int, name: int, isOpen: bool, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.drawPropertyPanelSectionHeader(@)".}
proc drawPropertyComponentBackground*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, arg4: var PropertyComponent) {.header: juce_gui_basics, importcpp: "#.drawPropertyComponentBackground(@)".}
proc drawPropertyComponentLabel*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, arg4: var PropertyComponent) {.header: juce_gui_basics, importcpp: "#.drawPropertyComponentLabel(@)".}
proc getPropertyComponentContentPosition*(this: var LookAndFeel_V2, arg1: var PropertyComponent): int {.header: juce_gui_basics, importcpp: "#.getPropertyComponentContentPosition(@)".}
proc getPropertyPanelSectionHeaderHeight*(this: var LookAndFeel_V2, sectionTitle: int): int {.header: juce_gui_basics, importcpp: "#.getPropertyPanelSectionHeaderHeight(@)".}
proc drawCallOutBoxBackground*(this: var LookAndFeel_V2, arg1: var CallOutBox, arg2: var int, path: int, cachedImage: var int) {.header: juce_gui_basics, importcpp: "#.drawCallOutBoxBackground(@)".}
proc getCallOutBoxBorderSize*(this: var LookAndFeel_V2, arg1: CallOutBox): int {.header: juce_gui_basics, importcpp: "#.getCallOutBoxBorderSize(@)".}
proc getCallOutBoxCornerSize*(this: var LookAndFeel_V2, arg1: CallOutBox): float {.header: juce_gui_basics, importcpp: "#.getCallOutBoxCornerSize(@)".}
proc drawLevelMeter*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, level: float) {.header: juce_gui_basics, importcpp: "#.drawLevelMeter(@)".}
proc drawKeymapChangeButton*(this: var LookAndFeel_V2, arg1: var int, width: int, height: int, arg4: var Button, keyDescription: int) {.header: juce_gui_basics, importcpp: "#.drawKeymapChangeButton(@)".}
proc getSidePanelTitleFont*(this: var LookAndFeel_V2, arg1: var SidePanel): int {.header: juce_gui_basics, importcpp: "#.getSidePanelTitleFont(@)".}
proc getSidePanelTitleJustification*(this: var LookAndFeel_V2, arg1: var SidePanel): int {.header: juce_gui_basics, importcpp: "#.getSidePanelTitleJustification(@)".}
proc getSidePanelDismissButtonShape*(this: var LookAndFeel_V2, arg1: var SidePanel): int {.header: juce_gui_basics, importcpp: "#.getSidePanelDismissButtonShape(@)".}

type
  LookAndFeel_V1* {.header: juce_gui_basics, importcpp: "juce::LookAndFeel_V1".} = object

proc drawButtonBackground*(this: var LookAndFeel_V1, arg1: var int, arg2: var Button, backgroundColour: int, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawButtonBackground(@)".}
proc drawToggleButton*(this: var LookAndFeel_V1, arg1: var int, arg2: var ToggleButton, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawToggleButton(@)".}
proc drawTickBox*(this: var LookAndFeel_V1, arg1: var int, arg2: var Component, x: float, y: float, w: float, h: float, ticked: bool, isEnabled: bool, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawTickBox(@)".}
proc drawProgressBar*(this: var LookAndFeel_V1, arg1: var int, arg2: var ProgressBar, width: int, height: int, progress: float64, textToShow: int) {.header: juce_gui_basics, importcpp: "#.drawProgressBar(@)".}
proc drawScrollbarButton*(this: var LookAndFeel_V1, arg1: var int, arg2: var ScrollBar, width: int, height: int, buttonDirection: int, isScrollbarVertical: bool, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawScrollbarButton(@)".}
proc drawScrollbar*(this: var LookAndFeel_V1, arg1: var int, arg2: var ScrollBar, x: int, y: int, width: int, height: int, isScrollbarVertical: bool, thumbStartPosition: int, thumbSize: int, isMouseOver: bool, isMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.drawScrollbar(@)".}
proc getScrollbarEffect*(this: var LookAndFeel_V1): ptr int {.header: juce_gui_basics, importcpp: "#.getScrollbarEffect()".}
proc drawTextEditorOutline*(this: var LookAndFeel_V1, arg1: var int, width: int, height: int, arg4: var TextEditor) {.header: juce_gui_basics, importcpp: "#.drawTextEditorOutline(@)".}
proc drawPopupMenuBackground*(this: var LookAndFeel_V1, arg1: var int, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.drawPopupMenuBackground(@)".}
proc drawMenuBarBackground*(this: var LookAndFeel_V1, arg1: var int, width: int, height: int, isMouseOverBar: bool, arg5: var MenuBarComponent) {.header: juce_gui_basics, importcpp: "#.drawMenuBarBackground(@)".}
proc drawComboBox*(this: var LookAndFeel_V1, arg1: var int, width: int, height: int, isButtonDown: bool, buttonX: int, buttonY: int, buttonW: int, buttonH: int, arg9: var ComboBox) {.header: juce_gui_basics, importcpp: "#.drawComboBox(@)".}
proc getComboBoxFont*(this: var LookAndFeel_V1, arg1: var ComboBox): int {.header: juce_gui_basics, importcpp: "#.getComboBoxFont(@)".}
# proc drawLinearSlider*(this: var LookAndFeel_V1, arg1: var int, x: int, y: int, width: int, height: int, sliderPos: float, minSliderPos: float, maxSliderPos: float, arg9: Slider::SliderStyle, arg10: var Slider) {.header: juce_gui_basics, importcpp: "#.drawLinearSlider(@)".}
proc getSliderThumbRadius*(this: var LookAndFeel_V1, arg1: var Slider): int {.header: juce_gui_basics, importcpp: "#.getSliderThumbRadius(@)".}
proc createSliderButton*(this: var LookAndFeel_V1, arg1: var Slider, isIncrement: bool): ptr Button {.header: juce_gui_basics, importcpp: "#.createSliderButton(@)".}
proc getSliderEffect*(this: var LookAndFeel_V1, arg1: var Slider): ptr int {.header: juce_gui_basics, importcpp: "#.getSliderEffect(@)".}
proc drawCornerResizer*(this: var LookAndFeel_V1, arg1: var int, w: int, h: int, isMouseOver: bool, isMouseDragging: bool) {.header: juce_gui_basics, importcpp: "#.drawCornerResizer(@)".}
proc createDocumentWindowButton*(this: var LookAndFeel_V1, buttonType: int): ptr Button {.header: juce_gui_basics, importcpp: "#.createDocumentWindowButton(@)".}
proc positionDocumentWindowButtons*(this: var LookAndFeel_V1, arg1: var DocumentWindow, titleBarX: int, titleBarY: int, titleBarW: int, titleBarH: int, minimiseButton: ptr Button, maximiseButton: ptr Button, closeButton: ptr Button, positionTitleBarButtonsOnLeft: bool) {.header: juce_gui_basics, importcpp: "#.positionDocumentWindowButtons(@)".}

type
  LookAndFeel_V3* {.header: juce_gui_basics, importcpp: "juce::LookAndFeel_V3".} = object

proc drawButtonBackground*(this: var LookAndFeel_V3, arg1: var int, arg2: var Button, backgroundColour: int, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawButtonBackground(@)".}
proc drawTableHeaderBackground*(this: var LookAndFeel_V3, arg1: var int, arg2: var TableHeaderComponent) {.header: juce_gui_basics, importcpp: "#.drawTableHeaderBackground(@)".}
proc drawTreeviewPlusMinusBox*(this: var LookAndFeel_V3, arg1: var int, area: int, backgroundColour: int, isOpen: bool, isMouseOver: bool) {.header: juce_gui_basics, importcpp: "#.drawTreeviewPlusMinusBox(@)".}
proc areLinesDrawnForTreeView*(this: var LookAndFeel_V3, arg1: var TreeView): bool {.header: juce_gui_basics, importcpp: "#.areLinesDrawnForTreeView(@)".}
proc getTreeViewIndentSize*(this: var LookAndFeel_V3, arg1: var TreeView): int {.header: juce_gui_basics, importcpp: "#.getTreeViewIndentSize(@)".}
proc createDocumentWindowButton*(this: var LookAndFeel_V3, buttonType: int): ptr Button {.header: juce_gui_basics, importcpp: "#.createDocumentWindowButton(@)".}
proc drawComboBox*(this: var LookAndFeel_V3, arg1: var int, width: int, height: int, isButtonDown: bool, buttonX: int, buttonY: int, buttonW: int, buttonH: int, box: var ComboBox) {.header: juce_gui_basics, importcpp: "#.drawComboBox(@)".}
proc drawKeymapChangeButton*(this: var LookAndFeel_V3, arg1: var int, width: int, height: int, button: var Button, keyDescription: int) {.header: juce_gui_basics, importcpp: "#.drawKeymapChangeButton(@)".}
proc drawPopupMenuBackground*(this: var LookAndFeel_V3, arg1: var int, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.drawPopupMenuBackground(@)".}
proc drawMenuBarBackground*(this: var LookAndFeel_V3, arg1: var int, width: int, height: int, arg4: bool, arg5: var MenuBarComponent) {.header: juce_gui_basics, importcpp: "#.drawMenuBarBackground(@)".}
proc getTabButtonOverlap*(this: var LookAndFeel_V3, tabDepth: int): int {.header: juce_gui_basics, importcpp: "#.getTabButtonOverlap(@)".}
proc getTabButtonSpaceAroundImage*(this: var LookAndFeel_V3): int {.header: juce_gui_basics, importcpp: "#.getTabButtonSpaceAroundImage()".}
proc drawTabButton*(this: var LookAndFeel_V3, arg1: var TabBarButton, arg2: var int, isMouseOver: bool, isMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.drawTabButton(@)".}
proc drawTabAreaBehindFrontButton*(this: var LookAndFeel_V3, bar: var TabbedButtonBar, g: var int, w: int, h: int) {.header: juce_gui_basics, importcpp: "#.drawTabAreaBehindFrontButton(@)".}
proc drawTextEditorOutline*(this: var LookAndFeel_V3, arg1: var int, width: int, height: int, arg4: var TextEditor) {.header: juce_gui_basics, importcpp: "#.drawTextEditorOutline(@)".}
proc drawStretchableLayoutResizerBar*(this: var LookAndFeel_V3, arg1: var int, w: int, h: int, isVerticalBar: bool, isMouseOver: bool, isMouseDragging: bool) {.header: juce_gui_basics, importcpp: "#.drawStretchableLayoutResizerBar(@)".}
proc areScrollbarButtonsVisible*(this: var LookAndFeel_V3): bool {.header: juce_gui_basics, importcpp: "#.areScrollbarButtonsVisible()".}
proc drawScrollbar*(this: var LookAndFeel_V3, arg1: var int, arg2: var ScrollBar, x: int, y: int, width: int, height: int, isScrollbarVertical: bool, thumbStartPosition: int, thumbSize: int, isMouseOver: bool, isMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.drawScrollbar(@)".}
# proc drawLinearSlider*(this: var LookAndFeel_V3, arg1: var int, x: int, y: int, width: int, height: int, sliderPos: float, minSliderPos: float, maxSliderPos: float, arg9: Slider::SliderStyle, arg10: var Slider) {.header: juce_gui_basics, importcpp: "#.drawLinearSlider(@)".}
# proc drawLinearSliderBackground*(this: var LookAndFeel_V3, arg1: var int, x: int, y: int, width: int, height: int, sliderPos: float, minSliderPos: float, maxSliderPos: float, arg9: Slider::SliderStyle, arg10: var Slider) {.header: juce_gui_basics, importcpp: "#.drawLinearSliderBackground(@)".}
proc drawConcertinaPanelHeader*(this: var LookAndFeel_V3, arg1: var int, area: int, isMouseOver: bool, isMouseDown: bool, arg5: var ConcertinaPanel, arg6: var Component) {.header: juce_gui_basics, importcpp: "#.drawConcertinaPanelHeader(@)".}
proc getTickShape*(this: var LookAndFeel_V3, height: float): int {.header: juce_gui_basics, importcpp: "#.getTickShape(@)".}
proc getCrossShape*(this: var LookAndFeel_V3, height: float): int {.header: juce_gui_basics, importcpp: "#.getCrossShape(@)".}

type
  LookAndFeel_V4* {.header: juce_gui_basics, importcpp: "juce::LookAndFeel_V4".} = object
  LookAndFeel_V4ColourScheme* {.header: juce_gui_basics, importcpp: "juce::LookAndFeel_V4::ColourScheme".} = object

proc setColourScheme*(this: var LookAndFeel_V4, arg1: LookAndFeel_V4ColourScheme) {.header: juce_gui_basics, importcpp: "#.setColourScheme(@)".}
proc getCurrentColourScheme*(this: var LookAndFeel_V4): var LookAndFeel_V4ColourScheme {.header: juce_gui_basics, importcpp: "#.getCurrentColourScheme()".}
proc createDocumentWindowButton*(this: var LookAndFeel_V4, arg1: int): ptr Button {.header: juce_gui_basics, importcpp: "#.createDocumentWindowButton(@)".}
proc positionDocumentWindowButtons*(this: var LookAndFeel_V4, arg1: var DocumentWindow, arg2: int, arg3: int, arg4: int, arg5: int, arg6: ptr Button, arg7: ptr Button, arg8: ptr Button, arg9: bool) {.header: juce_gui_basics, importcpp: "#.positionDocumentWindowButtons(@)".}
proc drawDocumentWindowTitleBar*(this: var LookAndFeel_V4, arg1: var DocumentWindow, arg2: var int, arg3: int, arg4: int, arg5: int, arg6: int, arg7: ptr int, arg8: bool) {.header: juce_gui_basics, importcpp: "#.drawDocumentWindowTitleBar(@)".}
proc getTextButtonFont*(this: var LookAndFeel_V4, arg1: var TextButton, buttonHeight: int): int {.header: juce_gui_basics, importcpp: "#.getTextButtonFont(@)".}
proc drawButtonBackground*(this: var LookAndFeel_V4, arg1: var int, arg2: var Button, backgroundColour: int, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawButtonBackground(@)".}
proc drawToggleButton*(this: var LookAndFeel_V4, arg1: var int, arg2: var ToggleButton, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawToggleButton(@)".}
proc drawTickBox*(this: var LookAndFeel_V4, arg1: var int, arg2: var Component, x: float, y: float, w: float, h: float, ticked: bool, isEnabled: bool, shouldDrawButtonAsHighlighted: bool, shouldDrawButtonAsDown: bool) {.header: juce_gui_basics, importcpp: "#.drawTickBox(@)".}
proc changeToggleButtonWidthToFitText*(this: var LookAndFeel_V4, arg1: var ToggleButton) {.header: juce_gui_basics, importcpp: "#.changeToggleButtonWidthToFitText(@)".}
# proc createAlertWindow*(this: var LookAndFeel_V4, title: int, message: int, button1: int, button2: int, button3: int, iconType: AlertWindow::AlertIconType, numButtons: int, associatedComponent: ptr Component): ptr AlertWindow {.header: juce_gui_basics, importcpp: "#.createAlertWindow(@)".}
proc drawAlertBox*(this: var LookAndFeel_V4, arg1: var int, arg2: var AlertWindow, textArea: int, arg4: var TextLayout) {.header: juce_gui_basics, importcpp: "#.drawAlertBox(@)".}
proc getAlertWindowButtonHeight*(this: var LookAndFeel_V4): int {.header: juce_gui_basics, importcpp: "#.getAlertWindowButtonHeight()".}
proc getAlertWindowTitleFont*(this: var LookAndFeel_V4): int {.header: juce_gui_basics, importcpp: "#.getAlertWindowTitleFont()".}
proc getAlertWindowMessageFont*(this: var LookAndFeel_V4): int {.header: juce_gui_basics, importcpp: "#.getAlertWindowMessageFont()".}
proc getAlertWindowFont*(this: var LookAndFeel_V4): int {.header: juce_gui_basics, importcpp: "#.getAlertWindowFont()".}
proc drawProgressBar*(this: var LookAndFeel_V4, arg1: var int, arg2: var ProgressBar, width: int, height: int, progress: float64, textToShow: int) {.header: juce_gui_basics, importcpp: "#.drawProgressBar(@)".}
proc isProgressBarOpaque*(this: var LookAndFeel_V4, arg1: var ProgressBar): bool {.header: juce_gui_basics, importcpp: "#.isProgressBarOpaque(@)".}
proc getDefaultScrollbarWidth*(this: var LookAndFeel_V4): int {.header: juce_gui_basics, importcpp: "#.getDefaultScrollbarWidth()".}
proc drawScrollbar*(this: var LookAndFeel_V4, arg1: var int, arg2: var ScrollBar, x: int, y: int, width: int, height: int, isScrollbarVertical: bool, thumbStartPosition: int, thumbSize: int, isMouseOver: bool, isMouseDown: bool) {.header: juce_gui_basics, importcpp: "#.drawScrollbar(@)".}
proc getTickShape*(this: var LookAndFeel_V4, height: float): int {.header: juce_gui_basics, importcpp: "#.getTickShape(@)".}
proc getCrossShape*(this: var LookAndFeel_V4, height: float): int {.header: juce_gui_basics, importcpp: "#.getCrossShape(@)".}
proc fillTextEditorBackground*(this: var LookAndFeel_V4, arg1: var int, width: int, height: int, arg4: var TextEditor) {.header: juce_gui_basics, importcpp: "#.fillTextEditorBackground(@)".}
proc drawTextEditorOutline*(this: var LookAndFeel_V4, arg1: var int, width: int, height: int, arg4: var TextEditor) {.header: juce_gui_basics, importcpp: "#.drawTextEditorOutline(@)".}
proc createFileBrowserGoUpButton*(this: var LookAndFeel_V4): ptr Button {.header: juce_gui_basics, importcpp: "#.createFileBrowserGoUpButton()".}
proc layoutFileBrowserComponent*(this: var LookAndFeel_V4, arg1: var FileBrowserComponent, arg2: ptr DirectoryContentsDisplayComponent, arg3: ptr FilePreviewComponent, currentPathBox: ptr ComboBox, filenameBox: ptr TextEditor, goUpButton: ptr Button) {.header: juce_gui_basics, importcpp: "#.layoutFileBrowserComponent(@)".}
proc drawFileBrowserRow*(this: var LookAndFeel_V4, arg1: var int, width: int, height: int, file: int, filename: int, icon: ptr int, fileSizeDescription: int, fileTimeDescription: int, isDirectory: bool, isItemSelected: bool, itemIndex: int, arg12: var DirectoryContentsDisplayComponent) {.header: juce_gui_basics, importcpp: "#.drawFileBrowserRow(@)".}
proc drawPopupMenuItem*(this: var LookAndFeel_V4, arg1: var int, area: int, isSeparator: bool, isActive: bool, isHighlighted: bool, isTicked: bool, hasSubMenu: bool, text: int, shortcutKeyText: int, icon: ptr Drawable, textColour: ptr int) {.header: juce_gui_basics, importcpp: "#.drawPopupMenuItem(@)".}
proc getIdealPopupMenuItemSize*(this: var LookAndFeel_V4, text: int, isSeparator: bool, standardMenuItemHeight: int, idealWidth: var int, idealHeight: var int) {.header: juce_gui_basics, importcpp: "#.getIdealPopupMenuItemSize(@)".}
proc drawMenuBarBackground*(this: var LookAndFeel_V4, arg1: var int, width: int, height: int, isMouseOverBar: bool, arg5: var MenuBarComponent) {.header: juce_gui_basics, importcpp: "#.drawMenuBarBackground(@)".}
proc drawMenuBarItem*(this: var LookAndFeel_V4, arg1: var int, width: int, height: int, itemIndex: int, itemText: int, isMouseOverItem: bool, isMenuOpen: bool, isMouseOverBar: bool, arg9: var MenuBarComponent) {.header: juce_gui_basics, importcpp: "#.drawMenuBarItem(@)".}
proc drawComboBox*(this: var LookAndFeel_V4, arg1: var int, width: int, height: int, isButtonDown: bool, buttonX: int, buttonY: int, buttonW: int, buttonH: int, arg9: var ComboBox) {.header: juce_gui_basics, importcpp: "#.drawComboBox(@)".}
proc getComboBoxFont*(this: var LookAndFeel_V4, arg1: var ComboBox): int {.header: juce_gui_basics, importcpp: "#.getComboBoxFont(@)".}
proc positionComboBoxText*(this: var LookAndFeel_V4, arg1: var ComboBox, arg2: var Label) {.header: juce_gui_basics, importcpp: "#.positionComboBoxText(@)".}
proc getSliderThumbRadius*(this: var LookAndFeel_V4, arg1: var Slider): int {.header: juce_gui_basics, importcpp: "#.getSliderThumbRadius(@)".}
# proc drawLinearSlider*(this: var LookAndFeel_V4, arg1: var int, x: int, y: int, width: int, height: int, sliderPos: float, minSliderPos: float, maxSliderPos: float, arg9: Slider::SliderStyle, arg10: var Slider) {.header: juce_gui_basics, importcpp: "#.drawLinearSlider(@)".}
proc drawRotarySlider*(this: var LookAndFeel_V4, arg1: var int, x: int, y: int, width: int, height: int, sliderPosProportional: float, rotaryStartAngle: float, rotaryEndAngle: float, arg9: var Slider) {.header: juce_gui_basics, importcpp: "#.drawRotarySlider(@)".}
proc drawPointer*(this: var LookAndFeel_V4, arg1: var int, x: float, y: float, diameter: float, arg5: int, direction: int) {.header: juce_gui_basics, importcpp: "#.drawPointer(@)".}
proc createSliderTextBox*(this: var LookAndFeel_V4, arg1: var Slider): ptr Label {.header: juce_gui_basics, importcpp: "#.createSliderTextBox(@)".}
proc drawTooltip*(this: var LookAndFeel_V4, arg1: var int, text: int, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.drawTooltip(@)".}
proc drawConcertinaPanelHeader*(this: var LookAndFeel_V4, arg1: var int, area: int, isMouseOver: bool, isMouseDown: bool, arg5: var ConcertinaPanel, panel: var Component) {.header: juce_gui_basics, importcpp: "#.drawConcertinaPanelHeader(@)".}
proc drawLevelMeter*(this: var LookAndFeel_V4, arg1: var int, arg2: int, arg3: int, arg4: float) {.header: juce_gui_basics, importcpp: "#.drawLevelMeter(@)".}
proc paintToolbarBackground*(this: var LookAndFeel_V4, arg1: var int, width: int, height: int, arg4: var Toolbar) {.header: juce_gui_basics, importcpp: "#.paintToolbarBackground(@)".}
proc paintToolbarButtonLabel*(this: var LookAndFeel_V4, arg1: var int, x: int, y: int, width: int, height: int, text: int, arg7: var ToolbarItemComponent) {.header: juce_gui_basics, importcpp: "#.paintToolbarButtonLabel(@)".}
proc drawPropertyPanelSectionHeader*(this: var LookAndFeel_V4, arg1: var int, name: int, isOpen: bool, width: int, height: int) {.header: juce_gui_basics, importcpp: "#.drawPropertyPanelSectionHeader(@)".}
proc drawPropertyComponentBackground*(this: var LookAndFeel_V4, arg1: var int, width: int, height: int, arg4: var PropertyComponent) {.header: juce_gui_basics, importcpp: "#.drawPropertyComponentBackground(@)".}
proc drawPropertyComponentLabel*(this: var LookAndFeel_V4, arg1: var int, width: int, height: int, arg4: var PropertyComponent) {.header: juce_gui_basics, importcpp: "#.drawPropertyComponentLabel(@)".}
proc getPropertyComponentContentPosition*(this: var LookAndFeel_V4, arg1: var PropertyComponent): int {.header: juce_gui_basics, importcpp: "#.getPropertyComponentContentPosition(@)".}
proc drawCallOutBoxBackground*(this: var LookAndFeel_V4, arg1: var CallOutBox, arg2: var int, arg3: int, arg4: var int) {.header: juce_gui_basics, importcpp: "#.drawCallOutBoxBackground(@)".}
proc drawStretchableLayoutResizerBar*(this: var LookAndFeel_V4, arg1: var int, arg2: int, arg3: int, arg4: bool, arg5: bool, arg6: bool) {.header: juce_gui_basics, importcpp: "#.drawStretchableLayoutResizerBar(@)".}

type
  FlexItem* {.header: juce_gui_basics, importcpp: "juce::FlexItem".} = object
  FlexItemMargin* {.header: juce_gui_basics, importcpp: "juce::FlexItem::Margin".} = object

proc withFlex*(this: FlexItem, newFlexGrow: float): FlexItem {.header: juce_gui_basics, importcpp: "#.withFlex(@)".}
proc withFlex*(this: FlexItem, newFlexGrow: float, newFlexShrink: float): FlexItem {.header: juce_gui_basics, importcpp: "#.withFlex(@)".}
proc withFlex*(this: FlexItem, newFlexGrow: float, newFlexShrink: float, newFlexBasis: float): FlexItem {.header: juce_gui_basics, importcpp: "#.withFlex(@)".}
proc withWidth*(this: FlexItem, newWidth: float): FlexItem {.header: juce_gui_basics, importcpp: "#.withWidth(@)".}
proc withMinWidth*(this: FlexItem, newMinWidth: float): FlexItem {.header: juce_gui_basics, importcpp: "#.withMinWidth(@)".}
proc withMaxWidth*(this: FlexItem, newMaxWidth: float): FlexItem {.header: juce_gui_basics, importcpp: "#.withMaxWidth(@)".}
proc withHeight*(this: FlexItem, newHeight: float): FlexItem {.header: juce_gui_basics, importcpp: "#.withHeight(@)".}
proc withMinHeight*(this: FlexItem, newMinHeight: float): FlexItem {.header: juce_gui_basics, importcpp: "#.withMinHeight(@)".}
proc withMaxHeight*(this: FlexItem, newMaxHeight: float): FlexItem {.header: juce_gui_basics, importcpp: "#.withMaxHeight(@)".}
proc withMargin*(this: FlexItem, arg1: FlexItemMargin): FlexItem {.header: juce_gui_basics, importcpp: "#.withMargin(@)".}
proc withOrder*(this: FlexItem, newOrder: int): FlexItem {.header: juce_gui_basics, importcpp: "#.withOrder(@)".}
# proc withAlignSelf*(this: FlexItem, newAlignSelf: juce::FlexItem::AlignSelf): FlexItem {.header: juce_gui_basics, importcpp: "#.withAlignSelf(@)".}

proc performLayout*(this: var FlexBox, targetArea: int) {.header: juce_gui_basics, importcpp: "#.performLayout(@)".}
# proc performLayout*(this: var FlexBox, targetArea: int) {.header: juce_gui_basics, importcpp: "#.performLayout(@)".}

type
  GridItem* {.header: juce_gui_basics, importcpp: "juce::GridItem".} = object
  GridItemSpan* {.header: juce_gui_basics, importcpp: "juce::GridItem::Span".} = object
  GridItemProperty* {.header: juce_gui_basics, importcpp: "juce::GridItem::Property".} = object
  GridItemStartAndEndProperty* {.header: juce_gui_basics, importcpp: "juce::GridItem::StartAndEndProperty".} = object
  GridItemMargin* {.header: juce_gui_basics, importcpp: "juce::GridItem::Margin".} = object

proc setArea*(this: var GridItem, rowStart: GridItemProperty, columnStart: GridItemProperty, rowEnd: GridItemProperty, columnEnd: GridItemProperty) {.header: juce_gui_basics, importcpp: "#.setArea(@)".}
proc setArea*(this: var GridItem, rowStart: GridItemProperty, columnStart: GridItemProperty) {.header: juce_gui_basics, importcpp: "#.setArea(@)".}
proc setArea*(this: var GridItem, areaName: int) {.header: juce_gui_basics, importcpp: "#.setArea(@)".}
proc withArea*(this: GridItem, rowStart: GridItemProperty, columnStart: GridItemProperty, rowEnd: GridItemProperty, columnEnd: GridItemProperty): GridItem {.header: juce_gui_basics, importcpp: "#.withArea(@)".}
proc withArea*(this: GridItem, rowStart: GridItemProperty, columnStart: GridItemProperty): GridItem {.header: juce_gui_basics, importcpp: "#.withArea(@)".}
proc withArea*(this: GridItem, areaName: int): GridItem {.header: juce_gui_basics, importcpp: "#.withArea(@)".}
proc withRow*(this: GridItem, row: GridItemStartAndEndProperty): GridItem {.header: juce_gui_basics, importcpp: "#.withRow(@)".}
proc withColumn*(this: GridItem, column: GridItemStartAndEndProperty): GridItem {.header: juce_gui_basics, importcpp: "#.withColumn(@)".}
# proc withAlignSelf*(this: GridItem, newAlignSelf: juce::GridItem::AlignSelf): GridItem {.header: juce_gui_basics, importcpp: "#.withAlignSelf(@)".}
# proc withJustifySelf*(this: GridItem, newJustifySelf: juce::GridItem::JustifySelf): GridItem {.header: juce_gui_basics, importcpp: "#.withJustifySelf(@)".}
proc withWidth*(this: GridItem, newWidth: float): GridItem {.header: juce_gui_basics, importcpp: "#.withWidth(@)".}
proc withHeight*(this: GridItem, newHeight: float): GridItem {.header: juce_gui_basics, importcpp: "#.withHeight(@)".}
proc withSize*(this: GridItem, newWidth: float, newHeight: float): GridItem {.header: juce_gui_basics, importcpp: "#.withSize(@)".}
proc withMargin*(this: GridItem, newMargin: GridItemMargin): GridItem {.header: juce_gui_basics, importcpp: "#.withMargin(@)".}
proc withOrder*(this: GridItem, newOrder: int): GridItem {.header: juce_gui_basics, importcpp: "#.withOrder(@)".}

proc setGap*(this: var Grid, sizeInPixels: GridPx) {.header: juce_gui_basics, importcpp: "#.setGap(@)".}
proc performLayout*(this: var Grid, arg1: int) {.header: juce_gui_basics, importcpp: "#.performLayout(@)".}
proc getNumberOfColumns*(this: Grid): int {.header: juce_gui_basics, importcpp: "#.getNumberOfColumns()".}
proc getNumberOfRows*(this: Grid): int {.header: juce_gui_basics, importcpp: "#.getNumberOfRows()".}



include juce_gui_basics_lifting

