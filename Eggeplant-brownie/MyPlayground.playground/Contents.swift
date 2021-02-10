import UIKit

let nome: String = "Pão"
let idade: Int = 29
let calorias: Double = 7.50
let vegetal: Bool = false

func alimentoConsumido(nome: String,calorias:Double){
    ("O alimento consumindo foi \(nome), com calorias \(calorias)")
}

alimentoConsumido(nome: nome,calorias: calorias)          //Para passar o método só com os parâmetros é necessário o _ antes de passar o parâmetro.


let caloria1: Double = 50.5
let caloria2: Double =  100
let calorias3: Double = 200
let calorias4: Double = 300

let totalCalorias = [50.5, 100, 200, 300, 450]
print(totalCalorias)

// FORMA 1
for i in 0...3 {
    print(i)
    print(totalCalorias[i])
}

// FORMA 2 - não muito recomendada, parece gambiarra
for i in 0...totalCalorias.count-1 {
    print(i)
    print(totalCalorias[i])
}

// FORMA 3 - mais utilizada, não é necessário se preocupar com elementos sendo adicionados na lista.
for caloria in totalCalorias{
    print(caloria)
}


let totalDeCalorias = [50.5,24]

func todasCalorias(totalDeCalorias: [Double]) -> Double{
    var total: Double = 0
    
    for caloria in totalDeCalorias{
        total += caloria
    }
    return total
}
let total = todasCalorias(totalDeCalorias: [55.5, 400, 80.5])
print(total)

