<?php

require "conexao.php";

$_resultado = false;

//relaciona os inputs aos campos da tabela criada no db
if($_POST){
    $nome = $_POST['nome'];
    $telefone = $_POST['telefone'];
    $email = $_POST['email'];

    //CREATE
    //conecta os inputs com o banco
    mysqli_query($link, "INSERT INTO TB_PESSOA (NOME) VALUES ('$nome')");

    $id_pessoa = mysqli_insert_id($link);

    mysqli_query($link, "INSERT INTO TB_TELEFONE (TELEFONE, id_pessoa) VALUES ('$telefone', '$id_pessoa')");
    mysqli_query($link, "INSERT INTO TB_EMAIL (EMAIL, id_pessoa) VALUES ('$email', '$id_pessoa')");
    
    unset($_POST); //zera a variável
    $_resultado = true;

    }

   

?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>Agenda de contatos</title>
</head>
<body>
    <header>
        <div class="tittle">
            <h1>Agenda de Contatos</h1>
        </div>
        <div class="btn-adiciona">
            <a href="index.php"><input class="btn" type="button" value="VOLTAR"></a>
        </div>
    </header>
    <main>
        <section class="adiciona-section">
            <div class="adiciona-tittle">
                <h1>Adicionar novo contato</h1>
            </div>
            <form method="POST">
                <div>
                    <label for="nome">Nome:</label>
                    <input type="text" name="nome" id="nome" placeholder="Nome" required>
                </div>
                <div>
                    <label for="telefone">Telefone:</label>
                    <input type="text" name="telefone" id="telefone" placeholder="Telefone" required>
                </div>
                <div>
                    <label for="email">E-mail</label>
                    <input type="text" name="email" id="email" placeholder="E-mail" required>
                </div>
                <?php

                if($_resultado){    
                    echo '<p>Contato adicionado com sucesso!</p>';
                }
                ?>

                <div>
                    <button class="btn-novo" type="submit">Criar</button>
                </div>
            </form>
            </div>
        </section>
    </main>
</body>
</html>