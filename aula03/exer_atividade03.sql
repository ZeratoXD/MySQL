
USE db_generation_game_online;

CREATE TABLE tb_monstros_de_duelo(
   id bigint auto_increment,
    tipo varchar(255) not null,
    efeito varchar(255) not null,
    primary key(id)
);

create table tb_monstros(
	id bigint auto_increment,
    nome varchar(255),
    estrelas int,
    ataque int,
    defesa int,
    primary key(id)
);

insert into tb_monstros_de_duelo(tipo, efeito)
values("Dragão", "sem efeito"),
("Especialista", "sem efeito"),
("Guerreiro", "sem efeito"),
("Demonio", "sem efeito"),
("Dragão", "sem efeito");

insert into tb_monstros(nome, estrelas, ataque, defesa, classedid)
values("Dragão Branco de Olhos Azuis", 8, 3000, 2500,1),
("Mago negro", 7, 2500, 2100, 2),
("Guardião Celta", 4, 1400, 1000, 3),
("Rei Caveira", 6, 2500, 1200, 4),
("Dragão Negro de olhos vermelhos", 7, 2400, 2000, 5);

select * from tb_classes;

select * from tb_personagens;

alter table tb_personagens
add ataque int,  add defesa int;

alter table tb_personagens
add classedid bigint;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classedid) REFERENCES tb_classes (id);

select ataque from tb_personagens where ataque > 2000;

select ataque from tb_personagens where ataque between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes on tb_personagens.classedid = tb_classes.id;

select * from tb_personagens inner join tb_classes on tb_personagens.classedid = tb_classes.id where tb_classes.vocacao = "sorcerer";