programa {
  inclua biblioteca Matematica --> math
  caracter x
  real temperaturaC, temperaturaF, c, f

  funcao inicio() {
    escreva("Você vai digitar a temperatura em qual escala (C/F): ")
    leia(x)
    se
    (
      x == "c"
    )
    {
      escreva("Digite a temperatura em Celsius: ")
      leia(c)
      temperaturaF=(c*1.8)+32
      escreva("Temperatura equivalente em Fahrenheit: ", math.arredondar(temperaturaF,2))
    }
    se
    (
      x == "f"
    )
    {
      escreva("Digite a temperatura em Fahrenheit: ")
      leia(f)
      temperaturaC=(f - 32)/1.8
      escreva("Temperatura equivalente em Celsius: ", math.arredondar(temperaturaC,2))
    }
  }
}
