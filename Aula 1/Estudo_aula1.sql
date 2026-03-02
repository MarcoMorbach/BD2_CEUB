SELECT * FROM tb_regioes;

SELECT nome FROM tb_regioes;

SELECT * FROM tb_estados;

SELECT nome,sigla FROM tb_estados;

SELECT id FROM tb_regioes;

/* SELECT COM O WHERE */

SELECT *
FROM tb_regioes
WHERE nome = 'Sul';

SELECT nome
FROM tb_regioes
WHERE id >= 3;

SELECT *
FROM tb_regioes
WHERE id = 3;

SELECT nome, sigla
FROM tb_estados
WHERE id < 24;

SELECT *
FROM tb_estados
WHERE id_regiao = 4
OR id_regiao = 5;

SELECT nome
FROM tb_estados
WHERE id_regiao = 2
AND sigla = 'AL';

SELECT nome
FROM tb_estados
WHERE id_regiao = 2
AND sigla = 'AL'
OR sigla = 'CE'
OR sigla = 'PB';

SELECT nome
FROM tb_estados
WHERE id_regiao <> 2
AND sigla = 'DF';

SELECT nome
FROM tb_estados
ORDER BY nome ASC;

SELECT nome
FROM tb_estados
ORDER BY nome DESC;

SELECT nome, sigla, id_regiao
FROM tb_estados
ORDER BY id_regiao, nome ASC;

SELECT nome
FROM tb_estados
WHERE nome LIKE '%rio%';

SELECT nome
FROM tb_estados
WHERE nome LIKE 'a%'
ORDER BY nome ASC;

SELECT nome, sigla
FROM tb_estados
WHERE nome LIKE '%a';

SELECT nome,sigla
FROM tb_estados
WHERE nome LIKE '____';

SELECT nome
FROM tb_estados
WHERE sigla IN ( 'DF','TO','AC','AL','PB','PA','PR');

SELECT nome
FROM tb_estados
WHERE nome LIKE 'a%'
AND sigla <> 'AL';

SELECT nome,sigla
FROM tb_estados
WHERE id NOT IN ( 11, 12);

SELECT nome, id_regiao
FROM tb_estados
WHERE id_regiao BETWEEN 2 AND 4;

UPDATE tb_regioes
SET sigla = 'BB'
WHERE nome = 'Centro-Oeste';

SELECT *
FROM tb_regioes
WHERE nome = 'Centro-Oeste';

UPDATE tb_regioes
SET sigla = 'BB';

SELECT*
FROM tb_regioes;

DELETE FROM tb_estados
WHERE nome = 'Amazonas';

SELECT * FROM tb_estados;

DELETE FROM tb_regioes
WHERE nome = 'Norte';
/* NAO PODE APAGAR POIS POSSUI UMA CHAVE ESTRANGEIRA*/

SELECT COUNT(nome) FROM tb_estados;
SELECT COUNT(nome) FROM tb_regioes;
