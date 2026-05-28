-- 1. Crie um banco de dados chamado "escola" com suporte a caracteres acentuados --
create database escola
default collate utf8mb4_general_ci;

use escola;
-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


-- 2. Crie uma tabela "alunos" com as colunas: id (chave primária com auto incremento), nome, data_nascimento, turma e email.
create table alunos(
id int not null auto_increment,
Nome varchar (50) not null,
Data_Nascimeneto date,
Turma char (5),
Email varchar (100),
primary key (id)
) default charset = utf8mb4;

desc alunos;
-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


-- 3. Insira um aluno na tabela "alunos" com os seguintes dados: 
-- nome = "João Silva", data_nascimento = '2005-03-15', turma = "8A", email = "joao.silva@email.com".
insert into alunos values 
(default, "João Silva", '2005-03-15', "8A", "joao.silva@email.com");

select * from alunos;
-- /////////////////////////////////////////////////////////////////////////////////////////


-- 4. Crie uma tabela "professores" com as colunas: id (chave primária com auto incremento),
-- nome, disciplina e salário (tipo decimal com 5 casas decimais, sendo 2 após a vírgula).
create table Professores_Lista (
id int not null auto_increment,
Nome varchar (50) not null,
Disciplina varchar (30),
Salário decimal (7,2),
primary key (id)
) default charset = utf8mb4;
 
select * from Professores_Lista;
-- ///////////////////////////////////////////////////////////////////////////////////////


-- 5. Insira dois professores na tabela "professores".
insert into Professores_Lista  values
(default, 'Carlos Henrique', 'Matemática', '4500.00'),
(default, 'Fernanda Lima', 'História', '7200.00'),
(default, 'Juliano Alves', 'Biologia', '9800.00');

select * from Professores_Lista;
-- ////////////////////////////////////////////////////////////////////////////////////


-- 6. Crie um banco de dados chamado "biblioteca".
create database MDC_Biblioteca; 
use MDC_Biblioteca;
-- //////////////////////////////////////////////////////////////////////////////////////


-- 7. Crie uma tabela "livros" com as colunas: id (chave primária com auto incremento),
-- titulo, autor, ano_publicacao e disponivel (tipo booleano).
create table Livros_Lista (
id int not null auto_increment,
Titulo varchar (50),
Autor varchar (50),
Ano_Publicação int,
Disponivel boolean,
primary key (id)
) default charset = utf8mb4;

select * from Livros_Lista;
-- ////////////////////////////////////////////////////////////////////////


-- 8. Insira três livros na tabela "livros", sendo que o primeiro livro está
-- disponível e os outros dois não.
insert into Livros_Lista values 
(default, 'O Código Perdido', 'Marcos Silva', 2018, true),
(default, 'A Última Estrela', 'Fernanda Souza', 2021, false),
(default, 'Sombras da Noite', 'Carlos Mendes', 2016, false),
(default, 'Além do Horizonte', 'Juliana Rocha', 2023, false);

select * from Livros_lista;
-- ////////////////////////////////////////////////////////////////////////////////


-- 9. Crie um banco de dados chamado "empresa".
create database MDC_Empresa 
default collate utf8mb4_general_ci
default charset = utf8mb4;

use MDC_empresa;
-- //////////////////////////////////////////////////////////////////////////


-- 10. Crie uma tabela "funcionarios" com as colunas: id (chave primária com auto incremento), 
-- nome, cargo, salario e data_admissao
create table Funcionarios_Lista (
id int not null auto_increment,
Nome varchar (50),
Cargo varchar (30),
Sálario Decimal (7,2),
Data_admissão date,
primary key (id)
) default charset = utf8mb4;

select * from Funcionarios_Lista;
-- ///////////////////////////////////////////////////////////////////////////


-- 11. Insira um funcionário na tabela "funcionarios".
insert into Funcionarios_Lista values 
(default, 'Carlos Henrique', 'Gerente', 8500.00, '2021-03-15'),
(default, 'Fernanda Lima', 'Analista', 4200.00, '2022-07-10'),
(default, 'Juliano Alves', 'Supervisor', 6700.00, '2020-11-05'),
(default, 'Mariana Souza', 'Assistente', 3100.00, '2024-01-22');

select * from Funcionarios_Lista;
-- ///////////////////////////////////////////////////////////////////////////////////


-- 12. Crie um banco de dados chamado "cinema".
create database MDC_cinema
default collate utf8mb4_general_ci
default charset = utf8mb4;
-- /////////////////////////////////////////////////////////////////////////////////////


-- 13 Crie uma tabela "filmes" com as colunas: id (chave primária com auto incremento), 
-- titulo, diretor, genero, duracao (em minutos) e classificacao_etaria.
create table Filmes_Lista (
id  int not null auto_increment,
Titulo varchar (70),
Genero varchar (20),
Duração int,
Classificação_Etaria char (5),
primary key (id)
) default charset = utf8mb4;
desc Filmes_lista;
-- //////////////////////////////////////////////////////////


-- 14. Insira dois filmes na tabela "filmes".
insert into Filmes_Lista values 
(default, 'A Última Missão', 'Ação', 125, '+16'),
(default, 'Segredos da Noite', 'Suspense', 98, '+14'),
(default, 'O Reino Encantado', 'Fantasia', 142, 'L');

select * from Filmes_Lista;
-- /////////////////////////////////////////////////////////////////////


-- 15. Crie um banco de dados chamado "musica".
create database MDC_Musica
default collate utf8mb4_general_ci
default charset = utf8mb4;

use MDC_musica;
-- ////////////////////////////////////////////////////////////////


-- 16. Crie uma tabela "albuns" com as colunas: id (chave primária com auto incremento),
-- nome, artista, ano_lancamento e genero.
create table Albuns_Lista (
id int not null auto_increment,
Nome varchar (50),
Artista varchar (50),
Ano_Lançamento char (4),
Genero varchar (20),
primary key (id)
) default charset = utf8mb4;

desc Albuns_lista;
-- //////////////////////////////////////////////////////////////////////////////