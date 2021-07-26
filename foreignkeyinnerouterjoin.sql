use cadastro;
describe gafanhotos;

ALTER TABLE gafanhotos
add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

alter table gafanhotos
drop cursopreferido;

select * from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = 6 where id = 1;

delete from cursos where idcurso = 28;

select nome, cursopreferido from gafanhotos;

select gafanhotos.nome, cursos.nome, cursos.ano 
from gafanhotos inner join cursos
on cursos.idcurso= gafanhotos.cursopreferido
order by gafanhotos.nome;


#fazendo simplificações
select g.nome, c.nome, c.ano 
from gafanhotos as g inner join cursos as c
on c.idcurso= g.cursopreferido
order by g.nome;

#outer join 
select g.nome, c.nome, c.ano 
from gafanhotos as g left outer join cursos as c
on c.idcurso= g.cursopreferido;

select g.nome, c.nome, c.ano 
from gafanhotos as g right outer join cursos as c
on c.idcurso= g.cursopreferido;

#inner e outer não precisam ser digitados