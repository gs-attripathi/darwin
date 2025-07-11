import ../objc/runtime
import ../foundation/nsstring
import ../foundation/nsattributedstring

# NSTextAlignment enum
const
  NSLeftTextAlignment* = 0
  NSRightTextAlignment* = 1
  NSCenterTextAlignment* = 2
  NSJustifiedTextAlignment* = 3
  NSNaturalTextAlignment* = 4

type
  NSTextAlignment* = int
  NSParagraphStyle* = ptr object of NSObject

proc alignment*(self: NSParagraphStyle): NSTextAlignment {.objc: "alignment".} 