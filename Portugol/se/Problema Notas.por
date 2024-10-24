programa {
  inclua biblioteca Matematica --> math

  real nota1, nota2, notaFinal

  funcao inicio() {
    escreva("Digite a primeira nota do aluno: ")
    leia(nota1)
    escreva("Digite a segunda nota do aluno: ")
    leia(nota2)
    notaFinal = nota1 + nota2

    se
    (
      notaFinal >= 60
    )
    {
      escreva("NOTA FINAL = ", math.arredondar(notaFinal,1))
    }
    senao
    {
      escreva("REPROVADO!")
    }
  }
}
