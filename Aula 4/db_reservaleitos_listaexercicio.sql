-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS ReservaLeitosHospital;
USE ReservaLeitosHospital;

-- Tabela de Pacientes
CREATE TABLE Pacientes (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(100) 
);

-- Tabela de Leitos
CREATE TABLE Leitos (
    id_leito INT PRIMARY KEY AUTO_INCREMENT,
    numero_quarto INT NOT NULL,
    tipo VARCHAR(50) -- Ex: UTI, Enfermaria, etc.
);

-- Tabela de Reservas
CREATE TABLE Reservas (
    id_reserva INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    id_leito INT,
    data_reserva DATE,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente),
    FOREIGN KEY (id_leito) REFERENCES Leitos(id_leito)
);


-- Inserção de dados de exemplo
INSERT INTO Pacientes (nome, data_nascimento, email) VALUES
    ('Ana Silva', '1990-05-15', 'ana.silva@email.com'),
    ('Bruno Pereira', '1985-10-23', 'bruno.pereira@email.com'),
    ('Carla Rodrigues', '2000-02-01', 'carla.rodrigues@email.com'),
    ('Mariana Souza', '1988-07-21', 'mariana.souza@email.com'), 
    ('Rafael Almeida', '1995-03-10', 'rafael.almeida@email.com'), 
    ('Juliana Castro', '1982-11-05', 'juliana.castro@email.com'), 
    ('Gustavo Lima', '2001-09-18', 'gustavo.lima@email.com'), 
    ('Beatriz Nunes', '1979-06-30', 'beatriz.nunes@email.com');

INSERT INTO Pacientes (nome, data_nascimento) VALUES
    ('Fulano de Tal', '1975-09-18'), 
    ('Beltrano de Tal', '1982-06-30');

INSERT INTO Leitos (numero_quarto, tipo) VALUES
    (101, 'Enfermaria'),
    (102, 'UTI'),
    (201, 'Enfermaria'),
    (202, 'UTI'), 
    (301, 'Enfermaria'), 
    (302, 'UTI'), 
    (401, 'Pediátrico'), 
    (402, 'Pediátrico');

INSERT INTO Reservas (id_paciente, id_leito, data_reserva) VALUES
    (1, 7, '2023-11-01'),
    (2, 2, '2023-11-05'),
    (3, 2, '2023-11-10'),
    (4, 2, '2023-11-15'), 
    (5, 5, '2023-11-20'), 
    (6, 7, '2023-11-25'), 
    (7, 7, '2023-11-30'), 
    (8, 8, '2023-12-01');
