-- ///////////////////////////////////////////////
use MDC_Empresa_Games;

create table DBD_Assissinos (
ID int not null auto_increment primary key,
Assassino varchar (50),
Poder varchar (30),
Velocidade decimal (2,1)
) default charset utf8mb4;

create table DBD_partidas (
ID int not null auto_increment primary key,
Data_Partida date,
Mapa varchar (50),
Sacrificios int, 
Killer int,
foreign key (Killer) references DBD_Assissinos (ID)
) default charset utf8mb4;


insert into DBD_Assissinos values
(1, 'Brinquedo Encapetado', 'Facada nas Bolas', 3.0),
(2, 'Demiurgo', 'Tranceder', 2.1),
(69, 'Rubilacse', 'Corte Ilimitado', 2.0), -- Autoral
(4, 'Jeison', 'Facada', 2.0);

select * from DBD_Assissinos;

insert into DBD_partidas values 
(default, '2026-05-20', 'Casa Abandonada', 3, 1),
(default, '2026-01-15', 'Pantano', 4, 2),
(default, '2025-10-20', 'Casa Abandonada', 0, 2),
(default, '2026-06-01', 'Castelo', 3, 69),
(default, '2024-09-25', 'Igreja', 5, 4),
(default, '2024-09-25', 'Igreja', 6, 69),
(default, '2026-01-30', 'Casa da Floresta', 5, 69);

truncate table DBD_partidas;
select * from DBD_partidas;


update DBD_Assissinos
set Poder = 'transcender a gnose'
where id = 2;


select * from  DBD_Assissinos
where Poder LIKE '%munição%';


select avg (Sacrificios) `Média de Morte`
from DBD_partidas;



truncate table DBD_partidas; 
-- ⬆️ Usado para limpar os dados, mas não apaga a estrutura

select * from DBD_Assissinos; -- mostra os dados
desc DBD_Assissinos; -- Mostra a estrutura e suas variaveis 


