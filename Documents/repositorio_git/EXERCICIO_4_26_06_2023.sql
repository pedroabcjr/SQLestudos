select 
	Profissões.Profissões as Profissão,
	count (Estudantes.EstudantesID) as QuantEstudantes
from 
	Estudantes
join Profissões
	on Profissões.ProfissõesID = Estudantes.Profissão
group by 
	Profissões.Profissões
Having 
	Count(Estudantes.EstudantesID) > 5
order by 
	QuantEstudantes desc


