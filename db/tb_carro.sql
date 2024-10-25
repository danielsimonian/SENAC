create database db_carros;

create table tb_pessoa (
	id_pessoa int not null primary key,
    nome varchar(50) not null,
    nascimento date not null,
    endereco text not null,
    cidade varchar(50) not null,
    estado char(2) not null,
    sexo char(1) not null
);

alter table tb_pessoa add column CPF varchar(15) after nome; -- adiciona uma coluna após coluna desejada
alter table tb_pessoa add column RG varchar(15) after CPF;
alter table tb_pessoa change CPF CPF varchar(11) not null;
alter table tb_pessoa change RG RG varchar(15) not null;

describe tb_pessoa;

create table tb_telefone (
	id int not null primary key,
    telefone varchar(11) not null,
    id_pessoa int not null,
    foreign key (id_pessoa) references tb_pessoa(id_pessoa)
);

alter table tb_telefone change id id_telefone int; -- alterar id para id_telefone
alter table tb_email change id id_email int;
describe tb_email;
    
create table tb_email (
	id int not null primary key,
    email varchar(50) not null,
	id_pessoa int not null,
    foreign key (id_pessoa) references tb_pessoa(id_pessoa)
);

INSERT INTO tb_pessoa (id_pessoa, nome, nascimento, endereco, cidade, estado, sexo) VALUES
(1, 'Ana Silva', '1990-05-15', 'Rua A, 123', 'São Paulo', 'SP', 'F'),
(2, 'Carlos Souza', '1985-10-20', 'Avenida B, 456', 'Rio de Janeiro', 'RJ', 'M'),
(3, 'Mariana Oliveira', '1992-03-12', 'Rua C, 789', 'Belo Horizonte', 'MG', 'F'),
(4, 'Pedro Santos', '1988-07-30', 'Praça D, 101', 'Curitiba', 'PR', 'M'),
(5, 'Fernanda Lima', '1995-01-25', 'Rua E, 202', 'Salvador', 'BA', 'F'),
(6, 'João Pereira', '1983-09-10', 'Avenida F, 303', 'Fortaleza', 'CE', 'M'),
(7, 'Tatiane Costa', '1991-12-05', 'Rua G, 404', 'Manaus', 'AM', 'F'),
(8, 'Lucas Martins', '1987-04-18', 'Praça H, 505', 'Recife', 'PE', 'M'),
(9, 'Juliana Ferreira', '1994-06-23', 'Rua I, 606', 'Porto Alegre', 'RS', 'F'),
(10, 'Rafael Almeida', '1982-11-14', 'Avenida J, 707', 'Goiânia', 'GO', 'M'),
(11, 'Isabela Rocha', '1993-02-09', 'Rua K, 808', 'Belém', 'PA', 'F'),
(12, 'Thiago Nascimento', '1986-08-16', 'Praça L, 909', 'São Luís', 'MA', 'M'),
(13, 'Renata Martins', '1990-04-22', 'Rua M, 111', 'Campo Grande', 'MS', 'F'),
(14, 'Eduardo Ribeiro', '1989-07-29', 'Avenida N, 222', 'Natal', 'RN', 'M'),
(15, 'Aline Almeida', '1995-10-04', 'Rua O, 333', 'João Pessoa', 'PB', 'F'),
(16, 'Gustavo Dias', '1984-09-11', 'Praça P, 444', 'Florianópolis', 'SC', 'M'),
(17, 'Camila Gomes', '1991-01-17', 'Rua Q, 555', 'Maceió', 'AL', 'F'),
(18, 'Vinícius Silva', '1983-03-30', 'Avenida R, 666', 'Teresina', 'PI', 'M'),
(19, 'Patrícia Sousa', '1992-12-28', 'Rua S, 777', 'São Bernardo do Campo', 'SP', 'F'),
(20, 'Felipe Mendes', '1987-08-14', 'Praça T, 888', 'Diadema', 'SP', 'M'),
(21, 'Sofia Lima', '1994-06-06', 'Rua U, 999', 'Sorocaba', 'SP', 'F'),
(22, 'Daniel Costa', '1990-11-22', 'Avenida V, 1010', 'Ribeirão Preto', 'SP', 'M'),
(23, 'Mariana Ferreira', '1985-05-30', 'Rua W, 1111', 'Juiz de Fora', 'MG', 'F'),
(24, 'Leonardo Rocha', '1988-02-19', 'Praça X, 1212', 'Petrópolis', 'RJ', 'M'),
(25, 'Bianca Oliveira', '1992-07-05', 'Rua Y, 1313', 'Campinas', 'SP', 'F'),
(26, 'Bruno Santos', '1991-03-12', 'Avenida Z, 1414', 'Niterói', 'RJ', 'M'),
(27, 'Letícia Almeida', '1993-09-25', 'Rua AA, 1515', 'São José dos Campos', 'SP', 'F'),
(28, 'Fábio Dias', '1986-10-30', 'Praça AB, 1616', 'Canoas', 'RS', 'M'),
(29, 'Clara Nascimento', '1995-04-17', 'Rua AC, 1717', 'Santos', 'SP', 'F'),
(30, 'Eduardo Almeida', '1989-08-14', 'Avenida AD, 1818', 'Londrina', 'PR', 'M'),
(31, 'Juliana Costa', '1990-02-10', 'Rua AE, 1919', 'Joinville', 'SC', 'F'),
(32, 'Thiago Lima', '1984-11-25', 'Praça AF, 2020', 'Maringá', 'PR', 'M'),
(33, 'Larissa Santos', '1992-03-19', 'Rua AG, 2121', 'Vitória', 'ES', 'F'),
(34, 'Gabriel Rocha', '1983-05-22', 'Avenida AH, 2222', 'Florianópolis', 'SC', 'M'),
(35, 'Amanda Ferreira', '1991-07-27', 'Rua AI, 2323', 'São Vicente', 'SP', 'F'),
(36, 'Diego Nascimento', '1995-09-18', 'Praça AJ, 2424', 'Caxias do Sul', 'RS', 'M'),
(37, 'Nathalia Almeida', '1990-04-21', 'Rua AK, 2525', 'São Carlos', 'SP', 'F'),
(38, 'André Silva', '1988-12-30', 'Avenida AL, 2626', 'Bauru', 'SP', 'M'),
(39, 'Pamela Costa', '1993-10-15', 'Rua AM, 2727', 'Uberlândia', 'MG', 'F'),
(40, 'Guilherme Souza', '1986-01-09', 'Praça AN, 2828', 'São José', 'SC', 'M'),
(41, 'Tatiane Gomes', '1992-03-11', 'Rua AO, 2929', 'Nova Iguaçu', 'RJ', 'F'),
(42, 'Rafael Lima', '1991-11-22', 'Avenida AP, 3030', 'São Mateus', 'ES', 'M'),
(43, 'Isadora Santos', '1989-02-19', 'Rua AQ, 3131', 'Rio Grande', 'RS', 'F'),
(44, 'Leonardo Almeida', '1994-08-05', 'Praça AR, 3232', 'Volta Redonda', 'RJ', 'M'),
(45, 'Karine Rocha', '1990-06-30', 'Rua AS, 3333', 'Teresópolis', 'RJ', 'F'),
(46, 'Lucas Ferreira', '1987-12-04', 'Avenida AT, 3434', 'Imperatriz', 'MA', 'M'),
(47, 'Samara Lima', '1993-01-21', 'Rua AU, 3535', 'Rio Branco', 'AC', 'F'),
(48, 'João Pedro Santos', '1988-03-16', 'Praça AV, 3636', 'Anápolis', 'GO', 'M'),
(49, 'Nicole Oliveira', '1991-09-28', 'Rua AW, 3737', 'Cuiabá', 'MT', 'F'),
(50, 'Vinicius Gomes', '1985-04-15', 'Avenida AX, 3838', 'Belo Horizonte', 'MG', 'M');

UPDATE tb_pessoa -- adicionando CPF e RG na tabela de uma vez
SET 
    CPF = CASE 
        WHEN id_pessoa = 1 THEN '12345678901'
        WHEN id_pessoa = 2 THEN '23456789012'
        WHEN id_pessoa = 3 THEN '34567890123'
        WHEN id_pessoa = 4 THEN '45678901234'
        WHEN id_pessoa = 5 THEN '56789012345'
        WHEN id_pessoa = 6 THEN '67890123456'
        WHEN id_pessoa = 7 THEN '78901234567'
        WHEN id_pessoa = 8 THEN '89012345678'
        WHEN id_pessoa = 9 THEN '90123456789'
        WHEN id_pessoa = 10 THEN '01234567890'
        WHEN id_pessoa = 11 THEN '12345678901'
        WHEN id_pessoa = 12 THEN '23456789012'
        WHEN id_pessoa = 13 THEN '34567890123'
        WHEN id_pessoa = 14 THEN '45678901234'
        WHEN id_pessoa = 15 THEN '56789012345'
        WHEN id_pessoa = 16 THEN '67890123456'
        WHEN id_pessoa = 17 THEN '78901234567'
        WHEN id_pessoa = 18 THEN '89012345678'
        WHEN id_pessoa = 19 THEN '90123456789'
        WHEN id_pessoa = 20 THEN '01234567890'
        WHEN id_pessoa = 21 THEN '12345678901'
        WHEN id_pessoa = 22 THEN '23456789012'
        WHEN id_pessoa = 23 THEN '34567890123'
        WHEN id_pessoa = 24 THEN '45678901234'
        WHEN id_pessoa = 25 THEN '56789012345'
        WHEN id_pessoa = 26 THEN '67890123456'
        WHEN id_pessoa = 27 THEN '78901234567'
        WHEN id_pessoa = 28 THEN '89012345678'
        WHEN id_pessoa = 29 THEN '90123456789'
        WHEN id_pessoa = 30 THEN '01234567890'
        WHEN id_pessoa = 31 THEN '12345678901'
        WHEN id_pessoa = 32 THEN '23456789012'
        WHEN id_pessoa = 33 THEN '34567890123'
        WHEN id_pessoa = 34 THEN '45678901234'
        WHEN id_pessoa = 35 THEN '56789012345'
        WHEN id_pessoa = 36 THEN '67890123456'
        WHEN id_pessoa = 37 THEN '78901234567'
        WHEN id_pessoa = 38 THEN '89012345678'
        WHEN id_pessoa = 39 THEN '90123456789'
        WHEN id_pessoa = 40 THEN '01234567890'
        WHEN id_pessoa = 41 THEN '12345678901'
        WHEN id_pessoa = 42 THEN '23456789012'
        WHEN id_pessoa = 43 THEN '34567890123'
        WHEN id_pessoa = 44 THEN '45678901234'
        WHEN id_pessoa = 45 THEN '56789012345'
        WHEN id_pessoa = 46 THEN '67890123456'
        WHEN id_pessoa = 47 THEN '78901234567'
        WHEN id_pessoa = 48 THEN '89012345678'
        WHEN id_pessoa = 49 THEN '90123456789'
        WHEN id_pessoa = 50 THEN '01234567890'
        ELSE CPF
    END,
    RG = CASE 
        WHEN id_pessoa = 1 THEN '123456789'
        WHEN id_pessoa = 2 THEN '234567890'
        WHEN id_pessoa = 3 THEN '345678901'
        WHEN id_pessoa = 4 THEN '456789012'
        WHEN id_pessoa = 5 THEN '567890123'
        WHEN id_pessoa = 6 THEN '678901234'
        WHEN id_pessoa = 7 THEN '789012345'
        WHEN id_pessoa = 8 THEN '890123456'
        WHEN id_pessoa = 9 THEN '901234567'
        WHEN id_pessoa = 10 THEN '012345678'
        WHEN id_pessoa = 11 THEN '987654321'
        WHEN id_pessoa = 12 THEN '876543210'
        WHEN id_pessoa = 13 THEN '765432109'
        WHEN id_pessoa = 14 THEN '654321098'
        WHEN id_pessoa = 15 THEN '543210987'
        WHEN id_pessoa = 16 THEN '432109876'
        WHEN id_pessoa = 17 THEN '321098765'
        WHEN id_pessoa = 18 THEN '210987654'
        WHEN id_pessoa = 19 THEN '109876543'
        WHEN id_pessoa = 20 THEN '098765432'
        WHEN id_pessoa = 21 THEN '123123123'
        WHEN id_pessoa = 22 THEN '234234234'
        WHEN id_pessoa = 23 THEN '345345345'
        WHEN id_pessoa = 24 THEN '456456456'
        WHEN id_pessoa = 25 THEN '567567567'
        WHEN id_pessoa = 26 THEN '678678678'
        WHEN id_pessoa = 27 THEN '789789789'
        WHEN id_pessoa = 28 THEN '890890890'
        WHEN id_pessoa = 29 THEN '901901901'
        WHEN id_pessoa = 30 THEN '012012012'
        WHEN id_pessoa = 31 THEN '123321123'
        WHEN id_pessoa = 32 THEN '234432234'
        WHEN id_pessoa = 33 THEN '345543345'
        WHEN id_pessoa = 34 THEN '456654456'
        WHEN id_pessoa = 35 THEN '567765567'
        WHEN id_pessoa = 36 THEN '678876678'
        WHEN id_pessoa = 37 THEN '789987789'
        WHEN id_pessoa = 38 THEN '890098890'
        WHEN id_pessoa = 39 THEN '901109901'
        WHEN id_pessoa = 40 THEN '012210012'
        WHEN id_pessoa = 41 THEN '321123321'
        WHEN id_pessoa = 42 THEN '432234432'
        WHEN id_pessoa = 43 THEN '543345543'
        WHEN id_pessoa = 44 THEN '654456654'
        WHEN id_pessoa = 45 THEN '765567765'
        WHEN id_pessoa = 46 THEN '876678876'
        WHEN id_pessoa = 47 THEN '987789987'
        WHEN id_pessoa = 48 THEN '098890098'
        WHEN id_pessoa = 49 THEN '109901109'
        WHEN id_pessoa = 50 THEN '210012210'
        ELSE RG
    END
WHERE id_pessoa IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                    11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
                    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
                    31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
                    41, 42, 43, 44, 45, 46, 47, 48, 49, 50);
                    
select * from tb_pessoa;

INSERT INTO tb_telefone (id, telefone, id_pessoa) VALUES
(51, '13997434878', 50);

INSERT INTO tb_email (id, email, id_pessoa) VALUES
(1, 'ana.silva@example.com', 1),
(2, 'carlos.souza@example.com', 2),
(3, 'mariana.oliveira@example.com', 3),
(4, 'pedro.santos@example.com', 4),
(5, 'fernanda.lima@example.com', 5),
(6, 'joao.pereira@example.com', 6),
(7, 'tatiane.costa@example.com', 7),
(8, 'lucas.martins@example.com', 8),
(9, 'juliana.ferreira@example.com', 9),
(10, 'rafael.almeida@example.com', 10),
(11, 'isabela.rocha@example.com', 11),
(12, 'thiago.nascimento@example.com', 12),
(13, 'renata.martins@example.com', 13),
(14, 'eduardo.ribeiro@example.com', 14),
(15, 'aline.almeida@example.com', 15),
(16, 'gustavo.dias@example.com', 16),
(17, 'camila.gomes@example.com', 17),
(18, 'vinicius.silva@example.com', 18),
(19, 'patricia.sousa@example.com', 19),
(20, 'felipe.mendes@example.com', 20),
(21, 'sofia.lima@example.com', 21),
(22, 'daniel.costa@example.com', 22),
(23, 'mariana.ferreira2@example.com', 23),
(24, 'leonardo.rocha@example.com', 24),
(25, 'bianca.oliveira@example.com', 25),
(26, 'bruno.santos@example.com', 26),
(27, 'leticia.almeida@example.com', 27),
(28, 'fabio.dias@example.com', 28),
(29, 'clara.nascimento@example.com', 29),
(30, 'eduardo.almeida2@example.com', 30),
(31, 'juliana.costa@example.com', 31),
(32, 'thiago.lima@example.com', 32),
(33, 'larissa.santos@example.com', 33),
(34, 'gabriel.rocha@example.com', 34),
(35, 'amanda.ferreira@example.com', 35),
(36, 'diego.nascimento@example.com', 36),
(37, 'nathalia.almeida@example.com', 37),
(38, 'andre.silva@example.com', 38),
(39, 'pamela.costa@example.com', 39),
(40, 'guilherme.souza@example.com', 40),
(41, 'tatiane.gomes@example.com', 41),
(42, 'rafael.lima@example.com', 42),
(43, 'isadora.santos@example.com', 43),
(44, 'leonardo.almeida@example.com', 44),
(45, 'karine.rocha@example.com', 45),
(46, 'lucas.ferreira@example.com', 46),
(47, 'samara.lima@example.com', 47),
(48, 'joao.pedro.santos@example.com', 48),
(49, 'nicole.oliveira@example.com', 49),
(50, 'vinicius.gomes@example.com', 50),
(51, 'marcio.santos@example.com', 34),
(52, 'joana.moraes@example.com', 22),
(53, 'renan.martins@example.com', 32),
(54, 'cynthia.rodrigues@example.com', 9),
(55, 'rogerio.silva@example.com', 36),
(56, 'luciana.costa@example.com', 6),
(57, 'rafaela.gonzalez@example.com', 4),
(58, 'vinicius.martins@example.com', 1),
(59, 'karla.rocha@example.com', 21),
(60, 'edson.pereira@example.com', 43);

create table tb_cliente (
	id_cliente int not null primary key,
    id_pessoa int not null,
    foreign key (id_pessoa) references tb_pessoa(id_pessoa)
);

INSERT INTO tb_cliente (id_cliente, id_pessoa) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45);

create table tb_funcionario (
	id_funcionario int not null primary key,
    id_pessoa int not null,
    foreign key (id_pessoa) references tb_pessoa(id_pessoa)
);

INSERT INTO tb_funcionario (id_funcionario, id_pessoa) VALUES
(1, 46),
(2, 47),
(3, 48),
(4, 49),
(5, 50)
;

INSERT INTO tb_pessoa (CPF, RG) VALUES
('12345678901', '123456789'),
('23456789012', '234567890'),
('34567890123', '345678901'),
('45678901234', '456789012'),
('56789012345', '567890123'),
('67890123456', '678901234'),
('78901234567', '789012345'),
('89012345678', '890123456'),
('90123456789', '901234567'),
('01234567890', '012345678'),
('12345678901', '987654321'),
('23456789012', '876543210'),
('34567890123', '765432109'),
('45678901234', '654321098'),
('56789012345', '543210987'),
('67890123456', '432109876'),
('78901234567', '321098765'),
('89012345678', '210987654'),
('90123456789', '109876543'),
('01234567890', '098765432'),
('12345678901', '123123123'),
('23456789012', '234234234'),
('34567890123', '345345345'),
('45678901234', '456456456'),
('56789012345', '567567567'),
('67890123456', '678678678'),
('78901234567', '789789789'),
('89012345678', '890890890'),
('90123456789', '901901901'),
('01234567890', '012012012'),
('12345678901', '123321123'),
('23456789012', '234432234'),
('34567890123', '345543345'),
('45678901234', '456654456'),
('56789012345', '567765567'),
('67890123456', '678876678'),
('78901234567', '789987789'),
('89012345678', '890098890'),
('90123456789', '901109901'),
('01234567890', '012210012'),
('12345678901', '321123321'),
('23456789012', '432234432'),
('34567890123', '543345543'),
('45678901234', '654456654'),
('56789012345', '765567765'),
('67890123456', '876678876'),
('78901234567', '987789987'),
('89012345678', '098890098'),
('90123456789', '109901109'),
('01234567890', '210012210');

create table tb_cargo (
	id_cargo int not null primary key,
    cargo varchar(50) not null,
    id_funcionario int not null,
    foreign key (id_funcionario) references tb_funcionario(id_funcionario)
);

INSERT INTO tb_cargo (id_cargo, cargo, id_funcionario) VALUES
('1', 'Gerente', '1'),
('2', 'Vendedor', '2'),
('3', 'Caixa', '3'),
('4', 'Faxineiro', '4'),
('5', 'Faxineiro', '5');


describe tb_cargo;
select * from tb_pessoa;
select * from tb_funcionario;
select * from tb_cargo;



select tb_pessoa.nome, tb_telefone.telefone from tb_pessoa inner join tb_telefone on (tb_pessoa.id_pessoa = tb_telefone.id_pessoa);
select tb_pessoa.nome, tb_email.email from tb_pessoa inner join tb_email on (tb_pessoa.id_pessoa = tb_email.id_pessoa);
select tb_pessoa.nome, tb_funcionario.id_funcionario from tb_pessoa inner join tb_funcionario on (tb_pessoa.id_pessoa = tb_funcionario.id_pessoa);

select nome, cargo from tb_pessoa join tb_funcionario on (tb_funcionario.id_pessoa = tb_pessoa.id_pessoa) join tb_cargo on (tb_cargo.id_cargo = tb_funcionario.id_funcionario)
where cargo = 'Gerente'; -- quem é o gerente?

create table tb_carro (
	id_carro int not null primary key,
    modelo varchar(50) not null,
    cor varchar(20) not null,
    ano date not null,
    placa varchar(7),
    chassi varchar(17),
    preco float(8,2)
);

create table tb_marca (
	id_marca int not null primary key,
    marca varchar(50) not null,
    id_carro int not null,
    foreign key (id_carro) references tb_carro(id_carro)
);

INSERT INTO tb_carro (id_carro, modelo, cor, ano, placa, chassi, preco) VALUES
(1, 'Corolla', 'Preto', '2020-01-01', 'ABC1A23', '1NXBR32E54Z123456', 79990.00),
(2, 'Hilux', 'Branco', '2021-01-01', 'ABC1B34', '2T1BR32E54Z123457', 189990.00),
(3, 'Fiesta', 'Vermelho', '2019-01-01', 'ABC1C45', '3FADP4BJ9EM123458', 59990.00),
(4, 'Mustang', 'Azul', '2020-01-01', 'ABC1D56', '1FA6P8TH1JZ123459', 349990.00),
(5, 'Onix', 'Prata', '2021-01-01', 'ABC1E67', '1G1BC5SM7JZ123460', 49990.00),
(6, 'Tracker', 'Preto', '2018-01-01', 'ABC1F78', 'KL7CJKSB9MB123461', 89990.00),
(7, 'Civic', 'Cinza', '2020-01-01', 'ABC1G89', '19XFC2F59GE123462', 129990.00),
(8, 'HR-V', 'Branco', '2019-01-01', 'ABC1H90', '2HKRU4H45JH123463', 109990.00),
(9, 'Gol', 'Vermelho', '2021-01-01', 'ABC1I01', '9BWAK7JZ6GP123464', 59990.00),
(10, 'Tiguan', 'Prata', '2020-01-01', 'ABC1J12', 'WVGCV7AX8JW123465', 179990.00),
(11, 'Kicks', 'Azul', '2019-01-01', 'ABC1K23', 'JN1BJ1AR8JW123466', 84990.00),
(12, 'Sentra', 'Preto', '2021-01-01', 'ABC1L34', '3N1AB7AP9EY123467', 109990.00),
(13, 'X3', 'Branco', '2020-01-01', 'ABC1M45', '5UXWX7C57B0L123468', 289990.00),
(14, 'M3', 'Vermelho', '2019-01-01', 'ABC1N56', 'WBS8M9C59JX123469', 499990.00),
(15, 'C-Class', 'Cinza', '2020-01-01', 'ABC1O67', 'WDDGF8AB1JF123470', 199990.00),
(16, 'GLA', 'Preto', '2021-01-01', 'ABC1P78', 'WDCTG4FB2JW123471', 239990.00),
(17, 'Elantra', 'Branco', '2019-01-01', 'ABC1Q89', 'KMHDH4AE8JU123472', 79990.00),
(18, 'Tucson', 'Prata', '2020-01-01', 'ABC1R90', '5NMS2CAD5FH123473', 159990.00),
(19, 'Seltos', 'Azul', '2021-01-01', 'ABC1S01', 'KNDPM3AC5JU123474', 109990.00),
(20, 'Sportage', 'Vermelho', '2019-01-01', 'ABC1T12', 'KNDJP3A2XJU123475', 139990.00),
(21, 'A3', 'Preto', '2020-01-01', 'ABC1U23', 'WAUDF78E65A123476', 169990.00),
(22, 'Impreza', 'Branco', '2019-01-01', 'ABC1V34', 'JF1GJAA67B123477', 75990.00),
(23, 'Mazda3', 'Vermelho', '2021-01-01', 'ABC1W45', 'JM1GL1U59J123478', 109990.00),
(24, 'Punto', 'Cinza', '2020-01-01', 'ABC1X56', 'ZFA19900002123479', 59990.00),
(25, 'NX', 'Preto', '2019-01-01', 'ABC1Y67', 'JTJYAAZUXD123480', 199990.00),
(26, 'Evoque', 'Branco', '2021-01-01', 'ABC1Z78', 'SALVA2BG4BH123481', 339990.00),
(27, 'Cayenne', 'Vermelho', '2020-01-01', 'ABC2A89', 'WP1AA29P2FL123482', 489990.00),
(28, 'F-Pace', 'Azul', '2019-01-01', 'ABC2B90', 'SADCK2C4XHA123483', 339990.00),
(29, '300C', 'Prata', '2020-01-01', 'ABC2C01', '2C3CCACG4FH123484', 229990.00),
(30, 'Challenger', 'Vermelho', '2021-01-01', 'ABC2D12', '2C3CDXBG7GH123485', 299990.00),
(31, 'RAV4', 'Preto', '2020-01-01', 'ABC2E23', 'JTMDJ3FV3K123486', 179990.00),
(32, 'Explorer', 'Branco', '2019-01-01', 'ABC2F34', '1FM5K8B89JGA123487', 199990.00),
(33, 'Camaro', 'Vermelho', '2021-01-01', 'ABC2G45', '1G1FG1R71H0123488', 329990.00),
(34, 'Fit', 'Cinza', '2020-01-01', 'ABC2H56', 'JHMGE8H55KC123489', 64990.00),
(35, 'Nivus', 'Branco', '2021-01-01', 'ABC2I67', 'WVWZZZ1JZHZ123490', 99990.00),
(36, 'Altima', 'Preto', '2019-01-01', 'ABC2J78', '1N4AL3AP2EC123491', 84990.00),
(37, 'Z4', 'Vermelho', '2020-01-01', 'ABC2K89', '4USBT53486L123492', 299990.00),
(38, 'GLC', 'Azul', '2021-01-01', 'ABC2L90', 'WDC0G4JB3JX123493', 249990.00),
(39, 'I30', 'Prata', '2019-01-01', 'ABC2M01', 'KMHDB41BBKU123494', 79990.00),
(40, 'Picanto', 'Vermelho', '2020-01-01', 'ABC2N12', 'KNAFK5A27B123495', 39990.00),
(41, 'Q5', 'Preto', '2021-01-01', 'ABC2O23', 'WA1C2AFY0GA123496', 239990.00),
(42, 'Crosstrek', 'Branco', '2020-01-01', 'ABC2P34', 'JF2GT6D66H123497', 84990.00),
(43, 'MX-5', 'Vermelho', '2019-01-01', 'ABC2Q45', 'JM1ND2J18M123498', 139990.00),
(44, 'Argo', 'Cinza', '2021-01-01', 'ABC2R56', 'ZFA19900002123499', 59990.00),
(45, 'RX', 'Preto', '2020-01-01', 'ABC2S67', 'JTJYAAZUXD123500', 299990.00),
(46, 'E-Pace', 'Branco', '2019-01-01', 'ABC2T78', 'SADCK2C4XHA123501', 249990.00),
(47, '911', 'Vermelho', '2020-01-01', 'ABC2U89', 'WP0CA29907S123502', 649990.00),
(48, 'X5', 'Azul', '2021-01-01', 'ABC2V90', '5UXKR2C57B0L123503', 349990.00),
(49, 'Civic Si', 'Prata', '2019-01-01', 'ABC2W01', '19XFC2F59GE123504', 199990.00),
(50, 'Sonic', 'Vermelho', '2020-01-01', 'ABC2X12', '1G1JC5SH3E0123495', 49990.00),
(51, 'Santa Fe', 'Preto', '2021-01-01', 'ABC2Y23', '5NMS2CAD5FH123505', 159990.00),
(52, 'Focus', 'Branco', '2020-01-01', 'ABC2Z34', '1FTRX12W56KC123506', 99990.00),
(53, 'Cruze', 'Vermelho', '2021-01-01', 'ABC3A45', '1G1BC5SM7JZ123507', 89990.00),
(54, 'Civic Type R', 'Cinza', '2020-01-01', 'ABC3B56', '19XFC2F59GE123508', 299990.00),
(55, 'Polo', 'Preto', '2019-01-01', 'ABC3C67', 'WVWZZZ1JZHZ123509', 79990.00),
(56, 'Versa', 'Branco', '2021-01-01', 'ABC3D78', '1N4AL3AP2EC123510', 84990.00),
(57, 'i3', 'Vermelho', '2020-01-01', 'ABC3E89', 'WBY1Z4C54EV123511', 149990.00),
(58, 'A-Class', 'Azul', '2019-01-01', 'ABC3F90', 'WDDGF8AB1JF123512', 239990.00),
(59, 'Sonata', 'Prata', '2021-01-01', 'ABC3G01', '5NMS2CAD5FH123513', 99990.00),
(60, 'Forte', 'Vermelho', '2020-01-01', 'ABC3H12', 'KNDPM3AC5JU123514', 79990.00),
(61, 'Q3', 'Preto', '2019-01-01', 'ABC3I23', 'WA1EFCFY0GA123515', 199990.00),
(62, 'Legacy', 'Branco', '2021-01-01', 'ABC3J34', 'JF2GT6D66H123516', 159990.00),
(63, 'CX-5', 'Vermelho', '2020-01-01', 'ABC3K45', 'JM3KE2D76L123517', 109990.00),
(64, 'Argo', 'Cinza', '2021-01-01', 'ABC3L56', 'ZFA19900002123419', 59990.00),
(65, 'ES', 'Preto', '2020-01-01', 'ABC3M67', 'JTJYAAZUXD123520', 249990.00),
(66, 'Freelander', 'Branco', '2019-01-01', 'ABC3N78', 'SALLAAAW7H123521', 199990.00),
(67, 'Taycan', 'Vermelho', '2021-01-01', 'ABC3O89', 'WP1AA29P2FL123522', 489990.00),
(68, 'F-Type', 'Azul', '2020-01-01', 'ABC3P90', 'SAJAA05N5H123523', 349990.00),
(69, 'Voyager', 'Prata', '2019-01-01', 'ABC3Q01', '2C3CDXBG7GH123524', 199990.00),
(70, 'Journey', 'Vermelho', '2021-01-01', 'ABC3R12', '1C4RDJEG7JC123525', 159990.00),
(71, 'RAV4', 'Preto', '2020-01-01', 'ABC3S23', 'JTMDJ3FV3K123526', 179990.00),
(72, 'Fiesta ST', 'Branco', '2021-01-01', 'ABC3T34', '1FADP3F25JL123527', 69990.00),
(73, 'Sonic RS', 'Vermelho', '2020-01-01', 'ABC3U45', '1G1JC5SH3E0123498', 79990.00),
(74, 'Pilot', 'Cinza', '2021-01-01', 'ABC3V56', '5J6RW2H69JL123529', 149990.00),
(75, 'ID.4', 'Preto', '2020-01-01', 'ABC3W67', 'WVWZZZ1JZHZ123530', 199990.00),
(76, 'Murano', 'Branco', '2019-01-01', 'ABC3X78', '5N1AZ2MG7KC123531', 179990.00),
(77, 'X1', 'Vermelho', '2020-01-01', 'ABC3Y89', '5UXWX7C57B0L123532', 249990.00),
(78, 'GLA 250', 'Azul', '2021-01-01', 'ABC3Z90', 'WDCTG4FB2JW123533', 229990.00),
(79, 'Veloster', 'Prata', '2019-01-01', 'ABC4A01', 'KMHDB41BBKU123534', 99990.00),
(80, 'Soul', 'Vermelho', '2020-01-01', 'ABC4B12', 'KNDPM3AC5JU123535', 64990.00),
(81, 'A4', 'Preto', '2021-01-01', 'ABC4C23', 'WAUDF78E65A123536', 199990.00),
(82, 'Outback', 'Branco', '2020-01-01', 'ABC4D34', 'JF1GJAA67B123537', 159990.00),
(83, 'CX-30', 'Vermelho', '2019-01-01', 'ABC4E45', 'JM1GL1U59J123538', 89990.00),
(84, 'Panda', 'Cinza', '2021-01-01', 'ABC4F56', 'ZFA19900002123439', 59990.00),
(85, 'GX', 'Preto', '2020-01-01', 'ABC4G67', 'JTJYAAZUXD123540', 299990.00),
(86, 'Range Rover', 'Branco', '2019-01-01', 'ABC4H78', 'SALLAAAW7H123541', 439990.00),
(87, 'Panamera', 'Vermelho', '2021-01-01', 'ABC4I89', 'WP1AA29P2FL123542', 639990.00),
(88, 'XF', 'Azul', '2020-01-01', 'ABC4J90', 'SAJAA05N5H123543', 299990.00),
(89, 'Pacifica', 'Prata', '2019-01-01', 'ABC4K01', '2C3CDXBG7GH123544', 249990.00),
(90, 'Challenger GT', 'Vermelho', '2021-01-01', 'ABC4L12', '2C3CDXBG7GH123545', 299990.00),
(91, 'C-HR', 'Preto', '2020-01-01', 'ABC4M23', 'JTDKHHRB9J123546', 139990.00),
(92, 'EcoSport', 'Branco', '2021-01-01', 'ABC4N34', '1FMCU0F78JEA123547', 74990.00),
(93, 'Bolt EV', 'Vermelho', '2020-01-01', 'ABC4O45', '1G1FJ5R61H0123499', 89990.00),
(94, 'CR-V', 'Cinza', '2021-01-01', 'ABC4P56', '5J6RW2H69JL123548', 199990.00),
(95, 'Rogue', 'Preto', '2020-01-01', 'ABC4Q67', 'JN1BJ1AR8JW123549', 159990.00),
(96, 'Sonata Hybrid', 'Branco', '2019-01-01', 'ABC4R78', '5NMS2CAD5FH123550', 89990.00),
(97, 'Q8', 'Vermelho', '2021-01-01', 'ABC4S89', 'WA1F2AFY0GA123551', 289990.00),
(98, 'Explorer Sport', 'Azul', '2020-01-01', 'ABC4T90', '1FM5K8B89JGA123552', 249990.00),
(99, 'Altima SR', 'Prata', '2019-01-01', 'ABC4U01', '1N4AL3AP2EC123553', 139990.00),
(100, 'Sentra SR', 'Vermelho', '2021-01-01', 'ABC4V12', '3N1AB7AP9EY123554', 99990.00);

INSERT INTO tb_marca (id_marca, marca, id_carro) VALUES
(1, 'Toyota', 1),
(2, 'Ford', 4),
(3, 'Chevrolet', 5),
(4, 'Honda', 7),
(5, 'Volkswagen', 10),
(6, 'Nissan', 11),
(7, 'BMW', 13),
(8, 'Mercedes-Benz', 15),
(9, 'Hyundai', 17),
(10, 'Kia', 19),
(11, 'Audi', 21),
(12, 'Subaru', 23),
(13, 'Mazda', 25),
(14, 'Fiat', 27),
(15, 'Lexus', 29),
(16, 'Land Rover', 31),
(17, 'Porsche', 33),
(18, 'Jaguar', 35),
(19, 'Chrysler', 37),
(20, 'Dodge', 39);

select * from tb_carro where ano = '2020-01-01';
select tb_pessoa.nome, tb_telefone.telefone from tb_pessoa inner join tb_telefone on (tb_pessoa.id_pessoa = tb_telefone.id_pessoa);

drop table tb_venda;

create table tb_venda (
	id_venda int not null primary key,
    id_funcionario int not null,
    foreign key (id_funcionario) references tb_funcionario(id_funcionario),
    id_cliente int not null,
    foreign key (id_cliente) references tb_cliente(id_cliente),
    id_carro int not null,
    foreign key (id_carro) references tb_carro(id_carro),
    dia_hora date not null
);

INSERT INTO tb_venda (id_venda, id_funcionario, id_cliente, id_carro, dia_hora) VALUES
(1, 2, 1, 3, '2024-01-15 10:30:00'),
(2, 2, 2, 15, '2024-01-16 11:15:00'),
(3, 2, 3, 28, '2024-01-17 14:45:00'),
(4, 2, 4, 7, '2024-01-18 09:00:00'),
(5, 2, 5, 20, '2024-01-19 16:30:00'),
(6, 2, 6, 35, '2024-01-20 13:15:00'),
(7, 2, 7, 42, '2024-01-21 08:00:00'),
(8, 2, 8, 51, '2024-01-22 12:30:00'),
(9, 2, 9, 70, '2024-01-23 15:00:00'),
(10, 2, 10, 88, '2024-01-24 14:00:00'),
(11, 2, 11, 11, '2024-01-25 11:45:00'),
(12, 2, 12, 29, '2024-01-26 10:15:00'),
(13, 2, 13, 57, '2024-01-27 09:30:00'),
(14, 2, 14, 92, '2024-01-28 13:50:00'),
(15, 2, 15, 5, '2024-01-29 16:20:00'),
(16, 2, 1, 17, '2024-01-30 10:10:00'),
(17, 2, 2, 30, '2024-01-31 11:35:00'),
(18, 2, 3, 43, '2024-02-01 15:05:00'),
(19, 2, 4, 68, '2024-02-02 09:40:00'),
(20, 2, 5, 78, '2024-02-03 14:55:00');



select * from tb_carro;
select * from tb_pessoa;
select * from tb_cliente;
select * from tb_venda;
describe tb_funcionario;

SELECT cliente.nome, carro.modelo
FROM cliente
JOIN carro ON cliente.id_cliente = carro.id_cliente;

select nome, cargo from tb_pessoa join tb_funcionario on (tb_funcionario.id_pessoa = tb_pessoa.id_pessoa) join tb_cargo on (tb_cargo.id_cargo = tb_funcionario.id_funcionario)
where cargo = 'Gerente';

select * from tb_venda;


SELECT -- vendedor e modelo
    tb_carro.modelo,
    tb_pessoa.nome AS nome_vendedor
FROM 
    tb_venda
JOIN 
    tb_carro ON tb_venda.id_carro = tb_carro.id_carro
JOIN 
    tb_funcionario ON tb_venda.id_funcionario = tb_funcionario.id_funcionario
JOIN 
    tb_pessoa ON tb_funcionario.id_pessoa = tb_pessoa.id_pessoa
JOIN 
    tb_cargo ON tb_funcionario.id_funcionario = tb_cargo.id_funcionario
WHERE 
    tb_cargo.cargo = 'Vendedor';
    

SELECT -- cliente e modelo
    tb_carro.modelo,
    tb_pessoa.nome AS nome_cliente
FROM 
    tb_venda
JOIN 
    tb_carro ON tb_venda.id_carro = tb_carro.id_carro
JOIN 
    tb_cliente ON tb_venda.id_cliente = tb_cliente.id_cliente
JOIN 
    tb_pessoa ON tb_cliente.id_pessoa = tb_pessoa.id_pessoa;