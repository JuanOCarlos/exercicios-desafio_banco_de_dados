create schema loja;


create table loja.tb_cliente(
	codigo int8,
	razao_social varchar(200),
	nome_fantasia varchar(200),
	numero_cnpj varchar(14),
	valor_capital_social decimal(12,2),
	primary key(codigo,numero_cnpj)
);