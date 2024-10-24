programa {
  inteiro hora, minuto, segundo, valor
  funcao inicio() {
    escreva("Digite a duração em segundos: ")
    leia(valor)
    hora = valor/3600
    minuto = (valor % 3600) / 60
    segundo = (valor % 3600) % 60
    
    escreva(hora, ":", minuto, ":", segundo)
  }
}
