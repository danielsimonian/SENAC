// 1
const numeros = [1, 2, 3, 4, 5];

// Verifica se todos os números são positivos
const todosPositivos = numeros.every(numero => numero > 0);

console.log(todosPositivos); // true


// 2 
const alunos = [
    { nome: 'Ana', nota: 7 },
    { nome: 'João', nota: 5 },
    { nome: 'Maria', nota: 8 }
  ];
  
  // Verifica se todos os alunos têm nota maior ou igual a 6
  const todosAprovados = alunos.every(aluno => aluno.nota >= 6);
  
  console.log(todosAprovados); // false