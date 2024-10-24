programa {
  funcao inicio() {
    inteiro n, soma
    real media

    soma = 0
    media = 0

    escreva("Quantos números você vai digitar? ")
    leia(n)

    inteiro vetor[n]

    para (inteiro i = 0; i < n; i++){
      escreva("Digite um número: ")
      leia(vetor[i])
    }

    escreva("VALORES = ")
    para (inteiro i = 0; i < n; i++){
      escreva(vetor[i], " ")
    }

    escreva("\n")
    
    para (inteiro i = 0; i < n; i++){
      soma = soma + vetor[i]
    }

    para (inteiro i = 0; i < n; i++){
      media = soma/n
    }

    escreva("SOMA = ", soma, "\n")
    escreva("MÉDIA = ", media)
  }
}
