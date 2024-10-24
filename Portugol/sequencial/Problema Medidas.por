programa {
  inclua biblioteca Matematica --> mat

  real a, b, c, areaQuadrado, areaTriangulo, areaTrapezio

  funcao inicio() {
    escreva("Digite a medida A: ")
    leia(a)
    escreva("Digite a medida B: ")
    leia(b)
    escreva("Digite a medida C: ")
    leia(c)
    areaQuadrado = mat.potencia(a,2)
    areaTriangulo = (a*b)/2
    areaTrapezio = ((a+b)*c)/2

    escreva("¡REA DO QUADRADO = ", areaQuadrado)
    escreva("\n¡REA DO TRIANGULO = ", areaTriangulo)
    escreva("\n¡REA DO TRAP…ZIO = ", areaTrapezio)
  }
}


