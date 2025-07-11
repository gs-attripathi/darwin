import ../objc/runtime
import ../foundation / [ nsgeometry ]
import ../core_graphics / [ cggeometry ]

type NSTextContainer* = ptr object of NSObject

proc initWithContainerSize*(self: NSTextContainer, size: NSSize): NSTextContainer {.objc: "initWithContainerSize:".}

proc containerSize*(self: NSTextContainer): NSSize {.objc: "containerSize".}
proc setContainerSize*(self: NSTextContainer, size: NSSize) {.objc: "setContainerSize:".}

proc lineFragmentPadding*(self: NSTextContainer): CGFloat {.objc: "lineFragmentPadding".}
proc setLineFragmentPadding*(self: NSTextContainer, padding: CGFloat) {.objc: "setLineFragmentPadding:".}

proc widthTracksTextView*(self: NSTextContainer): BOOL {.objc: "widthTracksTextView".}
proc setWidthTracksTextView*(self: NSTextContainer, flag: BOOL) {.objc: "setWidthTracksTextView:".}

proc heightTracksTextView*(self: NSTextContainer): BOOL {.objc: "heightTracksTextView".}
proc setHeightTracksTextView*(self: NSTextContainer, flag: BOOL) {.objc: "setHeightTracksTextView:".}

proc isSimpleRectangularTextContainer*(self: NSTextContainer): BOOL {.objc: "isSimpleRectangularTextContainer".}

proc containsPoint*(self: NSTextContainer, point: NSPoint): BOOL {.objc: "containsPoint:".} 