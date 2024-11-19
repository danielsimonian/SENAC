<?php
// Conexão com o banco
require "conexao.php";

// Exclusão
if (isset($_GET['acao']) && $_GET['acao'] == 'excluir') {
    $id = intval($_GET['id']);
    
    // Excluindo da tabela de e-mails e telefones relacionados
    mysqli_query($link, "DELETE FROM TB_EMAIL WHERE id_pessoa = $id");
    mysqli_query($link, "DELETE FROM TB_TELEFONE WHERE id_pessoa = $id");
    
    // Excluindo da tabela principal
    mysqli_query($link, "DELETE FROM TB_PESSOA WHERE id_pessoa = $id");

    // Redireciona após exclusão
    header('Location: delete.php');
    exit;
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
                <h1>Contato deletado com sucesso!</h1>
            </div>
    </main>
</body>
</html>