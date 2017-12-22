-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.6.21-enterprise-commercial-advanced-log - MySQL Enterprise Server - Advanced Edition (Commercial)
-- 서버 OS:                        Win32
-- HeidiSQL 버전:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- hotel 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `hotel` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hotel`;

-- 테이블 hotel.cart 구조 내보내기
CREATE TABLE IF NOT EXISTS `cart` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `roomname` char(50) NOT NULL DEFAULT '0',
  `checkin` char(50) NOT NULL DEFAULT '0',
  `checkout` char(50) NOT NULL DEFAULT '0',
  `people` char(50) NOT NULL DEFAULT '0',
  `pay` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 테이블 데이터 hotel.cart:~0 rows (대략적) 내보내기
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`num`, `roomname`, `checkin`, `checkout`, `people`, `pay`) VALUES
	(1, '0', 'DD/MM/YY', 'DD/MM/YY', '0/0/0', 0),
	(2, '0', 'DD/MM/YY', 'DD/MM/YY', '0/0/0', 0);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- 테이블 hotel.hoteldetail 구조 내보내기
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
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 테이블 데이터 hotel.hoteldetail:~2 rows (대략적) 내보내기
DELETE FROM `hoteldetail`;
/*!40000 ALTER TABLE `hoteldetail` DISABLE KEYS */;
INSERT INTO `hoteldetail` (`idx`, `roomname`, `mainpic`, `content`, `price`, `subpic`, `subcont1`, `subcont2`, `subcont3`) VALUES
	(1, 'sadf', './hotel image/vhotel.jpg', '', '1', '1', '', '', ''),
	(2, '12312', './hotel image/vhotel.jpg', NULL, '1', '1', NULL, NULL, NULL),
	(3, '12312', './hotel image/vhotel.jpg', NULL, '1', '1', NULL, NULL, NULL),
	(4, '12312', './hotel image/vhotel.jpg', NULL, '1', '1', NULL, NULL, NULL);
/*!40000 ALTER TABLE `hoteldetail` ENABLE KEYS */;

-- 테이블 hotel.review 구조 내보내기
CREATE TABLE IF NOT EXISTS `review` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `writer` char(50) NOT NULL DEFAULT '익명',
  `title` char(50) NOT NULL DEFAULT '제목',
  `content` char(50) NOT NULL DEFAULT '내용',
  `regdate` date NOT NULL,
  `star` char(50) NOT NULL DEFAULT '5',
  `pic` char(50) DEFAULT 'none',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 테이블 데이터 hotel.review:~2 rows (대략적) 내보내기
DELETE FROM `review`;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` (`idx`, `writer`, `title`, `content`, `regdate`, `star`, `pic`) VALUES
	(1, '123', '제목', '내용', '2017-12-22', '3', 'none'),
	(2, 'd', '제목', '내용', '2017-12-22', '5', './reviewimage/a.jpg');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;

-- 테이블 hotel.tblhotel 구조 내보내기
CREATE TABLE IF NOT EXISTS `tblhotel` (
  `id` char(50) DEFAULT NULL,
  `pass` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `cart` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 hotel.tblhotel:~0 rows (대략적) 내보내기
DELETE FROM `tblhotel`;
/*!40000 ALTER TABLE `tblhotel` DISABLE KEYS */;
INSERT INTO `tblhotel` (`id`, `pass`, `email`, `cart`) VALUES
	('aa', 'aa', 'a@b', 'null,1,1');
/*!40000 ALTER TABLE `tblhotel` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
