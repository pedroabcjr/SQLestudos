
Select 
	[Data de Ingresso] as DataIngresso,
	Day(Estudantes.[Data de Ingresso]) as DiaIngresso,
	MONTH(Estudantes.[Data de Ingresso]) as MesIngresso,
	Year(Estudantes.[Data de Ingresso]) as AnoIngresso,
	Count(Estudantes.EstudantesID) as QuantAlunos
From Estudantes
Group By Estudantes.[Data de Ingresso]
Order By QuantAlunos Desc



