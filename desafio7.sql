SELECT artist.artist_name AS artista,
album.album_name AS album,
COUNT(following.artist_id) AS seguidores
FROM artist AS artist
INNER JOIN album AS album
ON artist.artist_id = album.artist_id
INNER JOIN following AS following
ON artist.artist_id = following.artist_id
GROUP BY artist_name, album.album_name
ORDER BY seguidores DESC, artist_name, album_name;