-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2017 at 03:17 PM
-- Server version: 5.5.49-log
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rashow`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL,
  `mail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4740 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `mail`, `password`, `google_id`, `date`, `level`) VALUES
(4718, 'asd123456@yahoo.com', '7815696ecbf1c96e6894b779456d330e', '', '2017-03-04', 0),
(4724, 'f74373021@mailst.cjcu.edu.tw', '', '113594487411988309841', '2017-03-26', 0),
(4729, 'leo5916267@gmail.com', '', '115931849194481467797', '2017-03-26', 0),
(4730, 'root@Rashow.com', '63a9f0ea7bb98050796b649e85481845', '', '2017-03-27', 1),
(4732, 'asd5916267@yahoo.com', '1e55dbf412cb74d5e2c21fb6452408c7', '', '2017-04-07', 0),
(4739, 'new5916267@yahoo.com.tw', '7815696ecbf1c96e6894b779456d330e', '', '2017-04-19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL,
  `mbid` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `mbid`, `title`, `text`, `date`) VALUES
(1, 4724, '你好', '訊息測試', '2017-04-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `poster`
--

CREATE TABLE IF NOT EXISTS `poster` (
  `id` int(11) NOT NULL COMMENT '編號',
  `mbid` int(11) NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci COMMENT '圖片',
  `toDay` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上傳日期',
  `endDay` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '結束時間',
  `startplay` date NOT NULL,
  `sta_view` tinyint(1) NOT NULL COMMENT '看過',
  `sta_pass` tinyint(1) NOT NULL COMMENT '通過',
  `sta_del` int(11) NOT NULL COMMENT '刪除',
  `sta_play` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `poster`
--

INSERT INTO `poster` (`id`, `mbid`, `link`, `toDay`, `endDay`, `startplay`, `sta_view`, `sta_pass`, `sta_del`, `sta_play`) VALUES
(19, 4729, 'http://i.imgur.com/1TtlnqR.png', '2017-03-27', '2017-03-29', '0000-00-00', 1, 0, 0, 0),
(21, 4729, 'http://i.imgur.com/OIAuYhP.jpg', '2017-03-27', '2017-03-30', '2017-04-19', 1, 1, 0, 1),
(22, 4718, 'http://i.imgur.com/4MlWlbW.jpg', '2017-04-02', '2017-04-28', '2017-04-19', 1, 1, 0, 1),
(23, 4729, 'http://i.imgur.com/0Gbx0f6.jpg', '2017-04-08', '2017-04-30', '2017-04-19', 1, 1, 0, 1),
(24, 4729, 'http://i.imgur.com/3GMeU1B.jpg', '2017-04-11', '2017-04-30', '2017-04-19', 1, 1, 0, 1),
(25, 4729, 'http://i.imgur.com/upJimRH.jpg', '2017-04-11', '2017-04-18', '2017-04-19', 1, 1, 0, 1),
(26, 4729, 'http://i.imgur.com/3M1xDli.jpg', '2017-04-11', '2017-04-24', '2017-04-19', 1, 1, 0, 1),
(27, 4729, 'http://i.imgur.com/zDheXWz.jpg', '2017-04-11', '2017-04-18', '2017-04-19', 1, 1, 0, 1),
(28, 4729, 'http://i.imgur.com/vQV2Vhq.jpg', '2017-04-11', '2017-04-24', '2017-04-19', 1, 1, 0, 1),
(29, 4729, 'http://i.imgur.com/RT9HgI5.jpg', '2017-04-11', '2017-04-30', '0000-00-00', 1, 0, 0, 0),
(30, 4729, 'http://i.imgur.com/4TzWcgW.jpg', '2017-04-13', '2017-04-30', '0000-00-00', 1, 0, 0, 0),
(31, 4739, 'http://i.imgur.com/YLxUmLf.jpg', '2017-04-19', '2017-04-25', '0000-00-00', 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mbid` (`mbid`) USING BTREE;

--
-- Indexes for table `poster`
--
ALTER TABLE `poster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mbid_2` (`mbid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4740;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `poster`
--
ALTER TABLE `poster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '編號',AUTO_INCREMENT=32;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`mbid`) REFERENCES `member` (`id`);

--
-- Constraints for table `poster`
--
ALTER TABLE `poster`
  ADD CONSTRAINT `poster_ibfk_1` FOREIGN KEY (`mbid`) REFERENCES `member` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
