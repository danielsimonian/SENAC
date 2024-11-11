<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Calculadora de IMC</title>
</head>
<body>
    <main>
        <section>
            <form method="POST">
                <h1 class="title">Calculadora de IMC:</h1>
                <input type="text" placeholder="Informe seu peso" name="peso" required>
                <input type="text" placeholder="Informe sua altura" name="altura" required>
                
                <input class="btn" type="submit" value="Calcular">
            </form>
        </section>
        <section class="resultado">
            <?php
                require 'imc_IF.php'
            ?>
        </section>
    </main>
</body>
</html>