programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    inteiro n, menor16
    real somaAltura, mediaAltura, porcentagemMenor16
    cadeia pessoaMenor = "" //zera a string

    somaAltura = 0
    mediaAltura = 0
    menor16 = 0

    escreva("Quantas pessoas serão digitadas? ")
    leia(n)

    cadeia nome[n]
    inteiro idade[n]
    real altura[n]

    para (inteiro i = 0; i < n; i++){
      escreva("Nome: ")
      leia(nome[i])
      escreva("Idade: ")
      leia(idade[i])
      escreva("Altura: ")
      leia(altura[i])

      se (idade[i] < 16){
        menor16++
        pessoaMenor += nome[i] + "\n"
      }
    }

    para (inteiro i = 0; i < n; i++){
      somaAltura = somaAltura + altura[i]
    }

    mediaAltura = somaAltura/n
    porcentagemMenor16 = (100*menor16)/n

    escreva("Altura média: ", mediaAltura)
    escreva("\n")
    escreva("Pessoas com menos de 16 anos: ", porcentagemMenor16, "%")
    escreva("\n")
    escreva(pessoaMenor)
  }
}
