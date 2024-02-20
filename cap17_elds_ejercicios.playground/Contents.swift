// 1
enum Errores {
    case contraseñaIncorrecta
    case emailIncorrecto
    case passwordVacia
    case emailVacio
}

// 2
func login(password: String = "") throws {
    if password.isEmpty {
        throw Errores.passwordVacia
    }
    print("Login")
}

// 3
do {
    try login(password: "")
} catch {
    print(Errores.contraseñaIncorrecta)
}

// 4
try? login(password: "")
