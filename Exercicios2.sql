#EX1 - Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos
#EX2 - Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005?
#EX3 - Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e
# o total de pessoas nascidas lá. Só nos interessam os países que tiverem mais 
# de 3 gafanhotos com essa nacionalidade.
#EX4 - Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100 Kg
# e que estão acima da média de altura de todos os cadastrados

#4
select altura, count(*) from gafanhotos 
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos)
order by altura desc;

# outra solução
select altura, count(altura) from gafanhotos 
where peso > 100 and altura > (select avg(altura) from gafanhotos)
group by altura
order by altura desc;

#3
select nacionalidade, count(*) from gafanhotos 
where nacionalidade != 'Brasil'
group by nacionalidade
having count(*) > 3;

#2
select count(*), sexo from gafanhotos
where nascimento > 2005-01-01
group by sexo; 

#1
select count(*), profissao from gafanhotos
group by profissao
order by 1 desc;
