<?php
print('Números primos de 1 até 100: </br>');
// Função para verificar se um número é primo
function isPrimo($numero) {
    if ($numero <= 1) {
        return false; // Números menores ou iguais a 1 não são primos
    }
    
    // Verifica se o número é divisível por algum número entre 2 e a raiz quadrada do número
    for ($i = 2; $i <= sqrt($numero); $i++) {
        if ($numero % $i == 0) {
            return false; // Se for divisível, não é primo
        }
    }
    
    return true; // Caso contrário, é primo
}

// Loop para imprimir os números primos de 1 a 100
for ($i = 1; $i <= 100; $i++) {
    if (isPrimo($i)) {
        echo $i . " ";
    }
}
print('</br> </br>');
?>