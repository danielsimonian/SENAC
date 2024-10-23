let altura = window.innerHeight -150;
let largura = window.innerWidth -150;
let velocidade;
let level = document.getElementById('level').value
    switch(level) {
        case 'facil':
            velocidade = 1000
            break
        case 'medio':
            velocidade = 800
            break
        case 'dificil':
            velocidade = 100
            break
    }

function apareceNaTela(){  
    let randomX = Math.floor(Math.random() * altura);
    let randomY = Math.floor(Math.random() * largura);
    let tamanhoMosquito = Math.floor(Math.random() * (150 - 30) + 30);
    let mosquito = document.getElementById('mosquito')
    mosquito.innerHTML = 
    `
        <img id="mosquitoAparece" class="mosquito" src="./img/mosquito.png" alt="">
    `
    let mosquitoAparece = document.getElementById('mosquitoAparece')
    mosquitoAparece.style.top = randomX + 'px'
    mosquitoAparece.style.left = randomY + 'px'
    mosquitoAparece.style.position = 'absolute'
    mosquitoAparece.style.width = tamanhoMosquito + 'px'
    mosquitoAparece.style.height = tamanhoMosquito + 'px'
}
    
    

function comecarPartida() {
    setInterval(() => apareceNaTela(), velocidade);
    console.log(velocidade)
    console.log(level)
}