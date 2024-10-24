programa {
  funcao inicio() {
    inteiro n, numeroMaior = 0
    
    escreva("Qual a ordem da matriz? ")
    leia(n)

    inteiro matriz[n][n]
    
    se (n <= 10){
      
      para (inteiro linha = 0; linha < n; linha++){
        para (inteiro coluna = 0; coluna < n; coluna++){
          escreva("Elemento [", linha, ", ", coluna, "]: ")
          leia(matriz[linha][coluna])
        }
      }

      escreva("MAIOR ELEMENTO DE CADA LINHA: \n")

      para (inteiro linha = 0; linha < n; linha++){
        para (inteiro coluna = 0; coluna < n; coluna++){
          se (matriz[linha][coluna] > numeroMaior){
          numeroMaior = matriz[linha][coluna]
          }
        }
        escreva(numeroMaior, "\n")
        numeroMaior = 0
      }







    } senao {
      escreva("Digite um valor de linhas e colunas MENOR OU IGUAL A 10!\n")
      inicio()
    }  
  }
}
