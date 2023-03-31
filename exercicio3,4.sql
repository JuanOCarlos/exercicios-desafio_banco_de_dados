create schema cadastrar;



create table cadastrar.tb_produto(
	categoria varchar(100),
	id int8 generated always as identity primary key,
	descricao varchar(500),
	preco_custo numeric(12,2),
	preco_vendo numeric(12,2)
);



drop table cadastrar.tb_produto



insert into cadastrar.tb_produto
	(descricao,preco_custo,preco_venda)
values
	('televisao',599.99,899.99),
	('geladeira',300.00,800.00),
	('sofa', 2000.00,3490.99)

	
	
select * from cadastrar.tb_produto;

	
update cadastrar.tb_produto set preco_custo = 2249.00 where descricao = 'sofa';

	
select * from cadastrar.tb_produto;


delete from cadastrar.tb_produto where descricao = 'sofa';


insert into cadastrar.tb_produto
	(descricao,preco_custo,preco_venda)
values 
	('sofa',2000.00,3490.99);

select * from cadastrar.tb_produto;

delete from cadastrar.tb_produto where preco_venda < 1000.00;

select * from cadastrar.tb_produto;















