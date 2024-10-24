programa {
  inclua biblioteca Matematica

  real distancia, combustivelGasto, consumo
  funcao inicio() {
    escreva("Distância percorrida: ")
    leia(distancia)
    escreva("Combustível gasto: ")
    leia(combustivelGasto)
    consumo = Matematica.arredondar(distancia/combustivelGasto,2)

    escreva("Consumo Médio: ", consumo)
  }
}
