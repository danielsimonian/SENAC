programa {

  funcao inicio() {
      inteiro numero, resultado, contador
      escreva("Deseja a tabuada para qual valor? ")
      leia(numero)
    
    para (contador = 1; contador <= 10; contador++){
      resultado = contador * numero
      escreva(numero, " X ", contador, " = ", resultado, "\n")
    }
  }
}
