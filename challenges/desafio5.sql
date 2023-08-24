SELECT c.nome_cancao AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.historico_reproducoes h
INNER JOIN SpotifyClone.cancoes c
ON h.id_cancao = c.id_cancao
GROUP BY c.id_cancao
ORDER BY reproducoes DESC, c.nome_cancao
LIMIT 2;