-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT 
	COUNT(*) AS total, 
	(SELECT gender FROM profiles WHERE profiles.user_id = likes.user_id) AS gender 
FROM likes 
GROUP BY gender
ORDER BY total DESC
LIMIT 1;


-- 4. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).

SELECT id FROM target_types WHERE name = 'users';

SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10;

SELECT COUNT(*) AS total 
FROM likes 
WHERE target_id IN (
	SELECT * FROM (
		SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS qwerty
	) AND target_type_id = 2;


-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети


(SELECT COUNT(id) AS total, user_id FROM likes GROUP BY user_id ORDER BY total LIMIT 10)
UNION
(SELECT COUNT(id) AS total, from_user_id FROM messages GROUP BY from_user_id ORDER BY total LIMIT 10);

SELECT id, CONCAT(first_name, ' ', last_name) AS name
FROM users
WHERE id IN (
	SELECT user_id FROM (
		(SELECT COUNT(id) AS total, user_id FROM likes GROUP BY user_id ORDER BY total LIMIT 10)
		UNION
		(SELECT COUNT(id) AS total, from_user_id FROM messages GROUP BY from_user_id ORDER BY total LIMIT 10)) AS qwerty);

-- можно было сделать через знак "+"
