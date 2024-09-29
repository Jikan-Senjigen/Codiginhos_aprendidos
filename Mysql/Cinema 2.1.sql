use filme1;

create table filme (
    id int primary key,
    titulo varchar(255) not null,
    ano_lancamento int,
    duracao int
);

create table genero (
    id int primary key,
    nome varchar(100) not null
);

create table usuario (
    id int primary key,
    nome varchar(255) not null,
    email varchar(255) unique not null,
    senha varchar(255) not null,
    data_expiracao_senha date
);
-- Relacionamentos --
create table filme_genero (
    filme_id int,
    genero_id int,
    primary key (filme_id, genero_id),
    foreign key (filme_id) references filme(id),
    foreign key (genero_id) references genero(id)
);

create table assistiu (
    usuario_id int,
    filme_id int,
    avaliacao int,
    tempo_assistido int,
    concluiu boolean,
    primary key (usuario_id, filme_id),
    foreign key (usuario_id) references usuario(id),
    foreign key (filme_id) references filme(id)
);


insert into usuario (id, nome, email, senha, data_expiracao_senha) values
(1, 'Joao', 'telespectador@example.com', '123filmes', date_add(curdate(), interval 180 day)),
(2, 'Alice', 'alice@example.com', 'senha123', date_add(curdate(), interval 180 day)),
(3, 'Bob', 'bob@example.com', 'senha123', date_add(curdate(), interval 180 day));

insert into genero (id, nome) values
(1, 'Ação'),
(2, 'Comédia'),
(3, 'Drama'),
(4, 'Ficção Científica'),
(5, 'Terror');

insert into filme (id, titulo, ano_lancamento, duracao) values
(1, 'Demon Slayer Infinity Castle', 2020, 120),
(2, 'Code Geass', 2021, 90),
(3, 'Parasysite', 2022, 110),
(4, 'Bocchi the Rock', 2023, 95),
(5, 'Elfen Lied', 2024, 130),
(6, 'Berserk', 2023, 111),
(7, 'Mashle', 2024, 150);
insert into filme_genero (filme_id, genero_id) values
(1, 1),
(1, 2),
(1, 3),
(2, 3),
(2, 4),
(3, 1),
(3, 5),
(4, 2),
(4, 3),
(5, 4),
(5, 5),
(6, 4),
(5, 3),
(7, 1);

insert into assistiu (usuario_id, filme_id, avaliacao, tempo_assistido, concluiu) values
(1, 1, 8, 120, true),
(1, 2, 4, 90, true),
(1, 3, 6, 60, false),
(2, 1, 4, 120, true),
(2, 4, 9, 95, true),
(3, 2, 1, 45, false),
(3, 3, 5, 110, true),
(3, 5, 10, 130, true),
(1, 6, 3, 120, false),
(2, 7, 7, 100, true);


create view filmes_3_generos_avaliacao as
select f.id, f.titulo, group_concat(g.nome separator ', ') as generos
from filme f
join filme_genero fg on f.id = fg.filme_id
join genero g on fg.genero_id = g.id
group by f.id, f.titulo
having count(distinct fg.genero_id) >= 3;


select*from filmes_3_generos_avaliacao;

create view assistidos_com_avaliacao as
select u.nome as usuario_nome,
f.titulo as filme_titulo,
a.avaliacao,
a.tempo_assistido
from assistiu a
join usuario u on a.usuario_id = u.id
join filme f on a.filme_id = f.id
where a.concluiu = true;


select*from assistidos_com_avaliacao;



create view genero_favorito_usuario as
select u.id as usuario_id,
u.nome as nome_usuario,
g.nome as genero_favorito,
avg(a.avaliacao) as media_avaliacao
from usuario u
join assistiu a on u.id = a.usuario_id
join filme f on a.filme_id = f.id
join filme_genero fg on f.id = fg.filme_id
join genero g on fg.genero_id = g.id
group by u.id, g.id
having
avg(a.avaliacao) = (
select max(avg_avaliacao)
from (
select avg(assistiu.avaliacao) as avg_avaliacao
from assistiu
join filme on assistiu.filme_id = filme.id
join filme_genero on filme.id = filme_genero.filme_id
where assistiu.usuario_id = u.id
group by filme_genero.genero_id
) as avg_genero
    );

select*from genero_favorito_usuario;
