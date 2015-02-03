//
//  ViewController.swift
//  Calcolatrice
//
//  Created by Antonio Virgone on 30/11/14.
//  Copyright (c) 2014 Antonio Virgone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numeroLabel : UILabel!
    @IBOutlet var operazioneLabel :UILabel!
    
    var ultimoNumero : String = ""
    
    var prova = "ciao mondo"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println(prova)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numero(button: UIButton) {        
        var numero = button.titleLabel?.text
        
        print(numeroLabel.text)
        
        if(numeroLabel.text == "0") {
            numeroLabel.text = button.titleLabel?.text
        }
        else {
            numeroLabel.text = numeroLabel.text! + numero!
        }
    }
    
    @IBAction func clear() {
        numeroLabel.text = ""
    }
    
    @IBAction func somma() {
        if(operazioneLabel.text == "") {
            operazioneLabel.text = "+"
            ultimoNumero = numeroLabel.text!
            numeroLabel.text = "0"
        }
        else {
            operazioneLabel.text = "+"
            uguale(nil)
        }
    }
    
    @IBAction func differanza() {
        if(operazioneLabel.text == "") {
            operazioneLabel.text = "-"
            ultimoNumero = numeroLabel.text!
            numeroLabel.text = "0"
        }
        else {
            operazioneLabel.text = "-"
            uguale(nil)
        }
    }
    
    @IBAction func prodotto() {
        if(operazioneLabel.text == "") {
            operazioneLabel.text = "*"
            ultimoNumero = numeroLabel.text!
            numeroLabel.text = "0"
        }
        else {
            operazioneLabel.text = "*"
            uguale(nil)
        }
    }
    
    @IBAction func divisione() {
        if(operazioneLabel.text == "") {
            operazioneLabel.text = "/"
            ultimoNumero = numeroLabel.text!
            numeroLabel.text = "0"
        }
        else {
            operazioneLabel.text = "/"
            uguale(nil)
        }
    }
    
    @IBAction func uguale(AnyObject?) {
        var numero1 = ultimoNumero.toInt()
        var numero2 = numeroLabel.text?.toInt()
        
        var uguale = 0
        
        if(operazioneLabel.text == "+") {
            uguale = numero1! + numero2!
        }
        else if(operazioneLabel.text == "-") {
            uguale = numero1! - numero2!
        }
        else if(operazioneLabel.text == "*") {
            uguale = numero1! * numero2!
        }
        else if(operazioneLabel.text == "/") {
            uguale = numero1! / numero2!
        }
        
        numeroLabel.text = "\(uguale)"
        operazioneLabel.text = ""
        ultimoNumero = ""
    }
}

