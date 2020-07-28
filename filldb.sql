#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'accusantium', '2020-06-29 17:41:42', '2019-04-27 23:32:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'sint', '2016-01-01 17:47:49', '2015-08-31 23:02:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'explicabo', '2013-03-18 23:15:37', '2018-01-24 01:58:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'et', '2017-12-20 09:28:39', '2013-07-08 01:34:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'quis', '2013-10-22 01:00:32', '2010-09-30 08:10:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'maxime', '2014-09-10 16:28:51', '2012-01-23 21:59:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'dignissimos', '2010-09-27 00:18:12', '2012-12-16 19:15:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'officia', '2017-09-25 19:48:16', '2014-09-27 05:17:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'vero', '2014-04-27 22:12:09', '2019-07-16 19:08:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'facere', '2019-06-05 03:07:38', '2018-11-30 22:17:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'sit', '2015-03-30 20:25:17', '2017-09-05 06:27:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'nihil', '2014-09-12 18:12:48', '2020-02-11 07:06:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'odio', '2014-04-21 20:30:11', '2017-11-12 14:47:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'fuga', '2013-05-31 03:47:51', '2017-12-16 20:08:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'cum', '2019-01-17 01:29:12', '2017-01-23 16:19:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'repellat', '2011-03-22 14:45:27', '2013-08-20 06:58:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'sapiente', '2018-04-07 05:13:14', '2016-06-02 20:46:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'consequatur', '2013-09-18 02:50:11', '2019-10-21 13:54:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'veritatis', '2010-08-27 09:13:17', '2018-07-25 13:08:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'alias', '2012-11-11 18:06:57', '2018-11-20 01:42:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'quia', '2018-12-26 10:22:58', '2013-12-16 21:33:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'qui', '2016-11-06 20:52:13', '2017-08-19 20:48:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'labore', '2019-10-04 17:23:07', '2016-05-06 07:52:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'ab', '2020-03-09 18:26:05', '2018-04-02 22:37:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'id', '2015-11-18 13:48:12', '2014-04-25 07:57:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'omnis', '2017-05-18 15:57:36', '2011-04-09 03:41:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'facilis', '2013-06-30 23:50:01', '2016-04-10 12:48:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'quidem', '2018-09-14 10:45:13', '2017-02-01 22:22:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'commodi', '2018-02-25 20:05:09', '2015-10-28 16:35:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'reprehenderit', '2016-08-28 15:11:05', '2018-06-06 08:23:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'laboriosam', '2010-10-23 11:53:56', '2013-12-04 06:53:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'temporibus', '2013-04-10 08:38:41', '2014-02-05 17:50:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'voluptas', '2017-08-24 12:19:48', '2010-08-15 05:08:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'odit', '2012-11-21 21:01:42', '2012-08-30 14:41:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'expedita', '2014-02-08 08:24:33', '2013-03-30 06:35:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'debitis', '2011-06-01 06:48:34', '2010-08-17 04:33:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'deserunt', '2016-11-24 06:53:13', '2012-02-10 21:53:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'enim', '2018-10-09 16:22:15', '2011-01-22 03:52:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'sed', '2019-10-13 17:46:59', '2016-08-03 05:19:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'itaque', '2020-06-01 23:38:46', '2018-09-16 14:30:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'voluptatem', '2016-10-10 12:11:07', '2013-02-22 00:49:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'necessitatibus', '2012-12-25 01:51:00', '2015-05-22 05:35:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'numquam', '2013-11-16 19:11:30', '2011-07-16 17:28:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'eos', '2017-05-08 06:26:26', '2018-09-19 21:32:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'est', '2013-07-19 00:02:27', '2020-03-20 21:44:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'in', '2011-08-23 15:48:36', '2014-12-14 05:38:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'velit', '2014-03-12 23:12:33', '2020-02-15 00:02:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'soluta', '2017-08-30 06:06:59', '2016-08-14 21:20:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'inventore', '2017-05-09 13:45:34', '2011-04-27 01:20:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'atque', '2017-04-17 21:24:05', '2014-08-21 04:49:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'maiores', '2012-11-15 02:24:12', '2017-07-06 02:46:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'cupiditate', '2017-06-05 04:53:59', '2018-03-21 04:34:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'fugit', '2015-04-08 19:35:59', '2015-08-23 04:02:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'corrupti', '2013-02-28 09:19:03', '2019-03-27 10:22:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'ullam', '2020-01-19 10:54:45', '2012-07-10 16:03:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'minima', '2019-10-05 15:09:06', '2014-04-06 19:19:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'repudiandae', '2013-03-15 00:33:31', '2019-07-11 20:02:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'laudantium', '2014-07-24 01:09:29', '2019-11-25 15:55:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'architecto', '2010-08-16 02:02:30', '2019-05-01 11:59:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'vel', '2016-07-27 05:08:44', '2018-03-12 21:05:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'rerum', '2019-10-16 20:34:55', '2014-01-08 09:16:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'assumenda', '2011-11-15 23:15:17', '2014-03-01 13:14:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'ipsam', '2017-12-02 19:54:10', '2014-02-16 05:23:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'doloribus', '2012-02-16 15:51:57', '2011-06-25 14:11:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'recusandae', '2012-07-17 12:25:26', '2014-04-16 19:12:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'excepturi', '2016-10-21 14:46:49', '2015-02-03 15:21:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'aperiam', '2012-05-18 12:58:10', '2013-12-04 21:20:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'tenetur', '2014-06-18 02:02:57', '2016-01-11 09:39:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'fugiat', '2015-01-01 13:37:25', '2017-07-06 06:57:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'consectetur', '2017-03-01 08:50:19', '2013-11-18 18:45:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'praesentium', '2017-10-23 18:11:23', '2018-08-08 01:48:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'aliquid', '2016-01-19 15:06:26', '2019-08-08 05:47:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'aut', '2011-06-04 03:37:55', '2017-03-13 21:35:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'non', '2016-02-25 04:39:17', '2016-12-30 00:35:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'corporis', '2013-07-07 23:25:04', '2015-12-28 07:07:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'dolore', '2014-07-11 15:59:43', '2019-08-08 03:09:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'quam', '2013-11-25 17:38:20', '2016-08-09 23:48:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'quos', '2014-07-04 15:40:21', '2015-12-11 20:00:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'tempore', '2019-05-09 02:50:06', '2016-07-29 02:21:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'incidunt', '2018-04-16 10:35:00', '2014-06-24 19:12:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'nulla', '2013-02-13 11:07:30', '2018-08-03 08:07:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'harum', '2013-05-25 19:43:23', '2011-11-26 19:56:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'nisi', '2015-06-24 16:37:15', '2014-01-11 19:13:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'quas', '2012-07-22 05:36:00', '2018-12-03 22:17:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'veniam', '2012-02-27 12:08:03', '2017-07-18 23:24:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'esse', '2012-10-07 16:39:03', '2012-04-26 22:08:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'eum', '2015-04-05 04:33:24', '2014-06-13 03:00:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'libero', '2011-03-20 20:02:28', '2017-05-29 04:55:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'provident', '2020-04-07 17:24:40', '2018-01-13 04:37:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'similique', '2019-02-03 07:05:25', '2013-10-16 05:51:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'magni', '2011-05-25 06:22:11', '2013-06-09 19:04:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'aliquam', '2020-04-21 11:42:39', '2013-11-22 14:19:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'ea', '2016-04-26 04:58:07', '2017-05-12 00:28:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'asperiores', '2018-07-22 21:39:07', '2010-12-02 14:41:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'sunt', '2011-08-26 21:04:22', '2011-01-14 02:47:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'ut', '2017-11-08 03:48:55', '2019-03-06 12:58:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'earum', '2015-06-09 00:58:00', '2020-06-16 08:32:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'eveniet', '2019-02-18 10:16:42', '2013-01-03 17:58:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'ex', '2018-05-03 21:54:15', '2013-01-28 18:36:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'autem', '2014-09-09 05:15:03', '2019-12-18 00:02:58');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2020-07-11 07:09:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '2011-05-26 19:18:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2014-04-19 05:22:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2013-08-27 02:46:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2011-06-09 06:19:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2016-06-30 08:08:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2010-08-12 08:20:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2016-12-05 04:04:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2018-01-15 19:37:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2010-10-03 17:35:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '2014-05-15 03:21:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '2017-04-07 14:00:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2016-06-10 00:44:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '2013-10-13 02:28:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '2017-01-27 02:51:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '2018-07-03 18:50:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '2013-12-26 06:32:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '2018-03-08 03:30:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '2012-04-29 19:13:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '2011-06-16 02:26:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '2013-07-30 07:45:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '2018-01-11 11:06:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '2019-05-16 18:48:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '2018-05-14 23:38:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '2019-05-12 07:28:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '2013-12-17 17:06:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '2017-02-21 20:36:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '2010-10-09 11:25:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '2012-01-08 16:20:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '2019-08-03 20:46:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '2017-12-27 21:33:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '2011-06-30 22:19:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '2011-07-08 16:57:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '2018-02-13 00:01:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '2011-06-11 16:02:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '2017-05-30 17:36:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '2011-06-23 23:36:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '2014-11-25 02:18:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '2012-07-29 14:24:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '2011-12-15 02:18:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '2014-10-05 20:38:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '2020-07-03 04:24:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '2018-03-21 18:13:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '2011-07-10 08:30:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '2017-02-16 06:47:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '2018-10-10 07:37:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '2016-12-01 05:24:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '2011-04-30 20:58:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '2013-06-24 16:38:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '2014-06-16 00:29:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '2019-07-28 04:07:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '2017-04-18 03:16:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '2016-09-29 01:15:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '2011-05-23 02:09:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '2013-01-05 14:13:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '2010-10-11 05:39:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '2019-09-19 21:42:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '2020-07-15 14:23:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '2015-12-07 00:43:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '2013-06-01 22:35:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '2011-09-07 22:03:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '2020-01-06 22:30:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '2013-10-04 17:38:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '2012-10-09 04:39:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '2019-04-09 04:59:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '2013-06-16 03:23:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '2018-11-26 00:13:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '2011-09-04 17:02:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '2019-04-15 16:58:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '2013-10-08 12:30:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '2012-11-08 03:42:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '2019-03-30 00:53:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '2016-04-04 12:53:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '2010-10-26 21:16:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '2014-06-25 06:11:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '2012-01-19 20:49:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '2020-05-26 09:19:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '2016-09-10 13:49:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '2018-12-25 18:54:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '2018-04-28 04:11:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '2010-11-16 00:09:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '2020-02-11 19:26:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '2020-06-13 16:07:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '2013-03-07 21:50:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '2011-12-20 12:32:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '2012-11-23 12:55:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '2020-04-15 12:08:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '2018-10-03 01:51:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '2019-11-06 18:55:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '2011-11-26 07:08:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '2012-02-25 15:05:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '2016-03-06 12:03:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '2011-11-18 20:12:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '2014-02-19 17:27:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '2014-06-22 00:48:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '2015-10-22 06:52:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '2014-08-12 03:30:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '2020-04-15 23:56:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '2012-04-17 09:24:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '2018-11-12 02:58:12');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 101, '2012-05-19 14:18:28', '2014-12-09 16:36:30', '2014-08-13 16:51:24', '2018-08-26 14:35:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 102, '2014-07-02 16:12:07', '2012-04-29 10:49:06', '2011-02-03 08:49:06', '2017-06-07 02:21:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 101, '2014-02-03 07:22:12', '2016-05-28 23:10:39', '2016-06-28 16:00:22', '2013-05-08 23:21:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 102, '2014-12-27 19:23:20', '2014-03-21 18:41:01', '2019-02-02 23:00:55', '2012-11-04 23:20:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 101, '2019-05-10 22:03:37', '2020-03-27 08:03:28', '2011-04-07 21:52:28', '2014-11-17 08:16:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 102, '2012-10-21 11:12:26', '2018-12-12 05:15:33', '2012-03-20 03:20:10', '2013-03-18 12:37:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 101, '2012-05-27 22:58:07', '2019-11-03 02:02:43', '2014-08-14 08:52:33', '2012-10-06 16:45:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 102, '2014-06-19 22:56:27', '2016-03-25 18:37:11', '2014-08-16 10:03:39', '2015-06-05 14:09:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 101, '2016-01-07 10:59:05', '2017-11-10 20:49:22', '2014-07-30 09:43:35', '2013-02-09 15:16:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 102, '2016-04-19 08:23:56', '2013-01-09 10:59:31', '2020-06-18 18:04:42', '2011-12-20 07:27:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 101, '2011-02-05 10:11:01', '2015-08-03 10:56:28', '2015-12-23 07:03:11', '2012-06-01 00:50:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 102, '2017-03-27 03:05:37', '2011-12-16 06:15:56', '2020-01-07 01:03:56', '2017-08-07 19:44:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 101, '2015-08-25 16:33:01', '2010-12-02 05:42:14', '2011-07-13 04:17:30', '2016-04-22 07:09:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 102, '2018-12-31 23:11:49', '2013-12-23 02:22:28', '2016-08-02 06:23:15', '2013-05-20 04:13:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 101, '2016-12-24 22:12:19', '2013-02-02 11:39:01', '2015-08-26 15:20:01', '2014-06-07 20:43:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 102, '2020-02-09 22:50:52', '2018-08-29 14:32:25', '2014-06-28 08:37:30', '2019-06-08 15:45:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 101, '2010-11-02 20:59:36', '2018-12-12 05:18:11', '2019-06-18 19:55:48', '2018-09-28 22:50:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 102, '2016-04-27 07:29:01', '2012-04-15 17:18:40', '2020-02-10 08:36:41', '2015-11-30 19:07:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 101, '2010-09-04 10:46:36', '2018-11-23 06:09:10', '2019-02-19 13:52:16', '2020-03-10 03:51:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 102, '2013-07-03 12:02:00', '2015-01-15 02:59:26', '2015-11-26 05:02:50', '2019-08-25 21:30:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 101, '2016-12-11 06:58:53', '2016-08-02 10:34:35', '2010-12-18 11:35:45', '2020-04-28 02:39:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 102, '2016-11-23 06:43:33', '2019-07-02 10:41:51', '2019-07-05 06:26:51', '2018-09-07 02:50:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 101, '2019-04-03 23:18:51', '2019-08-16 06:45:59', '2011-08-07 10:04:53', '2010-09-13 17:30:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 102, '2019-01-13 16:10:24', '2011-09-17 07:13:18', '2013-07-08 17:33:13', '2012-12-10 10:26:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 101, '2010-12-24 17:44:43', '2019-10-15 04:29:38', '2017-01-06 16:51:01', '2018-09-20 15:40:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 102, '2017-10-24 00:37:07', '2017-06-10 00:45:29', '2013-07-13 08:48:01', '2010-08-15 13:20:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 101, '2012-12-14 00:51:41', '2018-08-01 02:32:18', '2012-07-25 04:11:53', '2016-03-27 20:01:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 102, '2016-08-10 10:17:38', '2018-02-14 05:23:57', '2015-04-02 22:14:06', '2015-03-15 20:42:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 101, '2016-04-19 19:29:39', '2016-04-06 11:11:56', '2016-10-17 04:35:14', '2012-09-16 09:33:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 102, '2011-07-21 19:39:05', '2013-07-06 03:44:14', '2011-02-08 00:09:41', '2015-12-28 08:15:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 101, '2020-07-23 15:56:33', '2015-03-14 01:05:36', '2013-10-30 23:34:11', '2016-03-19 14:12:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 102, '2014-05-26 11:11:33', '2017-02-18 01:27:29', '2015-03-21 16:35:16', '2013-10-10 23:55:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 101, '2013-09-29 17:44:49', '2013-05-18 23:48:27', '2013-04-28 13:10:32', '2015-01-10 23:02:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 102, '2020-05-23 09:35:50', '2017-03-12 10:16:30', '2018-07-27 14:41:17', '2012-09-19 10:08:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 101, '2017-11-17 04:58:47', '2014-11-09 06:24:49', '2013-12-10 01:45:52', '2015-05-08 20:17:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 102, '2017-01-10 10:01:51', '2016-03-11 19:38:25', '2011-08-13 14:49:47', '2016-01-25 16:40:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 101, '2017-09-08 23:26:11', '2013-07-17 13:08:17', '2015-07-27 16:41:09', '2012-02-15 18:39:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 102, '2012-03-28 05:48:33', '2019-06-28 18:39:15', '2013-12-26 21:43:49', '2014-06-07 22:27:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 101, '2011-12-18 09:27:42', '2010-09-15 06:53:33', '2016-04-24 11:59:07', '2012-06-16 02:06:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 102, '2011-02-05 04:19:01', '2011-09-07 09:25:57', '2012-03-16 01:43:54', '2014-07-30 10:58:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 101, '2016-02-11 01:41:16', '2019-01-20 12:40:10', '2011-06-09 22:48:25', '2017-11-30 18:14:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 102, '2010-12-01 01:11:36', '2011-11-11 20:29:57', '2019-12-23 21:54:01', '2018-09-18 19:42:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 101, '2018-04-25 22:29:44', '2016-12-18 12:07:25', '2013-02-26 13:33:23', '2016-06-18 13:23:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 102, '2013-06-22 20:45:49', '2017-09-03 01:10:34', '2018-02-09 11:11:21', '2012-06-23 22:02:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 101, '2012-10-23 02:51:27', '2018-08-24 00:20:47', '2019-06-17 13:36:57', '2015-07-31 00:21:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 102, '2015-08-02 00:30:51', '2020-06-19 15:42:33', '2013-08-08 16:57:37', '2015-06-13 21:56:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 101, '2012-05-08 13:58:10', '2020-02-26 20:16:43', '2017-08-21 19:26:11', '2014-09-07 02:41:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 102, '2010-10-26 19:04:11', '2018-02-18 18:06:50', '2010-09-27 16:24:32', '2017-05-06 06:14:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 101, '2019-12-09 16:33:14', '2018-02-25 15:59:22', '2011-05-05 13:29:43', '2016-08-03 03:06:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 102, '2013-10-07 17:24:04', '2010-08-14 22:27:09', '2012-11-24 06:28:34', '2011-10-22 06:41:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 101, '2013-01-08 15:41:31', '2014-09-26 22:36:28', '2012-12-06 00:47:20', '2018-08-17 23:46:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 102, '2019-03-05 18:32:32', '2018-05-05 11:55:35', '2016-02-19 14:26:36', '2016-11-20 11:29:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 101, '2013-11-22 05:25:10', '2017-10-22 15:33:15', '2018-04-25 01:33:01', '2011-05-01 12:40:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 102, '2011-03-04 20:04:52', '2020-01-04 10:00:03', '2015-09-19 12:22:21', '2014-08-30 11:26:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 101, '2017-07-31 09:18:08', '2014-11-08 01:38:47', '2013-07-12 09:39:42', '2011-07-14 20:54:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 102, '2012-12-22 07:09:16', '2017-12-24 17:00:52', '2016-07-19 11:23:13', '2011-08-26 22:56:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 101, '2015-08-17 09:34:10', '2013-06-13 01:54:16', '2017-06-25 23:21:28', '2019-08-21 16:15:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 102, '2015-10-19 08:50:03', '2013-01-23 20:54:41', '2010-10-26 13:07:38', '2017-06-10 05:42:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 101, '2015-07-27 16:06:03', '2011-01-28 18:18:40', '2017-10-01 13:35:32', '2013-08-01 01:20:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 102, '2017-03-04 14:49:11', '2020-05-28 04:53:48', '2012-09-07 10:45:53', '2016-02-12 02:31:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 101, '2014-05-07 09:56:28', '2011-05-09 10:19:16', '2012-06-05 03:43:29', '2018-06-18 23:56:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 102, '2016-12-29 14:29:41', '2020-03-15 03:09:28', '2018-09-13 00:12:58', '2016-07-06 11:52:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 101, '2012-07-29 10:24:10', '2015-11-12 03:21:34', '2019-07-03 06:54:55', '2017-11-08 02:31:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 102, '2016-02-07 19:17:27', '2017-01-02 16:18:55', '2015-07-16 00:54:03', '2011-12-27 19:28:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 101, '2016-01-26 16:16:46', '2013-12-27 15:05:17', '2015-11-30 12:10:20', '2015-10-02 20:25:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 102, '2015-08-16 23:59:08', '2014-05-08 20:20:31', '2013-06-17 04:27:09', '2019-09-15 10:53:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 101, '2019-02-21 15:40:01', '2013-06-14 12:05:54', '2010-12-14 20:27:53', '2015-12-07 15:16:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 102, '2015-05-04 17:04:25', '2019-03-13 07:36:14', '2017-07-14 07:46:31', '2017-05-03 16:56:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 101, '2011-06-13 02:42:49', '2014-02-02 14:46:34', '2017-10-05 03:03:18', '2015-11-30 01:52:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 102, '2019-05-02 02:11:14', '2019-08-16 08:07:51', '2012-08-17 02:38:02', '2015-01-26 02:10:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 101, '2012-05-14 13:00:59', '2013-01-20 08:02:14', '2020-06-26 08:18:17', '2014-06-16 20:34:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 102, '2011-07-16 01:45:36', '2019-03-05 00:01:44', '2010-12-18 17:41:22', '2020-02-10 09:54:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 101, '2017-02-19 10:46:40', '2018-04-05 06:48:45', '2016-12-29 22:01:01', '2013-08-12 16:30:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 102, '2015-04-03 02:16:35', '2019-08-19 19:11:51', '2019-02-18 23:24:08', '2014-09-18 20:09:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 101, '2017-05-15 18:32:28', '2013-07-16 08:48:08', '2017-08-20 04:48:57', '2012-08-13 02:51:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 102, '2012-05-02 19:53:26', '2014-07-25 15:18:54', '2014-12-11 23:28:31', '2018-11-27 08:20:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 101, '2012-04-01 21:47:30', '2017-04-30 08:27:58', '2019-07-30 14:27:43', '2013-07-23 22:40:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 102, '2015-01-22 05:52:42', '2010-11-15 10:20:30', '2015-04-03 15:56:52', '2015-10-18 05:09:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 101, '2015-01-03 10:52:05', '2012-09-28 00:05:52', '2016-02-10 12:33:00', '2020-06-17 03:49:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 102, '2014-04-06 20:30:41', '2016-02-20 01:05:34', '2014-11-12 20:47:32', '2016-09-08 13:08:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 101, '2016-04-25 06:48:58', '2016-11-01 21:52:28', '2017-02-15 00:06:27', '2017-01-31 20:42:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 102, '2012-06-17 05:21:41', '2018-03-14 00:36:26', '2012-08-27 03:23:00', '2014-03-27 11:22:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 101, '2017-01-20 22:24:44', '2015-07-07 10:38:34', '2018-12-02 13:32:08', '2015-08-27 09:10:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 102, '2019-01-25 02:03:37', '2019-12-20 19:05:05', '2017-07-17 19:41:13', '2013-07-10 12:10:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 101, '2016-10-26 20:16:38', '2019-04-21 18:40:52', '2016-08-07 07:30:55', '2015-09-17 00:01:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 102, '2013-05-08 03:30:36', '2018-09-26 20:36:43', '2015-09-23 20:23:54', '2018-10-28 03:53:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 101, '2014-08-10 21:55:39', '2011-10-07 10:04:07', '2011-03-04 01:07:08', '2018-05-21 09:21:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 102, '2013-07-21 15:42:26', '2018-01-30 22:13:41', '2014-01-21 22:46:16', '2019-03-28 02:39:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 101, '2019-07-07 20:17:43', '2018-07-18 20:31:51', '2013-10-05 23:44:15', '2015-08-12 16:22:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 102, '2015-10-01 04:32:24', '2016-01-17 19:38:27', '2020-03-30 04:05:14', '2014-07-19 08:15:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 101, '2019-03-09 13:15:48', '2014-02-09 06:06:12', '2015-02-05 18:25:39', '2019-10-01 02:48:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 102, '2011-05-21 11:39:25', '2020-04-16 09:21:29', '2014-12-30 07:20:55', '2016-01-11 14:41:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 101, '2014-09-05 02:05:29', '2015-08-29 11:29:26', '2014-01-07 05:47:53', '2012-01-27 02:15:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 102, '2016-04-29 04:09:52', '2015-02-19 09:07:45', '2017-08-24 09:43:30', '2013-08-11 17:35:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 101, '2011-12-12 13:34:58', '2017-09-30 07:32:13', '2010-09-06 07:50:17', '2019-08-08 02:37:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 102, '2018-09-16 03:42:38', '2018-12-17 19:32:46', '2020-04-23 18:12:56', '2012-01-28 16:45:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 101, '2014-06-11 03:25:45', '2012-03-30 10:04:11', '2011-02-20 12:36:26', '2017-03-26 20:28:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 102, '2015-10-11 10:54:19', '2019-11-08 23:44:50', '2014-11-12 19:58:35', '2016-11-25 19:42:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 101, '2015-08-10 10:06:19', '2012-01-29 07:48:36', '2012-08-15 10:46:12', '2014-07-12 10:40:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 102, '2020-07-08 09:11:02', '2014-01-17 17:52:12', '2010-10-30 13:59:19', '2013-02-11 13:42:46');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (101, '\"in_friends\"', '2010-11-20 16:47:49', '2013-01-25 17:20:25');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (102, '\"request\"', '2016-05-11 15:19:46', '2019-08-28 07:21:06');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, '\"audio\"', '2016-10-08 09:41:45', '2013-05-06 08:44:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, '\"video\"', '2016-04-09 20:05:58', '2019-03-08 21:57:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, '\"doc\"', '2019-07-11 12:54:50', '2020-03-04 01:24:52');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'Velit corporis necessitatibus rerum enim unde quo voluptates. Qui neque labore temporibus qui consequatur commodi atque sit. Enim id mollitia quaerat fuga repellendus.', 0, 0, '2018-03-10 08:06:50', '2019-10-28 10:59:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'Architecto suscipit non et enim. Qui maiores laudantium aut recusandae vitae voluptas enim nihil. Nihil aliquid est et aut.', 0, 1, '2015-05-21 09:09:19', '2020-06-21 01:17:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'Esse inventore id sit consectetur incidunt id nesciunt. Molestiae cupiditate eos similique dolores. Atque perspiciatis quia facere harum dolores totam. Aperiam aut quia aut minus. Eum itaque occaecati maxime magnam culpa quasi et dignissimos.', 1, 0, '2017-03-04 07:30:59', '2019-12-18 07:02:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'Totam corporis non architecto doloremque. Occaecati maxime molestiae illo ipsa doloribus et. Beatae porro nostrum repellat dolore natus voluptatem ab aliquam.', 1, 0, '2020-02-01 08:35:18', '2020-03-17 11:49:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'Unde accusamus et eveniet nesciunt quo mollitia sunt architecto. A accusantium consequatur tenetur inventore quaerat explicabo non. Autem placeat possimus magnam quis corporis rerum et. Incidunt incidunt voluptatem ex maiores adipisci aut aut. Aliquid deserunt illum alias id est et.', 1, 0, '2018-12-05 06:39:19', '2020-05-13 08:24:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 6, 6, 'Eos id ipsum molestiae facere est vitae quis. Quia et eum quod esse. Perferendis qui aperiam aut rerum et.', 1, 1, '2019-12-31 08:07:12', '2020-06-12 20:46:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 7, 7, 'Sed optio consequuntur facilis et. Deleniti accusamus cumque qui consequuntur quas. Et animi id aut ipsa itaque. Aliquid omnis explicabo ex voluptate.', 1, 1, '2018-09-07 05:35:38', '2020-04-04 08:32:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 8, 8, 'Rerum tempore qui sint asperiores ducimus. Ut voluptatibus ipsum voluptate voluptatem amet dolorem aliquid. Ea et magnam cum ad cumque modi. Voluptas magnam et iste quia ut. Non nulla deserunt harum voluptas non aliquam.', 0, 0, '2017-09-05 03:41:06', '2020-07-27 06:22:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 9, 9, 'Consequatur ad ad assumenda ab unde. Vero ea sit laudantium. Sit repellendus voluptatem officiis qui officia porro provident. Consequatur ut fugit quos earum amet.', 0, 0, '2016-04-25 12:54:10', '2019-10-08 10:45:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 10, 10, 'Molestiae quod magnam sint ipsa et eum. Qui delectus molestiae qui at debitis. Id est molestiae ipsam sit quos nisi facilis quia.', 0, 0, '2013-12-09 07:31:29', '2019-12-28 16:12:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 11, 11, 'Minima ut delectus assumenda nihil necessitatibus autem rerum. Numquam molestiae sit consequatur eius ut nostrum. Qui sed consequatur illum dolor ratione. Est libero libero sit possimus.', 0, 0, '2019-12-14 10:26:29', '2019-12-05 13:46:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 12, 12, 'Minus odio dolores qui sint iste vel rerum. Et sint est suscipit cupiditate. Saepe doloremque ad dolor est. Quo voluptatem voluptatem ullam adipisci.', 1, 0, '2011-04-25 21:08:04', '2019-08-19 01:37:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 13, 13, 'Qui explicabo fugit repudiandae eaque atque. Impedit debitis laboriosam nostrum labore dolores omnis qui expedita. Enim voluptatem modi consequatur consequuntur voluptates aliquam vitae. Non ut dolorem in eaque est eum.', 1, 0, '2018-11-04 21:57:53', '2020-05-19 17:41:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 14, 14, 'Aspernatur aut quibusdam assumenda. Culpa cumque dolore debitis tempora voluptatem. Rerum nihil quis sint in assumenda.', 1, 0, '2011-04-04 03:15:56', '2020-06-09 09:22:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 15, 15, 'Harum omnis architecto hic accusantium omnis. Aliquam minus at voluptas consequuntur. Eos minima quia id. Pariatur autem suscipit amet iusto quos. Fugiat adipisci laudantium et quia autem qui nobis reprehenderit.', 0, 1, '2011-03-21 22:04:30', '2020-06-14 02:16:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 16, 16, 'Quidem doloribus est aperiam qui possimus. Ipsa nam sit repellat officia quis dolores necessitatibus. Consectetur repudiandae dolorem nihil vel. Incidunt quidem esse sapiente aut impedit molestiae et non. Voluptas blanditiis labore provident hic qui.', 1, 0, '2017-03-06 23:00:58', '2020-05-15 23:53:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 17, 17, 'Provident aperiam eligendi error totam. Dolorem autem harum in atque. Qui vero et non voluptas.', 0, 1, '2014-06-28 23:29:05', '2020-02-10 01:58:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 18, 18, 'Pariatur fuga maxime consequatur a magni. Quia sunt et quia libero officia. Nesciunt illum quidem quisquam voluptatem.', 0, 0, '2018-10-05 04:13:43', '2020-03-22 08:39:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 19, 19, 'Atque aut esse autem provident ad sequi quaerat. Praesentium voluptas ea corrupti vero. Totam aut aspernatur animi delectus cumque deserunt suscipit.', 1, 1, '2013-04-14 06:07:31', '2020-06-08 12:03:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 20, 20, 'In accusamus eum eligendi quos aperiam. Provident sapiente autem perspiciatis doloribus ut explicabo. Qui voluptatem vitae quia earum quam.', 0, 0, '2012-12-27 09:40:54', '2019-09-11 19:20:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 21, 21, 'Nulla repudiandae quia enim inventore. Repellendus ut consequuntur non voluptatum. Nihil magnam quis et officiis cupiditate possimus. At est quia accusamus quaerat.', 1, 1, '2016-01-15 00:07:38', '2020-03-12 15:01:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 22, 22, 'Quod harum quia blanditiis necessitatibus repudiandae natus hic. Minima incidunt accusamus doloribus culpa inventore. Temporibus velit nihil quasi rerum harum consequatur vel.', 1, 1, '2019-09-24 18:52:14', '2020-01-11 16:48:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 23, 23, 'Velit et aut voluptas. Assumenda dolor dolorem nesciunt vitae vel nostrum. Eligendi ratione deserunt ducimus velit.', 0, 1, '2019-07-05 15:59:24', '2020-04-19 18:15:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 24, 24, 'Est blanditiis a nobis iure deserunt. Nesciunt et consequatur sit eum cupiditate. Deleniti voluptatum quod quia placeat. Laborum quod sunt voluptatibus fugit.', 1, 1, '2014-09-28 14:36:34', '2020-04-18 19:47:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 25, 25, 'Consequatur doloribus minus eaque voluptate laudantium est. Fuga commodi doloremque voluptatum et est qui. Consequatur fugit reprehenderit velit.', 1, 0, '2014-01-28 06:40:40', '2020-01-06 15:21:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 26, 26, 'Eveniet dolorem exercitationem similique et incidunt eaque. Qui qui fugit in non aliquid.', 1, 1, '2011-12-20 16:35:48', '2020-01-05 00:14:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 27, 27, 'Dicta autem id temporibus numquam velit voluptatem ut. Qui voluptatum modi occaecati voluptatum. Consectetur impedit voluptatem ex corrupti. Facilis iusto qui sunt possimus omnis. Dolores rerum expedita repellat magnam aperiam.', 0, 1, '2012-08-21 18:21:01', '2019-08-16 01:54:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 28, 28, 'In nihil voluptas quibusdam. Possimus ab rem est esse. Explicabo nesciunt explicabo quia. In ipsa sed nam illo consequatur quisquam voluptatem.', 0, 0, '2018-08-09 00:51:45', '2020-02-23 04:41:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 29, 29, 'Adipisci et vitae et tempora est. Aut molestiae et enim non. Mollitia et non placeat eum est fuga cupiditate.', 1, 0, '2017-01-24 17:46:27', '2020-01-07 00:22:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 30, 30, 'Tenetur quam molestias ut id ut enim. Enim in aperiam inventore repudiandae pariatur et et sint. Aliquam aut est qui ipsum qui quo. Doloribus fuga sit harum ducimus dolorum.', 1, 0, '2010-12-02 05:44:40', '2020-03-28 00:50:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 31, 31, 'Est suscipit in reprehenderit error deserunt numquam ad. Illum iste sint sed rerum dolore quia eum. Aut eum iure repudiandae pariatur.', 1, 0, '2014-03-28 21:31:09', '2020-06-17 15:40:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 32, 32, 'Corrupti sunt harum ut voluptatem et ipsam. Est et laborum in aperiam occaecati aliquid. Exercitationem praesentium aut non unde facere.', 0, 1, '2015-11-09 13:37:39', '2020-06-21 22:52:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 33, 33, 'Exercitationem magni quibusdam magnam quo qui illum. Eum ipsum numquam error reprehenderit quidem. Ratione autem atque enim praesentium ut.', 0, 1, '2019-03-16 20:40:29', '2020-04-20 17:54:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 34, 34, 'Et quis architecto aut a non. Voluptatem libero architecto tempore cupiditate qui fugit explicabo et. Iure debitis voluptatum cupiditate repudiandae dolores vel sint.', 1, 0, '2017-09-05 09:16:57', '2020-01-04 11:03:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 35, 35, 'Blanditiis doloremque ut voluptatem dolorem blanditiis est. Quas excepturi molestias aut consectetur ab doloremque nihil. Explicabo repellendus voluptatibus aperiam.', 0, 0, '2019-03-27 11:52:18', '2019-10-17 01:45:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 36, 36, 'In quia quo facilis esse. Iste porro quia non aliquam ex placeat debitis alias. Possimus voluptatem soluta laboriosam cupiditate nobis natus corporis.', 0, 0, '2010-11-21 20:32:25', '2019-09-15 19:41:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 37, 37, 'Necessitatibus ipsa at modi inventore delectus necessitatibus in. Placeat voluptas praesentium voluptatem doloribus eaque. Tempore minus tempore quia minus.', 0, 0, '2015-08-23 09:14:44', '2020-07-22 23:57:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 38, 38, 'Ratione incidunt laudantium repellat alias enim aliquid. Sapiente doloremque facere enim sed. Aperiam et ut sunt expedita aut in est.', 0, 0, '2014-03-14 20:01:21', '2020-07-05 01:03:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 39, 39, 'Ea ducimus possimus nulla et in et repudiandae. Non atque odio est suscipit et quo. Rerum alias aliquam et reiciendis. Qui quia ipsa ex.', 0, 1, '2019-02-09 15:44:38', '2019-09-30 10:03:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 40, 40, 'Nesciunt reiciendis occaecati est cum. Quia veritatis reiciendis et. Odio sequi sequi enim et ut. Non sit aut architecto cupiditate quo.', 0, 1, '2019-05-13 02:53:32', '2019-08-25 06:57:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 41, 41, 'Iure et voluptatem minus. Eaque rem necessitatibus sed sint vel. Dolores dolores sapiente eum. Dolorem neque temporibus tempora dolorem ut mollitia.', 1, 0, '2018-11-23 15:35:25', '2019-08-08 18:47:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 42, 42, 'Voluptates et omnis ratione exercitationem dolores. Asperiores et occaecati vitae libero laboriosam eum perferendis. Ut velit quas incidunt eos harum. Dolor occaecati earum ducimus dolorem et.', 1, 1, '2012-09-19 07:43:03', '2019-10-08 00:52:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 43, 43, 'Ipsa tempore voluptatem hic neque officia quia. Distinctio natus non earum recusandae sint quia soluta. Ut saepe nulla labore sed error ullam. Dolor numquam autem saepe autem repellendus ullam.', 0, 1, '2016-07-30 02:44:44', '2019-10-23 10:16:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 44, 44, 'In ipsam eaque inventore vitae qui perspiciatis. Et dolor veniam et reprehenderit magnam. Voluptas sint sit ut atque velit id maxime.', 0, 1, '2012-09-24 18:03:06', '2020-02-06 13:32:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 45, 45, 'Minima tenetur est est voluptatem fugiat. Voluptatum animi aperiam vitae doloribus et quia dolorum. Autem est distinctio natus corporis et. Cum expedita cupiditate non et perspiciatis exercitationem vel.', 0, 1, '2012-05-13 10:00:21', '2019-08-01 14:26:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 46, 46, 'Id qui et accusamus sint deleniti. Et molestiae veniam qui et expedita ut optio reiciendis. Nam eum error illum dolorem et adipisci.', 1, 0, '2014-07-27 23:59:15', '2020-06-30 21:27:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 47, 47, 'Expedita sit saepe repudiandae minima rerum. Qui voluptatem iusto qui sint et. Quaerat aut qui in aut aut dignissimos possimus. Qui dolorem modi sunt quis est omnis culpa.', 0, 0, '2015-11-23 11:30:32', '2019-08-20 17:01:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 48, 48, 'Iure sequi deserunt distinctio neque et. Sapiente et cum iure natus in asperiores nobis. Tempora magnam voluptatem eum dolores sed ipsum animi. Labore et ex doloremque aliquam illo voluptatem ex.', 1, 1, '2019-07-26 03:23:24', '2020-04-23 02:18:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 49, 49, 'Harum consequatur quia unde mollitia error ullam. Officia qui delectus id consectetur deserunt enim molestiae quidem. Quidem mollitia doloremque consequatur dolor.', 0, 1, '2018-01-08 09:13:02', '2019-10-18 15:02:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 50, 50, 'Voluptas numquam quibusdam quo. Sunt ipsam perferendis ut molestiae excepturi accusamus eligendi. Ut cumque vel consectetur aut.', 0, 0, '2017-02-24 06:10:47', '2020-07-02 05:07:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 51, 51, 'Ipsum qui dolor impedit odio praesentium facere. Quos quia voluptas est autem recusandae vitae omnis provident. Et asperiores a atque non. Iste reprehenderit deserunt accusamus sed aliquid.', 1, 0, '2014-07-14 14:44:22', '2020-02-16 19:47:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 52, 52, 'Nam libero ut est voluptatem et iusto. Rerum animi iure alias et repudiandae quibusdam. Facilis rerum ipsum in qui quibusdam omnis quas. Molestias animi eos eum et tenetur et ea nisi.', 1, 1, '2013-06-24 15:16:09', '2020-03-04 20:01:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 53, 53, 'Qui cupiditate non delectus consequatur. Quis quia harum repudiandae aut ut rerum. In dolor debitis fuga.', 1, 1, '2014-08-26 11:05:20', '2020-03-08 02:00:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 54, 54, 'Sint qui molestiae voluptatem temporibus. Fugiat aut accusamus dolores vitae vero maxime eaque.', 0, 1, '2013-01-02 03:52:36', '2019-11-21 23:58:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 55, 55, 'Nihil optio est dolores. Pariatur natus autem consequuntur voluptatibus. Asperiores sunt possimus et occaecati in nihil. Odio sequi perferendis accusantium consectetur.', 0, 1, '2015-12-13 20:05:52', '2020-05-04 04:01:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 56, 56, 'Velit iusto rem sit culpa. Veniam est deleniti occaecati voluptatibus. Id veniam quia pariatur quos.', 0, 1, '2017-02-02 11:12:57', '2020-01-28 13:29:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 57, 57, 'Facere voluptas et autem facere consequatur deleniti. Architecto voluptatem quisquam sint. Aut molestiae accusantium recusandae libero. Illum omnis nulla optio sint omnis facilis provident.', 1, 0, '2014-12-11 17:19:14', '2020-05-01 14:44:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 58, 58, 'Eligendi architecto enim quo dolorem animi nemo. Quos alias deleniti animi quo quae. Veniam rerum suscipit quia officia praesentium est.', 0, 1, '2018-11-06 16:29:13', '2020-03-13 22:56:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 59, 59, 'Earum molestiae quae error maxime similique voluptatem voluptas. Maxime accusantium voluptas non modi atque aspernatur rem. Amet explicabo quia placeat temporibus ut debitis. Eum dolor officiis est quo. Sit optio dicta distinctio qui maxime.', 0, 0, '2017-12-30 05:58:07', '2019-08-24 15:02:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 60, 60, 'Sequi eos qui cum animi. Itaque accusamus voluptatem aut mollitia dolorum qui fuga. Rem enim quia ut maiores rerum perspiciatis. Eaque perspiciatis aut dicta nemo ut natus.', 1, 0, '2019-02-28 14:23:37', '2020-03-13 21:38:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 61, 61, 'Est dolorum alias veniam magnam. Accusamus id molestias cum. Vel hic sunt aliquid labore officia. Voluptatem et eveniet mollitia maxime porro est doloremque. Qui nemo et omnis distinctio fuga.', 1, 0, '2010-12-01 03:18:56', '2020-05-07 14:37:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 62, 62, 'Ratione deserunt nisi recusandae est aliquam. Dolorem laudantium blanditiis rerum rem. Aut laboriosam atque animi modi. Nostrum omnis consequatur dolor quidem.', 0, 1, '2016-08-02 10:01:54', '2019-12-08 07:54:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 63, 63, 'Laudantium dolorum iure necessitatibus tenetur ea consequuntur et. Enim dolorem perspiciatis a dolorem est. Eos consequatur in placeat quidem voluptatem voluptatem voluptate.', 1, 0, '2014-11-19 18:25:45', '2020-07-06 13:40:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 64, 64, 'Reprehenderit sint dolorem aliquam dignissimos dolores atque. Iste ut debitis voluptas cum repellendus magnam nemo. Itaque ut nam officiis qui esse eveniet laborum. Possimus cupiditate ut omnis quae non molestiae.', 1, 0, '2019-04-19 01:25:30', '2020-05-24 15:49:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 65, 65, 'Distinctio doloremque maiores temporibus eos mollitia atque et ipsam. Autem quam quisquam assumenda. Itaque facere est et consequatur.', 0, 0, '2014-03-20 00:57:09', '2019-08-14 11:42:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 66, 66, 'Iure nobis beatae unde magnam. Pariatur quasi rerum non officia. Facere autem at aut totam facilis et praesentium. Sint tenetur est dolores mollitia.', 0, 0, '2019-03-04 18:01:33', '2020-04-28 18:51:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 67, 67, 'Fugiat dolore commodi dolorem et molestiae voluptatibus. Sed quia distinctio quos sit.', 1, 0, '2012-02-27 12:50:55', '2020-05-12 17:23:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 68, 68, 'Voluptatem eaque nulla alias non cupiditate aspernatur iusto natus. Doloremque eligendi mollitia ut sequi rerum voluptatem. Nihil vel et et quasi excepturi sit.', 1, 0, '2017-12-18 07:52:53', '2019-12-07 03:18:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 69, 69, 'Odit ipsam suscipit aut. Repellendus aliquid non atque ipsam ducimus aliquid. Et ut saepe facere nam distinctio. Qui assumenda quis sed minima.', 0, 0, '2018-01-14 20:53:34', '2019-10-08 08:59:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 70, 70, 'Amet optio voluptatem voluptates sit facere odio itaque. Qui tempora commodi cumque quis sit laborum. Rerum quas voluptatum similique magnam ducimus.', 1, 0, '2013-07-04 06:00:36', '2020-05-22 21:08:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 71, 71, 'Et consequatur quisquam officiis quia debitis itaque cum. Labore repudiandae esse rerum et dolor. Omnis iure possimus ut eaque qui. Laudantium quis placeat et consequatur et eveniet. Ea provident velit ut repudiandae adipisci ut.', 1, 1, '2016-02-16 01:28:48', '2020-02-12 11:42:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 72, 72, 'Quibusdam sed ab nemo culpa dolorem. Minus qui quas aliquam autem nostrum quod quo. At ea distinctio ea quisquam ducimus dicta.', 0, 0, '2016-02-15 12:12:57', '2019-10-11 02:00:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 73, 73, 'Nemo minima ea error iure culpa possimus neque. Tenetur reprehenderit et non voluptatem aut veritatis accusantium. Aut magnam laborum nostrum repellendus laboriosam totam est. Suscipit eius accusantium dolor est voluptatem nobis expedita.', 0, 0, '2019-09-24 16:10:10', '2019-08-03 18:15:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 74, 74, 'Consequatur dolor adipisci qui quia commodi rem non qui. Deserunt asperiores quidem nihil ut aut placeat eius. Libero sapiente aut dolore eum quam inventore.', 1, 1, '2013-02-11 02:57:00', '2019-10-19 12:05:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 75, 75, 'Nobis autem a eaque. Ab ex assumenda sit quibusdam doloremque aut. Distinctio aut exercitationem sequi minima.', 0, 0, '2014-09-13 07:30:16', '2019-11-05 06:51:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 76, 76, 'Nobis necessitatibus ipsa ea animi voluptatem. Quisquam esse non consequatur. Beatae non distinctio aut id corrupti est. Vel veritatis ut accusamus sit corrupti quisquam.', 1, 0, '2015-10-18 07:46:59', '2019-09-18 05:20:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 77, 77, 'Aut dicta non sunt non facilis aspernatur praesentium blanditiis. Totam neque consequuntur ut consequatur quis libero. Repellendus aspernatur sapiente consequatur fuga. Quia corrupti omnis totam assumenda molestiae.', 1, 1, '2014-07-17 04:02:16', '2020-05-01 13:02:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 78, 78, 'Et quod quasi rerum ut occaecati debitis architecto reprehenderit. Ut necessitatibus voluptatem perspiciatis unde et ratione.', 0, 0, '2015-06-19 02:30:21', '2020-05-30 05:31:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 79, 79, 'Illum voluptatem doloremque eius omnis. Quaerat qui et qui quis. Non accusamus vel explicabo temporibus similique. Cumque libero qui dolore rerum nulla ut.', 0, 1, '2011-02-14 16:32:14', '2020-07-13 08:25:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 80, 80, 'Nostrum dolores eaque vero quia. Quibusdam fugiat hic dolor dolor possimus. Voluptatem vero et illum.', 1, 0, '2014-12-11 10:48:32', '2020-04-12 10:27:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 81, 81, 'Dolor labore fugiat aut quam. Ad dolore tempora vero architecto reprehenderit. Distinctio minima soluta autem ipsa consequuntur. Autem eos vitae dolores corporis provident debitis omnis.', 1, 0, '2010-10-04 23:49:59', '2020-02-16 02:16:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 82, 82, 'Dolor illum sit dolores eos qui nihil. Nostrum culpa modi qui voluptatem autem dolore repellat. Aut occaecati perspiciatis nulla amet. Quos soluta blanditiis omnis molestias at voluptates corrupti provident.', 0, 0, '2020-01-11 06:13:57', '2020-07-22 13:43:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 83, 83, 'Sed excepturi non iure omnis animi ut. Qui voluptatibus rerum officiis iste omnis. Blanditiis consequatur sunt aut et mollitia animi. Aut quasi tempora ducimus id blanditiis voluptas beatae saepe.', 0, 1, '2011-02-07 14:20:01', '2019-10-11 05:28:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 84, 84, 'Est eveniet qui sit vel id ut eum. Aut iure saepe sit qui similique. Quae nisi cumque recusandae dicta delectus rem. Et quasi quos eius ab.', 1, 1, '2019-09-24 13:22:59', '2019-09-02 06:18:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 85, 85, 'Nulla voluptate magnam dolorum eaque optio et nisi. Mollitia voluptas quod velit. Est voluptatem alias a culpa et et id. Iusto ea accusamus id ducimus dolorum similique.', 0, 0, '2012-08-06 16:57:43', '2019-09-06 19:33:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 86, 86, 'Iusto iste qui ex quod quis nemo rerum. Est unde neque ut animi dolor et qui labore. Nisi voluptates aut accusantium.', 1, 0, '2014-06-05 09:45:20', '2020-05-06 19:14:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 87, 87, 'Adipisci odio consequuntur et. Rerum ut fugit cupiditate sed delectus et quas. Saepe nesciunt quia doloribus quaerat assumenda velit. Non similique sunt eligendi tempora.', 1, 0, '2017-08-16 09:39:55', '2020-02-24 06:36:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 88, 88, 'Rerum dicta sit non nesciunt. Ipsa facere provident enim et illo non quae. Consequatur nihil dolores quaerat eligendi. Ad veniam quaerat voluptas ullam.', 0, 0, '2012-04-27 23:22:12', '2020-01-18 13:24:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 89, 89, 'Sed sequi adipisci praesentium eum similique quam. Blanditiis est non nihil aut expedita. Qui itaque autem error voluptatibus.', 1, 0, '2013-03-10 21:08:20', '2019-11-02 14:40:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 90, 90, 'Nam natus minima enim eum adipisci qui velit. Dicta nam dolorum eaque.', 1, 1, '2019-09-21 11:18:57', '2020-01-27 15:13:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 91, 91, 'Ut sequi aliquam rerum iure. Voluptas velit ut error repellendus qui. Vel neque voluptatem qui possimus quia autem soluta.', 1, 1, '2019-11-11 14:55:28', '2020-03-21 05:58:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 92, 92, 'Et magnam adipisci incidunt mollitia omnis ex illum. Suscipit nihil quae sed facere possimus nisi voluptatem. Ipsa quia vitae numquam aut tempore magni. Maiores repellendus molestiae exercitationem provident mollitia accusamus. Incidunt saepe sit debitis ex et ut.', 0, 0, '2019-12-19 21:12:07', '2019-08-25 13:50:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 93, 93, 'Ea pariatur quia vero rerum culpa non. Et enim eos dolorem illo dolorem deleniti delectus. Quidem a qui ducimus ab sapiente. Aut incidunt maxime beatae.', 1, 0, '2019-08-08 01:48:21', '2020-03-20 01:14:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 94, 94, 'Et dolor alias debitis suscipit veniam a earum. Quisquam at sequi quasi pariatur eligendi. Accusamus est qui totam in qui. Aut et doloremque architecto cum.', 0, 0, '2016-02-23 23:45:10', '2019-12-02 13:16:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 95, 95, 'Excepturi maiores harum labore. Vel deleniti ipsum tempora praesentium voluptatum dolor. Amet consectetur quidem ad fugiat eius repellat odit consequatur. Commodi dolorum quia totam sit in nihil aut.', 1, 1, '2016-07-05 18:40:43', '2020-01-04 04:36:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 96, 96, 'Sapiente tempora nostrum odit et tempora. Optio non vero et eum est. Provident dolores minus voluptas non non. Debitis repellat veritatis aut ea laborum a eos.', 0, 0, '2014-12-30 19:33:19', '2020-06-27 20:00:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 97, 97, 'Rerum unde eum adipisci qui itaque laudantium vero quis. Consectetur quod placeat corporis quia debitis et. Qui aut illo praesentium dolorem sapiente quas praesentium. Quis sit at deserunt maxime sunt officiis.', 1, 0, '2020-01-11 03:17:25', '2020-07-21 17:56:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 98, 98, 'Quaerat amet aut assumenda animi. Dicta odio beatae recusandae sit. Quisquam in voluptatem dolor illo ullam et enim.', 0, 0, '2020-06-06 20:19:43', '2020-01-12 17:23:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 99, 99, 'Eum quia ipsam perspiciatis id sunt omnis omnis. Quos et sed pariatur cupiditate. Sint et in iusto quis.', 1, 0, '2012-12-10 04:25:12', '2019-10-06 19:45:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 100, 100, 'Nihil qui voluptas expedita dignissimos. Fugiat ea delectus excepturi magni dolore. Laboriosam eaque dolorem nobis quia voluptatum ipsam qui veniam. Aperiam et accusantium consectetur minus nihil fugiat.', 0, 0, '2018-01-16 09:58:46', '2019-09-10 14:44:53');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, '\"', '1989-10-28', 5, 'Daughertyfurt', 'Zimbabwe', '2011-11-05 22:11:03', '2011-10-16 18:33:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, '\"', '2019-12-26', 4, 'Gradyfurt', 'Liechtenstein', '2018-08-16 20:14:56', '2016-08-21 05:52:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, '\"', '1987-07-05', 4, 'Port Chancechester', 'Mexico', '2013-03-11 10:56:02', '2011-10-31 01:03:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, '\"', '2006-02-06', 7, 'Ondrickaburgh', 'Seychelles', '2016-08-06 07:46:18', '2012-04-12 20:42:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, '\"', '2000-11-10', 8, 'Pourosmouth', 'Qatar', '2013-08-30 08:12:48', '2016-03-30 14:30:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, '\"', '2007-07-15', 1, 'Rickyshire', 'Poland', '2010-11-27 07:46:52', '2015-03-09 11:15:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, '\"', '2005-07-26', 5, 'East Marshallmouth', 'Hong Kong', '2014-05-26 15:59:11', '2012-10-03 21:56:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, '\"', '1982-04-30', 3, 'Port Malinda', 'Monaco', '2011-08-12 02:22:20', '2014-12-19 11:41:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, '\"', '2016-02-27', 2, 'East Estebanburgh', 'Croatia', '2020-03-07 16:41:33', '2012-06-05 02:04:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, '\"', '1988-06-17', 3, 'Lake Madgefort', 'Bangladesh', '2011-08-16 17:02:24', '2016-12-09 14:31:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, '\"', '1991-12-03', 7, 'Karleefort', 'Swaziland', '2015-12-02 03:59:23', '2016-07-28 17:45:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, '\"', '1994-04-06', 3, 'Loyalberg', 'Turkey', '2014-10-22 15:34:14', '2011-03-28 07:03:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, '\"', '1999-10-13', 1, 'Domenicaborough', 'Suriname', '2015-09-08 04:12:15', '2011-08-15 20:51:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, '\"', '1991-07-18', 8, 'New Dino', 'Australia', '2017-11-16 09:34:46', '2016-03-04 05:08:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, '\"', '2020-04-28', 8, 'South Annaliseborough', 'Azerbaijan', '2013-09-05 02:33:43', '2014-11-11 06:01:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, '\"', '1990-03-17', 1, 'West Eliezer', 'Saint Pierre and Miquelon', '2016-10-03 20:46:14', '2016-12-18 06:30:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, '\"', '1979-05-14', 7, 'New Kaitlyn', 'Slovakia (Slovak Republic)', '2016-07-16 05:25:20', '2020-05-20 11:20:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, '\"', '1999-05-23', 6, 'Turnerfort', 'Guinea-Bissau', '2011-04-29 16:25:53', '2018-07-12 00:29:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, '\"', '1979-04-02', 3, 'Lake Pamela', 'Ethiopia', '2016-07-15 04:01:04', '2010-09-12 13:27:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, '\"', '2018-12-27', 9, 'North Maryam', 'Wallis and Futuna', '2010-08-16 10:07:12', '2014-10-27 23:07:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, '\"', '2006-12-07', 7, 'Bernhardburgh', 'Qatar', '2017-03-15 22:11:23', '2015-07-28 05:10:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, '\"', '2008-06-05', 3, 'Hoppeshire', 'Spain', '2017-03-16 22:22:14', '2019-03-26 05:27:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, '\"', '2014-02-15', 9, 'Millerview', 'Georgia', '2018-08-12 08:19:11', '2014-05-09 02:59:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, '\"', '2015-02-23', 8, 'O\'Connertown', 'Isle of Man', '2016-02-03 06:34:46', '2014-07-14 20:20:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, '\"', '2001-09-21', 1, 'Loychester', 'Netherlands', '2011-11-28 06:22:25', '2019-04-24 16:55:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, '\"', '1982-09-18', 1, 'New Jaronmouth', 'Chile', '2020-07-08 10:50:11', '2015-03-21 22:23:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, '\"', '1979-10-19', 9, 'Breitenbergport', 'Mauritius', '2011-04-15 21:10:58', '2016-12-07 18:36:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, '\"', '2015-08-22', 5, 'Port Jules', 'Chad', '2018-12-12 14:00:48', '2015-02-25 17:10:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, '\"', '2012-08-24', 2, 'East Nyasia', 'Christmas Island', '2012-05-23 12:17:21', '2017-01-10 14:30:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, '\"', '1986-02-14', 8, 'East Darrelltown', 'Puerto Rico', '2012-06-04 09:38:13', '2019-03-07 07:15:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, '\"', '1976-05-31', 1, 'New Burniceshire', 'Albania', '2018-07-14 20:44:01', '2017-12-14 13:23:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, '\"', '1975-05-15', 4, 'Oletaside', 'Belize', '2014-01-28 05:27:40', '2019-12-14 08:16:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, '\"', '2010-12-06', 3, 'Hermistonview', 'Israel', '2010-09-25 12:17:37', '2014-01-22 09:51:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, '\"', '1971-01-10', 3, 'New Novella', 'Qatar', '2013-10-27 05:55:23', '2014-10-23 16:53:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, '\"', '2000-11-02', 5, 'North Josiestad', 'South Georgia and the South Sandwich Islands', '2017-09-16 05:44:02', '2017-04-19 13:10:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, '\"', '1983-04-08', 6, 'South Modesto', 'American Samoa', '2020-03-06 05:12:51', '2015-05-14 14:49:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, '\"', '2005-08-26', 5, 'South Arvidhaven', 'Afghanistan', '2014-10-08 02:02:41', '2020-07-14 11:51:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, '\"', '1984-08-26', 1, 'Joeyport', 'Armenia', '2017-10-08 23:02:28', '2017-04-09 17:54:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, '\"', '2003-05-30', 5, 'North Moniqueside', 'Honduras', '2013-08-09 12:02:06', '2017-12-25 15:03:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, '\"', '2019-07-12', 3, 'Townetown', 'New Caledonia', '2015-04-21 23:40:46', '2015-12-20 15:50:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, '\"', '1998-09-30', 7, 'Myrticeport', 'Somalia', '2016-01-28 00:06:17', '2017-02-24 08:57:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, '\"', '2014-08-02', 3, 'New Ruthieburgh', 'Afghanistan', '2017-06-13 17:24:59', '2019-10-21 16:00:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, '\"', '1980-10-17', 9, 'Lake Rosemariebury', 'Norway', '2014-06-02 19:12:09', '2013-09-13 14:28:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, '\"', '1984-01-16', 3, 'Port Kassandraville', 'Guinea', '2019-09-30 04:07:10', '2018-02-04 17:55:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, '\"', '1972-10-18', 4, 'South Mialand', 'Switzerland', '2011-06-23 14:33:14', '2017-02-24 02:06:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, '\"', '2000-06-30', 9, 'Hacketthaven', 'Serbia', '2019-08-04 17:16:34', '2016-08-29 06:29:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, '\"', '2003-05-02', 7, 'Reinaborough', 'Niue', '2015-06-18 11:43:16', '2012-09-26 00:02:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, '\"', '2003-11-13', 9, 'Port Jefferey', 'Timor-Leste', '2011-11-20 21:58:24', '2019-04-23 03:26:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, '\"', '1994-08-06', 4, 'New Lydashire', 'Azerbaijan', '2019-03-13 13:56:58', '2013-10-31 11:08:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, '\"', '2013-07-10', 1, 'Port Hannah', 'Myanmar', '2017-02-07 18:13:21', '2013-05-12 11:39:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, '\"', '2019-08-21', 4, 'Schneiderfurt', 'Bolivia', '2017-05-20 05:16:27', '2010-11-04 23:37:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, '\"', '1970-05-03', 2, 'Odiechester', 'Taiwan', '2018-11-20 23:03:00', '2011-04-23 14:32:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, '\"', '2011-08-24', 2, 'Lake Rosina', 'Guam', '2018-10-10 03:35:55', '2019-02-17 18:27:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, '\"', '1994-09-26', 1, 'Greenbury', 'Israel', '2016-07-31 17:34:46', '2015-02-13 21:25:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, '\"', '1971-12-20', 1, 'West Vito', 'Croatia', '2016-10-05 16:04:27', '2018-10-09 02:40:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, '\"', '1990-09-02', 6, 'Gwenstad', 'China', '2017-10-22 14:16:50', '2012-10-27 01:04:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, '\"', '1998-04-24', 7, 'Willyton', 'Nepal', '2017-06-07 16:50:17', '2014-01-11 19:30:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, '\"', '2004-08-05', 9, 'Pamelaberg', 'Greece', '2018-09-10 00:02:29', '2020-05-11 11:57:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, '\"', '1975-01-06', 6, 'East April', 'Niue', '2014-08-02 00:25:05', '2010-09-30 01:51:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, '\"', '1985-08-19', 9, 'Ryleyville', 'Norfolk Island', '2018-04-21 15:48:22', '2012-08-12 23:19:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, '\"', '2011-09-05', 3, 'New Jacechester', 'Swaziland', '2019-05-13 07:48:27', '2016-08-11 13:20:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, '\"', '2012-06-22', 4, 'East Reanna', 'Uganda', '2012-09-17 07:12:26', '2013-10-14 10:28:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, '\"', '2008-11-04', 4, 'West Carlie', 'France', '2013-07-31 20:19:49', '2018-12-01 10:33:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, '\"', '2015-11-07', 8, 'Port Maritzachester', 'Qatar', '2011-01-15 05:18:01', '2012-02-07 10:17:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, '\"', '1997-07-17', 4, 'Kertzmannland', 'Latvia', '2013-07-09 01:47:19', '2019-07-16 21:12:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, '\"', '1983-01-21', 7, 'Kendrickmouth', 'Lao People\'s Democratic Republic', '2011-02-06 06:01:40', '2020-05-18 01:53:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, '\"', '1999-09-01', 1, 'Jodiemouth', 'Portugal', '2014-01-13 20:33:55', '2015-08-24 16:29:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, '\"', '1980-12-31', 2, 'Lake Taylormouth', 'Cook Islands', '2020-05-18 00:33:18', '2019-12-14 02:33:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, '\"', '1972-11-29', 2, 'Port Matilde', 'Guinea-Bissau', '2017-06-24 09:53:34', '2014-09-06 23:19:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, '\"', '1978-12-26', 4, 'Hellershire', 'Uruguay', '2019-04-06 17:37:06', '2017-09-21 03:16:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, '\"', '2012-03-04', 7, 'South Rebecaberg', 'Luxembourg', '2015-07-20 14:29:22', '2015-06-16 22:01:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, '\"', '2015-10-25', 2, 'Camronville', 'Ethiopia', '2016-05-03 10:48:39', '2018-10-11 20:38:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, '\"', '1977-08-28', 8, 'Kelsiefurt', 'Peru', '2017-04-28 07:24:14', '2011-04-01 19:21:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, '\"', '2016-05-12', 4, 'Mertztown', 'United States of America', '2019-03-05 08:40:28', '2011-11-15 10:45:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, '\"', '2009-03-11', 4, 'Lake Gladys', 'Central African Republic', '2013-04-19 16:26:27', '2013-05-08 10:00:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, '\"', '2019-04-08', 7, 'Volkmanhaven', 'Honduras', '2017-12-22 21:41:23', '2020-01-30 12:11:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, '\"', '2019-05-18', 7, 'North Ladariusport', 'Malta', '2013-04-20 06:02:09', '2012-11-20 14:03:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, '\"', '1983-02-28', 9, 'New Dameonside', 'Burundi', '2012-02-07 23:22:01', '2015-08-16 13:35:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, '\"', '2019-03-26', 9, 'New Leslyfort', 'Kenya', '2011-02-09 10:05:51', '2014-10-20 01:01:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, '\"', '1978-09-17', 3, 'Tremblayport', 'Montserrat', '2011-05-22 18:26:57', '2015-03-29 05:30:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, '\"', '2020-06-29', 5, 'South Adaline', 'New Caledonia', '2011-03-20 02:37:19', '2014-03-23 18:17:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, '\"', '2008-10-05', 3, 'Treyville', 'Nauru', '2010-08-23 06:45:14', '2015-07-11 07:24:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, '\"', '2003-05-28', 4, 'Angelmouth', 'Germany', '2011-10-08 17:40:05', '2018-05-13 04:30:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, '\"', '1972-10-09', 4, 'New Eusebio', 'Italy', '2011-11-08 10:35:36', '2019-07-01 03:15:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, '\"', '1984-06-08', 5, 'Marquardtborough', 'Slovakia (Slovak Republic)', '2012-09-07 22:08:15', '2013-11-26 04:10:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, '\"', '1991-06-19', 7, 'North Rafaela', 'Burundi', '2015-09-06 07:04:26', '2014-09-09 20:36:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, '\"', '2017-04-28', 4, 'West Thad', 'Libyan Arab Jamahiriya', '2013-05-15 17:28:55', '2014-03-07 07:41:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, '\"', '1981-08-16', 6, 'Helenchester', 'Svalbard & Jan Mayen Islands', '2015-08-17 07:21:05', '2015-04-26 01:28:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, '\"', '2019-11-01', 5, 'Edisonbury', 'Germany', '2012-07-08 16:02:41', '2011-11-02 21:53:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, '\"', '2003-01-04', 5, 'West Minervamouth', 'Andorra', '2019-08-30 14:02:24', '2012-08-21 07:50:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, '\"', '2009-09-30', 8, 'South Markhaven', 'Bhutan', '2013-04-22 06:36:21', '2012-06-08 18:28:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, '\"', '1994-07-27', 2, 'Hammesbury', 'Antigua and Barbuda', '2015-12-14 23:57:35', '2014-02-03 00:04:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, '\"', '1993-07-24', 4, 'West Hadleyborough', 'South Africa', '2012-02-15 18:52:48', '2018-02-16 05:00:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, '\"', '2004-03-02', 9, 'Farrellfurt', 'Dominica', '2015-07-26 05:42:53', '2010-08-25 21:34:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, '\"', '2004-09-03', 3, 'Juneville', 'Anguilla', '2017-09-01 19:20:39', '2015-01-30 13:23:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, '\"', '1990-11-11', 5, 'New Maceyview', 'Colombia', '2015-05-24 22:54:43', '2018-10-05 04:48:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, '\"', '2005-12-24', 3, 'Muellerhaven', 'Czech Republic', '2013-09-18 18:37:45', '2017-09-29 17:31:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, '\"', '1985-11-13', 2, 'West Mossiechester', 'Belarus', '2015-02-12 18:35:21', '2013-02-25 14:38:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, '\"', '1970-04-23', 3, 'Langfurt', 'Costa Rica', '2013-02-24 00:43:36', '2012-09-01 03:36:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, '\"', '2011-08-25', 9, 'Baronbury', 'Botswana', '2020-01-03 12:06:45', '2011-08-05 04:31:35');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Otilia', 'Daugherty', 'zlarkin@example.net', '815-437-6362x360', '2013-09-21 01:00:08', '2014-09-28 20:21:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Cordia', 'Schulist', 'arvel17@example.net', '(743)428-3661', '2012-03-18 03:55:21', '2011-12-31 19:32:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Zetta', 'Braun', 'claude23@example.net', '(379)300-6990x2737', '2015-09-20 13:03:04', '2017-04-01 20:40:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Jaeden', 'Lakin', 'walter.ariel@example.org', '096-084-7777x38452', '2014-02-19 12:06:54', '2015-02-14 10:04:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Isac', 'Ratke', 'adella.conroy@example.net', '532.662.6610x14902', '2014-10-27 03:16:27', '2020-02-16 19:58:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Mustafa', 'Powlowski', 'karlee.powlowski@example.org', '1-786-170-2227x1059', '2017-03-28 11:53:17', '2019-11-27 04:54:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Geoffrey', 'Bins', 'zulauf.javon@example.net', '549.829.4788x8831', '2010-11-12 14:19:44', '2018-10-14 07:22:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Abagail', 'Dach', 'herzog.jarrett@example.net', '(729)789-2633x772', '2013-10-25 18:43:31', '2014-08-31 19:55:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Estefania', 'Kilback', 'aframi@example.com', '844-603-7123x12127', '2017-09-28 19:29:42', '2011-02-11 06:34:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Jason', 'Considine', 'logan.barton@example.net', '1-588-387-3726x7016', '2015-12-11 14:57:58', '2014-05-15 17:43:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Presley', 'Sawayn', 'zluettgen@example.net', '1-746-345-3656x8709', '2017-12-07 03:51:22', '2011-06-24 23:41:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Hope', 'Grimes', 'gnienow@example.org', '+75(9)5207123660', '2016-06-17 00:15:31', '2020-03-18 23:02:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Providenci', 'Langosh', 'mac83@example.org', '1-386-013-0652x789', '2014-07-08 20:16:48', '2013-10-25 02:09:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Wilhelmine', 'Feeney', 'elijah61@example.com', '287.818.5191x342', '2012-07-11 15:05:49', '2010-08-21 19:35:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Aileen', 'Grant', 'abigail.daugherty@example.com', '244.721.4070x07066', '2010-10-19 09:59:27', '2014-03-09 15:50:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Bertha', 'Sporer', 'gwest@example.com', '902-502-8056', '2014-08-31 15:39:23', '2020-04-14 12:55:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Lavonne', 'Mueller', 'itorp@example.org', '02598390265', '2012-11-24 23:55:57', '2016-11-01 05:44:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Rebeka', 'Langosh', 'heathcote.peyton@example.net', '03462228370', '2010-09-29 10:09:27', '2015-02-18 12:36:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Jaden', 'Ziemann', 'elwyn.von@example.net', '+19(5)0923242411', '2014-12-29 13:05:34', '2013-12-29 23:10:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Brice', 'Legros', 'delphia.sipes@example.net', '(380)481-2368x4612', '2012-07-08 17:37:16', '2018-07-01 00:40:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Adam', 'Maggio', 'prosacco.herminio@example.org', '182.726.7055x886', '2012-06-06 14:00:11', '2016-04-30 18:52:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Kaylin', 'Friesen', 'brennon70@example.org', '764-667-4862', '2017-04-15 07:48:30', '2016-03-07 10:34:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Isadore', 'O\'Kon', 'tyrell56@example.net', '1-284-531-9081x8427', '2010-08-10 21:32:14', '2016-04-20 16:05:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Jaclyn', 'Littel', 'fisher.domenick@example.org', '481.167.5353x54260', '2011-09-14 03:59:39', '2014-11-27 04:19:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Jovany', 'Dickens', 'umante@example.net', '579.319.4843x8889', '2019-08-06 09:53:05', '2019-01-30 15:12:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Harmony', 'Johnson', 'tressie.ratke@example.net', '008-112-1396x459', '2011-07-25 04:48:38', '2014-06-17 12:07:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Blaze', 'Barrows', 'zlarkin@example.org', '1-802-642-0077x88847', '2016-12-09 08:34:17', '2018-04-05 00:33:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Tito', 'Rempel', 'kuhic.jasmin@example.net', '1-106-853-9624x1333', '2012-05-30 05:57:39', '2020-06-04 03:36:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Gisselle', 'Koch', 'yhermann@example.com', '(681)175-1945', '2018-04-09 07:51:05', '2014-03-01 10:24:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Kellen', 'Robel', 'alphonso18@example.org', '1-191-167-5054x88080', '2017-05-11 09:06:51', '2012-08-22 06:51:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Lorna', 'Schuppe', 'margret.beier@example.com', '800.409.6995x547', '2019-01-27 09:28:18', '2017-01-01 10:20:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Malika', 'Cassin', 'crooks.virginia@example.org', '(314)153-3092x25820', '2017-01-08 17:09:42', '2019-06-15 15:27:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Wilhelmine', 'Schuppe', 'jerad.hettinger@example.com', '1-560-404-1872x5932', '2013-07-28 09:49:57', '2018-04-08 22:50:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Amos', 'Aufderhar', 'moore.roxanne@example.org', '1-994-973-0775', '2015-07-02 06:05:42', '2015-10-17 22:54:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Delaney', 'Fahey', 'orutherford@example.com', '744.544.9739x600', '2019-03-26 18:05:57', '2012-04-12 08:36:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Johan', 'Hoppe', 'cayla.kerluke@example.org', '910-943-1856', '2011-06-22 10:58:57', '2018-04-24 01:46:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Thelma', 'Raynor', 'freddie.kulas@example.com', '07090159549', '2010-12-04 12:07:07', '2018-11-03 06:50:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Olen', 'Ortiz', 'morissette.jeromy@example.net', '04515042504', '2016-07-24 03:34:54', '2011-10-15 16:31:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Peyton', 'Rohan', 'ahyatt@example.org', '027-529-7613x583', '2016-04-30 12:55:04', '2013-09-13 12:17:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Norberto', 'Lehner', 'leilani73@example.net', '(970)329-2763', '2013-04-25 06:15:11', '2020-03-15 08:21:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Velva', 'Kuhn', 'mills.marina@example.com', '1-882-214-0792', '2012-10-02 05:13:48', '2014-02-28 19:00:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Hillary', 'Pollich', 'selena03@example.net', '341-272-1999x3534', '2011-02-19 19:24:05', '2017-12-25 03:08:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Jaiden', 'Lehner', 'kaela.satterfield@example.net', '631.753.5609', '2015-03-25 12:21:03', '2017-11-04 00:10:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Jake', 'Bogisich', 'ferry.eldridge@example.com', '1-312-546-1197x152', '2012-09-16 06:35:43', '2016-09-11 10:12:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Gonzalo', 'Ernser', 'mathew54@example.org', '801.683.4784', '2017-10-19 19:24:33', '2015-12-22 04:25:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Eric', 'Ledner', 'zena66@example.org', '(882)563-4189x1978', '2019-08-21 18:50:39', '2019-01-11 23:39:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Eloise', 'Stiedemann', 'smclaughlin@example.com', '(943)194-8150x85707', '2017-03-23 08:01:38', '2016-06-24 11:49:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Bethany', 'Howell', 'khettinger@example.com', '038.188.8278', '2019-08-29 09:34:13', '2011-11-23 16:05:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Hudson', 'Christiansen', 'ulittle@example.net', '(184)997-3904', '2018-01-02 17:43:25', '2020-07-22 23:10:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Laurianne', 'Wuckert', 'patricia74@example.org', '(295)036-2961', '2014-11-13 07:42:41', '2013-06-05 05:56:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Angie', 'Kuhlman', 'zgusikowski@example.com', '679-084-8906x955', '2013-02-18 11:15:20', '2013-08-27 07:55:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Duncan', 'Rau', 'bbashirian@example.com', '(225)326-3688', '2012-12-26 09:39:49', '2018-04-21 21:08:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Trycia', 'Metz', 'mpagac@example.com', '609.127.4309x7447', '2011-03-18 17:00:56', '2018-12-14 06:02:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Norwood', 'Hudson', 'ggutkowski@example.org', '(663)937-9181x3878', '2019-07-14 07:53:19', '2014-02-23 19:16:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Bo', 'Mueller', 'jazmyn.ziemann@example.org', '+53(1)9750327824', '2016-09-18 04:28:14', '2016-09-30 15:03:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Seamus', 'Ledner', 'leola57@example.com', '223-885-8644', '2015-12-08 15:54:17', '2017-03-19 00:47:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Alphonso', 'Jacobson', 'lbashirian@example.org', '381.108.4025x412', '2016-04-23 13:01:13', '2012-08-10 00:49:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Hilma', 'Stracke', 'gottlieb.jocelyn@example.org', '1-014-740-6238', '2012-03-24 17:04:22', '2019-12-04 00:39:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Jefferey', 'Zemlak', 'oswald.mante@example.com', '140.494.5924x3635', '2019-09-26 18:21:54', '2012-07-08 20:40:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Talia', 'Rau', 'mosciski.brionna@example.net', '1-529-467-7374x3737', '2011-07-30 09:32:39', '2013-02-20 01:05:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Manuela', 'Becker', 'brain66@example.org', '936-169-3470x8679', '2018-10-13 16:48:42', '2017-02-26 00:58:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Garret', 'Schneider', 'ceasar63@example.org', '04078450102', '2011-03-08 00:05:52', '2017-03-29 17:57:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Katharina', 'VonRueden', 'sister.hilll@example.com', '+81(4)5876950376', '2016-04-13 11:26:13', '2014-06-26 09:26:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Diego', 'Bode', 'gusikowski.aileen@example.org', '1-169-613-3788x9271', '2014-08-23 09:54:48', '2014-10-06 03:24:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Elijah', 'Spencer', 'green.rosie@example.net', '(848)416-4499x36110', '2017-04-08 05:56:34', '2018-09-09 00:19:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Nellie', 'Wintheiser', 'rhiannon.glover@example.net', '1-387-742-1085', '2012-11-20 08:06:54', '2015-04-26 12:58:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Verda', 'Jones', 'brooke87@example.net', '1-494-086-7543x33378', '2020-03-09 02:33:42', '2012-11-14 22:54:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Zena', 'Stamm', 'maymie.hamill@example.net', '464.907.7429', '2012-05-03 02:50:13', '2017-12-28 12:32:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Niko', 'Parisian', 'dschneider@example.org', '(705)643-4716', '2011-11-04 01:30:10', '2011-03-08 22:05:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Jamaal', 'Durgan', 'monty34@example.com', '031-825-1083x774', '2014-01-30 00:29:14', '2016-07-14 03:10:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Wilfrid', 'Hickle', 'sid.goyette@example.com', '445.080.8664', '2013-10-03 15:06:32', '2015-12-18 17:51:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Clara', 'Upton', 'fay.robin@example.com', '626-909-6402x4487', '2014-09-26 05:37:30', '2011-08-05 15:26:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Ross', 'Schaefer', 'ramon.rutherford@example.org', '1-551-371-7490x45988', '2014-02-02 10:56:29', '2018-07-13 16:08:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Verda', 'Connelly', 'kuhic.ena@example.net', '140.403.8649', '2013-07-01 18:26:26', '2018-03-09 08:47:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Flavio', 'Toy', 'frunolfsson@example.com', '324-460-3823x4101', '2015-06-09 10:22:32', '2018-06-27 23:00:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Josefa', 'Parker', 'arvid47@example.org', '052-647-9509x57894', '2016-09-02 01:58:04', '2014-10-31 03:48:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Gerald', 'Dietrich', 'trenton.steuber@example.com', '721-731-1972', '2013-03-09 21:09:23', '2013-09-10 23:42:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Macie', 'Hudson', 'annie.bernhard@example.net', '1-479-620-3091x621', '2019-01-31 03:43:43', '2012-05-12 20:13:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Juanita', 'Davis', 'bryon.raynor@example.com', '07775820037', '2013-05-24 22:11:32', '2011-03-02 08:53:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Zechariah', 'Skiles', 'joelle34@example.com', '+83(6)4374177917', '2016-08-04 22:52:20', '2018-05-12 14:00:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Milan', 'Mohr', 'ehowe@example.com', '02838017277', '2018-08-27 23:32:33', '2016-09-10 21:11:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Estevan', 'Hahn', 'jmorar@example.net', '+54(0)0596833541', '2013-11-09 16:32:22', '2019-06-20 04:33:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Margarett', 'Treutel', 'kozey.camden@example.com', '(386)678-1952', '2016-03-13 21:38:54', '2010-08-13 17:59:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Raegan', 'Toy', 'deonte04@example.net', '06367219882', '2014-07-16 02:48:00', '2020-03-31 12:12:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Stephania', 'Toy', 'anastasia99@example.net', '497.694.1644x3744', '2016-10-31 23:53:11', '2017-08-31 13:02:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Gilberto', 'Toy', 'lou.bins@example.net', '1-534-101-6854x7689', '2016-04-10 08:17:35', '2011-05-20 10:37:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Gerard', 'Maggio', 'nathan.kessler@example.com', '1-275-395-1268x6585', '2017-10-09 03:49:38', '2016-09-09 06:04:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Alyson', 'Labadie', 'lura.dicki@example.org', '412-177-3177', '2015-09-11 07:06:00', '2019-07-05 16:42:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Wanda', 'Ortiz', 'salvador.schmitt@example.com', '(035)096-4720', '2014-04-26 03:39:03', '2017-11-04 17:55:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Roel', 'Schmitt', 'dillon.yundt@example.org', '696.865.8824x5003', '2012-07-29 17:00:03', '2012-10-15 10:04:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Elinor', 'Jones', 'wolff.lorna@example.com', '422.848.3869', '2018-06-24 22:18:00', '2012-11-14 17:28:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Elmer', 'Rosenbaum', 'ari30@example.com', '690-092-9741x927', '2019-05-01 12:18:36', '2019-06-03 00:24:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Jaeden', 'Shields', 'dherzog@example.net', '+84(5)5061034373', '2014-06-23 19:04:18', '2015-01-03 09:12:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Moises', 'Christiansen', 'romaguera.myrna@example.com', '+69(5)1679916141', '2017-07-11 19:58:37', '2014-07-10 00:52:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Rosetta', 'O\'Hara', 'bernhard.virgie@example.org', '(004)597-1221x81351', '2016-07-15 00:11:20', '2018-11-16 07:21:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Marlene', 'Turner', 'bartell.raven@example.com', '1-910-027-3387x532', '2017-05-17 23:19:34', '2017-07-27 22:37:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Obie', 'Hessel', 'weimann.terrill@example.org', '009-977-2440x8043', '2011-12-24 09:59:27', '2014-07-26 04:45:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Chaz', 'Hilll', 'joan98@example.net', '(327)049-5901', '2012-03-04 19:04:08', '2015-04-13 14:53:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Gerald', 'Emmerich', 'cade.gleason@example.org', '1-925-380-8709', '2019-04-29 14:10:11', '2019-11-22 13:31:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Roxane', 'Swift', 'koelpin.garnet@example.net', '09618005577', '2011-05-20 10:15:36', '2015-08-09 12:50:55');


