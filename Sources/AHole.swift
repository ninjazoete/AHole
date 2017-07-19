

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
    _holeConditional(file: file, line: line)
    return A.holed()
}

// MARK: Private Utility

private func _runsOnSimulator() -> Bool {
    #if (arch(i386) || arch(x86_64)) && (os(iOS) || os(watchOS) || os(tvOS))
        return true
    #else
        return false
    #endif
}

private func _holeConditional(file: StaticString, line: UInt) {
    if _runsOnSimulator() {
        
        /*
         Assuming simulator is a debug build, print each hole's location.
        */
        
        print("AHOLE:: Using a hole at line \(line) in file \(file)")
    } else {
        
        /*
         When used on real device there is a big chance it is a production build
         so we don't allow holes.
        */
        
        fatalError("AHOLE:: A hole is used at line \(line) in file \(file)")
    }
}