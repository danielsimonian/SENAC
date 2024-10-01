function carregar(){
    let agora = new Date()
    let horas = agora.getHours()
    let minutos = agora.getMinutes()

    let saudacao = document.getElementById('saudacao')
    let queHorasSao = document.getElementById('queHorasSao')
    let imagem = document.getElementById('imagem')
    let saudacaoTexto = `Agora são ${horas} horas e ${minutos} minutos!`

    if (horas >= 0 && horas <= 6){
        saudacao.innerText = `Boa Madrugada!`
        queHorasSao.innerText = saudacaoTexto
        imagem.src = 'img/madrugada.jfif'

    } else if (horas >= 6 && horas < 12){
        saudacao.innerText = `Bom Dia!`
        queHorasSao.innerText = saudacaoTexto
        imagem.src = 'img/manhã.jfif'

    } else if (horas >= 12 && horas < 18){
        saudacao.innerText = `Boa Tarde!`
        queHorasSao.innerText = saudacaoTexto
        imagem.src = 'img/tarde.jfif'

    } else if (horas >= 18 && horas < 24){
        saudacao.innerText = `Boa Noite!`
        queHorasSao.innerText = saudacaoTexto
        imagem.src = 'img/noite.jfif'
    }
}