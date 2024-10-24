programa {
  inteiro alcool, gasolina, diesel, x

  funcao inicio() {
    alcool = 0
    gasolina = 0
    diesel = 0
    
    enquanto (x != 4){
      escreva("Informe um codigo (1, 2, 3) ou 4 para parar: ")
      leia(x)
      se (x == 1){
        alcool = alcool + 1
      }
      senao{
        se (x == 2){
          gasolina = gasolina + 1
        }
        senao{
          se (x == 3){
            diesel = diesel + 1
          }
        }
      }
    }
    escreva("MUITO OBRIGADO!")
    escreva("\n¡lcool: ", alcool)
    escreva("\nGasolina: ", gasolina)
    escreva("\nDiesel: ", diesel)
  }
}

