programa {
  inclua biblioteca Matematica --> math
  inteiro x, n, d
  real divisao

  funcao inicio() {
  escreva("Quantos casos você vai digitar? ")
  leia(x)

  para(inteiro i = 1; i <= x; i++){
    escreva("Entre com o numerador: ")
    leia(n)
    escreva("Entre com o denominador: ")
    leia(d)

    divisao = n/d

    se(d == 0) {
      escreva("DIVISÃO IMPOSSÍVEL \n")
    }
    senao {
      escreva("DIVISÃO = ", math.arredondar(divisao,2), "\n")

    }
  }
  }
}
