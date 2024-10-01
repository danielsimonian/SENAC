function contar(){
    let inicio = document.getElementById('inicio')
    let fim = document.getElementById('fim')
    let passo = document.getElementById('passo')
    let passos = document.getElementById('passos')

// converter os números

    let inicioN = Number(inicio.value)
    let fimN = Number(fim.value)
    let passoN = Number(passo.value)

    if(inicioN < fimN){
        for(let i = inicioN; i <= fimN; i += passoN){
            passos.innerHTML += `${i} \u{1F449}`
        }            
    } else {
        for(let i = inicioN; i >= fimN; i -= passoN){
            passos.innerHTML += `${i} \u{1F449}`
        }       
    }
    passos.style.textAlign = 'left'
    passos.innerHTML += `\u{1F3C1}`
}