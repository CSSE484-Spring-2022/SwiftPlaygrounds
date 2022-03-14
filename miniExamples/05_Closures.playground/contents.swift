var values = [10, 5, 2, 8, 3, 6, 1, 1000]

// Verbose Closure
var numValuesOver5 = values.reduce(0, {(runningTotal: Int, currentValue: Int) -> Int in
    return currentValue > 5 ? runningTotal + 1 : runningTotal
})
numValuesOver5




// Closure parameter name shorthand and trailing closure
numValuesOver5 = values.reduce(0) {(runningTotal: Int, currentValue: Int) -> Int in
    return currentValue > 5 ? runningTotal + 1 : runningTotal
}
numValuesOver5


numValuesOver5 = values.reduce(0) {(runningTotal, currentValue) in
    return currentValue > 5 ? runningTotal + 1 : runningTotal
}
numValuesOver5


// Most common pattern!
numValuesOver5 = values.reduce(0) {(runningTotal, currentValue) in
    currentValue > 5 ? runningTotal + 1 : runningTotal
}
numValuesOver5


// Shorter, but not recommended in this case
numValuesOver5 = values.reduce(0) { $1 > 5 ? $0 + 1 : $0 }


// A Closure using a closure for a variable









//numValuesOverLimit(values, limit: 5)
//numValuesOverLimit(values, limit: 9)


// Comparing func and closure syntax
func asAFunc(_ someString: String, _ someNumber: Int) -> String {
  return String(repeating: someString, count: someNumber)
}
let asAClosure = {(_ someString: String, _ someNumber: Int) -> String in
  return String(repeating: someString, count: someNumber)
}
asAFunc("Holy ", 3)
asAClosure("Holy ", 3)
