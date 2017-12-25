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
  `checkout` char(50) NOT NULL DEFAULT '0',
  `people` char(50) NOT NULL DEFAULT '0',
  `pay` char(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.cart: ~3 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`num`, `roomname`, `checkin`, `checkout`, `people`, `pay`) VALUES
	(1, '3000', '12/08/2017', '12/22/2017', '3/1/0', '42000'),
	(2, '0', 'DD/MM/YY', 'DD/MM/YY', '0/0/0', '0'),
	(3, '2000', '12/16/2017', '12/28/2017', '1/0/0', '24000'),
	(4, '0', '12/15/2017', 'DD/MM/YY', '1/0/0', '0');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table hotel.hoteldetail
CREATE TABLE IF NOT EXISTS `hoteldetail` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `roomname` char(50) DEFAULT NULL,
  `mainpic` char(50) DEFAULT NULL,
  `content` char(50) DEFAULT NULL,
  `price` char(50) DEFAULT NULL,
  `subpic` char(50) NOT NULL DEFAULT '0',
  `subcont1` char(50) DEFAULT NULL,
  `subcont2` char(50) DEFAULT NULL,
  `subcont3` char(50) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.hoteldetail: ~3 rows (approximately)
DELETE FROM `hoteldetail`;
/*!40000 ALTER TABLE `hoteldetail` DISABLE KEYS */;
INSERT INTO `hoteldetail` (`idx`, `roomname`, `mainpic`, `content`, `price`, `subpic`, `subcont1`, `subcont2`, `subcont3`) VALUES
	(1, '1', 'pic1.jpg', NULL, NULL, '0', '1', NULL, NULL),
	(2, '1', 'pic2.jpg', NULL, NULL, '0', '1', NULL, NULL),
	(3, '1', 'pic3.jpg', NULL, NULL, '0', '1', NULL, NULL);
/*!40000 ALTER TABLE `hoteldetail` ENABLE KEYS */;

-- Dumping structure for table hotel.review
CREATE TABLE IF NOT EXISTS `review` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `writer` char(50) DEFAULT NULL,
  `title` char(50) DEFAULT NULL,
  `content` char(50) DEFAULT NULL,
  `regdate` char(50) DEFAULT NULL,
  `star` char(50) DEFAULT NULL,
  `pic` char(50) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.review: ~0 rows (approximately)
DELETE FROM `review`;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` (`idx`, `writer`, `title`, `content`, `regdate`, `star`, `pic`) VALUES
	(1, 'asdf', 'asdf', 'asdfasd', '2017.12.25.', '3', 'chatt8.png');
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
  `email` char(50) DEFAULT NULL,
  `cart` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.tblhotel: ~1 rows (approximately)
DELETE FROM `tblhotel`;
/*!40000 ALTER TABLE `tblhotel` DISABLE KEYS */;
INSERT INTO `tblhotel` (`id`, `pass`, `email`, `cart`) VALUES
	('a', 'a', 'a', ',1,2,3,2');
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
