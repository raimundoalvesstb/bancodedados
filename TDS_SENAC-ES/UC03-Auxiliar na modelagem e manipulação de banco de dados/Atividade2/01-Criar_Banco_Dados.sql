-- Criar o banco de dados
CREATE DATABASE KartDB;
USE KartDB;

-- Criar a tabela Temporada
CREATE TABLE Temporada (
    idTemporada INT PRIMARY KEY,
    numero INT NOT NULL
);

-- Criar a tabela Etapa
CREATE TABLE Etapa (
    idEtapa INT PRIMARY KEY,
    local VARCHAR(100) NOT NULL,
    data DATE NOT NULL,
    hora VARCHAR(45) NOT NULL,
    Temporada_idTemporada INT,
    FOREIGN KEY (Temporada_idTemporada) REFERENCES Temporada(idTemporada)
);

-- Criar a tabela Patrocinio
CREATE TABLE Patrocinio (
    idPatrocinio INT PRIMARY KEY,
    nomePatrocinio VARCHAR(45) NOT NULL
);

-- Criar a tabela Equipe
CREATE TABLE Equipe (
    idEquipe INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    patrocinio_idPatrocinio INT,
    FOREIGN KEY (patrocinio_idPatrocinio) REFERENCES Patrocinio(idPatrocinio)
);

-- Criar a tabela Piloto
CREATE TABLE Piloto (
    idPiloto INT PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    peso FLOAT NOT NULL,
    capitao TINYINT NOT NULL,
    Equipe_idEquipe INT,
    nacionalidade VARCHAR(45) NOT NULL,
    FOREIGN KEY (Equipe_idEquipe) REFERENCES Equipe(idEquipe)
);

-- Criar a tabela de relacionamento Etapa_has_Piloto
CREATE TABLE Etapa_has_Piloto (
    Etapa_idEtapa INT,
    Piloto_idPiloto INT,
    PRIMARY KEY (Etapa_idEtapa, Piloto_idPiloto),
    FOREIGN KEY (Etapa_idEtapa) REFERENCES Etapa(idEtapa),
    FOREIGN KEY (Piloto_idPiloto) REFERENCES Piloto(idPiloto)
);
