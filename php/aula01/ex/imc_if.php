<?php

    $peso = $_POST['peso'];
    $altura = $_POST['altura'];

    if($peso && $altura > 0){
        $imc = $peso / ($altura * $altura);

        if($imc < 18.5){
            print('IMC = '.round($imc, 2). '</br> Abaixo do peso');
        } elseif($imc >= 18.5 && $imc <= 24.9){
            print('IMC = '.round($imc, 2). '</br> Peso normal');
        } elseif($imc >= 25 && $imc <= 29.9){
            print('IMC = '.round($imc, 2). '</br> Sobrepeso');
        } elseif($imc >= 30 && $imc <= 34.9){
            print('IMC = '.round($imc, 2). '</br> Obesidade grau I');
        } elseif($imc >= 35 && $imc <= 39.9){
            print('IMC = '.round($imc, 2). '</br> Obesidade grau II');
        } elseif($imc > 40){
            print('IMC = '.round($imc, 2). '</br> Obesidade mórbida');
        }

    } else {
        print('Digite um valor maior que ZERO!');
    }
    
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <main>
        <form method="POST">
            <h1>Calculadora de IMC:</h1>
            <input type="text" placeholder="Informe seu peso" name="peso" required>
            <input type="text" placeholder="Informe sua altura" name="altura" required>
            <input type="submit" value="Calcular">
        </form>
    </main>
    <style>
        form {
            display: flex;
            flex-direction: column;
            gap: 10px;
            align-items: center;
        }

        input {
            border-radius: 5px;
            padding: 5px;
            width: 150px;
        }
    </style>
</body>
</html>