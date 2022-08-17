SELECT Nome_Musica AS nome,
COUNT(rep.Musica_id) AS reproducoes
FROM SpotifyClone.Musicas AS mus
INNER JOIN SpotifyClone.Reproducoes AS rep
ON mus.id = rep.Musica_id
INNER JOIN SpotifyClone.Usuarios AS usr
ON usr.id = rep.Usuario_id
INNER JOIN SpotifyClone.Planos AS pla
ON usr.Plano_id = pla.id
WHERE pla.id = 1 OR pla.id = 4
GROUP BY Musica_id, Nome_Musica
ORDER BY Nome_Musica;