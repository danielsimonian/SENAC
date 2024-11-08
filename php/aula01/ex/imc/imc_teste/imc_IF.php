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