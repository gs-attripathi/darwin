import ../objc/runtime
import ../core_graphics/cggeometry

type 
  NSColor* = ptr object of NSObject

# Class methods for standard colors
proc blackColor*(self: typedesc[NSColor]): NSColor {.objc: "blackColor".}
proc whiteColor*(self: typedesc[NSColor]): NSColor {.objc: "whiteColor".}
proc redColor*(self: typedesc[NSColor]): NSColor {.objc: "redColor".}
proc greenColor*(self: typedesc[NSColor]): NSColor {.objc: "greenColor".}
proc blueColor*(self: typedesc[NSColor]): NSColor {.objc: "blueColor".}
proc yellowColor*(self: typedesc[NSColor]): NSColor {.objc: "yellowColor".}
proc cyanColor*(self: typedesc[NSColor]): NSColor {.objc: "cyanColor".}
proc magentaColor*(self: typedesc[NSColor]): NSColor {.objc: "magentaColor".}
proc orangeColor*(self: typedesc[NSColor]): NSColor {.objc: "orangeColor".}
proc purpleColor*(self: typedesc[NSColor]): NSColor {.objc: "purpleColor".}
proc brownColor*(self: typedesc[NSColor]): NSColor {.objc: "brownColor".}
proc clearColor*(self: typedesc[NSColor]): NSColor {.objc: "clearColor".}
proc grayColor*(self: typedesc[NSColor]): NSColor {.objc: "grayColor".}
proc lightGrayColor*(self: typedesc[NSColor]): NSColor {.objc: "lightGrayColor".}
proc darkGrayColor*(self: typedesc[NSColor]): NSColor {.objc: "darkGrayColor".}

# Create custom colors
proc colorWithRed*(self: typedesc[NSColor], red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat): NSColor {.objc: "colorWithRed:green:blue:alpha:".}
proc colorWithWhite*(self: typedesc[NSColor], white: CGFloat, alpha: CGFloat): NSColor {.objc: "colorWithWhite:alpha:".}
proc colorWithHue*(self: typedesc[NSColor], hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat): NSColor {.objc: "colorWithHue:saturation:brightness:alpha:".}

# Instance methods
proc alphaComponent*(self: NSColor): CGFloat {.objc: "alphaComponent".}
proc colorWithAlphaComponent*(self: NSColor, alpha: CGFloat): NSColor {.objc: "colorWithAlphaComponent:".}