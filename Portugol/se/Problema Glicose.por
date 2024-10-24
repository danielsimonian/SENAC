programa {
  real glicose
  funcao inicio() {
    escreva("Digite a medida da glicose: ")
    leia(glicose)
    se
    (
      glicose <= 100
    )
    {
      escreva("Classificação: normal")
    }
    se
    (
      (glicose > 100) e (glicose <= 140)
    )
    {
      escreva("Classificação: elevado")
    }
    se
    (
      glicose > 140
    )
    {
      escreva("Classificação: diabetes")
    }
  }
}
