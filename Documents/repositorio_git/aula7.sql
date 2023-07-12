--select 
--	min(salario) as MiniSal, - valor minimo da coluna
--	Max(salario) as MaxSal, -valor maximo da coluna 
--	Avg(salario) as MedSal, media da coluna
--	Count(salario) as Total contagem de linhas
--from alunos

--select    
--     concat(Nome,' ',Sobrenome) as 'nome completo',
--	 estado,
--	 sexo,
--	  Max(salario) as MaxSal,
--	 --Avg(salario) as MedSal,
--	 count(id_aluno) as 'n-alunos'
--from alunos
--group by estado,sexo, Nome, Sobrenome
--order by MaxSal desc


--SELECT 
--    concat(Nome, ' ',sobrenome) as Nomecompleto,
--	salario
--FROM alunos
--WHERE salario = (select max(salario) from alunos)


with grupo_a as (
     select
	   	  concat(nome, ' ',sobrenome) as nome_completo,
	   'grupo a' as grupo
	   from alunos
	   where salario > (select avg(salario) from alunos)
	   ),
grupo_b as (
      select
	   	  concat(nome, ' ',sobrenome) as nome_completo,
	   'grupo b' as grupo
	   from alunos
	   where salario <= (select avg(salario) from alunos)
	   )

select * from grupo_a
union
select * from grupo_b