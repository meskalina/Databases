������� 1.1

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT '��� ����������',
    birthday_at DATE COMMENT '���� ��������',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '����������';

INSERT INTO users (name, birthday_at) VALUES
    ('��������', '1990-10-05'),
    ('�������', '1984-11-12'),
    ('���������', '1985-05-20'),
    ('������', '1988-02-14'),
    ('����', '1998-01-12'),
    ('�����', '1992-08-29');

UPDATE users SET 
  created_at = NOW(),
  updated_at = NOW();


������� 1.2

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT '��� ����������',
    birthday_at DATE COMMENT '���� ��������',
    created_at VARCHAR(255),
    updated_at VARCHAR(255)
) COMMENT = '����������';

ALTER TABLE users CHANGE created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE users CHANGE updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;


������� 1.3

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT '����� �������� ������� �� ������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������ �� ������';

SELECT * FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;


������� 1.4

SELECT name FROM users WHERE DATE_FORMAT(birthday_at, '%M') IN ('may', 'august');


������� 1.5

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT '�������� �������',
    UNIQUE unique_name(name(10))
) COMMENT '������� ��������-��������';

INSERT INTO catalogs VALUES
    (NULL, '����������'),
    (NULL, '����������� �����'),
    (NULL, '����������'),
    (NULL, '������� �����'),
    (NULL, '����������� ������');

SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5, 1, 2);


������� 2.1

USE vk;

SELECT AVG(TIMESTAMPDIFF(YEAR, birthday, NOW())) AS age FROM profiles;


������� 2.2

USE vk;

SELECT 
  DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday), DAY(birthday))), '%W') AS day,
  COUNT(*) AS total
FROM profiles GROUP BY day ORDER BY day;


������� 2.3

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT '�������� �������',
    UNIQUE unique_name(name(10))
) COMMENT = '������� ��������-��������';

INSERT INTO catalogs VALUES
    (NULL, '����������'),
    (NULL, '����������� �����'),
    (NULL, '����������'),
    (NULL, '������� �����'),
    (NULL, '����������� ������');

SELECT EXP(SUM(LN(id))) FROM catalogs;

