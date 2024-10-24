programa {
  inclua biblioteca Matematica --> mat
  real raio, area
  funcao inicio() {
    escreva("Digite o valor do raio do círculo: ")  
    leia(raio)
    area = 3.14*(mat.potencia(raio,2))
    escreva("ÁREA = ", area)
  }
}
