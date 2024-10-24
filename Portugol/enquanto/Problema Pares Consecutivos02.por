programa {
<<<<<<< HEAD
  inteiro x, soma, resto

  funcao inicio() {
    enquanto (x != 0){
      escreva("Digite um número inteiro: ")
      leia(x)
      resto = x % 2
      se (resto == 0){ // se par
        soma = x + (x+2) + (x+4) + (x+6) + (x+8)
        escreva("SOMA = ", soma, "\n")
      }
      senao // se impar
      {
        soma = (x+1) + (x+3) + (x+5) + (x+7) + (x+9)
        escreva("SOMA = ", soma, "\n")
      }
      
    }  
  } 
}

=======
  funcao inicio() {
    inteiro x, soma

    escreva("Digite um número inteiro: ")
    leia(x)

    enquanto (x != 0){
      se (x % 2 == 0){
        soma = x + (x + 2) + (x + 4) + (x + 6) + (x + 8)
      }
      senao {
        soma = (x + 1) + (x + 3) + (x + 5) + (x + 7) + (x + 9)
      }
      escreva("SOMA = ", soma, "\n")
      escreva("Digite um número inteiro: ")
      leia(x)
    }
  }
}
>>>>>>> fac144ccfb3fc7b81fa4ac8e5494addffddaefce
