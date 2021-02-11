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

// Arrays e Funções
 
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
 
// Criando uma classe
class Refeicao {
    let nome: String = "Churros"
    let felicidade: String = "5"
}

// Instanciando uma classe
let refeicao = Refeicao()
print(refeicao.nome)

// Classe 2
class Refeicao2 {
    let nome: String = "Macarrão"
    let felicidade: String = "4"
}

var refeicao2 = Refeicao()
print(refeicao2.nome)


// variáveis Optional

class Refeicao3 {
    var nome: String? = nil
    let felicidade: String? = nil     // O ? transforma variáveis com valores opcionais.
}
let refeicao3 = Refeicao3()
refeicao3.nome = "Feijão"

// Forced unwrap - O ! extrai o valor de uma variável opcionale imprime corretamente. Caso a variável não tenha valor o aplicativo crash.
print(refeicao3.nome!)

 
//// Boas praticas para extrair valores de opcionais
//if let nome = refeicao.nome {
//    print(nome)
//}
//
//// Guard let consegue acessar uma variável fora do seu escopo e o if let só o escopo local
//func exibeNomeDaRefeicao() {
//    if let nome = refeicao.nome{
//        print(nome)
//    }
//    guard let nome = refeicao.nome else {
//        return
//        print(nome)
//    }
//}
//exibeNomeDaRefeicao()


//let numero = Int("5")
//if let n  = numero{
//    print(n)
//} else {
//    print("Erro ao converter o número!!")
//}

class Pessoa {
  var nome:String?
}
let pedro = Pessoa()
print(pedro.nome)
