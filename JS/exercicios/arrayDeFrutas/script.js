// Criação do array de frutas
let frutas = ['maçã', 'banana', 'laranja', 'uva', 'manga', 'abacaxi'];

console.log('Array original:', frutas);

// Remover duas frutas a partir do índice 2 (laranja e uva)
let indiceRemocao = 2;
let numeroRemocoes = 2;
let frutasRemovidas = frutas.splice(indiceRemocao, numeroRemocoes);

console.log('Frutas removidas:', frutasRemovidas);
console.log('Array após remoção:', frutas);

// Adicionar novas frutas no lugar
let novasFrutas = ['kiwi', 'pêssego'];
frutas.splice(indiceRemocao, 0, ...novasFrutas);

console.log('Array após adição:', frutas);

// Aplicando o reverse
console.log('Lista ao contrário: ', frutas.reverse());

//Aplicando o join
console.log('Join: ', frutas.join(" "));

//Exclui o último ítem de uma array
frutas.pop();
console.log('Exclui o último ítem da lista: ', frutas);

//Adiciona um ítem no início de uma array
frutas.unshift('limão');
console.log('Adiciona um ítem no início de uma array: ', frutas);

//Remove o primeiro ítem de uma array
frutas.shift();
console.log('Remove o primeiro ítem de uma array: ', frutas);
