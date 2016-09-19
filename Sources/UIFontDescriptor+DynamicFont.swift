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

extension UIFontDescriptor {
  var name: String {
    return object(forKey: UIFontDescriptorNameAttribute) as? String ?? ""
  }

  var family: String {
    return object(forKey: UIFontDescriptorFamilyAttribute) as? String ?? ""
  }

  var weight: DynamicFontWeight {
    get {
      let trait = traits[UIFontWeightTrait] as? CGFloat ?? 0

      return DynamicFontWeight.fromTrait(trait: trait)
    }
  }

  func weighted(weight: DynamicFontWeight) -> UIFontDescriptor {
    var tmp                = traits
    tmp[UIFontWeightTrait] = weight.traitValue as AnyObject?

    return setTraits(tmp)
  }

  public var size: CGFloat {
    return object(forKey: UIFontDescriptorSizeAttribute) as? CGFloat ?? 0
  }

  public var font: DynamicFont {
    return UIFont(descriptor: self, size: 0)
  }

  // MARK: - Initialisers

  convenience init(font: DynamicFont) {
    self.init(name: font.familyName, size: font.pointSize)
  }

  // MARK: - Convenience Methods

  var traits: [String: AnyObject] {
    return object(forKey: UIFontDescriptorTraitsAttribute) as? [String: AnyObject] ?? [:]
  }

  func setTraits(_ traits: [String: AnyObject]) -> UIFontDescriptor {
    return addingAttributes([UIFontDescriptorTraitsAttribute: traits as Any])
  }
}
