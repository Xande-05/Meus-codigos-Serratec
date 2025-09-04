create table livro(
id_livro serial primary key,
titulo_livro varchar(100) not null,
autor_livro varchar (100) not null,
ano_publicacao date not null,
genero_livro varchar (100) not null,
quantidade_estoque int not null
);


create table usuario(
id_usuario serial primary key,
nome_usuario varchar (100) not null,
cpf_usuario varchar (13) unique,
email_usuario varchar (100) unique,
telefone_usuario varchar (11) not null,
endereco_usuario varchar (100) not null 
);


create table emprestimo(
id_emprestimo serial primary key,
usuario int references usuario (id_usuario),
livro int references livro (id_livro),
data_emprestimo date not null,
dat_devolucao date null,
status_livro status_livro 
);


CREATE TYPE status_livro AS ENUM ('emprestado', 'devolvido');

ALTER TABLE livro ADD COLUMN editora varchar (100);


insert into livro
(titulo_livro, autor_livro, ano_publicacao, genero_livro, quantidade_estoque)
values
('The witcher: O último desejo', 'Andrzej Sapkowski', '1993-07-07', 'Romance/ fantasia', 1),
('The witcher: A espada do destino', 'Andrzej Sapkowski', '1992-05-21', 'Romance/ fantasia', 2),
('The witcher: O sangue dos elfos', 'Andrzej Sapkowski', '1994-10-16', 'Romance/ fantasia', 3),
('The witcher: O tempo do desprezo', 'Andrzej Sapkowski', '1995-06-23', 'Romance/ fantasia', 4),
('The witcher: A torre da andorinha', 'Andrzej Sapkowski', '1997-08-04', 'Romance/ fantasia', 5),
('The witcher: Batismo de fogo', 'Andrzej Sapkowski', '1996-03-06', 'Romance/ fantasia', 1),
('The witcher: Tempo de tempestade', 'Andrzej Sapkowski', '2013-11-06', 'Romance/ fantasia', 1),
('Harry potter: A câmara secreta', 'J. K. Rowling', '1998-07-02', 'Romance/ fantasia', 1),
('Harry poter: O cálice de fogo', 'J. K. Rowling', '2000-07-08', 'Romance/ fantasia', 1),
('Harry potter: Pedra filosofal', 'J. K. Rowling', '1997-06-26', 'Romance/ fantasia', 1);


insert into emprestimo values 
(1, 1, 31, '2025-02-10', '2025-02-15', 'emprestado'),
(2, 2, 32, '2025-02-10', '2025-02-15', 'emprestado'),
(3, 3, 33, '2025-02-10', '2025-02-15', 'emprestado'),
(4, 4, 34, '2025-02-10', '2025-02-15', 'emprestado'),
(5, 5, 35, '2025-02-10', '2025-02-15', 'emprestado'),
(6, 6, 36, '2025-02-10', '2025-02-15', 'devolvido');


delete from usuario
using emprestimo
where id_emprestimo = 1;
-- Essa parte da exclusão eu fiquei bem perdido professor, me desculpa

insert into usuario values
(1, 'Alexandre', '1234', 'Alex@', '1928', 'Rua A'),
(2, 'Joel', '5678', 'Jojo@', '3745', 'Rua B'),
(3, 'Ana', '9101', 'Ana@', '6789', 'Rua C'),
(4, 'Paulo', '1121', 'Paulin@', '7382', 'Rua D'),
(5, 'Marcos', '3141', 'Marc@', '9165', 'Rua E'),
(6, 'Leandro', '5161', 'Lele@', '4568', 'Rua F');



update usuario set telefone_usuario = 'mudei o cel'
where id_usuario = 1;

-- No caso "delete" você consegue selecionar um item especíico da tabela para ser rempbido, já no caso "truncate" a tabela inteira será deletada.,

select nome_usuario, titulo_livro from usuario
join emprestimo
on usuario = id_usuario
join livro 
on livro = id_livro;

select nome_usuario, usuario from usuario
join emprestimo
on usuario = id_usuario
where status_livro = 'emprestado';

select autor_livro, titulo_livro from livro;

select nome_usuario, titulo_livro
from usuario
left join emprestimo ON id_usuario = id_usuario 
left join livro ON id_livro = id_livro;


--Conta a quantidade de livros :)
select count(*) from livro;

--Conta a média de tempo de emprestimo
select avg(dat_devolucao - data_emprestimo) as "Média tempo"
from emprestimo;

-- Livro mais recente lançado
select titulo_livro, ano_publicacao
from livro
where ano_publicacao = (select max(ano_publicacao) from livro);

-- Livro mais antigo lançado
select titulo_livro, ano_publicacao
from livro
where ano_publicacao = (select min(ano_publicacao) from livro);

-- Aqui eu agrupei por nome do usuário
select nome_usuario, count(id_emprestimo) as "Quantidade de livros pegos" from usuario
join emprestimo 
on usuario = id_usuario
group by nome_usuario;

-- Quantidade de livros por gênero
select count(genero_livro) as "Quantidade deste gênero", genero_livro from livro
group by genero_livro;

-- Index para titulo do livro
create index idx_livro_titulo
on livro (titulo_livro);

-- Index para data do emprestimo
create index idx_data_emprestimo
on emprestimo (data_emprestimo);

-- Crieie a view para visualização dos dados
create view vw_historico_emprestimos as
select nome_usuario, titulo_livro, data_emprestimo, dat_devolucao from usuario
join emprestimo on usuario = id_usuario
join livro on livro = id_livro;

-- Um índice (index) é muito positivo no que diz respeito a otimização de custos operacionais, visto que em casos onde buscamos muito o mesmo índice, a máquina pode encontrá-lo de forma mais rápida e econômica.
-- Um ponto negativo é que para comandos como insert ou update por exemplo, o programa ficará mais lento pois haverá uma lista a mais para atualizar (o index feito, caso a lista seja usada por ele).


select * from livro;

select * from emprestimo;

select * from usuario;

