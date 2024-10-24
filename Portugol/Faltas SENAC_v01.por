programa {
  funcao inicio() {
    inteiro diasUc, diasFaltas
    real porcentagemDeFaltas

    escreva("Quantos dias tem de UC?\n")
    leia(diasUc)
    escreva("Quantos dias você irá faltar?\n")
    leia(diasFaltas)
    porcentagemDeFaltas = (100*diasFaltas)/diasUc 
    escreva("Você faltou ", porcentagemDeFaltas, "%\n\n")
    
    se
    (
      porcentagemDeFaltas > 25 
    )
    {
      escreva(">>>>>> REPETIRÁ <<<<<<\n")
    }
    senao
    {
      escreva(">>>>>> NÃO REPETIRÁ <<<<<<\n")
    }
  }
}
