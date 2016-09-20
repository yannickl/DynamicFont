//
//  ViewController.swift
//  DynamicFontExample
//
//  Created by Yannick LORIOT on 13/09/16.
//  Copyright © 2016 Yannick Loriot. All rights reserved.
//

import UIKit

extension String {
  func lowercaseFirstLetter() -> String {
    guard let firstLetter = characters.first else { return self }

    let lowerCaseLetter = "\(firstLetter)".lowercased()
    let trimedLetters   = String(characters.dropFirst())

    return "\(lowerCaseLetter)\(trimedLetters)"
  }
}

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    let font = DynamicFont(family: .helveticaNeue, size: 12)

    print("=>", font.weighted(weight: .bold).fontName)
    print("=>", font.italicized().fontName)

    _ = UIFont.familyNames.map({ "/// The `\($0)` font family.\ncase \($0.lowercaseFirstLetter().replacingOccurrences(of: " ", with: "")) = \"\($0)\"\n" }).joined()
  }
}

