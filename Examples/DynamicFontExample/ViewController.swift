//
//  ViewController.swift
//  DynamicFontExample
//
//  Created by Yannick LORIOT on 13/09/16.
//  Copyright © 2016 Yannick Loriot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let font = DynamicFont(family: .helveticaNeue, size: 12)

    print("=>", font.weighted(weight: .bold).fontName)
    print("=>", font.italicized().fontName)
  }
}

