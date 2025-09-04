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

select * from livro;