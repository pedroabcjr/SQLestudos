select 
	Profiss�es.Profiss�es as Profiss�o,
	count (Estudantes.EstudantesID) as QuantEstudantes
from 
	Estudantes
join Profiss�es
	on Profiss�es.Profiss�esID = Estudantes.Profiss�o
group by 
	Profiss�es.Profiss�es
Having 
	Count(Estudantes.EstudantesID) > 5
order by 
	QuantEstudantes desc


