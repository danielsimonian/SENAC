<?php
/*    
    //escreve os dados inseridos na tela
    echo '<pre>';
    print_r($_POST);
    echo '</pre>';
*/

    require "conexao.php";
    
    //cria a tb do banco
    mysqli_query($link, 'CREATE TABLE IF NOT EXISTS TB_INFO(
        id int primary key auto_increment,
        servico varchar(50) not null,
        login varchar(50) not null,
        senha varchar(20) not null
    )');

/*
    if($link) {
        echo'banco conectado';
    };
*/

    //relaciona os inputs aos campos da tabela criada no db
    if($_POST){
    $servico = $_POST['servico'];
    $login = $_POST['login'];
    $senha = $_POST['senha'];

    //CREATE
    //conecta os inputs com o banco
    mysqli_query($link, "INSERT INTO TB_INFO (SERVICO, LOGIN, SENHA) VALUES ('$servico', '$login', '$senha')");
    
    unset($_POST); //zera a variável
    header('Location: index.php'); //redireciona para evitar reenvio do formulário
    exit; //garante que o script não continue após o redirecionamento
    }

    //READ
    $resultado = mysqli_query($link, 'SELECT * FROM TB_INFO');
    //print_r($resultado);

    //DELETE
    if (isset($_GET['acao']) && $_GET['acao'] == 'excluir') {
        $id = intval($_GET['id']); // Obtem o ID da URL e o converte para inteiro
        mysqli_query($link, "DELETE FROM TB_INFO WHERE id = $id"); // Executa a exclusão
        header('Location: index.php'); // Redireciona após a exclusão
        exit; // Garante que o script não continue após o redirecionamento
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
            <form method="POST" action="index.php">
                <label for="">Site</label>
                <input type="text" name="servico" id="" placeholder="ex: Gmail" required>
                <label for="">Login/e-mail</label>
                <input type="text" name="login" id="" placeholder="ex: user@gmail.com" required>
                <label for="">Senha</label>
                <input type="password" name="senha" id="" placeholder="**********" required>
                <button type="submit">Cadastrar</button>
            </form>
        </section>
        <section>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Serviço/Site</th>
                        <th>Login/Senha</th>
                        <th>Senha</th>
                        <th>Gerenciar</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    while($dados = mysqli_fetch_assoc($resultado)){
                       echo "<tr>";
                           echo "<td>".$dados['id']."</td>";
                           echo "<td>".$dados['servico']."</td>";
                           echo "<td>".$dados['login']."</td>";
                           echo "<td>".$dados['senha']."</td>";
                           echo "<td>
                            <button class='btn-menor btn-menor-excluir'><a href='index.php?acao=excluir&id=".$dados["id"]."'>Excluir</a></button>
                            <button class='btn-menor'><a href='atualizar.php?id=".$dados["id"]."'>Editar</a></button>
                                </td>";
                       echo "</tr>";
                    };
                    ?>
                </tbody>
            </table>
        </section>
    </main>
</body>
</html>