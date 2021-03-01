//
//  RefeicoesTableViewController.swift
//  Eggeplant-brownie
//
//  Created by HP on 16/02/21.
//

import UIKit // Biblioteca de interface do usuário.

class RefeicoesTableViewController: UITableViewController{
    
    var refeicoes = [Refeicao(nome: "Presunto", felicidade: 3),
                 Refeicao(nome: "Mortadela", felicidade: 4),
                 Refeicao(nome: "Queijo", felicidade: 5)]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell (style: .default, reuseIdentifier: nil)
        
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        
        return celula
    }
    
    func add(_ refeicao: Refeicao){
        print("Método add: \(refeicao.nome)") // teste de chamada de método no console
        refeicoes.append(refeicao)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewcontroller = segue.destination as? ViewController{
            viewcontroller.TableViewController = self
        }
        
    }
}
