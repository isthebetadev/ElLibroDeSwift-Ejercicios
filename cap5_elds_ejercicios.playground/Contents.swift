

// 1

let condition = 500 > 200

if condition {
    print("El número es mayor")
} else {
    print("El número es menor")
}

// 2
var batteryLevel = 50

if batteryLevel > 99 {
    print("Batería alta")
} else if batteryLevel > 40 {
    print("Batería Media")
} else if batteryLevel < 60 {
    print("Batería Baja")
}

// 3
var youtubeChannel = "SwiftBeta"
switch youtubeChannel {
case let x where youtubeChannel.count > 20:
    print("Youtube count > 20")
default:
    print("Default")
}

// 4
if youtubeChannel.count > 20 {
    print("Youtube count > 20")
} else {
    print("Youtube count < 20")
}

// 5
let values = ["1","2","3","4","5"]
for number in values {
    print(number)
}

// 6
let numbers = [1,2,3,4,5,6,7,8,9,10]
for number in numbers where number.isMultiple(of: 2)  {
   print(number)
}
for number in numbers {
    if number % 2 != 0 {
        print(number)
    }
}

// 7
let dictionary: [String : Any] = ["name": "SwiftBeta",
                                  "numberOfSubscribers": 2500,
                                  "Youtube Channel": "@SwiftBeta"]

for (key, value) in dictionary {
    print(value)
}

// 8
let colors = ["blue", "orange", "red", "green"]
var counter = 0
repeat {
    print(colors[counter])
    counter += 1
} while counter < colors.count

// 9
enum Device {
    case iPhone
    case iPad
    case mac
    case appleWatch
}

let device: Device = .iPhone

switch device {
case Device.appleWatch:
    print("AppleWatch")
case Device.mac:
    print("Mac")
case Device.iPhone:
    print("iPhone")
case Device.iPad:
    print("iPad")
default :
    print("Not Apple device")
}
