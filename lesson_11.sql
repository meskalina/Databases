-- Задание 1

CREATE TABLE logs(
id SERIAL PRIMARY KEY,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
`table` VARCHAR(255) NOT NULL,
logged_item_id INT UNSIGNED NOT NULL,
logged_item_name VARCHAR(255)
) ENGINE = Archive;

CREATE TRIGGER users_insertion AFTER INSERT ON users FOR EACH ROW
BEGIN
	INSERT INTO logs VALUES (DEFAULT, DEFAULT, 'users', NEW.id, NEW.name);
END;

CREATE TRIGGER catalogs_insertion AFTER INSERT ON catalogs FOR EACH ROW
BEGIN
	INSERT INTO logs VALUES (DEFAULT, DEFAULT, 'catalogs', NEW.id, NEW.name);
END;

CREATE TRIGGER products_insertion AFTER INSERT ON products FOR EACH ROW
BEGIN
	INSERT INTO logs VALUES (DEFAULT, DEFAULT, 'products', NEW.id, NEW.name);
END;

-- Задание 2

DELIMITER //

CREATE PROCEDURE million ()
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 100 DO
    INSERT INTO qwerty (id) VALUES (i);
    SET i = i + 1;
  END WHILE;
END//
DELIMITER ;

Попытался решить, но выдает синтаксическую ошибку с while. Пока не могу разобраться.