 SELECT 
 ROUND(MIN(preco),2) AS faturamento_minimo,
 ROUND(MAX(preco),2) AS faturamento_maximo, 
 ROUND(AVG(preco),2) AS faturamento_medio, 
 SUM(preco) AS faturamento_total
 FROM SpotifyClone.usuarios u
 INNER JOIN SpotifyClone.planos p
 ON u.id_plano = p.id_plano;