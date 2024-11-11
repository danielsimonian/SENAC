<?php
    
    $peso = $_POST['peso'];
    $altura = $_POST['altura'];

    if($peso > 0 && $altura > 0){
        $imc = $peso / ($altura * $altura);

        if($imc < 18.5){
            print('
                <div>
                <h1 class="resultado-red">Resultado</h1>
                </div>
                <div class="imc">
                <h2 class="imc-red">IMC = '.round($imc, 2).'</h2>
                </div>
                <div class="comentario">
                <h3 class="comentario-red">Abaixo do peso</h3>
                </div>
                ');
        } elseif($imc >= 18.5 && $imc <= 24.9){
            print('
                <div>
                <h1 class="resultado-green">Resultado</h1>
                </div>
                <div class="imc">
                <h2 class="imc-green">IMC = '.round($imc, 2).'</h2>
                </div>
                <div class="comentario">
                <h3 class="comentario-green">Peso normal</h3>
                </div>
                ');
        } elseif($imc >= 25 && $imc <= 29.9){
            print('
                <div>
                <h1 class="resultado-yellow">Resultado</h1>
                </div>
                <div class="imc">
                <h2 class="imc-yellow">IMC = '.round($imc, 2).'</h2>
                </div>
                <div class="comentario">
                <h3 class="comentario-yellow">Sobrepeso</h3>
                </div>
                ');
        } elseif($imc >= 30 && $imc <= 34.9){
            print('
                <div>
                <h1 class="resultado-yellow">Resultado</h1>
                </div>
                <div class="imc">
                <h2 class="imc-yellow">IMC = '.round($imc, 2).'</h2>
                </div>
                <div class="comentario">
                <h3 class="comentario-yellow">Obesidade Grau I</h3>
                </div>
                ');
        } elseif($imc >= 35 && $imc <= 39.9){
            print('
                <div>
                <h1 class="resultado-red">Resultado</h1>
                </div>
                <div class="imc">
                <h2 class="imc-red">IMC = '.round($imc, 2).'</h2>
                </div>
                <div class="comentario">
                <h3 class="comentario-red">Obesidade Grau II</h3>
                </div>
                ');
        } elseif($imc > 40){
            print('
                <div>
                <h1 class="resultado-red">Resultado</h1>
                </div>
                <div class="imc">
                <h2 class="imc-red">IMC = '.round($imc, 2).'</h2>
                </div>
                <div class="comentario">
                <h3 class="comentario-red">Obesidade Grau III</h3>
                </div>
                ');
        }

    } else {
        print('Digite um valor maior que ZERO!');
    }
?>