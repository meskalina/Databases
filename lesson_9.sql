-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

USE shop;
SELECT * FROM users;
START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
DELETE FROM shop.users WHERE id = 1;
COMMIT;

-- Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW test_view AS
SELECT products.name AS 'Продукт', catalogs.name AS 'Каталог'
FROM products
LEFT JOIN catalogs
ON products.catalog_id = catalogs.id;

SELECT * FROM test_view;


/* по желанию) Пусть имеется таблица с календарным полем created_at. 
В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, 
если дата присутствует в исходном таблице и 0, если она отсутствует.*/

DROP TABLE IF EXISTS test;
CREATE TABLE test (
    created_at DATE 
);

INSERT INTO test VALUES
('2018-08-01'),
('2018-08-04'),
('2018-08-16'),
('2018-08-17');

DROP TABLE IF EXISTS august;
CREATE TABLE IF NOT EXISTS august(
	`date` DATE
);

INSERT INTO august VALUES
('2018-08-01'),('2018-08-02'),('2018-08-03'),('2018-08-04'),('2018-08-05'),('2018-08-06'),('2018-08-07'),('2018-08-08'),('2018-08-09'),('2018-08-10'),
('2018-08-11'),('2018-08-12'),('2018-08-13'),('2018-08-14'),('2018-08-15'),('2018-08-16'),('2018-08-17'),('2018-08-18'),('2018-08-19'),('2018-08-20'),
('2018-08-21'),('2018-08-22'),('2018-08-23'),('2018-08-24'),('2018-08-25'),('2018-08-26'),('2018-08-27'),('2018-08-28'),('2018-08-29'),('2018-08-30'),
('2018-08-31');

SELECT august.date, NOT ISNULL(test.created_at) AS `check`
FROM august
LEFT JOIN test
ON `date` = test.created_at;


/*(по желанию) Пусть имеется любая таблица с календарным полем created_at. 
Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.*/

DROP TABLE IF EXISTS test;
CREATE TABLE test (
    id SERIAL PRIMARY KEY,
	created_at DATETIME
);

INSERT INTO test (created_at) VALUES
('2018-08-01'),('2018-08-02'),('2018-08-03'),('2018-08-04'),('2018-08-05'),('2018-08-06'),('2018-08-07'),('2018-08-08'),('2018-08-09'),('2018-08-10'),
('2018-08-11'),('2018-08-12'),('2018-08-13'),('2018-08-14'),('2018-08-15'),('2018-08-16'),('2018-08-17'),('2018-08-18'),('2018-08-19'),('2018-08-20'),
('2018-08-21'),('2018-08-22'),('2018-08-23'),('2018-08-24'),('2018-08-25'),('2018-08-26'),('2018-08-27'),('2018-08-28'),('2018-08-29'),('2018-08-30'),
('2018-08-31');

SELECT * FROM test;
SELECT created_at FROM test ORDER BY created_at DESC LIMIT 5, 1;
SELECT COUNT(*) AS number_row FROM test WHERE created_at IS NOT NULL ;

SELECT test.created_at FROM test 
JOIN (SELECT created_at FROM test ORDER BY created_at DESC LIMIT 5, 1) AS mark
ON test.created_at <= mark.created_at;

DELETE test
FROM test
JOIN (
	SELECT created_at 
	FROM test 
	ORDER BY created_at 
	DESC LIMIT 5, 1) AS mark
ON test.created_at <= mark.created_at;


/*Создайте двух пользователей которые имеют доступ к базе данных shop. 
Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
второму пользователю shop — любые операции в пределах базы данных shop.*/

CREATE USER 'shop_read'@'localhost' IDENTIFIED BY 'password';
GRANT SHOW, SELECT ON shop.* TO 'shop_read'@'localhost';

CREATE USER 'shop'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON shop.* TO 'shop'@'localhost';


/*(по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password, 
содержащие первичный ключ, имя пользователя и его пароль. Создайте представление username таблицы 
accounts, предоставляющий доступ к столбца id и name. Создайте пользователя user_read, который бы не 
имел доступа к таблице accounts, однако, мог бы извлекать записи из представления username.*/

DROP TABLE IF EXISTS accounts;
CREATE TABLE IF NOT EXISTS accounts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT 'Имя пользователя',
    `password` VARCHAR(255) COMMENT 'Пароль пользователя'
) COMMENT = 'Аккаунты';

CREATE VIEW username AS
SELECT id, name
FROM accounts;

CREATE USER 'user_read'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT (id, name) ON shop.username TO 'user_read'@'localhost';

/*Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".*/

DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello()
RETURNS VARCHAR(255) NOT DETERMINISTIC
BEGIN
	DECLARE var INT;
	SET var = DATE_FORMAT(NOW(), '%H');
	IF var BETWEEN 0 AND 6 THEN 
		RETURN 'Доброй ночи';
	IF var BETWEEN 6 AND 12 THEN 
		RETURN 'Доброе утро';
	IF var BETWEEN 12 AND 18 THEN 
		RETURN 'Добрый день';
	IF var BETWEEN 18 AND 24 THEN 
		RETURN 'Добрый вечер';
	END IF;
END//

DELIMITER ;
SELECT hello();

/* Бивер выдает ошибку с текстом:  "SQL Error [1064] [42000]: You have an error in your SQL syntax; 
   check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 15"
   Синтаксис проверил несколько раз. Не могу понять причину ошибки.*/


/*В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
Допустимо присутствие обоих полей или одного из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
При попытке присвоить полям NULL-значение необходимо отменить операцию.*/

DELIMITER //
CREATE TRIGGER test BEFORE INSERT ON products
FOR EACH ROW BEGIN 
	IF NEW.name IS NULL AND NEW.description IS NULL THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Неполные данные';
	END IF;
END//
DELIMITER ;


/*(по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
Вызов функции FIBONACCI(10) должен возвращать число 55.*/

DROP FUNCTION IF EXISTS fibo;
DELIMITER //
CREATE FUNCTION fibo(num INT)
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE var FLOAT;
	SET var = SQRT(5);
	RETURN ((POW(1 + var, num) - POW(1 - var, num))/(POW(2, num) * var));
END//
DELIMITER ;

SELECT fibo(10);
