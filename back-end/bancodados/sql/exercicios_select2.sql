use mercado;
select idSupervisor from funcionario;

-- 12
select sum(valorTotalCompra) from compra where year (dataCompra) > 2023;

-- 13
select count(idCompra) from compra group by formaPagamento;

-- 14 xxx
select count(idCompra) from compra group by idCliente order by (select count(idCompra) from compra)desc;

-- 15
select count(idDependente) from dependente group by idFuncionario;

-- 16
select sum(quantidade) from itemcompra group by idProduto order by (sum(quantidade)) desc;

-- 17
select count(idCompra) from compra group by idCliente having (count(idCompra)) > 2;

-- 18
select idFuncionario, salario from funcionario where salario >
	(select avg(salario) from funcionario);
    
-- 19
select count(idProduto) from produto group by idFornecedor having (count(idProduto)) > 2;

-- 20
select distinct idCliente from compra where valorTotalCompra >
	(select avg(valorTotalCompra) from compra);
    
-- 21 xxx
-- select idSupervisor from funcionario where;
	(select count(idFuncionario) from funcionario group by idSupervisor); -- > 5;