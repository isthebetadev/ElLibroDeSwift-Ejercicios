

// 1
enum DaysOfWeek {
    case monday
    case tuesday
    case wenesday
    case thursday
    case friday
    case saturday
    case sunday
}

let thisDay: DaysOfWeek = .friday

// 2
enum Move {
    case top
    case bottom
    case right
    case left
    
    init(moveSelected: String) {
        guard moveSelected == "top" else {
            self = .right
            return
        }
        self = .top
    }
}

let topDirection: Move = .init(moveSelected: "top")
let otherDirection: Move = .init(moveSelected: "other")

// 3
enum Device {
    case iPhone
    case iPad
    case laptop
    case appleWatch
    
    var name: String { "isthebetadev" }
    static func description() -> String {
        "learning Swift"
    }
}

let myDevice = Device.iPhone
myDevice.name
Device.description()

// 4
enum Shape {
    case square
    case rectangle
    case circle
}

let shape: Shape = .rectangle

switch shape {
case .circle:
    print("Its a circle")
case .rectangle:
    print("Its a rectangle")
case .square:
    print("Its a square")
}

// 5
enum Color {
    case red
    case green
    case blue
    case yellow
}

let myColor = Color.red

switch myColor {
case .red:
    print("Red")
default:
    print("Other Cases")
}

// 6
enum Sport: CaseIterable {
    case football
    case baskeball
    case tenis
    case formula1
}

print(Sport.allCases)

