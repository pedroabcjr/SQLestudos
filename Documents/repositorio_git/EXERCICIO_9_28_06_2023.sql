--9. 	An�lise disciplinas maior por m�dia: 
--Identificar o nome da disciplina, o custo da disciplina e a m�dia do custo das disciplinas por �rea.
--Uma vez obtido o dado, da m�dia, deve-se visualizar apenas as especializa��es que est�o acima da m�dia. 
with media as (
	select 
		Area,
		avg(custo) media
		from Disciplinas
		group by Area
)
select
	Nome,
	Tipo,
	Jornada,
	media.Area,
	Custo,
	media,
	(Custo/media)* 100/media as percent_media
	from Disciplinas
left join media
	on media.Area = Disciplinas.Area
where custo > media
order by percent_media desc