//
//  Item.swift
//  Eggeplant-brownie
//
//  Created by HP on 11/02/21.
//

import UIKit

class Item: NSObject {
        let nome: String
        let calorias: Double
        
        init(nome: String, calorias: Double) {
            self.nome = nome
            self.calorias = calorias
        }
}


