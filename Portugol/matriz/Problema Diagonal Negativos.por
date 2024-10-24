programa {
  funcao inicio() {
    inteiro n, negativos
    negativos = 0

    escreva("Qual a ordem da matriz? ")
    leia(n)

    se (n <= 10){
      inteiro matriz[n][n]

      para (inteiro linha = 0; linha < n; linha++){
        para (inteiro coluna = 0; coluna < n; coluna++){
          escreva("Elemento [", linha, ", ", coluna, "]: ")
          leia(matriz[linha][coluna])
        }
      }

      escreva ("DIAGONAL PRINCIPAL: \n")

      para (inteiro linha = 0; linha < n; linha++){
        para (inteiro coluna = 0; coluna < n; coluna++){
          se (linha == coluna){
            escreva (matriz[linha][coluna], " ")
          }
          se (matriz[linha][coluna] < 0){
            negativos++
          }
        }
      }     
    } senao {
      escreva("Digite um valor de linhas e colunas MENOR OU IGUAL A 10!\n")
      inicio()
    }  

    escreva("\n")
    escreva("QUANTIDADE DE NEGATIVOS = ", negativos)
  }
}
