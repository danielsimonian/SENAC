programa {
  real x, y, media

  funcao inicio() {
    //primeira nota
    escreva("Digite a primeira nota: ")
    leia(x)
    enquanto (x < 0)
    {
      x = x + 1
      escreva("Valor inválido! Tente novamente: ")
      leia(x)
    }
    //segunda nota
    escreva("Digite a segunda nota: ")
    leia(y)
    enquanto (y < 0)
    {
      y = y + 1
      escreva("Valor inválido! Tente novamente: ")
      leia(y)
    }
    //média
    media = (x + y)/2
    escreva("MÉDIA = ", media)
    
  }
}
