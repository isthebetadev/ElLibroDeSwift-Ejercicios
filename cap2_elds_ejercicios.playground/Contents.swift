
// 1
var name: String = "Idril"
var age: Int = 1
var haveChip: Bool = true

// 2
name = "Rocky"
age = 11
haveChip = false

// 3
let logged = true
let username = "idril1234"
let accessCode = 1234

// 4
let myName = "Rubén"
// myName = "María" -> error porque una variable no puede modificar su valor

// 5
var numberOne = 2, numberTwo = 3
var result = numberOne + numberTwo

// 6
typealias Text = String
var title: Text = "Aprendiendo Swift con SwiftBeta"

// 7
let (coche, marca, edicionGR) = ("C-HR", "Toyota", true)

// 8 -> si se puede
let nestedTuple = (("SwiftBeta", "swiftbeta.com"), "Aprende", "Swift", 10, true)

// 9
let ((titles, web), action, numberOfChapters, isSuscriber) = (("SwiftBeta", "swiftbeta.com"), "Aprende Swift", 10, true)
print(titles)
print(web)
print(action)
print(numberOfChapters)
print(isSuscriber)
