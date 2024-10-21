let altura = window.innerHeight -100;
let largura = window.innerWidth -100;

function apareceNaTela(){
    
    let randomX = Math.floor(Math.random() * altura);
    let randomY = Math.floor(Math.random() * largura);
    console.log(randomX);
    console.log(randomY);

    let mosquito = document.getElementById('mosquito')
    mosquito.innerHTML = 
    `
        <img id="mosquitoAparece" class="mosquito" src="./img/mosquito.png" alt="">
    `
    let mosquitoAparece = document.getElementById('mosquitoAparece')
    mosquitoAparece.style.top = randomX + 'px'
    mosquitoAparece.style.left = randomY + 'px'
    mosquitoAparece.style.position = 'absolute'
    
    
}

function comecarPartida() {
    setInterval(() => apareceNaTela(altura, largura), 1000);

}




