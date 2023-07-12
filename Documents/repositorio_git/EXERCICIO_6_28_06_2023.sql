SELECT Area,
	   Data_Ingresso,
	   COUNT(EstudantesID) AS Qtd_Alunos,
	   SUM(Custo) AS Custo_Total
	FROM (
	SELECT Area.Nome AS Area,
		   CONCAT(YEAR(Estudantes.[Data de Ingresso]),'/',MONTH(Estudantes.[Data de Ingresso])) AS Data_Ingresso,
		   FORMAT(Estudantes.[Data de Ingresso],'yyyy/MMMM') AS Data_f1,
		   FORMAT(Estudantes.[Data de Ingresso],'yyyy/MM') AS Data_f2,		   
		   FORMAT(Estudantes.[Data de Ingresso],'yyyy/MMM') AS Data_f3,
		   FORMAT(Estudantes.[Data de Ingresso],'yyyy/M') AS Data_f4,
		   Estudantes.EstudantesID,
		   Disciplinas.Custo	
	FROM Estudantes
	FULL OUTER JOIN Staff
		ON Estudantes.Docente = Staff.DocentesID
	FULL OUTER JOIN Disciplinas
		ON Staff.Disciplina = Disciplinas.DisciplinaID
	FULL OUTER JOIN Area
		ON Disciplinas.Area = Area.AreaID) AS aux_tab
GROUP BY Area, Data_Ingresso
ORDER BY Data_Ingresso DESC, Qtd_Alunos DESC