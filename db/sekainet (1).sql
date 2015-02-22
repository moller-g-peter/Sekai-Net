-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2015 at 01:23 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sekainet`
--

-- --------------------------------------------------------

--
-- Table structure for table `footer`
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

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`name`, `street`, `postalcode`, `city`, `phone`, `email`, `info`) VALUES
('vbn', 'dfg', 12345, 'jhg', 'dfg', 'fytf', 'vnbv');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`iid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`iid`, `title`, `path`, `alt`, `user_id`, `uploaded`) VALUES
(1, 'news logo', 'bild1.png', NULL, 1, '2015-02-22 11:11:53'),
(3, 'news anchor', 'bild2.jpg', NULL, 1, '2015-02-22 11:13:13'),
(4, 'wbns logo', 'bild3.png', NULL, 1, '2015-02-22 11:13:56'),
(5, 'Noon news hour', 'bild4.jpg', NULL, 1, '2015-02-22 11:14:29'),
(6, 'skiier', 'bild6.png', NULL, 1, '2015-02-22 11:15:01'),
(7, 'news sign', 'bild7.jpg', NULL, 1, '2015-02-22 11:15:35'),
(8, 'news room', 'bild8.jpg', NULL, 1, '2015-02-22 11:16:00'),
(9, 'woman', 'bild9.jpg', NULL, 1, '2015-02-22 11:16:32'),
(10, 'two women', 'bild10.png', NULL, 1, '2015-02-22 11:16:59'),
(11, 'fight', 'bild11.jpg', NULL, 1, '2015-02-22 11:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu_links`
--

CREATE TABLE IF NOT EXISTS `menu_links` (
`mlid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `plid` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_links`
--

INSERT INTO `menu_links` (`mlid`, `title`, `path`, `plid`, `weight`) VALUES
(47, 'menu 1', 'menu 1', NULL, 0),
(48, 'menu 2', 'menu 2', NULL, 0),
(49, 'menu 3', 'menu 3', NULL, 0),
(50, 'submenu 1', 'submenu 1', NULL, 0),
(51, 'vbn', 'vbn', NULL, 0),
(52, 'ghj', 'ghj', NULL, 0),
(53, 'bnm', 'bnm', NULL, 0),
(54, 'bhu', 'bh', 47, 0),
(55, 'cfg', 'cfg', 48, 0),
(56, 'lkj', 'lkj', NULL, 0),
(57, 'kjh', 'kjh', NULL, 0),
(58, 'kjh', 'kjh', 47, 0),
(59, 'gyu', 'gyu', 48, 0),
(60, 'vgy', 'vgy', 49, 0),
(61, 'bnm', 'bnm', 47, 0),
(62, 'fty', 'fty', 47, 0),
(63, 'fty', 'fty', 48, 0),
(64, 'ghu', 'ghu', 49, 0),
(65, 'nji', 'nji', NULL, 0),
(66, 'hji', 'hji', NULL, 0),
(67, 'ghj', 'ghj', NULL, 0),
(68, 'vbn', 'vbn', NULL, 0),
(69, 'bhu', 'bhu', 60, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`pid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `img_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `img_id`, `user_id`, `video_id`, `created`) VALUES
(61, 'menu 1', 'menu 1', NULL, 1, NULL, '2015-02-20 13:33:13'),
(62, 'menu 2', 'menu 2', NULL, 1, NULL, '2015-02-20 13:33:24'),
(63, 'menu 3', 'menu 3', NULL, 1, NULL, '2015-02-20 13:33:45'),
(64, 'submenu 1', 'submenu 1', NULL, 1, NULL, '2015-02-20 13:34:32'),
(65, 'vbn', 'vbn', NULL, 1, NULL, '2015-02-20 13:51:19'),
(66, 'ghj', 'ghj', NULL, 1, NULL, '2015-02-20 13:51:58'),
(67, 'bnm', 'bnm', NULL, 1, NULL, '2015-02-20 14:12:10'),
(68, 'bhu', 'ubhu', NULL, 1, NULL, '2015-02-20 14:12:58'),
(69, 'cfg', 'cfg', NULL, 1, NULL, '2015-02-20 14:14:20'),
(70, 'lkj', 'lkj', NULL, 1, NULL, '2015-02-20 14:16:37'),
(71, 'kjh', 'kjh', NULL, 1, NULL, '2015-02-20 14:23:35'),
(72, 'kjh', 'kjh', NULL, 1, NULL, '2015-02-20 14:25:14'),
(73, 'gyu', 'gyu', NULL, 1, NULL, '2015-02-20 14:26:11'),
(74, 'vgy', 'vgy', NULL, 1, NULL, '2015-02-20 14:26:42'),
(75, 'bnm', 'bnm', NULL, 1, NULL, '2015-02-20 14:27:02'),
(76, 'fty', 'fty', NULL, 1, NULL, '2015-02-20 14:28:47'),
(77, 'fty', 'fty', NULL, 1, NULL, '2015-02-20 14:29:19'),
(78, 'ghu', 'ghu', NULL, 1, NULL, '2015-02-20 14:34:55'),
(79, 'nji', 'nji', NULL, 1, NULL, '2015-02-20 14:36:14'),
(80, 'hji', 'hji', NULL, 1, NULL, '2015-02-20 14:36:49'),
(81, 'ghj', 'ghj', NULL, 1, NULL, '2015-02-20 14:37:38'),
(82, 'vbn', 'vbn', NULL, 1, NULL, '2015-02-20 14:37:52'),
(83, 'bhu', 'bhu', NULL, 1, NULL, '2015-02-21 13:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
`aid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `url_alias`
--

INSERT INTO `url_alias` (`aid`, `path`, `pid`) VALUES
(61, 'menu 1', 61),
(62, 'menu 2', 62),
(63, 'menu 3', 63),
(64, 'submenu 1', 64),
(65, 'vbn', 65),
(66, 'ghj', 66),
(67, 'bnm', 67),
(68, 'bh', 68),
(69, 'cfg', 69),
(70, 'lkj', 70),
(71, 'kjh', 71),
(73, 'gyu', 73),
(74, 'vgy', 74),
(76, 'fty', 76),
(78, 'ghu', 78),
(79, 'nji', 79),
(80, 'hji', 80),
(81, 'bhu', 83);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `email`, `pass`, `description`, `joined`) VALUES
(1, 'Dennis', 'Lampert', 'dennis@lampert.se', '0000', NULL, '2015-01-23 09:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `video`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`iid`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `menu_links`
--
ALTER TABLE `menu_links`
 ADD PRIMARY KEY (`mlid`), ADD KEY `plid` (`plid`), ADD KEY `path` (`path`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`pid`), ADD KEY `user_id` (`user_id`), ADD KEY `img_id` (`img_id`), ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `url_alias`
--
ALTER TABLE `url_alias`
 ADD PRIMARY KEY (`aid`), ADD UNIQUE KEY `path` (`path`), ADD KEY `pid` (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
 ADD PRIMARY KEY (`vid`), ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `menu_links`
--
ALTER TABLE `menu_links`
MODIFY `mlid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `url_alias`
--
ALTER TABLE `url_alias`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`);

--
-- Constraints for table `menu_links`
--
ALTER TABLE `menu_links`
ADD CONSTRAINT `menu_links_ibfk_1` FOREIGN KEY (`plid`) REFERENCES `menu_links` (`mlid`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`),
ADD CONSTRAINT `pages_ibfk_2` FOREIGN KEY (`img_id`) REFERENCES `images` (`iid`),
ADD CONSTRAINT `pages_ibfk_3` FOREIGN KEY (`video_id`) REFERENCES `video` (`vid`);

--
-- Constraints for table `url_alias`
--
ALTER TABLE `url_alias`
ADD CONSTRAINT `url_alias_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `pages` (`pid`);

--
-- Constraints for table `video`
--
ALTER TABLE `video`
ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
