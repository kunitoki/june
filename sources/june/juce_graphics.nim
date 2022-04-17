# June - Copyright (c) 2022 Lucio Asnaghi, Gavin Ray
#
# Licensed and distributed under the
#   MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
#
# This file may not be copied, modified, or distributed except according to those terms.

const juce_graphics = "<juce_graphics/juce_graphics.h>"

type
  Image* {.header: juce_graphics, importcpp: "juce::Image".} = object
  ImageBitmapData* {.header: juce_graphics, importcpp: "juce::Image::BitmapData".} = object


type
  AffineTransform* {.header: juce_graphics, importcpp: "juce::AffineTransform".} = object


type
  Path* {.header: juce_graphics, importcpp: "juce::Path".} = object
  PathIterator* {.header: juce_graphics, importcpp: "juce::Path::Iterator".} = object


type
  Font* {.header: juce_graphics, importcpp: "juce::Font".} = object


type
  Graphics* {.header: juce_graphics, importcpp: "juce::Graphics".} = object
  GraphicsScopedSaveState* {.header: juce_graphics, importcpp: "juce::Graphics::ScopedSaveState".} = object


type
  FillType* {.header: juce_graphics, importcpp: "juce::FillType".} = object


type
  LowLevelGraphicsContext* {.header: juce_graphics, importcpp: "juce::LowLevelGraphicsContext".} = object


proc `AffineTransform=`*(this: var AffineTransform, arg1: AffineTransform): var AffineTransform {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `AffineTransform==`*(this: AffineTransform, other: AffineTransform): bool {.header: juce_graphics, importcpp: "#.operator==(@)".}
proc `AffineTransform!=`*(this: AffineTransform, other: AffineTransform): bool {.header: juce_graphics, importcpp: "#.operator!=(@)".}
proc translated*(this: AffineTransform, deltaX: float, deltaY: float): AffineTransform {.header: juce_graphics, importcpp: "#.translated(@)".}
proc withAbsoluteTranslation*(this: AffineTransform, translationX: float, translationY: float): AffineTransform {.header: juce_graphics, importcpp: "#.withAbsoluteTranslation(@)".}
proc rotated*(this: AffineTransform, angleInRadians: float): AffineTransform {.header: juce_graphics, importcpp: "#.rotated(@)".}
proc rotated*(this: AffineTransform, angleInRadians: float, pivotX: float, pivotY: float): AffineTransform {.header: juce_graphics, importcpp: "#.rotated(@)".}
proc scaled*(this: AffineTransform, factorX: float, factorY: float): AffineTransform {.header: juce_graphics, importcpp: "#.scaled(@)".}
proc scaled*(this: AffineTransform, factor: float): AffineTransform {.header: juce_graphics, importcpp: "#.scaled(@)".}
proc scaled*(this: AffineTransform, factorX: float, factorY: float, pivotX: float, pivotY: float): AffineTransform {.header: juce_graphics, importcpp: "#.scaled(@)".}
proc sheared*(this: AffineTransform, shearX: float, shearY: float): AffineTransform {.header: juce_graphics, importcpp: "#.sheared(@)".}
proc inverted*(this: AffineTransform): AffineTransform {.header: juce_graphics, importcpp: "#.inverted()".}
proc followedBy*(this: AffineTransform, other: AffineTransform): AffineTransform {.header: juce_graphics, importcpp: "#.followedBy(@)".}
proc isIdentity*(this: AffineTransform): bool {.header: juce_graphics, importcpp: "#.isIdentity()".}
proc isSingularity*(this: AffineTransform): bool {.header: juce_graphics, importcpp: "#.isSingularity()".}
proc isOnlyTranslation*(this: AffineTransform): bool {.header: juce_graphics, importcpp: "#.isOnlyTranslation()".}
proc getTranslationX*(this: AffineTransform): float {.header: juce_graphics, importcpp: "#.getTranslationX()".}
proc getTranslationY*(this: AffineTransform): float {.header: juce_graphics, importcpp: "#.getTranslationY()".}
proc getDeterminant*(this: AffineTransform): float {.header: juce_graphics, importcpp: "#.getDeterminant()".}
# proc JUCE_DEPRECATED*(this: var AffineTransform, getScaleFactor: float () noexcept): int {.header: juce_graphics, importcpp: "#.JUCE_DEPRECATED(@)".}
# proc JUCE_DEPRECATED_STATIC*(this: var AffineTransform, identity: AffineTransform): int {.header: juce_graphics, importcpp: "#.JUCE_DEPRECATED_STATIC(@)".}

type
  Justification* {.header: juce_graphics, importcpp: "juce::Justification".} = object

proc `Justification=`*(this: var Justification, arg1: Justification): var Justification {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `Justification==`*(this: Justification, other: Justification): bool {.header: juce_graphics, importcpp: "#.operator==(@)".}
proc `Justification!=`*(this: Justification, other: Justification): bool {.header: juce_graphics, importcpp: "#.operator!=(@)".}
proc getFlags*(this: Justification): int {.header: juce_graphics, importcpp: "#.getFlags()".}
proc testFlags*(this: Justification, flagsToTest: int): bool {.header: juce_graphics, importcpp: "#.testFlags(@)".}
proc getOnlyVerticalFlags*(this: Justification): int {.header: juce_graphics, importcpp: "#.getOnlyVerticalFlags()".}
proc getOnlyHorizontalFlags*(this: Justification): int {.header: juce_graphics, importcpp: "#.getOnlyHorizontalFlags()".}

proc `Path=`*(this: var Path, arg1: Path): var Path {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `Path=`*(this: var Path, arg1: lent Path): var Path {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `Path==`*(this: Path, arg1: Path): bool {.header: juce_graphics, importcpp: "#.operator==(@)".}
proc `Path!=`*(this: Path, arg1: Path): bool {.header: juce_graphics, importcpp: "#.operator!=(@)".}
proc isEmpty*(this: Path): bool {.header: juce_graphics, importcpp: "#.isEmpty()".}
# proc getBounds*(this: Path): Rectangle<float> {.header: juce_graphics, importcpp: "#.getBounds()".}
# proc getBoundsTransformed*(this: Path, transform: AffineTransform): Rectangle<float> {.header: juce_graphics, importcpp: "#.getBoundsTransformed(@)".}
# proc contains*(this: Path, x: float, y: float, tolerance: float = defaultToleranceForTesting): bool {.header: juce_graphics, importcpp: "#.contains(@)".}
# proc contains*(this: Path, point: Point<float>, tolerance: float = defaultToleranceForTesting): bool {.header: juce_graphics, importcpp: "#.contains(@)".}
# proc intersectsLine*(this: var Path, line: Line<float>, tolerance: float = defaultToleranceForTesting): bool {.header: juce_graphics, importcpp: "#.intersectsLine(@)".}
# proc getClippedLine*(this: Path, line: Line<float>, keepSectionOutsidePath: bool): Line<float> {.header: juce_graphics, importcpp: "#.getClippedLine(@)".}
# proc getLength*(this: Path, transform: AffineTransform = AffineTransform(), tolerance: float = defaultToleranceForMeasurement): float {.header: juce_graphics, importcpp: "#.getLength(@)".}
# proc getPointAlongPath*(this: Path, distanceFromStart: float, transform: AffineTransform = AffineTransform(), tolerance: float = defaultToleranceForMeasurement): Point<float> {.header: juce_graphics, importcpp: "#.getPointAlongPath(@)".}
# proc getNearestPoint*(this: Path, targetPoint: Point<float>, pointOnPath: var Point<float>, transform: AffineTransform = AffineTransform(), tolerance: float = defaultToleranceForMeasurement): float {.header: juce_graphics, importcpp: "#.getNearestPoint(@)".}
proc clear*(this: var Path) {.header: juce_graphics, importcpp: "#.clear()".}
proc startNewSubPath*(this: var Path, startX: float, startY: float) {.header: juce_graphics, importcpp: "#.startNewSubPath(@)".}
# proc startNewSubPath*(this: var Path, start: Point<float>) {.header: juce_graphics, importcpp: "#.startNewSubPath(@)".}
proc closeSubPath*(this: var Path) {.header: juce_graphics, importcpp: "#.closeSubPath()".}
proc lineTo*(this: var Path, endX: float, endY: float) {.header: juce_graphics, importcpp: "#.lineTo(@)".}
# proc lineTo*(this: var Path, `end`: Point<float>) {.header: juce_graphics, importcpp: "#.lineTo(@)".}
proc quadraticTo*(this: var Path, controlPointX: float, controlPointY: float, endPointX: float, endPointY: float) {.header: juce_graphics, importcpp: "#.quadraticTo(@)".}
# proc quadraticTo*(this: var Path, controlPoint: Point<float>, endPoint: Point<float>) {.header: juce_graphics, importcpp: "#.quadraticTo(@)".}
proc cubicTo*(this: var Path, controlPoint1X: float, controlPoint1Y: float, controlPoint2X: float, controlPoint2Y: float, endPointX: float, endPointY: float) {.header: juce_graphics, importcpp: "#.cubicTo(@)".}
# proc cubicTo*(this: var Path, controlPoint1: Point<float>, controlPoint2: Point<float>, endPoint: Point<float>) {.header: juce_graphics, importcpp: "#.cubicTo(@)".}
# proc getCurrentPosition*(this: Path): Point<float> {.header: juce_graphics, importcpp: "#.getCurrentPosition()".}
proc addRectangle*(this: var Path, x: float, y: float, width: float, height: float) {.header: juce_graphics, importcpp: "#.addRectangle(@)".}
proc addRoundedRectangle*(this: var Path, x: float, y: float, width: float, height: float, cornerSize: float) {.header: juce_graphics, importcpp: "#.addRoundedRectangle(@)".}
proc addRoundedRectangle*(this: var Path, x: float, y: float, width: float, height: float, cornerSizeX: float, cornerSizeY: float) {.header: juce_graphics, importcpp: "#.addRoundedRectangle(@)".}
proc addRoundedRectangle*(this: var Path, x: float, y: float, width: float, height: float, cornerSizeX: float, cornerSizeY: float, curveTopLeft: bool, curveTopRight: bool, curveBottomLeft: bool, curveBottomRight: bool) {.header: juce_graphics, importcpp: "#.addRoundedRectangle(@)".}
proc addTriangle*(this: var Path, x1: float, y1: float, x2: float, y2: float, x3: float, y3: float) {.header: juce_graphics, importcpp: "#.addTriangle(@)".}
# proc addTriangle*(this: var Path, point1: Point<float>, point2: Point<float>, point3: Point<float>) {.header: juce_graphics, importcpp: "#.addTriangle(@)".}
proc addQuadrilateral*(this: var Path, x1: float, y1: float, x2: float, y2: float, x3: float, y3: float, x4: float, y4: float) {.header: juce_graphics, importcpp: "#.addQuadrilateral(@)".}
proc addEllipse*(this: var Path, x: float, y: float, width: float, height: float) {.header: juce_graphics, importcpp: "#.addEllipse(@)".}
# proc addEllipse*(this: var Path, area: Rectangle<float>) {.header: juce_graphics, importcpp: "#.addEllipse(@)".}
proc addArc*(this: var Path, x: float, y: float, width: float, height: float, fromRadians: float, toRadians: float, startAsNewSubPath: bool = false) {.header: juce_graphics, importcpp: "#.addArc(@)".}
proc addCentredArc*(this: var Path, centreX: float, centreY: float, radiusX: float, radiusY: float, rotationOfEllipse: float, fromRadians: float, toRadians: float, startAsNewSubPath: bool = false) {.header: juce_graphics, importcpp: "#.addCentredArc(@)".}
proc addPieSegment*(this: var Path, x: float, y: float, width: float, height: float, fromRadians: float, toRadians: float, innerCircleProportionalSize: float) {.header: juce_graphics, importcpp: "#.addPieSegment(@)".}
# proc addPieSegment*(this: var Path, segmentBounds: Rectangle<float>, fromRadians: float, toRadians: float, innerCircleProportionalSize: float) {.header: juce_graphics, importcpp: "#.addPieSegment(@)".}
# proc addLineSegment*(this: var Path, line: Line<float>, lineThickness: float) {.header: juce_graphics, importcpp: "#.addLineSegment(@)".}
# proc addArrow*(this: var Path, line: Line<float>, lineThickness: float, arrowheadWidth: float, arrowheadLength: float) {.header: juce_graphics, importcpp: "#.addArrow(@)".}
# proc addPolygon*(this: var Path, centre: Point<float>, numberOfSides: int, radius: float, startAngle: float = 0.0f) {.header: juce_graphics, importcpp: "#.addPolygon(@)".}
# proc addStar*(this: var Path, centre: Point<float>, numberOfPoints: int, innerRadius: float, outerRadius: float, startAngle: float = 0.0f) {.header: juce_graphics, importcpp: "#.addStar(@)".}
# proc addBubble*(this: var Path, bodyArea: Rectangle<float>, maximumArea: Rectangle<float>, arrowTipPosition: Point<float>, cornerSize: float, arrowBaseWidth: float) {.header: juce_graphics, importcpp: "#.addBubble(@)".}
proc addPath*(this: var Path, pathToAppend: Path) {.header: juce_graphics, importcpp: "#.addPath(@)".}
proc addPath*(this: var Path, pathToAppend: Path, transformToApply: AffineTransform) {.header: juce_graphics, importcpp: "#.addPath(@)".}
proc swapWithPath*(this: var Path, arg1: var Path) {.header: juce_graphics, importcpp: "#.swapWithPath(@)".}
proc preallocateSpace*(this: var Path, numExtraCoordsToMakeSpaceFor: int) {.header: juce_graphics, importcpp: "#.preallocateSpace(@)".}
proc applyTransform*(this: var Path, transform: AffineTransform) {.header: juce_graphics, importcpp: "#.applyTransform(@)".}
proc scaleToFit*(this: var Path, x: float, y: float, width: float, height: float, preserveProportions: bool) {.header: juce_graphics, importcpp: "#.scaleToFit(@)".}
# proc getTransformToScaleToFit*(this: Path, x: float, y: float, width: float, height: float, preserveProportions: bool, justificationType: Justification = Justification::centred): AffineTransform {.header: juce_graphics, importcpp: "#.getTransformToScaleToFit(@)".}
# proc getTransformToScaleToFit*(this: Path, area: Rectangle<float>, preserveProportions: bool, justificationType: Justification = Justification::centred): AffineTransform {.header: juce_graphics, importcpp: "#.getTransformToScaleToFit(@)".}
proc createPathWithRoundedCorners*(this: Path, cornerRadius: float): Path {.header: juce_graphics, importcpp: "#.createPathWithRoundedCorners(@)".}
proc setUsingNonZeroWinding*(this: var Path, isNonZeroWinding: bool) {.header: juce_graphics, importcpp: "#.setUsingNonZeroWinding(@)".}
proc isUsingNonZeroWinding*(this: Path): bool {.header: juce_graphics, importcpp: "#.isUsingNonZeroWinding()".}
proc loadPathFromStream*(this: var Path, source: var int) {.header: juce_graphics, importcpp: "#.loadPathFromStream(@)".}
proc loadPathFromData*(this: var Path, data: constPointer, numberOfBytes: int) {.header: juce_graphics, importcpp: "#.loadPathFromData(@)".}
proc writePathToStream*(this: Path, destination: var int) {.header: juce_graphics, importcpp: "#.writePathToStream(@)".}
proc toString*(this: Path): int {.header: juce_graphics, importcpp: "#.toString()".}
proc restoreFromString*(this: var Path, stringVersion: int) {.header: juce_graphics, importcpp: "#.restoreFromString(@)".}

type
  PixelRGB* {.header: juce_graphics, importcpp: "juce::PixelRGB".} = object


type
  PixelAlpha* {.header: juce_graphics, importcpp: "juce::PixelAlpha".} = object


type
  PixelARGB* {.header: juce_graphics, importcpp: "juce::PixelARGB".} = object
  PixelARGBComponents* {.header: juce_graphics, importcpp: "juce::PixelARGB::Components".} = object

proc setAlpha*(this: var PixelARGB, newAlpha: int): int {.header: juce_graphics, importcpp: "#.setAlpha(@)".}
proc multiplyAlpha*(this: var PixelARGB, multiplier: int): int {.header: juce_graphics, importcpp: "#.multiplyAlpha(@)".}
proc multiplyAlpha*(this: var PixelARGB, multiplier: float): int {.header: juce_graphics, importcpp: "#.multiplyAlpha(@)".}
proc getUnpremultiplied*(this: PixelARGB): PixelARGB {.header: juce_graphics, importcpp: "#.getUnpremultiplied()".}
proc premultiply*(this: var PixelARGB): int {.header: juce_graphics, importcpp: "#.premultiply()".}
proc unpremultiply*(this: var PixelARGB): int {.header: juce_graphics, importcpp: "#.unpremultiply()".}
proc desaturate*(this: var PixelARGB): int {.header: juce_graphics, importcpp: "#.desaturate()".}



type
  Colour* {.header: juce_graphics, importcpp: "juce::Colour".} = object

proc makeColour*(r: uint8, g: uint8, b: uint8, a: uint8): Colour {.header: juce_graphics, importcpp: "juce::Colour(@)", constructor.}
proc `Colour=`*(this: var Colour, arg1: Colour): var Colour {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `Colour==`*(this: Colour, other: Colour): bool {.header: juce_graphics, importcpp: "#.operator==(@)".}
proc `Colour!=`*(this: Colour, other: Colour): bool {.header: juce_graphics, importcpp: "#.operator!=(@)".}
proc getRed*(this: Colour): int {.header: juce_graphics, importcpp: "#.getRed()".}
proc getGreen*(this: Colour): int {.header: juce_graphics, importcpp: "#.getGreen()".}
proc getBlue*(this: Colour): int {.header: juce_graphics, importcpp: "#.getBlue()".}
proc getFloatRed*(this: Colour): float {.header: juce_graphics, importcpp: "#.getFloatRed()".}
proc getFloatGreen*(this: Colour): float {.header: juce_graphics, importcpp: "#.getFloatGreen()".}
proc getFloatBlue*(this: Colour): float {.header: juce_graphics, importcpp: "#.getFloatBlue()".}
proc getPixelARGB*(this: Colour): PixelARGB {.header: juce_graphics, importcpp: "#.getPixelARGB()".}
proc getARGB*(this: Colour): int {.header: juce_graphics, importcpp: "#.getARGB()".}
proc getAlpha*(this: Colour): int {.header: juce_graphics, importcpp: "#.getAlpha()".}
proc getFloatAlpha*(this: Colour): float {.header: juce_graphics, importcpp: "#.getFloatAlpha()".}
proc isOpaque*(this: Colour): bool {.header: juce_graphics, importcpp: "#.isOpaque()".}
proc isTransparent*(this: Colour): bool {.header: juce_graphics, importcpp: "#.isTransparent()".}
proc withAlpha*(this: Colour, newAlpha: int): Colour {.header: juce_graphics, importcpp: "#.withAlpha(@)".}
proc withAlpha*(this: Colour, newAlpha: float): Colour {.header: juce_graphics, importcpp: "#.withAlpha(@)".}
proc withMultipliedAlpha*(this: Colour, alphaMultiplier: float): Colour {.header: juce_graphics, importcpp: "#.withMultipliedAlpha(@)".}
proc overlaidWith*(this: Colour, foregroundColour: Colour): Colour {.header: juce_graphics, importcpp: "#.overlaidWith(@)".}
proc interpolatedWith*(this: Colour, other: Colour, proportionOfOther: float): Colour {.header: juce_graphics, importcpp: "#.interpolatedWith(@)".}
proc getHue*(this: Colour): float {.header: juce_graphics, importcpp: "#.getHue()".}
proc getSaturation*(this: Colour): float {.header: juce_graphics, importcpp: "#.getSaturation()".}
proc getSaturationHSL*(this: Colour): float {.header: juce_graphics, importcpp: "#.getSaturationHSL()".}
proc getBrightness*(this: Colour): float {.header: juce_graphics, importcpp: "#.getBrightness()".}
proc getLightness*(this: Colour): float {.header: juce_graphics, importcpp: "#.getLightness()".}
proc getPerceivedBrightness*(this: Colour): float {.header: juce_graphics, importcpp: "#.getPerceivedBrightness()".}
proc getHSB*(this: Colour, hue: var float, saturation: var float, brightness: var float) {.header: juce_graphics, importcpp: "#.getHSB(@)".}
proc getHSL*(this: Colour, hue: var float, saturation: var float, lightness: var float) {.header: juce_graphics, importcpp: "#.getHSL(@)".}
proc withHue*(this: Colour, newHue: float): Colour {.header: juce_graphics, importcpp: "#.withHue(@)".}
proc withSaturation*(this: Colour, newSaturation: float): Colour {.header: juce_graphics, importcpp: "#.withSaturation(@)".}
proc withSaturationHSL*(this: Colour, newSaturation: float): Colour {.header: juce_graphics, importcpp: "#.withSaturationHSL(@)".}
proc withBrightness*(this: Colour, newBrightness: float): Colour {.header: juce_graphics, importcpp: "#.withBrightness(@)".}
proc withLightness*(this: Colour, newLightness: float): Colour {.header: juce_graphics, importcpp: "#.withLightness(@)".}
proc withRotatedHue*(this: Colour, amountToRotate: float): Colour {.header: juce_graphics, importcpp: "#.withRotatedHue(@)".}
proc withMultipliedSaturation*(this: Colour, multiplier: float): Colour {.header: juce_graphics, importcpp: "#.withMultipliedSaturation(@)".}
proc withMultipliedSaturationHSL*(this: Colour, multiplier: float): Colour {.header: juce_graphics, importcpp: "#.withMultipliedSaturationHSL(@)".}
proc withMultipliedBrightness*(this: Colour, amount: float): Colour {.header: juce_graphics, importcpp: "#.withMultipliedBrightness(@)".}
proc withMultipliedLightness*(this: Colour, amount: float): Colour {.header: juce_graphics, importcpp: "#.withMultipliedLightness(@)".}
proc brighter*(this: Colour, amountBrighter: float = 0.4f): Colour {.header: juce_graphics, importcpp: "#.brighter(@)".}
proc darker*(this: Colour, amountDarker: float = 0.4f): Colour {.header: juce_graphics, importcpp: "#.darker(@)".}
proc contrasting*(this: Colour, amount: float = 1.0f): Colour {.header: juce_graphics, importcpp: "#.contrasting(@)".}
proc contrasting*(this: Colour, targetColour: Colour, minLuminosityDiff: float): Colour {.header: juce_graphics, importcpp: "#.contrasting(@)".}
proc toString*(this: Colour): int {.header: juce_graphics, importcpp: "#.toString()".}
proc toDisplayString*(this: Colour, includeAlphaValue: bool): int {.header: juce_graphics, importcpp: "#.toDisplayString(@)".}

type
  ColourGradient* {.header: juce_graphics, importcpp: "juce::ColourGradient".} = object
  ColourGradientColourPoint* {.header: juce_graphics, importcpp: "juce::ColourGradient::ColourPoint".} = object

proc `ColourGradient=`*(this: var ColourGradient, arg1: ColourGradient): var ColourGradient {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `ColourGradient=`*(this: var ColourGradient, arg1: lent ColourGradient): var ColourGradient {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc clearColours*(this: var ColourGradient) {.header: juce_graphics, importcpp: "#.clearColours()".}
proc addColour*(this: var ColourGradient, proportionAlongGradient: float64, colour: Colour): int {.header: juce_graphics, importcpp: "#.addColour(@)".}
proc removeColour*(this: var ColourGradient, index: int) {.header: juce_graphics, importcpp: "#.removeColour(@)".}
proc multiplyOpacity*(this: var ColourGradient, multiplier: float) {.header: juce_graphics, importcpp: "#.multiplyOpacity(@)".}
proc getNumColours*(this: ColourGradient): int {.header: juce_graphics, importcpp: "#.getNumColours()".}
proc getColourPosition*(this: ColourGradient, index: int): float64 {.header: juce_graphics, importcpp: "#.getColourPosition(@)".}
proc getColour*(this: ColourGradient, index: int): Colour {.header: juce_graphics, importcpp: "#.getColour(@)".}
proc setColour*(this: var ColourGradient, index: int, newColour: Colour) {.header: juce_graphics, importcpp: "#.setColour(@)".}
proc getColourAtPosition*(this: ColourGradient, position: float64): Colour {.header: juce_graphics, importcpp: "#.getColourAtPosition(@)".}
proc createLookupTable*(this: ColourGradient, transform: AffineTransform, resultLookupTable: var int): int {.header: juce_graphics, importcpp: "#.createLookupTable(@)".}
proc createLookupTable*(this: ColourGradient, resultLookupTable: ptr PixelARGB, numEntries: int) {.header: juce_graphics, importcpp: "#.createLookupTable(@)".}
proc isOpaque*(this: ColourGradient): bool {.header: juce_graphics, importcpp: "#.isOpaque()".}
proc isInvisible*(this: ColourGradient): bool {.header: juce_graphics, importcpp: "#.isInvisible()".}
proc `ColourGradient==`*(this: ColourGradient, arg1: ColourGradient): bool {.header: juce_graphics, importcpp: "#.operator==(@)".}
proc `ColourGradient!=`*(this: ColourGradient, arg1: ColourGradient): bool {.header: juce_graphics, importcpp: "#.operator!=(@)".}

type
  EdgeTable* {.header: juce_graphics, importcpp: "juce::EdgeTable".} = object

proc `EdgeTable=`*(this: var EdgeTable, arg1: EdgeTable): var EdgeTable {.header: juce_graphics, importcpp: "#.operator=(@)".}
# proc clipToRectangle*(this: var EdgeTable, r: Rectangle<int>) {.header: juce_graphics, importcpp: "#.clipToRectangle(@)".}
# proc excludeRectangle*(this: var EdgeTable, r: Rectangle<int>) {.header: juce_graphics, importcpp: "#.excludeRectangle(@)".}
proc clipToEdgeTable*(this: var EdgeTable, arg1: EdgeTable) {.header: juce_graphics, importcpp: "#.clipToEdgeTable(@)".}
proc clipLineToMask*(this: var EdgeTable, x: int, y: int, mask: ptr int, maskStride: int, numPixels: int) {.header: juce_graphics, importcpp: "#.clipLineToMask(@)".}
proc isEmpty*(this: var EdgeTable): bool {.header: juce_graphics, importcpp: "#.isEmpty()".}
# proc getMaximumBounds*(this: EdgeTable): Rectangle<int> {.header: juce_graphics, importcpp: "#.getMaximumBounds()".}
proc translate*(this: var EdgeTable, dx: float, dy: int) {.header: juce_graphics, importcpp: "#.translate(@)".}
proc multiplyLevels*(this: var EdgeTable, factor: float) {.header: juce_graphics, importcpp: "#.multiplyLevels(@)".}
proc optimiseTable*(this: var EdgeTable) {.header: juce_graphics, importcpp: "#.optimiseTable()".}

type
  PathFlatteningIterator* {.header: juce_graphics, importcpp: "juce::PathFlatteningIterator".} = object

proc next*(this: var PathFlatteningIterator): bool {.header: juce_graphics, importcpp: "#.next()".}
proc isLastInSubpath*(this: PathFlatteningIterator): bool {.header: juce_graphics, importcpp: "#.isLastInSubpath()".}

type
  PathStrokeType* {.header: juce_graphics, importcpp: "juce::PathStrokeType".} = object

proc `PathStrokeType=`*(this: var PathStrokeType, arg1: PathStrokeType): var PathStrokeType {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc createStrokedPath*(this: PathStrokeType, destPath: var Path, sourcePath: Path, transform: AffineTransform = AffineTransform(), extraAccuracy: float = 1.0f) {.header: juce_graphics, importcpp: "#.createStrokedPath(@)".}
proc createDashedStroke*(this: PathStrokeType, destPath: var Path, sourcePath: Path, dashLengths: ptr float, numDashLengths: int, transform: AffineTransform = AffineTransform(), extraAccuracy: float = 1.0f) {.header: juce_graphics, importcpp: "#.createDashedStroke(@)".}
proc createStrokeWithArrowheads*(this: PathStrokeType, destPath: var Path, sourcePath: Path, arrowheadStartWidth: float, arrowheadStartLength: float, arrowheadEndWidth: float, arrowheadEndLength: float, transform: AffineTransform = AffineTransform(), extraAccuracy: float = 1.0f) {.header: juce_graphics, importcpp: "#.createStrokeWithArrowheads(@)".}
proc getStrokeThickness*(this: PathStrokeType): float {.header: juce_graphics, importcpp: "#.getStrokeThickness()".}
proc setStrokeThickness*(this: var PathStrokeType, newThickness: float) {.header: juce_graphics, importcpp: "#.setStrokeThickness(@)".}
# proc getJointStyle*(this: PathStrokeType): juce::PathStrokeType::JointStyle {.header: juce_graphics, importcpp: "#.getJointStyle()".}
# proc setJointStyle*(this: var PathStrokeType, newStyle: juce::PathStrokeType::JointStyle) {.header: juce_graphics, importcpp: "#.setJointStyle(@)".}
# proc getEndStyle*(this: PathStrokeType): juce::PathStrokeType::EndCapStyle {.header: juce_graphics, importcpp: "#.getEndStyle()".}
# proc setEndStyle*(this: var PathStrokeType, newStyle: juce::PathStrokeType::EndCapStyle) {.header: juce_graphics, importcpp: "#.setEndStyle(@)".}
proc `PathStrokeType==`*(this: PathStrokeType, arg1: PathStrokeType): bool {.header: juce_graphics, importcpp: "#.operator==(@)".}
proc `PathStrokeType!=`*(this: PathStrokeType, arg1: PathStrokeType): bool {.header: juce_graphics, importcpp: "#.operator!=(@)".}

type
  RectanglePlacement* {.header: juce_graphics, importcpp: "juce::RectanglePlacement".} = object

proc `RectanglePlacement=`*(this: var RectanglePlacement, arg1: RectanglePlacement): var RectanglePlacement {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `RectanglePlacement==`*(this: RectanglePlacement, arg1: RectanglePlacement): bool {.header: juce_graphics, importcpp: "#.operator==(@)".}
proc `RectanglePlacement!=`*(this: RectanglePlacement, arg1: RectanglePlacement): bool {.header: juce_graphics, importcpp: "#.operator!=(@)".}
proc getFlags*(this: RectanglePlacement): int {.header: juce_graphics, importcpp: "#.getFlags()".}
proc testFlags*(this: RectanglePlacement, flagsToTest: int): bool {.header: juce_graphics, importcpp: "#.testFlags(@)".}
proc applyTo*(this: RectanglePlacement, sourceX: var float64, sourceY: var float64, sourceW: var float64, sourceH: var float64, destinationX: float64, destinationY: float64, destinationW: float64, destinationH: float64) {.header: juce_graphics, importcpp: "#.applyTo(@)".}
# proc getTransformToFit*(this: RectanglePlacement, source: Rectangle<float>, destination: Rectangle<float>): AffineTransform {.header: juce_graphics, importcpp: "#.getTransformToFit(@)".}

type
  ImageCache* {.header: juce_graphics, importcpp: "juce::ImageCache".} = object


type
  ImageConvolutionKernel* {.header: juce_graphics, importcpp: "juce::ImageConvolutionKernel".} = object

proc clear*(this: var ImageConvolutionKernel) {.header: juce_graphics, importcpp: "#.clear()".}
proc getKernelValue*(this: ImageConvolutionKernel, x: int, y: int): float {.header: juce_graphics, importcpp: "#.getKernelValue(@)".}
proc setKernelValue*(this: var ImageConvolutionKernel, x: int, y: int, value: float) {.header: juce_graphics, importcpp: "#.setKernelValue(@)".}
proc setOverallSum*(this: var ImageConvolutionKernel, desiredTotalSum: float) {.header: juce_graphics, importcpp: "#.setOverallSum(@)".}
proc rescaleAllValues*(this: var ImageConvolutionKernel, multiplier: float) {.header: juce_graphics, importcpp: "#.rescaleAllValues(@)".}
proc createGaussianBlur*(this: var ImageConvolutionKernel, blurRadius: float) {.header: juce_graphics, importcpp: "#.createGaussianBlur(@)".}
proc getKernelSize*(this: ImageConvolutionKernel): int {.header: juce_graphics, importcpp: "#.getKernelSize()".}
# proc applyToImage*(this: ImageConvolutionKernel, destImage: var Image, sourceImage: Image, destinationArea: Rectangle<int>) {.header: juce_graphics, importcpp: "#.applyToImage(@)".}

type
  ImageFileFormat* {.header: juce_graphics, importcpp: "juce::ImageFileFormat".} = object

proc getFormatName*(this: var ImageFileFormat): int {.header: juce_graphics, importcpp: "#.getFormatName()".}
proc canUnderstand*(this: var ImageFileFormat, input: var int): bool {.header: juce_graphics, importcpp: "#.canUnderstand(@)".}
proc usesFileExtension*(this: var ImageFileFormat, possibleFile: int): bool {.header: juce_graphics, importcpp: "#.usesFileExtension(@)".}
proc decodeImage*(this: var ImageFileFormat, input: var int): Image {.header: juce_graphics, importcpp: "#.decodeImage(@)".}
proc writeImageToStream*(this: var ImageFileFormat, sourceImage: Image, destStream: var int): bool {.header: juce_graphics, importcpp: "#.writeImageToStream(@)".}

type
  PNGImageFormat* {.header: juce_graphics, importcpp: "juce::PNGImageFormat".} = object

proc getFormatName*(this: var PNGImageFormat): int {.header: juce_graphics, importcpp: "#.getFormatName()".}
proc usesFileExtension*(this: var PNGImageFormat, arg1: int): bool {.header: juce_graphics, importcpp: "#.usesFileExtension(@)".}
proc canUnderstand*(this: var PNGImageFormat, arg1: var int): bool {.header: juce_graphics, importcpp: "#.canUnderstand(@)".}
proc decodeImage*(this: var PNGImageFormat, arg1: var int): Image {.header: juce_graphics, importcpp: "#.decodeImage(@)".}
proc writeImageToStream*(this: var PNGImageFormat, arg1: Image, arg2: var int): bool {.header: juce_graphics, importcpp: "#.writeImageToStream(@)".}

type
  JPEGImageFormat* {.header: juce_graphics, importcpp: "juce::JPEGImageFormat".} = object

proc setQuality*(this: var JPEGImageFormat, newQuality: float) {.header: juce_graphics, importcpp: "#.setQuality(@)".}
proc getFormatName*(this: var JPEGImageFormat): int {.header: juce_graphics, importcpp: "#.getFormatName()".}
proc usesFileExtension*(this: var JPEGImageFormat, arg1: int): bool {.header: juce_graphics, importcpp: "#.usesFileExtension(@)".}
proc canUnderstand*(this: var JPEGImageFormat, arg1: var int): bool {.header: juce_graphics, importcpp: "#.canUnderstand(@)".}
proc decodeImage*(this: var JPEGImageFormat, arg1: var int): Image {.header: juce_graphics, importcpp: "#.decodeImage(@)".}
proc writeImageToStream*(this: var JPEGImageFormat, arg1: Image, arg2: var int): bool {.header: juce_graphics, importcpp: "#.writeImageToStream(@)".}

type
  GIFImageFormat* {.header: juce_graphics, importcpp: "juce::GIFImageFormat".} = object

proc getFormatName*(this: var GIFImageFormat): int {.header: juce_graphics, importcpp: "#.getFormatName()".}
proc usesFileExtension*(this: var GIFImageFormat, arg1: int): bool {.header: juce_graphics, importcpp: "#.usesFileExtension(@)".}
proc canUnderstand*(this: var GIFImageFormat, arg1: var int): bool {.header: juce_graphics, importcpp: "#.canUnderstand(@)".}
proc decodeImage*(this: var GIFImageFormat, arg1: var int): Image {.header: juce_graphics, importcpp: "#.decodeImage(@)".}
proc writeImageToStream*(this: var GIFImageFormat, arg1: Image, arg2: var int): bool {.header: juce_graphics, importcpp: "#.writeImageToStream(@)".}

type
  Typeface* {.header: juce_graphics, importcpp: "juce::Typeface".} = object

proc getName*(this: Typeface): int {.header: juce_graphics, importcpp: "#.getName()".}
proc getStyle*(this: Typeface): int {.header: juce_graphics, importcpp: "#.getStyle()".}
proc isSuitableForFont*(this: Typeface, arg1: Font): bool {.header: juce_graphics, importcpp: "#.isSuitableForFont(@)".}
proc getAscent*(this: Typeface): float {.header: juce_graphics, importcpp: "#.getAscent()".}
proc getDescent*(this: Typeface): float {.header: juce_graphics, importcpp: "#.getDescent()".}
proc getHeightToPointsFactor*(this: Typeface): float {.header: juce_graphics, importcpp: "#.getHeightToPointsFactor()".}
proc getStringWidth*(this: var Typeface, text: int): float {.header: juce_graphics, importcpp: "#.getStringWidth(@)".}
proc getGlyphPositions*(this: var Typeface, text: int, glyphs: var int, xOffsets: var int) {.header: juce_graphics, importcpp: "#.getGlyphPositions(@)".}
proc getOutlineForGlyph*(this: var Typeface, glyphNumber: int, path: var Path): bool {.header: juce_graphics, importcpp: "#.getOutlineForGlyph(@)".}
proc getEdgeTableForGlyph*(this: var Typeface, glyphNumber: int, transform: AffineTransform, fontHeight: float): ptr EdgeTable {.header: juce_graphics, importcpp: "#.getEdgeTableForGlyph(@)".}
proc isHinted*(this: Typeface): bool {.header: juce_graphics, importcpp: "#.isHinted()".}
proc applyVerticalHintingTransform*(this: var Typeface, fontHeight: float, path: var Path) {.header: juce_graphics, importcpp: "#.applyVerticalHintingTransform(@)".}

proc `Font=`*(this: var Font, other: lent Font): var Font {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `Font=`*(this: var Font, other: Font): var Font {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `Font==`*(this: Font, other: Font): bool {.header: juce_graphics, importcpp: "#.operator==(@)".}
proc `Font!=`*(this: Font, other: Font): bool {.header: juce_graphics, importcpp: "#.operator!=(@)".}
proc setTypefaceName*(this: var Font, faceName: int) {.header: juce_graphics, importcpp: "#.setTypefaceName(@)".}
proc getTypefaceName*(this: Font): int {.header: juce_graphics, importcpp: "#.getTypefaceName()".}
proc getTypefaceStyle*(this: Font): int {.header: juce_graphics, importcpp: "#.getTypefaceStyle()".}
proc setTypefaceStyle*(this: var Font, newStyle: int) {.header: juce_graphics, importcpp: "#.setTypefaceStyle(@)".}
proc withTypefaceStyle*(this: Font, newStyle: int): Font {.header: juce_graphics, importcpp: "#.withTypefaceStyle(@)".}
proc getAvailableStyles*(this: Font): int {.header: juce_graphics, importcpp: "#.getAvailableStyles()".}
proc withHeight*(this: Font, height: float): Font {.header: juce_graphics, importcpp: "#.withHeight(@)".}
proc withPointHeight*(this: Font, heightInPoints: float): Font {.header: juce_graphics, importcpp: "#.withPointHeight(@)".}
proc setHeight*(this: var Font, newHeight: float) {.header: juce_graphics, importcpp: "#.setHeight(@)".}
proc setHeightWithoutChangingWidth*(this: var Font, newHeight: float) {.header: juce_graphics, importcpp: "#.setHeightWithoutChangingWidth(@)".}
proc getHeight*(this: Font): float {.header: juce_graphics, importcpp: "#.getHeight()".}
proc getHeightInPoints*(this: Font): float {.header: juce_graphics, importcpp: "#.getHeightInPoints()".}
proc getAscent*(this: Font): float {.header: juce_graphics, importcpp: "#.getAscent()".}
proc getAscentInPoints*(this: Font): float {.header: juce_graphics, importcpp: "#.getAscentInPoints()".}
proc getDescent*(this: Font): float {.header: juce_graphics, importcpp: "#.getDescent()".}
proc getDescentInPoints*(this: Font): float {.header: juce_graphics, importcpp: "#.getDescentInPoints()".}
proc getStyleFlags*(this: Font): int {.header: juce_graphics, importcpp: "#.getStyleFlags()".}
proc withStyle*(this: Font, styleFlags: int): Font {.header: juce_graphics, importcpp: "#.withStyle(@)".}
proc setStyleFlags*(this: var Font, newFlags: int) {.header: juce_graphics, importcpp: "#.setStyleFlags(@)".}
proc setBold*(this: var Font, shouldBeBold: bool) {.header: juce_graphics, importcpp: "#.setBold(@)".}
proc boldened*(this: Font): Font {.header: juce_graphics, importcpp: "#.boldened()".}
proc isBold*(this: Font): bool {.header: juce_graphics, importcpp: "#.isBold()".}
proc setItalic*(this: var Font, shouldBeItalic: bool) {.header: juce_graphics, importcpp: "#.setItalic(@)".}
proc italicised*(this: Font): Font {.header: juce_graphics, importcpp: "#.italicised()".}
proc isItalic*(this: Font): bool {.header: juce_graphics, importcpp: "#.isItalic()".}
proc setUnderline*(this: var Font, shouldBeUnderlined: bool) {.header: juce_graphics, importcpp: "#.setUnderline(@)".}
proc isUnderlined*(this: Font): bool {.header: juce_graphics, importcpp: "#.isUnderlined()".}
proc getHorizontalScale*(this: Font): float {.header: juce_graphics, importcpp: "#.getHorizontalScale()".}
proc withHorizontalScale*(this: Font, scaleFactor: float): Font {.header: juce_graphics, importcpp: "#.withHorizontalScale(@)".}
proc setHorizontalScale*(this: var Font, scaleFactor: float) {.header: juce_graphics, importcpp: "#.setHorizontalScale(@)".}
proc getExtraKerningFactor*(this: Font): float {.header: juce_graphics, importcpp: "#.getExtraKerningFactor()".}
proc withExtraKerningFactor*(this: Font, extraKerning: float): Font {.header: juce_graphics, importcpp: "#.withExtraKerningFactor(@)".}
proc setExtraKerningFactor*(this: var Font, extraKerning: float) {.header: juce_graphics, importcpp: "#.setExtraKerningFactor(@)".}
proc setSizeAndStyle*(this: var Font, newHeight: float, newStyleFlags: int, newHorizontalScale: float, newKerningAmount: float) {.header: juce_graphics, importcpp: "#.setSizeAndStyle(@)".}
proc setSizeAndStyle*(this: var Font, newHeight: float, newStyle: int, newHorizontalScale: float, newKerningAmount: float) {.header: juce_graphics, importcpp: "#.setSizeAndStyle(@)".}
proc getStringWidth*(this: Font, text: int): int {.header: juce_graphics, importcpp: "#.getStringWidth(@)".}
proc getStringWidthFloat*(this: Font, text: int): float {.header: juce_graphics, importcpp: "#.getStringWidthFloat(@)".}
proc getGlyphPositions*(this: Font, text: int, glyphs: var int, xOffsets: var int) {.header: juce_graphics, importcpp: "#.getGlyphPositions(@)".}
proc getTypeface*(this: Font): ptr Typeface {.header: juce_graphics, importcpp: "#.getTypeface()".}
proc toString*(this: Font): int {.header: juce_graphics, importcpp: "#.toString()".}

type
  AttributedString* {.header: juce_graphics, importcpp: "juce::AttributedString".} = object
  AttributedStringAttribute* {.header: juce_graphics, importcpp: "juce::AttributedString::Attribute".} = object

proc `AttributedString=`*(this: var AttributedString, arg1: AttributedString): var AttributedString {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `AttributedString=`*(this: var AttributedString, arg1: lent AttributedString): var AttributedString {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc getText*(this: AttributedString): int {.header: juce_graphics, importcpp: "#.getText()".}
proc setText*(this: var AttributedString, newText: int) {.header: juce_graphics, importcpp: "#.setText(@)".}
proc append*(this: var AttributedString, textToAppend: int) {.header: juce_graphics, importcpp: "#.append(@)".}
proc append*(this: var AttributedString, textToAppend: int, font: Font) {.header: juce_graphics, importcpp: "#.append(@)".}
proc append*(this: var AttributedString, textToAppend: int, colour: Colour) {.header: juce_graphics, importcpp: "#.append(@)".}
proc append*(this: var AttributedString, textToAppend: int, font: Font, colour: Colour) {.header: juce_graphics, importcpp: "#.append(@)".}
proc append*(this: var AttributedString, other: AttributedString) {.header: juce_graphics, importcpp: "#.append(@)".}
proc clear*(this: var AttributedString) {.header: juce_graphics, importcpp: "#.clear()".}
# proc draw*(this: AttributedString, g: var Graphics, area: Rectangle<float>) {.header: juce_graphics, importcpp: "#.draw(@)".}
proc getJustification*(this: AttributedString): Justification {.header: juce_graphics, importcpp: "#.getJustification()".}
proc setJustification*(this: var AttributedString, newJustification: Justification) {.header: juce_graphics, importcpp: "#.setJustification(@)".}
# proc getWordWrap*(this: AttributedString): juce::AttributedString::WordWrap {.header: juce_graphics, importcpp: "#.getWordWrap()".}
# proc setWordWrap*(this: var AttributedString, newWordWrap: juce::AttributedString::WordWrap) {.header: juce_graphics, importcpp: "#.setWordWrap(@)".}
# proc getReadingDirection*(this: AttributedString): juce::AttributedString::ReadingDirection {.header: juce_graphics, importcpp: "#.getReadingDirection()".}
# proc setReadingDirection*(this: var AttributedString, newReadingDirection: juce::AttributedString::ReadingDirection) {.header: juce_graphics, importcpp: "#.setReadingDirection(@)".}
proc getLineSpacing*(this: AttributedString): float {.header: juce_graphics, importcpp: "#.getLineSpacing()".}
proc setLineSpacing*(this: var AttributedString, newLineSpacing: float) {.header: juce_graphics, importcpp: "#.setLineSpacing(@)".}
proc getNumAttributes*(this: AttributedString): int {.header: juce_graphics, importcpp: "#.getNumAttributes()".}
proc getAttribute*(this: AttributedString, index: int): AttributedStringAttribute {.header: juce_graphics, importcpp: "#.getAttribute(@)".}
proc setColour*(this: var AttributedString, range: int, colour: Colour) {.header: juce_graphics, importcpp: "#.setColour(@)".}
proc setColour*(this: var AttributedString, colour: Colour) {.header: juce_graphics, importcpp: "#.setColour(@)".}
proc setFont*(this: var AttributedString, range: int, font: Font) {.header: juce_graphics, importcpp: "#.setFont(@)".}
proc setFont*(this: var AttributedString, font: Font) {.header: juce_graphics, importcpp: "#.setFont(@)".}

type
  PositionedGlyph* {.header: juce_graphics, importcpp: "juce::PositionedGlyph".} = object

proc `PositionedGlyph=`*(this: var PositionedGlyph, arg1: PositionedGlyph): var PositionedGlyph {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `PositionedGlyph=`*(this: var PositionedGlyph, arg1: lent PositionedGlyph): var PositionedGlyph {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc getCharacter*(this: PositionedGlyph): int {.header: juce_graphics, importcpp: "#.getCharacter()".}
proc isWhitespace*(this: PositionedGlyph): bool {.header: juce_graphics, importcpp: "#.isWhitespace()".}
proc getLeft*(this: PositionedGlyph): float {.header: juce_graphics, importcpp: "#.getLeft()".}
proc getRight*(this: PositionedGlyph): float {.header: juce_graphics, importcpp: "#.getRight()".}
proc getBaselineY*(this: PositionedGlyph): float {.header: juce_graphics, importcpp: "#.getBaselineY()".}
proc getTop*(this: PositionedGlyph): float {.header: juce_graphics, importcpp: "#.getTop()".}
proc getBottom*(this: PositionedGlyph): float {.header: juce_graphics, importcpp: "#.getBottom()".}
# proc getBounds*(this: PositionedGlyph): Rectangle<float> {.header: juce_graphics, importcpp: "#.getBounds()".}
proc moveBy*(this: var PositionedGlyph, deltaX: float, deltaY: float) {.header: juce_graphics, importcpp: "#.moveBy(@)".}
proc draw*(this: PositionedGlyph, g: var Graphics) {.header: juce_graphics, importcpp: "#.draw(@)".}
proc draw*(this: PositionedGlyph, g: var Graphics, transform: AffineTransform) {.header: juce_graphics, importcpp: "#.draw(@)".}
proc createPath*(this: PositionedGlyph, path: var Path) {.header: juce_graphics, importcpp: "#.createPath(@)".}
proc hitTest*(this: PositionedGlyph, x: float, y: float): bool {.header: juce_graphics, importcpp: "#.hitTest(@)".}

type
  GlyphArrangement* {.header: juce_graphics, importcpp: "juce::GlyphArrangement".} = object

proc `GlyphArrangement=`*(this: var GlyphArrangement, arg1: GlyphArrangement): var GlyphArrangement {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `GlyphArrangement=`*(this: var GlyphArrangement, arg1: lent GlyphArrangement): var GlyphArrangement {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc getNumGlyphs*(this: GlyphArrangement): int {.header: juce_graphics, importcpp: "#.getNumGlyphs()".}
proc getGlyph*(this: var GlyphArrangement, index: int): var PositionedGlyph {.header: juce_graphics, importcpp: "#.getGlyph(@)".}
# proc begin*(this: GlyphArrangement): ptr PositionedGlyph {.header: juce_graphics, importcpp: "#.begin()".}
# proc `end`*(this: GlyphArrangement): ptr PositionedGlyph {.header: juce_graphics, importcpp: "#.end()".}
proc clear*(this: var GlyphArrangement) {.header: juce_graphics, importcpp: "#.clear()".}
proc addLineOfText*(this: var GlyphArrangement, font: Font, text: int, x: float, y: float) {.header: juce_graphics, importcpp: "#.addLineOfText(@)".}
proc addCurtailedLineOfText*(this: var GlyphArrangement, font: Font, text: int, x: float, y: float, maxWidthPixels: float, useEllipsis: bool) {.header: juce_graphics, importcpp: "#.addCurtailedLineOfText(@)".}
proc addJustifiedText*(this: var GlyphArrangement, font: Font, text: int, x: float, y: float, maxLineWidth: float, horizontalLayout: Justification, leading: float = 0.0f) {.header: juce_graphics, importcpp: "#.addJustifiedText(@)".}
proc addFittedText*(this: var GlyphArrangement, font: Font, text: int, x: float, y: float, width: float, height: float, layout: Justification, maximumLinesToUse: int, minimumHorizontalScale: float = 0.0f) {.header: juce_graphics, importcpp: "#.addFittedText(@)".}
proc addGlyphArrangement*(this: var GlyphArrangement, arg1: GlyphArrangement) {.header: juce_graphics, importcpp: "#.addGlyphArrangement(@)".}
proc addGlyph*(this: var GlyphArrangement, arg1: PositionedGlyph) {.header: juce_graphics, importcpp: "#.addGlyph(@)".}
proc draw*(this: GlyphArrangement, arg1: Graphics) {.header: juce_graphics, importcpp: "#.draw(@)".}
proc draw*(this: GlyphArrangement, arg1: Graphics, arg2: AffineTransform) {.header: juce_graphics, importcpp: "#.draw(@)".}
proc createPath*(this: GlyphArrangement, path: var Path) {.header: juce_graphics, importcpp: "#.createPath(@)".}
proc findGlyphIndexAt*(this: GlyphArrangement, x: float, y: float): int {.header: juce_graphics, importcpp: "#.findGlyphIndexAt(@)".}
# proc getBoundingBox*(this: GlyphArrangement, startIndex: int, numGlyphs: int, includeWhitespace: bool): Rectangle<float> {.header: juce_graphics, importcpp: "#.getBoundingBox(@)".}
proc moveRangeOfGlyphs*(this: var GlyphArrangement, startIndex: int, numGlyphs: int, deltaX: float, deltaY: float) {.header: juce_graphics, importcpp: "#.moveRangeOfGlyphs(@)".}
proc removeRangeOfGlyphs*(this: var GlyphArrangement, startIndex: int, numGlyphs: int) {.header: juce_graphics, importcpp: "#.removeRangeOfGlyphs(@)".}
proc stretchRangeOfGlyphs*(this: var GlyphArrangement, startIndex: int, numGlyphs: int, horizontalScaleFactor: float) {.header: juce_graphics, importcpp: "#.stretchRangeOfGlyphs(@)".}
proc justifyGlyphs*(this: var GlyphArrangement, startIndex: int, numGlyphs: int, x: float, y: float, width: float, height: float, justification: Justification) {.header: juce_graphics, importcpp: "#.justifyGlyphs(@)".}

type
  TextLayout* {.header: juce_graphics, importcpp: "juce::TextLayout".} = object
  TextLayoutGlyph* {.header: juce_graphics, importcpp: "juce::TextLayout::Glyph".} = object
  TextLayoutRun* {.header: juce_graphics, importcpp: "juce::TextLayout::Run".} = object
  TextLayoutLine* {.header: juce_graphics, importcpp: "juce::TextLayout::Line".} = object

proc `TextLayout=`*(this: var TextLayout, arg1: TextLayout): var TextLayout {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `TextLayout=`*(this: var TextLayout, arg1: lent TextLayout): var TextLayout {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc createLayout*(this: var TextLayout, arg1: AttributedString, maxWidth: float) {.header: juce_graphics, importcpp: "#.createLayout(@)".}
proc createLayout*(this: var TextLayout, arg1: AttributedString, maxWidth: float, maxHeight: float) {.header: juce_graphics, importcpp: "#.createLayout(@)".}
proc createLayoutWithBalancedLineLengths*(this: var TextLayout, arg1: AttributedString, maxWidth: float) {.header: juce_graphics, importcpp: "#.createLayoutWithBalancedLineLengths(@)".}
proc createLayoutWithBalancedLineLengths*(this: var TextLayout, arg1: AttributedString, maxWidth: float, maxHeight: float) {.header: juce_graphics, importcpp: "#.createLayoutWithBalancedLineLengths(@)".}
# proc draw*(this: TextLayout, arg1: var Graphics, area: Rectangle<float>) {.header: juce_graphics, importcpp: "#.draw(@)".}
proc getWidth*(this: TextLayout): float {.header: juce_graphics, importcpp: "#.getWidth()".}
proc getHeight*(this: TextLayout): float {.header: juce_graphics, importcpp: "#.getHeight()".}
proc getNumLines*(this: TextLayout): int {.header: juce_graphics, importcpp: "#.getNumLines()".}
proc getLine*(this: TextLayout, index: int): var TextLayoutLine {.header: juce_graphics, importcpp: "#.getLine(@)".}
proc addLine*(this: var TextLayout, arg1: int) {.header: juce_graphics, importcpp: "#.addLine(@)".}
proc ensureStorageAllocated*(this: var TextLayout, numLinesNeeded: int) {.header: juce_graphics, importcpp: "#.ensureStorageAllocated(@)".}
# proc begin*(this: var TextLayout): juce::TextLayout::iterator {.header: juce_graphics, importcpp: "#.begin()".}
# proc begin*(this: TextLayout): juce::TextLayout::_iterator {.header: juce_graphics, importcpp: "#.begin()".}
# proc cbegin*(this: TextLayout): juce::TextLayout::_iterator {.header: juce_graphics, importcpp: "#.cbegin()".}
# proc `end`*(this: var TextLayout): juce::TextLayout::iterator {.header: juce_graphics, importcpp: "#.end()".}
# proc `end`*(this: TextLayout): juce::TextLayout::_iterator {.header: juce_graphics, importcpp: "#.end()".}
# proc cend*(this: TextLayout): juce::TextLayout::_iterator {.header: juce_graphics, importcpp: "#.cend()".}
proc recalculateSize*(this: var TextLayout) {.header: juce_graphics, importcpp: "#.recalculateSize()".}

type
  CustomTypeface* {.header: juce_graphics, importcpp: "juce::CustomTypeface".} = object

proc clear*(this: var CustomTypeface) {.header: juce_graphics, importcpp: "#.clear()".}
proc setCharacteristics*(this: var CustomTypeface, fontFamily: int, ascent: float, isBold: bool, isItalic: bool, defaultCharacter: int) {.header: juce_graphics, importcpp: "#.setCharacteristics(@)".}
proc setCharacteristics*(this: var CustomTypeface, fontFamily: int, fontStyle: int, ascent: float, defaultCharacter: int) {.header: juce_graphics, importcpp: "#.setCharacteristics(@)".}
proc addGlyph*(this: var CustomTypeface, character: int, path: Path, width: float) {.header: juce_graphics, importcpp: "#.addGlyph(@)".}
proc addKerningPair*(this: var CustomTypeface, char1: int, char2: int, extraAmount: float) {.header: juce_graphics, importcpp: "#.addKerningPair(@)".}
proc addGlyphsFromOtherTypeface*(this: var CustomTypeface, typefaceToCopy: var Typeface, characterStartIndex: int, numCharacters: int) {.header: juce_graphics, importcpp: "#.addGlyphsFromOtherTypeface(@)".}
proc writeToStream*(this: var CustomTypeface, outputStream: var int): bool {.header: juce_graphics, importcpp: "#.writeToStream(@)".}
proc getAscent*(this: CustomTypeface): float {.header: juce_graphics, importcpp: "#.getAscent()".}
proc getDescent*(this: CustomTypeface): float {.header: juce_graphics, importcpp: "#.getDescent()".}
proc getHeightToPointsFactor*(this: CustomTypeface): float {.header: juce_graphics, importcpp: "#.getHeightToPointsFactor()".}
proc getStringWidth*(this: var CustomTypeface, arg1: int): float {.header: juce_graphics, importcpp: "#.getStringWidth(@)".}
proc getGlyphPositions*(this: var CustomTypeface, arg1: int, glyphs: var int, xOffsets: var int) {.header: juce_graphics, importcpp: "#.getGlyphPositions(@)".}
proc getOutlineForGlyph*(this: var CustomTypeface, glyphNumber: int, arg2: var Path): bool {.header: juce_graphics, importcpp: "#.getOutlineForGlyph(@)".}
proc getEdgeTableForGlyph*(this: var CustomTypeface, glyphNumber: int, arg2: AffineTransform, fontHeight: float): ptr EdgeTable {.header: juce_graphics, importcpp: "#.getEdgeTableForGlyph(@)".}

proc setColour*(this: var Graphics, newColour: Colour) {.header: juce_graphics, importcpp: "#.setColour(@)".}
proc setOpacity*(this: var Graphics, newOpacity: float) {.header: juce_graphics, importcpp: "#.setOpacity(@)".}
proc setGradientFill*(this: var Graphics, gradient: ColourGradient) {.header: juce_graphics, importcpp: "#.setGradientFill(@)".}
proc setGradientFill*(this: var Graphics, gradient: lent ColourGradient) {.header: juce_graphics, importcpp: "#.setGradientFill(@)".}
proc setTiledImageFill*(this: var Graphics, imageToUse: Image, anchorX: int, anchorY: int, opacity: float) {.header: juce_graphics, importcpp: "#.setTiledImageFill(@)".}
proc setFillType*(this: var Graphics, newFill: FillType) {.header: juce_graphics, importcpp: "#.setFillType(@)".}
proc setFont*(this: var Graphics, newFont: Font) {.header: juce_graphics, importcpp: "#.setFont(@)".}
proc setFont*(this: var Graphics, newFontHeight: float) {.header: juce_graphics, importcpp: "#.setFont(@)".}
proc getCurrentFont*(this: Graphics): Font {.header: juce_graphics, importcpp: "#.getCurrentFont()".}
# proc drawSingleLineText*(this: Graphics, text: int, startX: int, baselineY: int, justification: Justification = Justification::left) {.header: juce_graphics, importcpp: "#.drawSingleLineText(@)".}
# proc drawMultiLineText*(this: Graphics, text: int, startX: int, baselineY: int, maximumLineWidth: int, justification: Justification = Justification::left, leading: float = 0.0f) {.header: juce_graphics, importcpp: "#.drawMultiLineText(@)".}
proc drawText*(this: Graphics, text: int, x: int, y: int, width: int, height: int, justificationType: Justification, useEllipsesIfTooBig: bool = true) {.header: juce_graphics, importcpp: "#.drawText(@)".}
# proc drawText*(this: Graphics, text: int, area: Rectangle<int>, justificationType: Justification, useEllipsesIfTooBig: bool = true) {.header: juce_graphics, importcpp: "#.drawText(@)".}
# proc drawText*(this: Graphics, text: int, area: Rectangle<float>, justificationType: Justification, useEllipsesIfTooBig: bool = true) {.header: juce_graphics, importcpp: "#.drawText(@)".}
proc drawFittedText*(this: Graphics, text: int, x: int, y: int, width: int, height: int, justificationFlags: Justification, maximumNumberOfLines: int, minimumHorizontalScale: float = 0.0f) {.header: juce_graphics, importcpp: "#.drawFittedText(@)".}
# proc drawFittedText*(this: Graphics, text: int, area: Rectangle<int>, justificationFlags: Justification, maximumNumberOfLines: int, minimumHorizontalScale: float = 0.0f) {.header: juce_graphics, importcpp: "#.drawFittedText(@)".}
proc fillAll*(this: Graphics) {.header: juce_graphics, importcpp: "#.fillAll()".}
proc fillAll*(this: Graphics, colourToUse: Colour) {.header: juce_graphics, importcpp: "#.fillAll(@)".}
# proc fillRect*(this: Graphics, rectangle: Rectangle<int>) {.header: juce_graphics, importcpp: "#.fillRect(@)".}
# proc fillRect*(this: Graphics, rectangle: Rectangle<float>) {.header: juce_graphics, importcpp: "#.fillRect(@)".}
proc fillRect*(this: Graphics, x: int, y: int, width: int, height: int) {.header: juce_graphics, importcpp: "#.fillRect(@)".}
proc fillRect*(this: Graphics, x: float, y: float, width: float, height: float) {.header: juce_graphics, importcpp: "#.fillRect(@)".}
# proc fillRectList*(this: Graphics, rectangles: RectangleList<float>) {.header: juce_graphics, importcpp: "#.fillRectList(@)".}
# proc fillRectList*(this: Graphics, rectangles: RectangleList<int>) {.header: juce_graphics, importcpp: "#.fillRectList(@)".}
proc fillRoundedRectangle*(this: Graphics, x: float, y: float, width: float, height: float, cornerSize: float) {.header: juce_graphics, importcpp: "#.fillRoundedRectangle(@)".}
# proc fillRoundedRectangle*(this: Graphics, rectangle: Rectangle<float>, cornerSize: float) {.header: juce_graphics, importcpp: "#.fillRoundedRectangle(@)".}
# proc fillCheckerBoard*(this: Graphics, area: Rectangle<float>, checkWidth: float, checkHeight: float, colour1: Colour, colour2: Colour) {.header: juce_graphics, importcpp: "#.fillCheckerBoard(@)".}
proc drawRect*(this: Graphics, x: int, y: int, width: int, height: int, lineThickness: int = 1) {.header: juce_graphics, importcpp: "#.drawRect(@)".}
proc drawRect*(this: Graphics, x: float, y: float, width: float, height: float, lineThickness: float = 1.0f) {.header: juce_graphics, importcpp: "#.drawRect(@)".}
# proc drawRect*(this: Graphics, rectangle: Rectangle<int>, lineThickness: int = 1) {.header: juce_graphics, importcpp: "#.drawRect(@)".}
# proc drawRect*(this: Graphics, rectangle: Rectangle<float>, lineThickness: float = 1.0f) {.header: juce_graphics, importcpp: "#.drawRect(@)".}
proc drawRoundedRectangle*(this: Graphics, x: float, y: float, width: float, height: float, cornerSize: float, lineThickness: float) {.header: juce_graphics, importcpp: "#.drawRoundedRectangle(@)".}
# proc drawRoundedRectangle*(this: Graphics, rectangle: Rectangle<float>, cornerSize: float, lineThickness: float) {.header: juce_graphics, importcpp: "#.drawRoundedRectangle(@)".}
proc fillEllipse*(this: Graphics, x: float, y: float, width: float, height: float) {.header: juce_graphics, importcpp: "#.fillEllipse(@)".}
# proc fillEllipse*(this: Graphics, area: Rectangle<float>) {.header: juce_graphics, importcpp: "#.fillEllipse(@)".}
proc drawEllipse*(this: Graphics, x: float, y: float, width: float, height: float, lineThickness: float) {.header: juce_graphics, importcpp: "#.drawEllipse(@)".}
# proc drawEllipse*(this: Graphics, area: Rectangle<float>, lineThickness: float) {.header: juce_graphics, importcpp: "#.drawEllipse(@)".}
proc drawLine*(this: Graphics, startX: float, startY: float, endX: float, endY: float) {.header: juce_graphics, importcpp: "#.drawLine(@)".}
proc drawLine*(this: Graphics, startX: float, startY: float, endX: float, endY: float, lineThickness: float) {.header: juce_graphics, importcpp: "#.drawLine(@)".}
# proc drawLine*(this: Graphics, line: Line<float>) {.header: juce_graphics, importcpp: "#.drawLine(@)".}
# proc drawLine*(this: Graphics, line: Line<float>, lineThickness: float) {.header: juce_graphics, importcpp: "#.drawLine(@)".}
# proc drawDashedLine*(this: Graphics, line: Line<float>, dashLengths: ptr float, numDashLengths: int, lineThickness: float = 1.0f, dashIndexToStartFrom: int = 0) {.header: juce_graphics, importcpp: "#.drawDashedLine(@)".}
proc drawVerticalLine*(this: Graphics, x: int, top: float, bottom: float) {.header: juce_graphics, importcpp: "#.drawVerticalLine(@)".}
proc drawHorizontalLine*(this: Graphics, y: int, left: float, right: float) {.header: juce_graphics, importcpp: "#.drawHorizontalLine(@)".}
proc fillPath*(this: Graphics, path: Path) {.header: juce_graphics, importcpp: "#.fillPath(@)".}
proc fillPath*(this: Graphics, path: Path, transform: AffineTransform) {.header: juce_graphics, importcpp: "#.fillPath(@)".}
# proc strokePath*(this: Graphics, path: Path, strokeType: PathStrokeType, transform: AffineTransform = {}) {.header: juce_graphics, importcpp: "#.strokePath(@)".}
# proc drawArrow*(this: Graphics, line: Line<float>, lineThickness: float, arrowheadWidth: float, arrowheadLength: float) {.header: juce_graphics, importcpp: "#.drawArrow(@)".}
# proc setImageResamplingQuality*(this: var Graphics, newQuality: juce::Graphics::ResamplingQuality) {.header: juce_graphics, importcpp: "#.setImageResamplingQuality(@)".}
proc drawImageAt*(this: Graphics, imageToDraw: Image, topLeftX: int, topLeftY: int, fillAlphaChannelWithCurrentBrush: bool = false) {.header: juce_graphics, importcpp: "#.drawImageAt(@)".}
proc drawImage*(this: Graphics, imageToDraw: Image, destX: int, destY: int, destWidth: int, destHeight: int, sourceX: int, sourceY: int, sourceWidth: int, sourceHeight: int, fillAlphaChannelWithCurrentBrush: bool = false) {.header: juce_graphics, importcpp: "#.drawImage(@)".}
proc drawImageTransformed*(this: Graphics, imageToDraw: Image, transform: AffineTransform, fillAlphaChannelWithCurrentBrush: bool = false) {.header: juce_graphics, importcpp: "#.drawImageTransformed(@)".}
# proc drawImage*(this: Graphics, imageToDraw: Image, targetArea: Rectangle<float>, placementWithinTarget: RectanglePlacement = RectanglePlacement::stretchToFit, fillAlphaChannelWithCurrentBrush: bool = false) {.header: juce_graphics, importcpp: "#.drawImage(@)".}
proc drawImageWithin*(this: Graphics, imageToDraw: Image, destX: int, destY: int, destWidth: int, destHeight: int, placementWithinTarget: RectanglePlacement, fillAlphaChannelWithCurrentBrush: bool = false) {.header: juce_graphics, importcpp: "#.drawImageWithin(@)".}
# proc getClipBounds*(this: Graphics): Rectangle<int> {.header: juce_graphics, importcpp: "#.getClipBounds()".}
# proc clipRegionIntersects*(this: Graphics, area: Rectangle<int>): bool {.header: juce_graphics, importcpp: "#.clipRegionIntersects(@)".}
proc reduceClipRegion*(this: var Graphics, x: int, y: int, width: int, height: int): bool {.header: juce_graphics, importcpp: "#.reduceClipRegion(@)".}
# proc reduceClipRegion*(this: var Graphics, area: Rectangle<int>): bool {.header: juce_graphics, importcpp: "#.reduceClipRegion(@)".}
# proc reduceClipRegion*(this: var Graphics, clipRegion: RectangleList<int>): bool {.header: juce_graphics, importcpp: "#.reduceClipRegion(@)".}
proc reduceClipRegion*(this: var Graphics, path: Path, transform: AffineTransform = AffineTransform()): bool {.header: juce_graphics, importcpp: "#.reduceClipRegion(@)".}
proc reduceClipRegion*(this: var Graphics, image: Image, transform: AffineTransform): bool {.header: juce_graphics, importcpp: "#.reduceClipRegion(@)".}
# proc excludeClipRegion*(this: var Graphics, rectangleToExclude: Rectangle<int>) {.header: juce_graphics, importcpp: "#.excludeClipRegion(@)".}
proc isClipEmpty*(this: Graphics): bool {.header: juce_graphics, importcpp: "#.isClipEmpty()".}
proc saveState*(this: var Graphics) {.header: juce_graphics, importcpp: "#.saveState()".}
proc restoreState*(this: var Graphics) {.header: juce_graphics, importcpp: "#.restoreState()".}
proc beginTransparencyLayer*(this: var Graphics, layerOpacity: float) {.header: juce_graphics, importcpp: "#.beginTransparencyLayer(@)".}
proc endTransparencyLayer*(this: var Graphics) {.header: juce_graphics, importcpp: "#.endTransparencyLayer()".}
# proc setOrigin*(this: var Graphics, newOrigin: Point<int>) {.header: juce_graphics, importcpp: "#.setOrigin(@)".}
proc setOrigin*(this: var Graphics, newOriginX: int, newOriginY: int) {.header: juce_graphics, importcpp: "#.setOrigin(@)".}
proc addTransform*(this: var Graphics, transform: AffineTransform) {.header: juce_graphics, importcpp: "#.addTransform(@)".}
proc resetToDefaultState*(this: var Graphics) {.header: juce_graphics, importcpp: "#.resetToDefaultState()".}
proc isVectorDevice*(this: Graphics): bool {.header: juce_graphics, importcpp: "#.isVectorDevice()".}
proc getInternalContext*(this: Graphics): var LowLevelGraphicsContext {.header: juce_graphics, importcpp: "#.getInternalContext()".}

proc isVectorDevice*(this: LowLevelGraphicsContext): bool {.header: juce_graphics, importcpp: "#.isVectorDevice()".}
# proc setOrigin*(this: var LowLevelGraphicsContext, arg1: Point<int>) {.header: juce_graphics, importcpp: "#.setOrigin(@)".}
proc addTransform*(this: var LowLevelGraphicsContext, arg1: AffineTransform) {.header: juce_graphics, importcpp: "#.addTransform(@)".}
proc getPhysicalPixelScaleFactor*(this: var LowLevelGraphicsContext): float {.header: juce_graphics, importcpp: "#.getPhysicalPixelScaleFactor()".}
# proc clipToRectangle*(this: var LowLevelGraphicsContext, arg1: Rectangle<int>): bool {.header: juce_graphics, importcpp: "#.clipToRectangle(@)".}
# proc clipToRectangleList*(this: var LowLevelGraphicsContext, arg1: RectangleList<int>): bool {.header: juce_graphics, importcpp: "#.clipToRectangleList(@)".}
# proc excludeClipRectangle*(this: var LowLevelGraphicsContext, arg1: Rectangle<int>) {.header: juce_graphics, importcpp: "#.excludeClipRectangle(@)".}
proc clipToPath*(this: var LowLevelGraphicsContext, arg1: Path, arg2: AffineTransform) {.header: juce_graphics, importcpp: "#.clipToPath(@)".}
proc clipToImageAlpha*(this: var LowLevelGraphicsContext, arg1: Image, arg2: AffineTransform) {.header: juce_graphics, importcpp: "#.clipToImageAlpha(@)".}
# proc clipRegionIntersects*(this: var LowLevelGraphicsContext, arg1: Rectangle<int>): bool {.header: juce_graphics, importcpp: "#.clipRegionIntersects(@)".}
# proc getClipBounds*(this: LowLevelGraphicsContext): Rectangle<int> {.header: juce_graphics, importcpp: "#.getClipBounds()".}
proc isClipEmpty*(this: LowLevelGraphicsContext): bool {.header: juce_graphics, importcpp: "#.isClipEmpty()".}
proc saveState*(this: var LowLevelGraphicsContext) {.header: juce_graphics, importcpp: "#.saveState()".}
proc restoreState*(this: var LowLevelGraphicsContext) {.header: juce_graphics, importcpp: "#.restoreState()".}
proc beginTransparencyLayer*(this: var LowLevelGraphicsContext, opacity: float) {.header: juce_graphics, importcpp: "#.beginTransparencyLayer(@)".}
proc endTransparencyLayer*(this: var LowLevelGraphicsContext) {.header: juce_graphics, importcpp: "#.endTransparencyLayer()".}
proc setFill*(this: var LowLevelGraphicsContext, arg1: FillType) {.header: juce_graphics, importcpp: "#.setFill(@)".}
proc setOpacity*(this: var LowLevelGraphicsContext, arg1: float) {.header: juce_graphics, importcpp: "#.setOpacity(@)".}
# proc setInterpolationQuality*(this: var LowLevelGraphicsContext, arg1: Graphics::ResamplingQuality) {.header: juce_graphics, importcpp: "#.setInterpolationQuality(@)".}
# proc fillRect*(this: var LowLevelGraphicsContext, arg1: Rectangle<int>, replaceExistingContents: bool) {.header: juce_graphics, importcpp: "#.fillRect(@)".}
# proc fillRect*(this: var LowLevelGraphicsContext, arg1: Rectangle<float>) {.header: juce_graphics, importcpp: "#.fillRect(@)".}
# proc fillRectList*(this: var LowLevelGraphicsContext, arg1: RectangleList<float>) {.header: juce_graphics, importcpp: "#.fillRectList(@)".}
proc fillPath*(this: var LowLevelGraphicsContext, arg1: Path, arg2: AffineTransform) {.header: juce_graphics, importcpp: "#.fillPath(@)".}
proc drawImage*(this: var LowLevelGraphicsContext, arg1: Image, arg2: AffineTransform) {.header: juce_graphics, importcpp: "#.drawImage(@)".}
# proc drawLine*(this: var LowLevelGraphicsContext, arg1: Line<float>) {.header: juce_graphics, importcpp: "#.drawLine(@)".}
proc setFont*(this: var LowLevelGraphicsContext, arg1: Font) {.header: juce_graphics, importcpp: "#.setFont(@)".}
proc getFont*(this: var LowLevelGraphicsContext): Font {.header: juce_graphics, importcpp: "#.getFont()".}
proc drawGlyph*(this: var LowLevelGraphicsContext, glyphNumber: int, arg2: AffineTransform) {.header: juce_graphics, importcpp: "#.drawGlyph(@)".}
# proc drawTextLayout*(this: var LowLevelGraphicsContext, arg1: AttributedString, arg2: Rectangle<float>): bool {.header: juce_graphics, importcpp: "#.drawTextLayout(@)".}

type
  ImageType* {.header: juce_graphics, importcpp: "juce::ImageType".} = object


type
  ImagePixelData* {.header: juce_graphics, importcpp: "juce::ImagePixelData".} = object
  ImagePixelDataListener* {.header: juce_graphics, importcpp: "juce::ImagePixelData::Listener".} = object


proc `Image=`*(this: var Image, arg1: Image): var Image {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `Image=`*(this: var Image, arg1: lent Image): var Image {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `Image==`*(this: Image, other: Image): bool {.header: juce_graphics, importcpp: "#.operator==(@)".}
proc `Image!=`*(this: Image, other: Image): bool {.header: juce_graphics, importcpp: "#.operator!=(@)".}
proc isValid*(this: Image): bool {.header: juce_graphics, importcpp: "#.isValid()".}
proc isNull*(this: Image): bool {.header: juce_graphics, importcpp: "#.isNull()".}
proc getWidth*(this: Image): int {.header: juce_graphics, importcpp: "#.getWidth()".}
proc getHeight*(this: Image): int {.header: juce_graphics, importcpp: "#.getHeight()".}
# proc getBounds*(this: Image): Rectangle<int> {.header: juce_graphics, importcpp: "#.getBounds()".}
# proc getFormat*(this: Image): juce::Image::PixelFormat {.header: juce_graphics, importcpp: "#.getFormat()".}
proc isARGB*(this: Image): bool {.header: juce_graphics, importcpp: "#.isARGB()".}
proc isRGB*(this: Image): bool {.header: juce_graphics, importcpp: "#.isRGB()".}
proc isSingleChannel*(this: Image): bool {.header: juce_graphics, importcpp: "#.isSingleChannel()".}
proc hasAlphaChannel*(this: Image): bool {.header: juce_graphics, importcpp: "#.hasAlphaChannel()".}
# proc clear*(this: var Image, area: Rectangle<int>, colourToClearTo: Colour = ) {.header: juce_graphics, importcpp: "#.clear(@)".}
# proc rescaled*(this: Image, newWidth: int, newHeight: int, quality: Graphics::ResamplingQuality = Graphics::mediumResamplingQuality): Image {.header: juce_graphics, importcpp: "#.rescaled(@)".}
proc createCopy*(this: Image): Image {.header: juce_graphics, importcpp: "#.createCopy()".}
# proc convertedToFormat*(this: Image, newFormat: juce::Image::PixelFormat): Image {.header: juce_graphics, importcpp: "#.convertedToFormat(@)".}
proc duplicateIfShared*(this: var Image) {.header: juce_graphics, importcpp: "#.duplicateIfShared()".}
# proc getClippedImage*(this: Image, area: Rectangle<int>): Image {.header: juce_graphics, importcpp: "#.getClippedImage(@)".}
proc getPixelAt*(this: Image, x: int, y: int): Colour {.header: juce_graphics, importcpp: "#.getPixelAt(@)".}
proc setPixelAt*(this: var Image, x: int, y: int, colour: Colour) {.header: juce_graphics, importcpp: "#.setPixelAt(@)".}
proc multiplyAlphaAt*(this: var Image, x: int, y: int, multiplier: float) {.header: juce_graphics, importcpp: "#.multiplyAlphaAt(@)".}
proc multiplyAllAlphas*(this: var Image, amountToMultiplyBy: float) {.header: juce_graphics, importcpp: "#.multiplyAllAlphas(@)".}
proc desaturate*(this: var Image) {.header: juce_graphics, importcpp: "#.desaturate()".}
proc moveImageSection*(this: var Image, destX: int, destY: int, sourceX: int, sourceY: int, width: int, height: int) {.header: juce_graphics, importcpp: "#.moveImageSection(@)".}
# proc createSolidAreaMask*(this: Image, result: var RectangleList<int>, alphaThreshold: float) {.header: juce_graphics, importcpp: "#.createSolidAreaMask(@)".}
proc getProperties*(this: Image): ptr int {.header: juce_graphics, importcpp: "#.getProperties()".}
proc createLowLevelContext*(this: Image): int {.header: juce_graphics, importcpp: "#.createLowLevelContext()".}
proc getReferenceCount*(this: Image): int {.header: juce_graphics, importcpp: "#.getReferenceCount()".}
proc getPixelData*(this: Image): ptr ImagePixelData {.header: juce_graphics, importcpp: "#.getPixelData()".}
proc JUCE_DEPRECATED_STATIC*(this: var Image, null: Image): int {.header: juce_graphics, importcpp: "#.JUCE_DEPRECATED_STATIC(@)".}

proc createLowLevelContext*(this: var ImagePixelData): int {.header: juce_graphics, importcpp: "#.createLowLevelContext()".}
proc clone*(this: var ImagePixelData): int {.header: juce_graphics, importcpp: "#.clone()".}
proc createType*(this: ImagePixelData): int {.header: juce_graphics, importcpp: "#.createType()".}
# proc initialiseBitmapData*(this: var ImagePixelData, arg1: var Image::BitmapData, x: int, y: int, arg4: Image::BitmapData::ReadWriteMode) {.header: juce_graphics, importcpp: "#.initialiseBitmapData(@)".}
proc getSharedCount*(this: ImagePixelData): int {.header: juce_graphics, importcpp: "#.getSharedCount()".}
proc sendDataChangeMessage*(this: var ImagePixelData) {.header: juce_graphics, importcpp: "#.sendDataChangeMessage()".}

# proc create*(this: ImageType, arg1: Image::PixelFormat, width: int, height: int, shouldClearImage: bool): int {.header: juce_graphics, importcpp: "#.create(@)".}
proc getTypeID*(this: ImageType): int {.header: juce_graphics, importcpp: "#.getTypeID()".}
proc convert*(this: ImageType, source: Image): Image {.header: juce_graphics, importcpp: "#.convert(@)".}

type
  SoftwareImageType* {.header: juce_graphics, importcpp: "juce::SoftwareImageType".} = object

# proc create*(this: SoftwareImageType, arg1: Image::PixelFormat, width: int, height: int, clearImage: bool): int {.header: juce_graphics, importcpp: "#.create(@)".}
proc getTypeID*(this: SoftwareImageType): int {.header: juce_graphics, importcpp: "#.getTypeID()".}

type
  NativeImageType* {.header: juce_graphics, importcpp: "juce::NativeImageType".} = object

# proc create*(this: NativeImageType, arg1: Image::PixelFormat, width: int, height: int, clearImage: bool): int {.header: juce_graphics, importcpp: "#.create(@)".}
proc getTypeID*(this: NativeImageType): int {.header: juce_graphics, importcpp: "#.getTypeID()".}

proc `FillType=`*(this: var FillType, arg1: FillType): var FillType {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc `FillType=`*(this: var FillType, arg1: lent FillType): var FillType {.header: juce_graphics, importcpp: "#.operator=(@)".}
proc isColour*(this: FillType): bool {.header: juce_graphics, importcpp: "#.isColour()".}
proc isGradient*(this: FillType): bool {.header: juce_graphics, importcpp: "#.isGradient()".}
proc isTiledImage*(this: FillType): bool {.header: juce_graphics, importcpp: "#.isTiledImage()".}
proc setColour*(this: var FillType, newColour: Colour) {.header: juce_graphics, importcpp: "#.setColour(@)".}
proc setGradient*(this: var FillType, newGradient: ColourGradient) {.header: juce_graphics, importcpp: "#.setGradient(@)".}
proc setTiledImage*(this: var FillType, image: Image, transform: AffineTransform) {.header: juce_graphics, importcpp: "#.setTiledImage(@)".}
proc setOpacity*(this: var FillType, newOpacity: float) {.header: juce_graphics, importcpp: "#.setOpacity(@)".}
proc getOpacity*(this: FillType): float {.header: juce_graphics, importcpp: "#.getOpacity()".}
proc isInvisible*(this: FillType): bool {.header: juce_graphics, importcpp: "#.isInvisible()".}
proc transformed*(this: FillType, transform: AffineTransform): FillType {.header: juce_graphics, importcpp: "#.transformed(@)".}
proc `FillType==`*(this: FillType, arg1: FillType): bool {.header: juce_graphics, importcpp: "#.operator==(@)".}
proc `FillType!=`*(this: FillType, arg1: FillType): bool {.header: juce_graphics, importcpp: "#.operator!=(@)".}

type
  LowLevelGraphicsSoftwareRenderer* {.header: juce_graphics, importcpp: "juce::LowLevelGraphicsSoftwareRenderer".} = object


type
  LowLevelGraphicsPostScriptRenderer* {.header: juce_graphics, importcpp: "juce::LowLevelGraphicsPostScriptRenderer".} = object
  LowLevelGraphicsPostScriptRendererSavedState* {.header: juce_graphics, importcpp: "juce::LowLevelGraphicsPostScriptRenderer::SavedState".} = object

proc isVectorDevice*(this: LowLevelGraphicsPostScriptRenderer): bool {.header: juce_graphics, importcpp: "#.isVectorDevice()".}
# proc setOrigin*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Point<int>) {.header: juce_graphics, importcpp: "#.setOrigin(@)".}
proc addTransform*(this: var LowLevelGraphicsPostScriptRenderer, arg1: AffineTransform) {.header: juce_graphics, importcpp: "#.addTransform(@)".}
proc getPhysicalPixelScaleFactor*(this: var LowLevelGraphicsPostScriptRenderer): float {.header: juce_graphics, importcpp: "#.getPhysicalPixelScaleFactor()".}
# proc clipToRectangle*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Rectangle<int>): bool {.header: juce_graphics, importcpp: "#.clipToRectangle(@)".}
# proc clipToRectangleList*(this: var LowLevelGraphicsPostScriptRenderer, arg1: RectangleList<int>): bool {.header: juce_graphics, importcpp: "#.clipToRectangleList(@)".}
# proc excludeClipRectangle*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Rectangle<int>) {.header: juce_graphics, importcpp: "#.excludeClipRectangle(@)".}
proc clipToPath*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Path, arg2: AffineTransform) {.header: juce_graphics, importcpp: "#.clipToPath(@)".}
proc clipToImageAlpha*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Image, arg2: AffineTransform) {.header: juce_graphics, importcpp: "#.clipToImageAlpha(@)".}
proc saveState*(this: var LowLevelGraphicsPostScriptRenderer) {.header: juce_graphics, importcpp: "#.saveState()".}
proc restoreState*(this: var LowLevelGraphicsPostScriptRenderer) {.header: juce_graphics, importcpp: "#.restoreState()".}
proc beginTransparencyLayer*(this: var LowLevelGraphicsPostScriptRenderer, arg1: float) {.header: juce_graphics, importcpp: "#.beginTransparencyLayer(@)".}
proc endTransparencyLayer*(this: var LowLevelGraphicsPostScriptRenderer) {.header: juce_graphics, importcpp: "#.endTransparencyLayer()".}
# proc clipRegionIntersects*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Rectangle<int>): bool {.header: juce_graphics, importcpp: "#.clipRegionIntersects(@)".}
# proc getClipBounds*(this: LowLevelGraphicsPostScriptRenderer): Rectangle<int> {.header: juce_graphics, importcpp: "#.getClipBounds()".}
proc isClipEmpty*(this: LowLevelGraphicsPostScriptRenderer): bool {.header: juce_graphics, importcpp: "#.isClipEmpty()".}
proc setFill*(this: var LowLevelGraphicsPostScriptRenderer, arg1: FillType) {.header: juce_graphics, importcpp: "#.setFill(@)".}
proc setOpacity*(this: var LowLevelGraphicsPostScriptRenderer, arg1: float) {.header: juce_graphics, importcpp: "#.setOpacity(@)".}
# proc setInterpolationQuality*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Graphics::ResamplingQuality) {.header: juce_graphics, importcpp: "#.setInterpolationQuality(@)".}
# proc fillRect*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Rectangle<int>, replaceExistingContents: bool) {.header: juce_graphics, importcpp: "#.fillRect(@)".}
# proc fillRect*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Rectangle<float>) {.header: juce_graphics, importcpp: "#.fillRect(@)".}
# proc fillRectList*(this: var LowLevelGraphicsPostScriptRenderer, arg1: RectangleList<float>) {.header: juce_graphics, importcpp: "#.fillRectList(@)".}
proc fillPath*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Path, arg2: AffineTransform) {.header: juce_graphics, importcpp: "#.fillPath(@)".}
proc drawImage*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Image, arg2: AffineTransform) {.header: juce_graphics, importcpp: "#.drawImage(@)".}
# proc drawLine*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Line<float>) {.header: juce_graphics, importcpp: "#.drawLine(@)".}
proc getFont*(this: var LowLevelGraphicsPostScriptRenderer): Font {.header: juce_graphics, importcpp: "#.getFont()".}
proc setFont*(this: var LowLevelGraphicsPostScriptRenderer, arg1: Font) {.header: juce_graphics, importcpp: "#.setFont(@)".}
proc drawGlyph*(this: var LowLevelGraphicsPostScriptRenderer, glyphNumber: int, arg2: AffineTransform) {.header: juce_graphics, importcpp: "#.drawGlyph(@)".}

type
  ImageEffectFilter* {.header: juce_graphics, importcpp: "juce::ImageEffectFilter".} = object

proc applyEffect*(this: var ImageEffectFilter, sourceImage: var Image, destContext: var Graphics, scaleFactor: float, alpha: float) {.header: juce_graphics, importcpp: "#.applyEffect(@)".}

type
  DropShadow* {.header: juce_graphics, importcpp: "juce::DropShadow".} = object

proc drawForImage*(this: DropShadow, g: var Graphics, srcImage: Image) {.header: juce_graphics, importcpp: "#.drawForImage(@)".}
proc drawForPath*(this: DropShadow, g: var Graphics, path: Path) {.header: juce_graphics, importcpp: "#.drawForPath(@)".}
# proc drawForRectangle*(this: DropShadow, g: var Graphics, area: Rectangle<int>) {.header: juce_graphics, importcpp: "#.drawForRectangle(@)".}

type
  DropShadowEffect* {.header: juce_graphics, importcpp: "juce::DropShadowEffect".} = object

proc setShadowProperties*(this: var DropShadowEffect, newShadow: DropShadow) {.header: juce_graphics, importcpp: "#.setShadowProperties(@)".}
proc applyEffect*(this: var DropShadowEffect, sourceImage: var Image, destContext: var Graphics, scaleFactor: float, alpha: float) {.header: juce_graphics, importcpp: "#.applyEffect(@)".}

type
  GlowEffect* {.header: juce_graphics, importcpp: "juce::GlowEffect".} = object

# proc setGlowProperties*(this: var GlowEffect, newRadius: float, newColour: Colour, offset: Point<int> = ) {.header: juce_graphics, importcpp: "#.setGlowProperties(@)".}
proc applyEffect*(this: var GlowEffect, arg1: var Image, arg2: var Graphics, scaleFactor: float, alpha: float) {.header: juce_graphics, importcpp: "#.applyEffect(@)".}



include juce_graphics_lifting

