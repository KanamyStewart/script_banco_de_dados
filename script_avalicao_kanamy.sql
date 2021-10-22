/*Inicio do exercicio um criação do banco de dados e primeira inserção de dados */

CREATE SCHEMA IF NOT EXISTS empresaAvaliacao DEFAULT CHARACTER SET utf8;

USE empresaAvaliacao;

CREATE TABLE IF NOT EXISTS cliente (
	id_cliente INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome_cliente VARCHAR(150) NOT NULL,
    email_cliente VARCHAR(100) NOT NULL,
    cpf_cliente VARCHAR(15) NOT NULL,
    endereco_cliente VARCHAR(200) NOT NULL,
    data_criacao DATE,
    PRIMARY KEY (id_cliente)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS modelo (
	id_modelo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    descricao_modelo VARCHAR(50),
    PRIMARY KEY (id_modelo)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS marca (
	id_marca INT UNSIGNED NOT NULL AUTO_INCREMENT,
    descricao_marca VARCHAR(50),
    PRIMARY KEY (id_marca)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS automovel (
	id_auto INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome_auto VARCHAR(150) NOT NULL,
    id_marca INT UNSIGNED NOT NULL,
    id_modelo INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_auto),
CONSTRAINT fk_id_marca
	FOREIGN KEY (id_marca)
    REFERENCES empresaavaliacao.marca (id_marca)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
CONSTRAINT fk_id_modelo
	FOREIGN KEY (id_modelo)
    REFERENCES empresaavaliacao.modelo (id_modelo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS locacao (
	id_locacao INT UNSIGNED NOT NULL AUTO_INCREMENT,
    km_locacao VARCHAR(25),
    data_locacao DATE,
    id_auto INT UNSIGNED NOT NULL,
    id_cliente INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_locacao),
CONSTRAINT fk_id_auto
	FOREIGN KEY (id_auto)
    REFERENCES empresaavaliacao.automovel (id_auto)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
CONSTRAINT fk_id_cliente
	FOREIGN KEY (id_cliente)
    REFERENCES empresaavaliacao.cliente (id_cliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

INSERT INTO cliente VALUES (NULL, 'Fulano da Silva', 'Fulano@mail.com', '12345677452', 'Rua dos Aflitos, 566', '2018-10-05'),
							(NULL, 'Joseph Climber', 'Climber@ymail.com', '15245252555', 'Rua das Lágrimas, 11', '2018-11-12'),
							(NULL, 'Allan Lee', 'Allan@lee.com', '25651515202', 'Rua da Avaliação, 12', '2019-01-30');

SELECT * FROM cliente;

INSERT INTO modelo VALUES (NULL, 'Corsa'), (NULL, 'Palio'), (NULL, 'Gol');

SELECT * FROM modelo;

INSERT INTO marca VALUES (NULL, 'GM'), (NULL, 'Fiat'), (NULL, 'VW');

SELECT * FROM marca;

INSERT INTO automovel VALUES (NULL, 'Gol 1.8 flex', 3, 3), (NULL, 'Palio Fire', 2, 2), (NULL, 'Corsa Sedan 1.6', 1, 1);

SELECT * FROM automovel;

INSERT INTO locacao VALUES (NULL, '1520', '2019-07-28', 2, 1),
							(NULL, '5821', '2019-08-05', 2, 1),
                            (NULL, '2356', '2019-08-20', 1, 2);
                            
SELECT * FROM locacao;

INSERT INTO cliente VALUES (NULL, 'paje 1', 'paje1@mail.com', '12345677452', 'Rua dos Aflitos, 566', '2018-10-05'),
							(NULL, 'paje 2', 'paje2@ymail.com', '15245252555', 'Rua das Lágrimas, 11', '2018-11-12'),
							(NULL, 'paje 3', 'paje3@lee.com', '25651515202', 'Rua da Avaliação, 12', '2019-01-30'),
                            (NULL, 'paje 4', 'paje4@ymail.com', '15245252555', 'Rua das Lágrimas, 11', '2018-11-12'),
							(NULL, 'paje 5', 'paje5@lee.com', '25651515202', 'Rua da Avaliação, 12', '2019-01-30');
                            
INSERT INTO modelo VALUES (NULL, 'modelo TOP'), (NULL, 'modelo nem tao top'), (NULL, 'modelo quase top'),(NULL, 'modelo pica das galaxias'), (NULL, 'modelo php');
INSERT INTO marca VALUES (NULL, 'GEEME'), (NULL, 'poirje'), (NULL, 'lamburguinhe'),(NULL, 'teslha'), (NULL, 'ferrari');
INSERT INTO automovel VALUES (NULL, 'Gol 1.8 ', 3, 4), (NULL, 'Palio water', 2, 5), (NULL, 'Corsa nem e carro', 1, 2),
								(NULL, 'carrocha', 2, 6), (NULL, 'bicicleta', 1, 1);

INSERT INTO locacao VALUES (NULL, '1520', '2019-07-28', 2, 1),
							(NULL, '5821', '2019-08-05', 2, 1),
                            (NULL, '2356', '2019-08-20', 1, 2),
                            (NULL, '5821', '2019-08-05', 2, 1),
                            (NULL, '2356', '2019-08-20', 1, 2);

SELECT * FROM cliente;

UPDATE empresaavaliacao.cliente SET nome_cliente = 'paje primeiro' WHERE id_cliente = 4;

SELECT * FROM cliente;

DELETE FROM empresaavaliacao.cliente WHERE id_cliente = 5;

SELECT * FROM cliente;


/* fim do primeiro exercicio */

/* INICIO DO SEGUNDO EXERCICIO */

CREATE SCHEMA IF NOT EXISTS `empresa` DEFAULT CHARACTER SET utf8 ;

USE `empresa` ;

CREATE TABLE IF NOT EXISTS `empresa`.`clientes` (

`id` INT NOT NULL AUTO_INCREMENT,

`nome` VARCHAR(45) NOT NULL,

`cpf` VARCHAR(11) NOT NULL,

`valor_total_compras` FLOAT NOT NULL,

PRIMARY KEY (`id`))

ENGINE = InnoDB;

INSERT INTO clientes VALUES (NULL, 'paje 1', '12345677452', 29.90),
							(NULL, 'paje 2', '15245252555', 12.50),
							(NULL, 'paje 3', '25651515202', 89.99),
                            (NULL, 'paje 4', '15245252555', 180.22),
							(NULL, 'paje 5', '25651515202', 66.58);
                            
SELECT * FROM clientes;

UPDATE empresa.clientes SET valor_total_compras = 1780.22 WHERE id = 1;

SELECT * FROM clientes;

DELETE FROM empresa.clientes WHERE id = 5;

SELECT * FROM clientes;