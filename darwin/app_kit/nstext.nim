import ./nsview
from ../objc/runtime import NSString 
type NSText* = ptr object of NSView

proc setString*(self: NSText ,str: NSString): void {.objc: "setString".}
