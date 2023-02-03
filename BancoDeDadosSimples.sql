create database cadastro
default character set utf8mb3
default collate utf8mb3_general_ci;

create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasileiro',
primary key (id)
)default char set = utf8mb3;

describe pessoas;

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Paulo' , '2000-03-05', 'M', '65.5','1.65', 'Brasil'),
('Henrique' , '2000-03-05', 'M', null,'1.65', 'Brasil');

select * from pessoas;

drop database cadastro;