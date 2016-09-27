/*
 * DynamicFont
 *
 * Copyright 2016-present Yannick Loriot.
 * http://yannickloriot.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

import UIKit

/**
 Extension to manipulate the font easily.
 */
public typealias DynamicFont = UIFont

public extension DynamicFont {
  // MARK: - Creating Fonts

  /**
   Creates and returns a font object for the specified font family, weight and size.

   - Parameter family: A font family.
   - Parameter weight: A font weight. The default value is `regular`.
   - Parameter size: The size (in points) to which the font is scaled. This value must be greater than 0.0.
   - Returns: A font object of the specified family, weight and size.
   - SeeAlso: init:familyName:weight:size:
   */
  public convenience init(family: DynamicFontFamily, weight: DynamicFontWeight = .regular, size: CGFloat) {
    self.init(familyName: family.rawValue, weight: weight, size: size)
  }

  /**
   Creates and returns a font object for the specified font family name, weight and size.

   - Parameter familyName: A font family name.
   - Parameter weight: A font weight. The default value is `regular`.
   - Parameter size: The size (in points) to which the font is scaled. This value must be greater than 0.0.
   - Returns: A font object of the specified family name, weight and size.
   - SeeAlso: init:familyName:weight:size:
   */
  public convenience init(familyName: String, weight: DynamicFontWeight = .regular, size: CGFloat) {
    let descriptor = UIFontDescriptor(fontAttributes: [
      UIFontDescriptorFamilyAttribute: familyName
      ]).weighted(weight: weight)

    self.init(descriptor: descriptor, size: size)
  }

  // MARK: - Getting Font Family

  /**
   The font family.

   A family is a constant value such as `.timesNewRoman` that identifies one or more specific fonts.
   */
  public var family: DynamicFontFamily {
    return DynamicFontFamily(rawValue: familyName) ?? .helvetica
  }

  // MARK: - Working with Font Attributes

  /**
   Returns a new font object that is rendered with the given weight.
   
   If the font can not be weighted with the corresponding value the returned font is the same as the receiver.
   
   - Parameter weight: The desired font weight. The default value is `bold`.
   - Returns: An weighted font object.
   */
  public func weighted(weight: DynamicFontWeight = .bold) -> DynamicFont {
    return UIFontDescriptor(font: self).weighted(weight: weight).font
  }

  /**
   The font weight of the receiver.
   
   - Returns: A font weight.
   */
  public var weight: DynamicFontWeight {
    return UIFontDescriptor(font: self).weight
  }

  /**
   Returns a new font object that is rendered in italic type.

   If the font can not be italicized the returned font is the same as the receiver.

   - Returns: An italicized font object.
   */
  public func italicized() -> DynamicFont {
    let descriptor = UIFontDescriptor(font: self)
    var traits     = descriptor.symbolicTraits

    traits.insert(.traitItalic)

    return descriptor.withSymbolicTraits(traits)?.font ?? UIFontDescriptor(font: self).font
  }

  /**
   Flag to know whether the font is in italic.

   - Returns: A boolean indicates whether the font is in italic.
   */
  public var isItalic: Bool {
    return UIFontDescriptor(font: self).symbolicTraits.contains(.traitItalic)
  }

  // MARK: - Bridging Font Descriptor

  /**
   Returns a new dynamic font that is the same as the receiver but with the specified symbolic traits taking precedence over the existing ones.

   - Parameter symbolicTraits: The new symbolic traits.
   - Returns: The new font descriptor.
   */
  public func withSymbolicTraits(_ symbolicTraits: UIFontDescriptorSymbolicTraits) -> DynamicFont {
    return UIFontDescriptor(font: self).withSymbolicTraits(symbolicTraits)?.font ?? UIFontDescriptor(font: self).font
  }

  /**
   A bit mask that describes the traits of the receiver.
   */
  public var symbolicTraits: UIFontDescriptorSymbolicTraits {
    return UIFontDescriptor(font: self).symbolicTraits
  }
}
