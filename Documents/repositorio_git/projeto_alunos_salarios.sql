select * from alunos

with max_salario as (
	select avg(salario) as max
	from alunos)

--select
  --  sexo,
 --  avg(salario) as media,
--   count(id_aluno) n_alunos
--from alunos
--group by estado, sexo
--order by estado

--select max(salario) from alunos

--select --	concat(nome, ' ', sobrenome) as [Nome Completo],	--salario--from alunos--where salario = (select max(salario) from alunos)with grupo_a as (	select 		concat(nome,' ', sobrenome) as nome_completo, 		'A' as grupo	from alunos	where salario > (select avg(salario) from alunos)), grupo_b as (	select 		concat(nome,' ', sobrenome) as nome_completo, 		'B' as grupo	from alunos	where salario <= (select avg(salario) from alunos))select * from grupo_aunionselect * from grupo_b	