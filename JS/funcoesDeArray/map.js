const numeros = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

/*1a maneira
const raizes = numeros.map(Math.sqrt);
/*

/* 2a maneira
const raizes = numeros.map(function(x){
    return Math.sqrt(x);
})

*/
// 3a maneira
const raizes = numeros.map(x => Math.sqrt(x));
console.log(raizes);


// procurar produtos com letra maiúscula
const produtos = [
    { nome: 'Camiseta', preco: 29.99 },
    { nome: 'Calça', preco: 49.99 },
    { nome: 'Tênis', preco: 89.99 }
  ];

const nomesMaiusculos = produtos.map(produto => produto.nome.toUpperCase());

console.log(nomesMaiusculos);
  


