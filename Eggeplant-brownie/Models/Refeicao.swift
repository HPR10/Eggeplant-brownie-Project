//
//  Refeicao.swift
//  Eggeplant-brownie
//
//  Created by HP on 11/02/21.
//

import UIKit

class Refeicao: NSObject {
    // MARK: - Classe
        let nome: String
        let felicidade: Int
        let itens: Array<Item> = []             // Criando uma lista vazia

        
    // MARK: - Método init
        init (nome:String, felicidade: Int) {
            self.nome = nome
            self.felicidade = felicidade
        }
        
    // MARK: - Métodos
        func totalDeCalorias() -> Double {
            var total = 0.0
            for item in itens {
                total += item.calorias
        }
            return total
    }
}
