use cadastro;
select * from cursos
order by nome desc;

select ano, nome, carga from cursos
order by ano desc, nome desc;

select nome, descricao, ano, totaulas from cursos
where totaulas between '20' and '60'
order by ano, nome desc;

#IN
select nome, descricao, ano from cursos
where ano in(2014, 2016)
order by ano;

select * from cursos
where carga > 35 and totaulas < 30;

#Like
SELECT * from cursos
where nome like 'P%';

select * from cursos
where nome like 'P_%P_'; #like = parecido, semelhanças 'a%' inicio '%a' final '%a%' em qualquer lugar

update cursos set nome = 'JAVA' where idcurso = '5';

insert into cursos values
('9','PHP3','Curso antiogo','20','15','2012');

UPDATE cursos SET `ano` = 2021 WHERE (`idcurso` = '8');

SELECT `idcurso` FROM `cadastro`.`cursos`;

#Distinct
select distinct carga from cursos
order by carga;

#Agregação count()
select count(nome) from cursos where carga < 40;

select max(carga) from cursos 
order by carga;

select max(totaulas) from cursos where ano = '2016';

select min(carga) from cursos where ano = '2016';

select sum(totaulas) from cursos where ano = '2014';

select avg(totaulas) from cursos where ano = '2014';



DDL CREATE DATABASE
	CREATE TABLE
    ALTER TABLE
    DROP TABLE

DML INSERT TO
	UPDATE
    DELETE
    TRUNCATE
	SELECT #PODE SER DQL
