<html lang="pt-BR">

<head>
  <meta charset="utf-8" />
  <title>App Help Desk</title>
  <link rel="stylesheet" href="./style/style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
  

  <nav class="navbar navbar-dark bg-dark">
    <a class="navbar-brand" href="home.php">
      <img src="./img/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
      App Help Desk
    </a>
  </nav>

  <div class="container">
    <div class="row">

      <div class="card-login">
        <div class="card">
          <div class="card-header">
            Login
          </div>
          <div class="card-body">
            <form action="valida_login.php" method="POST">
              <div class="form-group">
                <input name="email" type="email" class="form-control" placeholder="E-mail">
              </div>
              <div class="form-group">
                <input name="senha" type="password" class="form-control" placeholder="Senha">
              </div>
              <div id="cadastrese">
                <a href="cadastro.php">
                  <p>Novo? Cadastre-se!</p>
                </a>
              </div>

              <?php
                //VALIDA SE O PARÂMETRO LOGIN EXISTE E SE FOI AUTENTICADO
                if (isset($_GET['login']) && $_GET['login'] === 'erro') { ?>
                  <div class="text-danger"> Usuário ou senha inválido(s)!</div>
              <?php } ?>    
              
              <?php
                //VALIDA SE O USUÁRIO TENTOU ENTRAR EM OUTRA PÁGINA SEM LOGAR
                if (isset($_GET['login']) && $_GET['login'] === 'erro2') { ?>
                  <div class="text-danger"> Login obrigatório!</div>
              <?php } ?>
              
              <button class="btn btn-lg btn-info btn-block" type="submit">Entrar</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <?php if (isset($_GET['cadastro']) && $_GET['cadastro'] === 'sucesso') { ?>   
      <script>
          alert('Chamado cadastrado com sucesso!');
          window.history.replaceState(null, null, window.location.pathname);
      </script>
    <?php } ?>
</body>

</html>