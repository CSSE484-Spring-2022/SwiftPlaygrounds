// We already know about constants vs variables but there is another choice always present.
var x = 7
var f: Float = 7
//dave = "Bob"  // Would cause an error

// Part 1.
// Optionals

var optionalFloat: Float?
var requiredFloat: Float

// Implicitly Unwrapped Optionals
var implicitlyUnwrappedOptional : Float!

type(of: optionalFloat)
type(of: requiredFloat)

//optionalFloat = 5.0
print("optionalFloat = \(optionalFloat)")

// Optionals with forced unwrapping
//print("optionalFloat = \(optionalFloat!)")  // This would crash since force unwrapping an optional that is nil is a crash

//print("requiredFloat \(requiredFloat)")

type(of: implicitlyUnwrappedOptional)
print("implicitlyUnwrappedOptional \(implicitlyUnwrappedOptional)")

implicitlyUnwrappedOptional = 12.0
var someOtherFloat : Float = implicitlyUnwrappedOptional
someOtherFloat

let dave = "Dave"
let number = "7"

var optionalThatIsNotNill: Int = Int(number)!
print(optionalThatIsNotNill)

var optionalThatIsNill: Int? = Int(dave)
print(optionalThatIsNill)



// Part 2.
// Views in a Playground + Optional Chaining

import UIKit

var b = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
b.backgroundColor = UIColor.red
b.setTitle("Press me", for: UIControl.State.normal)

print(b.titleLabel)
print(b.titleLabel!.text)
print(b.titleLabel?.text)
print(b.titleLabel!.text!)



// Optional Binding
if let tempVariable = Int(number) {
    print("Temp variable exists \(tempVariable)")
} else {
    print("There is no temp variable.")
}

if let tempVariable = Int(dave) {
    print("Temp variable exists \(tempVariable)")
} else {
    print("There is no temp variable.")
}



// Casting
var someAny: Any = 7
var someInt: Int
var anotherInt: Int?
var anotherAny: Any

someInt = someAny as! Int     // as! means force unwrap, I as as developer know this will work (if not the case CRASH!)
anotherAny = someInt as Any   // as  means this by definition will work, the compiler knows it too (simple is fine)
anotherInt = someAny as? Int  // as? means this might work, it might not.  I don't know either.  If it fails safely write nil
