import UIKit

public class Vendedor {
    var nome: String
    var idade: Int
    var cpf: String
    private var saldoConta: Double
    
    init(nome: String, idade: Int, cpf: String, saldoConta: Double) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoConta = saldoConta
    }
    
    func setSaldoConta(saldoConta: Double){
        self.saldoConta = self.saldoConta + saldoConta
    }
    
    func getSaldoConta() -> Double {
        return saldoConta
    }
    
    func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        if tipoDePeca == "terno" {
            if quantidadeDePecas >= 3 {
                let desconto = Double(quantidadeDePecas) * 50
                let valorFinal = Double(quantidadeDePecas * 400) - desconto
                setSaldoConta(saldoConta: valorFinal)
                print("Você teve um desconto de R$ \(desconto)")
            } else {
                let valorFinal: Double = Double(quantidadeDePecas * 400)
                setSaldoConta(saldoConta: valorFinal)
            }
        } else if tipoDePeca == "vestido" {
            if quantidadeDePecas >= 5 {
                let valorFinal = (Double(quantidadeDePecas * 900) - 250)
                print("Prabéns você ganhou um véu de noiva!")
                setSaldoConta(saldoConta: valorFinal)
            } else {
                let valorFinal = Double(quantidadeDePecas * 900)
                setSaldoConta(saldoConta: valorFinal)
            }
        } else if tipoDePeca == "boné" {
            if quantidadeDePecas >= 2 {
                if quantidadeDePecas % 2 == 0 {
                    let brindes = quantidadeDePecas / 2
                    let desconto = (Double(quantidadeDePecas / 2) * 50)
                    let valorFinal = Double(quantidadeDePecas * 50) - desconto
                    print("Parabéns você ganhou \(brindes) boné!")
                    setSaldoConta(saldoConta: valorFinal)
                } else {
                    let brindes = quantidadeDePecas / 2
                    let desconto = (Double(quantidadeDePecas / 2) * 50)
                    let valorFinal = Double(quantidadeDePecas * 50) - desconto
                    print("Parabéns você ganhou \(brindes) boné!")
                    setSaldoConta(saldoConta: valorFinal)
                }
            } else {
                let valorFinal = Double(quantidadeDePecas * 50)
                setSaldoConta(saldoConta: valorFinal)
            }
        } else {
            print("Produto Inexistente!")
        }
    }
}

let fulano = Vendedor(nome: "Fulano", idade: 32, cpf: "111222333-44", saldoConta: 1000.00)
print(fulano.getSaldoConta())
fulano.vender(quantidadeDePecas: 3, tipoDePeca: "terno")
print(fulano.getSaldoConta())

print("\n-------------------------\n")

let ciclano = Vendedor(nome: "Ciclano", idade: 49, cpf: "000999888-77", saldoConta: 3000.00)
print(ciclano.getSaldoConta())
ciclano.vender(quantidadeDePecas: 9, tipoDePeca: "vestido")
print(ciclano.getSaldoConta())

print("\n-------------------------\n")

let beltrano = Vendedor(nome: "Beltrano", idade: 25, cpf: "555444666-00", saldoConta: 500)
print(beltrano.getSaldoConta())
beltrano.vender(quantidadeDePecas: 2, tipoDePeca: "boné")
print(beltrano.getSaldoConta())

print("\n-------------------------\n")

let novato = Vendedor(nome: "Novato", idade: 45, cpf: "123456789-00", saldoConta: 0)
print(novato.getSaldoConta())
novato.vender(quantidadeDePecas: 2, tipoDePeca: "sapatos")
print(novato.getSaldoConta())



/*Exercício vendedor
Um vendedor de loja e possui nome, idade e cpf, saldo em conta vende em sua loja
ternos, vestidos e bonés, definir um método vender(quantidadeDePecas: Int,
tipoDePeca: String).
- Cada terno custa 400 reais, caso o cliente compre 3 ou mais ternos, ele recebe 50
de desconto para cada terno.
- Cada vestido custa 900 reais, caso o cliente compre 5 vestidos ele ganha um véu de
noiva de brinde que custa 250 reais.
- Cada boné custa 50 reais, e para cada 2 bonés vendidos, o terceiro é grátis.
encapsule todos os métodos necessários. */


