programa {
  real salario, novoSalario, aumento, porcentagem

  funcao inicio() {
    escreva("Digite o salário da pessoa: R$ ")
    leia(salario)
    se
    (
      salario <= 1000
    )
    {
      novoSalario = salario*(1.2)
      escreva("Novo salário: R$ ", novoSalario)
      aumento = novoSalario - salario
      escreva("\nAumento: R$ ", aumento)
      porcentagem = (novoSalario*100/salario)-100
      escreva("\nPorcentagem: ", porcentagem, "%")
    }
    se
    (
      (salario > 1000) e (salario <= 3000)
    )
    {
      novoSalario = salario*(1.15)
      escreva("Novo salário: R$ ", novoSalario)
      aumento = novoSalario - salario
      escreva("\nAumento: R$ ", aumento)
      porcentagem = (novoSalario*100/salario)-100
      escreva("\nPorcentagem: ", porcentagem, "%")
    }
    se
    (
      (salario > 3000) e (salario <= 8000)
    )
    {
      novoSalario = salario*(1.1)
      escreva("Novo salário: R$ ", novoSalario)
      aumento = novoSalario - salario
      escreva("\nAumento: R$ ", aumento)
      porcentagem = (novoSalario*100/salario)-100
      escreva("\nPorcentagem: ", porcentagem, "%")
    }
    se
    (
      (salario > 8000)
    )
    {
      novoSalario = salario*(1.05)
      escreva("Novo salário: R$ ", novoSalario)
      aumento = novoSalario - salario
      escreva("\nAumento: R$ ", aumento)
      porcentagem = (novoSalario*100/salario)-100
      escreva("\nPorcentagem: ", porcentagem, "%")
    }
  }
}
