/*Criando a Tabela Curso*/
create database cadastro;

create table if not exists cursos(
idcurso int(11) not null auto_increment,
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016',
primary key(idcurso)
) default charset = utf8;

/*Inserindo dados na tabela Curso*/
insert into cursos value
(default,'HTML','Curso de HTML5','48','37','2014'),
(default,'Algoritimos','Lógica de Progamação','20','37','2014'),
(default,'Photoshop','Dicas de Photoshop CC','10','8','2014'),
(default,'PGP','Curso de PHP para Iniciantes','40','20','2010'),
(default,'Jarva','Introdução a linguagem Java','10','29','2000'),
(default,'MySQL','Banco de Dados MySQL','30','15','2016'),
(default,'World','Curso Completo de World','40','30','2016'),
(default,'Sapateado','Danças Rítmicas','40','30','2018'),
(default,'Cozinha Arabe','Aprenda a fazer Kibe','40','30','2018'),
(default,'Youtuber','Ganhar Inscritos','5','2','2018');

/*Alterando Colunas da Tabela*/
alter table cursos
modify column id int(11) not null auto_increment;

alter table cursos
change column id idcursos int(11) not null auto_increment;

/*Utilizando o Comando UPDATE*/
update cursos
set nome = 'HTML5'
where idcursos = '1';

update cursos
set nome = 'PHP', ano = '2014'
where idcursos = '4';

update cursos
set nome = 'Java', carga = '40'
where idcursos = '5';

update cursos
set nome = 'Cozinha Arabe'
where nome = 'Cozinha'
limit 1;

/*Utilizando o comando DELETE*/
delete from cursos
where ano = '2018'
limit 3;

/**Utilizando o comando TRNCATE*/
truncate table cursos;

/*Comandos para Consulta*/
select * from cursos;

alter table cursos
modify column id int(11) not null auto_increment;

alter table cursos
change column id idcursos int(11) not null auto_increment;

desc cursos;