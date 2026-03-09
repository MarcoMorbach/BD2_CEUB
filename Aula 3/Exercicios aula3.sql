USE db_company;

SELECT
	e.matricula,
    e.nome,
    c.nm_cargo as cargo,
    c.salario
FROM
	tb_empregado e
    JOIN
    tb_cargo c ON fk_cargo=id_cargo;
    
SELECT
	e.nome,
    d.nm_departamento as departamento
FROM
	tb_empregado e
    INNER JOIN
    tb_departamento d ON fk_departamento=id_departamento
ORDER BY nome;

/*-------------*/

SELECT
	d.nm_departamento as departamento,
    e.nome as empregado
FROM
	tb_departamento d
    LEFT JOIN
	tb_empregado e ON id_departamento=fk_departamento;

SELECT
	matricula,
    nome,
	nm_departamento
FROM
	tb_departamento
    LEFT JOIN
    tb_empregado ON fk_departamento=id_departamento
WHERE fk_departamento IS NULL;
    
/*-------------*/

SELECT
	nome as empregado,
	nm_departamento as departamento
FROM
	tb_empregado
    RIGHT JOIN
    tb_departamento  ON fk_departamento=id_departamento;
    
SELECT
	matricula,
    nome,
	nm_departamento
FROM
	tb_empregado
    RIGHT JOIN
    tb_departamento ON fk_departamento=id_departamento
WHERE fk_departamento IS NULL;
    
/*-------------*/

