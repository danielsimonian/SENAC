function dimensao(){
    let altura = window.screen.availHeight
    let largura = window.screen.availWidth
    let resultado = document.getElementById('resultado')
    
    resultado.innerText = `Altura = ${altura}px\n Largura = ${largura}px`
}

function irParaSite(){
    let confirmar = confirm("Quer conhecer nosso trabalho!?")
    if(confirmar){
        window.location.href = "https://danielsimonian.github.io/damadigital/"
    } else {
        let confirmar2 = confirm("Tem certeza!?")
        if(!confirmar2){
        window.location.href = "https://danielsimonian.github.io/damadigital/"
    }
}}

function abrirJanela() {
    myWindow = window.open("https://danielsimonian.github.io/damadigital/");
}

function fecharJanela() {
    myWindow.close();
}