
// 1
class ThisIsSuperClass {
}

class ThisIsSubClass:ThisIsSuperClass {
}

// 2

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func printValue() {
        print("Name \(name)")
    }
}

class Student: Person {
 
}

let student = Student(name: "Rubén")
student.printValue()

// 3
class Vehicle {
    var color: String
    
    init(color: String) {
        self.color = color
    }
}

class Car: Vehicle {
    var model: String
    var numberOfWheels: Int
    
    init(model: String, numberOfWheels: Int, color: String) {
        self.model = model
        self.numberOfWheels = numberOfWheels
        super.init(color: color)
    }
    
    func printCarProperties(){
        print("Car model \(model), color \(color) and number of wheels \(numberOfWheels)")
    }
}

let audi = Car(model: "Audi A3", numberOfWheels: 4, color: "Gray")
audi.printCarProperties()

// 4
// Al usar final no podemos heredar la clase en ninguna otra.
// Si lo intentamos obtenemos un error del compilador

// 6
class Animal {
    var velocity: Double { 20.0 }
    
    func sound() {
        print("...")
    }
}

class Lion: Animal {
    override var velocity: Double { 33.0 }
    
    override func sound() {
        print("GRUAURR 🦁")
    }
}

let lion = Lion()
lion.velocity
lion.sound()
