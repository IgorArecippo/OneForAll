SELECT user.user_name AS usuario,
COUNT(historico.song_played) AS qt_de_musicas_ouvidas,
ROUND(SUM(songs.duration) / 60, 2) AS total_minutos
FROM user AS user
INNER JOIN history AS historico
ON user.user_id = historico.user_id
INNER JOIN songs AS songs
ON historico.song_played = songs.song_id
GROUP BY user.user_name
ORDER BY user.user_name;