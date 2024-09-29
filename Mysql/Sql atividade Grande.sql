use selects;

create table if not exists alimento(
	id int primary key,
	nome varchar(100) not null,
    tipo varchar(2),
    quantidade int not null default 0
);

create table if not exists departamento (
	id int primary key,
	tipo varchar(2) not null,
    setor varchar(200) not null,
    preco decimal (5,2) not null
);

create table if not exists Fornecedor (
	id int primary key,
	codigo varchar(200) not null,
    nome varchar(200) not null
);

insert into alimento (id,nome, tipo,quantidade) values
(1,'limão', 'f',5),
(2,'batata','v',10),
(3,'alface','h',12),
(4,'laranja','f',8),
(5,'tomate',null,0),
(6,'cenoura','v',30),
(7,'couve','h',10);

insert into departamento (id,tipo, setor, preco) values
(1,'f','fruta',10.00),
(2,'v','verdura',15.00),
(3,'h','hortaliça',5.00),
(4,'d','doces',20.00);

insert into Fornecedor (id,codigo,nome) values
(1,'fruta','ceasa'),
(2,'verdura','horta'),
(3,'doces','doceria');

-- Busque os alimentos que tem um tipo
select id, nome, tipo, quantidade
from alimento
where tipo is not null
-- Quais alimentos nao tem tipo?

select id, nome, tipo, quantidade
from alimento
where tipo is null;
-- Quais alimentos o nome começa com L?
select nome
from alimento
where nome like '1%' or nome  like 'L%';


-- Quais alimentos custam mais que $5?
select a.nome, d.preco
from alimento a
          c          

-- Quais alimentos custam mais que $15?
select a.nome, d.preco
from alimento a
          inner join departamento d
          on a.tipo = d.tipo
where d.preco > 15;          
-- Qual o departamento com o produto mais caro?
select *
from departamento
order by preco desc
limit 1;
-- Retorne os departamentos ordenados pelo preço do mais caro ao mais barato?
select *
from departamento
order by preco desc
limit 10;
-- Quais setores não têm nenhum alimento?
select d.*
from alimento a
right join departamento d
           on a.tipo = d.tipo
where a.id is null;


-- Quanto eu lucraria se vendesse todos os alimentos?
select sum(a.quantidade * d.preco) as "Total"
from alimento a
inner join departamento d
      on a.tipo = d.tipo;



-- Qual o total do preço por departamento?

select d.setor, sum(a.quantidade * d.preco) as "Total"
from alimento a
right join departamento d
      on a.tipo = d.tipo
group by d.setor      
      
      ;

-- Qual o total do preço por fornecedor? 
select f.nome, sum(a.quantidade * d.preco) as "Total"
from alimento a
right join departamento d
      on d.tipo = d.tipo
right join fornecedor f
      on d.setor = f.codigo     
group by f.nome
;

-- Qual o fornecedor mais lucrativo?

select f.nome, sum(a.quantidade * d.preco) as "Total"
from alimento a
right join departamento d
      on d.tipo = d.tipo
right join fornecedor f
      on d.setor = f.codigo     
group by f.nome
order by Total desc


-- Qual o fornecedor mais lucrativo?

select sum(a.quantidade * d.preco) as "Total"
from alimento a
inner join departamento d
      on a.tipo = d.tipo;
;
