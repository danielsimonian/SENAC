<?php
    // Inclui o arquivo de conexão com o banco de dados
    require 'conexao.php';

    // Verifica se o ID foi passado na URL e se é um valor numérico
    if (isset($_GET['id_pessoa']) && is_numeric($_GET['id_pessoa'])) {
        // Recebe o ID do contato a ser excluído
        $id_pessoa = $_GET['id_pessoa'];

        // Inicia uma transação no banco de dados para garantir a consistência dos dados
        // Verifica se a conexão foi bem-sucedida antes de iniciar a transação
        if ($link) {
            mysqli_begin_transaction($link); // Começa a transação

            try {
                // Excluir o contato da tabela TB_PESSOA
                $deleteQueryPessoa = "DELETE FROM TB_PESSOA WHERE id_pessoa = $id_pessoa";
                $resultPessoa = mysqli_query($link, $deleteQueryPessoa);

                // Verifica se a exclusão do contato foi bem-sucedida
                if (!$resultPessoa) {
                    throw new Exception("Erro ao excluir o contato: " . mysqli_error($link));
                }

                // Excluir o e-mail associado ao contato da tabela TB_EMAIL
                $deleteQueryEmail = "DELETE FROM TB_EMAIL WHERE id_pessoa = $id_pessoa";
                $resultEmail = mysqli_query($link, $deleteQueryEmail);

                // Excluir o telefone associado ao contato da tabela TB_TELEFONE
                $deleteQueryTelefone = "DELETE FROM TB_TELEFONE WHERE id_pessoa = $id_pessoa";
                $resultTelefone = mysqli_query($link, $deleteQueryTelefone);

                // Se as exclusões foram bem-sucedidas, confirma a transação
                mysqli_commit($link);

                // Redireciona para a página de confirmação de exclusão
                header('Location: deleted.php');
                exit;
            } catch (Exception $e) {
                // Caso ocorra algum erro, desfaz as alterações feitas e exibe a mensagem de erro
                mysqli_roll_back($link);
                die("Erro ao excluir o contato: " . $e->getMessage());
            }
        } else {
            die("Erro na conexão com o banco de dados.");
        }
    } else {
        // Caso o ID não seja válido, exibe uma mensagem de erro
        die("ID inválido ou não fornecido.");
    }

    // Fecha a conexão com o banco de dados
    mysqli_close($link);
?>
