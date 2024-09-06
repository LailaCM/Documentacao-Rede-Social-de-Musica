drop database if exists petshop;
create database petshop character set utf8 collate utf8_general_ci;
use petshop;

create table cliente(
    id int not null primary key auto_increment,
    nome varchar(100) not null,
    cpf int(11) not null,
    endereço varchar(100) not null,
    telefone int(11) not null
);

create table compra(
    id int not null primary key auto_increment,
    produto varchar(100) not null,
    descricao varchar(2400) not null,
    data_compra datetime not null,
    id_cliente int not null,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

create table produto(
    id int not null primary key auto_increment,
    nome varchar(100) not null,
    quantidade_estoque int not null,
    preco int not null
);

create table itemcompra(
    id int not null primary key auto_increment,
    preco_custo int not null,
    quantidade int not null,
    id_compra int not null,
    id_produto int not null,
    FOREIGN KEY (id_compra) REFERENCES compra(id),
    FOREIGN KEY (id_produto) REFERENCES produto(id)
);

show tables;

insert into cliente values
(null,'Bia atriz', '11111111111', 'Ap25 Bl13', '44444444444'),
(null,'Mil ema', '22222222222', 'Rua Corce', '55555555555'),
(null,'Alial', '33333333333', 'Rua Mogi Guarana', '66666666666');

insert into produto values
(null,'Laço', 10, 15 ),
(null,'Perfume Dog',5,30),
(null,'Gravata', 20, 15),
(null,'Ratinho', 30,8),
(null,'Osso', 45, 20),
(null,'Cama p', 14, 85);

insert into compra values
(null,'Laço', 'Acessório','2009-04-30',1),
(null,'Perfume Dog', 'Higiene','2000-12-05',2),
(null,'Gravata','Acessório','1997-01-28',3),
(null,'Ratinho', 'Brinquedo','2009-04-30',1),
(null,'Osso', 'Brinquedo','2000-12-05',2),
(null,'Cama p','Acessório','1997-01-28',3);


insert into itemcompra values
(null,10,1,1,1),
(null,20,1,2,2),
(null,10,1,3,3),
(null,5,1,1,4),
(null,10,1,2,5),
(null,65,1,3,6);

select * from cliente;
select * from produto;
select * from compra;
select * from itemcompra;
