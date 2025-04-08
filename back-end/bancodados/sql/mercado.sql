create database Mercado;

use Mercado;

create table Fornecedor (
idFornecedor int primary key,
nomeFornecedor varchar (45)
);

create table Categoria(
idCategoria int primary key,
nome varchar(45)
);

create table Estado(
uf char(2) primary key,
nome varchar (50),
Etadocol varchar (45)
);

create table TipoEndereco (
idTipoEndereco int primary key,
nome varchar(30)
);

create table Departamento (
idDepartamento int primary key,
nome varchar (45)
);

create table Cidade (
idCidade int primary key,
nome varchar(85),
uf char(2) not null,
foreign key (uf) references Estado(uf)
);

create table Bairro(
idBairro int primary key,
nome varchar(85),
idCidade int not null,
foreign key (idCidade) references Cidade(idCidade)
);

create table Endereco(
idEndereco int primary key,
nome varchar (100),
numero varchar(6),
cep char(9),
idTipoEndereco int not null,
foreign key (idTipoEndereco) references TipoEndereco(idTipoEndereco),
idBairro int not null,
foreign key (idBairro) references Bairro(idBairro)
);

create table Funcionario(
idFuncionario int primary key,
idSupervisor int not null,
idEndereco int not null,
foreign key (idEndereco) references Endereco(idEndereco),
nome varchar(150),
idade int,
sexo char(2),
dataContratacao date,
dataDemissao date,
demissao tinyint(1),
salario float
);

create table Dependente (
idDependente int primary key,
idFuncionario int not null,
foreign key (idFuncionario) references Funcionario(idFuncionario),
nome varchar(150),
parentesco varchar(45),
sexo char(2),
idade int
);

create table DeptFunc(
idDeptFunc int primary key,
idFuncionario int not null,
idDepartamento int not null,
foreign key (idFuncionario) references Funcionario(idFuncionario),
foreign key (idDepartamento) references Departamento(idDepartamento),
dataEntradaDept date,
dataSaidaDept date
);

create table Cliente(
idCliente int primary key,
idEndereco int,
foreign key (idEndereco) references Endereco(idEndereco),
nome varchar (150),
sexo char(1),
idade int
);

create table Telefone(
idCliente int,
idFuncionario int,
foreign key (idCliente) references Cliente(idCliente),
foreign key (idFuncionario) references Funcionario(idFuncionario),
numeroTelefone varchar(10)
);

create table Produto (
idProduto int primary key,
idFornecedor int,
idCategoria int,
nome varchar (150) not null,
quantidade int,
valorUnitario float
);

create table Compra (
idCompra int primary key,
idCliente int,
idFuncionario int,
dataCompra date,
valorTotalCompra float,
finalizada tinyint(1),
formaPagamento varchar(15)
);

create table ItemCompra (
idCompra int not null,
idProduto int not null,
quantidade int,
valorTotal float
);

alter table Fornecedor
change column nomeFornecedor nomeFornecedor varchar (45) not null,
modify idFornecedor int(11);
desc Fornecedor;

alter table Categoria
change column nome nome varchar(45) not null,
modify idCategoria int(11);
desc categoria;

alter table Estado
change column nome nome varchar(50) not null,
drop column Etadocol;
desc Estado;

alter table tipoEndereco
change column nome nome varchar(30) not null,
modify idTipoEndereco int(11);

alter table Departamento
modify idDepartamento int(11),
change column nome nome varchar(45) not null;

alter table Cidade
modify idCidade int(11),
change column nome nome varchar(85) not null;

alter table Bairro
modify idbairro int(11),
modify idCidade int(11),
change column nome nome varchar(85) not null;

alter table Endereco
modify idEndereco int(11),
modify idTipoEndereco int(11),
modify idBairro int(11),
change column nome nome varchar(100) not null,
change column numero numero varchar(6) not null,
change column cep cep varchar(9) not null;

alter table Funcionario
modify idFuncionario int(11),
modify idSupervior int(11),
modify idEndereco int(11),
change column nome nome varchar(150) not null,
change column idade idade int(11) not null,
change column sexo sexo char(2) not null,
change column dataContratacao dataContratacao date not null,
change column salario salario float not null;

alter table Dependente
modify idDependente int(11),
modify idFuncionario int(11),
change column nome nome varchar(150) not null,
change column parentesco parentesco varchar(45) not null,
change column sexo sexo char(2) not null,
change column idade idade int(11) not null;

alter table deptFunc
modify idDeptFunc int(11),
modify idFuncionario int(11),
modify idDepartamento int(11),
change column dataEntradaDept dataEntradaDept date not null;

alter table Cliente
modify idCliente int(11),
modify idEndereco int(11) not null,
change column nome nome varchar(150) not null,
change column sexo sexo char(1) not null,
change column idade idade int(11) not null;

alter table Telefone
add column idTelefone int(11),
modify numeroTelefone varchar(10) not null;

alter table produto
modify idproduto int(11),
modify idFornecedor int(11) not null,
modify idCategoria int(11) not null,
change column nome nome varchar(150) not null,
change column quantidade quantidade int(11) not null,
change column valorUnitario valorUnitario float not null;

alter table Compra
modify idCompra int(11),
modify idCliente int(11),
modify idFuncionario int(11),
modify dataCompra date not null,
modify valorTotalCompra float not null,
modify finalizada tinyint(1),
modify formaPagamento varchar(15) not null;

alter table itemCompra
add column iditemCompra int(11) primary key,
modify idCompra int(11),
modify idproduto int(11),
change column quantidade quantidade int(11) not null,
modify valorTotal float not null;

drop database mercado;