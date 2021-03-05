//
//  ViewController.swift
//  Eggeplant-brownie
//
//  Created by HP on 09/02/21.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao) // apenas a casquinha do método, não como é implementado
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    
    // MARK: - Atributos
    
    var delegate: AdicionaRefeicaoDelegate?  //variáveis opcional
 
    
    var itens: [Item] = [Item(nome: "Fubá", calorias: 50),
                          Item(nome: "Bolo", calorias: 25),
                          Item(nome: "Vodka", calorias: 150),
                          Item(nome: "Biscoito", calorias: 350)]
    
    var itensSelecionados: [Item] = []
    
    // MARK: - IBOutlets
    
    @IBOutlet var nometextfield: UITextField!         //Force On App
    @IBOutlet var felicidadetextfield: UITextField!
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let linhadatabela = indexPath.row
        let  item = itens[linhadatabela]
        celula.textLabel?.text = item.nome
        return celula
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let celula = tableView.cellForRow(at: indexPath) else { return }
        
        if celula.accessoryType == .none {
            celula.accessoryType = .checkmark
            
            let linhaDaTabela = indexPath.row
            itensSelecionados.append(itens[linhaDaTabela])

        } else {
            celula.accessoryType = .none
            
            let item = itens[indexPath.row]
            if let position = itensSelecionados.firstIndex(of: item){
                itensSelecionados.remove(at: position)
                
                // Teste
                
                for itensSelecionado in itensSelecionados {
                    print(itensSelecionado.nome)
                }
                
            }
            
        }
    }
    // MARK: - IBActions
    
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
 
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade, itens:[])
        
        
        
        print("Comi \(refeicao.nome) e fiquei com felicidade:\(refeicao.felicidade)")
        
        delegate?.add(refeicao)
        
        // Retorna pra essa tela, quando a tela ligada a essa for encerrada
        navigationController?.popViewController(animated: true)
    }
}
