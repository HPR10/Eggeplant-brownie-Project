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
    
    func add(_ refeicao: Refeicao){         // oculta o parâmetro para melhor legibilidade do código é opcional.
        print("Método add: \(refeicao.nome)") // teste de chamada de método no console.
        refeicoes.append(refeicao)
        tableView.reloadData()  // Atualiza a tabela na tela quando um item seja adicionado.
    }
    
    // método que se prepara para exibir a proxima tela
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Identificador de segue
        if segue.identifier == "adicionar" {
            if let viewcontroller = segue.destination as? ViewController{
                viewcontroller.TableViewController = self
            }
            
        }
    }

}
        
        
