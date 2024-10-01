function calculaIdade(){
    let ano = document.getElementById('ano').value
    let masculino = document.getElementById('m')
    let feminino = document.getElementById('f')
    let texto = document.getElementById('texto')
    let img = document.getElementById('img')
    
    let idade = 2024 - ano

    if(masculino.checked){
        if(idade > 0 && idade < 2){
            texto.innerText = `Você é um bebê!`
            img.src = 'img/bebemenino.png'
        } else if(idade >= 2 && idade < 12){
            texto.innerText = `Você é uma criança!`
            img.src = 'img/criancamenino.webp'
        } else if(idade >= 12 && idade < 18){
            texto.innerText = `Você é um adolescente!`
            img.src = 'img/adolescentemasc.jpg'
        } else if(idade >= 18 && idade < 60){
            texto.innerText = `Você é um homem!`
            img.src = 'img/homem.jpg'
        } else if(idade >= 60 && idade < 110){
            texto.innerText = `Você é um idoso!`
            img.src = 'img/idoso.jpg'
        }
    }

    if(feminino.checked){
        if(idade > 0 && idade < 2){
            texto.innerText = `Você é um bebê!`
            img.src = 'img/bebemenina.jpg'
        } else if(idade >= 2 && idade < 12){
            texto.innerText = `Você é uma criança!`
            img.src = 'img/criancamenina.jpg'
        } else if(idade >= 12 && idade < 18){
            texto.innerText = `Você é uma adolescente!`
            img.src = 'img/adolescentefem.jpg'
        } else if(idade >= 18 && idade < 60){
            texto.innerText = `Você é uma mulher!`
            img.src = 'img/mulher.jpg'
        } else if(idade >= 60 && idade < 110){
            texto.innerText = `Você é uma idosa!`
            img.src = 'img/idosa.jpeg'
        }
    }
}