--9. 	Análise disciplinas maior por média: 
--Identificar o nome da disciplina, o custo da disciplina e a média do custo das disciplinas por área.
--Uma vez obtido o dado, da média, deve-se visualizar apenas as especializações que estão acima da média. 
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