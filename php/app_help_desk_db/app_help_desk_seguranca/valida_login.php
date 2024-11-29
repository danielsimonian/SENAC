<?php
require 'conexao.php';
session_start();

// Consulta ao banco de dados
$resultado = mysqli_query($link, 'SELECT id_user, nome, email, senha, perfil FROM TB_USER;');

// Verifica se a consulta retornou algum dado
if (!$resultado) {
    die('Erro ao executar a consulta: ' . mysqli_error($link));
}

// Converte o resultado em um array associativo
$usuarios = [];
while ($row = mysqli_fetch_assoc($resultado)) {
    $usuarios[] = $row;
}

$usuarioAutenticado = false;
$usuarioId = null;
$perfil = null;

// Recebendo os dados via método GET
$emailUsuario = $_POST['email'];
$senhaUsuario = $_POST['senha'];

// Autenticando o usuário
foreach ($usuarios as $usuario) {
    if ($emailUsuario == $usuario['email'] && $senhaUsuario == $usuario['senha']) {
        $usuarioAutenticado = true;
        $usuarioId = $usuario['id_user']; // Captura o ID do usuário autenticado
        $perfil = $usuario['perfil'];
        break;
    }
}

if ($usuarioAutenticado) {
    // Validando a sessão
    $_SESSION['autenticado'] = 'sim';
    $_SESSION['id_user'] = $usuarioId; // Armazena o ID do usuário na sessão
    $_SESSION['perfil'] = $perfil;
    header('location: home.php');
} else {
    // Redirecionando para a página de login com erro
    header('location: index.php?login=erro');
}
?>
