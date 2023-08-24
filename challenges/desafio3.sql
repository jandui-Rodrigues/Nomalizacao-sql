 SELECT us.nome_usuario  AS pessoa_usuaria, 
 COUNT(hi.id_usuario) AS musicas_ouvidas,
 ROUND(SUM(ca.duracao_segundos/60), 2) AS total_minutos
 FROM SpotifyClone.historico_reproducoes AS hi
 INNER JOIN SpotifyClone.cancoes AS ca
 ON hi.id_cancao = ca.id_cancao
 INNER JOIN SpotifyClone.usuarios AS us
 ON us.id_usuario = hi.id_usuario
 GROUP BY hi.id_usuario
 ORDER BY us.nome_usuario;