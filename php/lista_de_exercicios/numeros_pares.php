<?php
print('Números pares entre 1000 e 2000: </br>');
// Loop para percorrer os números entre 1000 e 2000
for ($i = 1000; $i <= 2000; $i++) {
    if ($i % 2 == 0) {  // Verifica se o número é par
        echo $i . " ";
    }
}
print('</br> </br>');
?>