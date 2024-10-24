programa {
  cadeia nome
  real valorHora, horaTrabalhada, pagamento
  funcao inicio() {
    escreva("Nome: ")
    leia(nome)
    escreva("Valor por hora: R$ ")
    leia(valorHora)
    escreva("Horas trabalhadas: ")
    leia(horaTrabalhada)
    pagamento = valorHora*horaTrabalhada
    escreva("O pagamento para ", nome, " deve ser R$ ", pagamento)
  }
}
