<?php
require "conexao.php";

$id_pessoa = $_GET['id'];
$sucesso = false;

$query = "
    SELECT 
    p.id_pessoa, 
    TRIM(p.nome) AS nome, 
    GROUP_CONCAT(DISTINCT TRIM(e.email) SEPARATOR ', ') AS emails,
    GROUP_CONCAT(DISTINCT TRIM(t.telefone) SEPARATOR ', ') AS telefones
    FROM TB_PESSOA p
    LEFT JOIN TB_EMAIL e ON p.id_pessoa = e.id_pessoa
    LEFT JOIN TB_TELEFONE t ON p.id_pessoa = t.id_pessoa
    WHERE p.id_pessoa = $id_pessoa
    GROUP BY p.id_pessoa;
";
$resultado = mysqli_query($link, $query);
$contato = mysqli_fetch_assoc($resultado);

if (!$contato) {
    die("Contato não encontrado.");
}

if ($_POST) {
    $nome = $_POST['nome'];
    $telefones = $_POST['telefone'];
    $emails = $_POST['email'];

    mysqli_query($link, "UPDATE TB_PESSOA SET nome='$nome' WHERE id_pessoa=$id_pessoa");

    // Atualiza os telefones
    mysqli_query($link, "DELETE FROM TB_TELEFONE WHERE id_pessoa = $id_pessoa");
    $telefoneExpandido = explode(',', $telefones);
    foreach ($telefoneExpandido as $tel) {
        mysqli_query($link, "INSERT INTO TB_TELEFONE (TELEFONE, id_pessoa) VALUES ('$tel', $id_pessoa)");
    }

    // Atualiza os e-mails
    mysqli_query($link, "DELETE FROM TB_EMAIL WHERE id_pessoa = $id_pessoa");
    $emailExpandido = explode(',', $emails);
    foreach ($emailExpandido as $em) {
        mysqli_query($link, "INSERT INTO TB_EMAIL (EMAIL, id_pessoa) VALUES ('$em', $id_pessoa)");
    }

    $sucesso = true;
    header('Location: index.php?cadastro=sucesso');
    exit();
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
                <h1>Editar contato</h1>
            </div>
            <form method="POST">
                <div>
                    <label for="nome">Nome:</label>
                    <input type="text" name="nome" id="nome" value="<?= htmlspecialchars($contato['nome']) ?>" required>
                </div>
                <div>
                    <label for="telefone">Telefone(s):</label>
                    <input type="text" name="telefone" id="telefone" value="<?= htmlspecialchars($contato['telefones']) ?>" required>
                </div>
                <div>
                    <label for="email">E-mail(s):</label>
                    <input type="text" name="email" id="email" value="<?= htmlspecialchars($contato['emails']) ?>" required>
                </div>
                <?php
                if ($sucesso) {
                    echo '<p>Contato editado com sucesso!</p>';
                }
                ?>
                <div>
                    <button class="btn-novo" type="submit">Editar</button>
                </div>
            </form>
        </section>
    </main>
</body>
</html>
