-- 1
ALTER VIEW vw_pacientes_emails AS
SELECT
	p.nome,
    p.email
FROM 
	pacientes p
WHERE p.email IS  NOT NULL
ORDER BY p.nome;
    
SELECT * FROM vw_pacientes_emails;

-- 2
CREATE VIEW vw_leitos AS
SELECT
	l.numero_quarto,
    l.tipo
FROM
	Leitos l
ORDER BY numero_quarto;

SELECT * FROM vw_leitos;


-- 3
CREATE VIEW vw_reservas_completas AS
SELECT
	p.nome,
    l.numero_quarto,
    l.tipo,
    r.data_reserva
FROM
	Reservas r 
    JOIN
    Pacientes p ON p.id_paciente=r.id_paciente
    JOIN
    Leitos l ON l.id_leito=r.id_leito;
    
SELECT * FROM vw_reservas_completas;

-- 4
CREATE VIEW vw_reservas_por_tipo AS
SELECT
	l.tipo,
    COUNT(r.id_reserva) 
FROM
	Reservas r
    JOIN
    Leitos l ON l.id_leito=r.id_leito
GROUP BY l.tipo;

SELECT * FROM vw_reservas_por_tipo;

-- 5
ALTER VIEW vw_leitos_populares AS
SELECT
	l.id_leito,
    COUNT(r.id_leito) as qtd_reservas
FROM
	Leitos l 
    JOIN
    Reservas r ON r.id_leito=l.id_leito
GROUP BY l.id_leito
ORDER BY r.id_leito DESC;
    
SELECT * FROM vw_leitos_populares;

-- 6 TERMINAR
ALTER VIEW vw_pacientes_pediatricos AS
SELECT
	p.nome,
    r.data_reserva
FROM
	Leitos l,
    Pacientes p
    JOIN
    Reservas r ON r.id_paciente=p.id_paciente
WHERE l.tipo = 'Pediátrico'
GROUP BY r.data_reserva;

SELECT * FROM vw_pacientes_pediatricos;

-- 7