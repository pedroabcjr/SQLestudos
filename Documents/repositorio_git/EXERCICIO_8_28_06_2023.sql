--8. Análise disciplinas sem docentes ou orientadores: 
--Identificar o tipo de disciplina, o período, a quantidade de áreas únicas e a quantidade total de disciplinas que não têm docentes ou orientadores designados.
--Ordenar por tipo de forma descendente. 


SELECT 
	Disciplinas.Tipo AS DicTipo,
	Disciplinas.Jornada as DicPeriodo,
	count(Disciplinas.DisciplinaID) as DicID,
	count(Area.nome) as Areas,
	count(distinct Area.Nome) as 'AreaUnica'
FROM 
		Staff
right Join
		Disciplinas
 ON Staff.Disciplina = Disciplinas.DisciplinaID
right Join
		Area
 On	Area.areaID = Disciplinas.Area
Where Staff.Disciplina IS Null
Group By Disciplinas.Tipo, Disciplinas.Jornada
Order by Tipo Desc

 
 

