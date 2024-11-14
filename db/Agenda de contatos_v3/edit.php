<?php
// Conexão com o banco
require "conexao.php";

// Obtém o ID do contato
$id_pessoa = $_GET['id'];

// Variável para controle de sucesso
$sucesso = false;


$query = "SELECT 
        p.id_pessoa,
        p.nome,
        e.email,
        t.telefone
    FROM 
        TB_PESSOA p
    LEFT JOIN 
        TB_EMAIL e ON p.id_pessoa = e.id_pessoa
    LEFT JOIN 
        TB_TELEFONE t ON p.id_pessoa = t.id_pessoa
";
$resultado = mysqli_query($link, $query);
$contato = mysqli_fetch_assoc($resultado);

// Verifica se encontrou o contato
if (!$contato) {
    die("Contato não encontrado.");
}

// Processa o formulário
if ($_POST) {
    $nome = $_POST['nome'];
    $telefone = $_POST['telefone'];
    $email = $_POST['email'];

    // Atualiza o nome da pessoa
    mysqli_query($link, "UPDATE TB_PESSOA SET nome='$nome' WHERE id_pessoa=$id_pessoa");

    // Limpa e insere os telefones atualizados
    mysqli_query($link, "DELETE FROM TB_TELEFONE WHERE id_pessoa = $id_pessoa");
    $telefoneExpandido = explode(',', $telefone);
    foreach ($telefoneExpandido as $tel) {
        mysqli_query($link, "INSERT INTO TB_TELEFONE (telefone, id_pessoa) VALUES ('$tel', $id_pessoa)");
    }

    // Limpa e insere os e-mails atualizados
    mysqli_query($link, "DELETE FROM TB_EMAIL WHERE id_pessoa = $id_pessoa");
    $emailExpandido = explode(',', $email);
    foreach ($emailExpandido as $em) {
        mysqli_query($link, "INSERT INTO TB_EMAIL (email, id_pessoa) VALUES ('$em', $id_pessoa)");
    }

    // Marca que o contato foi editado com sucesso
    $sucesso = true;
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
            <form class="adiciona-container" method="POST">
                <div>
                    <label for="nome">Nome:</label>
                    <input type="text" name="nome" id="nome" placeholder="Nome" value="<?php echo htmlspecialchars($contato['nome']); ?>" required>
                </div>
                <div>
                    <label for="telefone">Telefone:</label>
                    <input type="text" name="telefone" id="telefone" placeholder="Telefone" value="<?php echo htmlspecialchars($contato['telefone']); ?>" required>
                </div>
                <div>
                    <label for="email">E-mail:</label>
                    <input type="email" name="email" id="email" placeholder="E-mail" value="<?php echo htmlspecialchars($contato['email']); ?>" required>
                </div>
                <?php
                // Exibe a mensagem de sucesso somente quando a variável $sucesso for verdadeira
                if ($sucesso) {
                    echo '<p style="color: green; font-weight: bold;">Contato editado com sucesso!</p>';
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
