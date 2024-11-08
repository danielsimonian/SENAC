<?php

    $peso = $_POST['peso'];
    $altura = $_POST['altura'];

    if($peso && $altura > 0){
        $imc = $peso / ($altura * $altura);

        switch($imc) {
            case $imc < 18.5:
                print('IMC = '.round($imc, 2). '</br> Abaixo do peso');
                break;
            case $imc >= 18.5 && $imc <= 24.9:
                print('IMC = '.round($imc, 2). '</br> Peso normal');
                break;
            case $imc >= 25 && $imc <= 29.9:
                print('IMC = '.round($imc, 2). '</br> Sobrepeso');
                break;
            case $imc >= 30 && $imc <= 34.9:
                print('IMC = '.round($imc, 2). '</br> Obesidade grau I');
                break;
            case $imc >= 35 && $imc <= 39.9:
                print('IMC = '.round($imc, 2). '</br> Obesidade grau II');
                break;
            case $imc > 40:
                print('IMC = '.round($imc, 2). '</br> Obesidade mórbida');    
        }
       

    } else {
        print('Digite um valor maior que ZERO!');
    }
?>