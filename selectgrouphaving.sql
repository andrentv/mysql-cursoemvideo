
# AGRUPANDO E AGREGANDO
select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select carga, count(totaulas), totaulas from cursos where totaulas = 30
group by carga;

select ano, count(*) from cursos
group by ano
having count(totaulas) >= 5
order by count(*) desc;

select ano, count(*) from cursos
group by ano
having ano > 2016
order by count(*) desc;

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2012
group by carga
having carga > (select avg(carga) from cursos);



