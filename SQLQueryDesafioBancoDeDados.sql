--1
SELECT 
	Nome, 
	Ano 
FROM Filmes

--2
SELECT
	Nome,
	Ano,
	Duracao
From Filmes
ORDER BY Ano ASC

--3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
Where Nome = 'De volta para o futuro'

--4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

--5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7
SELECT
	Ano,
	Count(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT
	Id,	
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--9
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT
	Nome,
	Genero
FROM
	FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--11
SELECT
	Nome,
	Genero
FROM
	FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE
	Genero = 'Mistério'

--12
SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM
	ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id