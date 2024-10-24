programa {
  funcao inicio() {
    inteiro l, c
    real soma = 0

    escreva("Qual a quantidade de linhas? ")
    leia(l)
    escreva("Qual a quantidade de colunas? ")
    leia(c)

    se (l ou c <=10){
      inteiro matriz[l][c]

      para (inteiro linha = 0; linha < l; linha++){
        escreva("Digite os elementos da ", linha+1, "ª linha: \n")
        para (inteiro coluna = 0; coluna < c; coluna++){
          leia(matriz[linha][coluna])
        }
      }

      escreva("VETOR GERADO: \n")
      para (inteiro linha = 0; linha < l; linha++){
        para (inteiro coluna = 0; coluna < c; coluna++){
          soma = soma + matriz[linha][coluna]
        }
        escreva(soma, "\n")
        soma = 0
      }
    }
    senao {
      escreva("Digite um valor de linhas e colunas MENOR OU IGUAL A 10!\n")
      inicio()
    }
  }
}
