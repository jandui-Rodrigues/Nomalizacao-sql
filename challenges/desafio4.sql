SELECT u.nome_usuario AS pessoa_usuaria,
 CASE
 WHEN MAX(YEAR(h.data_reproducao)) < 2021 THEN 'Inativa'
 ELSE 'Ativa'
 END AS status_pessoa_usuaria
FROM SpotifyClone.historico_reproducoes h
INNER JOIN SpotifyClone.usuarios u
ON h.id_usuario = u.id_usuario
GROUP BY u.nome_usuario
ORDER BY u.nome_usuario;