function adicionaNumero(){
    let numeroInserido = document.getElementById('numeroInserido').value
    let lista = document.getElementById('lista')
    let listaNumeros = []

    if (numeroInserido >= 1 && numeroInserido <=100){
        let option = document.createElement("option")
        option.innerHTML = `Valor ${numeroInserido} adicionado`
        lista.appendChild(option)
        listaNumeros.push(numeroInserido)

        console.log(listaNumeros)

    } else {
        window.alert("Digite um valor entre 1 e 100!")
    }
    
}

