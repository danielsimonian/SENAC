<?php
require 'conexao.php';
session_start();

// Consulta ao banco de dados
$resultado = mysqli_query($link, 'SELECT email, senha FROM TB_USER;');

// Verifica se a consulta retornou algum dado
if (!$resultado) {
    die('Erro ao executar a consulta: ' . mysqli_error($link));
}

// Recebendo os dados via POST
$emailUsuario = $_POST['email'];
$senhaUsuario = $_POST['senha'];
 
// Autenticando o usuário
foreach ($resultado as $usuario) {
    if ($emailUsuario == $usuario['email'] && $senhaUsuario == $usuario['senha']) {
        $usuarioAutenticado = true;
        $_SESSION['autenticado'] = 'sim';  // Definindo a sessão como autenticada
        $_SESSION['id'] = $usuario['id']; // Armazenando o ID do usuário na sessão
        $_SESSION['perfil'] = $usuario['perfil']; // Armazenando o perfil (Administrador/Usuário) na sessão
        header('Location: home.php');
        exit();
    }
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

$usuarioAutenticado = false;
 


?>
