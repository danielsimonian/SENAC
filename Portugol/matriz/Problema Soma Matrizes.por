programa {
  funcao inicio() {
    inteiro l, c

    escreva("Quntas linhas vai ter cada matriz? ")
    leia(l)
    escreva("Quantas colunas vai ter cada matriz? ")
    leia(c)

    se (l ou c <= 10) {
      inteiro matrizA[l][c], matrizB[l][c], matrizC[l][c]

      //Matriz A
      escreva("Digite os valores da matriz A: \n")
      para (inteiro linha = 0; linha < l; linha++){
        para (inteiro coluna = 0; coluna < c; coluna++){
          escreva("Elemento [", linha, ", ", coluna, "]: ")
          leia(matrizA[linha][coluna])
        }
      }

      //Matriz B
      escreva("Digite os valores da matriz B: \n")
      para (inteiro linha = 0; linha < l; linha++){
        para (inteiro coluna = 0; coluna < c; coluna++){
          escreva("Elemento [", linha, ", ", coluna, "]: ")
          leia(matrizB[linha][coluna])
        }
      }

      //Matriz C
      para (inteiro linha = 0; linha < l; linha++){
        para (inteiro coluna = 0; coluna < c; coluna++){
          matrizC[linha][coluna] = matrizA[linha][coluna] + matrizB[linha][coluna]
        }
      }
        //imprima
      para (inteiro linha = 0; linha < l; linha++){
        para (inteiro coluna = 0; coluna < c; coluna++){
          escreva(matrizC[linha][coluna], " ")
        }
        escreva("\n")
      }
    } senao {
        escreva("Digite um valor de linhas e colunas MENOR OU IGUAL A 10!\n")      
        inicio()
    }
  }
}
