-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 05 2016 г., 21:11
-- Версия сервера: 5.5.41
-- Версия PHP: 5.4.45-0+deb7u2

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
(1, 'San Andreas Multiplayer 0.3.7', 'samp037', 'samp', 'http://www.crimer.ru/News/SAMP.png', 50, 150, 7777, 9999, 1.00, 1),
(2, 'San Andreas Multiplayer 0.3z', 'samp', 'samp', '', 50, 150, 2223, 3334, 1.00, 1),
(3, 'Counter Strike 1.6', 'cs', 'valve', '', 10, 32, 27005, 27050, 6.00, 0),
(4, 'Criminal Russia Multiplayer 0.3e', 'crmp', 'samp', '', 50, 150, 10000, 11000, 1.00, 1),
(5, 'MineCraft 1.7.2', 'mine72', 'mine', '', 10, 100, 0, 0, 6.00, 0),
(6, 'MineCraft 1.6.4', 'mine64', 'mine', '', 10, 100, 0, 0, 6.00, 0),
(7, 'MineCraft PE', 'mcpe', 'mine', '', 10, 100, 0, 0, 6.00, 0),
(8, 'MTA SA', 'mtasa', 'mtasa', '', 50, 1000, 0, 0, 2.00, 0),
(9, 'San Andreas Multiplayer 0.3e', 'sampe', 'samp', '', 50, 150, 4445, 5554, 1.00, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`news_id`, `user_id`, `news_title`, `news_text`, `news_date_add`, `look`, `category_id`, `place`) VALUES
(1, 196, 'Новости по хостингу', 'Здравствуйте, пользователи и гости игрового хостинга. Мы будем предоставлять бесплатные сервера: SAMP,CRMP. Так же мы можем выедлять бесплатно сервер: CS 1.6, MineCraft если нам понравиться ваше партнерство))) Спасибо что вы с нами.\n\nАдминистрация NanoHos', '2016-01-25 17:15:28', 30, 5, 1),
(2, 2, 'NANOHOST', 'Вам надо настроить сервер и т.д.? Пишите Основателям хостинга мы настроим вам сервер за отдельную плату.', '2016-02-06 23:14:19', 40, 6, 2),
(3, 60, 'Помощь по серверу!', 'Если вам требуется помощь по заливке / настройке сервера . А так же по Pawno советую обратиться ко мне в группу &gt; vk.com/pawno_and_ftp', '2016-02-08 15:24:07', 9, 6, 1);

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
(1, 'Акции', 0),
(2, 'Хостинг', 0),
(3, 'NEW: Новости по хостингу', 1),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
(1, 'Вопросы', 1),
(2, 'Вопросы оплаты', 1),
(3, 'Как получить бесплатный сервер?', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
