SELECT user_name AS usuario,
IF (YEAR(MAX(historico.reproduction_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM user AS user
INNER JOIN history AS historico
ON user.user_id = historico.user_id
GROUP BY user.user_name
ORDER BY user.user_name;