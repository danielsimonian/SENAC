// 1
const numeros = [23, 45, 75, 33, 11, 15, 3525, 5321, 533, 97, 34];

const menores50 = numeros.filter(n => n >= 10 && n <= 50);

console.log(menores50);

// 2
const pessoas = [
    { nome: 'Ana', idade: 17 },
    { nome: 'João', idade: 20 },
    { nome: 'Maria', idade: 19 }
  ];

const pessoasFiltradas = pessoas.filter(pessoa => pessoa.idade > 18 && pessoa.idade < 65);

console.log(pessoasFiltradas);