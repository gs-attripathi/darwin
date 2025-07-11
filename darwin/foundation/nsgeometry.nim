
import ../core_graphics/cggeometry

type
    NSPoint* = CGPoint
    NSRect* = CGRect
    NSSize* = CGSize
    NSRange* {.bycopy.} = object
        location*: int
        length*: int

proc NSMakePoint*(x, y: CGFloat): NSPoint =
    result.x = x
    result.y = y

proc NSMakeSize*(w, h: CGFloat): NSSize =
    result.width = w
    result.height = h

proc NSMakeRect*(x, y, w, h: CGFloat): NSRect =
    result.origin.x = x
    result.origin.y = y
    result.size.width = w
    result.size.height = h

proc NSMakeRange*(location, length: int): NSRange =
    result.location = location
    result.length = length
