create table desafio.tb_fornecedor(
	codigo int generated always as identity primary key,
	razao_social varchar (100),
	numero_cnpj varchar (20)
);


drop table desafio.tb_fornecedor;


create table desafio.tb_contato(
	id int generated always as identity primary key,
	nome varchar (100),
	telefone varchar (100),
	fornecedor_id int
);


drop table desafio.tb_contato;


create table desafio.tb_categoria(
	id int generated always as identity primary key,
	discricao varchar(100),
	id_categoria int,
	constraint fk_ptoduto_categoria foreign key (id_categoria) references desafio.tb_categoria(id)
);


drop table desafio.tb_categoria;


create table desafio.tb_produto(
	id int generated always as identity primary key,
	descricao varchar (100),
	valor_unitario numeric (12,2),
	id_categoria int
);


drop table desafio.tb_produto;


create table desafio.tb_cliente(
	id int generated always as identity primary key,
	razao_social varchar (100),
	nome_fantasia varchar (100),
	numero_documento varchar (100)
);


drop table desafio.tb_cliente; 


create table desafio.tb_nota_fiscal(
	numero int generated always as identity primary key,
	data_emissao date,
	observacao varchar (100),
	id_cliente int
);


drop table desafio.tb_nota_fiscal;


create table desafio.tb_nota_fiscal_item(
	id int generated always as identity primary key,
	id_nota_fiscal int,
	id_produto int,
	valor_unitario numeric (12,2),
	quantidade int,
	constraint fk_nota_item_nota_fiscal foreign key (id_nota_fiscal) references desafio.tb_nota_fiscal(numero),
	constraint fk_nota_item_produto foreign key (id_produto) references desafio.tb_produto(id)
);


drop table desafio.tb_nota_fiscal_item; 


insert into desafio.tb_cliente 
	(razao_social,nome_fantasia,numero_documento)
values 
	('Zé do milho','Milho','1234567'),
	('Casa de ração','Cachorro','7654321'),
	('Churrascaria do Amaral','Bife','1237654')

	
insert into desafio.tb_nota_fiscal
	(data_emissao,observacao,id_cliente)
values
	('2023-03-28','atual',12345),
	('2020-02-10','antigo',54321),
	('2019-05-02','antigo',12354)
	
	
insert into desafio.tb_nota_fiscal_item
	(id_nota_fiscal,id_produto,valor_unitario,quantidade)
values
	(1,7,100,5),
	(2,8,200,3),
	(3,9,50,10)
	
	
insert into desafio.tb_produto
	(descricao,valor_unitario,id_categoria)
values 
	('Caneca',25,'1'),
	('Caneta Azul',3,'2'),
	('Caderno',30,'3')
	
	
insert into desafio.tb_categoria
	(descricao)
values
	('Caneca'),
	('Caneta'),
	('Caderno')
	

select * from desafio.tb_cliente;

select * from desafio.tb_nota_fiscal;
	
select * from desafio.tb_nota_fiscal_item;

select * from desafio.tb_produto;
	
select * from desafio.tb_categoria;
	

select
	tnfi.id_produto,descricao, SUM(tnfi.quantidade)
from 
	desafio.tb_nota_fiscal_item tnfi
join 
	desafio.tb_nota_fiscal tnf
on
	(tnfi.id_nota_fiscal = tnf.numero)
join
	desafio.tb_produto tp
on
	(tp.id = tnfi.id_produto)
where
	data_emissao >= '1991-02-10'
group by 
	tnfi.id_produto,tp.descricao;


update desafio.tb_nota_fiscal set data_emissao = '2019-05-02' where  numero = 3;




	
	
	