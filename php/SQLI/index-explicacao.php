<?php
$dsn = 'mysql:host=localhost;dbname=db_teste';
$user = 'root';
$pass = '';

//mostrar o erro caso haja
try {
    $link = new PDO($dsn, $user, $pass);
} catch (PDOException $e) {
    // echo '<pre>'; //essa TAG organiza o erro
    // print_r($e);
    // echo '</pre>';
    echo 'Erro:' . $e->getCode() . 'Mensagem'. $e->getMessage(); //tratamento de erro
}

//buscar no banco
$query = 'SELECT * FROM TB_USUARIOS';
$res = $link->query($query);
//print_r($res);
//$list = $res->fetchAll(); //exibe o conteúdo da tabela (associativo(palavras) e indexado(numero))
//$list = $res->fetchAll(PDO::FETCH_ASSOC); //exibe o conteúdo da tabela somente (associativo(palavras))
$list = $res->fetchAll(PDO::FETCH_CLASS); //outros tipos de FETCH_CLASS
//$list = $res->fetchAll(PDO::FETCH_OBJ); //outros tipos de FETCH_OBJ
// mais aqui: https://www.php.net/manual/en/pdostatement.fetchall.php
echo '<pre>';
print_r($list);
echo '</pre>';

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
    <main>
        <section class="container m-5">
            <form class="form" method="POST" action="">
                <div class="mb-3"><input class="form-control" type="text" name="nome" placeholder="Nome"></div>
                <div class="mb-3"><input class="form-control" type="password" name="senha" placeholder="Senha"></div>
                <button class="btn btn-primary">Entrar</button>
            </form>
        </section>
    </main>
</body>
</html>