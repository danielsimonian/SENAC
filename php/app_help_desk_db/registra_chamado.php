<?php
    require_once "validador_acesso.php";
    require "app_help_desk_seguranca/conexao.php";
    require "app_help_desk_seguranca/valida_login.php";

    if ($_POST) {
        $titulo = $_POST['titulo'];
        $categoria = $_POST['categoria'];
        $descricao = $_POST['descricao'];
        $idUser = $_POST['idUsuarioAutenticado'];

       
        $resultado = mysqli_query($link, "INSERT INTO `tb_chamados`(`titulo`, `categoria`, `descricao`, `id_user`) VALUES ('$titulo','$categoria','$descricao',$idUser);");
        if($resultado){
            header('Location: home.php?cadastro=sucesso&idUser=' . $idUser);
            //echo('Id do usuario: '. $_SESSION['idUsuarioAutenticado']);
        } else {
            header('Location: home.php?cadastro=erro&idUser=' . $idUser);
            //echo('Com erro, id do usuario: '. $_SESSION['idUsuarioAutenticado']);
        }

        
    

    }
?>