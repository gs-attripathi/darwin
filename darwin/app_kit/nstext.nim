import ./nsview
from NSString import ../objc/runtime
type NSText* = ptr object of NSView

proc setString*(self: NSText ,str: NSString): {.objc: "setString" .}
