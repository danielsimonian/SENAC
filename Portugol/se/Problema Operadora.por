programa {
  real minutos, minutoExcedido, valor1, valorAdicional, valorFinal
  funcao inicio() {
    escreva("Digite a quantidade de minutos: ")
    leia(minutos)
    valor1 = 50.00
    se
    (
      minutos <= 100
    )
    {
      escreva("Valor a pagar: R$ ", valor1)
    }
    senao
    {
      minutoExcedido = (minutos-100)
      valorAdicional = minutoExcedido*2.00
      valorFinal = valor1 + valorAdicional
      escreva("Valor a pagar: R$ ", valorFinal)
    }
  }
}
