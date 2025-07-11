import ../objc/runtime
import ../foundation / [ nsstring, nsgeometry, nsattributedstring ]

type 
  NSLayoutManager* = ptr object of NSObject  # Forward declaration
  NSTextStorage* = ptr object of NSMutableAttributedString

proc initWithString*(self: NSTextStorage, str: NSString): NSTextStorage {.objc: "initWithString:".}

proc string*(self: NSTextStorage): NSString {.objc: "string".}
proc setString*(self: NSTextStorage, str: NSString) {.objc: "setString:".}

proc length*(self: NSTextStorage): int {.objc: "length".}

proc addLayoutManager*(self: NSTextStorage, layoutManager: NSLayoutManager) {.objc: "addLayoutManager:".}
proc removeLayoutManager*(self: NSTextStorage, layoutManager: NSLayoutManager) {.objc: "removeLayoutManager:".}

proc beginEditing*(self: NSTextStorage) {.objc: "beginEditing".}
proc endEditing*(self: NSTextStorage) {.objc: "endEditing".}

proc replaceCharactersInRange*(self: NSTextStorage, range: NSRange, str: NSString) {.objc: "replaceCharactersInRange:withString:".} 