-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Tid vid skapande: 11 feb 2015 kl 20:27
-- Serverversion: 5.6.20
-- PHP-version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `SekaiNet`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `footer`
--

CREATE TABLE IF NOT EXISTS `footer` (
  `name` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `postalcode` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`iid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `menu_links`
--

CREATE TABLE IF NOT EXISTS `menu_links` (
`mlid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `plid` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `menu_links`
--

INSERT INTO `menu_links` (`mlid`, `title`, `path`, `plid`, `weight`) VALUES
(25, 'menu title11', 'url11', NULL, 0),
(26, 'sths', 'fdghdfgh', 25, 0),
(27, 'r35345345', '425245353', 25, 0),
(28, '45y45y45y', 'y45y45y45y', 26, 0),
(29, 'dfghjklöä', 'sdfghjklö', 28, 0),
(30, 'fgh', 'fgh', 29, 0),
(31, 'fgh', 'fgh', 29, 0),
(32, 'sdf', 'sdf', 31, 0),
(33, 'fghfg', 'fghfgh', 31, 0),
(34, 'fghfgh', 'fghfgh', NULL, 0),
(35, 'yui', 'yui', NULL, 0),
(36, 'ytr', 'ytr', NULL, 0),
(37, 'ertertert', 'ertertert', NULL, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`pid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `img_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `img_id`, `user_id`, `video_id`, `created`) VALUES
(25, 'title11', 'enter text11', NULL, 1, NULL, '2015-02-03 23:04:35'),
(26, 'yhdfghdfgh', 'dfghdfgh', NULL, 1, NULL, '2015-02-03 23:55:00'),
(27, '75757567', '35635635635', NULL, 1, NULL, '2015-02-03 23:56:59'),
(28, '45y45y45y', '45y45y45y', NULL, 1, NULL, '2015-02-04 00:02:07'),
(29, 'dfghjklöä', 'dfghjklö', NULL, 1, NULL, '2015-02-05 19:03:17'),
(30, 'fgh', 'fgh', NULL, 1, NULL, '2015-02-06 17:48:19'),
(31, 'fgh', 'fgh', NULL, 1, NULL, '2015-02-06 17:48:28'),
(32, 'sdf', 'sdf', NULL, 1, NULL, '2015-02-07 14:31:32'),
(33, 'fghfgh', 'fghfgh', NULL, 1, NULL, '2015-02-07 14:34:01'),
(34, 'fghfgh', 'fghfgh', NULL, 1, NULL, '2015-02-07 14:34:54'),
(35, 'yui', 'yui', NULL, 1, NULL, '2015-02-07 14:35:40'),
(36, 'ytr', 'ytr', NULL, 1, NULL, '2015-02-09 20:49:35'),
(37, 'ertertertert', 'ertertert', NULL, 1, NULL, '2015-02-09 21:21:25');

-- --------------------------------------------------------

--
-- Tabellstruktur `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
`aid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `url_alias`
--

INSERT INTO `url_alias` (`aid`, `path`, `pid`) VALUES
(25, 'url11', 25),
(26, 'fdghdfgh', 26),
(27, '425245353', 27),
(28, 'y45y45y45y', 28),
(29, 'sdfghjklö', 29),
(30, 'fgh', 30),
(31, 'sdf', 32),
(32, 'fghfgh', 33),
(34, 'yui', 35),
(35, 'ytr', 36),
(36, 'ertertert', 37);

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`uid` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `description` text,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `email`, `pass`, `description`, `joined`) VALUES
(1, 'Dennis', 'Lampert', 'dennis@lampert.se', '0000', NULL, '2015-01-23 09:24:05');

-- --------------------------------------------------------

--
-- Tabellstruktur `video`
--

CREATE TABLE IF NOT EXISTS `video` (
`vid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `description` text,
  `user_id` int(11) NOT NULL,
  `uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`iid`), ADD KEY `user_id` (`user_id`);

--
-- Index för tabell `menu_links`
--
ALTER TABLE `menu_links`
 ADD PRIMARY KEY (`mlid`), ADD KEY `plid` (`plid`), ADD KEY `path` (`path`);

--
-- Index för tabell `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`pid`), ADD KEY `user_id` (`user_id`), ADD KEY `img_id` (`img_id`), ADD KEY `video_id` (`video_id`);

--
-- Index för tabell `url_alias`
--
ALTER TABLE `url_alias`
 ADD PRIMARY KEY (`aid`), ADD UNIQUE KEY `path` (`path`), ADD KEY `pid` (`pid`);

--
-- Index för tabell `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `email` (`email`);

--
-- Index för tabell `video`
--
ALTER TABLE `video`
 ADD PRIMARY KEY (`vid`), ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `images`
--
ALTER TABLE `images`
MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `menu_links`
--
ALTER TABLE `menu_links`
MODIFY `mlid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT för tabell `pages`
--
ALTER TABLE `pages`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT för tabell `url_alias`
--
ALTER TABLE `url_alias`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT för tabell `video`
--
ALTER TABLE `video`
MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `images`
--
ALTER TABLE `images`
ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`);

--
-- Restriktioner för tabell `menu_links`
--
ALTER TABLE `menu_links`
ADD CONSTRAINT `menu_links_ibfk_1` FOREIGN KEY (`plid`) REFERENCES `menu_links` (`mlid`);

--
-- Restriktioner för tabell `pages`
--
ALTER TABLE `pages`
ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`),
ADD CONSTRAINT `pages_ibfk_2` FOREIGN KEY (`img_id`) REFERENCES `images` (`iid`),
ADD CONSTRAINT `pages_ibfk_3` FOREIGN KEY (`video_id`) REFERENCES `video` (`vid`);

--
-- Restriktioner för tabell `url_alias`
--
ALTER TABLE `url_alias`
ADD CONSTRAINT `url_alias_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `pages` (`pid`);

--
-- Restriktioner för tabell `video`
--
ALTER TABLE `video`
ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
