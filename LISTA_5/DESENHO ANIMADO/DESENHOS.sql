-- Lista 5
-- Desenhos Animados:
-- ○ personagens: id, nome, idade, desenho_id
create database MDC_Desenho_Animado
default collate utf8mb4_general_ci
default charset = utf8mb4;
use MDC_Desenho_Animado;

-- ○ personagens: id, nome, idade, desenho_id
create Table Personagens_Lista (
id int not null auto_increment primary key,
Nome varchar (50),
Idade int,
Desenho_id int,
foreign key (Desenho_id) references Desenhos_Lista (id)
) default charset utf8mb4;
drop table Personagens_Lista;

-- ○ desenhos: id, nome, criador, ano_lancament
create table Desenhos_Lista (
id int not null auto_increment primary key,
Nome varchar (50),
Criador varchar (69),
ANo_Lançamento year
)  default charset utf8mb4;
-- /////////////////////////////////////////////////////////////////////


-- 1. Listar o nome dos personagens e o nome do desenho a que pertencem.
select p.nome `Nome Personagem`, 
d.nome `Desenho`
from personagens_lista as p
inner join desenhos_lista as d
on p.Desenho_id = d.id;

use MDC_Desenho_Animado;

insert into Personagens_Lista values 
(default, 'Mordecai', 23, 1),
(default, 'Gumball Watterson', 12, 2),
(default, 'Dipper Pines', 12, 3),
(default, 'Steven Universo', 14, 4),
(default, 'Danny Phantom', 14, 5);

insert into Desenhos_Lista values
(default, 'Apenas um Show', 'J. G. Quintel', 2010),
(default, 'O Incrível Mundo de Gumball', 'Ben Bocquelet', 2011),
(default, 'Gravity Falls: Um Verão de Mistérios', 'Alex Hirsch', 2012),
(default, 'Steven Universo', 'Rebecca Sugar', 2014),
(default, 'Danny Phantom', 'Butch Hartman', 2005);

select * from Personagens_Lista;
select * from Desenhos_Lista;
-- /////////////////////////////////////////////////////////////////////


-- 4. Listar todos os personagens, mesmo que não estejam associados a um desenho.
select Nome `Personagens` from Personagens_Lista;
-- //////////////////////////////////////////////////////////////////////////////

-- 5. Listar todos os desenhos, mesmo que não tenham personagens associados.
select Nome `Desenho`
from Desenhos_Lista;
-- ///////////////////////////////////////////////////////////////////////////////


-- 10. Listar os nomes dos personagens e dos desenhos, mas apenas para os
-- personagens que têm mais de 18 anos.
use MDC_Desenho_Animado;

select Nome `Personagens` 
from Personagens_Lista
where Idade <= 18;
-- ///////////////////////////////////////////////////////////////////////


-- 13. Listar os nomes dos personagens e dos desenhos, ordenados pelo nome
-- do desenho em ordem alfabética.
use MDC_Desenho_Animado;

select p.nome `Nome Personagem`, 
d.nome `Desenho`
from personagens_lista as p
inner join desenhos_lista as d
on p.Desenho_id = d.id
order by d.nome asc;
-- //////////////////////////////////////////////////////////////////////


-- 16. Contar quantos personagens pertencem a cada desenho.
use MDC_Desenho_Animado;

select d.Nome `Desenho`,
count(p.id) `Quantidade de Personagens`
from Desenhos_Lista as d
inner join Personagens_Lista as p
on p.Desenho_id = d.id
group by d.Nome;
-- /////////////////////////////////////////////////////////////////


-- 17. Calcular a média de idade dos personagens de cada desenho.
use MDC_Desenho_Animado;

select avg(Idade) `Média da Idade`
from Personagens_Lista;
-- ////////////////////////////////////////////////////////////


-- 20. Listar os desenhos que possuem personagens com idade média maior
-- que 30 anos.
use MDC_Desenho_Animado;

select d.Nome `Desenho`,
avg(p.Idade) `Media de Idade`
from Desenhos_Lista as d
inner join Personagens_Lista as p
on p.Desenho_id = d.id
group by d.Nome
having avg(p.Idade) > 30;

