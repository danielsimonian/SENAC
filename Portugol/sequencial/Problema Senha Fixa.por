programa {
  inteiro senha
  funcao inicio() {
    escreva("Digite a senha: ")
    leia(senha)

    enquanto (senha != 5431)
    {
      escreva("Senha Inválida! Tente novamente: ")
      leia(senha)
    }
    escreva("Acesso permitido!")
  }
}