SELECT artista.artist_name AS artista,
album.album_name AS album 
FROM artist AS artista
INNER JOIN album AS album
ON artista.artist_id = album.artist_id
WHERE artista.artist_name = 'Elis Regina';