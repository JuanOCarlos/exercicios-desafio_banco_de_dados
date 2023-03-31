create table desafio.tb_fornecedor(
	codigo int8 generated always as identity primary key,
	razao_social varchar(100),
	numero_cnpj varchar(14)
);



create table desafio.tb_contato(
	id int8 generated always as identity primary key,
	nome varchar (100),
	telefone varchar(100),
	fornecedor_id int8,
	constraint fk_fornecedor foreign key (fornecedor_id)
	references desafio.tb_contato(id)
);



insert into desafio.tb_fornecedor
	(razao_social,numero_cnpj)
values 
	('Empresa de testes 1','126587000188'),
	('Outra empresa','1234567891012'),
	('Exportadora de fora do pais','384294819203'),
	('Lojinha do seu ze','1839492845278'),
	('Barraca de pastel','6382735472819')
	
	
	
insert into desafio.tb_contato
	(nome,telefone,fornecedor_id)
values
	('João','(11) 123456-7897',1),
	('Maria','(11) 123456-7897',1),
	('Zezé','(11) 12356-7897',2),
	('Angelo','(11) 123456-7897',3),
	('Pedro','(11) 123456-7897',3),
	('Souza','(11) 123456-7897',4)
	
	
	
select * from desafio.tb_fornecedor;

select * from desafio.tb_contato;



select codigo,razao_social,numero_cnpj from desafio.tb_fornecedor;


select tf.razao_social from desafio.tb_fornecedor tf left join desafio.tb_contato tc on tf.codigo = tc.fornecedor_id where tc.fornecedor_id is null;
