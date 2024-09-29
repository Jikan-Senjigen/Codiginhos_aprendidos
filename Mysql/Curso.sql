use seila2;

create table curso (
codiginho varchar(5) primary key,
nome varchar (400) unique not null
);

insert into curso (codigo, nome) values
("bnd98", "Analise e Desenvolvimento de Sistemas"),
("8fhg", "Engenharia de Software"),
("jhg94", "Ciencia da Computaçao");

select codiginho, nome from curso;

create table estudante (
matricula varchar(20) primary key,
nome varchar (500) not null,
cpf varchar(15) unique not null,
ddn date not null,
codicurso varchar(5) not null,
foreign key (codiginho)
references curso(codiginho)
on delete restrict
on update cascade 	
);

insert into estudante
(matricula, nome, cpf, ddn, codicurso)
values
("Ucb9123487", "Jason", "3412414", "2024-03-24", "jhg94");
select * from estudante;


create table turmaP(
turma varchar(30) primary key,
turno varchar(20) null,
materia varchar(30),
semestre varchar(30)
);

insert into turma
(coditurma, turno, materia, semestre)
values
("ucb912345698", "Matutino", "Ads", "Terceiro");

select * from turma;
