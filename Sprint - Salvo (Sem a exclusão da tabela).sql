create database sprint1;
use sprint1;

create table atleta(
  idAtleta int primary key,
  nome varchar (40),
  modalidade varchar (40),
  qtdMedalha int );
  
  insert into atleta (idAtleta, nome, modalidade, qtdMedalha) values (1, 'Victor', 'Luta', 2);
  insert into atleta (idAtleta, nome, modalidade, qtdMedalha) values (2, 'Maria', 'Volei', 1);
  insert into atleta (idAtleta, nome, modalidade, qtdMedalha) values (3, 'Miguel', 'Futebol', 2);
  insert into atleta (idAtleta, nome, modalidade, qtdMedalha) values (4, 'Sergio', 'Esgrima', 0);
  insert into atleta (idAtleta, nome, modalidade, qtdMedalha) values (5, 'Veronica', 'Natação', 3);
  insert into atleta (idAtleta, nome, modalidade, qtdMedalha) values (6, 'Leandro', 'Luta', 1);
  insert into atleta (idAtleta, nome, modalidade, qtdMedalha) values (7, 'Regina', 'Volei', 4);
  insert into atleta (idAtleta, nome, modalidade, qtdMedalha) values (8, 'Luis', 'Futebol', 3);

select * from atleta;

select nome, qtdMedalha from atleta;

select * from atleta where modalidade = 'Luta';

select * from atleta order by modalidade;

select * from atleta order by qtdMedalha desc;

select * from atleta where nome like '%s%';

select * from atleta where nome like 'V%';

select * from atleta where nome like '%O';

select * from atleta where nome like '%r_';

drop table atleta;

create table Musica(
  idMusica int primary key,
  titulo varchar (40),
  artista varchar (40),
  genero varchar (40)
  );
  
   insert into musica (idMusica, titulo, artista, genero) values (1, 'Breath', 'GOT7', 'K-pop');
   insert into musica (idMusica, titulo, artista, genero) values (2, 'Moon U',  'GOT7', 'K-pop');
   insert into musica (idMusica, titulo, artista, genero) values (3, 'Fake Love', 'BTS', 'K-pop');
   insert into musica (idMusica, titulo, artista, genero) values (4, 'Black Swan', 'BTS', 'K-pop');
   insert into musica (idMusica, titulo, artista, genero) values (5, 'Save Your Tears', 'The Weeknd', 'R&B');
   insert into musica (idMusica, titulo, artista, genero) values (6, 'Blinding Lights', 'The Weeknd', 'R&B');
   insert into musica (idMusica, titulo, artista, genero) values (7, 'In Your Eyes','The Weeknd', 'R&B');
   insert into musica (idMusica, titulo, artista, genero) values (8, 'Memories', 'Marron 5', 'Pop');
   insert into musica (idMusica, titulo, artista, genero) values (9, 'Cold','Marron 5', 'Pop');
   
select* from musica;

select titulo, artista from musica;

select * from musica where genero = 'K-pop';

select * from musica where artista = 'The Weeknd';

select * from musica order by titulo;

select * from musica order by artista desc;

select * from musica where titulo like 'B%';

select * from musica where artista like '%7';

select * from musica where genero like '_o%';

select * from musica where titulo like '%e_';

drop table musica;