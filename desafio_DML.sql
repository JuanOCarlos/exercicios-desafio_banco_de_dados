insert into desafio.tb_empresa
	(razao_social)
values
	('padaria'),
	('pastelaria'),
	('marcenaria');
	
	
	
insert into desafio.tb_cargos
	(nome_cargo)
values
	('Chefe'),
	('Faxineiro'),
	('Sub Chefe');
	
	
	
	insert into desafio.tb_salario
	(pagamento,id_cargo)
values
	(5000,1),
	(1200,2),
	(3000,2);
	
	
	
	insert into desafio.tb_funcionario
	(cpf,nome_completo,rg,data_nascimento,titulo_eleitor,endereco,id_empresa,id_cargo,id_salario)
values
	('37492038920','Juan Carlos','374938294','2004-11-21','473829472638','Rua Onze de Junho, 154',1,1,1),
	('38940287342','Pedro Barreto','374892387','2000-05-11','367482917943','Rua Osvaldo Cruz, 203',2,2,2),
	('64738293749','Julia Massulino','367428192','2002-07-30','384953718346','Rua Gama , 004',3,3,3);
