-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT gender, COUNT(*) AS total
FROM profiles
JOIN likes
ON profiles.user_id = likes.user_id
GROUP BY gender
LIMIT 1;


-- 4. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).

SELECT SUM(total) AS 'Сумма' FROM (
	SELECT COUNT(*) AS total
	FROM likes
	JOIN profiles AS p1
	ON likes.target_id = p1.user_id
	GROUP BY p1.user_id
	ORDER BY TIMESTAMPDIFF(YEAR, p1.birthday, NOW())
	LIMIT 10
) AS summ;

Виктор, я не понял как взять сумму по столбцу COUNT(likes.id) без вложенного запроса. 


-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети

SELECT u.id, u.first_name, u.last_name, COUNT(*) AS total
FROM users AS u
LEFT JOIN likes AS l
ON l.user_id = u.id
LEFT JOIN messages AS mes
ON mes.from_user_id = u.id
GROUP BY u.id
ORDER BY total, u.id
LIMIT 10;


-- по количеству отправленных сообщений

SELECT u.id, u.first_name, u.last_name, COUNT(*) AS total_messages
FROM users AS u
LEFT JOIN messages AS m
ON u.id = m.from_user_id
GROUP by u.id
ORDER BY total_messages, u.id
LIMIT 10;

-- по количеству поставленных лайков

SELECT u.id, u.first_name, u.last_name, COUNT(*) AS total_messages
FROM users AS u
LEFT JOIN likes AS l
ON u.id = l.user_id
GROUP by u.id
ORDER BY total_messages, u.id
LIMIT 10;

