
IF OBJECT_ID('alunos', 'U') IS NOT NULL 
  DROP TABLE alunos; 


CREATE TABLE alunos (
	id_aluno tinyint primary key identity(1,1),
	nome varchar(15),
	sobrenome varchar(50),
	sexo varchar,
	estado varchar(2),
	cidade varchar(20),
	data_nascimento date
)

insert into alunos values
('Sergio', 'Polimante', 'M', 'SP', 'São Paulo', '1989-11-30'), 
('Pedro', 'Alves B Junior', 'M','SP','São Paulo','1981-10-15'), 
('Lucas', 'Machado', 'M', 'RJ', 'Rio de Janeiro', '1995-01-23'), 
('Eugenia','Rieken','F','RJ','Macae','1992-04-26'), 
('Mateus', 'Franco', 'M', 'AL', 'Porto de Pedras', '2001-02-27'), 
('Wesley', 'Campos', 'M', 'RJ', 'Rio de Janeiro', '1987-01-20'), 
('Everton','Tessari','M','SP','Sao Bernardo','1984-01-22'), 
('Igor', 'Macedo', 'M', 'SP', 'São Paulo', '1998-04-12'), 
('Matheus','Freitas','M','RJ','Rio de Janeiro','1997-08-09'), 
('Gabriel', 'Polera', 'M', 'PR', 'Curtiba', '2000-05-13'), 
('Francisco', 'Júnior', 'M', 'DF', 'Distrito Federal', '1999-05-04'), 
('Gabriela', 'Nakagawa', 'F', 'AL', 'Maceió', '1994-04-30'), 
('Larissa', 'Mendes', 'F', 'MG', 'Belo Horizonte', '1996-06-30'), 
('Ana', 'Assis', 'F', 'SP', 'São Paulo', '1995-09-26'), 
('Esdras', 'Santos', 'M', 'SP', 'Capivari', '2001-01-15'), 
('Ricardo', 'Cassiandro', 'M', 'SP', 'São Paulo', '1994-07-19'), 
('Heitor', 'Fonseca', 'M', 'ES', 'Vitória', '1998-10-20'), 
('Carlos', 'Prestes', 'M', 'SC', 'Blumenau', '1996-04-25'), 
('Everton', 'Sousa', 'M', 'MG', 'Salinas', '2001-04-11'), 
('Jaqueline', 'Ferreira','F','SP', 'Sao Paulo', '1991-12-27') 

select * from alunos

--14 06 2023
--select * from alunos

--select 'distinct' cidade from alunos (para chamar a informação retirando as repetições)

--select
--*,
--nome (aqui pode inserir uma formula) "as" Nome (nome da nova coluna)
--from alunos

--função escalar, agregadora

--select trim(lower(cidade))from alunos trim (tira espaços no inicio ou no final) lower(converte tudo em letra minuscula)

--select 

--concat(nome,' ', sobrenome) as nome,
--concat(cidade,'-',estado) as endereço
--from
--alunos



