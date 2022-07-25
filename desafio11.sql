SELECT Nome_Musica AS nome_musica,
CASE 
WHEN Nome_Musica LIKE '%Streets'
THEN REPLACE(Nome_Musica, 'Streets', 'Code Review')
WHEN Nome_Musica LIKE '%Her Own'
THEN REPLACE(Nome_Musica, 'Her Own', 'Trybe')
WHEN Nome_Musica LIKE '%Inner Fire'
THEN REPLACE(Nome_Musica, 'Inner Fire', 'Project')
WHEN Nome_Musica LIKE '%Silly'
THEN REPLACE(Nome_Musica, 'Silly', 'Nice')
WHEN Nome_Musica LIKE '%Circus'
THEN REPLACE(Nome_Musica, 'Circus', 'Pull Request')
END AS novo_nome
FROM SpotifyClone.Musicas
WHERE Nome_Musica LIKE '%Streets'
OR Nome_Musica LIKE '%Her Own'
OR Nome_Musica LIKE '%Inner Fire'
OR Nome_Musica LIKE '%Silly'
OR Nome_Musica LIKE '%Circus'
ORDER BY Nome_Musica ASC, novo_nome ASC;