programa {
inteiro a, b, resultado

  funcao inicio() {
    escreva("Digite dois números inteiros: \n")
    leia(a)
    leia(b)
    se
    (
      (a % b == 0) ou (b % a == 0)
    )
    {
      escreva("São multiplos")
    }
    senao
    {
      escreva("Não são multiplos")
    }
  }
}
