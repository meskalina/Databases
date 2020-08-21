Я считаю, что чаще других будут выполняться запросы на показ
ленты новостей, подкастов, сторис.

DROP TABLE IF EXISTS podcasts;
CREATE TABLE podcasts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Подкасты';

DROP TABLE IF EXISTS stories;
CREATE TABLE stories (
    id SERIAL PRIMARY KEY,
    body VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Сторис';


SELECT name FROM podcasts ORDER BY created_at DESC;
CREATE INDEX podcasts_name_idx ON podcasts(name, created_at DESC);

SELECT head FROM posts ORDER BY created_at DESC;
CREATE INDEX posts_head_idx ON posts(head, created_at DESC);

SELECT body FROM stories ORDER BY created_at DESC;
CREATE INDEX stories_body_idx ON stories(body, created_at DESC);
