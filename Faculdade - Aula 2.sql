-- Criação do Banco de Dados
create database faculdade;
-- Habilitando BD
use faculdade;
-- Criação da tabela aluno
Create table aluno(
ra char (8) primary key,
nome varchar (100),
email varchar (100),
telefone varchar (25)
);

-- Inserção de dados
insert into aluno values ('01211131', 'Vitória da Silva', 'vitoria.pinto@bandtec.com.br', '11-994916309');

insert into aluno values ('01211113','Rafael Coelho','rafaelcoelho3110@gmail.com','11963162306');

insert into aluno  VALUES ('01211075','Julio Moudatsos','juliomoud@gmail.com','11995175454');

insert into aluno values ('01211048','Guilherme fonseca','yguilhermefonseca@gmail.com','11941676981');

insert into aluno values('01211073', 'Júlia Budavicius', 'julia.rogrigues@bandtec.com', '11-989067355');

insert into aluno values ('01211100', 'Matheus Costa', 'matheusrdcosta@gmail.com', '11-964111877');


-- Verificar a tabela
SELECT * FROM aluno;