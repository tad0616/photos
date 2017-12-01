-- Adminer 4.2.5 MySQL dump

-- SET NAMES utf8;
-- SET time_zone = '+00:00';
-- SET foreign_key_checks = 0;
-- SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

-- DROP DATABASE IF EXISTS `photographic`;
-- CREATE DATABASE `photographic` /*!40100 DEFAULT CHARACTER SET utf8 */;
-- USE `photographic`;

DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `sn` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '流水號',
  `sort` int(11) NOT NULL COMMENT '排序',
  `title` varchar(30) NOT NULL COMMENT '分類名稱',
  `description` varchar(500) NOT NULL COMMENT '分類說明',
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


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

TRUNCATE `members`;
INSERT INTO `members` (`id`, `username`, `password`, `email`, `verified`, `mod_timestamp`) VALUES
('145535a1ec1d54db0a',	'admin',	'$2y$10$EzNcbgEtr5jCgFCh71ahdeGOkkfIOt50PF/3cBjivH72yaLpxRW9G',	'edge@tetto-design.com',	1,	'2017-11-29 14:21:13'),
('24285a1ec3a61abe9',	'edge',	'$2y$10$j9qkh69fraCm4mMkWNUsXeag1dizW0l6CF2Kx9tEKtrMW6B3HsDr2',	'iamedge@gmail.com',	1,	'2017-11-29 14:27:17');

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


-- 2017-11-29 14:53:42
