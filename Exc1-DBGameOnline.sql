CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BigInt auto_increment,
nome_classe VarChar(100) not null,
atts_primarios VarChar (100),
dado_de_vida VarChar(3),
resistencias VarChar(100),
primary key(id)
);

INSERT INTO tb_classes (nome_classe, atts_primarios, dado_de_vida, resistencias)
VALUES ("Bárbaro", "Força", "d12", "Força e Constituição");
INSERT INTO tb_classes  (nome_classe, atts_primarios, dado_de_vida, resistencias)
VALUES ("Bardo", "Carisma", "d8", "Destreza e Carisma");
INSERT INTO tb_classes  (nome_classe, atts_primarios, dado_de_vida, resistencias)
VALUES ("Bruxo", "Carisma", "d8", "Sabedoria e Carisma");
INSERT INTO tb_classes  (nome_classe, atts_primarios, dado_de_vida, resistencias)
VALUES ("Clérigo", "Sabedoria", "d8", "Sabedoria e Carisma");
INSERT INTO tb_classes  (nome_classe, atts_primarios, dado_de_vida, resistencias)
VALUES ("Druida", "Sabedoria", "d8", "Sabedoria e Inteligência");
INSERT INTO tb_classes  (nome_classe, atts_primarios, dado_de_vida, resistencias)
VALUES ("Feiticeiro", "Carisma", "d6", "Constituição e Carisma");
INSERT INTO tb_classes  (nome_classe, atts_primarios, dado_de_vida, resistencias)
VALUES ("Guerreiro", "Força ou Destreza", "d10", "Força e Constituição");
INSERT INTO tb_classes  (nome_classe, atts_primarios, dado_de_vida, resistencias)
VALUES ("Ladino", "Destreza", "d8", "Destreza e Inteligência");
INSERT INTO tb_classes  (nome_classe, atts_primarios, dado_de_vida, resistencias)
VALUES ("Mago", "Inteligência", "d6", "Sabedoria e Inteligência");
INSERT INTO tb_classes  (nome_classe, atts_primarios, dado_de_vida, resistencias)
VALUES ("Monge", "Destreza e Sabedoria", "d8", "Destreza e Força");
INSERT INTO tb_classes  (nome_classe, atts_primarios, dado_de_vida, resistencias)
VALUES ("Paladino", "Carisma e Força", "d10", "Sabedoria e Carisma");
INSERT INTO tb_classes  (nome_classe, atts_primarios, dado_de_vida, resistencias)
VALUES ("Patrulheiro", "Sabedoria e Destreza", "d10", "Força e Destreza");

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(170) not null,
raca VarChar(180) not null,
poder_ataque Int(20),
poder_defesa Int(20),
hp Int(20),
Equipamento VarChar(300),
alinhamento VarChar(180),
classe_id BigInt,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

INSERT INTO tb_personagens (nome, raca, poder_ataque, poder_defesa, hp, Equipamento, alinhamento, classe_id)
VALUES ("Kora Galanodel", "Elfa", 2680, 1560, 620, "Poções e estilingue", "Caótico bom", 12);

INSERT INTO tb_personagens (nome, raca, poder_ataque, poder_defesa, hp, Equipamento, alinhamento, classe_id)
VALUES ("Ayana Hoffer", "Humana", 1200, 6000, 420, "Chicote, escudo", "Caótica Neutra", 12);

INSERT INTO tb_personagens (nome, raca, poder_ataque, poder_defesa, hp, Equipamento, alinhamento, classe_id)
VALUES ("Zoya Smirnov", "Meio elfo", 890, 2300, 580, "Poções e varinha", "Leal e Neutro" , 9);

INSERT INTO tb_personagens (nome, raca, poder_ataque, poder_defesa, hp, Equipamento, alinhamento, classe_id)
VALUES ("Mirta Ballesteros", "Firlbolg", 700, 700, 350, "Katana", "Leal e Bom" , 11);

INSERT INTO tb_personagens (nome, raca, poder_ataque, poder_defesa, hp, Equipamento, alinhamento, classe_id)
VALUES ("Varya Zorkin", "Meio Elfo", 6000, 7000, 1000, "Varinha", "True Neutral" , 9);

INSERT INTO tb_personagens (nome, raca, poder_ataque, poder_defesa, hp, Equipamento, alinhamento, classe_id)
VALUES ("Maja ", "Elfo", 4500, 8000, 792, "Arco, adaga, foco druídico", "Leal e Bom" , 5);

INSERT INTO tb_personagens (nome, raca, poder_ataque, poder_defesa, hp, Equipamento, alinhamento, classe_id)
VALUES ("Astrea", "Aasimar", 11000, 900, 1100, "espada longa, kit de aventureiro", "Leal e Bom" , 11);

INSERT INTO tb_personagens (nome, raca, poder_ataque, poder_defesa, hp, Equipamento, alinhamento, classe_id)
VALUES ("Javier Muñoz", "Alto Elfo", 430, 8600, 1430, "Rosa, perfume e violão", "Caótico Mau" , 2);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000.00 ORDER BY poder_ataque;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000 ORDER BY poder_defesa;

UPDATE tb_personagens SET nome = "Javier Cuervo Muñoz" WHERE id = 8;

UPDATE tb_personagens SET nome = "Astrea Chainbreaker" WHERE id = 7;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, raca, poder_ataque, poder_defesa, hp, alinhamento, tb_classes.nome_classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT nome, raca, poder_ataque, poder_defesa, hp, alinhamento, tb_classes.nome_classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id 
WHERE classe_id = 11;