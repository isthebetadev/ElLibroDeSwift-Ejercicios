// 1
struct Developer {
    var name: String
    var role: String
    var age: Int
    
    func showDevData() {
        print("Devname: \(self.name) with role: \(self.role) and age \(self.age)")
    }
}

let dev = Developer(name: "Rubén", role: "iOS Developer", age: 28)
dev.showDevData()

// 2
class Bot {
    var conversationId: Int
    var name: String
    var text: String
    
    init(conversationId: Int, name: String, text: String) {
        self.conversationId = conversationId
        self.name = name
        self.text = text
    }
    
    func showBotData() {
        print("Bot \(name) with identifier \(conversationId) have a text: \(text)")
    }
}

let bot = Bot(conversationId: 954223, name: "IdrilGPT", text: "Draw a mountain view")
bot.showBotData()

// 3
// Class se puede desinicializar Struct no
// Class tiene herencia Struct no
// En Class necesitamos inicilizador para las props y en Struct no

// 4
class App {
    var name: String
    var size: String
    
    init(name: String,
         size: String) {
        self.name = name
        self.size = size
    }
}

// Creo una instancia de App y la asigno a una variable
var whatsapp = App(name: "WhatsApp",
              size: "101 MB")

// Asigno la instancia almacenada en whatsapp y la asigno a 2 variables
var instagram = whatsapp
var facebook = whatsapp

// Cualquier cambio en alguna de estas 3 variables se va a ver reflejado en las demás, vamos a demostrarlo
facebook.name = "Facebook"

print(facebook.name)
print(whatsapp.name)
print(instagram.name)

// Ahora todas las propiedades name tienen el mismo valor

// 5
struct User {
    var name: String
    var job: String
}

// Creo una instancia de User y la asigno a una variable
var swiftbeta = User(name: "isthebetadev",
                     job: "iOS Developer")

// Asigno la instancia almacenada en swiftbeta y la asigno a 2 variables
var timCook = swiftbeta
var billGates = swiftbeta

// Cualquier cambio en alguna de estas 3 variables NO se va a ver reflejado en las demás, vamos a demostrarlo
timCook.name = "Tim Cook"

print(swiftbeta.name)
print(timCook.name)
print(billGates.name)

// 6
// Si es posible pero hay que tener cuenta que Class es reference type y Struct es value type
