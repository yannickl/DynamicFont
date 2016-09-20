import DynamicFont

let font = DynamicFont(family: .helveticaNeue, weight: .bold, size: 12)
font.fontName

let font2 = font.weighted(weight: .light)
font2.fontName

let font3 = font2.italicized()
font3.fontName

let font4 = font3.weighted(weight: .light)
font4.fontName

print(UIFont.familyNames.map({ "case \($0.lowercased()) = \($0)" }))