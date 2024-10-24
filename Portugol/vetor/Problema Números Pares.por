programa {
  funcao inicio() {
    inteiro n, soma, pares
    pares = 0

    escreva("Quantos números vocês vai digitar? ")
    leia(n)

    inteiro numero[n]

    para (inteiro i = 0; i < n; i++){
      escreva("Digite um número: ")
      leia(numero[i])
    }

    escreva("VALORES = ")
    para (inteiro i = 0; i < n; i++){
      se (numero[i] % 2 == 0){
          escreva(numero[i], " ")
          pares++
        }
    }
    
    escreva("\n")
    escreva("QUANTIDADE DE PARES = ", pares)
  }
}
