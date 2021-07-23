describe pessoas;
desc pessoas;

select * from pessoas;

ALTER TABLE pessoas
add column profissao varchar(10);

ALTER TABLE pessoas
DROP COLUMN profissao;

ALTER TABLE pessoas
add column profissao varchar(10) after nome;

ALTER TABLE pessoas
ADD codigo int first;

ALTER TABLE pessoas
MODIFY column profissao varchar(20) not null default '';

ALTER TABLE pessoas
CHANGE COLUMN profissao prof varchar(20) not null default '';

ALTER TABLE pessoas
RENAME TO clientes;

CREATE TABLE IF NOT EXISTS cursos (
idcurso int auto_increment,
nome varchar(30) NOT NULL UNIQUE,
descricao text, 
carga int unsigned,
totaulas int,
ano year default '2016',
primary key (idcurso)
) default charset = utf8; 

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);

drop table if exists cursos;

DDL - CREATE DATABASE
	  CREATE TABLE
      ALTER TABLE
      DROP TABLE
      
DML - INSERT INTO
