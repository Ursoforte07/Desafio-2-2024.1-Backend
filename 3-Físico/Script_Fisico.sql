CREATE DATABASE IF NOT EXISTS detran_db;
USE detran_db;

CREATE TABLE PROPRIETARIO (
    cpf CHAR(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(150),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado CHAR(2),
    sexo CHAR(1),
    data_nascimento DATE NOT NULL,
	PRIMARY KEY (cpf)
);


CREATE TABLE CATEGORIA (
	nome varchar(30), 
    codigo int(2) ZEROFILL,
    PRIMARY KEY (codigo) 
);

CREATE TABLE MODELO (
	codigo int(6) ZEROFILL,
    nome varchar(50),
    PRIMARY KEY(codigo)
);

CREATE TABLE VEICULO ( 
	placa char(7) NOT NULL,
    chassi varchar(17) NOT NULL,
    cor_predominante varchar(20),
    modelo int(6) ZEROFILL,
	categoria int(2) ZEROFILL,
    ano_fabricacao int,
    cpf_proprietario char(11) NOT NULL,
    PRIMARY KEY (placa),
    FOREIGN KEY (cpf_proprietario) REFERENCES PROPRIETARIO(cpf),
    FOREIGN KEY (modelo) REFERENCES MODELO(codigo),
    FOREIGN KEY (categoria) REFERENCES CATEGORIA(codigo)
);


CREATE TABLE _LOCAL (
	id_local INT AUTO_INCREMENT,
    latitude DECIMAL(10, 8) NOT NULL, 
    longitude DECIMAL(11, 8) NOT NULL,
    velocidade_permitida int,
    PRIMARY KEY (id_local)
);

CREATE TABLE AGENTE (
	matricula int NOT NULL, 
    nome varchar(100) NOT NULL,
    _data DATE NOT NULL,
    PRIMARY KEY (matricula)
);

CREATE TABLE TIPO_INFRACAO (
	codigo int NOT NULL,
    descricao varchar(150) NOT NULL,
	valor DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE INFRACAO (
	id_infracao int NOT NULL,
    data_hora datetime NOT NULL,
	velocidade int,
    
    placa_veiculo char(7) NOT NULL,
	codigo_tipo int NOT NULL,
    id_local INT NOT NULL,
    matricula int NOT NULL, 
    
    PRIMARY KEY (id_infracao),
    FOREIGN KEY (placa_veiculo) REFERENCES VEICULO(placa),
    FOREIGN KEY (codigo_tipo) REFERENCES TIPO_INFRACAO(codigo),
    FOREIGN KEY (id_local) REFERENCES _LOCAL(id_local),
    FOREIGN KEY (matricula) REFERENCES AGENTE(matricula)
);