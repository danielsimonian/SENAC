<?php
// Inicializa as variáveis
$total_sim = 0;
$total_nao = 0;
$total_homens = 0;
$total_homens_nao = 0;
$total_mulheres = 0;
$total_mulheres_nao = 0;

// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recebe os dados dos entrevistados
    $entrevistados = $_POST['entrevistados'];

    // Processa as respostas dos 10 entrevistados
    foreach ($entrevistados as $entrevistado) {
        $sexo = $entrevistado['sexo'];
        $resposta = $entrevistado['resposta'];

        if ($resposta == 'S') {
            $total_sim++;
        } else {
            $total_nao++;
        }

        if ($sexo == 'M') {
            $total_homens++;
            if ($resposta == 'N') {
                $total_homens_nao++;
            }
        } elseif ($sexo == 'F') {
            $total_mulheres++;
            if ($resposta == 'N') {
                $total_mulheres_nao++;
            }
        }
    }

    // Calculando as porcentagens
    $porcentagem_homens_nao = $total_homens > 0 ? ($total_homens_nao / $total_homens) * 100 : 0;
    $porcentagem_mulheres_nao = $total_mulheres > 0 ? ($total_mulheres_nao / $total_mulheres) * 100 : 0;
}

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisa de Mercado</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        input, select, button {
            padding: 8px;
            margin: 5px;
        }
        .result {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Pesquisa de Mercado</h1>
    <p>Digite os dados dos 10 entrevistados:</p>

    <form method="POST">
        <?php for ($i = 1; $i <= 10; $i++): ?>
            <fieldset>
                <legend>Entrevistado <?php echo $i; ?></legend>
                <label for="sexo<?php echo $i; ?>">Sexo:</label>
                <select name="entrevistados[<?php echo $i - 1; ?>][sexo]" id="sexo<?php echo $i; ?>" required>
                    <option value="M">Masculino</option>
                    <option value="F">Feminino</option>
                </select>
                
                <label for="resposta<?php echo $i; ?>">Resposta:</label>
                <select name="entrevistados[<?php echo $i - 1; ?>][resposta]" id="resposta<?php echo $i; ?>" required>
                    <option value="S">Sim</option>
                    <option value="N">Não</option>
                </select>
            </fieldset>
        <?php endfor; ?>

        <button type="submit">Calcular Resultados</button>
    </form>

    <?php if ($_SERVER["REQUEST_METHOD"] == "POST"): ?>
        <div class="result">
            <p>Número de pessoas que responderam SIM: <?php echo $total_sim; ?></p>
            <p>Número de pessoas que responderam NÃO: <?php echo $total_nao; ?></p>
            <p>Porcentagem de homens que responderam NÃO: <?php echo number_format($porcentagem_homens_nao, 2); ?>%</p>
            <p>Porcentagem de mulheres que responderam NÃO: <?php echo number_format($porcentagem_mulheres_nao, 2); ?>%</p>
        </div>
    <?php endif; ?>
</body>
</html>
