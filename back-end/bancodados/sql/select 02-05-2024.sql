use biblioteca;

#selecione todos os livros publicados entre 2000 e 20100
select titulo, ano_publicacao from livro where ano_publicacao <= 2010 and ano_publicacao >= 2000;

#selecione todos os livros com título iniciando com a letra 'A'
select * from Livro where titulo like 'A%';

#selecione todos os usuarios que tem endereço cadastrado
select * from usuario where id_endereco is not null;

#selecione o titulo dos livros que pertencem ao gênero 'Ficção' ou 'Fantasia'
#publicados entre 1900 e 1980
select titulo from Livro where (genero='Ficção' or genero='Fantasia') and (ano_publicacao between 1900 and 1980);

#selecione o nome dos autores em ordem alfabética
select nome from Autor order by nome asc;

select nome from autor where id_autor in (
select distinct id_autor from Livro where ano_publicacao between 2000 and 2010);

#selecione os empréstimos em ordem decrescente de data de emprestimo
#limitando o resultado aos 10 primeiros empréstimos
select * from emprestimo order by data_emprestimo desc limit 10;

#selecione todos os empréstimos feitos por usuários com nome começando com a letra M
select * from emprestimo where id_usuario in (
select id_usuario from usuario where nome like 'M%');

#selecionar todos os emprestimos realizados em 2023
select * from emprestimo where year(data_emprestimo) = 2023;

#selecionar todos os emprestimos realizados entre maio de 2023 e abril de 2024
select * from emprestimo where date(data_emprestimo) between '2023-05-01' and '2024-04-31';



select data_emprestimo, date_sub(data_emprestimo, interval 2 month) from emprestimo;
desc emprestimo;
insert into emprestimo values (100, 2, 3, now(),
(select date_add(now(), interval 1 month)));

select * from emprestimo;