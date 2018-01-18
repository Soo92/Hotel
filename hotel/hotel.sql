-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.20-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for hotel
CREATE DATABASE IF NOT EXISTS `hotel` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hotel`;

-- Dumping structure for table hotel.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `roomname` char(50) NOT NULL DEFAULT '0',
  `checkin` char(50) NOT NULL DEFAULT '0',
  `checkout` char(50) DEFAULT '0',
  `people` char(50) NOT NULL DEFAULT '0',
  `pay` char(50) DEFAULT '0',
  `status` char(50) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.cart: ~8 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`num`, `roomname`, `checkin`, `checkout`, `people`, `pay`, `status`) VALUES
	(1, 'Deluxe', '01/01/2018', '01/16/2018', '0/0/0', '0', 'complete'),
	(4, 'Standard', '01/01/2018', '01/03/2018', '0/0/0', '300000', 'noshow'),
	(13, 'Standard', '01/21/2018', '01/27/2018', '0/0/0', '900000', 'cart'),
	(14, 'Standard', '01/29/2018', '02/02/2018', '0/0/0', '0', 'cart'),
	(15, 'King', '01/16/2018', '01/17/2018', '0/0/0', '90000', 'noshow'),
	(16, 'Standard', '02/07/2018', '02/10/2018', '0/0/0', '450000', 'complete'),
	(27, 'ㄴㅇㄻㄴㄹㅇ', '02/04/2018 00:00', '02/04/2018 01:00', 'admin@lss', '#3c8dbc', 'memo'),
	(63, 'ㅁㄴㅇㄻㄴㅇㄹ', '02/03/2018 00:00', '02/03/2018 01:00', 'admin@lss', '#3c8dbc', 'memo'),
	(64, 'ㄴㅁㅇㄹㄴ', '01/18/2018 00:00', '01/18/2018 01:00', 'admin@lss', '#f012be', 'memo'),
	(65, 'sadfas', '01/18/2018 05:30', '01/18/2018 11:30', 'admin@lss', '#3c8dbc', 'memo'),
	(66, 'ㅁㄴㅇㄻ', '01/20/2018 00:00', '01/20/2018 01:00', 'admin@lss', '#3c8dbc', 'memo'),
	(67, 'ㄴㅁㅇㄻㄴ', '02/06/2018 00:00', '02/06/2018 01:00', 'admin@lss', '#23527c', 'memo');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table hotel.count
CREATE TABLE IF NOT EXISTS `count` (
  `total` int(11) DEFAULT NULL,
  `reserve` int(11) DEFAULT NULL,
  `year` char(50) DEFAULT NULL,
  `month` char(50) DEFAULT NULL,
  `day` char(50) NOT NULL,
  PRIMARY KEY (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.count: ~137 rows (approximately)
DELETE FROM `count`;
/*!40000 ALTER TABLE `count` DISABLE KEYS */;
INSERT INTO `count` (`total`, `reserve`, `year`, `month`, `day`) VALUES
	(193, 1, '2008', '2008-01', '2008-01-12'),
	(500, 1, '2008', '2008-01', '2008-01-13'),
	(27, 1, '2008', '2008-01', '2008-01-14'),
	(15, 1, '2008', '2008-01', '2008-01-16'),
	(189, 1, '2008', '2008-01', '2008-01-17'),
	(5, 1, '2008', '2008-01', '2008-01-18'),
	(9, 1, '2008', '2008-01', '2008-01-19'),
	(191, 1, '2009', '2009-01', '2009-01-12'),
	(191, 1, '2009', '2009-01', '2009-01-13'),
	(26, 1, '2009', '2009-01', '2009-01-14'),
	(19, 1, '2009', '2009-01', '2009-01-16'),
	(181, 1, '2009', '2009-01', '2009-01-17'),
	(8, 1, '2009', '2009-01', '2009-01-18'),
	(10, 1, '2009', '2009-01', '2009-01-19'),
	(192, 1, '2010', '2010-01', '2010-01-12'),
	(192, 1, '2010', '2010-01', '2010-01-13'),
	(21, 1, '2010', '2010-01', '2010-01-14'),
	(20, 1, '2010', '2010-01', '2010-01-16'),
	(180, 1, '2010', '2010-01', '2010-01-17'),
	(8, 1, '2010', '2010-01', '2010-01-18'),
	(6, 1, '2010', '2010-01', '2010-01-19'),
	(193, 1, '2011', '2011-01', '2011-01-12'),
	(180, 1, '2011', '2011-01', '2011-01-13'),
	(20, 1, '2011', '2011-01', '2011-01-14'),
	(13, 1, '2011', '2011-01', '2011-01-16'),
	(186, 1, '2011', '2011-01', '2011-01-17'),
	(10, 1, '2011', '2011-01', '2011-01-18'),
	(2, 1, '2011', '2011-01', '2011-01-19'),
	(191, 1, '2012', '2012-01', '2012-01-12'),
	(18, 1, '2012', '2012-01', '2012-01-13'),
	(20, 1, '2012', '2012-01', '2012-01-14'),
	(18, 1, '2012', '2012-01', '2012-01-16'),
	(184, 1, '2012', '2012-01', '2012-01-17'),
	(4, 1, '2012', '2012-01', '2012-01-18'),
	(1, 1, '2012', '2012-01', '2012-01-19'),
	(193, 1, '2013', '2013-01', '2013-01-12'),
	(15, 1, '2013', '2013-01', '2013-01-13'),
	(20, 1, '2013', '2013-01', '2013-01-14'),
	(15, 1, '2013', '2013-01', '2013-01-16'),
	(182, 1, '2013', '2013-01', '2013-01-17'),
	(1, 1, '2013', '2013-01', '2013-01-18'),
	(8, 1, '2013', '2013-01', '2013-01-19'),
	(194, 1, '2014', '2014-01', '2014-01-12'),
	(1, 1, '2014', '2014-01', '2014-01-13'),
	(24, 1, '2014', '2014-01', '2014-01-14'),
	(15, 1, '2014', '2014-01', '2014-01-16'),
	(189, 1, '2014', '2014-01', '2014-01-17'),
	(10, 1, '2014', '2014-01', '2014-01-18'),
	(9, 1, '2014', '2014-01', '2014-01-19'),
	(191, 1, '2015', '2015-01', '2015-01-12'),
	(191, 1, '2015', '2015-01', '2015-01-13'),
	(19, 1, '2015', '2015-01', '2015-01-14'),
	(16, 1, '2015', '2015-01', '2015-01-16'),
	(180, 1, '2015', '2015-01', '2015-01-17'),
	(1, 1, '2015', '2015-01', '2015-01-18'),
	(4, 1, '2015', '2015-01', '2015-01-19'),
	(197, 1, '2016', '2016-01', '2016-01-12'),
	(1627, 1, '2016', '2016-01', '2016-01-13'),
	(23, 1, '2016', '2016-01', '2016-01-14'),
	(16, 1, '2016', '2016-01', '2016-01-16'),
	(181, 1, '2016', '2016-01', '2016-01-17'),
	(1, 1, '2016', '2016-01', '2016-01-18'),
	(4, 1, '2016', '2016-01', '2016-01-19'),
	(198, 1, '2017', '2017-01', '2017-01-12'),
	(189, 1, '2017', '2017-01', '2017-01-13'),
	(26, 1, '2017', '2017-01', '2017-01-14'),
	(20, 1, '2017', '2017-01', '2017-01-16'),
	(187, 1, '2017', '2017-01', '2017-01-17'),
	(10, 1, '2017', '2017-01', '2017-01-18'),
	(8, 1, '2017', '2017-01', '2017-01-19'),
	(198, 1, '2017', '2017-03', '2017-03-12'),
	(198, 1, '2017', '2017-03', '2017-03-13'),
	(18, 1, '2017', '2017-03', '2017-03-14'),
	(19, 1, '2017', '2017-03', '2017-03-16'),
	(189, 1, '2017', '2017-03', '2017-03-17'),
	(3, 1, '2017', '2017-03', '2017-03-18'),
	(1, 1, '2017', '2017-03', '2017-03-19'),
	(189, 1, '2017', '2017-04', '2017-04-12'),
	(189, 1, '2017', '2017-04', '2017-04-13'),
	(20, 1, '2017', '2017-04', '2017-04-14'),
	(17, 1, '2017', '2017-04', '2017-04-16'),
	(184, 1, '2017', '2017-04', '2017-04-17'),
	(3, 1, '2017', '2017-04', '2017-04-18'),
	(2, 1, '2017', '2017-04', '2017-04-19'),
	(191, 1, '2017', '2017-05', '2017-05-12'),
	(1630, 1, '2017', '2017-05', '2017-05-13'),
	(18, 1, '2017', '2017-05', '2017-05-14'),
	(20, 1, '2017', '2017-05', '2017-05-16'),
	(188, 1, '2017', '2017-05', '2017-05-17'),
	(9, 1, '2017', '2017-05', '2017-05-18'),
	(3, 1, '2017', '2017-05', '2017-05-19'),
	(191, 1, '2017', '2017-06', '2017-06-12'),
	(15, 1, '2017', '2017-06', '2017-06-13'),
	(26, 1, '2017', '2017-06', '2017-06-14'),
	(15, 1, '2017', '2017-06', '2017-06-16'),
	(180, 1, '2017', '2017-06', '2017-06-17'),
	(10, 1, '2017', '2017-06', '2017-06-18'),
	(9, 1, '2017', '2017-06', '2017-06-19'),
	(190, 1, '2017', '2017-07', '2017-07-12'),
	(21, 1, '2017', '2017-07', '2017-07-13'),
	(24, 1, '2017', '2017-07', '2017-07-14'),
	(21, 1, '2017', '2017-07', '2017-07-16'),
	(187, 1, '2017', '2017-07', '2017-07-17'),
	(1, 1, '2017', '2017-07', '2017-07-18'),
	(3, 1, '2017', '2017-07', '2017-07-19'),
	(191, 1, '2017', '2017-08', '2017-08-12'),
	(1628, 1, '2017', '2017-08', '2017-08-13'),
	(22, 1, '2017', '2017-08', '2017-08-14'),
	(17, 1, '2017', '2017-08', '2017-08-16'),
	(187, 1, '2017', '2017-08', '2017-08-17'),
	(7, 1, '2017', '2017-08', '2017-08-18'),
	(8, 1, '2017', '2017-08', '2017-08-19'),
	(189, 1, '2017', '2017-09', '2017-09-12'),
	(19, 1, '2017', '2017-09', '2017-09-13'),
	(23, 1, '2017', '2017-09', '2017-09-14'),
	(19, 1, '2017', '2017-09', '2017-09-16'),
	(181, 1, '2017', '2017-09', '2017-09-17'),
	(4, 1, '2017', '2017-09', '2017-09-18'),
	(2, 1, '2017', '2017-09', '2017-09-19'),
	(189, 1, '2017', '2017-10', '2017-10-12'),
	(18, 1, '2017', '2017-10', '2017-10-13'),
	(21, 1, '2017', '2017-10', '2017-10-14'),
	(18, 1, '2017', '2017-10', '2017-10-16'),
	(189, 1, '2017', '2017-10', '2017-10-17'),
	(7, 1, '2017', '2017-10', '2017-10-18'),
	(10, 1, '2017', '2017-10', '2017-10-19'),
	(192, 1, '2017', '2017-11', '2017-11-12'),
	(182, 1, '2017', '2017-11', '2017-11-13'),
	(20, 1, '2017', '2017-11', '2017-11-14'),
	(21, 1, '2017', '2017-11', '2017-11-16'),
	(182, 1, '2017', '2017-11', '2017-11-17'),
	(10, 1, '2017', '2017-11', '2017-11-18'),
	(4, 1, '2017', '2017-11', '2017-11-19'),
	(10, 1, '2017', '2017-12', '2017-12-12'),
	(9, 1, '2017', '2017-12', '2017-12-13'),
	(27, 1, '2017', '2017-12', '2017-12-14'),
	(10, 1, '2017', '2017-12', '2017-12-16'),
	(181, 1, '2017', '2017-12', '2017-12-17'),
	(9, 1, '2017', '2017-12', '2017-12-18'),
	(1, 1, '2017', '2017-12', '2017-12-19'),
	(197, 1, '2018', '2018-01', '2018-01-02'),
	(182, 1, '2018', '2018-01', '2018-01-03'),
	(182, 1, '2018', '2018-01', '2018-01-04'),
	(182, 1, '2018', '2018-01', '2018-01-05'),
	(182, 1, '2018', '2018-01', '2018-01-06'),
	(182, 1, '2018', '2018-01', '2018-01-07'),
	(256, 32, '2018', '2018-01', '2018-01-08'),
	(183, 1, '2018', '2018-01', '2018-01-09'),
	(257, 1, '2018', '2018-01', '2018-01-10'),
	(183, 45, '2018', '2018-01', '2018-01-11'),
	(183, 1, '2018', '2018-01', '2018-01-12'),
	(257, 1, '2018', '2018-01', '2018-01-13'),
	(257, 1, '2018', '2018-01', '2018-01-14'),
	(195, 12, '2018', '2018-01', '2018-01-15'),
	(227, 1, '2018', '2018-01', '2018-01-16'),
	(567, 12, '2018', '2018-01', '2018-01-17'),
	(14, 15, '2018', '2018-01', '2018-01-18'),
	(10, 1, '2018', '2018-01', '2018-01-19');
/*!40000 ALTER TABLE `count` ENABLE KEYS */;

-- Dumping structure for table hotel.countrycount
CREATE TABLE IF NOT EXISTS `countrycount` (
  `country` char(50) NOT NULL,
  `count` char(50) NOT NULL,
  PRIMARY KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.countrycount: ~11 rows (approximately)
DELETE FROM `countrycount`;
/*!40000 ALTER TABLE `countrycount` DISABLE KEYS */;
INSERT INTO `countrycount` (`country`, `count`) VALUES
	('AU', '425'),
	('BR', '1245'),
	('CA', '503'),
	('CN', '1524'),
	('DE', '3'),
	('FR', '233'),
	('GB', '123'),
	('IN', '745'),
	('KR', '2115'),
	('SA', '123'),
	('US', '249');
/*!40000 ALTER TABLE `countrycount` ENABLE KEYS */;

-- Dumping structure for table hotel.hoteldetail
CREATE TABLE IF NOT EXISTS `hoteldetail` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `roomname` char(50) DEFAULT NULL,
  `mainpic` char(50) DEFAULT NULL,
  `content` char(50) DEFAULT NULL,
  `price` char(50) DEFAULT NULL,
  `subpic` char(50) DEFAULT NULL,
  `subcont1` char(50) DEFAULT NULL,
  `subcont2` char(50) DEFAULT NULL,
  `subcont3` char(50) DEFAULT NULL,
  `color` char(50) DEFAULT 'black',
  PRIMARY KEY (`idx`),
  UNIQUE KEY `roomname` (`roomname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.hoteldetail: ~4 rows (approximately)
DELETE FROM `hoteldetail`;
/*!40000 ALTER TABLE `hoteldetail` DISABLE KEYS */;
INSERT INTO `hoteldetail` (`idx`, `roomname`, `mainpic`, `content`, `price`, `subpic`, `subcont1`, `subcont2`, `subcont3`, `color`) VALUES
	(5, 'King', 'king.jpg', '안락하고 여유로운 공간의 품격 있는 스위트 객실', '90000', '킹은 여유로운 공간에 품격을 더한 객실입니다. 배스터브와 배스 세트가 마련되어 여행의 피로', 'king01.jpg', 'king02.jpg', 'king03.jpg', '#600F70'),
	(6, 'Deluxe', 'de.jpg', '공간 활용과 커뮤니케이션 활동에 용이한 기능적인 객실', '50000', '집에 머무르는 듯한 분위기를 극대화한 공간입니다. 간단한 조리 시설과 다이닝 테이블 세트가', 'de01.jpg', 'de02.jpg', 'de03.jpg', '#5855E8'),
	(7, 'Superior', 'supe.jpg', '공간 디자인이 돋보이는 쾌적한 객실', '300000', '퀸 사이즈/싱글 사이즈의 트윈 침대와 북미 PCF사의 최고급 침구가 마련되어 있으며, 취향', 'supe01.jpg', 'supe02.jpg', 'supe03.jpg', '#63B43C'),
	(8, 'Standard', 'st.jpg', '높은 수준을 자랑하는 기본적인 객실', '150000', '객실은 효율적이면서 개성 있는 공간으로 구현되었습니다. 수납가구 대신 선반들을', 'st01.jpg', 'st02.jpg', 'st03.jpg', '#EB0F70');
/*!40000 ALTER TABLE `hoteldetail` ENABLE KEYS */;

-- Dumping structure for table hotel.review
CREATE TABLE IF NOT EXISTS `review` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `writer` char(50) NOT NULL DEFAULT '익명',
  `title` char(50) NOT NULL DEFAULT '제목',
  `content` char(50) NOT NULL DEFAULT '내용',
  `regdate` date NOT NULL,
  `star` char(50) NOT NULL DEFAULT '5',
  `pic` char(50) DEFAULT 'none',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.review: ~4 rows (approximately)
DELETE FROM `review`;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` (`idx`, `writer`, `title`, `content`, `regdate`, `star`, `pic`) VALUES
	(1, 'a', 'asdf', 'asdfasd', '2017-12-25', '3', 'chatt8.png'),
	(2, 'a', 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', '2017-12-26', '3', 'KakaoTalk_20170616_1243559541.jpg'),
	(7, 'admin@lss', 'asdasd', 'asddsa', '2017-12-27', '3', 'stick2.png'),
	(8, 'admin@lss', 'ggg', '12434425', '2017-12-27', '3', NULL);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;

-- Dumping structure for table hotel.tblfileload
CREATE TABLE IF NOT EXISTS `tblfileload` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `file` char(50) NOT NULL DEFAULT '0',
  `size` char(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.tblfileload: ~0 rows (approximately)
DELETE FROM `tblfileload`;
/*!40000 ALTER TABLE `tblfileload` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfileload` ENABLE KEYS */;

-- Dumping structure for table hotel.tblhotel
CREATE TABLE IF NOT EXISTS `tblhotel` (
  `id` char(50) DEFAULT NULL,
  `pass` char(50) DEFAULT NULL,
  `email` char(50) NOT NULL,
  `cart` char(50) DEFAULT NULL,
  `grade` char(50) DEFAULT 'normal',
  `pic` char(50) DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.tblhotel: ~6 rows (approximately)
DELETE FROM `tblhotel`;
/*!40000 ALTER TABLE `tblhotel` DISABLE KEYS */;
INSERT INTO `tblhotel` (`id`, `pass`, `email`, `cart`, `grade`, `pic`) VALUES
	('a', 'a', 'a', '', 'normal', NULL),
	('Choi', 'admin', 'admin@ccg', NULL, 'admin', NULL),
	('Goo', 'admin', 'admin@ljg', NULL, 'admin', NULL),
	('Soo', 'admin', 'admin@lss', ',16,17,1,15', 'admin', NULL),
	('123', '1', 'dd@naver.com', NULL, 'normal', NULL),
	('aaa', '1', 'sss@nacver.dcom', NULL, 'normal', NULL);
/*!40000 ALTER TABLE `tblhotel` ENABLE KEYS */;

-- Dumping structure for table hotel.tblproduct
CREATE TABLE IF NOT EXISTS `tblproduct` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `detail` char(50) DEFAULT NULL,
  `image` char(50) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.tblproduct: ~0 rows (approximately)
DELETE FROM `tblproduct`;
/*!40000 ALTER TABLE `tblproduct` DISABLE KEYS */;
INSERT INTO `tblproduct` (`no`, `name`, `price`, `detail`, `image`) VALUES
	(1, '1', 1, '1', '1');
/*!40000 ALTER TABLE `tblproduct` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
