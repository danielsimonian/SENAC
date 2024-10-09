$(document).ready(function(){
    $(".menu-button").click(function(){
    $(".menu-bar").toggleClass( "open" );
    })
    })


let idade = document.getElementById('idade')
let altura = document.getElementById('altura')
let peso = document.getElementById('peso')
let imc = 0


function calculaImc(){
    let nome = document.getElementById('nome').value
    let idadeN = Number(idade.value)
    let alturaN = Number(altura.value)
    let pesoN = Number(peso.value)
    let melhorPlano = document.getElementById('melhorPlano')
    imc = pesoN/(alturaN*alturaN)
    console.log(imc)

    if(idadeN >= 0 && idadeN < 5) {
        melhorPlano.innerHTML =
        `
            <p>Plano Baby - Ideal para seu bebê!</p>
        `
    } else if(idadeN >= 5 && idadeN < 12) {
        melhorPlano.innerHTML =
        `
            <div>
            <p>Olá ${nome}, tudo bem?</p>
            </div>
            <p>Seu plano ideal é o Plano Criança - Ideal para sua criança!</p>
        `
    } else if(idadeN >= 12 && idadeN < 19) {
        melhorPlano.innerHTML =
        `
            <p>Plano Adolescente - Ideal para seu adolescente!</p>
        `
    } else if(idadeN >= 19 && idadeN < 41) {
        melhorPlano.innerHTML =
        `
            <p>Plano Adulto - Ideal para você que é adulto!</p>
        `
    } else if(idadeN >= 41 && idadeN < 61) {
        melhorPlano.innerHTML =
        `
            <p>Plano Senior - Ideal para você que é senior!</p>
        `
    } else if(idadeN >= 61) {
        melhorPlano.innerHTML =
        `
            <p>Plano Idoso - Ideal para você que é idoso!</p>
        `
    }
}