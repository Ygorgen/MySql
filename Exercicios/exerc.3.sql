CREATE DATABASE bd_ecommerce;
USE bd_ecommerce;

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10, 2),
    estoque INT,
    categoria VARCHAR(50)
);

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria) VALUES
('Pen-drivve', ' é um dispositivo de armazenamento portátil que utiliza a tecnologia USB ', 30.00, 20, 'armazenamento'),
('Powwerbank', 'Carregador portatil', 80.00, 15, 'carregador'),
('SSD', 'unidade de estado sólido, é um tipo de dispositivo de armazenamento de dados que utiliza tecnologia de memória flash para armazenar informações de forma rápida e confiá', 650.00, 10, 'armazenamento'),
('Pelicula', 'Proteção para tela de celulares', 15.00, 40, 'Acessórios'),
('Carregador Typ-C', 'Carregador celular de padrão Typ-C', 50.00, 25, 'carregador'),
('Dualshock-5', 'Controle para console (PS5/PC)', 650.00, 5, 'Acessórios'),
('Adaptador Hdmi>Vga', 'Conversor de imagem', 70.00, 30, 'Acessórios'),
('Cabo V-8', 'Cabo de padrão V-8', 10.00, 18, 'Acessórios');

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET estoque = 12 WHERE nome = 'Pedrive 500gb';



