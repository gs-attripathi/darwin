import ../objc/runtime
import nsstring, nsgeometry

type 
  NSAttributedString* = ptr object of NSObject
  NSMutableAttributedString* = ptr object of NSAttributedString

const NSParagraphStyleAttributeName* = "NSParagraphStyle" # Apple constant for paragraph style attribute

proc initWithString*(self: NSAttributedString, str: NSString, attrs: NSDictionary): NSAttributedString {.objc: "initWithString:attributes:".}
proc initWithString*(self: NSMutableAttributedString, str: NSString): NSMutableAttributedString {.objc: "initWithString:".}

proc string*(self: NSAttributedString): NSString {.objc: "string".}
proc length*(self: NSAttributedString): int {.objc: "length".}

proc replaceCharactersInRange*(self: NSMutableAttributedString, range: NSRange, str: NSString) {.objc: "replaceCharactersInRange:withString:".}
proc setString*(self: NSMutableAttributedString, str: NSString) {.objc: "setString:".} 