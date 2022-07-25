SELECT Nome_Artista AS artista,
Nome_Album AS album,
COUNT(seg.Artista_id) AS seguidores
FROM SpotifyClone.Artistas AS art
INNER JOIN SpotifyClone.Albuns AS alb
ON art.id = alb.Artista_id
INNER JOIN SpotifyClone.Seguidores AS seg
ON art.id = seg.Artista_id
GROUP BY seg.Artista_id, Nome_Album
ORDER BY seguidores DESC, artista ASC, album ASC;