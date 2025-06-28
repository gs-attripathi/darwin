import ./nsview
import ../objc/runtime only: NSString
type NSText* = ptr object of NSView

proc setString*(self: NSText ,str: NSString): {.objc: "setString" .}
