
// 1
var message = "Estoy aprendiendo Swift"

// 2
var arrayString: [String] = ["Suscríbete", "Youtube"]
arrayString.append("Aprende Swift")
arrayString.count
arrayString.first
arrayString.last

// 3
var setNumbers: Set<Int> = [50,100,150,200]
setNumbers.insert(250)
setNumbers.insert(200)
setNumbers.count

// 4
var dictionaryString: [String:String] = ["name":"Rubén", "city":"Jaén", "age":"28"]
dictionaryString["name"]
dictionaryString.updateValue("Idril", forKey: "name")
dictionaryString.updateValue("Toyota", forKey: "car") // Error -> la key no existe
dictionaryString.removeAll()

// 5
let swiftbetax5 = Array(repeating: "SwiftBeta", count: 5)
print(swiftbetax5)

// 6
let strings = ["Swift", "SwiftUI", "Objective-C"]
let isSwiftUI = strings.contains("SwiftUI")
print("Array contains SwiftUI: \(isSwiftUI)")

// 7
struct User: Hashable {
    let name: String
}

let userOne = User(name: "UserOne")
let userTwo = User(name: "UserTwo")

var setOfUsers = Set([userOne, userTwo])

// Si ahora intentamos añadir otro user con el nombre UserTwo, vamos a ver qué ocurre.
let userThree = User(name: "UserTwo")
setOfUsers.insert(userThree)

// Aunque intentemos añadir UserTwo no se añade dentro del Set ya que tenemos un User con ese mismo nombre (y por lo tanto no lo duplicamos)
print(setOfUsers)
