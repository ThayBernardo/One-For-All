SELECT Nome_Usuario AS usuario,
CASE 
WHEN MAX(YEAR(rep.Data_Reproducao)) >= "2021"
THEN 'Usuário ativo'
ELSE 'Usuário inativo'
END AS condicao_usuario
FROM SpotifyClone.Reproducoes AS rep
INNER JOIN SpotifyClone.Usuarios AS usr
ON rep.Usuario_id = usr.id
GROUP BY Nome_Usuario
ORDER BY Nome_Usuario;