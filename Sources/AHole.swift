

// MARK: AHole

/*
    What it means to be a hole type?
    It means you can be initialized with a default, non intrusive value that is still valid
    but as a mean of a placeholder to satisfy the type system.
 */

public protocol AHoleType {
    static func holed() -> Self
}

public func _hole_<A: AHoleType>(file: StaticString = #file, line: UInt = #line) -> A {
    print("AHole: Using a hole for type \(A.self) at line \(line) in file \(file)")
    return A.holed()
}