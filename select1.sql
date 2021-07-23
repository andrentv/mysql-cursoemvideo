use cadastro;
select * from cursos
order by nome desc;

select ano, nome, carga from cursos
order by ano desc, nome desc;

select nome, descricao, ano, totaulas from cursos
where totaulas between '20' and '60'
order by ano, nome desc;

select nome, descricao, ano from cursos
where ano in(2014, 2016)
order by ano;

select * from cursos
where carga > 35 and totaulas < 30;

SELECT * from cursos
where nome like 'P%';

select * from cursos
where nome like '%L_'; #like = parecido, semelhanças 'a%' inicio '%a' final '%a%' em qualquer lugar


update cursos set nome = 'JAVA' where idcurso = '5';

insert into cursos values
(default,'PHP7','Novo curso','50','25','2021');


DDL CREATE DATABASE
	CREATE TABLE
    ALTER TABLE
    DROP TABLE

DML INSERT TO
	UPDATE
    DELETE
    TRUNCATE
	SELECT #PODE SER DQL
