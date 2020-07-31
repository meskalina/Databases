USE vk;

SHOW tables;

DESC friendship;

ALTER TABLE friendship DROP COLUMN created_at;

DESC messages;

ALTER TABLE messages ADD COLUMN is_modified BOOLEAN AFTER is_delivered;

DESC profiles;

ALTER TABLE profiles DROP COLUMN created_at;

SELECT * FROM users;

UPDATE users SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at; 

SHOW tables;

SELECT * FROM profiles;

CREATE TEMPORARY TABLE  genders (name CHAR(1));

INSERT INTO genders VALUES ('m'), ('f');

SELECT * FROM genders;

UPDATE profiles SET gender = (SELECT name FROM genders ORDER BY RAND() LIMIT 1);

UPDATE profiles SET photo_id = FLOOR(1 + RAND() * 100);

SELECT * FROM messages LIMIT 10;

UPDATE messages SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at; 

UPDATE messages SET
  FROM_user_id = FLOOR(1 + RAND() * 100),
  to_user_id = FLOOR(1 + RAND() * 100);
 
UPDATE messages SET is_modified = FLOOR(0.5 + RAND());

SELECT * FROM media_types;

INSERT INTO media_types VALUES (4, 'pdf', '2011-05-20 10:15:36', '2015-08-09 12:50:55');
INSERT INTO media_types VALUES (5, 'picture', '2012-03-04 19:04:08', '2015-04-13 14:53:27');

UPDATE media_types SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;

SELECT * FROM media;

DESC media;

TRUNCATE table media;

INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (1, 43, "accusantium", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (2, 18, "sint", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (3, 53, "explicabo", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (4, 35, "et", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (5, 78, "quis", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (6, 74, "maxime", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (7, 93, "dignissimos", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (8, 91, "officia", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (9, 92, "vero", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (10, 33, "facere", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (11, 93, "sit", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (12, 58, "nihil", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (13, 59, "odio", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (14, 95, "fuga", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (15, 79, "cum", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (16, 33, "repellat", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (17, 11, "sapiente", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (18, 6, "consequatur", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (19, 16, "veritatis", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (20, 52, "alias", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (21, 29, "quia", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (22, 82, "qui", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (23, 97, "labore", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (24, 95, "ab", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (25, 27, "id", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (26, 56, "omnis", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (27, 8, "facilis", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (28, 53, "quidem", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (29, 29, "commodi", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (30, 62, "reprehenderit", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (31, 8, "laboriosam", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (32, 90, "temporibus", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (33, 37, "voluptas", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (34, 90, "odit", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (35, 72, "expedita", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (36, 53, "debitis", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (37, 61, "deserunt", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (38, 79, "enim", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (39, 48, "sed", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (40, 91, "itaque", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (41, 87, "voluptatem", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (42, 38, "necessitatibus", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (43, 35, "numquam", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (44, 18, "eos", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (45, 18, "est", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (46, 78, "in", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (47, 11, "velit", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (48, 11, "soluta", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (49, 6, "inventore", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (50, 9, "atque", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (51, 10, "maiores", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (52, 96, "cupiditate", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (53, 43, "fugit", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (54, 47, "corrupti", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (55, 93, "ullam", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (56, 42, "minima", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (57, 59, "repudiandae", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (58, 45, "laudantium", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (59, 21, "architecto", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (60, 84, "vel", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (61, 13, "rerum", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (62, 79, "assumenda", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (63, 87, "ipsam", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (64, 26, "doloribus", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (65, 20, "recusandae", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (66, 32, "excepturi", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (67, 27, "aperiam", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (68, 24, "tenetur", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (69, 15, "fugiat", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (70, 69, "consectetur", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (71, 75, "praesentium", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (72, 95, "aliquid", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (73, 25, "aut", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (74, 18, "non", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (75, 21, "corporis", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (76, 20, "dolore", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (77, 92, "quam", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (78, 63, "quos", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (79, 58, "tempore", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (80, 33, "incidunt", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (81, 1, "nulla", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (82, 22, "harum", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (83, 98, "nisi", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (84, 66, "quas", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (85, 74, "veniam", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (86, 96, "esse", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (87, 54, "eum", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (88, 51, "libero", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (89, 74, "provident", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (90, 55, "similique", 123, 5);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (91, 68, "magni", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (92, 96, "aliquam", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (93, 14, "ea", 123, 4);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (94, 3, "asperiores", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (95, 15, "sunt", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (96, 61, "ut", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (97, 12, "earum", 123, 1);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (98, 75, "eveniet", 123, 3);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (99, 10, "ex", 123, 2);
INSERT INTO media (`id`, `user_id`, `filename`, `size`, `media_type_id`) VALUES (100, 8, "autem", 123, 5);


CREATE TEMPORARY TABLE  extensions (name varCHAR(10));

INSERT INTO extensions VALUES ('mp3'), ('jpg'), ('pdf'), ('avi'), ('mpeg');

SELECT * FROM extensions;

SELECT * FROM media;

UPDATE media SET filename = CONCAT(
  'https://dropbox/vk/',
  filename,
  '.',
  (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);

UPDATE media SET size = FLOOR(10000 + RAND() * 10000000);

UPDATE media SET metadata = CONCAT( '{"owner":"',
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}');
 
DESC media;

ALTER TABLE media MODIFY COLUMN metadata json;

SELECT * FROM friendship_statuses;

SELECT * FROM friendship;

UPDATE friendship SET user_id = FLOOR(1 + RAND() * 100);

UPDATE friendship SET friend_id = FLOOR(1 + RAND() * 100);

UPDATE friendship SET confirmed_at = (requested_at + INTERVAL 1 week) WHERE requested_at > confirmed_at;

TRUNCATE friendship_statuses;

INSERT INTO friendship_statuses (name) VALUES
  ('requested'),
  ('confirmed'),
  ('rejected');
  
UPDATE friendship SET status_id = (SELECT id FROM friendship_statuses ORDER BY RAND() LIMIT 1);

SELECT * FROM communities;

SELECT * FROM communities_users;

DELETE FROM communities WHERE id > 20;

UPDATE communities SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;

UPDATE communities_users SET community_id = FLOOR(1 + RAND() * 20);
