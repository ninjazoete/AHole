
import Foundation

extension String: AHoleType {
    static public func holed() -> String {
        return ""
    }
}

extension Int: AHoleType {
    static public func holed() -> Int {
        return 0
    }
}

extension Float: AHoleType {
    static public func holed() -> Float {
        return 0
    }
}

extension Double: AHoleType {
    static public func holed() -> Double {
        return 0
    }
}

extension Date: AHoleType {
     static public func holed() -> Date {
        return Date()
    }
}