create table desafio.tb_dados_cadastro(
	codigo int generated always as identity primary key,
	nome_completo varchar(50),
	data_nascimento date,
	possui_filhos varchar(1) default 'N'
	);
	


insert into desafio.tb_dados_cadastro
	(nome_completo,data_nascimento,possui_filhos)
values
	('Juan Carlos Prevost','2004-11-21','N'),
	('Vinicio Oliveira Santos','2002-05-15','S'),
	('Mariah Eduarda','2006-05-07','N'),
	('Romulo Cesar Oasks','2002-11-15','S'),
	('Mario Cesar','1999-02-12','N')
	
	
select * from desafio.tb_dados_cadastro;
	
	
delete from desafio.tb_dados_cadastro where codigo = 3;


drop table desafio.tb_dados_cadastro;