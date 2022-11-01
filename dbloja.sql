-- apagar o banco de dados
drop database dbloja;

-- criando banco de dados
create database dbloja;

-- visualizando o banco de dados
show databases;

-- acessando o banco de dados
use dbloja;

-- criando as tabelas para o banco de dados
create table tbFuncionarios(
codfunc int auto_increment,
nome varchar(50),
email varchar(50),
cpf char(14),
tel char(10),
primary key(codfunc)
);


create table tbUsuarios(
codusu int auto_increment,
nome varchar(15),
senha varchar(14),
primary key(codusu)
);


-- visualizando as tabelas no banco de dados
show tables;

-- visualizando a estrutura das tabelas
desc tbFuncionarios;
desc tbUsuarios;

-- inserindo valores nas tabelas
insert into tbFuncionarios(nome,email,cpf,tel)
values('José da Cunha','jose.cunha@hotmail.com','258.247.256-87',
'97854-8752');

insert into tbFuncionarios(nome,email,cpf,tel)
values('Maria da Silva','maria.silva@hotmail.com','254.258.963-77',
'98741-5824');

insert into tbUsuarios(nome,senha)values('maria.silva','123456');

insert into tbUsuarios(nome,senha)values('jose.cunha','654321');

-- visualizando os registros das tabelas
select * from tbFuncionarios;
select * from tbUsuarios;

-- alterando os registros das tabelas
update tbUsuarios set senha = '789658452' where codusu = 1;

select * from tbUsuarios;