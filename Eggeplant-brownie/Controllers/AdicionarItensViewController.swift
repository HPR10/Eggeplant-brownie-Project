//
//  AdicionarItensViewController.swift
//  Eggeplant-brownie
//
//  Created by HP on 04/03/21.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item: Item)
}

class AdicionarItensViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var nometextfield: UITextField!
    @IBOutlet weak var caloriastextfield: UITextField!
    
    // MARK: - Atributos
    
    var delegate:AdicionaItensDelegate?
    init(delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
     // MARK: - IBAction
    
    
    @IBAction func adicionarItem(_ sender: Any) {
        guard let nome = nometextfield.text, let calorias = caloriastextfield.text else {
            return
        }
        if let numeroDeCalorias = Double(calorias) {
            let item = Item(nome: nome, calorias: numeroDeCalorias)
            delegate?.add(item)
            _ = Item(nome: nome, calorias: numeroDeCalorias);        navigationController?.popViewController(animated: true)
        }
    }
}
