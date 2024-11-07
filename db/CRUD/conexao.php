<?php

//conexão com o banco
    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $db = 'db_senhas';
    $link = mysqli_connect($host, $user, $pass, $db);

    //cria o banco
    mysqli_query($link, 'CREATE DATABASE IF NOT EXISTS DB_SENHAS');

    ?>