create table tb_telefone (
	id int not null primary key,
    telefone varchar(11) not null
);

create table tb_email (
	id int not null primary key,
    email varchar(50) not null
);

create table tb_pessoa (
	id int not null primary key,
    nome varchar(50) not null,
    id_telefone int not null,
    foreign key (id_telefone) references tb_telefone(id),
    id_email int not null,
    foreign key (id_email) references tb_email(id),
    nascimento date not null,
    endereco text not null,
    cidade varchar(50) not null,
    estado char(2) not null
);

create table tb_funcionario (
	id int not null primary key,
    id_pessoa int not null,
    foreign key (id_pessoa) references tb_pessoa(id),
    tipo varchar(20)
);

create table tb_cliente (
	id int not null primary key,
    id_pessoa int not null,
    foreign key (id_pessoa) references tb_pessoa(id)
);

create table tb_carro (
	id int null primary key,
    marca varchar(50) not null,
    modelo varchar(50) not null,
    cor varchar(20) not null,
    ano date not null,
    placa varchar(10) not null,
    chassi int not null
);

create table tb_venda (
	id int null primary key,
    id_funcionario int not null,
    foreign key (id_funcionario) references tb_funcionario(id),
    id_cliente int not null,
    foreign key (id_cliente) references tb_cliente(id),
    id_carro int not null,
    foreign key (id_carro) references tb_carro(id),
    pagamento varchar(30) not null
);
select * from tb_cliente;
describe tb_pessoa;

select * from tb_pessoa left join tb_carro on (tb