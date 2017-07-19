

// MARK: AHole

/*
    What it means to be a hole type?
    It means you can be initialized with a default, non intrusive value that is still valid
    but as a mean of a placeholder to satisfy type system.
 */

public protocol AHoleType {
    static func holed() -> Self
}

public func _hole_<A: AHoleType>(file: StaticString = #file, line: UInt = #line) -> A {
    print("AHOLE:: Using a hole at line \(line) in file \(file)")
    return A.holed()
}