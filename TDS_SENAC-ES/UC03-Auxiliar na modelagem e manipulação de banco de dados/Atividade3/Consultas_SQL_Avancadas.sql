-- Seleciona todos os usuários cadastrados após 01 de março de 2023
SELECT * FROM Usuario WHERE data_cadastro > '2023-03-01';

-- Seleciona todos os jogos com preço superior a 100.00
SELECT * FROM Jogo WHERE preco > 100.00;

-- Encontra todas as desenvolvedoras que foram fundadas depois do ano 2000
SELECT * FROM Desenvolvedora WHERE ano_fundacao > 2000;

-- Lista todos os jogos da desenvolvedora "Valve Corporation"
SELECT Jogo.* 
FROM Jogo 
JOIN Desenvolvedora ON Jogo.id_desenvolvedora = Desenvolvedora.id 
WHERE Desenvolvedora.nome = 'Valve Corporation';

-- Calcula o preço médio dos jogos na plataforma
SELECT AVG(preco) AS preco_medio FROM Jogo;

-- Calcula o preço total dos jogos comprados pelo usuário "Carlos Silva"
SELECT SUM(Jogo.preco) AS total_gasto 
FROM Biblioteca 
JOIN Usuario ON Biblioteca.id_usuario = Usuario.id 
JOIN Jogo ON Biblioteca.id_jogo = Jogo.id 
WHERE Usuario.nome = 'Carlos Silva';

-- Encontra o jogo mais caro da desenvolvedora "Rockstar Games"
SELECT * 
FROM Jogo 
JOIN Desenvolvedora ON Jogo.id_desenvolvedora = Desenvolvedora.id 
WHERE Desenvolvedora.nome = 'Rockstar Games' 
ORDER BY Jogo.preco DESC 
LIMIT 1;

-- Lista todos os jogos na categoria "RPG"
SELECT Jogo.* 
FROM Jogo 
JOIN JogoCategoria ON Jogo.id = JogoCategoria.id_jogo 
JOIN Categoria ON JogoCategoria.id_categoria = Categoria.id 
WHERE Categoria.nome = 'RPG';

-- Lista todos os usuários e os jogos que eles possuem na biblioteca
SELECT Usuario.nome AS usuario, Jogo.titulo AS jogo 
FROM Biblioteca 
JOIN Usuario ON Biblioteca.id_usuario = Usuario.id 
JOIN Jogo ON Biblioteca.id_jogo = Jogo.id 
ORDER BY Usuario.nome;

-- Encontra o número total de jogos na plataforma desenvolvidos por estúdios dos EUA
SELECT COUNT(*) AS total_jogos 
FROM Jogo 
JOIN Desenvolvedora ON Jogo.id_desenvolvedora = Desenvolvedora.id 
WHERE Desenvolvedora.pais = 'EUA';