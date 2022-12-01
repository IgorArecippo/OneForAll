SELECT (COUNT(*) + 2) AS cancoes,
COUNT(DISTINCT artist_id) AS artistas,
COUNT(album_id) AS albuns
FROM album;