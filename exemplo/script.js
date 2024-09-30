let numbers = [];

document.getElementById('addButton').addEventListener('click', function() {
    const input = document.getElementById('numberInput');
    const value = parseInt(input.value);
    
    if (value >= 1 && value <= 100) {
        if (numbers.includes(value)) {
            alert('Número já foi adicionado!');
        } else {
            numbers.push(value);
            input.value = ''; // Limpa o campo de entrada
            displayNumbers(); // Exibe os números digitados
        }
    } else {
        alert('Por favor, digite um número válido entre 1 e 100.');
    }
    numberInput.focus();
    numberInput.innerHTML = " "
});

document.getElementById('finalizeButton').addEventListener('click', function() {
    if (numbers.length === 0) {
        alert('Nenhum número cadastrado.');
        return;
    }

    const count = numbers.length;
    const max = Math.max(...numbers);
    const min = Math.min(...numbers);
    const sum = numbers.reduce((a, b) => a + b, 0);
    const average = sum / count;

    const resultsDiv = document.getElementById('results');
    resultsDiv.innerHTML = `
        <p>Total de números: ${count}</p>
        <p>Maior número: ${max}</p>
        <p>Menor número: ${min}</p>
        <p>Soma: ${sum}</p>
        <p>Média: ${average.toFixed(2)}</p>
    `;
});

// Função para exibir os números digitados
function displayNumbers() {
    const numberList = document.getElementById('numberList');
    numberList.innerHTML = ''; // Limpa a lista atual

    numbers.forEach(num => {
        const li = document.createElement('option');
        li.textContent = num;
        numberList.appendChild(li);
    });
}
