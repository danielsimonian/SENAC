<?php
// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recupera o número escolhido pelo usuário
    $numero = isset($_POST['numero']) ? (int) $_POST['numero'] : 0;
    
    // Verifica se o número é válido (não deve ser zero)
    if ($numero != 0) {
        echo "<h2>Tabuada do número $numero:</h2>";
        echo "<ul>";
        // Loop para mostrar a tabuada do número escolhido de 1 a 10
        for ($i = 1; $i <= 10; $i++) {
            $resultado = $numero * $i;
            echo "<li>$numero x $i = $resultado</li>";
        }
        echo "</ul>";
    } else {
        echo "<p><strong>Por favor, insira um número válido (diferente de 0).</strong></p>";
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabuada</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        input, button {
            padding: 8px;
            margin: 5px 0;
        }
        h2 {
            color: #2c3e50;
        }
        ul {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h1>Digite um número para ver a tabuada de 1 a 10</h1>
    
    <form method="POST">
        <label for="numero">Número: </label>
        <input type="number" name="numero" id="numero" required>
        <button type="submit">Mostrar Tabuada</button>
    </form>

    <p><strong>Atenção:</strong> Não insira o número 0, pois a tabuada será gerada apenas para números diferentes de zero.</p>
</body>
</html>
