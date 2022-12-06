CREATE TABLE pessoa(
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	ativo BOOLEAN,
	nome VARCHAR(50) NOT NULL,
	logradouro VARCHAR (50),
	numero VARCHAR(4),
	complemento VARCHAR(50),
	bairro VARCHAR(50),
	cep VARCHAR(10),
	cidade VARCHAR(50),
	estado VARCHAR(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado) values ( 'jose', false, 'arthur frantz','915','parque alvorada','79.823-290','dourados','ms');
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado) values ( 'pedro',true, 'arthur frantz','915','parque alvorada','79.823-290','dourados','ms');
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado) values ( 'carlos',true, 'marcelino','22','centro','79.823-292','dourados','ms');
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado) values ( 'joao',true,'marcelino','22','centro','79.823-292','dourados','ms');
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado) values ( 'julia',false, 'marcelino','22','centro','79.823-292','dourados','ms');
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado) values ( 'isabela',true, 'weimar','452','vila formosa','79.823-293','dourados','ms');
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado) values ( 'rosana',false,  'weimar','452','vila formosa','79.823-293','dourados','ms');
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado) values ( 'leticia',true, 'weimar','452','vila formosa','79.823-293','dourados','ms');
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado) values ( 'juliana',true, 'joao pereira','890','novo parque','79.823-295','dourados','ms');
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado) values ( 'ana',false,  'joao pereira','890','novo parque','79.823-295','dourados','ms');