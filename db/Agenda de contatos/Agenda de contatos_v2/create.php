<?php
    require 'conexao.php';

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        // Receber os dados do formulário
        $nome = $_POST['nome'];
        $email = $_POST['email'];
        $telefone = $_POST['telefone'];

        // Inserir na tabela TB_PESSOA
        $insertPessoaQuery = "INSERT INTO TB_PESSOA (nome) VALUES ('$nome')";
        if (mysqli_query($link, $insertPessoaQuery)) {
            $id_pessoa = mysqli_insert_id($link);  // Pega o ID do último contato inserido

            // Inserir na tabela TB_EMAIL
            $insertEmailQuery = "INSERT INTO TB_EMAIL (email, id_pessoa) VALUES ('$email', $id_pessoa)";
            mysqli_query($link, $insertEmailQuery);

            // Inserir na tabela TB_TELEFONE
            $insertTelefoneQuery = "INSERT INTO TB_TELEFONE (telefone, id_pessoa) VALUES ('$telefone', $id_pessoa)";
            mysqli_query($link, $insertTelefoneQuery);

            // Redireciona para a página inicial
            header('Location: index.php');
            exit;
        } else {
            echo "Erro ao adicionar contato: " . mysqli_error($link);
        }
    }
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>Adicionar Contato</title>
</head>
<body>
    <header>
        <div class="tittle">
            <h1>Adicionar Novo Contato</h1>
        </div>
    </header>
    <main>
        <section>
            <form action="create.php" method="POST">
                <label for="nome">Nome:</label>
                <input type="text" name="nome" id="nome" required><br>

                <label for="email">E-mail:</label>
                <input type="email" name="email" id="email" required><br>

                <label for="telefone">Telefone:</label>
                <input type="text" name="telefone" id="telefone" required><br>

                <button type="submit">Adicionar Contato</button>
            </form>
        </section>
    </main>
</body>
</html>

<?php
    // Fechar a conexão com o banco de dados
    mysqli_close($link);
?>
