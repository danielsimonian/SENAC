programa {
  real x, y
  funcao inicio() {

    enquanto (x != 0 e y != 0)
    {
      escreva("Digite os valores das coordenadas X e Y: \n")
      leia(x)
      leia(y)
      se
      (
        (x > 0) e (y > 0)
      )
      {
        escreva("Quadrante Q1\n")
      }
      senao
      {
        se
        (
          (x > 0) e (y < 0)
        )
        {
          escreva("Quadrante Q4\n")
        }
        senao
        {
          se
          (
            (x < 0) e (y > 0)
          )
          {
            escreva("Quadrante Q2\n")
          }
          senao
          {
            se
            (
              (x < 0) e (y < 0)
            )
            {
              escreva("Quadrante Q3\n")
            }
          }
        }
      }
    }
  }
}
