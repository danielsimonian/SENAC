programa {
  funcao inicio() {
    inteiro n, soma, numerosPares
    real media
    soma = 0
    media = 0
    numerosPares = 0

    escreva("Quantos elementos vai ter o vetor? ")
    leia(n)

    inteiro lista[n]

    para (inteiro i = 0; i < n; i++){
      escreva("Digite um número: ")
      leia(lista[i])
    }

    para (inteiro i = 0; i < n; i++){
      se (lista[i] % 2 == 0){
        soma = soma + lista[i]
        numerosPares++
      }
    }

    se (soma != 0){
      media = soma/numerosPares
      escreva("MÉDIA DOS PARES = ", media)
    }

    senao {
      escreva("NENHUM NÚMERO PAR")
    }
  }
}
