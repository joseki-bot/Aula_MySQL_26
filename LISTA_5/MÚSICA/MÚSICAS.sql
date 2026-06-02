-- Música:
create database MDC_Musica
default collate utf8mb4_general_ci
default charset = utf8mb4;
use MDC_musica; 

-- ○ artistas: id, nome, genero
create table Artistas_Lista (
id int not null auto_increment primary key,
Nome varchar (50),
Genero varchar (10)
)  default charset utf8mb4;
drop table Artistas_Lista;

-- ○ albuns: id, titulo, ano_lancamento, artista_id
create table Albuns_Lista (
id int not null auto_increment primary key,
Titulo varchar (69),
Ano_lançamento year,
Artista_id int,
foreign key (Artista_id) references
Artistas_Lista (id)
) default charset utf8mb4;
-- /////////////////////////////////////////////


-- 2. Listar o nome dos álbuns e o nome do artista correspondente.
select Alb.Titulo `Música`,
Art.Nome `Artista`
from Artistas_Lista as Art
inner join Albuns_Lista as Alb
on Alb.Artista_id = Art.id;

insert into Artistas_Lista values
(default, 'Michael Jackson', 'Pop'),
(default, 'Eminem', 'Rap'),
(default, 'Adele', 'Pop'),
(default, 'Linkin Park', 'Rock'),
(default, 'Marília Mendonça', 'Sertanejo');

insert into Albuns_Lista values
(default, 'Thriller', 1982, 1),
(default, 'The Eminem Show', 2002, 2),
(default, '25', 2015, 3),
(default, 'Meteora', 2003, 4),
(default, 'Todos os Cantos', 2019, 5);
-- //////////////////////////////////////////////////////////////////////////


-- Listar todos os álbuns, mesmo que não estejam associados a um artista.
use mdc_musica;

select Titulo `Música` 
from Albuns_Lista;
-- /////////////////////////////////////////////////////////////////////


-- 7. Listar todos os artistas, mesmo que não tenham álbuns lançados.
select nome `Artistas`
from Artistas_Lista;
-- //////////////////////////////////////////////////////////////////////


-- 11. Listar os títulos dos álbuns lançados antes de 2000 e o nome do artista.
use mdc_musica;

select Alb.Titulo `Música`,
Alb.Ano_lançamento `Lançamento`,
Art.Nome `Artista`
from Artistas_Lista as Art
inner join Albuns_Lista as Alb
on Alb.Artista_id = Art.id
where Ano_lançamento < 2000;
-- ////////////////////////////////////////////////////////////////////////////


-- 14. Listar os títulos dos álbuns e o nome do artista, ordenados pelo ano de
-- lançamento do álbum em ordem decrescente
use mdc_musica;

select Alb.Titulo `Música`,
Alb.Ano_lançamento `Lançamento`,
Art.Nome `Artista`
from Artistas_Lista as Art
inner join Albuns_Lista as Alb
on Alb.Artista_id = Art.id
order by Alb.Ano_lançamento desc;
-- //////////////////////////////////////////////////////////////////////


-- 18. Listar os artistas que possuem mais de 3 álbuns lançados.
use MDC_Musica;

select a.Nome `Artista`,
count(al.id) `Quantidade de Albuns`
from Artistas_Lista as a
inner join Albuns_Lista as al
on al.Artista_id = a.id
group by a.Nome
having count(al.id) > 3; 
-- //////////////////////////////////////////////////////////////////////////














