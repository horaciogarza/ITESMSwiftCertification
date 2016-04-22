//
//  Datos.swift
//  Hamburguesas
//
//  Created by Horacio Garza on 21/04/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import Foundation

class ColeccionDePaises{

    init() {
    
    }
    var paises:[String] = ["🇨🇦 Candadá", "🇦🇷 Argentina", "🇨🇺 Cuba", "🇩🇪 Alemania", "🇰🇵 Corea del Norte", "🇺🇸 Estados Unidos", "🇪🇸 España", "🇧🇷 Brasil", "🇫🇷 Francia", "🇲🇽 México",
                           "🇬🇧 Reino Unido", "🇷🇴 Rumania", "🇿🇦 Jamaica", "🇨🇴 Colombia", "🇮🇪 Irlanda", "🇳🇱 Holanda", "🇪🇨 Ecuador", "🇦🇺 Australia", "🇺🇾 Uruguay", "🇨🇷 Costa Rica"];
    
    func obtenPais() -> String{
        
        let x = paises.count;
        return paises[(Int(arc4random())%x)];
    }
    
    
}

class ColeccionDeHamburguesa{
    
    init(){
    
    }
    var hamburguesas: [String] = ["Baby", "D Monster", "Double D Monster", "Triple D Monster", "Western", "Double Western", "Teriyaki", "TofuBurguer", "Vegan Burguer", "Mega Burguer", "Spanish Burguer", "Big Mac", "Famous", "Ballena", "Salchiburguer", "Hamburguesa de Pollo", "Vegetarian Burguer", "Casera", "Pan Horneado Burguer", "Big Mama Burguer"]
    
    func obtenHamburguesa() -> String{
        let x = hamburguesas.count;
        return hamburguesas[Int(arc4random())%x];
        
    }
}