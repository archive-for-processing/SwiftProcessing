import Foundation
import UIKit

public extension Sketch {

//    func abs(_ n: CGFloat) -> CGFloat{
//        return fabs(n)
//    }

    func constrain(_ n: CGFloat, _ low: CGFloat, _ high: CGFloat) -> CGFloat {
        return Swift.min(Swift.max(n, low), high)
    }

    func distance(_ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat) -> CGFloat {
        let distanceSquared = (x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)
        return sqrt(distanceSquared)
    }

    func lerp(_ start: CGFloat, _ stop: CGFloat, _ amt: CGFloat) -> CGFloat {
        return start + ((stop - start) * amt)
    }

    func mag(_ a: CGFloat, _ b: CGFloat) -> CGFloat {
        return distance(0, 0, a, b)
    }

    func map(_ value: CGFloat, _ start1: CGFloat, _ stop1: CGFloat, _ start2: CGFloat, _ stop2: CGFloat, _ withinBounds: Bool = true) -> CGFloat {
        let newval = (value - start1) / (stop1 - start1) * (stop2 - start2) + start2
        if !withinBounds {
          return newval
        }
        if start2 < stop2 {
          return self.constrain(newval, start2, stop2)
        } else {
          return self.constrain(newval, stop2, start2)
        }
    }

    func max(_ array: [CGFloat]) -> CGFloat {
        return array.max() ?? 0
    }

    func min(_ array: [CGFloat]) -> CGFloat {
        return array.min() ?? 0
    }

    func norm(_ num: CGFloat, _ start: CGFloat, _ stop: CGFloat) -> CGFloat {
        return self.map(num, start, stop, 0, 1)
    }

    func sq(_ num: CGFloat) -> CGFloat {
        return pow(num, 2)
    }
}
