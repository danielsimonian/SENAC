<?php
// Definindo o namespace para a classe Personagem
namespace Jogo\Personagem;

class Personagem {
    private $nome;
    private $imagem;
    private $forca;
    private $destreza;
    private $inteligencia;
    private $habilidade;

    public function __construct($nome, $imagem, $forca, $destreza, $inteligencia, $habilidade) {
        $this->nome = $nome;
        $this->imagem = $imagem;
        $this->forca = $forca;
        $this->destreza = $destreza;
        $this->inteligencia = $inteligencia;
        $this->habilidade = $habilidade;
    }

    public function getNome() {
        return $this->nome;
    }

    public function getImagem() {
        return $this->imagem;
    }

    public function getForca() {
        return $this->forca;
    }

    public function getDestreza() {
        return $this->destreza;
    }

    public function getInteligencia() {
        return $this->inteligencia;
    }

    public function getHabilidade() {
        return $this->habilidade;
    }
}

// Definindo o namespace para a classe Jogo
namespace Jogo\Jogo;

use Jogo\Personagem\Personagem;

class Jogo {
    private $personagens;

    public function __construct() {
        $this->personagens = [
            'guerreiro' => new Personagem(
                'Guerreiro',
                './img/guerreiro.png',
                90,
                70,
                60,
                'Ataque Poderoso'
            ),
            'mago' => new Personagem(
                'Mago',
                './img/mago.png',
                50,
                80,
                95,
                'Magias poderosas'
            ),
            'ladrao' => new Personagem(
                'Ladrão',
                './img/ladrao.png',
                60,
                90,
                75,
                'Roubos furtivos'
            ),
            'ninja' => new Personagem(
                'Ninja',
                './img/ninja.png',
                80,
                95,
                70,
                'Velocidade extrema'
            ),
            'elfo' => new Personagem(
                'Elfo',
                './img/elfo.png',
                70,
                85,
                80,
                'Mestre arqueiro'
            ),
            'anao' => new Personagem(
                'Anão',
                './img/anao.png',
                95,
                60,
                65,
                'Defesa inquebrantável'
            ),
            'heroi' => new Personagem(
                'Herói',
                './img/heroi.png',
                85,
                75,
                80,
                'Liderança e coragem'
            )
        ];
    }

    public function exibirCarta($personagemEscolhido) {
        if (isset($this->personagens[$personagemEscolhido])) {
            $personagem = $this->personagens[$personagemEscolhido];
            return [
                'nome' => $personagem->getNome(),
                'imagem' => $personagem->getImagem(),
                'forca' => $personagem->getForca(),
                'destreza' => $personagem->getDestreza(),
                'inteligencia' => $personagem->getInteligencia(),
                'habilidade' => $personagem->getHabilidade()
            ];
        }
        return null;
    }
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Super Trunfo - Personagens</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
        }

        .card {
            width: 250px;
            height: 400px;
            background-color: #fff;
            border-radius: 10px;
            border: 2px solid #ddd;
            padding: 20px;
            display: inline-block;
            margin: 10px;
            text-align: center;
        }

        .card img {
            width: 100px;
            height: 100px;
            margin-bottom: 20px;
        }

        .card h2 {
            margin: 10px 0;
            color: #333;
        }

        .card .attribute {
            font-size: 16px;
            margin: 5px 0;
        }

        .card .attribute strong {
            color: #333;
        }

        select, input[type="submit"] {
            padding: 10px;
            margin-top: 20px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>

    <h1>Super Trunfo - Personagens</h1>

    <form action="" method="POST">
        <select name="personagem">
            <option selected disabled>Escolha um Personagem</option>
            <option value="guerreiro">Guerreiro</option>
            <option value="mago">Mago</option>
            <option value="ladrao">Ladrão</option>
            <option value="ninja">Ninja</option>
            <option value="elfo">Elfo</option>
            <option value="anao">Anão</option>
            <option value="heroi">Herói</option>
        </select>
        <input type="submit" value="Gerar Carta">
    </form>

    <?php
    // Importando a classe Jogo usando o namespace
    use Jogo\Jogo\Jogo;

    $jogo = new Jogo();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $personagemEscolhido = $_POST['personagem'];
        $carta = $jogo->exibirCarta($personagemEscolhido);
    }
    ?>

    <?php if (isset($carta)): ?>
        <div class="card">
            <img src="<?= $carta['imagem'] ?>" alt="<?= $carta['nome'] ?>">
            <h2><?= $carta['nome'] ?></h2>
            <div class="attribute"><strong>Força:</strong> <?= $carta['forca'] ?></div>
            <div class="attribute"><strong>Destreza:</strong> <?= $carta['destreza'] ?></div>
            <div class="attribute"><strong>Inteligência:</strong> <?= $carta['inteligencia'] ?></div>
            <div class="attribute"><strong>Habilidade Especial:</strong> <?= $carta['habilidade'] ?></div>
        </div>
    <?php endif; ?>

</body>
</html>
