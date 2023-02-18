create database cadastro;

create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
) default char set = utf8;

insert into pessoas 
value (default,'Paulo','2000-03-05','M','1.67','1.62',default);

select * from pessoas;

create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset = utf8;

alter table cursos
add column id int first;

alter table cursos
add primary key (id);

desc cursos;

