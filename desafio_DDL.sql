drop table desafio.tb_funcionario;


drop table desafio.tb_empresa;


drop table desafio.tb_operacao;


drop table desafio.tb_salario;


drop table desafio.tb_cargos;



drop table desafio.tb_locais_trabalho;



create table desafio.tb_empresa(
	id int generated always as identity primary key,
	razao_social varchar(100)
);



create table desafio.tb_operacao(
	id int generated always as identity primary key,
	operacao varchar (200)
);



create table desafio.tb_cargos(
	cbo int generated always as identity primary key,
	nome_cargo varchar (100)
	
);



create table desafio.tb_salario(
	id int generated always as identity primary key,
	pagamento numeric (12,2),
	id_cargo int,
	constraint fk_cargos_salario foreign key (id_cargo) references desafio.tb_cargos(cbo)
);



create table desafio.tb_funcionario(
	cpf varchar (11) primary key,
	nome_completo varchar (100),
	rg varchar (9),
	data_nascimento date,
	titulo_eleitor varchar (12),
	endereco varchar (100),
	id_empresa int,
	id_cargo int,
	id_salario int,
	constraint fk_empresa_funcionario foreign key (id_empresa) references desafio.tb_empresa(id),
	constraint fk_cargos_funcionario foreign key (id_cargo) references desafio.tb_cargos(cbo),
	constraint fk_salario_funcionario foreign key (id_salario) references desafio.tb_salario(id)
);



create table desafio.tb_locais_trabalho(
	id int generated always as identity primary key,
	endereco varchar (100)
);



