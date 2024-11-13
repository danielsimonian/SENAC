<?php
session_start();

//Usuários pré-cadastrados
$usuarios = array(
    ['email' => 'danielsimonian@gmail.com', 'senha' => '123'],
    ['email' => 'guigui@gmail.com', 'senha' => '456'],
    ['email' => 'fefe@gmail.com', 'senha' => '789']
);

$usuarioAutenticado = false;

//RECEBENDO OS DADOS VIA MÉTODO GET
$emailUsuario = $_GET['email'];
$senhaUsuario = $_GET['senha'];

// AUTENTICANDO O USUÁRIO
for ($idx = 0; $idx < count($usuarios); $idx++) {
    if ($emailUsuario == $usuarios[$idx]['email'] && $senhaUsuario == $usuarios[$idx]['senha']) {
        $usuarioAutenticado = true;
        break;
    } else {
        $usuarioAutenticado = false;
    }
}

if($usuarioAutenticado){
    // VALIDANDO A SESSÃO
    $_SESSION['autenticado'] = 'sim';
    header('location: home.php');
} else {
    // VALIDANDO A SESSÃO
    header('location: index.php?login=erro');
}