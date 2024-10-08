$(document).ready(function(){
    $(".menu-button").click(function(){
    $(".menu-bar").toggleClass( "open" );
    })
    })

let nome = document.getElementById('nome')
let idade = document.getElementById('idade')
let altura = document.getElementById('altura')
let peso = document.getElementById('peso')
let imc = 0


function calculaImc(){
    let idadeN = Number(idade.value)
    let alturaN = Number(altura.value)
    let pesoN = Number(peso.value)
    imc = pesoN/(alturaN*alturaN)
    console.log(imc)

    let melhorPlano = document.createElement('melhorPlano')
    melhorPlano
}


/* let option = document.createElement("option")
option.innerHTML = `Valor ${num.value} adicionado`
lista.appendChild(option)
console.log(valores)
res.innerHTML = ""
*/