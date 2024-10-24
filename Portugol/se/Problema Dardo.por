programa {
  real a, b, c

  funcao inicio() {
    escreva("Digite as três distâncias: \n")
    leia(a)
    leia(b)
    leia(c)

    se
    (
      (a > b) e (a > c)
    )
    {
      escreva("MAIOR DISTÂNCIA = ", a)
    }
    se
    (
      (b > a) e (b > c)
    )
    {
      escreva("MAIOR DISTÂNCIA = ", b)
    }
    senao {
      escreva("MAIOR DISTÂNCIA = ", c)
    }
  }
}
