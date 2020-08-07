USE vk;

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Тип сущности, которую лайкают',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки'
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на пользователя, который поставил лайк',
  target_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на экземпляр сущности, который лайкнули',
  target_type_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на тип сущности',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки'
);

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

-- Создадим таблицу постов
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  user_id INT UNSIGNED NOT NULL COMMENT 'ССылка на автора поста',
  community_id INT UNSIGNED COMMENT 'Привязка поста при необходимости к некоторой группе',
  head VARCHAR(255) COMMENT 'Заголовок поста',
  body TEXT NOT NULL COMMENT 'Тело/текст поста',
  media_id INT UNSIGNED COMMENT 'Ссылка на прикрепляемый к посту медиаконтент',
  is_public BOOLEAN DEFAULT TRUE COMMENT 'Является ли пост публичным',
  is_archived BOOLEAN DEFAULT FALSE COMMENT 'Является ли пост заархивированным',
  views_COUNTer INT UNSIGNED DEFAULT 0 COMMENT 'Количество просмотров каждого поста',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
);

SHOW TABLES;

DESC profiles;

ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	ADD CONSTRAINT profiles_photo_id_fk FOREIGN KEY (photo_id) REFERENCES media(id) ON DELETE SET NULL;

DESC messages;

ALTER TABLE messages
	ADD CONSTRAINT messages_from_user_id_fk FOREIGN KEY (from_user_id) REFERENCES users(id) ON DELETE NO ACTION,
	ADD CONSTRAINT messages_to_user_id_fk FOREIGN KEY (to_user_id) REFERENCES users(id) ON DELETE NO ACTION;

DESC media_types;
DESC media;

ALTER TABLE media
	ADD CONSTRAINT media_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	ADD CONSTRAINT media_media_type_id_fk FOREIGN KEY (media_type_id) REFERENCES media_types(id) ON DELETE NO ACTION;

DESC friendship_statuses;
DESC friendship;

ALTER TABLE friendship
	ADD CONSTRAINT friendship_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	ADD CONSTRAINT friendship_friend_id_fk FOREIGN KEY (friend_id) REFERENCES users(id) ON DELETE CASCADE,
	ADD CONSTRAINT friendship_status_id_fk FOREIGN KEY (status_id) REFERENCES friendship_statuses(id) ON DELETE NO ACTION;

DESC communities_users;

ALTER TABLE communities_users
	ADD CONSTRAINT communities_users_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE NO ACTION,
	ADD CONSTRAINT communities_users_community_id_fk FOREIGN KEY (community_id) REFERENCES communities(id) ON DELETE NO ACTION;

DESC posts;

ALTER TABLE posts
	ADD CONSTRAINT posts_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE NO ACTION,
	ADD CONSTRAINT posts_media_id_fk FOREIGN KEY (media_id) REFERENCES media(id) ON DELETE SET NULL;

DESC likes;
SELECT * FROM likes;
DESC target_types;

ALTER TABLE likes
	ADD CONSTRAINT likes_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE NO ACTION,
	ADD CONSTRAINT likes_target_type_id_fk FOREIGN KEY (target_type_id) REFERENCES target_types(id) ON DELETE NO ACTION;
	

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT (SELECT COUNT(id) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'm')) - 
(SELECT COUNT(id) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'f')) AS difference;
 
У меня не получилось построить конструкцию IF THEN ELSE END IF. Объясните, пожалуйста, ветвление в mysql.


-- 4. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).


SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10;

SELECT id FROM likes WHERE user_id IN (SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10);

SELECT COUNT(id) FROM likes WHERE target_id IN (SELECT user_id FROM media WHERE user_id IN
(SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10));


Добрый день, Виктор!
Если я мспользую в запросе IN, то выдаёт ошибку:
"SQL Error [1235] [42000]: This version of MySQL doesn't yet support 'LIMIT & IN/ALL/ANY/SOME subquery'"
хотя на стэковерфлоу подобные выражения, содержащие "IN" и "LIMIT" вовсю используют. Я не понимаю, какая аерсия программы нужна.
У меня стоит "mysql  Ver 8.0.21-0ubuntu0.20.04.4 for Linux on x86_64 ((Ubuntu))".

Если я "IN" заменяю на знак "=", то выдаёт ошибку:
"SQL Error [1242] [21000]: Subquery returns more than 1 row".


-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети

-- по количеству поставленных лайков

SELECT * FROM likes;

SELECT COUNT(id) AS total, user_id FROM likes GROUP BY user_id ORDER BY total, user_id LIMIT 10;

-- по количеству отправленных сообщений

SELECT * FROM messages;

SELECT COUNT(id) AS total, from_user_id FROM messages GROUP BY from_user_id ORDER BY total, from_user_id LIMIT 10;

Виктор, я не понял, как сматчить полученные id'шники с first_name, last_name FROM users.
ДБивер не распознает алиасы для таблиц.


SELECT COUNT(id) AS total, from_user_id FROM messages m2,
	(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = m2.from_user_id) AS name
	GROUP BY from_user_id 
	ORDER BY total, from_user_id;



