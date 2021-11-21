use cadastro;

desc disciplina;

rename database cadastro to teste;

alter table disciplina change carga cargatot int unsigned;

alter table disciplina drop column totaulas;

alter table disciplina add column pre_requisito varchar(30) after nome;

alter table disciplina add column nucleo enum('NC','NE');

alter table disciplina add column natureza varchar(3) default 'OBR';

select * from disciplina;

alter table disciplina modify num int auto_increment; 

truncate disciplina;

desc disciplina;

alter table disciplina modify pre_requisito varchar(50);

INSERT INTO disciplina (nome, cargatot, nucleo) VALUES ('Cálculo 1', '96', 'NC'),
('Lógica Matemática', '64', 'NC'),
('Matemática Discreta', '64', 'NC'),
('Algoritmos e Prog. de Computadores 1', '64', 'NC'),
('Produção de Texto', '64', 'NC'),
('Introdução à computação', '64', 'NC'),
('Cálculo 2', '96', 'NC'),
('Probabilidade e Estatística', '64', 'NC'),
('Sistemas Digitais', '64', 'NC'),
('Programação Orientada a Objetos', '64', 'NC'),
('Estruturas de Dados 1', '64', 'NC'),
('Álgebra Linear', '64', 'NC'),
('Linguagens de Programação', '64', 'NC'),
('Física para Computação', '64', 'NC'),
('Algoritmos e Prog. De Computadores 2', 'Algoritmos e Prog. De Computadores 1', '64', 'NC'),
('Estruturas de Dados 2', 'Estruturas de Dados 1', '64', 'NC'),
('Arquitetura de Computadores', '64', 'NC'),
('Teoria dos Grafos', '64', 'NC'),
('Análise e Projeto de Algoritmos', '64', 'NC'),
('Organização de Computadores', '64', 'NC'),
('Banco de Dados 1', '64', 'NE'),
('Engenharia de Software 1', '64', 'NE'),
('Sistemas Operacionais 1', '64', 'NC'),
('Pesquisa Operacional', '64', 'NC'),
('Inteligência Artificial', '64', 'NE'),
('Banco de Dados 2', 'Banco de Dados 1', '64', 'NE'),
('Redes de Computadores 1', '64', 'NE'),
('Computação Gráfica', '64', 'NE'),
('Linguagens Formais e Autômatos', '64', 'NE'),
('Engenharia de Software 2', 'Engenharia de Software 1', '64', 'NE'),
('Sistemas Operacionais 2', '64', 'NC'),
('Programação Funcional e Lógica', '64', 'NC'),
('Teoria da Computação', '64', 'NE'),
('Compiladores', '64', 'NC'),
('Processamento de Imagens', '64', 'NE'),
('Sistemas Distribuídos', 'Redes de Computadores 1', '64', 'NE'),
('Redes de Computadores 2', 'Redes de Computadores 1', '64', 'NE'),
('Interfaces Homem-Computador', '32', 'NE'),
('Optativa 1', '64', 'NE'),
('Optativa 2', '64', 'NE'),
('Optativa 3', '32', 'NE'),
('Laboratório de Programação 1', 'Algoritmos e Prog. De Computadores 1', '32', 'NC'),
('Fábrica de Software', 'Engenharia de Software 2', '32', 'NC'),
('Projeto Final de Curso 1', '32', 'NE'),
('Laboratório de Programação 2', 'Algoritmos e Prog. De Computadores 2', '32', 'NC'),
('Direito', '64', 'NC'),
('Empreendedorismo', '64', 'NC'),
('Laboratório de Programação 3', '32', 'NC'),
('Projeto Final de Curso 2', '32', 'NE');

select * from disciplina;

update disciplina set num = '1' where cargatot = '96' limit 1;

delete from disciplina where num = '1';

describe disciplina;

alter table disciplina add column departamento varchar(8) after nome;

alter table disciplina modify departamento varchar(8) default 'DCC' after nome;

alter table disciplina modify nome varchar(50) not null;

 select * from disciplina;
 
UPDATE disciplina SET departamento = 'DCMAT' WHERE (num = '1');
UPDATE disciplina SET departamento = 'DCLET' WHERE (num = '5');
UPDATE disciplina SET departamento = 'DCMAT' WHERE (num = '7');
UPDATE disciplina SET departamento= 'DCMAT' WHERE (num = '8');
UPDATE disciplina SET departamento = 'DCMAT' WHERE (num = '12');
UPDATE disciplina SET departamento = 'DCFIS' WHERE (num = '14');
UPDATE disciplina SET departamento = 'DCIVIL' WHERE (num = '47');
UPDATE disciplina SET departamento = 'DADM' WHERE (num = '48');

 select * from disciplina;
 
 create table aluno_disciplina(
	id int primary key auto_increment,
    data_ini date,
    id_aluno int,
    num_disciplina int,
    foreign key(id_aluno) references aluno(id),
    foreign key(num_disciplina) references disciplina(num)
 ) default charset = utf8;
 
 describe aluno_disciplina;
 
 insert into aluno_disciplina values
 (null,'2018/2','3','6');
 
 select * from aluno_disciplina;
 select * from disciplina;
 select * from aluno;
 
 
 delete from aluno_disciplina where id = '2';
 
 alter table aluno_disciplina change data_ini ano year;
 
 alter table aluno_disciplina modify ano varchar(6);
 
 truncate aluno_disciplina;
 
/*Exercicios de SELECT*/
/*Respostas:*/
/*Ex1*/
select * from aluno where sexo = 'F' 
order by nome;
 
/*Ex2*/
select * from aluno where nascimento 
between '2000-01-01' and '2015-12-31' 
order by nascimento;

/*Ex3*/
select max(altura) from aluno where sexo = 'M'
and nacionalidade = 'Brasil';
 
/*Ex4*/
select sexo, count(*) from aluno 
where nascimento > '2005-01-01'
group by sexo;

/*Ex5*/ 
select count(*), nacionalidade from aluno
where nacionalidade <> 'Brasil'
group by nacionalidade
having count(*) > 3
order by nacionalidade;


/*Ex6*/
select avg(altura) from aluno;

select * from aluno
where peso >100
group by altura
having altura > (select avg(altura) from aluno);