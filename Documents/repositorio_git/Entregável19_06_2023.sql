select
	concat(Staff.Nome,' ',Staff.Sobrenome) as 'NomesCompletos',
	Staff.Documento,	
	(Staff.[Data de Ingresso]) as 'Mes_entrada',
	Profiss�es.Profiss�es,
	Supervisor.Nome as NomeCoordenador,
	Supervisor.Telefone as TelefoneCoordenador,
	Disciplinas.Nome as 'NomesCursos',
	Disciplinas.Area as 'NomesArea'
from Staff
join Profiss�es
	on Staff.Profiss�o = Profiss�es.Profiss�esID 
join Supervisor
	on Staff.Supervisor = Supervisor.Supervisor_ID
join Disciplinas
	on Staff.Disciplina = Disciplinas.DisciplinaID
WHERE YEAR(Staff.[Data de Ingresso]) = 2021
ORDER BY MONTH([Data de Ingresso]) desc;
