----1.Indicar quantos cursos e especializações há na área de Data. Renomear a nova coluna como quant_disciplinas. Keywords: Tipo, Área, Disciplinas.

--select 
--	Area,
--	Area.Nome,
--	count(tipo) as quant_disciplinas
--	from Disciplinas
--full outer join Area
--	on Disciplinas.Area = Area.AreaID
--where Area = 5
--group by Area, Area.Nome


--2.É preciso saber qual é o nome, o documento e o telefone dos(as) estudantes que são profissionais em Agronomia e que nasceram entre o ano de 1970 e o ano 2000. 

--select
--	Nome,
--	Documento,
--	[Data de Nascimento],
--	Telefone,
--	Profissões.Profissões
--from Estudantes
--full outer join Profissões
--	on Estudantes.Profissão = Profissões.ProfissõesID
--where Profissões.Profissões = 'Agricultor' and [Data de Nascimento] >= '1970' and [Data de Nascimento] <= '2000'


----3. É preciso ter uma lista dos docentes que ingressaram no ano de 2021 e concatenar os campos nome e sobrenome. 
----O resultado deve utilizar um separador: traço (-). Exemplo: Elba-Jimenez. Renomear a nova coluna como Nomes_Sobrenomes. 
----Os resultados da nova coluna devem estar em maiúsculas. Keywords: Staff, Data Ingresso, Nome, Sobrenome.

--select
--	UPPER(CONCAT(Staff.Nome, '-',Staff.Sobrenome)) as Nomes_Sobrenomes,
--	[Data de Ingresso]
--from Staff
--where [Data de Ingresso] >= '2021'
--group by [Data de Ingresso], Staff.Nome, Staff.Sobrenome
--order by [Data de Ingresso] asc

--4.	Indicar a quantidade de coordenadores de docentes e de orientadores. Renomear a coluna como QuantCoordenadores. 
--Excluir a palavra “coordenador” em cada um dos registros. 
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

----5. Indicar qual é o preço médio das especializações e dos cursos por período. 
----Renomear a nova coluna como Média. Ordenar as médias de maior a menor. Keywords: Tipo, Período, Disciplinas. 

--select 
--	Nome,
--	Jornada,
--	cast(avg(Custo) as decimal (10,3)) as Media
--from Disciplinas
--group by Nome, Jornada
--order by Media desc
	

--6. É preciso calcular a idade dos estudantes em uma nova coluna. Renomear a nova coluna Idade. 
--Filtrar somente os que são maiores de 18 anos. Ordenar da menor para a maior. Keywords: Data de Nascimento, Estudantes.


--select
--	Nome,
--	DATEDIFF(YEAR,[Data de Nascimento],GETDATE()) as Idade
--from Estudantes
--group by Nome, [Data de Nascimento]
--order by Idade asc

--7. É preciso saber o Nome, o e-mail, a área e a data de ingresso de pessoas do staff que contenham e-mail .edu e seu DocenteID, se maior ou igual a 100. Keywords: Staff, E-mail, DocentesID.

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

----8. É preciso conhecer o documento, o endereço, o CEP e o nome dos primeiros estudantes que se registraram na plataforma. Keywords: Documento, Estudantes, Data Ingresso.

--select Top(10)
--	[Data de Ingresso],
--	Nome,
--	Documento,
--	Endereço
--from Estudantes


--9.	Indicar o nome, sobrenome e documento dos docentes e orientadores que têm disciplinas “UX”. Keywords: Staff, Disciplinas, Nome, Sobrenome.

--select 
--	concat(Staff.Nome,' ', Staff.Sobrenome) as 'Nome Completo',
--	Documento,
--	Disciplinas.Nome as DisciplinaUX
--from Staff
--left join Disciplinas
--	on Staff.Disciplina = Disciplinas.DisciplinaID
--	Where Disciplinas.Nome like '%UX%'

--10.Deseja-se calcular 25% de aumento para as disciplinas da área de Marketing do período matutino e deve-se 
--apresentar todos os campos mais o dos cálculos correspondentes à porcentagem e o novo custo deve estar em decimais
--com 3 dígitos. Renomear o cálculo da porcentagem com o nome “porcentagem” e a soma do custo mais a porcentagem por NovoCusto. 
----Keywords: Disciplinas, Custo, Área, Período, Nome.

--with DiscMarketing as (
--select
--	Disciplinas.DisciplinaID as DiscID,
--	Disciplinas.Nome as DiscNome,
--	Disciplinas.Tipo as DiscTipo,
--	Disciplinas.Jornada as DiscJornada,
--	Disciplinas.Custo as DiscCusto,
--	Disciplinas.Area as DiscArea
--from Disciplinas
--where Disciplinas.Jornada = 'Manhã'
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



