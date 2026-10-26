USE detran_db;

INSERT INTO CATEGORIA (codigo, nome) VALUES
(01, 'AUTOMÓVEL'),
(02, 'MOTOCICLETA'),
(03, 'CAMINHÃO'),
(04, 'ÔNIBUS'),
(05, 'UTILITÁRIO');

INSERT INTO MODELO (codigo, nome) VALUES
(000001, 'GOL 1.8'),
(000002, 'UNO CS'),
(000003, 'COROLLA XEI'),
(000004, 'CIVIC LX'),
(000005, 'ONIX 1.0');

INSERT INTO PROPRIETARIO (cpf, nome, endereco, bairro, cidade, estado, sexo, data_nascimento) VALUES
('11122233344', 'Carlos Eduardo Silva', 'Rua das Flores 10', 'Asa Sul', 'Brasília', 'DF', 'M', '1985-04-12'),
('22233344455', 'Maria Aparecida Santos', 'Av. Central 500', 'Taguatinga', 'Taguatinga', 'DF', 'F', '1990-08-25'),
('33344455566', 'João Pedro Ferreira', 'Quadra 102 Bloco B', 'Sudoeste', 'Brasília', 'DF', 'M', '1978-11-03'),
('44455566677', 'Ana Paula Oliveira', 'Rua 30 Norte Lote 5', 'Águas Claras', 'Águas Claras', 'DF', 'F', '1995-01-30'),
('55566677788', 'Lucas Souza Lima', 'Rua das Palmeiras 12', 'Ceilândia', 'Ceilândia', 'DF', 'M', '2001-06-18');

INSERT INTO _LOCAL (latitude, longitude, velocidade_permitida) VALUES
(-15.79388888, -47.88277778, 60),
(-15.82611111, -47.92138889, 80),
(-15.83444444, -48.05611111, 50),
(-15.80111111, -47.89222222, 70),
(-15.81555555, -48.01250000, 40);

INSERT INTO AGENTE (matricula, nome, _data) VALUES
(1001, 'Roberto Alves', '2015-03-10'),
(1002, 'Fernanda Lima', '2018-07-01'),
(1003, 'Ricardo Mendes', '2020-01-15'),
(1004, 'Patricia Rocha', '2012-11-20'),
(1005, 'Marcelo Ribeiro', '2022-05-02');

INSERT INTO TIPO_INFRACAO (codigo, descricao, valor) VALUES
(1, 'AVANÇO DE SINAL VERMELHO', 293.47),
(2, 'EXCESSO DE VELOCIDADE ATE 20%', 130.16),
(3, 'PARADA SOBRE A FAIXA DE PEDESTRES', 195.23),
(4, 'USO DE CELULAR AO DIRIGIR', 293.47),
(5, 'ESTACIONAR EM LOCAL PROIBIDO', 130.16);

INSERT INTO VEICULO (placa, chassi, cor_predominante, modelo, categoria, ano_fabricacao, cpf_proprietario) VALUES
('ABC1D23', '9BWZZZ377VT001001', 'Prata', 000001, 01, 2018, '11122233344'),
('DEF2E34', '9BWZZZ377VT001002', 'Preto', 000002, 01, 2015, '11122233344'),
('GHI3F45', '9BWZZZ377VT001003', 'Branco', 000003, 01, 2021, '22233344455'),
('JKL4G56', '9BWZZZ377VT001004', 'Vermelho', 000004, 01, 2020, '33344455566'),
('MNO5H67', '9BWZZZ377VT001005', 'Cinza', 000005, 01, 2022, '44455566677');

INSERT INTO INFRACAO (id_infracao, data_hora, velocidade, placa_veiculo, codigo_tipo, id_local, matricula) VALUES
(1, '2026-09-01 10:30:00', 85, 'ABC1D23', 2, 1, 1001),
(2, '2026-09-05 14:15:00', NULL, 'DEF2E34', 1, 2, 1002),
(3, '2026-09-10 08:45:00', NULL, 'GHI3F45', 3, 3, 1003),
(4, '2026-10-02 18:20:00', NULL, 'JKL4G56', 4, 4, 1004),
(5, '2026-10-15 11:00:00', 65, 'MNO5H67', 2, 5, 1005);