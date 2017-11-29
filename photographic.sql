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
  `title` varchar(300) NOT NULL COMMENT '照片標題',
  `username` varchar(65) NOT NULL COMMENT '作者',
  `description` mediumtext NOT NULL COMMENT '作品介紹',
  `exif` text NOT NULL COMMENT '圖檔資訊',
  `update_time` datetime NOT NULL COMMENT '修改時間',
  `create_time` datetime NOT NULL COMMENT '建立時間',
  PRIMARY KEY (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- 2017-11-29 11:55:18
