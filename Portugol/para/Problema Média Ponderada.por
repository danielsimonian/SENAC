programa {
  inclua biblioteca Matematica --> math

  inteiro x
  real n1, n2, n3, m

  funcao inicio() {
    escreva("Quantos casos você vai digitar? ")
    leia(x)

    para(inteiro i = 1; i <= x; i++){
      escreva("Digite três números: \n")
      leia(n1)
      leia(n2)
      leia(n3)
      m = ((n1 * 2) + (n2 * 3) + (n3 * 5))/(2 + 3 + 5)
      escreva("MÉDIA = ", math.arredondar(m,1), "\n")
    }
  }
}
