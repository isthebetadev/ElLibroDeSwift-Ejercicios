
// 1
protocol MyProtocol {}

// 2
protocol Printable {
    var value: String { get set }
    func printValues()
}

// 3
struct User: MyProtocol, Printable {
    var value: String
    
    func printValues() {
        print(self.value)
    }
    
}

// 4
protocol Validable {
    @objc optional func validateUser()
}

class LoginForm: Validable {
    func validateUser() {
        
    }
}


// 5, podemos crear protocolos donde sus métodos sean opcionales. Para hacerlo debemos usar @objc y también muy importante conformar el protocolo en clases.
 
protocol Buyable {
    var price: Double { get }
    func canBuy() -> Bool
}

// Creamos una extensión y añadimos un valor por defecto al contrato del protocolo. De esta manera cualquier tipo puede conformar este protocolo sin tener que implementar la propiedad price ni el meetodo canBuy()
extension Buyable {
    var price: Double { get { 200.0 } }
    
    func canBuy() -> Bool {
        if price < 250 {
            return true
        } else {
            return false
        }
    }
}

// Creamos el tipo Laptop y conformamos el protocolo Buyable
struct Laptop: Buyable { }

// Creamos una instancia y llamamos a los métodos que están en la extensión de Buyable
let laptop = Laptop()
laptop.price
laptop.canBuy()

// 6, podemos crear protocolos donde sus métodos sean opcionales. Para hacerlo debemos usar @objc y también muy importante conformar el protocolo en clases.

protocol Animatable {
    var duration: Double { get }
    
    init(duration: Double)
}

class OnboardingView: Animatable {
    var duration: Double
    
    required init(duration: Double) {
        self.duration = duration
    }
}
