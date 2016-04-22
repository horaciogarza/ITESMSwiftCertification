//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Horacio Garza on 21/04/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var pais: UILabel!
    @IBOutlet weak var tipoDeHamburguesa: UILabel!
    
    var paisAMostrar: ColeccionDePaises = ColeccionDePaises();
    var hamburguesaAMostrar: ColeccionDeHamburguesa = ColeccionDeHamburguesa();
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func dameHamburguesa(sender: AnyObject) {
        
        pais.text = paisAMostrar.obtenPais();
        
        tipoDeHamburguesa.text = hamburguesaAMostrar.obtenHamburguesa();
    }
    
}

