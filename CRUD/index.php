<?php
/*    
    //escreve os dados inseridos na tela
    echo '<pre>';
    print_r($_POST);
    echo '</pre>';
*/

    //conexão com o banco
    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $db = 'db_senhas';
    $link = mysqli_connect($host, $user, $pass, $db);

    //cria o banco
    mysqli_query($link, 'CREATE DATABASE IF NOT EXISTS DB_SENHAS');
    
    //cria a tb do banco
    mysqli_query($link, 'CREATE TABLE IF NOT EXISTS TB_INFO(
        id int primary key auto_increment,
        servico varchar(50) not null,
        login varchar(50) not null,
        senha varchar(20) not null
    )');

    if($link) {
        echo'banco conectado';
    };

    //relaciona os inputs aos campos da tabela criada no db
    $servico = $_POST['servico'];
    $login = $_POST['login'];
    $senha = $_POST['senha'];

    //conecta os inputs com o banco
    mysqli_query($link, "INSERT INTO TB_INFO (SERVICO, LOGIN, SENHA) VALUES ('$servico', '$login', '$senha')");

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
                <input type="text" name="servico" id="" required>
                <label for="">Login/e-mail</label>
                <input type="text" name="login" id="" required>
                <label for="">Senha</label>
                <input type="password" name="senha" id="" required>
                <button type="submit">Cadastrar</button>
            </form>
        </section>
    </main>
</body>
</html>