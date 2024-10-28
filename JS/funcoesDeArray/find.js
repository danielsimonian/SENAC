// 1
const numeros = [5, 8, 12, 3, 15];

// Encontra o primeiro número maior que 10
const primeiroMaiorQueDez = numeros.find(numero => numero > 10);

console.log(primeiroMaiorQueDez); // 12

// 2
const pessoas = [
    { nome: 'Ana', idade: 17 },
    { nome: 'João', idade: 20 },
    { nome: 'Maria', idade: 19 }
  ];
  
  // Encontra a primeira pessoa com idade maior que 18
  const primeiraPessoaMaiorDezoito = pessoas.find(pessoa => pessoa.idade > 18);
  
  console.log(primeiraPessoaMaiorDezoito); // { nome: 'João', idade: 20 }
  