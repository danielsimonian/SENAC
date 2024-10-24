programa {
  inteiro n, x
 
  funcao inicio() {  
    escreva("Digite o valor de N menor que 15: ")
    leia(n)
    se (n <= 15){
      x = 1
      para (inteiro f = 1; f <= n; f++){
        x = (x * f)
      }
      escreva ("FATORIAL = ", x)
    }
    senao {
      inicio()
    }
  }
}
