/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50550
Source Host           : 127.0.0.1:3306
Source Database       : sharefiles

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2017-10-20 11:54:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sf_record
-- ----------------------------
DROP TABLE IF EXISTS `sf_record`;
CREATE TABLE `sf_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `dtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_sid` (`sid`),
  KEY `fk_uid2` (`uid`),
  CONSTRAINT `fk_uid2` FOREIGN KEY (`uid`) REFERENCES `sf_user` (`id`),
  CONSTRAINT `fk_sid` FOREIGN KEY (`sid`) REFERENCES `sf_source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sf_record
-- ----------------------------
INSERT INTO `sf_record` VALUES ('1', '1', '2', '2017-10-20 11:48:29');

-- ----------------------------
-- Table structure for sf_source
-- ----------------------------
DROP TABLE IF EXISTS `sf_source`;
CREATE TABLE `sf_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(128) NOT NULL,
  `spath` varchar(512) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `uploadtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tag` varchar(256) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `dcount` int(11) DEFAULT '0',
  `summary` varchar(512) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_uid` (`uid`),
  CONSTRAINT `fk_uid` FOREIGN KEY (`uid`) REFERENCES `sf_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sf_source
-- ----------------------------
INSERT INTO `sf_source` VALUES ('1', 'java基础语法.txt', '/public/files/', '102400', '2017-10-20 11:37:32', 'java基础，java语法，面向对象', '2', '1', '', '1');

-- ----------------------------
-- Table structure for sf_user
-- ----------------------------
DROP TABLE IF EXISTS `sf_user`;
CREATE TABLE `sf_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `integral` int(11) DEFAULT '20',
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sf_user
-- ----------------------------
INSERT INTO `sf_user` VALUES ('1', 'softeem', 's123456', '13247116002', '20', '2017-10-20 10:20:41');
INSERT INTO `sf_user` VALUES ('2', 'admin', 'admin123', '13247654891', '20', '2017-10-20 11:22:15');
