import ./nsview
type NSText* = ptr object of NSView

type NSTextAlignment* {.size: sizeof(int).} = enum
  NSTextAlignmentLeft = 0,
  NSTextAlignmentRight = 1,
  NSTextAlignmentCenter = 2,
  NSTextAlignmentJustified = 3,
  NSTextAlignmentNatural = 4