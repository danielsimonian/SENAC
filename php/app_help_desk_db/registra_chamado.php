<?php
session_start();
    require_once "validador_acesso.php";
    require "app_help_desk_seguranca/conexao.php";
    require "app_help_desk_seguranca/valida_login.php";

    if ($_POST) {
        $titulo = $_POST['titulo'];
        $categoria = $_POST['categoria'];
        $descricao = $_POST['descricao'];
       
        $resultado = mysqli_query($link, "INSERT INTO `tb_chamados`(`titulo`, `categoria`, `descricao`, `id_user`) VALUES ('$titulo','$categoria','$descricao', '{$_SESSION['id_user']}');");
        if($resultado){
            header('Location: home.php?cadastro=sucesso');
        }      
    }
?>