//
//  ViewController.swift
//  Eggeplant-brownie
//
//  Created by HP on 09/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nometextfield: UITextField!         //Force On App
    @IBOutlet var felicidadetextfield: UITextField!
    
    @IBAction func Adicionar(_ sender: Any) {
        let nome = nometextfield.text
        let felicidade = felicidadetextfield.text
        print("Comi \(String(describing: nome)) e fiquei com felicidade:\(felicidade)")
    }
}

 
