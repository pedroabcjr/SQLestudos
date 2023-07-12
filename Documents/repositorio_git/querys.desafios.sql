----1.Indicar quantos cursos e especializa��es h� na �rea de Data. Renomear a nova coluna como quant_disciplinas. Keywords: Tipo, �rea, Disciplinas.

--select 
--	Area,
--	Area.Nome,
--	count(tipo) as quant_disciplinas
--	from Disciplinas
--full outer join Area
--	on Disciplinas.Area = Area.AreaID
--where Area = 5
--group by Area, Area.Nome


--2.� preciso saber qual � o nome, o documento e o telefone dos(as) estudantes que s�o profissionais em Agronomia e que nasceram entre o ano de 1970 e o ano 2000. 

--select
--	Nome,
--	Documento,
--	[Data de Nascimento],
--	Telefone,
--	Profiss�es.Profiss�es
--from Estudantes
--full outer join Profiss�es
--	on Estudantes.Profiss�o = Profiss�es.Profiss�esID
--where Profiss�es.Profiss�es = 'Agricultor' and [Data de Nascimento] >= '1970' and [Data de Nascimento] <= '2000'


----3. � preciso ter uma lista dos docentes que ingressaram no ano de 2021 e concatenar os campos nome e sobrenome. 
----O resultado deve utilizar um separador: tra�o (-). Exemplo: Elba-Jimenez. Renomear a nova coluna como Nomes_Sobrenomes. 
----Os resultados da nova coluna devem estar em mai�sculas. Keywords: Staff, Data Ingresso, Nome, Sobrenome.

--select
--	UPPER(CONCAT(Staff.Nome, '-',Staff.Sobrenome)) as Nomes_Sobrenomes,
--	[Data de Ingresso]
--from Staff
--where [Data de Ingresso] >= '2021'
--group by [Data de Ingresso], Staff.Nome, Staff.Sobrenome
--order by [Data de Ingresso] asc

--4.	Indicar a quantidade de coordenadores de docentes e de orientadores. Renomear a coluna como QuantCoordenadores. 
--Excluir a palavra �coordenador� em cada um dos registros. 
--Renomear a coluna como NovoTipo. Keywords: coordenador, Tipo, Coordenador_ID.

--with Supervisores as (
--	select 
--		REPLACE(Tipo, 'Supervisor de', '') as NovoTipo,
--		Supervisor_id
--	from Supervisor
-- )
--select 
--	NovoTipo, 
--	count(Supervisor_id) as QuantCoordenadores 
--from Supervisores 
--group by NovoTipo

----5. Indicar qual � o pre�o m�dio das especializa��es e dos cursos por per�odo. 
----Renomear a nova coluna como M�dia. Ordenar as m�dias de maior a menor. Keywords: Tipo, Per�odo, Disciplinas. 

--select 
--	Nome,
--	Jornada,
--	cast(avg(Custo) as decimal (10,3)) as Media
--from Disciplinas
--group by Nome, Jornada
--order by Media desc
	

--6. � preciso calcular a idade dos estudantes em uma nova coluna. Renomear a nova coluna Idade. 
--Filtrar somente os que s�o maiores de 18 anos. Ordenar da menor para a maior. Keywords: Data de Nascimento, Estudantes.


--select
--	Nome,
--	DATEDIFF(YEAR,[Data de Nascimento],GETDATE()) as Idade
--from Estudantes
--group by Nome, [Data de Nascimento]
--order by Idade asc

--7. � preciso saber o Nome, o e-mail, a �rea e a data de ingresso de pessoas do staff que contenham e-mail .edu e seu DocenteID, se maior ou igual a 100. Keywords: Staff, E-mail, DocentesID.

--Select 
--	DocentesID,
--	Staff.Nome,
--	Email,
--	Disciplinas.Area,
--	Area.Nome as Area
--	from Staff
--full outer join Disciplinas
--	on Staff.Disciplina = Disciplinas.DisciplinaID
--full outer join Area
--	on Disciplinas.Area = Area.AreaID
--where Email like '%.edu' and DocentesID >= '100'
--order by DocentesID asc

----8. � preciso conhecer o documento, o endere�o, o CEP e o nome dos primeiros estudantes que se registraram na plataforma. Keywords: Documento, Estudantes, Data Ingresso.

--select Top(10)
--	[Data de Ingresso],
--	Nome,
--	Documento,
--	Endere�o
--from Estudantes


--9.	Indicar o nome, sobrenome e documento dos docentes e orientadores que t�m disciplinas �UX�. Keywords: Staff, Disciplinas, Nome, Sobrenome.

--select 
--	concat(Staff.Nome,' ', Staff.Sobrenome) as 'Nome Completo',
--	Documento,
--	Disciplinas.Nome as DisciplinaUX
--from Staff
--left join Disciplinas
--	on Staff.Disciplina = Disciplinas.DisciplinaID
--	Where Disciplinas.Nome like '%UX%'

--10.Deseja-se calcular 25% de aumento para as disciplinas da �rea de Marketing do per�odo matutino e deve-se 
--apresentar todos os campos mais o dos c�lculos correspondentes � porcentagem e o novo custo deve estar em decimais
--com 3 d�gitos. Renomear o c�lculo da porcentagem com o nome �porcentagem� e a soma do custo mais a porcentagem por NovoCusto. 
----Keywords: Disciplinas, Custo, �rea, Per�odo, Nome.

--with DiscMarketing as (
--select
--	Disciplinas.DisciplinaID as DiscID,
--	Disciplinas.Nome as DiscNome,
--	Disciplinas.Tipo as DiscTipo,
--	Disciplinas.Jornada as DiscJornada,
--	Disciplinas.Custo as DiscCusto,
--	Disciplinas.Area as DiscArea
--from Disciplinas
--where Disciplinas.Jornada = 'Manh�'
--)
--select
--	DiscID,
--	DiscNome,
--	DiscTipo,
--	DiscJornada,
--	DiscCusto,
--	CAST((Disciplinas.Custo * 1.25) as decimal (10,3)) as NovoCusto,
--	DiscArea
--from DiscMarketing
--full outer join Area
--	on DiscArea = Area.AreaID
--full outer join Disciplinas
--	on DiscID = Disciplinas.DisciplinaID
--where DiscArea = 2



