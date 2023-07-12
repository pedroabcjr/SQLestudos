--7.
--An�lise coordenador orientadores per�odo noturno: 
--Identificar o nome do coordenador, o documento, o c�digo da �rea (s� o c�digo) e a data de entrada do orientador. Ordenar por �rea, da maior para a menor


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

	

	

