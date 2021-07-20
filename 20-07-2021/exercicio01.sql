/* Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

-- criando DB db_brecho
create database db_empresa;

use db_brecho;

create table tb_dadosFuncionarios(
-- criando primary key
id bigint auto_increment,
nome varchar(255),
idade int,
setor varchar(255),
cargo varchar(255),
salario decimal(8,2),
-- definindo primary key
primary key(id)
);

insert into tb_dadosFuncionarios (nome, idade, setor, cargo, salario) values ("Matheus Tabarelli", 23, "TI", "Engenheiro de Software Jr.", 5600);
insert into tb_dadosFuncionarios (nome, idade, setor, cargo, salario) values ("Igor Morais", 25, "TI", "Engenheiro de Software Jr.", 5600);
insert into tb_dadosFuncionarios (nome, idade, setor, cargo, salario) values ("Paula Carvalho", 27, "RH", "Analista de Recrutamento e Seleção", 4500);
insert into tb_dadosFuncionarios (nome, idade, setor, cargo, salario) values ("Luana Lins", 21, "Financeiro", "Estagiária", 1800);
insert into tb_dadosFuncionarios (nome, idade, setor, cargo, salario) values ("Debora Martins", 34, "Marketing", "Gerente de Projetos", 15900);

select * from tb_dadosFuncionarios;

-- funcionarios com salario maior que 2000
select * from tb_dadosFuncionarios where salario > 2000;

-- funcionarios com salario menor que 2000
select * from tb_dadosFuncionarios where salario < 2000;

-- atualizando salario da estagiaria
update tb_dadosFuncionarios set salario = 1950 where id = 4;
