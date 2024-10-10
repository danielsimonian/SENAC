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
    imc = (pesoN/(alturaN*alturaN)).toFixed(2)
    let valorPlano = 399.99

    if(imc < 16 || imc > 30) {
        valorPlano = valorPlano*1.2
    }
        if (isNaN(nome) && idadeN, alturaN, pesoN != 0){
            //bebe
            if(idadeN >= 0 && idadeN < 5) {
                valorPlano = (valorPlano*1.2).toFixed(2)
                melhorPlano.innerHTML =
                `
                <div>
                    <h3>Olá ${nome}, tudo bem?</h3>
                </div>
                <div>
                    <p>Segundo o <strong><strong>IMC</strong></strong> do seu bebê de <strong>${imc}</strong></p>
                </div>
                <div>
                    <h4>Seu plano ideal é o:</h4>
                </div>
                <div class="descricao-plano">
                    <div>
                        <h1>Plano Baby</h1>
                    </div>
                    <div>
                        <p class="sub-titulo">Ideal para seu bebê!</p>
                    </div>
                    <div>
                        <p class="preco">A partir de R$ ${valorPlano}</p>
                    </div>
                </div>
                `
                //crianca
            } else if(idadeN >= 5 && idadeN < 12) {
                valorPlano = (valorPlano*1.1).toFixed(2)
                melhorPlano.innerHTML =
                `
                <div>
                    <h3>Olá ${nome}, tudo bem?</h3>
                </div>
                <div>
                    <p>Segundo o <strong>IMC</strong> do seu filho de <strong>${imc}</strong></p>
                </div>
                <div>
                    <h4>Seu plano ideal é o:</h4>
                </div>
                <div class="descricao-plano">
                    <div>
                        <h1>Plano Kids</h1>
                    </div>
                    <div>
                        <p class="sub-titulo">Ideal para seu filho!</p>
                    </div>
                    <div>
                        <p class="preco">A partir de R$ ${valorPlano}</p>
                    </div>
                </div>
                `
                //adolescente
            } else if(idadeN >= 12 && idadeN < 19) {
                valorPlano = (valorPlano*1.15).toFixed(2)
                melhorPlano.innerHTML =
                `
                <div>
                    <h3>Olá ${nome}, tudo bem?</h3>
                </div>
                <div>
                    <p>Segundo o <strong>IMC</strong> do seu filho de <strong>${imc}</strong></p>
                </div>
                <div>
                    <h4>Seu plano ideal é o:</h4>
                </div>
                <div class="descricao-plano">
                    <div>
                        <h1>Plano Teens</h1>
                    </div>
                    <div>
                        <p class="sub-titulo">Ideal para seu adolescente!</p>
                    </div>
                    <div>
                        <p class="preco">A partir de R$ ${valorPlano}</p>
                    </div>
                </div>
                `
                //adulto
            } else if(idadeN >= 19 && idadeN < 41) {
                melhorPlano.innerHTML =
                `
                <div>
                    <h3>Olá ${nome}, tudo bem?</h3>
                </div>
                <div>
                    <p>Segundo seu <strong>IMC</strong> de <strong>${imc}</strong></p>
                </div>
                <div>
                    <h4>Seu plano ideal é o:</h4>
                </div>
                <div class="descricao-plano">
                    <div>
                        <h1>Plano Adulto</h1>
                    </div>
                    <div>
                        <p class="sub-titulo">Ideal para você!</p>
                    </div>
                    <div>
                        <p class="preco">A partir de R$ ${valorPlano}</p>
                    </div>
                </div>
                `
                //senior
            } else if(idadeN >= 41 && idadeN < 61) {
                valorPlano = (valorPlano*1.2).toFixed(2)
                melhorPlano.innerHTML =
                `
                <div>
                    <h3>Olá ${nome}, tudo bem?</h3>
                </div>
                <div>
                    <p>Segundo seu <strong>IMC</strong> de <strong>${imc}</strong></p>
                </div>
                <div>
                    <h4>Seu plano ideal é o:</h4>
                </div>
                <div class="descricao-plano">
                    <div>
                        <h1>Plano Senior</h1>
                    </div>
                    <div>
                        <p class="sub-titulo">Ideal para você!</p>
                    </div>
                    <div>
                        <p class="preco">A partir de R$ ${valorPlano}</p>
                    </div>
                </div>
                `
                //idoso
            } else if(idadeN >= 61) {
                valorPlano = (valorPlano*1.4).toFixed(2)
                melhorPlano.innerHTML =
                `
                <div>
                    <h3>Olá ${nome}, tudo bem?</h3>
                </div>
                <div>
                    <p>Segundo seu <strong>IMC</strong> de <strong>${imc}</strong></p>
                </div>
                <div>
                    <h4>Seu plano ideal é o:</h4>
                </div>
                <div class="descricao-plano">
                    <div>
                        <h1>Plano Idoso</h1>
                    </div>
                    <div>
                        <p class="sub-titulo">Ideal para você!</p>
                    </div>
                    <div>
                        <p class="preco">A partir de R$ ${valorPlano}</p>
                    </div>
                </div>
            `
            }
            
            
        } else {
            alert('Favor digitar os campos vazios')
        } 
    
}