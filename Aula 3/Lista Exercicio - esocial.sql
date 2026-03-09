SELECT
	nome_empregador,
    nome_empregado
FROM
	Empregados e
    JOIN
    Empregadores d ON e.id_empregador=d.id_empregador;
    
/*-------------*/

SELECT
	d.nome_empregador,
    e.nome_empregado,
    e.data_admissao
FROM
	Empregados e
    LEFT JOIN
    Empregadores d ON e.id_empregador=d.id_empregador;

/*-------------*/

SELECT
	d.nome_empregador,
    e.nome_empregado
FROM
	Folhapagamentos f,
	Empregados e
    JOIN
    Empregadores d ON e.id_empregador=d.id_empregador
WHERE e.id_empregado=f.id_empregado;

/*-------------*/

SELECT
	d.nome_empregador,
    e.nome_empregado
FROM
	Empregadores d
    LEFT JOIN
    Empregados e ON d.id_empregador=e.id_empregador;

/*-------------*/

SELECT
	d.nome_empregador,
    e.nome_empregado,
    mes_referencia
FROM
	Folhapagamentos f
    JOIN
    Empregados e ON f.id_empregado=e.id_empregador
    JOIN
    Empregadores d ON e.id_empregador=d.id_empregador;
    
/*-------------*/

SELECT
	nome_empregador,
    nome_empregado,
    cpf_empregado,
    motivo
FROM
	Afastamentos a,
    Empregados e
    JOIN
    Empregadores d ON e.id_empregador=d.id_empregador
WHERE e.id_empregado=a.id_empregado;

/*-------------*/

SELECT
	nome_empregador,
    tipo_acidente	
FROM
	CAT c,
	Empregadores d
	LEFT JOIN
    Empregados e ON e.id_empregador=d.id_empregador
WHERE e.id_empregado=c.id_empregado;

/*-------------*/
    