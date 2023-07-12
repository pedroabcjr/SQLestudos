--CREATE VIEW porcentagem_aumento AS (
--SELECT
--Area.AreaID,
--CASE
--WHEN AreaID = 1 THEN 0.2
--WHEN AreaID = 2 THEN 0.17
--WHEN AreaID = 3 THEN 0.23
--WHEN AreaID = 4 THEN 0.13
--WHEN AreaID = 5 THEN 0.15
--ELSE 0.08
--END AS PorcentagemAumento
--FROM Area )


SELECT
	CONCAT(Staff.Nome,' ', Staff.Sobrenome) as NomeCompleto,
	Staff.Documento,
	Area.Nome as Area,
	cast((Disciplinas.Custo * PorcentagemAumento.PorcentagemAumento) as decimal (30,3)) AS AumentoSalario
FROM Staff
JOIN Disciplinas ON Staff.Disciplina = Disciplinas.DisciplinaID
JOIN Area ON Disciplinas.Area = Area.AreaID
FULL OUTER JOIN porcentagem_aumento
AS PorcentagemAumento
ON area.AreaID = PorcentagemAumento.AreaID
ORDER BY NomeCompleto