SELECT song_name AS cancao,
COUNT(historico.song_played) AS reproducoes
FROM songs AS songs
INNER JOIN history AS historico
ON songs.song_id = historico.song_played
GROUP BY songs.song_name
ORDER BY reproducoes DESC, songs.song_name
LIMIT 2;
