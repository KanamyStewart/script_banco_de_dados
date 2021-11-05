USE qtgostoso;
INSERT INTO qtgostoso.menu (menu, descricao, ativo) VALUES ("Ceia", "Deliciosas ceias de natal", 1),
							("Churrascos", "Deliciosas receitas para seu churrasco", 1),("Almoços", "Deliciosas receitas para seu almoço", 1),
                            ("Jantar", "Deliciosas receitas de jantares", 1),("Fastfood", "Lanchinhos rapidos", 1),
                            ("Cafés da manha", "Cafézinhos gostosos", 1),("Café da tarde", "Café da tarde com bolinhos", 1),
                            ("Bolos", "Deliciosas receitas de bolo", 1),("Massas", "Deliciosas receitas de massas", 1),
                            ("Carnes", "Os cortes mais deliciosos do Brasil", 1);

SELECT * FROM menu;

INSERT INTO qtgostoso.medida (medida, abreviacao, ativo) VALUES ("Lata", "1/2", 1),
							("Xicara", "1/2", 1),("Colher", "1", 1),
                            ("Litragem", "1L", 1),("Peso", "1KG", 1),
                            ("Gramas", "100G", 1),("Tampas", "1/2", 1),
                            ("Pacote", "1Pacote", 1),("A gosto", "a gosto", 1),
                            ("Garrafa", "2L", 1);

SELECT * FROM medida;
                            
INSERT INTO qtgostoso.categoria (categoria,ativo) 
	VALUES ("Carnes",1),("Sobremesa",1),("Grãos",1),("Massas",1),("Doces",1),("Saladas",1),
			("Frutos do mar",1),("Sanduiches",1),("Bolos",1),("Tortas",1),("Salgadinhos",1);
            
UPDATE qtgostoso.categoria SET categoria = 'Picantes' WHERE idcategoria = 12;
UPDATE qtgostoso.categoria SET categoria = 'Branch' WHERE idcategoria = 13;
UPDATE qtgostoso.categoria SET categoria = 'Aves' WHERE idcategoria = 14;
UPDATE qtgostoso.categoria SET categoria = 'Refrescante' WHERE idcategoria = 15;
UPDATE qtgostoso.categoria SET categoria = 'Veganas' WHERE idcategoria = 16;
UPDATE qtgostoso.categoria SET categoria = 'Gordurosas' WHERE idcategoria = 17;
UPDATE qtgostoso.categoria SET categoria = 'Peixes de agua doce' WHERE idcategoria = 18;
UPDATE qtgostoso.categoria SET categoria = 'Peixes de agua salgada' WHERE idcategoria = 19;
UPDATE qtgostoso.categoria SET categoria = 'Lanchinhos rapidos' WHERE idcategoria = 20;
UPDATE qtgostoso.categoria SET categoria = 'Carnes suculentas' WHERE idcategoria = 21;
UPDATE qtgostoso.categoria SET categoria = 'Jantares romanticos' WHERE idcategoria = 22;
            
SELECT * FROM categoria;

INSERT INTO refeicao VALUES (1,"Café da manhã",1),(2,"Almoço",1),(3,"Jantar",1),(4,"Ceia",1),(5,"Café da tarde",1),(6,"Lanche",1);

SELECT * FROM refeicao;

INSERT INTO dificuldade VALUES (1,"Fácil",1),(2,"Moderado",1),(3,"Dificil",1),(4,"Master Chef",1);

SELECT * FROM dificuldade;

INSERT INTO cozinha VALUES (NULL,'americana',1),(NULL,'portuguesa',1),(NULL,'brasileira',1),
							(NULL,'coreana',1),(NULL,'italiana',1),(NULL,'africana',1),
                            (NULL,'chilena',1),(NULL,'mexicana',1);
                            
SELECT * FROM cozinha;

INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Dolares", "dolores@domain.com", SHA2("senha123",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("João", "joa@domain.com", SHA2("md5123456",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Eduardo", "eduardo@domain.com", SHA2("edu123456",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Kanamy", "Kanamy@domain.com", SHA2("545454123",256), 1, MD5(RAND()), UUID());

INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Maria", "maria@domain.com", SHA2("passarinho123",256), 1, MD5(RAND()), UUID());

INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Jose", "jose@domain.com", SHA2("jose123",256), 1, MD5(RAND()), UUID());

INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Rafael", "rafa@domain.com", SHA2("rafa8787",256), 1, MD5(RAND()), UUID());

INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Isadora", "isa@domain.com", SHA2("isa123",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Jussara", "ju@domain.com", SHA2("juju123",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Kaeyshin", "jaca@domain.com", SHA2("2154123",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Jessica", "jacaboujessica@domain.com", SHA2("4444123",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Nathan", "naty@domain.com", SHA2("naty6969",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Jandrei", "jaja@domain.com", SHA2("jaja123",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Maicon", "maicon@domain.com", SHA2("mai123",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Jeferson", "jeje@domain.com", SHA2("25455123",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Helton", "heltinho@domain.com", SHA2("hehe123",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Felipe", "fefe@domain.com", SHA2("fefe123",256), 1, MD5(RAND()), UUID());
        
INSERT INTO qtgostoso.usuario (nome, email, senha, ativo, salt, UUID)
		VALUES ("Gustavo", "gutinho@domain.com", SHA2("gugu123",256), 1, MD5(RAND()), UUID());
        
SELECT * FROM usuario;
        
INSERT INTO receita VALUES (4, "imagem1", "feijoada", 1,1, LOAD_FILE('c:/feijoada.jpg'),1);