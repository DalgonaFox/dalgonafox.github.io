use biblioteca;

-- seleciona o valor máximo da coluna selecionada
select max(ano_publicacao) from livro;

-- seleciona o valor mínimo da coluna selecionada
select * from livro where ano_publicacao =
(select min(ano_publicacao) from livro);

use mercado;
-- seleciona a soma dos valores de uma coluna específica
select sum(quantidade) from produto;

-- seleciona a média dos valores de uma coluna específica
select avg(valorUnitario) from produto;

select count(*) from produto where valorUnitario > 100;

use biblioteca;
select count(*) from emprestimo;
select count(distinct id_usuario) from emprestimo;

use mercado;
select count(*), sexo from funcionario group by sexo;

select count(*), case
	when sexo = 'F' then 'Feminino'
    when sexo = 'M' then 'Masculino'
    end as sexo
from funcionario group by sexo;