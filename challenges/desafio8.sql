SELECT ar.nome_artista AS artista, al.nome_album AS album FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.albuns al
ON al.id_artista = ar.id_artista
WHERE ar.nome_artista = 'Elis Regina';