programa {
  funcao inicio() {
    inteiro n, f, m
    f = 0
    m = 0

    escreva("Quantas pessoas serão digitadas? ")
    leia(n)

    real altura[n], maiorAltura, menorAltura, somaF, mediaF
    caracter genero[n]
    maiorAltura = 0
    menorAltura = 0
        somaF = 0

    para (inteiro i = 0; i < n; i++){
      escreva("Altura da ", i+1, "ª pessoa: ")
      leia(altura[i])
      escreva("Gênero da ", i+1, "ª pessoa: ")
      leia(genero[i])
    }

    //calcula maior altura
    para (inteiro i = 0; i < n; i++){
      se(altura[i] > maiorAltura){
        maiorAltura = altura[i]
      }

      se (menorAltura == 0){
        menorAltura = altura[i]
      } senao{
          se(altura[i] < menorAltura){
            menorAltura = altura[i]
          }
        }

    }

    //calcula menor altura
   /* para (inteiro i = 0; i < n; i++){
      se (menorAltura == 0){
        menorAltura = altura[i]
      } senao{
          se(altura[i] < menorAltura){
            menorAltura = altura[i]
          }
        }
    }*/


    //media das alturas das mulheres
    para (inteiro i = 0; i < n; i++){
      se (genero[i] == "f" ou "F"){
        somaF = somaF + altura[i]
        f++
      }
    }
    mediaF = somaF/f

    //número de homens
    para (inteiro i = 0; i < n; i++){
      se (genero[i] == "m" ou "M"){
        m++
      }
    }

    escreva("Menor altura = ", menorAltura, "\n")
    escreva("Maior altura = ", maiorAltura, "\n")
    escreva("Media das alturas das mulheres = ", mediaF, "\n")
    escreva("Número de homens = ", m)
  }
}
