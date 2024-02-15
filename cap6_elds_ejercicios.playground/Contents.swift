
// 1
func greeting(greet: String, personToGreet person: String) {
    print("\(greet) \(person)")
}

greeting(greet: "Hello", personToGreet: "Idril")

// 2
func upperString(stringToUppercase str: String) -> String {
    return str.uppercased()
}

upperString(stringToUppercase: "Hey Jude!")

// 3
func multiplyTwoNumbers(_ n1: Int, _ n2: Int) -> Int {
    return n1 * n2
}

multiplyTwoNumbers(5, 5)

// 4
func getTuple() -> (String, Bool, Int) {
    ("Idx", true, 839462)
}

let tuple = getTuple()

// 5
func showAccesData(userToAccess user: String, accessState state: Bool = false) {
    print("The user \(user) have access: \(state)")
}

showAccesData(userToAccess: "rubseg")
showAccesData(userToAccess: "maryc", accessState: true)

// 6
let numbers = [1,15,47,23,8]
func showNumbers(numbersToShow numbers: [Int]) {
    if !numbers.isEmpty {
        for number in numbers {
            print(number)
        }
    }
}

showNumbers(numbersToShow: numbers)

// 7
var counter = 0
var username = "isthebetadev"

func updateProperties(counter: inout Int, username: inout String) {
    counter = 1_000
    username = "isthebetadev learn Swift"
}

updateProperties(counter: &counter,
                 username: &username)

print(counter)
print(username)

// 8
func validator(n1: Int, n2: Int) -> Bool {
    return n1 > n2
}

validator(n1: 5, n2: 23)

// 9
func validateUser(name: String) -> Bool {
    var fullName = name + " " + "Youtube Channel"
    return isValid(value: fullName)
    
    func isValid(value: String) -> Bool {
        value.count > 5
    }
}

validateUser(name: "isthebetadev")

// 10
func getEmail() -> String {
    "qwerty@qwerty.com"
}

func getPassword() -> String {
    "123456789"
}

func login(withEmail email: String,
           withPassword password: String) {
    print(email)
    print(password)
}

login(withEmail: getEmail(),
      withPassword: getPassword())
