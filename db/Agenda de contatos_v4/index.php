<?php
require 'conexao.php';

// Se houver um termo de busca, capture diretamente do POST
$searchTerm = isset($_POST['search']) ? $_POST['search'] : '';

// Consulta para obter dados das 3 tabelas com filtro de busca, se presente
$query = "
    SELECT 
        p.id_pessoa,
        p.nome,
        GROUP_CONCAT(DISTINCT e.email SEPARATOR '<br>') as emails,
        GROUP_CONCAT(DISTINCT t.telefone SEPARATOR '<br>') as telefones
    FROM 
        TB_PESSOA p
    LEFT JOIN 
        TB_EMAIL e ON p.id_pessoa = e.id_pessoa
    LEFT JOIN 
        TB_TELEFONE t ON p.id_pessoa = t.id_pessoa
    WHERE 
        p.nome LIKE '%" . $searchTerm . "%' 
        OR e.email LIKE '%" . $searchTerm . "%'
        OR t.telefone LIKE '%" . $searchTerm . "%'
    GROUP BY p.id_pessoa
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
                            <th>Telefone(s)</th>
                            <th>E-mail(s)</th>
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
                                echo "<td>" . ($dados['telefones'] ?: 'Nenhum') . "</td>";
                                echo "<td>" . ($dados['emails'] ?: 'Nenhum') . "</td>";
                                echo "<td>
                                        <a href='edit.php?id=" . $dados['id_pessoa'] . "'><button class='btn-small'>Editar</button></a>
                                        <a href='delete.php?acao=excluir&id=" . $dados['id_pessoa'] . "'><button class='btn-small'>Excluir</button></a>
                                    </td>";
                                echo "</tr>";
                            }
                        ?>
                    </tbody>
                </table>
            </div>
        </section>
    </main>
</body>
</html>
