<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script src="script.js" type="text/javascript" defer></script>
    <title>Calculadora de IMC</title>
</head>
<body>
    <main>
        <section>
            <form method="POST">
                <h1>Calculadora de IMC:</h1>
                <input type="text" placeholder="Informe seu peso" name="peso" required>
                <input type="text" placeholder="Informe sua altura" name="altura" required>
                <div class="radio">
                    <input type="radio" name="selection" id="imcIf" onclick="imcOption()">
                    <label for="imcIf">Calcular com IF</label>
                </div>
                <div class="radio">
                    <input type="radio" name="selection" id="imcSC" onclick="imcOption()">
                    <label for="imcSC">Calcular com Switch Case</label>
                </div>
                <input type="submit" value="Calcular">
            </form>
        </section>
        <section class="resultado">
            <div><h1>Resultado</h1></div>
            <div>
                <h2 id="imcLogica">
                    
                </h2>
            </div>
        </section>    
    </main>
</body>
</html>