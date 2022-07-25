SELECT COUNT(DISTINCT(mus.Nome_Musica)) AS cancoes,
COUNT(DISTINCT(art.Nome_Artista)) AS artistas,
COUNT(DISTINCT(alb.Nome_Album)) AS albuns 
FROM SpotifyClone.Musicas AS mus
INNER JOIN SpotifyClone.Artistas AS art
INNER JOIN SpotifyClone.Albuns AS alb;