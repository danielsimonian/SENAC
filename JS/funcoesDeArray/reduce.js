// 1
const numeros = [3, 5, 357, 2525, 23.34, 5325, 56, 997, 12, 2.123];

const soma = numeros.reduce((a, n) => a + n, 0);

console.log(soma);

//2 
const transacoes = [
    { tipo: 'deposito', valor: 100 },
    { tipo: 'retirada', valor: 50 },
    { tipo: 'deposito', valor: 200 }
  ];
  
  // Calcula o saldo final usando reduce com if
  const saldoFinal = transacoes.reduce((a, transacao) => {
    if (transacao.tipo === 'deposito') {
      return a + transacao.valor;
    } else if (transacao.tipo === 'retirada') {
      return a - transacao.valor;
    }
    return a; // Para garantir que não haja erro com outros tipos
  }, 0);
  
  console.log(saldoFinal);
  