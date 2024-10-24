programa {
  inclua biblioteca Matematica --> math
  
  real a, b, c, x1, x2, delta
  
  funcao inicio() {
    escreva("Coeficiente a: ")
    leia(a)
    escreva("Coeficiente b: ")
    leia(b)
    escreva("Coeficiente c: ")
    leia(c)
   se
   (
    math.potencia(b,2) > (4*a*c)
   )
   {
    delta = math.potencia(b,2)-(4*a*c)
    x1 = (-b + math.raiz(delta,2))/2*a
    x2 = (-b - math.raiz(delta,2))/2*a
    escreva("X1 = ", x1, "\n")
    escreva("X2 = ", x2, "\n")
   }
   senao
   {
    escreva("Esta equação não possui raizes reais!")
   }
  }
}
