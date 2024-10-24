programa {
  inclua biblioteca Matematica --> math
  real precoProduto, quantidadeProduto, valorDaCompra, valorRecebido, troco

  funcao inicio() {
    escreva("Preço unitário do produto: ")
    leia(precoProduto)
    escreva("Quantidade comprada: ")
    leia(quantidadeProduto)
    escreva("Dinheiro recebido: ")
    leia(valorRecebido)
    valorDaCompra = precoProduto*quantidadeProduto
    troco = valorRecebido - valorDaCompra
    
    se
    (
      valorDaCompra < valorRecebido 
    )
    {
      escreva("SEU TROCO É DE: R$ ", troco)
    }
    se
    (
      valorDaCompra > valorRecebido
    )
    {
      escreva("DINHEIRO INSUFICIENTE. FALTAM ", math.arredondar(valorDaCompra-valorRecebido,2), " REAIS")
    }
    se
    (
      valorDaCompra == valorRecebido
    )
    {
      escreva("OBRIGADO!")
    }
    
    
  }
}
