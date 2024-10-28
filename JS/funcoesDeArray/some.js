// 1
const numeros = [1, 2, -3, 4, 5];

// Verifica se há pelo menos um número negativo
const temNumeroNegativo = numeros.some(numero => numero < 0);

console.log(temNumeroNegativo); // true


// 2
const produtos = [
    { nome: 'Camiseta', preco: 29.99 },
    { nome: 'Calça', preco: 49.99 },
    { nome: 'Tênis', preco: 120.00 }
  ];
  
  // Verifica se há pelo menos um produto com preço acima de 100
  const temProdutoCaros = produtos.some(produto => produto.preco > 100);
  
  console.log(temProdutoCaros); // true
  