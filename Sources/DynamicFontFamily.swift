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
 The available font families.
 */
public enum DynamicFontFamily: String {
  /// The `Copperplate` font family.
  case copperplate = "Copperplate"
  /// The `Heiti SC` font family.
  case heitiSC = "Heiti SC"
  /// The `Kohinoor Telugu` font family.
  case kohinoorTelugu = "Kohinoor Telugu"
  /// The `Thonburi` font family.
  case thonburi = "Thonburi"
  /// The `Heiti TC` font family.
  case heitiTC = "Heiti TC"
  /// The `Courier New` font family.
  case courierNew = "Courier New"
  /// The `Gill Sans` font family.
  case gillSans = "Gill Sans"
  /// The `Apple SD Gothic Neo` font family.
  case appleSDGothicNeo = "Apple SD Gothic Neo"
  /// The `Marker Felt` font family.
  case markerFelt = "Marker Felt"
  /// The `Avenir Next Condensed` font family.
  case avenirNextCondensed = "Avenir Next Condensed"
  /// The `Tamil Sangam MN` font family.
  case tamilSangamMN = "Tamil Sangam MN"
  /// The `Helvetica Neue` font family.
  case helveticaNeue = "Helvetica Neue"
  /// The `Gurmukhi MN` font family.
  case gurmukhiMN = "Gurmukhi MN"
  /// The `Times New Roman` font family.
  case timesNewRoman = "Times New Roman"
  /// The `Georgia` font family.
  case georgia = "Georgia"
  /// The `Apple Color Emoji` font family.
  case appleColorEmoji = "Apple Color Emoji"
  /// The `Arial Rounded MT Bold` font family.
  case arialRoundedMTBold = "Arial Rounded MT Bold"
  /// The `Kailasa` font family.
  case kailasa = "Kailasa"
  /// The `Kohinoor Devanagari` font family.
  case kohinoorDevanagari = "Kohinoor Devanagari"
  /// The `Kohinoor Bangla` font family.
  case kohinoorBangla = "Kohinoor Bangla"
  /// The `Chalkboard SE` font family.
  case chalkboardSE = "Chalkboard SE"
  /// The `Sinhala Sangam MN` font family.
  case sinhalaSangamMN = "Sinhala Sangam MN"
  /// The `PingFang TC` font family.
  case pingFangTC = "PingFang TC"
  /// The `Gujarati Sangam MN` font family.
  case gujaratiSangamMN = "Gujarati Sangam MN"
  /// The `Damascus` font family.
  case damascus = "Damascus"
  /// The `Noteworthy` font family.
  case noteworthy = "Noteworthy"
  /// The `Geeza Pro` font family.
  case geezaPro = "Geeza Pro"
  /// The `Avenir` font family.
  case avenir = "Avenir"
  /// The `Academy Engraved LET` font family.
  case academyEngravedLET = "Academy Engraved LET"
  /// The `Mishafi` font family.
  case mishafi = "Mishafi"
  /// The `Futura` font family.
  case futura = "Futura"
  /// The `Farah` font family.
  case farah = "Farah"
  /// The `Kannada Sangam MN` font family.
  case kannadaSangamMN = "Kannada Sangam MN"
  /// The `Arial Hebrew` font family.
  case arialHebrew = "Arial Hebrew"
  /// The `Arial` font family.
  case arial = "Arial"
  /// The `Party LET` font family.
  case partyLET = "Party LET"
  /// The `Chalkduster` font family.
  case chalkduster = "Chalkduster"
  /// The `Hoefler Text` font family.
  case hoeflerText = "Hoefler Text"
  /// The `Optima` font family.
  case optima = "Optima"
  /// The `Palatino` font family.
  case palatino = "Palatino"
  /// The `Lao Sangam MN` font family.
  case laoSangamMN = "Lao Sangam MN"
  /// The `Malayalam Sangam MN` font family.
  case malayalamSangamMN = "Malayalam Sangam MN"
  /// The `Al Nile` font family.
  case alNile = "Al Nile"
  /// The `Bradley Hand` font family.
  case bradleyHand = "Bradley Hand"
  /// The `PingFang HK` font family.
  case pingFangHK = "PingFang HK"
  /// The `Trebuchet MS` font family.
  case trebuchetMS = "Trebuchet MS"
  /// The `Helvetica` font family.
  case helvetica = "Helvetica"
  /// The `Courier` font family.
  case courier = "Courier"
  /// The `Cochin` font family.
  case cochin = "Cochin"
  /// The `Hiragino Mincho ProN` font family.
  case hiraginoMinchoProN = "Hiragino Mincho ProN"
  /// The `Devanagari Sangam MN` font family.
  case devanagariSangamMN = "Devanagari Sangam MN"
  /// The `Oriya Sangam MN` font family.
  case oriyaSangamMN = "Oriya Sangam MN"
  /// The `Snell Roundhand` font family.
  case snellRoundhand = "Snell Roundhand"
  /// The `Zapf Dingbats` font family.
  case zapfDingbats = "Zapf Dingbats"
  /// The `Bodoni 72` font family.
  case bodoni72 = "Bodoni 72"
  /// The `Verdana` font family.
  case verdana = "Verdana"
  /// The `American Typewriter` font family.
  case americanTypewriter = "American Typewriter"
  /// The `Avenir Next` font family.
  case avenirNext = "Avenir Next"
  /// The `Baskerville` font family.
  case baskerville = "Baskerville"
  /// The `Khmer Sangam MN` font family.
  case khmerSangamMN = "Khmer Sangam MN"
  /// The `Didot` font family.
  case didot = "Didot"
  /// The `Savoye LET` font family.
  case savoyeLET = "Savoye LET"
  /// The `Bodoni Ornaments` font family.
  case bodoniOrnaments = "Bodoni Ornaments"
  /// The `Symbol` font family.
  case symbol = "Symbol"
  /// The `Menlo` font family.
  case menlo = "Menlo"
  /// The `Bodoni 72 Smallcaps` font family.
  case bodoni72Smallcaps = "Bodoni 72 Smallcaps"
  /// The `Papyrus` font family.
  case papyrus = "Papyrus"
  /// The `Hiragino Sans` font family.
  case hiraginoSans = "Hiragino Sans"
  /// The `PingFang SC` font family.
  case pingFangSC = "PingFang SC"
  /// The `Myanmar Sangam MN` font family.
  case myanmarSangamMN = "Myanmar Sangam MN"
  /// The `Euphemia UCAS` font family.
  case euphemiaUCAS = "Euphemia UCAS"
  /// The `Telugu Sangam MN` font family.
  case teluguSangamMN = "Telugu Sangam MN"
  /// The `Bangla Sangam MN` font family.
  case banglaSangamMN = "Bangla Sangam MN"
  /// The `Zapfino` font family.
  case zapfino = "Zapfino"
  /// The `Bodoni 72 Oldstyle` font family.
  case bodoni72Oldstyle = "Bodoni 72 Oldstyle"
}
