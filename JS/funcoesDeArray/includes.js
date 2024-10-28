// 1
const numeros = [1, 2, 3, 4, 5];
const x = 3; // Número que queremos verificar

// Verifica se o número x está presente no array
const incluiX = numeros.includes(x);

console.log(incluiX); // true

// 2
const frutas = [
    { nome: 'Banana', preco: 3.00 },
    { nome: 'Laranja', preco: 2.50 },
    { nome: 'Maçã', preco: 4.00 },
    { nome: 'Manga', preco: 5.00 }
];
  
  // Verifica se a fruta 'Maçã' está presente e qual seu preço
  const frutaMaçã = frutas.find(fruta => fruta.nome === 'Maçã');
  
  if (frutaMaçã) {
    console.log(`A fruta 'Maçã' está presente e custa R$ ${frutaMaçã.preco}.`); // R$ 4.00
  } else {
    console.log("A fruta 'Maçã' não está presente.");
  }
  