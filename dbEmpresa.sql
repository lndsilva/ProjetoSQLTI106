drop database dbEmpresa;

create database dbEmpresa;

use dbEmpresa;

create table tbFuncionarios(
codfunc int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
salario decimal(9,2) not null default 0 check(salario >= 0),
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codfunc)
);


create table tbUsuarios(
codusu int not null auto_increment,
nome varchar(20) not null,
senha varchar(20) not null,
codfunc int not null,
primary key(codusu),
foreign key(codfunc)references tbFuncionarios(codfunc)
);


create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
quantidade int default 0 check(quantidade >= 0),
valor decimal(9,2) check(valor >= 0),
codusu int not null,
primary key(codProd),
foreign key(codusu)references tbUsuarios(codusu)
);

desc tbProdutos;
desc tbUsuarios;
desc tbFuncionarios;


insert into tbFuncionarios(nome,email,cpf,salario,sexo)
values('Paulo Miranda da Silva','paulo.msilva@hotmail.com','258.247.248-00','1500.00','M');

insert into tbUsuarios(nome,senha,codfunc)values('paulo.msilva','123456',1);


insert into tbProdutos(descricao,quantidade,valor,codusu)values('Banana',12,10.35,1);


select * from tbFuncionarios;
select * from tbUsuarios;
select * from tbProdutos;

