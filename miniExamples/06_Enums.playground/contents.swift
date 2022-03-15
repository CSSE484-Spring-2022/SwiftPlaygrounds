// Basic enum

import Darwin


//enum Weekday {
//    case monday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//}
//var today : Weekday = Weekday.tuesday

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
var today : Weekday = .tuesday

switch today {
case .monday, .tuesday, .thursday:
    print("You have class")
case .wednesday:
    print("Weekend Wednesday!")
default:
    print("It's the weekend")
}

// Rawvalues
enum State: Int {
    case ready = 0
    case steady
    case go
    case noHomework
}
var raceState = State.steady
type(of: raceState)
raceState.rawValue

raceState = .noHomework

var nextRaceState = State(rawValue: 2)
type(of: nextRaceState)
nextRaceState?.rawValue

if nextRaceState == .go {
    print("Go!")
}


// Associated values and functions
enum HomeworkStatus {
    case noHomework
    case inProgress(Int, Int)
    case done
    
    func simpleDescription() -> String {
        switch self {
        case .noHomework:
            return "No Homework."
        case .inProgress(let numComplete, let total):
            return "You finished \(numComplete) out of \(total).  Remaining \(total - numComplete)"
        case .done:
            return "You finished your HW"
        }
    }
}

var myHwStatus = HomeworkStatus.inProgress(6, 10)
var myHwStatus2 = HomeworkStatus.inProgress(8, 100)
myHwStatus.simpleDescription()
myHwStatus2.simpleDescription()


myHwStatus = .noHomework
