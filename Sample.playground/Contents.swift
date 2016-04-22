//: Playground - noun: a place where people can play

import UIKit

enum Velocidades:Int {

    case Apagado = 0
    case VelocidadBaja = 20;
    case VelocidadMedia = 50;
    case VelocidadAlta = 120;
    
    init(VelocidadInicial: Velocidades){
        self = VelocidadInicial;
    }
}

class Auto{
    
    var velocidad:Velocidades;
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        
    switch velocidad.rawValue {
            
        case 0:
            velocidad = Velocidades.VelocidadBaja;
            return (20, "Velocidad Baja")
            
        case 20:
            velocidad = Velocidades.VelocidadMedia;
            return (50, "Velocidad Media")
            
        case 50:
            velocidad = Velocidades.VelocidadAlta;
            return (120, "Velocidad Alta")
            
        case 120:
            velocidad = Velocidades.VelocidadMedia;
            return (50, "Velocidad Media")
            
        default:
            return (0, "Apagado")
            
        }
    }
    
    init(){
        self.velocidad = Velocidades.init(VelocidadInicial: Velocidades.Apagado);
    }
    
    
    

}

var auto:Auto = Auto()

for i in 0..<20{
    
    print(auto.velocidad.rawValue, auto.velocidad)
    auto.cambioDeVelocidad()
    

}


