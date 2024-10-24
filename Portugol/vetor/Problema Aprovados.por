programa {
  funcao inicio() {
    inteiro n

    escreva("Qauntos alunos serão digitados? ")
    leia(n)

    cadeia nome[n]
    real nota1[n], nota2[n], soma, media

    para (inteiro i = 0; i < n; i++){
      escreva("Digite nome, primeira e segunda nota do ", i+1, "º aluno: \n")
      leia(nome[i])
      leia(nota1[i])
      leia(nota2[i])
    }

    escreva("Alunos aprovados: \n")
    para (inteiro i = 0; i < n; i++){
      soma = nota1[i] + nota2[i]
      media = soma/2
      se (media >= 6){
        escreva(nome[i], "\n")
      }
    }
  }
}
