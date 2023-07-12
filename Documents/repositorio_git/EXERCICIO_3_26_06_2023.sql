Select top (10)
	Supervisor.Supervisor_ID,
	Concat(Supervisor.Nome, ' ', Supervisor.Sobrenome) as 'Nome Completo',
	Supervisor.Telefone as Contato,
	 Count(Staff.DocentesID) as QuantDocente
From Supervisor
Full Outer Join Staff
	On Supervisor.Supervisor_ID = Staff.Supervisor
Group By Supervisor.Supervisor_ID, Supervisor.Telefone, Supervisor.Nome, Supervisor.Sobrenome
Order by QuantDocente desc


	