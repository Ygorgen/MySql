create database rh_solucoes;
use rh_solucoes;

create table tb_colaboradores (
id int auto_increment primary key ,
nome varchar  (200),
cargo varchar(100),
salario decimal(10,02),
setor varchar(50),
data_contratacao date
);

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_contratacao) 
VALUES ('Gustavo prefeito', 'Desenvolvedor web', 2500, 'TI', '2023-03-15');

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_contratacao) 
VALUES ('Sther maiami', 'Desenvolvedora web', 2050, 'Recursos humanos', '2021-04-18');

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_contratacao) 
VALUES ('Maryana santos', 'Analista de rh', 2100 , 'TI', '2019-02-23');

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_contratacao) 
VALUES ('Pedro souza', 'Operador de produção',1800, 'produção', '2017-11-30');

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_contratacao) 
VALUES ('Ana beatriz', 'Gerente de vendas', 1800, 'vendas', '2023-08-22');

select * from tb_colaboradores where salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE Colaboradores SET salario = 2200.00 WHERE nome = 'Matheus bergamo';
