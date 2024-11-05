<?php
require "conexao.php";
 
if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $resultado = mysqli_query($link, "SELECT * FROM TB_INFO WHERE id = $id");
    $dados = mysqli_fetch_assoc($resultado);
}
 
if ($_POST) {
    $servico = $_POST['servico'];
    $login = $_POST['login'];
    $senha = $_POST['senha'];
 
    // UPDATE
    mysqli_query($link, "UPDATE TB_INFO SET SERVICO='$servico', LOGIN='$login', SENHA='$senha' WHERE ID=$id");
    header("Location: index.php");
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/aplicativo-wallet-pass-white.png" type="image/x-icon">
    <link rel="stylesheet" href="./css/style.css">
    <title>Password´s Wallet</title>
</head>
<body>
    <main>
        <section class="container-title">
            <img src="./img/aplicativo-wallet-pass-white.png" alt="">
            <h1>Password´s Wallet</h1>
        </section>
        <section class="container-inputs">
            <div class="atualizar">
                <h1>Atualizar</h1>
            </div>
            <form method="POST" action="">
                <label for="">Site</label>
                <input type="text" name="servico" value="<?php echo ($dados['servico']); ?>" required>
                <label for="">Login/e-mail</label>
                <input type="text" name="login" value="<?php echo ($dados['login']); ?>" required>
                <label for="">Senha</label>
                <input type="password" name="senha" value="<?php echo ($dados['senha']); ?>" required>
                <button type="submit">Atualizar</button>
            </form>
        </section>