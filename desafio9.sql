SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.Reproducoes AS rep
INNER JOIN SpotifyClone.Usuarios AS usr
ON usr.id = rep.Usuario_id
WHERE usr.Nome_Usuario = "Bill";