/* Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização. */

-- criando DB db_ecommerce
create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
-- criando primary key
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
preco double(8,2),
fornecedor varchar(255),
importado boolean,
-- definindo primary key
primary key(id)
);

insert into tb_produtos(nome, marca, preco, fornecedor, importado) values ("Cadeira Giratória Gamer", "Razer", 2300, "Imports Brasil LTDA.", true);
insert into tb_produtos(nome, marca, preco, fornecedor, importado) values ("Mouse Gamer", "Logitech", 230, "Logitech", false);
insert into tb_produtos(nome, marca, preco, fornecedor, importado) values ("LED para mesa", "Kabum", 99.90, "Lampadas&CO", false);
insert into tb_produtos(nome, marca, preco, fornecedor, importado) values ("Teclado Mecânico", "Logitech", 839.50, "Logitech", false);
insert into tb_produtos(nome, marca, preco, fornecedor, importado) values ("Monitor 28''", "Samsung", 1463.49, "Samsung", true);
insert into tb_produtos(nome, marca, preco, fornecedor, importado) values ("MacBook Pro", "Apple", 2300, "Apple Inc", true);
insert into tb_produtos(nome, marca, preco, fornecedor, importado) values ("Fone de ouvido sem fio", "Razer", 860.99, "Imports Brasil LTDA.", true);
insert into tb_produtos(nome, marca, preco, fornecedor, importado) values ("Descanso para braço", "Kabum", 49.90, "Conforto e CIA", false);

select * from tb_produtos;

-- produtos com valor maior que 500
select * from tb_produtos where preco > 500;

-- produtos com valor maior que 500
select * from tb_produtos where preco < 500;

-- atualizando o valor de um produto em promoção
update tb_produtos set preco = 2099.99 where nome = "Cadeira Giratória Gamer";

