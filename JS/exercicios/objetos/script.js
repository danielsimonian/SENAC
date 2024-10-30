let pessoa = {
    nome: 'Daniel',
    idade: '39',
    saudacao: function(){
        console.log('E ae, mermão!')
    },
    dizerNome: function(){
        console.log(`Meu nome é ${this.nome}.`);
    },
    dizerIdade: function(){
        console.log(`Eu tenho ${this.idade} anos.`)
    }
};

pessoa.dizerNome();
pessoa.dizerIdade();
