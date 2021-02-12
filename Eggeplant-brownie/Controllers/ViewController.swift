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
        
    // Mark - modo 1 verificar condição segura
        
//        if let nomeDaRefeicao = nometextfield?.text, let felicidadeDaRefeicao = felicidadetextfield?.text{
//            let nome = nomeDaRefeicao, if let felicidade = felicidadeDaRefeicao{
//                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
//                print("Comi \(String(describing: nome)) e fiquei com felicidade:\(felicidade)")
//            }
//        }
//    }
//}
        // Mark - modo 2 verificar condição segura
        
        guard let nomeDaRefeicao = nometextfield?.text else{
            return
        }
              
        guard let felicidadeDaRefeicao = felicidadetextfield?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }
 
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        
        print("Comi \(refeicao.nome) e fiquei com felicidade:\(refeicao.felicidade)")
    }
}
