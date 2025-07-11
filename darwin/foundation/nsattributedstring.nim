import ../objc/runtime
import nsstring, nsgeometry

type 
  NSAttributedString* = ptr object of NSObject
  NSMutableAttributedString* = ptr object of NSAttributedString

proc initWithString*(self: NSAttributedString, str: NSString): NSAttributedString {.objc: "initWithString:".}
proc initWithString*(self: NSMutableAttributedString, str: NSString): NSMutableAttributedString {.objc: "initWithString:".}

proc string*(self: NSAttributedString): NSString {.objc: "string".}
proc length*(self: NSAttributedString): int {.objc: "length".}

proc replaceCharactersInRange*(self: NSMutableAttributedString, range: NSRange, str: NSString) {.objc: "replaceCharactersInRange:withString:".}
proc setString*(self: NSMutableAttributedString, str: NSString) {.objc: "setString:".} 