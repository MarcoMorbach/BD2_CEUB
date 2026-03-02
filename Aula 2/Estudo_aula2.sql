SELECT 
	COUNT(*) AS contagem 
FROM tb_empregado;

SELECT 
	SUM(salario) AS soma_salario
FROM tb_cargo;

SELECT 
	MAX(salario) AS salario_MAX
FROM tb_cargo;

SELECT 
	MIN(salario) AS salario_MIN
FROM tb_cargo;

SELECT 
	ROUND (AVG(salario),2) AS salario_medio
FROM tb_cargo;

/*---------------*/

SELECT	
	d.nm_departamento, count(e.matricula) AS quantidade_departamento
FROM tb_empregado e
	JOIN tb_departamento d
    ON e.fk_departamento=d.id_departamento
group by nm_departamento;

/*---------------*/

SELECT
	d.nm_departamento, 
    round(AVG(c.salario),2) AS salario_medio
FROM
	tb_empregado e
	JOIN tb_cargo c
    ON e.fk_cargo=c.id_cargo
    JOIN tb_departamento d
    ON e.fk_departamento=d.id_departamento
GROUP BY d.nm_departamento
HAVING AVG (c.salario) > 5000;

/*---------------*/

SELECT 
	d.nm_departamento, round(AVG(c.salario),2) AS salario_medio
FROM
	tb_empregado e
    JOIN tb_cargo c
    ON e.fk_cargo=c.id_cargo
    JOIN tb_departamento d
    ON e.fk_departamento=d.id_departamento
WHERE
	c.nm_cargo <> 'Estagiário'
GROUP BY d.nm_departamento
HAVING AVG(c.salario) > 6000;

/*---------------*/

SELECT e.nome,
	(SELECT c.salario
     FROM tb_cargo c
     WHERE e.fk_cargo=c.id_cargo) AS salario
FROM tb_empregado e;

/*---------------*/
SELECT
	e.nome, c.salario AS salario
FROM
	tb_empregado e
    JOIN tb_cargo c
    ON e.fk_cargo=c.id_cargo;

/*---------------*/
SELECT nome, fk_cargo, fk_departamento
FROM tb_empregado
WHERE fk_cargo IN(
	SELECT id_cargo
	FROM tb_cargo
    WHERE salario > (SELECT AVG(salario) FROM tb_cargo));
    
