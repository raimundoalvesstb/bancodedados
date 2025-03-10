-- Inserir Temporada
INSERT INTO Temporada (idTemporada, numero) VALUES (1, 1);

-- Inserir Etapas
INSERT INTO Etapa (idEtapa, local, data, hora, Temporada_idTemporada) VALUES
(1, 'São Paulo', '2024-01-15', '14:00', 1),
(2, 'Rio de Janeiro', '2024-02-20', '16:00', 1),
(3, 'Campo Grande', '2024-03-18', '15:00', 1),
(4, 'Londrina', '2024-04-22', '13:00', 1),
(5, 'Porto Alegre', '2024-05-10', '10:00', 1);

-- Inserir Patrocínios
INSERT INTO Patrocinio (idPatrocinio, nomePatrocinio) VALUES
(1, 'MotorTech Brasil'),
(2, 'Velocidade Extrema'),
(3, 'Alta Performance'),
(4, 'Turbo Racing'),
(5, 'Pneus ProDrive');

-- Inserir Equipes
INSERT INTO Equipe (idEquipe, Nome, patrocinio_idPatrocinio) VALUES
(1, 'Escuderia Veloz', 1),
(2, 'Rápidos & Furiosos', 2),
(3, 'Fênix Racing', 3),
(4, 'Equipe Tempestade', 4),
(5, 'Corredores de Aço', 5);

-- Inserir Pilotos
INSERT INTO Piloto (idPiloto, Nome, peso, capitao, Equipe_idEquipe, nacionalidade) VALUES
(1, 'Lucas Andrade', 70.5, 1, 1, 'Brasil'),
(2, 'Renato Figueiredo', 75, 0, 1, 'Brasil'),
(3, 'Mateus Silva', 68, 0, 2, 'Brasil'),
(4, 'Bruno Almeida', 78.3, 1, 2, 'Brasil'),
(5, 'Carla Pereira', 60, 1, 3, 'Portugal'),
(6, 'Gabriela Torres', 58.5, 0, 3, 'Brasil'),
(7, 'João Costa', 80.5, 0, 4, 'Brasil'),
(8, 'Thiago Santos', 72.5, 0, 4, 'Brasil'),
(9, 'Mariana Gomes', 62, 1, 5, 'Portugal'),
(10, 'Beatriz Lopes', 63.2, 1, 5, 'Portugal');

-- Inserir Pilotos nas Etapas
INSERT INTO Etapa_has_Piloto (Etapa_idEtapa, Piloto_idPiloto) VALUES
(1, 1), (1, 3), (1, 5), (1, 7), (1, 9), (1, 2), (1, 4), (1, 6), (1, 8), (1, 10);
