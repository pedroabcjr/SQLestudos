--7.
--Análise coordenador orientadores período noturno: 
--Identificar o nome do coordenador, o documento, o código da área (só o código) e a data de entrada do orientador. Ordenar por área, da maior para a menor


--FULL OUDER JOIN (


SELECT 
	Concat(Supervisor.Nome,' ',Supervisor.Sobrenome) as 'Nome Completo',
	Supervisor.Documento,
	Area.AreaID as CodArea,
	Staff.[Data de Ingresso] as 'Data de entrada',
	Disciplinas.Jornada as Periodo
From Staff
left JOIN Disciplinas
 ON Staff.Disciplina = Disciplinas.DisciplinaID
left JOIN Area
 ON Disciplinas.Area = Area.AreaID
left JOIN Supervisor
 ON Staff.Supervisor = Supervisor.Supervisor_ID
WHERE Disciplinas.Jornada = 'Noite'
Order By CodArea desc

	

	

