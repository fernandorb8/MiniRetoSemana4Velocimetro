enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    init(){
        self.velocidad = Velocidades(velocidadInicial : Velocidades.Apagado)
    }
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        var velocidadEnCadena = ""
        switch velocidad{
        case .Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Velocidad Baja"
        case .VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Media"
        case .VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad Alta"
        case .VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Media"
        }
        return (self.velocidad.rawValue, velocidadEnCadena)
    }
}

var auto = Auto()

for _ in 1...20 {
    let salida = auto.cambioDeVelocidad()
    print("\(salida.actual),\(salida.velocidadEnCadena)")
}
