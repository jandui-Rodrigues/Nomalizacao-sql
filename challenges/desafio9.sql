SELECT COUNT(*) AS musicas_no_historico FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.historico_reproducoes h
ON u.id_usuario = h.id_usuario
WHERE u.nome_usuario = 'Barbara Liskov';