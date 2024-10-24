programa {
  funcao inicio() {
    inteiro n

    escreva("Quantos valores vai ter cada vetor? ")
    leia(n)
    
    inteiro vetorA[n], vetorB[n], vetorC[n]
    
    //Vetor A
    escreva("Digite os valores de A: \n")
    para (inteiro i = 0; i < n; i++){
      leia (vetorA[i])
    }

    //Vetor B
    escreva("Digite os valores de B: \n")
    para (inteiro i = 0; i < n; i++){
      leia (vetorB[i])
    }

    //Vetor C
    escreva("VETOR RESULTANTE: \n")
    para (inteiro i = 0; i < n; i++){
      escreva(vetorA[i] + vetorB[i], "\n")
    }
  }
}
