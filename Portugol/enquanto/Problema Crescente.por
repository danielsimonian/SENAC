programa {
  inteiro x, y


  funcao inicio() {
    escreva("Digite dois números: \n")
    leia(x)
    leia(y)

    enquanto (x != y)
    {
      se
      (
        x > y
      )
      {
        escreva("DECRESCENTE!")
        escreva("\nDigite outros dois números: \n")
        leia(x)
        leia(y)
      }
      senao
      {
        se
        (
          x < y
        )
        {
          escreva("CRESCENTE!")
          escreva("\nDigite outros dois números: \n")
          leia(x)
          leia(y)
        }
      }
    }
    
  }
}
