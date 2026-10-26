USE detran_db;

-- a)
SELECT *
FROM VEICULO
WHERE cpf_proprietario = '11122233344';

-- b) 
SELECT * 
FROM PROPRIETARIO 
WHERE nome LIKE '%Si%';

-- c)
SELECT 
    i.id_infracao,
    i.data_hora,
    i.velocidade,
    t.descricao AS tipo_infracao,
    t.valor,
    v.placa,
    v.chassi,
    v.cor_predominante,
    v.ano_fabricacao
FROM INFRACAO i
INNER JOIN VEICULO v ON i.placa_veiculo = v.placa
INNER JOIN TIPO_INFRACAO t ON i.codigo_tipo = t.codigo
WHERE i.data_hora BETWEEN '2026-09-01 00:00:00' AND '2026-09-30 23:59:59';


-- d)
SELECT 
    m.nome AS modelo,
    COUNT(v.placa) AS quantidade_veiculos
FROM MODELO m
LEFT JOIN VEICULO v ON m.codigo = v.modelo
GROUP BY m.codigo, m.nome
ORDER BY quantidade_veiculos DESC;
