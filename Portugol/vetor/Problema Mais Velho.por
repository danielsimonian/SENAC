programa {
  funcao inicio() {
    inteiro n, maisVelho, posicaoVelho
    maisVelho = 0
    posicaoVelho = 0

    escreva("Quantas pessoas você vai digitar? ")
    leia(n)

    cadeia nome[n]
    inteiro idade[n]
    

    para (inteiro i = 0; i < n; i++){
      escreva("Dados da ", i+1, "ª pessoa: \n")
      escreva("Nome: ")
      leia(nome[i])
      escreva("Idade: ")
      leia(idade[i])
    }

    para (inteiro i = 0; i < n; i++){
      se (idade[i] > maisVelho) {
        maisVelho = idade[i]
        posicaoVelho = i
      }
    }
    escreva("PESSOA MAIS VELHA: ", nome[posicaoVelho])
  }
}
