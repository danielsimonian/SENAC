programa {
  inclua biblioteca Matematica --> math
  real x, valorTotal
  inteiro quantidade
  

  funcao inicio() {
    escreva("Código do produto comprado: ")
    leia(x)
    //produto 1
    se
    (
      x == "1"
    )  
    {
      escreva("Quantidade comprada: ")
      leia(quantidade)
      
      valorTotal = 5.00*quantidade
      escreva("Valor a pagar: R$ ", math.arredondar(valorTotal,2))
    }
    //produto 2
    se
    (
      x == "2"
    )  
    {
      escreva("Quantidade comprada: ")
      leia(quantidade)
      
      valorTotal = 3.50*quantidade
      escreva("Valor a pagar: R$ ", math.arredondar(valorTotal,2))
    }
    //produto 3
    se
    (
      x == "3"
    )  
    {
      escreva("Quantidade comprada: ")
      leia(quantidade)
      
      valorTotal = 4.80*quantidade
      escreva("Valor a pagar: R$ ", math.arredondar(valorTotal,2))
    }
    //produto 4
    se
    (
      x == "4"
    )  
    {
      escreva("Quantidade comprada: ")
      leia(quantidade)
      
      valorTotal = 8.90*quantidade
      escreva("Valor a pagar: R$ ", math.arredondar(valorTotal,2))
    }
    //produto 5
    se
    (
      x == "5"
    )  
    {
      escreva("Quantidade comprada: ")
      leia(quantidade)
      
      valorTotal = 7.32*quantidade
      escreva("Valor a pagar: R$ ", math.arredondar(valorTotal,2))
    }
  }
}
