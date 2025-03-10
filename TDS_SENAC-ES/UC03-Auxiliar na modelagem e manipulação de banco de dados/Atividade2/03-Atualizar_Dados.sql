-- Habilitar Update Seguro
SET SQL_SAFE_UPDATES = 0;

-- Atualizar Etapas (Campo Grande → Salvador, Londrina → Goiânia)
UPDATE Etapa SET local = 'Salvador' WHERE local = 'Campo Grande';
UPDATE Etapa SET local = 'Goiânia' WHERE local = 'Londrina';

-- Remover Patrocínio da Equipe Corredores de Aço
UPDATE Equipe SET patrocinio_idPatrocinio = NULL WHERE Nome = 'Corredores de Aço';

-- Restaurar Update Seguro
SET SQL_SAFE_UPDATES = 1;
