import ../objc/runtime
import ../foundation / [ nsgeometry, nsstring ]
import ./ [ nstext, nstextcontainer, nscolor, nsfont, nstextstorage ]

type NSTextView* = ptr object of NSText

proc initWithFrame*(self: NSTextView, frame: NSRect): NSTextView {.objc: "initWithFrame:".}
proc initWithFrameTextContainer*(self: NSTextView, frame: NSRect, container: NSTextContainer): NSTextView {.objc: "initWithFrame:textContainer:".}

proc setEditable*(self: NSTextView, flag: BOOL) {.objc: "setEditable:".}
proc isEditable*(self: NSTextView): BOOL {.objc: "isEditable:".}

proc setSelectable*(self: NSTextView, flag: BOOL) {.objc: "setSelectable:".}
proc isSelectable*(self: NSTextView): BOOL {.objc: "isSelectable:".}

proc setString*(self: NSTextView, str: NSString) {.objc: "setString:".}
proc string*(self: NSTextView): NSString {.objc: "string".}

proc setBackgroundColor*(self: NSTextView, color: NSColor) {.objc: "setBackgroundColor:".}
proc backgroundColor*(self: NSTextView): NSColor {.objc: "backgroundColor".}

proc setDrawsBackground*(self: NSTextView, flag: BOOL) {.objc: "setDrawsBackground:".}
proc drawsBackground*(self: NSTextView): BOOL {.objc: "drawsBackground".}

proc setTextContainer*(self: NSTextView, container: NSTextContainer) {.objc: "setTextContainer:".}
proc textContainer*(self: NSTextView): NSTextContainer {.objc: "textContainer".}

proc insertText*(self: NSTextView, text: ID) {.objc: "insertText:".}

# Selection methods
proc selectedRange*(self: NSTextView): NSRange {.objc: "selectedRange".}
proc setSelectedRange*(self: NSTextView, range: NSRange) {.objc: "setSelectedRange:".}

# Rich text methods
proc setRichText*(self: NSTextView, flag: BOOL) {.objc: "setRichText:".}
proc isRichText*(self: NSTextView): BOOL {.objc: "isRichText".}

# Field editor methods
proc setFieldEditor*(self: NSTextView, flag: BOOL) {.objc: "setFieldEditor:".}
proc isFieldEditor*(self: NSTextView): BOOL {.objc: "isFieldEditor".}

# Undo support
proc setAllowsUndo*(self: NSTextView, flag: BOOL) {.objc: "setAllowsUndo:".}
proc allowsUndo*(self: NSTextView): BOOL {.objc: "allowsUndo".}

# Delegate
proc setDelegate*(self: NSTextView, delegate: ID) {.objc: "setDelegate:".}
proc delegate*(self: NSTextView): ID {.objc: "delegate".}

# Font and text attributes
proc setFont*(self: NSTextView, font: NSFont) {.objc: "setFont:".}
proc font*(self: NSTextView): NSFont {.objc: "font".}

# Scrolling
proc scrollRangeToVisible*(self: NSTextView, range: NSRange) {.objc: "scrollRangeToVisible:".}

# Text storage access
proc textStorage*(self: NSTextView): NSTextStorage {.objc: "textStorage".}