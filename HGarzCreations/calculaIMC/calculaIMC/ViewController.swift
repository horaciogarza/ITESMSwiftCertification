//
//  ViewController.swift
//  calculaIMC
//
//  Created by Horacio Garza on 23/04/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estatura: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        peso.delegate = self;
        estatura.delegate = self;
    }
    
    @IBAction func quitKeyboardOnEnter(sender: UITextField){
        
        sender.resignFirstResponder();
        
    }
    @IBAction func quitKeyboardOnExtCtrl(sender: UIControl){
        
        peso.resignFirstResponder();
        estatura.resignFirstResponder();
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculaIMC(sender: AnyObject) {
        
        let pesoValor: Double? = Double(peso.text!);
        let alturaValor: Double? = Double(estatura.text!)! * Double(estatura.text!)!;
        
        let imc: Double = (pesoValor!/alturaValor!)
        
        result.text = String(imc);
        
    }

}

