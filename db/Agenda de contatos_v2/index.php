<?php
    require 'conexao.php';

    // Cria o banco de dados e as tabelas, caso ainda não existam
    mysqli_query($link, 'CREATE DATABASE IF NOT EXISTS DB_CONTATOS');

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

    // Verificar se existe um termo de busca
    $searchTerm = isset($_GET['search']) ? mysqli_real_escape_string($link, $_GET['search']) : '';

    // Definir a consulta SQL com base na busca (se houver)
    if ($searchTerm) {
        // Se o usuário fez uma busca, buscamos pelo nome
        $query = "SELECT p.nome, t.telefone, e.email
                  FROM TB_PESSOA p
                  LEFT JOIN TB_TELEFONE t ON p.id_pessoa = t.id_pessoa
                  LEFT JOIN TB_EMAIL e ON p.id_pessoa = e.id_pessoa
                  WHERE p.nome LIKE '%$searchTerm%'";
    } else {
        // Caso contrário, buscamos todos os contatos
        $query = "SELECT p.nome, t.telefone, e.email
                  FROM TB_PESSOA p
                  LEFT JOIN TB_TELEFONE t ON p.id_pessoa = t.id_pessoa
                  LEFT JOIN TB_EMAIL e ON p.id_pessoa = e.id_pessoa";
    }

    // Executar a consulta
    $result = mysqli_query($link, $query);

    // Verificar se há erros na consulta
    if (!$result) {
        die("Erro na consulta: " . mysqli_error($link));
    }
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
            <a href="create.php"><button class="btn" type="submit">Adicionar Contato</button></a>
        </div>
    </header>
    <main>
        <section>
            <div class="search-container">
                <form action="" method="get">
                    <label for="search">Buscar Contato</label>
                    <input type="text" name="search" id="search" value="<?php echo htmlspecialchars($searchTerm); ?>">
                    <button type="submit">Buscar</button>
                </form>
            </div>
        </section>
        <section>
            <div class="search-result">
                <table>
                    <caption>Resultados da pesquisa</caption>
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Telefone</th>
                            <th>E-mail</th>
                            <th>Ações</th>
                        </tr>
                    </thead>
                    <tbody>
    <?php
        // Exibir os resultados da consulta na tabela
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>" . htmlspecialchars($row['nome']) . "</td>";
            echo "<td>" . htmlspecialchars($row['telefone']) . "</td>";
            echo "<td>" . htmlspecialchars($row['email']) . "</td>";
            echo "<td>
                    <a href='edit.php?id_pessoa=" . $row['id_pessoa'] . "'><input class='btn-small' type='button' value='Editar'></a>
                    <a href='delete.php?id_pessoa=" . $row['id_pessoa'] . "' onclick='return confirm(\"Tem certeza que deseja excluir este contato?\");'><input class='btn-small' type='button' value='Deletar'></a>
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

<?php
    // Fechar a conexão com o banco de dados
    mysqli_close($link);
?>
