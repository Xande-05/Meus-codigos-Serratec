create table pacientes(
	id_paciente serial primary key,
	nomeCompleto_paciente varchar(100) not null,
	cpf_paciente varchar(20) not null unique,
	nascimento_paciente varchar(15) not null,
	telefone_paciente varchar(15) not null unique,
	email_paciente varchar(100) not null unique,
	endereco_paciente varchar(100) not null
);



create table dentistas(
	id_dentista serial primary key,
	nomeCompleto_dentista varchar(100) not null,
	cpf_dentista varchar(20) not null unique,
	cro_dentista varchar(20) not null unique,
	especialidade_dentista varchar(20) not null
);

CREATE TYPE status_consulta AS ENUM ('agendada', 'finalizada', 'cancelada');

create table consulta(
	id_consulta serial primary key,
	paciente int references pacientes(id_paciente),
	dentista int references dentistas(id_dentista),
	data_consulta date  not null,
	hora_consulta time not null,
	descricao_consulta varchar(100) not null,
	prescricao_consulta varchar(100),
	status status_consulta not null
);

create table procedimentos_odontologicos(
	id_procedimento serial primary key,
	nome_procedimento varchar(100) not null,
	descricao_procedimento varchar(100) not null,
	duracaoMedia_procedimento int not null
);

create table atendentes(
	id_atendentes serial primary key,
	nomeCompleto_atendente VARCHAR(150) NOT NULL,
    cpf_atendente  VARCHAR(15) UNIQUE NOT NULL,
    telefone_atendente VARCHAR(20),
    email_atendente VARCHAR(120),
    login_atendente VARCHAR(50) UNIQUE NOT NULL,
    senha_atendente VARCHAR(200) NOT NULL
);

create table horarios(
	id_horario serial primary key,
	horario_dentista int references dentistas(id_dentista),
	diaSemana_horario SMALLINT NOT NULL CHECK (diaSemana_horario BETWEEN 1 AND 7), --1 domingo e 7 sabado
    inicio_horario TIME NOT NULL,
     fim_horario TIME NOT NULL,
    CHECK (fim_horario > inicio_horario)
);

create table consultas_procedimentos(
	id_consulta_procedimento serial primary key,
	consulta int references consultas (id_consulta),
	procedimento int references procedimentos_odontologicos (id_procedimento)
);


INSERT into procedimentos_odontologicos (nome_procedimento, descricao_procedimento, duracaoMedia_procedimento) 
VALUES 
('Limpeza','Profilaxia completa',40),
('Bucomaxilo','Cirurgia bucomaxilofacial',60),
('Clareamento','Clareamento dental',45),
('Restauração','Restauração de dentes',30),
('Extração','Extração de dentes',20),
('Canal','Tratamento de canal',50),
('Aparelho','Colocação de aparelho ortodôntico',90),
('Prótese','Confecção de prótese dentária',70),
('Consulta de rotina','Exame e avaliação geral',15),
('Aplicação de flúor','Tratamento preventivo com flúor',25);

INSERT INTO dentistas (nomeCompleto_dentista, cpf_dentista, cro_dentista, especialidade_dentista) 
VALUES 
('Dr. Marcelo Reis', '309.834.280-34', 'CRO-RJ-1456', 'Clinico Geral'),
('Dra Maria Vasconcelos', '375.024.900-86', 'CRO-SP 2358', 'Bucomaxilo'),
('Dr Joao Silva', '078.159.520-70', 'CRO-MG 1287', 'Endodontia'),
('Dra Lívia Macedo', '321.011.860-47', 'CRO-RJ 2808', 'Estetica'),
('Dr Carlos Costa', '708.896.290-05', 'CRO-SP 2907', 'Implantodondia'),
('Dra Vanessa Gomes', '953.980.380-28', 'CRO-MG 2702', 'Odontopediatria'),
('Dr Silvio Horta', '867.194.010-17', 'CRO-RJ 1894', 'Cirurgia'),
('Dr Alexsandro Oliveira', '833.334.920-08', 'CRO-SP 2806', 'Ortodontia'),
('Dra Patricia Alves', '986.815.130-95', 'CRO-GO 1952', 'Periodontia'),
('Dr Henrique Farias','989.226.210-79', 'CRO-ES 3765', 'Clinico Geral');

INSERT INTO pacientes (nomeCompleto_paciente, cpf_paciente, nascimento_paciente,  telefone_paciente, email_paciente, endereco_paciente)
values 
('Tony Stark', '499.857.170-23', '1970-05-29', '(21)946634174', 'HomemdeFerro@gmail.com', 'Avenida Tocantins'),
('Steve Rogers', '941.696.450-65', '1918-06-04', '(21)940767785', 'CapitaoAmerica@gmail.com', 'Rua Tenente-Coronel Cardoso'),
('Bruce Banner', '631.273.550-84', '1969-12-18', '(21)953151784', 'BannerHulk@gmail.com', 'Rua da Imprensa'),
('James Howlett', '787.671.080-83', '1832-10-12', '(21)918843360', 'Wolverine@hotmail.com', 'Rua Arlindo Nogueira'),
('Charles Xavier', '203.870.980-70', '1932-09-15', '(21)953654591', 'ProfessorX@gmail.com', 'Praça da República'),
('TChalla', '267.839.720-38', '1980-08-17', '(21)922699521', 'PanteraNegra@gmail.com', 'Rua Frederico Moura'),
('Natasha Romanoff', '258.892.690-89', '1984-09-22', '(21)981862367', 'ViuvaNegra@gmail.com', 'Avenida São João'),
('Nick Fury', '389.677.640-14', '1950-07-04', '(21)929100547', 'iniciativaVingadores@gmail.com', 'Rua Arlindo Nogueira'),
('Wanda Maximoff', '391.801.810-58', '1989-10-02', '(21)903471697', 'feiticeiraEscarlate@gmail.com', 'Rua Maria Luísa do Val Penteado'),
('James Rhodes', '020.964.480-00', '1968-10-06', '(21)938121320', 'maquinaDeCombate@gmail.com', 'Avenida Tocantins');

insert into atendentes (nomeCompleto_atendente, cpf_atendente, telefone_atendente, email_atendente, login_atendente, senha_atendente)
values
('Ana Reis', '976.526.840-80', '(24) 98823-1276', 'anareis@gmail.com', 'anareis', '1254'),
('Bianca Alves', '665.472.270-14', '(21) 99823-1275', 'bialves@gmail.com', 'bialves', '5675'),
('Bruno Garcia', '683.920.370-06', '(27) 98854-1789', 'brunogarcia@hotmail.com', 'brunogarcia', '8597'),
('Carlos Maia', '407.620.670-39', '(31) 97835-2765', 'carlosmaia@gmail.com', 'carlosmaia', '9728'),
('Lucia Azevedo', '886.031.890-48', '(24) 98818-3065', 'luciazevedo@gmail.com', 'luciazevedo', '3567'),
('Silvia Santos', '671.426.230-20', '(32) 98754-2093', 'silviasantos@gmail.com', 'silviasantos', '4357'),
('Robson Souza', '449.384.310-17', '(21) 98854-8025', 'robsonsouza@gmail.com', 'robsonsouza', '2648'),
('Anne Costa', '900.340.200-04', '(31) 99935-9785', 'annecosta@gmail.com', 'annecosta', '6895'),
('Alice Silva', '623.440.150-35', '(21) 98854-7065', 'alice@gmail.com', 'alicesilva', '6598'),
('Maria Costa', '816.478.900-39', '(24) 98865-7894', 'mariacosta@gmail.com', 'mariacosta', '9582');

insert into consulta (paciente, dentista, data_consulta, hora_consulta, descricao_consulta, prescricao_consulta, status)
values
(1, 1, '2025-08-17', '08:00:00', 'O paciente se queixou de dores nos molares', 'Foi receitado um analgésico', 'finalizada'),
(2, 2, '2025-08-17', '09:30:00', 'Paciente relatou sensibilidade nos dentes incisivos', 'Recomendado creme dental dessensibilizante', 'agendada'),
(3, 1, '2025-08-18', '11:30:00', 'Consulta de rotina e limpeza dental', 'Higienização realizada e instruções de escovação dadas', 'cancelada'),
(4, 3, '2025-08-19', '13:00:00', 'Paciente queixou-se de dor na gengiva', 'Prescrito enxaguante bucal antisséptico', 'finalizada'),
(5, 2, '2025-08-19', '08:30:00', 'Revisão de canal realizado anteriormente', 'Tudo dentro do esperado, sem medicação adicional', 'finalizada'),
(6, 1, '2025-08-20', '13:30:00', 'Paciente apresenta placa acumulada nos dentes posteriores', 'Realizada profilaxia e instruções de higiene', 'finalizada'),
(7, 3, '2025-08-20', '15:15:00', 'Dor ao mastigar no molar inferior direito', 'Receitado anti-inflamatório e agendada radiografia', 'cancelada'),
(8, 2, '2025-08-21', '09:00:00', 'Paciente deseja clareamento dental', 'Explicadas opções de tratamento e possíveis efeitos', 'agendada'),
(9, 1, '2025-08-22', '09:45:00', 'Queixa de dentes amarelados e sensíveis', 'Realizada profilaxia e recomendado creme dental específico', 'finalizada'),
(10, 3, '2025-08-23', '11:30:00', 'Paciente apresenta pequenas cáries nos molares', 'Prescrita obturação simples', 'agendada'),
(10, 2, '2025-08-23', '14:15:00', 'Consulta de acompanhamento pós-extração', 'Ferida cicatrizando normalmente, sem prescrição adicional', 'cancelada');

INSERT INTO consultas_procedimentos (consulta, procedimento)
VALUES
(23,1),
(24,3),
(25,4),
(26,2),
(24,7),
(24,6),
(24,10),
(24,7),
(24,9),
(24,1),
(24,7);

INSERT INTO horarios (horario_dentista, diaSemana_horario, inicio_horario, fim_horario)
VALUES
(1, 2, '09:00', '12:00'),
(9, 2, '12:00', '18:00'),
(3, 1, '09:00', '13:00'),
(5, 3, '09:00', '18:00'),
(2, 4, '09:00', '14:00'),
(4, 7, '09:00', '11:00'),
(6, 5, '10:00', '15:00'),
(10, 6, '09:00', '13:00'),
(7, 3, '10:00', '14:00'),
(8, 4, '11:00', '17:00'),
(3, 6, '12:00', '18:00');

--Quantidade de consultas por especialidade:
select especialidade_dentista, count(id_consulta) as "Total de consultas"
from dentistas
join consultas
on id_dentista = id_dentista
group by especialidade_dentista;

--Quantidade de consultas por dentista, em ordem decrescente.
select nomeCompleto_dentista, count(id_consulta)
from dentistas
join consultas on id_dentista = id_dentista
group by nomeCompleto_dentista
order by count(id_consulta) desc;

--Pacientes com maior número de consultas:
SELECT nomeCompleto_paciente, COUNT(id_consulta) as "Quantidade de consultas"
FROM pacientes
JOIN consulta
ON id_paciente = paciente
GROUP BY nomeCompleto_paciente
ORDER BY "Quantidade de consultas" DESC;

--VIEW com lista de consultas ordenadas por data contendo procedimentos realizados - Kayo
create view lista_consultas as
select id_consulta, nomeCompleto_paciente, nomeCompleto_dentista, data_consulta
from consulta
join pacientes on paciente = id_paciente
join dentistas on dentista = id_dentista
join consultas_procedimentos on consulta = id_consulta
join procedimentos_odontologicos on procedimento = id_procedimento
order by data_consulta desc;

select * from lista_consultas;

--Média de consultas por dentista
select
avg(consultas)::decimal(10,2) AS media_consultas
from (
select
count(*) AS consultas
from consulta
group by dentista
) as temp;

-- Update 1: Atualizar telefone de um paciente - Kayo
update pacientes
set telefone_paciente = '(21)999999999'
where nomeCompleto_paciente = 'Tony Stark';

 -- Update 2: Atualizar o endereço de um paciente específico - Lucas 
update pacientes
set endereco_paciente = 'Torre dos Vingadores, Nova York, 5ª avenida'
where nomeCompleto_paciente = 'Tony Stark';

-- update 3: Atualizar a descrição de consulta de um paciente específico - Lucas
update consulta 
set descricao_consulta = 'Ranger de dentes durante o uso da máquina Cerébro para localizar mutantes em específico'
where paciente = 5;

-- create 1 Simone
CREATE INDEX idx_dataConsulta_dentista ON consulta (dentista, paciente, data_consulta);

-- create 2 Simone
CREATE INDEX idx_consultas_procedimentos ON consultas_procedimentos (id_consulta_procedimento);


-- Delete 1: Remover os “cancelados” da lista consulta - Alexandre 
delete from consulta
where status = 'cancelada';


select * from consulta;

select * from horarios;

select * from procedimentos_odontologicos;
