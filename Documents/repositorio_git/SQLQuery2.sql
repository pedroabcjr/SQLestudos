
--1.Indicar quantos cursos e especializações há na área de Data. Renomear a nova coluna como quant_disciplinas. Keywords: Tipo, Área, Disciplinas.

--select Distinct
	--nome as quant_disciplinas,
	--tipo,
	--Area
--from Disciplinas
--where nome IN ('Data Analytics' ,'Data Science')

--2 É preciso saber qual é o nome, o documento e o telefone dos(as) estudantes que são profissionais em Agronomia e que nasceram entre o ano de 1970 e o ano 2000. Keywords: Estudantes, Profissão, Data de nascimento.

--select Distinct
	--ProfissõesID,
	--Profissões
--from Profissões
--where Profissões = 'Agricultor'

select distinct 
	CONCAT(NOME, ' ',SOBRENOME) as 'Nome Completo',
	Documento,
	[Data de Nascimento],
	Telefone
from Estudantes
where [Data de Nascimento] >= '1970' AND [Data de Nascimento] <= '2000'
ORDER BY [Data de Nascimento] ASC;

	



