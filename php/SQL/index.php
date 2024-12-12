<?php
if (!empty($_POST['usuario']) && !empty($_POST['senha'])) {
    $dsn = 'mysql:host=localhost;dbname=db_teste';
    $user = 'root';
    $pass = '';
    
    try {
        $link = new PDO($dsn, $user, $pass);
        $link->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Definindo o modo de erro para exceções

        // Proteção contra SQL Injection: Usando parâmetros preparados
        $query = "SELECT * FROM TB_USUARIOS 
                WHERE usuario = :usuario 
                AND senha = :senha";

        $res = $link->prepare($query); // Prepara a consulta

        // Vincula os valores aos parâmetros
        $res->bindValue(':usuario', $_POST['usuario']); //substitui o valor :usuario pelo $_POST['usuario']
        $res->bindValue(':senha', $_POST['senha']);

        // Executa a consulta
        $res->execute();

        // Verifica se encontrou o usuário
        $usuario = $res->fetch(PDO::FETCH_ASSOC);

        if ($usuario) {
            echo "Usuário encontrado!";
        } else {
            echo "Usuário ou senha inválidos.";
        }

    } catch (PDOException $e) {
        echo 'Erro: ' . $e->getCode() . ' Mensagem: ' . $e->getMessage(); // Tratamento de erro
    }
}
?>


<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <main class="d-flex flex-column align-items-center">
        <div class="card m-5 bg-body-secondary">
            <div class="card-body m-5">
                <form class="form" method="POST" action="">
                    <div class="mb-3"><input class="form-control" type="text" name="usuario" placeholder="Nome"></div>
                    <div class="mb-3"><input class="form-control" type="password" name="senha" placeholder="Senha"></div>
                    <?php
                        if(empty($usuario)){
                            echo '<p><small class="text-danger">Digite Nome e Senha</small></p>';
                        } else {
                            echo '<p><small class="text-success">Logado!</p>';
                        }
                    ?>
                    <button class="btn btn-primary">Entrar</button>
                </form>
            </div>
        </div>
        
    </main>
</body>
</html>