create database tw_gerenciador_tarefas;
use tw_gerenciador_tarefas;

create table tar_tarefas(
tar_id int primary key auto_increment,
tar_titulo varchar(50) not null,
tar_descricao varchar(100) default null,
tar_data_expiracao date not null,
tar_concluida bit default false
);

insert into tar_tarefas(tar_titulo,tar_descricao,tar_data_expiracao)
values('Tarefa 1', 'Descrição da tarefa 1',now());

select * from tar_tarefas;

create table usr_usuarios(
usr_id int primary key auto_increment,
usr_email varchar(100) not null,
usr_senha varchar(100) not null
);


delete from tar_tarefas;

alter table tar_tarefas add column usr_id int not null;

alter table tar_tarefas add constraint fk_tar_tarefas_usr_usuarios
foreign key(usr_id) references usr_usuarios(usr_id);

