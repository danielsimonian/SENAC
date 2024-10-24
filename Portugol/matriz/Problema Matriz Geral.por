programa {
  funcao inicio() {
    inteiro n, x, somaPositivos = 0, elementosDiagonal = 0

    escreva("Qual a ordem da matriz? ")
    leia(n)

    se (n <= 10){
      inteiro matriz[n][n], matrizAlt[n][n]

      para (inteiro linha = 0; linha < n; linha++){
        para(inteiro coluna = 0; coluna < n; coluna++){
          escreva("Elemento [", linha, ", ", coluna,"]: ")
          leia(matriz[linha][coluna])
        }
      }

      //somaPositivos
      para (inteiro linha = 0; linha < n; linha++){
        para (inteiro coluna = 0; coluna < n; coluna++){
          se (matriz[linha][coluna] > 0){
            somaPositivos = somaPositivos + matriz[linha][coluna]
          }
        }
      }
      escreva ("SOMA DOS POSITIVOS: ", somaPositivos, "\n")
      escreva ("\n")

      //elementosLinha
      escreva ("Escolha uma linha: ")
      leia (x)
      escreva ("LINHA ESCOLHIDA: ")
      para (inteiro coluna = 0; coluna < n; coluna++){
        escreva(matriz[x][coluna], " ")
      }

      //elementosColuna
      escreva ("\n")
      escreva ("\n")
      escreva ("Escolha uma coluna: ")
      leia (x)
      escreva ("COLUNA ESCOLHIDA: ")
      para (inteiro linha = 0; linha < n; linha++){
        escreva(matriz[linha][x], " ")
      }

      //diagonalPrincipal
      escreva ("\n")
      escreva ("\n")
      escreva("DIAGONAL PRINCIPAL: ")
      para (inteiro linha = 0; linha < n; linha++){
        para (inteiro coluna = 0; coluna < n; coluna++){
          se (linha == coluna){
            escreva(matriz[linha][coluna])
          }
        }
      }

      //matrizAlterada
      escreva ("\n")
      escreva ("\n")
      escreva("MATRIZ ALTERADA: ")
      escreva ("\n")
      para (inteiro linha = 0; linha < n; linha++){
        para (inteiro coluna = 0; coluna < n; coluna++){
          se (matriz[linha][coluna] < 0){
            matriz[linha][coluna] = matriz[linha][coluna] * matriz[linha][coluna]
          }
          escreva(matriz[linha][coluna], " ")
        }
        escreva("\n")
      }
    }  
  }
}


