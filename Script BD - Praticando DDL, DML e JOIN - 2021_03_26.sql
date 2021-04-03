-- Criando e usando banco de dados praticando_BD
create database praticando_BD;
use praticando_BD;
-- Criando tabela brasilPais
create table brasilPais(
idBrasilPais int primary key auto_increment,
estado varchar (30),
capital varchar (30),
região varchar (12));

-- comando para renomear nome da coluna 
alter table brasilPais change região regiao varchar (12);
-- comando desc para ver a mudança no nome da coluna
desc brasilPais;
-- Inserindo informações na tabela brasilPais nos campos estado e capital
insert into brasilPais (estado, capital) values ('Mato Grosso', 'Cuiabá');
insert into brasilPais (estado, capital) values ('Acre', 'Rio Branco');
insert into brasilPais (estado, capital) values ('Alagoas', 'Maceió');
insert into brasilPais (estado, capital) values ('Amazonas', 'Manaus');
insert into brasilPais (estado, capital) values ('Bahia', 'Salvador');
insert into brasilPais (estado, capital) values ('Ceará', 'Fortaleza');
insert into brasilPais (estado, capital) values ('Espiríto Santo', 'Vitória');
insert into brasilPais (estado, capital) values ('Mato Grosso do Sul', 'Campo Grande');
insert into brasilPais (estado, capital) values ('Minas Gerais', 'Belo Horizonte');
insert into brasilPais (estado, capital) values ('Distrito Federal', 'Brasília');
insert into brasilPais (estado, capital) values ('Goiás', 'Goiânia');
insert into brasilPais (estado, capital) values ('Maranhão', 'São Luís');
insert into brasilPais (estado, capital) values ('Minas Gerais', 'Belo Horizonte');
insert into brasilPais (estado, capital) values ('Mato Grosso do Sul', 'Campo Grande');
insert into brasilPais (estado, capital) values ('Pará', 'Belém');
insert into brasilPais (estado, capital) values ('Paraiba', 'João Pessoa');
insert into brasilPais (estado, capital) values ('Paraná', 'Curitiba');
insert into brasilPais (estado, capital) values ('Pernambuco', 'Recife');
insert into brasilPais (estado, capital) values ('Piauí', 'Teresina');
insert into brasilPais (estado, capital) values ('Rio de Janeiro', 'Rio de Janeiro');
insert into brasilPais (estado, capital) values ('Rio Grande do Sul', 'Porto Alegre');
insert into brasilPais (estado, capital) values ('Rondônia', 'Porto Velho');
insert into brasilPais (estado, capital) values ('Roraima', 'Boa Vista');
insert into brasilPais (estado, capital) values ('Santa Catarina', 'Florianópolis');
insert into brasilPais (estado, capital) values ('São Paulo', 'São Paulo');
insert into brasilPais (estado, capital) values ('Sergipe', 'Aracaju');
insert into brasilPais (estado, capital) values ('Tocantins', 'Palmas');
insert into brasilPais (estado, capital) values ('Amapá', 'Macapá');

-- Mostrando a tabela com o comando select 
select * from brasilPais;

-- Atualizando os campos estado e capital através do id da tabela.
update brasilPais set estado = 'Rio Grande do Norte', capital = 'Natal' where idBrasilPais = 15;
update brasilPais set estado = 'Pará', capital = 'Belém' where idBrasilPais = 13;

-- Deletando uma linha da tabela pelo id
delete from brasilPais where idBrasilPais = 14;

-- Inserindo informação nos campos estado, capital e adicionando novamente uma informação na posição 14.
insert into brasilPais (idBrasilPais, estado, capital) values (14, 'Amapá', 'Macapá');

-- Deletando a linha 28
delete from brasilPais where idBrasilPais = 28;

-- Atulaizando o campo estado no id 17
update brasilPais set estado = 'Paraíba' where idBrasilPais = 16;

-- Mostrando a tabela com o comando select 
select * from brasilPais;

-- Atualizando campo região com as informações equivalentes 
update brasilPais set regiao = 'Sudeste' where idBrasilPais in ('7', '9', '20', '25');
update brasilPais set regiao = 'Sul' where idBrasilPais in ('17', '24', '21');
update brasilPais set regiao = 'Centro-Oeste' where idBrasilPais in ('11', '1', '8', '10');
update brasilPais set regiao = 'Norte' where idBrasilPais in ('2', '14', '4', '13', '22', '23','27');
update brasilPais set regiao = 'Nordeste' where idBrasilPais in ('3', '5', '6', '12', '16', '18', '21', '26', '15', '19');

create table siglaCapital(
idSiglaCapital int primary key auto_increment,
sigla char (2))
auto_increment = 101;

-- Inserindo informações no campo sigla
insert into siglaCapital (sigla) values ('AC');
insert into siglaCapital (sigla) values ('AL');
insert into siglaCapital (sigla) values ('AP');
insert into siglaCapital (sigla) values ('AM');
insert into siglaCapital (sigla) values ('BA');
insert into siglaCapital (sigla) values ('CE');
insert into siglaCapital (sigla) values ('DF');
insert into siglaCapital (sigla) values ('ES');
insert into siglaCapital (sigla) values ('GO');
insert into siglaCapital (sigla) values ('MA');
insert into siglaCapital (sigla) values ('MT');
insert into siglaCapital (sigla) values ('MS');
insert into siglaCapital (sigla) values ('MG');
insert into siglaCapital (sigla) values ('PA');
insert into siglaCapital (sigla) values ('PB');
insert into siglaCapital (sigla) values ('PR');
insert into siglaCapital (sigla) values ('PE');
insert into siglaCapital (sigla) values ('PI');
insert into siglaCapital (sigla) values ('RJ');
insert into siglaCapital (sigla) values ('RN');
insert into siglaCapital (sigla) values ('RS');
insert into siglaCapital (sigla) values ('RO');
insert into siglaCapital (sigla) values ('RR');
insert into siglaCapital (sigla) values ('SC');
insert into siglaCapital (sigla) values ('SP');
insert into siglaCapital (sigla) values ('SE');
insert into siglaCapital (sigla) values ('TO');

-- Mostrando tabela siglaCapital
select * from siglaCapital;

-- Acrescentando a coluna fksiglaCapital 'foreing key' na tabela brasilPais 
alter table brasilPais add column fksiglaCapital int;

-- Mudando o nome do fk
alter table brasilPais modify fkSiglaCapital int;

-- Conferindo colunas da tabela brasilPais
desc brasilPais;
-- Adicionando chvave estrangeira na tabela brasilPais fazendo referência a tabela siglaCapital
alter table brasilPais add foreign key (fkSiglaCapital) references SiglaCapital (idSiglaCapital);

-- Mostrando a tabela com o comando select 
select * from brasilPais;

-- Coligando a coluna kfSiglaCapital na tabela brasilCapital 
update brasilPais set fkSiglaCapital = 101 where idBrasilPais = ('2');
update brasilPais set fkSiglaCapital = 102 where idBrasilPais = ('3');
update brasilPais set fkSiglaCapital = 103 where idBrasilPais = ('14');
update brasilPais set fkSiglaCapital = 104 where idBrasilPais = ('4');
update brasilPais set fkSiglaCapital = 105 where idBrasilPais = ('5');
update brasilPais set fkSiglaCapital = 106 where idBrasilPais = ('6');
update brasilPais set fkSiglaCapital = 107 where idBrasilPais = ('10');
update brasilPais set fkSiglaCapital = 108 where idBrasilPais = ('7');
update brasilPais set fkSiglaCapital = 109 where idBrasilPais = ('11');
update brasilPais set fkSiglaCapital = 110 where idBrasilPais = ('12');
update brasilPais set fkSiglaCapital = 111 where idBrasilPais = ('1');
update brasilPais set fkSiglaCapital = 112 where idBrasilPais = ('8');
update brasilPais set fkSiglaCapital = 113 where idBrasilPais = ('9'); 
update brasilPais set fkSiglaCapital = 114 where idBrasilPais = ('13'); 
update brasilPais set fkSiglaCapital = 115 where idBrasilPais = ('16'); 
update brasilPais set fkSiglaCapital = 116 where idBrasilPais = ('17'); 
update brasilPais set fkSiglaCapital = 117 where idBrasilPais = ('18'); 
update brasilPais set fkSiglaCapital = 118 where idBrasilPais = ('19'); 
update brasilPais set fkSiglaCapital = 119 where idBrasilPais = ('20'); 
update brasilPais set fkSiglaCapital = 120 where idBrasilPais = ('15'); 
update brasilPais set fkSiglaCapital = 121 where idBrasilPais = ('21'); 
update brasilPais set fkSiglaCapital = 122 where idBrasilPais = ('22'); 
update brasilPais set fkSiglaCapital = 123 where idBrasilPais = ('23'); 
update brasilPais set fkSiglaCapital = 124 where idBrasilPais = ('24'); 
update brasilPais set fkSiglaCapital = 125 where idBrasilPais = ('26'); 
update brasilPais set fkSiglaCapital = 126 where idBrasilPais = ('25'); 
update brasilPais set fkSiglaCapital = 127 where idBrasilPais = ('27'); 

-- Mostrando a tabela com o comando select 
select * from brasilPais, siglaCapital where idsiglaCapital = fksiglaCapital;

-- Mostrando a tabela com o comando inner join 
select * from brasilPais inner join siglaCapital on fkSiglaCapital = idSiglaCapital;

-- Colocando apelido na tabela 
select brasilPais.estado, brasilPais.capital, brasilPais.regiao as 'InfoBrasil' from brasilPais, siglaCapital where idSiglaCapital = fkSiglaCapital;

-- Utilizando apelido 
select s. *, b.estado, b.capital, b.regiao as 'InfoBrasil' from brasilPais as b, siglaCapital as s where s.idSiglaCapital = b.fkSiglaCapital;    

-- Exibir os dados da tabela brasilPais e da tabela siglaCapital, porém apenas de uma região
select * from brasilPais inner join siglaCapital on fkSiglaCapital = idSiglaCapital where regiao = 'Norte';
select * from brasilPais inner join siglaCapital on fkSiglaCapital = idSiglaCapital where regiao = 'Nordeste';


