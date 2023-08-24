SELECT 
   COUNT(DISTINCT c.id_cancao) AS cancoes, 
   COUNT(DISTINCT ar.id_artista) AS artistas,
   COUNT(DISTINCT al.id_album) AS albuns
FROM SpotifyClone.cancoes c
 INNER JOIN SpotifyClone.albuns al
 ON al.id_album = c.id_album
 INNER JOIN SpotifyClone.artistas ar
 ON ar.id_artista = al.id_artista;
 