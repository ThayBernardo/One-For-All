SELECT Nome_Usuario AS usuario,
COUNT(Usuario_id) AS qtde_musicas_ouvidas,
ROUND(SUM(Duracao / 60), 2) AS total_minutos
FROM SpotifyClone.Usuarios AS usr
INNER JOIN SpotifyClone.Reproducoes AS rep
ON usr.id = rep.Usuario_id
INNER JOIN SpotifyClone.Musicas AS mus
ON mus.id = rep.Musica_id
GROUP BY Usuario_id
ORDER BY Nome_Usuario ASC; 