
--1.Indicar quantos cursos e especializa��es h� na �rea de Data. Renomear a nova coluna como quant_disciplinas. Keywords: Tipo, �rea, Disciplinas.

--select Distinct
	--nome as quant_disciplinas,
	--tipo,
	--Area
--from Disciplinas
--where nome IN ('Data Analytics' ,'Data Science')

--2 � preciso saber qual � o nome, o documento e o telefone dos(as) estudantes que s�o profissionais em Agronomia e que nasceram entre o ano de 1970 e o ano 2000. Keywords: Estudantes, Profiss�o, Data de nascimento.

--select Distinct
	--Profiss�esID,
	--Profiss�es
--from Profiss�es
--where Profiss�es = 'Agricultor'

select distinct 
	CONCAT(NOME, ' ',SOBRENOME) as 'Nome Completo',
	Documento,
	[Data de Nascimento],
	Telefone
from Estudantes
where [Data de Nascimento] >= '1970' AND [Data de Nascimento] <= '2000'
ORDER BY [Data de Nascimento] ASC;

	



