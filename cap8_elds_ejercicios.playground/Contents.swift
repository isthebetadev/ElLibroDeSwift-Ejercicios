
// 1
struct User {
    // prop instancia
    var name: String
    // prop de tipo
    static var newUser: Bool = true
    
}

var user = User(name: "isthebetadev")
user.name
User.newUser

// modificamos las prop de instancia
user.name = "rubén"
user.name

// modificamos las prop de tipo
User.newUser = false
User.newUser

// 2
class App {
    var name: String
    var numberOfDowloads: Int
    
    static var category: String = "Productivity"
    
    init(name: String, numberOfDowloads: Int) {
        self.name = name
        self.numberOfDowloads = numberOfDowloads
    }
}

var app = App(name: "pomodoro", numberOfDowloads: 253)
app.name
app.numberOfDowloads
App.category

app.name = "basket and potatoes"
app.numberOfDowloads = 0
App.category = "Games"
app.name
app.numberOfDowloads
App.category

// 3
struct Calculator {
    var initialValue: Int
    
    var multiplyByTwo: Int {
        get {
            initialValue
        }
        
        set {
            initialValue = newValue * 2
        }
    }
}

// Creamos la instancia de Calculator
var calculator = Calculator(initialValue: 2)

// El resultado al llamar al get de la propiedad computada es el valor de inicial de initialValue
calculator.multiplyByTwo

// Asignamos un nuevo valor a la propiedad computada para ejecutar el código del set
calculator.multiplyByTwo = 4

// Ahora el resultado al llamar al get de la propiedad computada es 8
calculator.multiplyByTwo

// 4
struct Chat {
    var messages: [String] = [] {
        willSet {
            print("messages will change \(newValue)")
        }
        didSet {
            print("messages did change")
        }
    }
}

var chat = Chat()

// Al añadir valores al Array se muestra por consola los print que hemos añadido en el willSet y didSet
chat.messages.append("Hello, welcome to this book")
chat.messages.append("🎁")
chat.messages.append("isthebetadev")



// 5

@propertyWrapper
struct PropertyValidation {
    private var name: String
    
    init() { self.name = "" }
    
    var wrappedValue: String {
        get { name }
        set {
            if newValue.count > 10 {
                self.name = newValue
                print("Valid name")
            } else {
                print("Error")
            }
        }
    }
}

struct Client {
    @PropertyValidation var email: String
    @PropertyValidation var promoCode: String
}

var client = Client()
client.email = "qwerty@qwerty.com"
client.promoCode = "12345678910"
