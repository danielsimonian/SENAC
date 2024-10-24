programa {
  funcao inicio() {
    inteiro n, x
    real media, soma, abaixoDaMedia
    abaixoDaMedia = 0
    soma = 0

    escreva("Quantos elementos vai ter o vetor? ")
    leia(n)

    real lista[n]

    para (inteiro i = 0; i < n; i++){
      escreva("Digite um número: ")
      leia(lista[i])
    }

    para (inteiro i = 0; i < n; i++){
      soma = soma + lista[i]
    }
    
    media = soma/n
    escreva("MÉDIA DO VETOR = ", media, "\n")

    escreva("ELEMENTOS ABAIXO DA MÉDIA: \n")
    para (inteiro i = 0; i < n; i++){
      se (lista[i] < media){
        escreva(lista[i], "\n")
      }
    }
  }
}
