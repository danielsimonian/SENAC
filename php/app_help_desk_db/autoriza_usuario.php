<?php
require_once "validador_acesso.php";
require_once "conexao.php";

if($_GET['autorizar'] === 'sim'){
  mysqli_query ($link,"UPDATE tb_user SET perfil = 'adm' WHERE id_user = {$_GET['id_user']}");
  header('Location: autorizar_usuario.php?autorizado=sim');
} else if ($_GET['autorizar'] === 'nao'){
  header('Location: autorizar_usuario.php?autorizado=nao');
}
?>