import ./nsview
import ../objc/runtime
type NSText* = ptr object of NSView

proc setString*(self: NSText ,str: NSString): void {.objc: "setString".}
