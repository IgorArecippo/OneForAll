SELECT MIN(subscription.rate) AS faturamento_minimo,
MAX(subscription.rate) AS faturamento_maximo,
ROUND(AVG(subscription.rate), 2) AS faturamento_medio,
SUM(subscription.rate) AS faturamento_total
FROM subscription AS subscription
INNER JOIN user AS user
ON user.subscription_id = subscription.subscription_id;