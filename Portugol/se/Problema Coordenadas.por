programa {
  real x, y

  funcao inicio() {
    escreva("Valor de X: ")
    leia(x)
    escreva("Valor de Y: ")
    leia(y)
    // x e y positivos
    se
    (
      (x == 0) e (y == 0)
    )
    {
      escreva("Origem")
    }
      senao
      {
        // x e y positivos
        se
        (
          (x < 0) e (y < 0)
        )
        {
        escreva("Q3")
        }
        senao
        {
            // x positivo e y negativo
          se
          (
            (x > 0) e (y < 0)
          )
          {
            escreva("Q4")
          }
            senao
            {

          // x negativo e y positivo
              se
              (
                (x < 0) e (y > 0)
              )
              {
                escreva("Q2")
              }
                senao
                {
              // Eixo Y
                  se
                  (
                    (x == 0) 
                  )
                  {
                    escreva("Eixo Y")
                  }
                    senao
                    {
                  // Eixo X
                      se
                      (
                        (y == 0)
                      )
                      {
                        escreva("Eixo X")
                      }
                        senao
                        {
                      // Origem
                        (x > 0) e (y > 0)
                        escreva("Q1")
                      }
                    }
                  }
                }
              }
            }
          }
        }
