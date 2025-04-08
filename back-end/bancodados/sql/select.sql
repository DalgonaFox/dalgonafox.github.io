use biblioteca;

select * from emprestimo;

desc livro;
select titulo as 'Título', ano_publicacao as 'Ano publicação' from livro order by ano_publicacao DESC limit 3;



#selecionar os nomes e respectivas nacionalidades
#dos autores ordenados pela necionalidade em ordem
#analfabética.
desc autor;
select nome, nacionalidade from autor order by nacionalidade asc;

select titulo, ano_publicacao from livro where ano_publicacao > 1900 and ano_publicacao > 2000;

update autor set nacionalidade= 'Britânica' where id_autor=1;

select * from autor where pseudonimo is not null;

select * from autor where nacionalidade = 'britânica' or nacionalidade = 'britânico';
select * from autor where nacionalidade like 'britânic%';

select * from autor where nacionalidade like '%american%';

-- selecionar endereços do estado de são paulo, rio de janeiro e sergipe
select * from endereco where estado in ('SP', 'RJ', 'SE');

select distinct estado from endereco;
desc emprestimo;

update emprestimo set data_devolucao = (select now()) where id_emprestimo = 7;

select * from autor;

select * from emprestimo;

select data_devolucao, date(data_devolucao) from emprestimo;

#selecionar datas (apenas datas) de emprestimo