-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2015 at 11:36 PM
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
('Sekai-Net', 'Fluffy Fluffy Bun Bun Road', 12345, 'Wack-Me', '1235467890', 'info@sekainet.com', 'Welcome to us!');

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`iid`, `title`, `path`, `alt`, `user_id`, `uploaded`) VALUES
(12, 'Ana won', 'AnaSmall.jpg', NULL, 1, '2015-02-22 17:03:50'),
(13, 'stock market', 'boende.jpg', NULL, 1, '2015-02-22 17:04:27'),
(14, 'protests', 'ChileMarchSmall.jpg', NULL, 1, '2015-02-22 17:04:51'),
(15, 'Leonard Cohen', 'cohenSmall.jpg', NULL, 1, '2015-02-22 17:06:08'),
(16, 'darksoul', 'darksoul-king.jpg', NULL, 1, '2015-02-22 17:06:54'),
(17, 'Thailand murder', 'DavidHannah.jpg', NULL, 1, '2015-02-22 17:07:32'),
(18, 'destiny game', 'destiny.jpg', NULL, 1, '2015-02-22 17:07:53'),
(19, 'flooding england', 'Essex.jpg', NULL, 1, '2015-02-22 17:08:13'),
(20, 'iphone 6', 'iphone6.jpg', NULL, 1, '2015-02-22 17:08:31'),
(21, 'oracle owner', 'larry.jpg', NULL, 1, '2015-02-22 17:08:57'),
(22, 'bandidos and hells angels', 'mcGang.jpg', NULL, 1, '2015-02-22 17:09:27'),
(23, 'mj and freddie', 'MJnFMsmall.jpg', NULL, 1, '2015-02-22 17:14:10'),
(24, 'scotland''s independence', 'NoYes.jpg', NULL, 1, '2015-02-22 17:14:46'),
(25, 'sackboy', 'on-earthSmall.jpg', NULL, 1, '2015-02-22 17:16:02'),
(26, 'white house arrest', 'PikachuGotArrested.jpg', NULL, 1, '2015-02-22 17:16:38'),
(27, 'global warming', 'polarbearSmall.jpg', NULL, 1, '2015-02-22 17:18:12'),
(28, 'red tide', 'redTideSmall.jpg', NULL, 1, '2015-02-22 17:18:42'),
(29, 'reinfeldt', 'reinfeldt.jpg', NULL, 1, '2015-02-22 17:19:01'),
(30, 'ship', 'research-my-ass.jpg', NULL, 1, '2015-02-22 17:19:39'),
(31, 'russian plane', 'ryssPlan.jpg', NULL, 1, '2015-02-22 17:20:02'),
(32, 'prime minister house', 'sagerskaSmall.jpg', NULL, 1, '2015-02-22 17:20:33'),
(33, 'SekaiBusiness', 'SekaiBusiness.jpg', NULL, 1, '2015-02-22 17:21:09'),
(34, 'SekaiGame', 'SekaiGame.jpg', NULL, 1, '2015-02-22 17:22:09'),
(35, 'SekaiInternational', 'SekaiInternational.jpg', NULL, 1, '2015-02-22 17:22:30'),
(36, 'SekaiNews', 'SekaiNews.jpg', NULL, 1, '2015-02-22 17:23:25'),
(37, 'SekaiShow', 'SekaiShow.jpg', NULL, 1, '2015-02-22 17:23:46'),
(38, 'SekaiSport', 'SekaiSport.jpg', NULL, 1, '2015-02-22 17:24:10'),
(39, 'SekaiWeather', 'SekaiWeather.jpg', NULL, 1, '2015-02-22 17:24:32'),
(40, 'SekaiWorld', 'SekaiWorld.jpg', NULL, 1, '2015-02-22 17:29:29'),
(41, 'f1 racing', 'SingaporeSmall.jpg', NULL, 1, '2015-02-22 17:29:54'),
(42, 'sons of anarchy', 'sonsSmall.jpg', NULL, 1, '2015-02-22 17:30:13'),
(43, 'runner', 'SpearmonSmall.jpg', NULL, 1, '2015-02-22 17:30:52'),
(44, 'Stacy in golf', 'StacySmall.jpg', NULL, 1, '2015-02-22 17:31:16'),
(45, 'stock market', 'stockmarket.jpg', NULL, 1, '2015-02-22 17:31:29'),
(46, 'syrians', 'syriansTurkeySmall.jpg', NULL, 1, '2015-02-22 17:45:04'),
(47, 'global warmth', 'temperatureSmall.jpg', NULL, 1, '2015-02-22 19:58:53'),
(48, 'thomas is lost', 'thomas_frankSmall.jpg', NULL, 1, '2015-02-22 19:59:15'),
(49, 'actors pumped', 'trainedActorsSmall.jpg', NULL, 1, '2015-02-22 20:00:13'),
(50, 'football interview', 'WengerOzil.jpg', NULL, 1, '2015-02-22 20:01:21'),
(51, 'xbox vs ps', 'xbox1-ps4.jpg', NULL, 1, '2015-02-22 20:02:04');

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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_links`
--

INSERT INTO `menu_links` (`mlid`, `title`, `path`, `plid`, `weight`) VALUES
(79, 'DOMESTIC', 'domestic', NULL, 0),
(80, 'INTERNATIONAL', 'international', NULL, 0),
(81, 'BUSINESS', 'business', NULL, 0),
(82, 'WORLD', 'world', NULL, 0),
(83, 'WEATHER', 'weather', NULL, 0),
(84, 'SPORT', 'sport', NULL, 0),
(85, 'ENTERTAINMENT', 'entertainment', NULL, 0),
(86, 'GAMES', 'games', NULL, 0),
(87, 'Ryska plan siktat över svenska kusten', 'Ryska-plan-siktat-över-svenska-kusten', 79, 0),
(88, 'MC gängen flyttar in', 'MC-gängen-flyttar-in', 79, 0),
(89, 'Thailand murders about to be solved', 'Thailand-murders-about-to-be-solved', 80, 0),
(90, 'Japan hunts whales despite treaty', 'Japan-hunts-whales-despite-treaty', 80, 0),
(91, 'Mortgages rising despite economy', 'Mortgages-rising-despite-economy', 81, 0),
(92, 'Oracle''s founder steps down', 'Oracle''s-founder-steps-down', 81, 0),
(93, 'Syrians running towards Turkish border', 'Syrians-running-towards-Turkish-border', 82, 0),
(94, 'Demonstration turns violent in Chile', 'Demonstration-turns-violent-in-Chile', 82, 0),
(95, 'Floodings in Essex', 'Floodings-in-Essex', 83, 0),
(96, 'Animals getting extinct because of humans', 'Animals-getting-extinct-because-of-humans', 83, 0),
(97, 'Wenger defends Ozil', 'Wenger-defends-Ozil', 84, 0),
(98, 'Spearmon suffers 3 month ban due to steroids', 'Spearmon-suffers-3-month-ban-due-to-steroids', 84, 0),
(99, 'Dead musicians releasing single', 'Dead-musicians-releasing-single', 85, 0),
(100, 'Leonard Cohen releasing 13th album', 'Leonard-Cohen-releasing-13th-album', 85, 0),
(101, 'Sackboy taking over the planet', 'Sackboy-taking-over-the-planet', 86, 0),
(102, 'The end of Dark Soul?', 'The-end-of-Dark-Soul', 86, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `img_id`, `user_id`, `video_id`, `created`) VALUES
(98, 'Domestic', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 36, 1, NULL, '2015-02-22 20:17:43'),
(99, 'International', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 35, 1, NULL, '2015-02-22 20:18:44'),
(100, 'Business', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 33, 1, NULL, '2015-02-22 20:19:33'),
(101, 'World', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 40, 1, NULL, '2015-02-22 20:20:03'),
(102, 'Weather', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 39, 1, NULL, '2015-02-22 20:20:38'),
(103, 'Sport', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 38, 1, NULL, '2015-02-22 20:21:01'),
(104, 'Entertainment', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 37, 1, NULL, '2015-02-22 20:21:36'),
(105, 'Games', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 34, 1, NULL, '2015-02-22 20:21:58'),
(106, 'Ryska plan siktat över svenska kusten', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 31, 1, NULL, '2015-02-22 20:40:52'),
(107, 'MC gängen flyttar in', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 22, 1, NULL, '2015-02-22 20:47:53'),
(108, 'Thailand murders about to be solved', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 17, 1, NULL, '2015-02-22 20:52:04'),
(109, 'Japan hunts whales despite treaty', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 30, 1, NULL, '2015-02-22 20:55:25'),
(110, 'Mortgages rising despite economy', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 13, 1, NULL, '2015-02-22 20:57:29'),
(111, 'Oracle''s founder steps down', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 21, 1, NULL, '2015-02-22 20:58:32'),
(112, 'Syrians running towards Turkish border', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 46, 1, NULL, '2015-02-22 21:01:42'),
(113, 'Demonstration turns violent in Chile', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 14, 1, NULL, '2015-02-22 21:04:32'),
(114, 'Floodings in Essex', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 19, 1, NULL, '2015-02-22 21:06:21'),
(115, 'Animals getting extinct because of humans', 'Animals getting extinct because of humans', 47, 1, NULL, '2015-02-22 21:07:49'),
(116, 'Wenger defends Ozil', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 50, 1, NULL, '2015-02-22 21:09:36'),
(117, 'Spearmon suffers 3 month ban due to steroids', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 43, 1, NULL, '2015-02-22 21:11:33'),
(118, 'Dead musicians releasing single', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 23, 1, NULL, '2015-02-22 21:12:33'),
(119, 'Leonard Cohen releasing 13th album', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 15, 1, NULL, '2015-02-22 21:13:31'),
(120, 'Sackboy taking over the planet', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 25, 1, NULL, '2015-02-22 21:14:23'),
(121, 'The end of Dark Soul?', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 16, 1, NULL, '2015-02-22 21:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
`aid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `url_alias`
--

INSERT INTO `url_alias` (`aid`, `path`, `pid`) VALUES
(91, 'domestic', 98),
(92, 'international', 99),
(93, 'business', 100),
(94, 'world', 101),
(95, 'weather', 102),
(96, 'sport', 103),
(97, 'entertainment', 104),
(98, 'games', 105),
(99, 'Ryska-plan-siktat-över-svenska-kusten', 106),
(100, 'MC-gängen-flyttar-in', 107),
(101, 'Thailand-murders-about-to-be-solved', 108),
(102, 'Japan-hunts-whales-despite-treaty', 109),
(103, 'Mortgages-rising-despite-economy', 110),
(104, 'Oracle''s-founder-steps-down', 111),
(105, 'Syrians-running-towards-Turkish-border', 112),
(106, 'Demonstration-turns-violent-in-Chile', 113),
(107, 'Floodings-in-Essex', 114),
(108, 'Animals-getting-extinct-because-of-humans', 115),
(109, 'Wenger-defends-Ozil', 116),
(110, 'Spearmon-suffers-3-month-ban-due-to-steroids', 117),
(111, 'Dead-musicians-releasing-single', 118),
(112, 'Leonard-Cohen-releasing-13th-album', 119),
(113, 'Sackboy-taking-over-the-planet', 120),
(114, 'The-end-of-Dark-Soul', 121);

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
MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `menu_links`
--
ALTER TABLE `menu_links`
MODIFY `mlid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `url_alias`
--
ALTER TABLE `url_alias`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=115;
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
