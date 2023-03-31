select * from desafio.tb_empresa te;


select * from desafio.tb_cargos tc;


select * from desafio.tb_salario ts;

	
select * from desafio.tb_funcionario tf;



select
	tf.id_empresa , AVG(ts.pagamento)
from 
	tb_salario ts 
join
	tb_funcionario tf 
on
	(tf.id_salario = ts.id)
group by 
	tf.id_empresa;


select
	tf.id_empresa , MAX(ts.pagamento)
from 
	tb_salario ts 
join
	tb_funcionario tf 
on
	(tf.id_salario = ts.id)
group by 
	tf.id_empresa,ts.id;


select
	tf.id_empresa , MIN(ts.pagamento)
from 
	tb_salario ts 
join
	tb_funcionario tf 
on
	(tf.id_salario = ts.id)
group by
	tf.id_empresa,ts.pagamento;