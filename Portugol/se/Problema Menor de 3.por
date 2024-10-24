programa {
  inteiro a, b, c

  funcao inicio() {
    escreva("Primeiro valor: ")
    leia(a)
    escreva("Segundo valor: ")
    leia(b)
    escreva("Terceiro valor: ")
    leia(c)

    se
    (
      (a <= b) e (a <= c)
    )
    {
      escreva("Menor: ", a)
    }
    senao
    {
      se 
      (
        (b <= a) e (b <= c)
      )
      {
        escreva("Menor: ", b)
      }
      senao
      {
        escreva("Menor: ", c)
      }
    }
  }
  }
