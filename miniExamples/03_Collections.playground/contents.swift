import UIKit

// Basics for arrays
var names = ["Dave", "Kristy", "McKinley", "Keegan", "Bowen", "Neala"]

names[1]
names[2] = "Kingsley"
names

// Appending values
names.append("Dubhliann")
names.append("Fionn")
if names.contains("Dave") {
    print("Dave is present")
}

names += ["Bob", "Amber"]
names

names.removeLast()
names

names.removeAll()
if names.isEmpty {
    print("It is empty")
} else {
    print("It has values")
}




// So, so, SO.. many things you could do with arrays...
var randomAges = [Int]()
for _ in 0..<100 {
    randomAges.append(Int(arc4random_uniform(90)))
}
var teenagers = randomAges.filter({
    return $0 > 12 && $0 < 20
})
teenagers.sorted(by: {
    return $0 < $1
})


// Dictionaries
var elements = ["H": "Hydrogen", "He": "Helium", "Li": "Lithium", "Be": "Beryllium", "B": "Boron", "C": "Carbon", "N": "Nitrogen", "O": "Oxygen"]
elements["C"]
elements["C"]!
elements["Z"]
for (symbol, name) in elements {
    if symbol == "H" || symbol == "O" {
        print("\(name) is present in water.")
    }
}


// Tuples - There is one really good use for a tuple (coming soon).
var tuple = ("item1", "item2", "item3", "item4")
tuple.2
var namedTuple = (first : "Dave", last : "Fisher")
namedTuple.last
