var myVariable: Int = 42   // Explicitly typed
let myConstant = 50        // Inferred type

myVariable = 100
// myConstant = 100  // Crash!

type(of: myVariable)
type(of: myConstant)

let scores = [75, 52, 93, 87, 41, 83]
type(of: scores)

// scores.append(8)  // Cannot change a constant even an object constant
// scores[2] = 175    // Cannot change a constant even an object constant

var totalPassing = 0
for score in scores {
    if score >= 60 {
        totalPassing += 1
    }
}
totalPassing

for i in 1...3 {
    print(i)
}
for i in 0..<3 {
    print(i)
}

totalPassing = 0
for i in 0..<scores.count {
    if scores[i] >= 60 {
        totalPassing += 1
    }
}
totalPassing
