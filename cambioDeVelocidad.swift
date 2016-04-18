

var str = "Hello, Coursera"

enum Velocidades: Int {
    case Apagado  = 0 , VelocidadBaja  = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    func calculaVelocidades() -> Int{
            return Velocidades.VelocidadMedia.rawValue-self.rawValue
        }
    
    init( velocidadInicial : Velocidades ){
            self = velocidadInicial
        }
    
  

    }

    
var Velocidad = Velocidades.Apagado
Velocidad.rawValue
Velocidad.calculaVelocidades()



struct Auto{
    var marca :  String
    var precio : Double
    var velocidad : Velocidades
    
    
    init(marca : String, precio : Double , velocidad : Velocidades){
        self.marca = marca
        self.precio = precio
        self.velocidad = velocidad
    }
    
    func obtenerDescripcion() -> String{
        return "marca: \(marca) precio:\(precio) velocidad:\(velocidad)"
    }
    
    mutating func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        if(self.velocidad.rawValue == 0){
            let Velocidad1 = Velocidades.VelocidadBaja
            self.velocidad = Velocidad1
            return (20, "VelocidadBaja")
            
        }
        if(self.velocidad.rawValue == 20){
            let Velocidad1 = Velocidades.VelocidadMedia
             self.velocidad = Velocidad1
            return (50, "VelocidadMedia")
            
        }
        if(self.velocidad.rawValue == 50){
            let Velocidad1 = Velocidades.VelocidadAlta
             self.velocidad = Velocidad1
            return (120, "VelocidadAlta")
            
        }
        if(self.velocidad.rawValue == 120){
            let Velocidad1 = Velocidades.VelocidadMedia
             self.velocidad = Velocidad1
            return (50, "VelocidadMedia")
            
        }
        return(00, "Apagado")

    }
    
}

var Automovil = Auto(marca: "Mercedes", precio: 1.0, velocidad: Velocidad)

print(Automovil.marca)



var numeros = 0...20
for numero in numeros {
        print(Automovil.cambioDeVelocidad())
    // print(numero,"velocidad: \(Automovil.cambio")
    
}
