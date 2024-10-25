select * from tb_carro;
select * from tb_carro where ano>=2020 and id>2; -- e
select * from tb_carro where ano>=2020 or id>2; -- ou
select * from tb_carro where ano in(1970, 2019); -- seleciona os dados exatos que você quer buscar
select * from tb_carro where ano not in(1970, 2019); -- exclui os dados exatos que você não quer
select * from tb_carro where ano between 2000 and 2090; -- seleciona os dados entre duas possibilidades
select * from tb_carro where ano not between 2000 and 2090;
select * from tb_carro where modelo='Maverick';
select * from tb_carro;
select * from tb_carro where modelo like '%a'; -- busca modelo que TERMINE com a letra 'a';
select * from tb_carro where modelo like '%a%'; -- busca modelo que CONTENHA com a letra 'a';
select * from tb_carro where modelo like 'o%'; -- busca modelo que COMECE com a letra 'o';
insert into tb_carro (marca, modelo, ano, preco, cor, portas) values
('Toyota', 'Yaris', '2020', '85000', 'preto', 4);
select * from tb_carro;

insert into tb_carro (marca, modelo, ano, preco, cor, portas) values
('Chevrolet', 'Colbalt', '2014', '26000', 'chumbo', 4);

select * from tb_carro where ano between 2000 and 2090 order by ano; -- ordem ascendente (defalt)
select * from tb_carro where ano between 2000 and 2090 order by ano desc; -- ordem descentende

select * from tb_carro where ano between 2000 and 2090 order by marca, ano; -- selecionar mais de um
select * from tb_carro where ano between 2000 and 2090 order by marca desc, ano;

select * from tb_carro where ano between 2000 and 2090 order by marca, ano desc limit 2; -- busca nos 2 primeiros registros
select * from tb_carro where ano between 2000 and 2090 order by marca, ano desc limit 2 offset 2; -- busca nos 2 primeiros registros a partir do 2



