import DynamicFont

let font = DynamicFont(family: .helveticaNeue, size: 12)
font.fontName

let font2 = font.withWeight(.bold)
font2.fontName

let font3 = font2.withItalic()
font3.fontName

let font4 = font3.withWeight(.light)
font4.fontName
