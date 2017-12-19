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

-- Dumping structure for table hotel.hoteldetail
CREATE TABLE IF NOT EXISTS `hoteldetail` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `roomname` char(50) DEFAULT NULL,
  `mainpic` char(50) DEFAULT NULL,
  `subpic` char(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.hoteldetail: ~0 rows (approximately)
DELETE FROM `hoteldetail`;
/*!40000 ALTER TABLE `hoteldetail` DISABLE KEYS */;
INSERT INTO `hoteldetail` (`idx`, `roomname`, `mainpic`, `subpic`, `price`) VALUES
	(1, '1', '1', '1', 1);
/*!40000 ALTER TABLE `hoteldetail` ENABLE KEYS */;

-- Dumping structure for table hotel.tblhotel
CREATE TABLE IF NOT EXISTS `tblhotel` (
  `id` char(50) DEFAULT NULL,
  `pass` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.tblhotel: ~0 rows (approximately)
DELETE FROM `tblhotel`;
/*!40000 ALTER TABLE `tblhotel` DISABLE KEYS */;
INSERT INTO `tblhotel` (`id`, `pass`, `email`) VALUES
	('aa', 'aa', 'dltjdtn321@naver.com');
/*!40000 ALTER TABLE `tblhotel` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
