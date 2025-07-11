import ../objc/runtime
import ./nsparagraphstyle

# NSMutableParagraphStyle is a subclass of NSParagraphStyle

type
  NSMutableParagraphStyle* = ptr object of NSParagraphStyle

proc alloc*(self: typedesc[NSMutableParagraphStyle]): NSMutableParagraphStyle {.objc: "alloc".}
proc init*(self: NSMutableParagraphStyle): NSMutableParagraphStyle {.objc: "init".}
proc setAlignment*(self: NSMutableParagraphStyle, alignment: NSTextAlignment) {.objc: "setAlignment:".} 