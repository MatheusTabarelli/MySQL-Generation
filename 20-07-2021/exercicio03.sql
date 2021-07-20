/* Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

-- criando DB db_escola
create database db_escola;

use db_escola;

create table tb_estudantes(
-- criando primary key
id bigint auto_increment,
nome varchar(255),
idade int,
sexo varchar(255),
curso varchar(255),
turma int, 
nota int,
-- definindo primary key
primary key(id)
);

insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Igor Morais", 25, "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 10);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Aryclenes ", 26, "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 10);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Nathalia Silvestre", 22, "Feminino", "Desenvolvedora Java Fullstack Jr.", 26, 10);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Felipe Costa", 16,"Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 10);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Wendel Matos", 90, "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 4);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Janaína Felicia", 30, "Feminino", "Desenvolvedora Java Fullstack Jr.", 26, 6);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Anibal de Souza", 40, "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 5);
insert into tb_estudantes(nome, idade, sexo, curso, turma, nota) values ("Maju Coutinho", 29, "Feminino", "Desenvolvedora Java Fullstack Jr.", 26, 0);

-- selecioanndo notas maiores que 7
select * from tb_estudantes where nota > 7;

-- selecioanndo notas maiores que 7
select * from tb_estudantes where nota < 7;

-- atualizando nota com update 
update tb_estudantes set nota = 5 where id = 8;

select * from tb_estudantes;