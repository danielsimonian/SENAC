<?php

    /*

    HERANÇA: 
    Poder herdar atributos e métodos de uma classe pai (Instrumento)

    POLIMORFISMO: 
    Mesmo herdando atributos ou métodos do pai, o filho tem liberdade para 
    ter o mesmo atributo ou método diferente do pai;
    
    */

    class Instrumento {

        public $nome = null;
        public $tipo = null;
        public $fabricante = null;
        public $preco = null;

        function tocar() 
        { echo "Tocando o instrumento"; }

        function afinar()
        { echo "Afinando o instrumento"; }

        function __get($atributo){
            return $this-> $atributo;
        }

        function __set($atributo,$valor){
            $this->$atributo = $valor;
        }

    }

    class Guitarra extends Instrumento {
        public $tipoDeCordas;
        
        function tocar() 
        { echo "Tocando guitarra elétrica!"; }
    }

    Class Piano extends Instrumento{
        function afinar()
        { echo "Afinando o piano com precisão!"; }
    }

    Class Bateria extends Instrumento{
        function tocar() 
        { echo "Tocando bateria com ritmo!"; }
    }

    $gibson = new Guitarra();
    $yamaha = new Piano();
    $roland = new Bateria();

    $gibson -> __set("nome","Gibson Les Paul");
    $gibson -> __set("tipo","Elétrica");
    $gibson -> __set("fabricante","Gibson");
    $gibson -> __set("preco","R$ 7.000,00");
    $gibson -> __set("tipoDeCordas","Aço");

    echo "<b>Guitarra " . $gibson ->__get("nome") . "</b>";
    echo "<br/>";
    echo "Tipo: " . $gibson ->__get("tipo");
    echo "<br/>";
    echo "Fabricante: " . $gibson ->__get("fabricante");
    echo "<br/>";
    echo "Preço: " . $gibson ->__get("preco");
    echo "<br/>";
    echo "Tipo de cordas: " . $gibson ->__get("tipoDeCordas");
    echo "<br/>";
    echo $gibson->tocar();
    echo "<br/>";     
    echo "<hr>";  

    echo "<b>Piano Yamaha: </b>";
    echo $yamaha->afinar();
    echo "<hr>";

    echo "<b>Bateria Roland: </b>";
    echo $roland->tocar();
    echo "<hr>";
?>
