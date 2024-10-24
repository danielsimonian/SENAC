programa {
  funcao inicio() {
    inteiro n, numeroMaior, posicao
    numeroMaior = 0
    posicao = 0
    
    escreva ("Quantos números você vai digitar? ")
    leia (n)

    inteiro lista[n]

    para (inteiro i = 0; i < n; i++){
      escreva ("Digite um número: ")
      leia (lista[i])
    }

    para (inteiro i = 0; i < n; i++){
      se (lista[i] > numeroMaior){
        numeroMaior = lista[i]
        posicao = i
      }
    }

    escreva("MAIOR VALOR = ", numeroMaior)
    escreva("\n")
    escreva("POSIÇÃO DO MAIOR VALOR = ", posicao)
  }
}
