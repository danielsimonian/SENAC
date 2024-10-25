<?php
    echo '<pre>';
    print_r($_POST);
    echo '</pre>';

    //conexão com o banco

    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $bd = 'db_lojadecarros';
    $link = mysqli_connect($host, $user, $pass, $db);

    if($link) {
        echo'banco conectado';
    };
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="shortcut icon" href="./img/aplicativo-wallet-pass.png" type="image/x-icon">
    <title>Password´s Wallet</title>
</head>
<body>
    <main>
        <section class="container-title">
            <img src="./img/aplicativo-wallet-pass.png" alt="">
            <h1>Password´s Wallet</h1>
        </section>
        <section class="container-inputs">
            <form method="POST" action="index.php">
                <label for="">Serviço/SITE</label>
                <input type="text" name="servico" id="">
                <label for="">Login/e-mail</label>
                <input type="text" name="login" id="">
                <label for="">Senha</label>
                <input type="password" name="senha" id="">
                <button type="submit">Cadastrar</button>
            </form>
        </section>
    </main>
</body>
</html>