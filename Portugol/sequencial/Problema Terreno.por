programa {
  funcao inicio() {
    real larguraTerreno, alturaTerreno, areaTerreno, valorM2Terreno, valorTerreno

    escreva("Qual a largura do terreno?\n")
    leia(larguraTerreno)
    escreva("Qual o comprimento do terreno?\n")
    leia(alturaTerreno)
    escreva("Qual o valor do m2 do terreno?\n")
    leia(valorM2Terreno)
    areaTerreno = larguraTerreno*alturaTerreno
    valorTerreno = areaTerreno*valorM2Terreno
    escreva("A área do terreno é: ", areaTerreno, "m2", ", e seu valor é: R$ ", valorTerreno)
  }
}
