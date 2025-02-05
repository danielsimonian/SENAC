<?php

    class User {
        public $nome = null;
        protected $cpf = null;
        private $senha = null;

        public function __get($atributo) {
            return $this-> $atributo;
        }

        public function __set($atributo, $valor) {
            $this->$atributo = $valor;
        }

        public function cadastrar() {
            echo "Nome: " . $this->nome . "<br>";
            echo "CPF: " . $this->cpf . "<br>";
            echo "Senha: " . $this->senha . "<br>";
        }
    }

    class Jogador extends User {
        public $parceiro = null;

        public function mostrarParceiro(){
            echo "Parceiro: " . $this->parceiro;
        }
    }

    $user = new User();
    $jogador = new Jogador();

    //user
    $user -> __set("nome", "Daniel");
    $user -> __set("cpf", "34407719893");
    $user -> __set("senha", "1234");
    $user->cadastrar();

    //jogador
    $jogador -> __set("parceiro", "Baran");
    $jogador->mostrarParceiro();
    

?>