<?php
    require 'conexao.php';

    //cria o banco
    mysqli_query($link, 'CREATE DATABASE IF NOT EXISTS DB_CONTATOS');

    //cria tabela
    mysqli_query($link, 'CREATE TABLE IF NOT EXISTS TB_PESSOA (
        id_pessoa int primary key auto_increment,
        nome varchar(100) not null
    )');

    mysqli_query($link, 'CREATE TABLE IF NOT EXISTS TB_EMAIL (
        id_email int primary key auto_increment,
        email varchar(50) not null,
        id_pessoa int not null, 
        foreign key (id_pessoa) references TB_PESSOA(id_pessoa)
    )');

    mysqli_query($link, 'CREATE TABLE IF NOT EXISTS TB_TELEFONE (
        id_telefone int primary key auto_increment,
        telefone varchar(50) not null,
        id_pessoa int not null, 
        foreign key (id_pessoa) references tb_pessoa(id_pessoa)
    )');

    // Se houver um termo de busca, capture diretamente do POST
$searchTerm = isset($_POST['search']) ? $_POST['search'] : '';

// Consulta para obter dados das 3 tabelas com filtro de busca, se presente
$query = "
    SELECT 
        p.id_pessoa,
        p.nome,
        e.email,
        t.telefone
    FROM 
        TB_PESSOA p
    LEFT JOIN 
        TB_EMAIL e ON p.id_pessoa = e.id_pessoa
    LEFT JOIN 
        TB_TELEFONE t ON p.id_pessoa = t.id_pessoa
    WHERE 
    p.nome like '%" . $searchTerm . "%' 
    OR
    e.email like '%" . $searchTerm . "%'
    OR
    t.telefone like '%" . $searchTerm . "%'
";


// Executa a consulta
$resultado = mysqli_query($link, $query);

?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>Agenda de contatos</title>
</head>
<body>
    <header>
        <div class="tittle">
            <h1>Agenda de Contatos</h1>
        </div>
        <div class="btn-adiciona">
            <a href="create.php"><input class="btn" type="button" value="ADICIONAR CONTATO"></a>
        </div>
    </header>
    <main>
        <section>
            <div class="search-container">
                <form class="search-form" method="POST" action="index.php">
                    <div>
                        <label for="search">Buscar Contato</label>
                    </div>
                    <div class="buscar">
                        <input type="text" name="search" id="search" value="<?= ($searchTerm) ?>">
                        <button type="submit" class="btn">Buscar</button>
                    </div>
                </form>
            </div>
        </section>
        <section>
            <div class="search-result">
                <table>
                    <caption>Resultados da pesquisa</caption>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>Telefone</th>
                            <th>E-mail</th>
                            <th>Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            // Exibindo os dados retornados da consulta
                            while ($dados = mysqli_fetch_assoc($resultado)) {
                                echo "<tr>";
                                echo "<td>" . $dados['id_pessoa'] . "</td>";
                                echo "<td>" . ($dados['nome']) . "</td>";
                                echo "<td>" . (isset($dados['telefone']) ? ($dados['telefone']) : 'Nenhum') . "</td>";
                                echo "<td>" . (isset($dados['email']) ? ($dados['email']) : 'Nenhum') . "</td>";
                                echo "<td>
                                        <a href='edit.php?id=" . $dados['id_pessoa'] . "'><button class='btn-small'>Editar</button></a>
                                        <a href='delete.php?acao=excluir&id=" . $dados['id_pessoa'] . "'><button class='btn-small'>Excluir</button></a>
                                    </td>";
                                echo "</tr>";
                            }
                            ?>
<!--
                        <tr>
                            <th>Daniel</th>
                            <th>13-997434878</th>
                            <th>danielsimonian@gmail.com</th>
                            <th>
                                <input class="btn-small" type="button" value="Editar">
                                <input class="btn-small" type="button" value="Deletar">
                            </th>
                        </tr>
-->
                    </tbody>
                </table>
            </div>
        </section>
    </main>
</body>
</html>