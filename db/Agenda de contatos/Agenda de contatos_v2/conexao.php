<?php
    $host = 'localhost';  // endereço do servidor
    $usuario = 'root';    // usuário do banco
    $senha = '';          // senha do banco (geralmente é vazia no XAMPP)
    $banco = 'DB_CONTATOS'; // nome do banco de dados

    // Criação da conexão
    $link = mysqli_connect($host, $usuario, $senha, $banco);

    // Verificação de erro na conexão
    if (!$link) {
        die("Erro ao conectar ao banco de dados: " . mysqli_connect_error());
    }
?>
