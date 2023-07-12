
IF OBJECT_ID('alunos', 'U') IS NOT NULL 
  DROP TABLE alunos; 


CREATE TABLE alunos (
	id_aluno tinyint primary key identity(1,1),
	nome varchar(15),
	sobrenome varchar(50),
	sexo varchar,
	estado varchar(2),
	cidade varchar(20),
	data_nascimento date,
	salario float
)

insert into alunos values
('Sergio', 'Polimante', 'M', 'SP', 'São Paulo', '1989-11-30', ROUND(rand()*10,0)*1320), 
('Pedro', 'Alves B Junior', 'M','SP','São Paulo','1981-10-15', ROUND(rand()*10,0)*1320), 
('Lucas', 'Machado', 'M', 'RJ', 'Rio de Janeiro', '1995-01-23', ROUND(rand()*10,0)*1320), 
('Eugenia','Rieken','F','RJ','Macae','1992-04-26', ROUND(rand()*10,0)*1320), 
('Mateus', 'Franco', 'M', 'AL', 'Porto de Pedras', '2001-02-27', ROUND(rand()*10,0)*1320), 
('Wesley', 'Campos', 'M', 'RJ', 'Rio de Janeiro', '1987-01-20', ROUND(rand()*10,0)*1320), 
('Everton','Tessari','M','SP','Sao Bernardo','1984-01-22', ROUND(rand()*10,0)*1320), 
('Igor', 'Macedo', 'M', 'SP', 'São Paulo', '1998-04-12', ROUND(rand()*10,0)*1320), 
('Matheus','Freitas','M','RJ','Rio de Janeiro','1997-08-09', ROUND(rand()*10,0)*1320), 
('Gabriel', 'Polera', 'M', 'PR', 'Curtiba', '2000-05-13', ROUND(rand()*10,0)*1320), 
('Francisco', 'Júnior', 'M', 'DF', 'Distrito Federal', '1999-05-04', ROUND(rand()*10,0)*1320), 
('Gabriela', 'Nakagawa', 'F', 'AL', 'Maceió', '1994-04-30', ROUND(rand()*10,0)*1320), 
('Larissa', 'Mendes', 'F', 'MG', 'Belo Horizonte', '1996-06-30', ROUND(rand()*10,0)*1320), 
('Ana', 'Assis', 'F', 'SP', 'São Paulo', '1995-09-26', ROUND(rand()*10,0)*1320), 
('Esdras', 'Santos', 'M', 'SP', 'Capivari', '2001-01-15', ROUND(rand()*10,0)*1320), 
('Ricardo', 'Cassiandro', 'M', 'SP', 'São Paulo', '1994-07-19', ROUND(rand()*10,0)*1320), 
('Heitor', 'Fonseca', 'M', 'ES', 'Vitória', '1998-10-20', ROUND(rand()*10,0)*1320), 
('Carlos', 'Prestes', 'M', 'SC', 'Blumenau', '1996-04-25', ROUND(rand()*10,0)*1320), 
('Everton', 'Sousa', 'M', 'MG', 'Salinas', '2001-04-11', ROUND(rand()*10,0)*1320), 
('Jaqueline', 'Ferreira','F','SP', 'Sao Paulo', '1991-12-27', ROUND(rand()*10,0)*1320),
('Mayara', 'Melchior', 'F', 'SP', 'São Paulo', '1992-03-06', ROUND(rand()*10,0)*1320),
('Steffani', 'Siman', 'F', 'SP', 'São Paulo', '1991-07-03', ROUND(rand()*10,0)*1320)


select * from alunos; 

select	estado,	--max(salario) as 'Salario Max',	--min(salario) as 'Salario Min',	avg(salario) as 'Media de Salario'	--count (id_aluno) as 'Contagem de Alunos'from alunosgroup by estado