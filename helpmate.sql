-- Criar o banco de dados
CREATE DATABASE helpmate;
USE helpmate;

CREATE TABLE colaboradores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(100) NOT NULL,
    funcao VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(15),
    endereco TEXT
);

CREATE TABLE contatos_emergencia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    colaborador_id INT,
    nome_contato VARCHAR(100) NOT NULL,
    parentesco VARCHAR(50),
    telefone_contato VARCHAR(15),
    endereco_contato TEXT,
    FOREIGN KEY (colaborador_id) REFERENCES colaboradores(id) ON DELETE CASCADE
);
