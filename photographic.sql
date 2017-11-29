-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `photographic` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `photographic`;

DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `sn` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '流水號',
  `title` varchar(30) NOT NULL COMMENT '分類名稱',
  `description` varchar(500) NOT NULL COMMENT '分類說明',
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `classify` (`sn`, `title`, `description`) VALUES
(1,	'室內',	'');

DROP TABLE IF EXISTS `loginattempts`;
CREATE TABLE `loginattempts` (
  `IP` varchar(20) NOT NULL,
  `Attempts` int(11) NOT NULL,
  `LastLogin` datetime NOT NULL,
  `Username` varchar(65) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` char(23) NOT NULL,
  `username` varchar(65) NOT NULL DEFAULT '',
  `password` varchar(65) NOT NULL DEFAULT '',
  `email` varchar(65) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `mod_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `sn` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水號',
  `classify_sn` tinyint(2) unsigned NOT NULL COMMENT '所屬分類',
  `title` varchar(300) NOT NULL COMMENT '照片標題',
  `username` varchar(65) NOT NULL COMMENT '作者',
  `description` mediumtext NOT NULL COMMENT '作品介紹',
  `exif` text NOT NULL COMMENT '圖檔資訊',
  `update_time` datetime NOT NULL COMMENT '修改時間',
  `create_time` datetime NOT NULL COMMENT '建立時間',
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `photo` (`sn`, `classify_sn`, `title`, `username`, `description`, `exif`, `update_time`, `create_time`) VALUES
(4,	1,	'整原動為心書去',	'edge',	'氣再有認，前了一……世際總且；客放受要注位包使眼家房操母怎飛成子：便車聞計高樣顧府正集經時後學出球總出平能分亮小減父相，頭手子營化無金腳用歡統勢是要深，懷一到海官行？立關連公園又頭本生反時……有果時生種連求的了為後應無是，大我歡這些重有打器子；士頭假……據亞為各，起們了面達有上超是且張，腦活列！死加國真待！得證還會對拿的現馬不葉：經那意初於蘭解，沒下品數拿白食格國人。\r\n\r\n各究產器實一媽象治國覺類題用！簡定樂物我個供朋排引家生路演分還：數精話區在安水議，相白溫一我同部！有了亮發定朋河步建個；成還時中也路表業格是能她查像破許山法歡使腳進……血經動香醫候亮？經麼得都山都麼有送山些語感行時？',	'',	'2017-11-29 19:29:41',	'2017-11-29 19:29:41');

-- 2017-11-29 12:08:49
