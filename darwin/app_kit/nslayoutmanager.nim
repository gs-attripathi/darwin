import ../objc/runtime
import ../foundation / [ nsgeometry ]
import ./ [ nstextstorage, nstextcontainer ]

type NSLayoutManager* = ptr object of NSObject

proc initWithTextStorage*(self: NSLayoutManager, textStorage: NSTextStorage): NSLayoutManager {.objc: "initWithTextStorage:".}

proc textStorage*(self: NSLayoutManager): NSTextStorage {.objc: "textStorage".}
proc setTextStorage*(self: NSLayoutManager, textStorage: NSTextStorage) {.objc: "setTextStorage:".}

proc addTextContainer*(self: NSLayoutManager, container: NSTextContainer) {.objc: "addTextContainer:".}
proc removeTextContainer*(self: NSLayoutManager, container: NSTextContainer) {.objc: "removeTextContainer:".}

proc glyphRangeForTextContainer*(self: NSLayoutManager, container: NSTextContainer): NSRange {.objc: "glyphRangeForTextContainer:".}
proc usedRectForTextContainer*(self: NSLayoutManager, container: NSTextContainer): NSRect {.objc: "usedRectForTextContainer:".}

proc invalidateLayoutForCharacterRange*(self: NSLayoutManager, range: NSRange) {.objc: "invalidateLayoutForCharacterRange:actualCharacterRange:".}
proc invalidateGlyphsForCharacterRange*(self: NSLayoutManager, range: NSRange) {.objc: "invalidateGlyphsForCharacterRange:changeInLength:actualCharacterRange:".} 