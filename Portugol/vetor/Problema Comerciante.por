programa {
  funcao inicio() {
    inteiro n, abaixo10, entre10e20, maior20
    abaixo10 = 0
    entre10e20 = 0
    maior20 = 0

    escreva("Serão digitados dados de quantos produtos? ")
    leia(n)

    cadeia produto[n]
    real precoCompra[n], precoVenda[n], porcentagem, lucro, totalCompra, totalVenda
    totalCompra = 0
    totalVenda = 0

    para (inteiro i = 0; i < n; i++){
      escreva("Produto ", i+1,": \n")
      escreva("Nome: ")
      leia(produto[i])
      escreva("Preço da compra: ")
      leia(precoCompra[i])
      escreva("Preço da venda: ")
      leia(precoVenda[i])
      totalCompra = totalCompra + precoCompra[i]
      totalVenda = totalVenda + precoVenda[i]
    }


    //lucro abaixo de 10%
    para (inteiro i = 0; i < n; i++){
      porcentagem = ((100*precoVenda[i])/precoCompra[i])
      lucro = porcentagem - 100
      se (lucro < 10){
        abaixo10++
      }
      se ((lucro >= 10) e (lucro <= 20)){
        entre10e20++
      }
      se (lucro > 20){
        maior20++
      }
    }

    escreva("Lucro abaixo de 10%: ", abaixo10, "\n")
    escreva("Lucro entre 10% e 20%: ", entre10e20, "\n")
    escreva("Lucro entre 10% e 20%: ", maior20, "\n")
    escreva("Valor total de compra: ", totalCompra, "\n")
    escreva("Valor total de venda: ", totalVenda, "\n")
    escreva("Lucro total: ", totalVenda - totalCompra)
  }
}
