<?php
    require 'conexao.php';

    // Verifica se o ID foi passado via GET
    if (isset($_GET['id_pessoa'])) {
        $id_pessoa = $_GET['id_pessoa'];

        // Consulta para pegar as informações do contato
        $query = "
            SELECT p.nome, t.telefone, e.email
            FROM TB_PESSOA p
            LEFT JOIN TB_TELEFONE t ON p.id_pessoa = t.id_pessoa
            LEFT JOIN TB_EMAIL e ON p.id_pessoa = e.id_pessoa
            WHERE p.id_pessoa = $id_pessoa
        ";

        $result = mysqli_query($link, $query);

        if (!$result) {
            die("Erro ao buscar dados para edição: " . mysqli_error($link));
        }

        $row = mysqli_fetch_assoc($result);

        // Se não encontrar nenhum resultado
        if (!$row) {
            die("Contato não encontrado.");
        }
    } else {
        die("ID não fornecido.");
    }

    // Verifica se o formulário de edição foi enviado
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $nome = $_POST['nome'];
        $telefone = $_POST['telefone'];
        $email = $_POST['email'];

        // Atualiza os dados no banco de dados
        $updateQuery = "
            UPDATE TB_PESSOA p
            LEFT JOIN TB_TELEFONE t ON p.id_pessoa = t.id_pessoa
            LEFT JOIN TB_EMAIL e ON p.id_pessoa = e.id_pessoa
            SET p.nome = '$nome', t.telefone = '$telefone', e.email = '$email'
            WHERE p.id_pessoa = $id_pessoa
        ";

        if (mysqli_query($link, $updateQuery)) {
            // Redireciona de volta para a lista de contatos após a atualização
            header('Location: index.php');
            exit;
        } else {
            echo "Erro ao atualizar contato: " . mysqli_error($link);
        }
    }
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>Editar Contato</title>
</head>
<body>
    <header>
        <div class="tittle">
            <h1>Editar Contato</h1>
        </div>
    </header>
    <main>
        <section>
            <form action="" method="POST">
                <label for="nome">Nome:</label>
                <input type="text" name="nome" id="nome" value="<?php echo htmlspecialchars($row['nome']); ?>" required>

                <label for="telefone">Telefone:</label>
                <input type="text" name="telefone" id="telefone" value="<?php echo htmlspecialchars($row['telefone']); ?>" required>

                <label for="email">E-mail:</label>
                <input type="email" name="email" id="email" value="<?php echo htmlspecialchars($row['email']); ?>" required>

                <button type="submit">Salvar Alterações</button>
            </form>
        </section>
    </main>
</body>
</html>

<?php
    // Fechar a conexão com o banco de dados
    mysqli_close($link);
?>
