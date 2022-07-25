SELECT MIN(Valor) AS faturamento_minimo,
MAX(Valor) AS faturamento_maximo,
ROUND(AVG(Valor), 2) AS faturamento_medio,
SUM(Valor) AS faturamento_total
FROM SpotifyClone.Planos AS pla
INNER JOIN SpotifyClone.Usuarios AS usr
ON usr.Plano_id = pla.id;