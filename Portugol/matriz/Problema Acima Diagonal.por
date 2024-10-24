programa {
  funcao inicio() {
    inteiro n, soma
    soma = 0

    escreva("Qual a ordem da matriz? ")
    leia(n)

    se (n <= 10){
      inteiro matriz[n][n]

      para (inteiro linha = 0; linha < n; linha++){
        para (inteiro coluna = 0; coluna < n; coluna++){
          escreva("Elemento: [", linha, ", ", coluna,"]: ")
          leia(matriz[linha][coluna])
        }
      }

      escreva("SOMA DOS ELEMENTOS ACIMA DA DIAGONAL = ")
      para (inteiro linha = 0; linha < n; linha++){
        para (inteiro coluna = linha + 1; coluna < n; coluna++){
            soma = soma + matriz[linha][coluna]
        }
      }
      escreva(soma)
    } senao {
        escreva("Digite um valor de linhas e colunas MENOR OU IGUAL A 10!\n")
        inicio()
      }  
  }
}
