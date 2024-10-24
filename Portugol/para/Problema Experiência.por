programa {
  inclua biblioteca Matematica --> math
  caracter tipoCobaia
  inteiro qntTeste, qntCobaia, c, r, s, qntCobaiaTotal
  real pC, pR, pS

  funcao inicio() {
    c = 0
    r = 0
    s = 0
    qntCobaiaTotal = 0
    

    escreva("Quantos casos de teste serão digitados? ")
    leia(qntTeste)

    para (inteiro i = 1; i <= qntTeste; i++){
      escreva("Quantidade de cobaias: ")
      leia (qntCobaia)
      escreva("Tipo de cobaia: ")
      leia (tipoCobaia)
      
      //coelho
      se (tipoCobaia == "C" ou tipoCobaia == "c"){
        c = c + qntCobaia 
        qntCobaiaTotal = qntCobaiaTotal + qntCobaia
      }
      senao{
        //rato
        se (tipoCobaia == "R" ou tipoCobaia == "r"){
          r = r + qntCobaia
          qntCobaiaTotal = qntCobaiaTotal + qntCobaia
        }
        senao {
          //sapo
          se (tipoCobaia == "S" ou tipoCobaia == "s"){
            s = s + qntCobaia
            qntCobaiaTotal = qntCobaiaTotal + qntCobaia
          }
          senao {
            escreva("DIGITO INVÁLIDO!\n")
            escreva("Favor digitar: C, R ou S\n")
            i--
          }
        }
      }
    }
    //Calculando a %
    pC = (100 * c)/qntCobaiaTotal
    pR = (100 * r)/qntCobaiaTotal
    pS = (100 * s)/qntCobaiaTotal

    escreva("Total: ", qntCobaiaTotal, " cobaias\n")
    escreva("Total de coelhos: ", c, "\n")
    escreva("Total de ratos: ", r, "\n")
    escreva("Total de sapos: ", s, "\n")
    escreva("Percentual de coelhos: ", math.arredondar(pC,2), "%\n")
    escreva("Percentual de ratos: ", math.arredondar(pR,2), "%\n")
    escreva("Percentual de sapos: ", math.arredondar(pS,2), "%\n")
  }
}
