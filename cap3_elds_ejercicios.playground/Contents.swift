
// 1
var isSubscribed: Bool? = true
var isProUser = Optional(true)
var isLogged: Bool? = false


// 2
var myName: String? = "SwiftBeta"

// Modo seguro
if let name = myName {
    print("Valor de \(name)")
}

// Modo NO seguro
print(myName!)


// 3
var username: String? = nil
var myYoutubeChannel = myName ?? "SwiftBeta"


// 4 sí que es posible, en este caso estamos creando un opcional dentro de un opcional.
 
var myMessage: String?? = "Suscríbete a SwiftBeta"

// Al realizar el siguiente print, obtenemos por consola Optional(Optional("Suscríbete a SwiftBeta"))
print(myMessage)

// Para extraer el valor podemos usar if let
if let optionalMessage = myMessage {
    if let message = optionalMessage {
        print(message)
    }
}

// Incluso podemos hacer un force unwrap añadiendo !!
print(myMessage!!)


//5, sí que es posible, es el mismo caso que el ejercicio 4, para simplificar vamos a usar force unwrap añadiendo 4 símbolos de exclamación.

var myBlogMessage: String???? = "Suscríbete a SwiftBeta"
print(myBlogMessage!!!!)

// Hay que ir con especial atención, si añadimos un símbolo de exclamación de más tendremos un crash de nuestra apliación.


// 6, Al intentar hacer un force unwrap tenemos un error en nuestro Playground. Descomenta la siguiente línea y compila el Playground para ver el error exacto
 
var myBlog: String? = nil
//myBlog!

// El error que recibimos es "Fatal error: Unexpectedly found nil while unwrapping an Optional value". Es por eso que es más seguro usar métodos como if let, map, guard, ??, para extraer el valor de un opcional/


// 7, vamos a transformar M1X a Int. Para hacerlo usamos un inicializador Int("M1X"). En este caso almacenamos la transformación en laptopModelInt, y como esperábamos M1X no se puede representar como un Int, es por eso que su valor es nil
var laptopModel = "M1X"
var laptopModelInt = Int(laptopModel)
print(laptopModelInt)


// 8, para transformar un String a Int, usamos el inicializador de Int("2500"). Como en este caso se puede representar como un Int el resultado es Optional(2500).

var numberOfSubscribers = "2500"
var numberOfSubscribersInt = Int(numberOfSubscribers)
print(numberOfSubscribersInt)
