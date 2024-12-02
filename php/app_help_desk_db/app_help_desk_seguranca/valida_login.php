<?php
require 'conexao.php';
session_start();

// Consulta ao banco de dados
$resultado = mysqli_query($link, 'SELECT id_user, nome, email, senha, perfil FROM TB_USER WHERE email = "' . $_POST['email'] . '" AND senha = "' . $_POST['senha'] . '";');

// Verifica se a consulta retornou algum dado
if (!$resultado) {
    die('Erro ao executar a consulta: ' . mysqli_error($link));
} else {
    $usuarioAutenticado = true;
}

if ($usuarioAutenticado) {
    // Validando a sessão
    $_SESSION['autenticado'] = 'sim';
    $linha = mysqli_fetch_array($resultado, MYSQLI_BOTH);
    $_SESSION['idUsuarioAutenticado'] = $linha['id_user'];

    //echo('Id do usuário: ' . $_SESSION['idUsuarioAutenticado'] );


    header('location: home.php');
} else {
    // Redirecionando para a página de login com erro
    header('location: index.php?login=erro');
}
?>
