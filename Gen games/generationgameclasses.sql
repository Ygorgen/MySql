create database db_generation_game_online; 
use db_generation_game_online;

create table tb_classes(
id_classe bigint auto_increment primary key ,
nome_classe varchar(255) not null,
descricao_classe text (255) 
);

create table tb_personagens(
id_personagem bigint auto_increment primary key,
nome_personagem varchar(255) not null,
id_classe bigint,
ip_geral int,
saude int,
class bigint ,
FOREIGN KEY (class) REFERENCES tb_classes(id_classe)
);

insert into tb_classes (nome_classe,descricao_classe) values ("Shadowcaller","O Shadowcaller é um mago das trevas , onde ele usa seu cajado para utilizar sombras como ataque"),
("Espadas duplas","O espadas dupla é uma arma que oferece uma velocidade de ataque maior que as demais , causando muito dano por segundo"),
("Arqueiro", "Um especialista em ataques à distância com arco e flecha."),
("Guerreiro", "Um combatente corpo a corpo habilidoso em combates diretos."),
("Ladrão", "Um mestre da furtividade e do roubo, ágil e sorrateiro.");

INSERT INTO tb_personagens (nome_personagem, id_classe, ip_geral, saude, class)
VALUES
    ('Xeide', 1, 1470, 3300, 1),
    ('Raykopt', 4, 1680, 3800, 4),
    ('Japabaiana', 3, 1220, 2980, 3),
    ('Garrick', 4, 1400, 3500, 4),
    ('Lyra', 5, 1150, 2000, 5),
    ('Kain', 1, 1250, 2080, 1),
    ('Elara', 3, 1000, 1400, 3),
    ('Raven', 2, 2100, 4100, 2);
    
    
SELECT p.nome_personagem, p.ip_geral, p.saude, c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.class = c.id_classe
WHERE (p.ip_geral * p.saude) > 2000;

INSERT INTO tb_personagens (nome_personagem, id_classe, ip_geral, saude, class)
VALUES ('Afrikka', 1, 570, 980, 1);

SELECT p.nome_personagem, p.ip_geral, p.saude, c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.class = c.id_classe
WHERE (p.ip_geral + p.saude) >= 1000 AND (p.ip_geral + p.saude) <= 2000;

SELECT nome_personagem, ip_geral, saude, class
FROM tb_personagens
WHERE nome_personagem LIKE '%C%';

SELECT p.nome_personagem, p.ip_geral, p.saude, c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.class = c.id_classe;

SELECT p.nome_personagem, p.ip_geral, p.saude, c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.class = c.id_classe
WHERE c.nome_classe = 'Shadowcaller';

