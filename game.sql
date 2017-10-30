-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u5
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 11 2016 г., 09:27
-- Версия сервера: 5.5.49
-- Версия PHP: 5.4.45-0+deb7u4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `game`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authlog`
--

CREATE TABLE IF NOT EXISTS `authlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `city` text NOT NULL,
  `country` text NOT NULL,
  `code` text NOT NULL,
  `datetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Дамп данных таблицы `authlog`
--

INSERT INTO `authlog` (`id`, `user`, `ip`, `city`, `country`, `code`, `datetime`, `status`, `password`) VALUES
(1, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-24 10:26:01', 1, 'svr24host22'),
(2, 5, '178.121.185.66', 'Минск', 'Беларусь', 'BY', '2016-07-24 12:24:43', 1, '4579048'),
(3, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-24 12:39:59', 1, 'svr24host22'),
(4, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-24 13:18:01', 1, 'svr24host22'),
(5, 2, '31.8.226.156', 'Нижний Уфалей', 'Россия', 'RU', '2016-07-30 17:14:37', 1, '13240000'),
(6, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-30 17:15:05', 1, 'svr24host22'),
(7, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-30 18:28:52', 2, 'NONE'),
(8, 2, '31.8.233.255', 'Белорецк', 'Россия', 'RU', '2016-07-30 20:06:34', 1, '13240000'),
(9, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-30 20:06:36', 1, 'svr24host22'),
(10, 6, '217.174.237.34', 'Мары', 'Туркмения', 'TM', '2016-07-31 05:24:12', 1, 'qwerty'),
(11, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 06:55:22', 1, 'svr24host22'),
(12, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 07:08:17', 2, 'NONE'),
(13, 8, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 07:39:25', 1, 'server24host22'),
(14, 8, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 07:40:10', 2, 'NONE'),
(15, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 07:56:28', 0, 'svr24host22'),
(16, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 07:56:35', 0, 'svr24host22'),
(17, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 07:56:50', 0, 'svr24host22'),
(18, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 07:56:54', 0, 'svr24host'),
(19, 4, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 08:00:57', 1, '1469951878'),
(20, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 08:02:01', 1, 'svr24host22'),
(21, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 09:02:25', 1, 'svr24host22'),
(22, 0, '37.45.175.222', 'Минск', 'Беларусь', 'BY', '2016-07-31 10:36:29', 0, '4579048'),
(23, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 10:57:36', 2, 'NONE'),
(24, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 10:57:53', 1, 'svr24host22'),
(25, 9, '37.45.175.222', 'Минск', 'Беларусь', 'BY', '2016-07-31 11:46:01', 1, '4579048'),
(26, 9, '37.45.175.222', 'Минск', 'Беларусь', 'BY', '2016-07-31 12:01:48', 2, 'NONE'),
(27, 9, '37.45.175.222', 'Минск', 'Беларусь', 'BY', '2016-07-31 12:01:55', 1, '4579048'),
(28, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 12:32:13', 2, 'NONE'),
(29, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 12:32:21', 1, 'svr24host22'),
(30, 0, '31.8.51.185', 'Приютово', 'Россия', 'RU', '2016-07-31 12:33:12', 0, '13240000'),
(31, 10, '31.8.51.185', 'Приютово', 'Россия', 'RU', '2016-07-31 12:33:41', 1, '13240000'),
(32, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 12:40:38', 2, 'NONE'),
(33, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 12:42:55', 1, 'svr24host22'),
(34, 9, '37.45.175.222', 'Минск', 'Беларусь', 'BY', '2016-07-31 12:45:55', 1, '4579048'),
(35, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 13:26:02', 2, 'NONE'),
(36, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 13:26:47', 1, 'svr24host22'),
(37, 0, '45.32.151.104', 'Париж', 'Франция', 'FR', '2016-07-31 18:23:29', 0, 'qwerty'),
(38, 11, '45.32.151.104', 'Париж', 'Франция', 'FR', '2016-07-31 18:24:04', 1, 'qwerty'),
(39, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-07-31 19:08:10', 1, 'svr24host22'),
(40, 10, '31.8.214.246', 'Уфа', 'Россия', 'RU', '2016-07-31 19:16:49', 1, '13240000'),
(41, 11, '45.32.151.104', 'Париж', 'Франция', 'FR', '2016-08-01 04:00:19', 1, 'qwerty'),
(42, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-01 06:35:30', 1, 'svr24host22'),
(43, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-01 06:35:38', 2, 'NONE'),
(44, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-01 07:27:36', 1, 'svr24host22'),
(45, 9, '37.45.168.222', 'Минск', 'Беларусь', 'BY', '2016-08-01 09:49:22', 1, '4579048'),
(46, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-01 10:09:38', 1, 'svr24host22'),
(47, 10, '31.8.214.246', 'Уфа', 'Россия', 'RU', '2016-08-01 10:11:20', 1, '13240000'),
(48, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-01 10:19:24', 2, 'NONE'),
(49, 12, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-01 10:20:09', 1, 'nikitosnikitos22'),
(50, 10, '31.8.214.246', 'Уфа', 'Россия', 'RU', '2016-08-01 10:24:14', 2, 'NONE'),
(51, 10, '31.8.214.246', 'Уфа', 'Россия', 'RU', '2016-08-01 10:25:32', 1, '13240000'),
(52, 12, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-01 10:27:24', 2, 'NONE'),
(53, 9, '37.45.168.222', 'Минск', 'Беларусь', 'BY', '2016-08-01 14:11:26', 1, '4579048'),
(54, 14, '213.167.211.199', 'Гусь-Хрустальный', 'Россия', 'RU', '2016-08-01 20:40:50', 1, 'kirill89'),
(55, 15, '130.180.209.160', 'Днепродзержинск', 'Украина', 'UA', '2016-08-01 23:51:35', 1, 'yadrik2015'),
(56, 14, '213.167.211.199', 'Гусь-Хрустальный', 'Россия', 'RU', '2016-08-02 06:47:05', 1, 'kirill89'),
(57, 0, '217.174.237.10', 'Ашхабад', 'Туркмения', 'TM', '2016-08-02 07:35:33', 0, 'qwerty'),
(58, 14, '213.167.211.199', 'Гусь-Хрустальный', 'Россия', 'RU', '2016-08-02 09:50:31', 1, 'kirill89'),
(59, 16, '178.72.161.205', 'Ереван', 'Армения', 'AM', '2016-08-02 11:52:31', 1, '102030'),
(60, 17, '89.237.37.179', 'Новотроицк', 'Россия', 'RU', '2016-08-02 12:43:30', 1, '2039mzas'),
(61, 14, '213.167.211.199', 'Гусь-Хрустальный', 'Россия', 'RU', '2016-08-02 18:12:45', 1, 'kirill89'),
(62, 14, '213.167.211.199', 'Гусь-Хрустальный', 'Россия', 'RU', '2016-08-02 19:39:00', 1, 'kirill89'),
(63, 14, '213.167.211.199', 'Гусь-Хрустальный', 'Россия', 'RU', '2016-08-03 04:51:58', 1, 'kirill89'),
(64, 10, '31.8.198.220', 'Дюртюли', 'Россия', 'RU', '2016-08-03 11:17:08', 1, '13240000'),
(65, 14, '31.28.201.137', 'Владимир-Волынский', 'Россия', 'RU', '2016-08-03 11:55:41', 1, 'kirill89'),
(66, 12, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-03 12:18:25', 1, 'nikitosnikitos22'),
(67, 14, '31.28.201.137', 'Владимир-Волынский', 'Россия', 'RU', '2016-08-03 15:19:03', 1, 'kirill89'),
(68, 14, '31.28.201.137', 'Владимир-Волынский', 'Россия', 'RU', '2016-08-03 17:11:53', 1, 'kirill89'),
(69, 14, '31.28.201.137', 'Владимир-Волынский', 'Россия', 'RU', '2016-08-04 20:11:16', 1, 'kirill89'),
(70, 12, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-04 20:12:30', 1, 'nikitosnikitos22'),
(71, 9, '178.121.186.206', 'Минск', 'Беларусь', 'BY', '2016-08-05 07:39:08', 1, '4579048'),
(72, 18, '178.72.161.205', 'Ереван', 'Армения', 'AM', '2016-08-05 19:40:25', 1, '102030'),
(73, 15, '130.180.210.216', 'Ясиноватая', 'Украина', 'UA', '2016-08-07 03:09:05', 1, 'yadrik2015'),
(74, 0, '178.72.161.205', 'Ереван', 'Армения', 'AM', '2016-08-08 13:15:48', 0, '102030'),
(75, 19, '178.72.161.205', 'Ереван', 'Армения', 'AM', '2016-08-08 13:16:11', 1, '102030'),
(76, 20, '93.185.33.243', 'Абовян', 'Армения', 'AM', '2016-08-08 14:42:52', 1, 'aaaa0000'),
(77, 12, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-08 17:53:33', 1, 'nikitosnikitos22'),
(78, 12, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-09 09:54:38', 1, 'nikitosnikitos22'),
(79, 12, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-09 09:55:56', 2, 'NONE'),
(80, 1, '37.25.113.96', 'Николаев', 'Украина', 'UA', '2016-08-09 09:56:01', 1, 'svr24host22'),
(81, 0, '217.174.237.99', 'Ашхабад', 'Туркмения', 'TM', '2016-08-09 10:31:51', 0, 'qwerty'),
(82, 11, '217.174.237.100', 'Ашхабад', 'Туркмения', 'TM', '2016-08-09 10:32:09', 1, 'qwerty'),
(83, 21, '217.174.237.109', 'Ашхабад', 'Туркмения', 'TM', '2016-08-10 05:53:32', 1, 'qwerty');

-- --------------------------------------------------------

--
-- Структура таблицы `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `game_id` int(10) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(32) DEFAULT NULL,
  `game_code` varchar(8) DEFAULT NULL,
  `game_query` varchar(32) DEFAULT NULL,
  `image_url` text NOT NULL,
  `game_min_slots` int(8) DEFAULT NULL,
  `game_max_slots` int(8) DEFAULT NULL,
  `game_min_port` int(8) DEFAULT NULL,
  `game_max_port` int(8) DEFAULT NULL,
  `game_price` decimal(10,2) DEFAULT NULL,
  `game_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `games`
--

INSERT INTO `games` (`game_id`, `game_name`, `game_code`, `game_query`, `image_url`, `game_min_slots`, `game_max_slots`, `game_min_port`, `game_max_port`, `game_price`, `game_status`) VALUES
(1, 'San Andreas Multiplayer 0.3.7', 'samp', 'samp', 'http://www.crimer.ru/News/SAMP.png', 50, 150, 7777, 9999, 0.30, 1),
(2, 'San Andreas Multiplayer 0.3z', 'samp', 'samp', '', 50, 150, 2223, 3334, 0.30, 1),
(3, 'Counter Strike 1.6', 'cs', 'valve', '', 10, 32, 27005, 27050, 6.00, 0),
(4, 'Criminal Russia Multiplayer 0.3e', 'crmp', 'samp', '', 50, 500, 10000, 11000, 0.30, 1),
(5, 'MineCraft 1.7.2', 'mine72', 'mine', '', 10, 100, 0, 0, 6.00, 0),
(6, 'MineCraft 1.6.4', 'mine64', 'mine', '', 10, 100, 0, 0, 6.00, 0),
(7, 'MineCraft PE', 'mcpe', 'mine', '', 10, 100, 0, 0, 6.00, 0),
(8, 'MTA SA', 'mtasa', 'mtasa', '', 50, 1000, 0, 0, 2.00, 0),
(9, 'San Andreas Multiplayer 0.3e', 'sampe', 'samp', '', 50, 150, 4445, 5554, 0.30, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `invoice_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `invoice_ammount` decimal(10,2) DEFAULT NULL,
  `invoice_status` int(1) DEFAULT NULL,
  `invoice_date_add` datetime DEFAULT NULL,
  `system` int(11) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `invoices`
--

INSERT INTO `invoices` (`invoice_id`, `user_id`, `invoice_ammount`, `invoice_status`, `invoice_date_add`, `system`) VALUES
(1, 5, 10.00, 0, '2016-07-23 20:17:27', 0),
(2, 3, 100.00, 0, '2016-07-23 20:31:04', 0),
(3, 2, 123.00, 0, '2016-07-24 07:12:18', 0),
(4, 4, 55.00, 0, '2016-07-24 08:07:38', 0),
(5, 10, 10.00, 0, '2016-08-01 10:11:32', 0),
(6, 10, 10.00, 0, '2016-08-01 10:11:42', 0),
(7, 1, 11.00, 0, '2016-08-01 10:11:47', 0),
(8, 12, 10.00, 0, '2016-08-01 10:20:29', 0),
(9, 10, 123.00, 0, '2016-08-01 10:23:54', 0),
(10, 10, 10.00, 0, '2016-08-01 10:24:00', 0),
(11, 10, 10.00, 0, '2016-08-01 10:25:49', 0),
(12, 10, 10.00, 0, '2016-08-01 10:43:39', 0),
(13, 10, 10.00, 0, '2016-08-01 10:43:53', 0),
(14, 15, 30.00, 0, '2016-08-01 23:52:27', 0),
(15, 18, 10.00, 0, '2016-08-05 19:41:54', 0),
(16, 12, 22.00, 0, '2016-08-09 09:55:29', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `location_id` int(10) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(32) DEFAULT NULL,
  `location_ip` varchar(15) DEFAULT NULL,
  `location_ip2` varchar(15) DEFAULT NULL,
  `location_user` varchar(32) DEFAULT NULL,
  `location_password` varchar(32) DEFAULT NULL,
  `location_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`, `location_ip`, `location_ip2`, `location_user`, `location_password`, `location_status`) VALUES
(1, '185.144.29.29', '185.144.29.29', '185.144.29.29', 'root', 'qQ9EyaQ288h9kD', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT '0',
  `news_title` varchar(32) DEFAULT NULL,
  `news_text` char(255) NOT NULL,
  `news_date_add` datetime DEFAULT NULL,
  `look` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `place` int(11) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`news_id`, `user_id`, `news_title`, `news_text`, `news_date_add`, `look`, `category_id`, `place`) VALUES
(4, 1, 'Открытие Хостинга', 'Здравствуйте, уважаемые пользователи. Мы рады сообщить вам хорошую новость мы снова в деле Хостинг SVRHOST.RU качественный хостинг игровых серверов а так же мы теперь и веб хостинг Открытие хостинга 01.08.2016 в 12:00 по МСК будет конкурс на 3 сервера на', '2016-07-31 12:26:38', 4, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news_category`
--

CREATE TABLE IF NOT EXISTS `news_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `category_status` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `news_category`
--

INSERT INTO `news_category` (`category_id`, `category_name`, `category_status`) VALUES
(1, 'Акции', 1),
(2, 'Хостинг', 0),
(3, 'Новости Хостинга', 1),
(4, 'Нужна помощь по серверу?', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news_messages`
--

CREATE TABLE IF NOT EXISTS `news_messages` (
  `news_message_id` int(10) NOT NULL AUTO_INCREMENT,
  `news_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `news_message` text,
  `news_message_date_add` datetime DEFAULT NULL,
  PRIMARY KEY (`news_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `news_messages`
--

INSERT INTO `news_messages` (`news_message_id`, `news_id`, `user_id`, `news_message`, `news_message_date_add`) VALUES
(1, 4, 1, 'Что скажите ?', '2016-07-31 12:27:00');

-- --------------------------------------------------------

--
-- Структура таблицы `promo`
--

CREATE TABLE IF NOT EXISTS `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` varchar(64) NOT NULL,
  `replace` int(11) NOT NULL DEFAULT '9999',
  `used` int(11) NOT NULL DEFAULT '0',
  `skidka` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `promo`
--

INSERT INTO `promo` (`id`, `cod`, `replace`, `used`, `skidka`) VALUES
(1, 'tvu53yjVBSCu', 9999, 0, '5'),
(2, 's01e04', 9999, 0, '10');

-- --------------------------------------------------------

--
-- Структура таблицы `servers`
--

CREATE TABLE IF NOT EXISTS `servers` (
  `server_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `game_id` int(10) DEFAULT NULL,
  `location_id` int(10) DEFAULT NULL,
  `server_slots` int(8) DEFAULT NULL,
  `server_port` int(8) DEFAULT NULL,
  `server_password` varchar(32) DEFAULT NULL,
  `server_status` int(1) DEFAULT NULL,
  `server_cpu_load` float NOT NULL DEFAULT '0',
  `server_ram_load` float NOT NULL DEFAULT '0',
  `server_date_reg` datetime DEFAULT NULL,
  `server_date_end` datetime DEFAULT NULL,
  `db_pass` varchar(32) DEFAULT NULL,
  `server_mysql` int(11) DEFAULT NULL,
  `rcon_password` varchar(32) DEFAULT NULL,
  `server_install` int(11) NOT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `servers`
--

INSERT INTO `servers` (`server_id`, `user_id`, `game_id`, `location_id`, `server_slots`, `server_port`, `server_password`, `server_status`, `server_cpu_load`, `server_ram_load`, `server_date_reg`, `server_date_end`, `db_pass`, `server_mysql`, `rcon_password`, `server_install`) VALUES
(5, 10, 1, 1, 50, 7777, 'J9ZAcY6e', 1, 0, 0, '2016-07-31 12:36:33', '2016-08-31 12:36:33', NULL, NULL, NULL, 0),
(6, 1, 1, 1, 50, 7779, '4TK2UgNU', 1, 0, 0, '2016-07-31 12:37:27', '2016-08-31 12:37:27', NULL, NULL, NULL, 0),
(7, 10, 1, 1, 50, 7781, 'LH4tRYE6', 1, 0, 0, '2016-07-31 12:46:53', '2016-08-31 12:46:53', NULL, NULL, NULL, 0),
(8, 10, 1, 1, 50, 7783, 'DnxS0qNQ', 2, 0, 0, '2016-07-31 12:47:09', '2016-08-31 12:47:09', 'pcmTQ67vrt', 1, NULL, 0),
(9, 10, 1, 1, 50, 7785, 'PXyuAHDS', 1, 0, 0, '2016-07-31 19:17:04', '2016-08-31 19:17:04', NULL, NULL, NULL, 0),
(10, 1, 1, 1, 50, 7787, 'PvN5q1fS', 2, 0, 0, '2016-07-31 19:17:23', '2016-08-31 19:17:23', NULL, NULL, NULL, 0),
(11, 10, 1, 1, 50, 7789, 'qfovH0Qn', 2, 0, 0, '2016-07-31 19:17:23', '2016-08-31 19:17:23', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `servers_adap`
--

CREATE TABLE IF NOT EXISTS `servers_adap` (
  `game_id` int(11) DEFAULT NULL,
  `adap_url` text CHARACTER SET utf8 NOT NULL,
  `adap_name` text CHARACTER SET utf8 NOT NULL,
  `adap_act` int(11) DEFAULT NULL,
  `adap_status` int(11) DEFAULT NULL,
  `adap_action` text CHARACTER SET utf8 NOT NULL,
  `adap_arch` text CHARACTER SET utf8 NOT NULL,
  `adap_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`adap_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `servers_stats`
--

CREATE TABLE IF NOT EXISTS `servers_stats` (
  `server_id` int(11) DEFAULT NULL,
  `server_stats_date` datetime DEFAULT NULL,
  `server_stats_players` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `ticket_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `ticket_name` varchar(32) DEFAULT NULL,
  `ticket_status` int(1) DEFAULT NULL,
  `ticket_date_add` datetime DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `user_id`, `ticket_name`, `ticket_status`, `ticket_date_add`, `category_id`) VALUES
(1, 4, 'вфывыфвфыв', 0, '2016-07-31 07:06:03', 0),
(2, 1, 'Васясыывфы', 0, '2016-07-31 12:10:42', 1),
(3, 14, 'Здраствуйте.', 1, '2016-08-01 20:43:56', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `tickets_category`
--

CREATE TABLE IF NOT EXISTS `tickets_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `category_status` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `tickets_category`
--

INSERT INTO `tickets_category` (`category_id`, `category_name`, `category_status`) VALUES
(1, 'Оплата', 1),
(2, 'Web Хостинг', 1),
(3, 'Прочее', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tickets_messages`
--

CREATE TABLE IF NOT EXISTS `tickets_messages` (
  `ticket_message_id` int(10) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `ticket_message` text,
  `ticket_message_date_add` datetime DEFAULT NULL,
  PRIMARY KEY (`ticket_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `tickets_messages`
--

INSERT INTO `tickets_messages` (`ticket_message_id`, `ticket_id`, `user_id`, `ticket_message`, `ticket_message_date_add`) VALUES
(1, 1, 4, 'вфывфывыфвфывыфвфывфывфывфывфывыфвфывфы', '2016-07-31 07:06:03'),
(2, 1, 4, 'да да ?да да ?да да ?да да ?да да ?да да ?да да ?да да ?', '2016-07-31 07:07:17'),
(3, 2, 1, 'Здравствуйте, уважаемые пользователи. Мы рады сообщить вам хорошую новость мы снова в деле Хостинг SVRHOST.RU качественный хостинг игровых серверов а так же мы теперь и веб хостинг Открытие хостинга 01.08.2016 в 12:00 по МСК будет конкурс на 3 сервера на 500 слотов под аренду на 1 месяц. Так же цены нашего хостинга не могут не радовать всего 0.30 Руб/Слот.', '2016-07-31 12:10:43'),
(4, 3, 14, 'Здраствуйте, Вам не требуется тех.поддержка на хостинг? ', '2016-08-01 20:43:56');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(96) DEFAULT NULL,
  `user_password` varchar(32) DEFAULT NULL,
  `user_firstname` varchar(32) DEFAULT NULL,
  `user_lastname` varchar(32) DEFAULT NULL,
  `user_status` int(1) DEFAULT NULL,
  `user_balance` decimal(10,2) DEFAULT NULL,
  `user_restore_key` varchar(32) DEFAULT NULL,
  `user_access_level` int(1) DEFAULT NULL,
  `user_date_reg` datetime DEFAULT NULL,
  `user_img` varchar(250) NOT NULL DEFAULT '/application/public/img/user.png',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_firstname`, `user_lastname`, `user_status`, `user_balance`, `user_restore_key`, `user_access_level`, `user_date_reg`, `user_img`) VALUES
(1, 'svr24host@mail.ru', 'svr24host22', 'Никита', 'Зотов', 1, 5150925.00, NULL, 3, '2016-07-23 19:27:13', 'https://pp.vk.me/c626719/v626719157/a049/3xP3hGl_M98.jpg'),
(9, 'pavel.filipchik@gmail.com', '4579048', 'Павел', 'Васильевич', 1, 0.00, NULL, 3, '2016-07-31 11:45:57', '/application/public/img/user.png'),
(10, 'sergeiegk@mail.ru', '13240000', 'Вымя', 'Твоё', 1, 0.00, NULL, 3, '2016-07-31 12:33:37', '/application/public/img/user.png'),
(11, 'filon.vladimir@mail.ru', 'qwerty', 'Дудося', 'Дудосевна', 1, 0.00, NULL, 1, '2016-07-31 18:23:55', '/application/public/img/user.png'),
(12, 'nikitos.zotov@bk.ru', 'nikitosnikitos22', 'Основатель', 'Админ', 1, 0.00, NULL, 1, '2016-08-01 10:19:54', '/application/public/img/user.png'),
(13, 'patron@mail.ru', '13240000', 'Сергей', 'Патронов', 1, 0.00, NULL, 1, '2016-08-01 10:24:39', '/application/public/img/user.png'),
(14, 'meyshop@bk.ru', 'kirill89', 'Даня', 'Карпов', 1, 0.00, NULL, 1, '2016-08-01 20:40:36', 'https://pp.vk.me/c626719/v626719157/a049/3xP3hGl_M98.jpg'),
(15, 'admin@topskript.net', 'yadrik2015', 'Ярослав', 'Бидюк', 1, 0.00, NULL, 1, '2016-08-01 23:51:23', '/application/public/img/user.png'),
(16, 'ad@mail.ru', '102030', 'Тимур', 'Калашников', 1, 0.00, NULL, 1, '2016-08-02 11:52:25', '/application/public/img/user.png'),
(17, 'mifixplay01@gmail.com', '2039mzas', 'Юра', 'Пономарев', 1, 0.00, NULL, 1, '2016-08-02 12:43:15', '/application/public/img/user.png'),
(18, 'ad@mail.rus', '102030', 'Касд', 'Асад', 1, 0.00, NULL, 1, '2016-08-05 19:40:18', '/application/public/img/user.png'),
(19, 'admin@mail.ru', '102030', 'Тимур', 'Калашников', 1, 0.00, NULL, 1, '2016-08-08 13:16:03', '/application/public/img/user.png'),
(20, 'narekna2016@mail.ru', 'aaaa0000', 'Нарек', 'Курегян', 1, 0.00, NULL, 1, '2016-08-08 14:42:42', '/application/public/img/user.png'),
(21, '707demon59@mail.ru', 'qwerty', 'Владимир', 'Филон', 1, 0.00, NULL, 1, '2016-08-09 10:32:04', '/application/public/img/user.png');

-- --------------------------------------------------------

--
-- Структура таблицы `webhost`
--

CREATE TABLE IF NOT EXISTS `webhost` (
  `web_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `tarif_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `web_password` varchar(32) NOT NULL,
  `web_domain` varchar(32) NOT NULL,
  `web_status` int(11) NOT NULL,
  `web_date_reg` datetime DEFAULT NULL,
  `web_date_end` datetime DEFAULT NULL,
  `pdomen1` varchar(32) NOT NULL,
  `pdomen2` varchar(32) NOT NULL,
  `pdomen3` varchar(32) NOT NULL,
  `pdomen4` varchar(32) NOT NULL,
  PRIMARY KEY (`web_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `webhost`
--

INSERT INTO `webhost` (`web_id`, `user_id`, `tarif_id`, `location_id`, `web_password`, `web_domain`, `web_status`, `web_date_reg`, `web_date_end`, `pdomen1`, `pdomen2`, `pdomen3`, `pdomen4`) VALUES
(1, 20, 0, 1, 'dM2O042PlC', '27LEON.ru', 1, '2016-08-08 14:43:40', '2016-09-08 14:43:40', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `web_tarifs`
--

CREATE TABLE IF NOT EXISTS `web_tarifs` (
  `tarif_id` int(11) NOT NULL AUTO_INCREMENT,
  `tarif_name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `tarif_price` decimal(10,2) NOT NULL,
  `tarif_status` int(11) NOT NULL,
  PRIMARY KEY (`tarif_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
