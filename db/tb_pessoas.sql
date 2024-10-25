create table tb_pessoas (
id int not null primary key,
nome varchar(50) not null,
profissao varchar(50) not null,
nascimento date not null,
sexo char(1) not null,
peso float(5,2) not null,
altura float(5,2) not null,
nacionalidade varchar(50) not null default 'Brasil'
);

INSERT INTO tb_pessoas (id, nome, profissao, nascimento, sexo, peso, altura, nacionalidade) VALUES
(1, 'Ana Silva', 'Engenheiro', '1989-01-15', 'F', 65.50, 1.65, 'Brasil'),
(2, 'Carlos Oliveira', 'Médico', '1985-03-22', 'M', 75.00, 1.80, DEFAULT),
(3, 'Mariana Costa', 'Professor', '1992-07-10', 'F', 58.30, 1.70, 'Argentina'),
(4, 'Pedro Santos', 'Arquiteto', '1988-11-05', 'M', 80.00, 1.75, 'Espanha'),
(5, 'Julia Almeida', 'Designer', '1995-02-14', 'F', 54.20, 1.60, 'França'),
(6, 'Lucas Pereira', 'Desenvolvedor', '1991-09-30', 'M', 70.50, 1.78, DEFAULT),
(7, 'Fernanda Lima', 'Jornalista', '1987-05-25', 'F', 62.00, 1.65, 'Itália'),
(8, 'Gabriel Rocha', 'Músico', '1993-06-17', 'M', 68.80, 1.73, 'México'),
(9, 'Tatiane Martins', 'Nutricionista', '1994-12-03', 'F', 57.60, 1.68, 'Chile'),
(10, 'Felipe Sousa', 'Fotógrafo', '1989-04-09', 'M', 72.00, 1.80, DEFAULT),
(11, 'Amanda Dias', 'Psicólogo', '1990-10-21', 'F', 64.40, 1.60, 'Venezuela'),
(12, 'Roberto Nunes', 'Contador', '1986-08-12', 'M', 78.50, 1.85, 'Bélgica'),
(13, 'Isabella Ferreira', 'Advogado', '1992-01-27', 'F', 60.00, 1.70, DEFAULT),
(14, 'Diego Andrade', 'Cientista', '1984-07-18', 'M', 76.30, 1.82, 'Noruega'),
(15, 'Larissa Gomes', 'Engenheiro', '1988-03-11', 'F', 63.70, 1.65, 'Brasil'),
(16, 'Renato Lima', 'Programador', '1991-12-29', 'M', 69.90, 1.75, DEFAULT),
(17, 'Camila Ribeiro', 'Arquiteto', '1985-04-08', 'F', 59.40, 1.68, 'Irlanda'),
(18, 'Thiago Barros', 'Professor', '1994-06-23', 'M', 73.50, 1.77, DEFAULT),
(19, 'Aline Costa', 'Designer', '1993-11-15', 'F', 56.20, 1.62, 'Turquia'),
(20, 'Vinícius Santos', 'Músico', '1989-05-01', 'M', 71.00, 1.80, 'Rússia'),
(21, 'Juliana Almeida', 'Nutricionista', '1992-08-17', 'F', 55.80, 1.64, DEFAULT),
(22, 'Leonardo Pires', 'Engenheiro', '1986-09-30', 'M', 79.00, 1.85, 'Austrália'),
(23, 'Marcos Silva', 'Contador', '1990-12-12', 'M', 77.20, 1.74, DEFAULT),
(24, 'Tatiane Mendes', 'Psicólogo', '1991-07-22', 'F', 62.50, 1.63, 'Grécia'),
(25, 'Gabriela Martins', 'Fotógrafo', '1987-04-19', 'F', 61.00, 1.66, 'República Tcheca'),
(26, 'Eduardo Alves', 'Advogado', '1983-10-06', 'M', 82.10, 1.90, DEFAULT),
(27, 'Jéssica Soares', 'Cientista', '1989-03-05', 'F', 64.90, 1.70, 'Bulgária'),
(28, 'Fernando Ribeiro', 'Desenvolvedor', '1994-06-14', 'M', 72.30, 1.78, DEFAULT),
(29, 'Sofia Lima', 'Professor', '1985-05-09', 'F', 59.70, 1.67, 'Eslováquia'),
(30, 'Rafael Costa', 'Arquiteto', '1990-09-23', 'M', 76.40, 1.76, 'Croácia'),
(31, 'Vanessa Almeida', 'Designer', '1991-01-02', 'F', 55.50, 1.62, 'Islândia'),
(32, 'Gustavo Nunes', 'Médico', '1984-11-12', 'M', 80.60, 1.81, 'Sérvia'),
(33, 'Patrícia Santos', 'Nutricionista', '1992-04-28', 'F', 57.80, 1.65, DEFAULT),
(34, 'Marcel Oliveira', 'Músico', '1988-02-15', 'M', 70.90, 1.77, 'Zimbábue'),
(35, 'Bruna Ferreira', 'Psicólogo', '1995-06-09', 'F', 63.00, 1.66, DEFAULT),
(36, 'Julio Rocha', 'Contador', '1986-12-05', 'M', 78.70, 1.79, 'Letônia'),
(37, 'Mariana Costa', 'Engenheiro', '1989-08-14', 'F', 66.50, 1.70, 'Eslováquia'),
(38, 'Leonardo Barros', 'Desenvolvedor', '1993-03-18', 'M', 74.00, 1.72, 'Armênia'),
(39, 'Ana Paula Silva', 'Advogado', '1987-09-22', 'F', 62.00, 1.65, DEFAULT),
(40, 'Rafael Pereira', 'Cientista', '1991-02-07', 'M', 79.90, 1.80, 'Azerbaijão'),
(41, 'Sabrina Mendes', 'Professor', '1986-04-03', 'F', 60.30, 1.63, 'Tailândia'),
(42, 'Lucas Fernandes', 'Arquiteto', '1989-07-21', 'M', 73.40, 1.78, 'Vietnã'),
(43, 'Clara Almeida', 'Designer', '1992-11-30', 'F', 54.60, 1.60, DEFAULT),
(44, 'Diego Costa', 'Médico', '1985-10-25', 'M', 80.90, 1.85, 'Indonésia'),
(45, 'Paula Santos', 'Nutricionista', '1991-03-10', 'F', 58.40, 1.64, DEFAULT),
(46, 'Renan Lima', 'Músico', '1984-05-20', 'M', 75.20, 1.76, 'Nepal'),
(47, 'Lívia Ferreira', 'Psicólogo', '1988-01-12', 'F', 61.50, 1.68, DEFAULT),
(48, 'Henrique Almeida', 'Contador', '1992-12-18', 'M', 79.50, 1.80, 'Malásia'),
(49, 'Fernanda Costa', 'Engenheiro', '1989-09-29', 'F', 66.10, 1.69, 'Senegal'),
(50, 'Marcelo Barros', 'Desenvolvedor', '1993-04-04', 'M', 72.70, 1.75, 'Nigéria'),
(51, 'Tatiane Ribeiro', 'Advogado', '1985-06-11', 'F', 63.80, 1.64, DEFAULT),
(52, 'Eduardo Santos', 'Cientista', '1991-08-23', 'M', 78.00, 1.80, 'Zimbábue'),
(53, 'Camila Ferreira', 'Professor', '1988-12-14', 'F', 59.20, 1.66, 'Angola'),
(54, 'Thiago Lima', 'Arquiteto', '1992-01-30', 'M', 77.10, 1.74, 'Gana'),
(55, 'Bianca Almeida', 'Designer', '1987-05-04', 'F', 55.90, 1.62, 'Sudão'),
(56, 'Victor Barros', 'Médico', '1989-03-22', 'M', 81.50, 1.82, 'Quênia'),
(57, 'Patrícia Costa', 'Nutricionista', '1991-10-15', 'F', 56.80, 1.63, 'Tanzânia'),
(58, 'Luiz Gustavo', 'Músico', '1986-09-08', 'M', 74.50, 1.76, 'Romênia'),
(59, 'Aline Rocha', 'Psicólogo', '1993-02-05', 'F', 62.30, 1.67, 'Bielorrússia'),
(60, 'Marcelo Ferreira', 'Cientista', '1989-11-19', 'M', 79.00, 1.80, 'Honduras');

truncate table tb_pessoas;

drop table tb_pessoas;

select * from tb_pessoas;

describe tb_pessoas;

select * from tb_pessoas where sexo = 'M' and nacionalidade = 'Brasil' and profissao = 'médico' order by nascimento;
select * from tb_pessoas where sexo = 'F' order by nascimento desc;
select * from tb_pessoas order by nascimento;
select * from tb_pessoas order by id;