programa {
  //declaração de variáveis
  inteiro diasUc, diasFaltas, uc
  real porcentagemDeFaltas
  caracter existeMaisUc
    
  //função que aprova ou reprova  
  funcao aprovacao(){
    porcentagemDeFaltas = (100*diasFaltas)/diasUc 
    escreva("Você faltará ", porcentagemDeFaltas, "% na UC", uc, ", portanto:\n\n")
    se(porcentagemDeFaltas > 25)
    {
      escreva(">>>>>> REPETIRÁ <<<<<<\n\n")
    }
    senao
    {
      escreva(">>>>>> NÃO REPETIRÁ <<<<<<\n\n")
    }
    }

  //função que reúne todas as UCs
  funcao inicio() 
  {
    //UC 1
    escreva("Qual o número da UC?\n")
    leia(uc)
    escreva("Quantos dias tem a UC", uc, "?\n")
    leia(diasUc)
    escreva("Quantos dias você irá faltar?\n")
    leia(diasFaltas)
    aprovacao()
    escreva("Existem mais UCs para calcular? Responda: s(sim) ou n(não)\n")
    leia(existeMaisUc)
    se
    (
      existeMaisUc == "s"
    )
    {
      inicio()
    }
  }
    
  

}
