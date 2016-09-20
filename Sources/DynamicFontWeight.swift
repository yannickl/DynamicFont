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
 The font weight.
 */
public enum DynamicFontWeight {
  /// The ultra light font weight.
  case ultraLight
  /// The thin font weight.
  case thin
  /// The light font weight.
  case light
  /// The regular font weight.
  case regular
  /// The medium font weight.
  case medium
  /// The semibold font weight.
  case semibold
  /// The bold font weight.
  case bold
  /// The heavy font weight.
  case heavy
  /// The black font weight.
  case black

  static func fromTrait(trait: CGFloat) -> DynamicFontWeight {
    switch trait {
    case UIFontWeightUltraLight:
      return .ultraLight
    case UIFontWeightThin:
      return .thin
    case UIFontWeightLight:
      return .light
    case UIFontWeightMedium:
      return .medium
    case UIFontWeightSemibold:
      return .semibold
    case UIFontWeightBold:
      return .bold
    case UIFontWeightHeavy:
      return .heavy
    case UIFontWeightBlack:
      return .black
    default:
      return .regular
    }
  }

  var traitValue: CGFloat {
    switch self {
    case .ultraLight:
      return UIFontWeightUltraLight
    case .thin:
      return UIFontWeightThin
    case .light:
      return UIFontWeightLight
    case .regular:
      return UIFontWeightRegular
    case .medium:
      return UIFontWeightMedium
    case .semibold:
      return UIFontWeightSemibold
    case .bold:
      return UIFontWeightBold
    case .heavy:
      return UIFontWeightHeavy
    case .black:
      return UIFontWeightBlack
    }
  }
}
