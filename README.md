AHole is Idris inspired hole approach for Swift. Its implementation is really trivial. It works as a generic inferred type by compilers type inference algorithm. Leave implementation for later, first focus on types and application flow by using `_hole_()`.

CommonTypesCompatibility includes basic collection of types which conform to `AHoleType`. You can easily extended it for your own types as well as types from foundation, UIKIt etc.

Writing quick void implementations was never that easy. Just use `_hole_()` wherever you need to satisfy a compiler and jump to next context.

## Examples
`func multiply(lhs: Int, rhs: Int) -> Int {
   return _hole_()
}`

`let letterCounts: (String) -> Int = { _ in _hole_() }`

`let coordinates: Set<Double> = _hole_()`
