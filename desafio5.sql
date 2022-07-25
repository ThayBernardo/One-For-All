SELECT Nome_Musica AS cancao,
COUNT(rep.Musica_id) AS reproducoes 
FROM SpotifyClone.Musicas AS mus
INNER JOIN SpotifyClone.Reproducoes AS rep
ON mus.id = rep.Musica_id
GROUP BY Nome_Musica
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;