SELECT Nome_Artista AS artista,
Nome_Album AS album
FROM SpotifyClone.Artistas AS art
INNER JOIN SpotifyClone.Albuns AS alb
ON art.id = alb.Artista_id
WHERE Nome_Artista = "Walter Phoenix"
ORDER BY Nome_Album;