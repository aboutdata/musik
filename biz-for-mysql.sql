/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : biz

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2015-08-17 12:48:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `inet_adress` varchar(255) NOT NULL,
  `mark` int(11) DEFAULT NULL,
  `music_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9b081xibxarcp5si0ghi78abc` (`music_id`),
  CONSTRAINT `FK_9b081xibxarcp5si0ghi78abc` FOREIGN KEY (`music_id`) REFERENCES `music` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('0', 'Il est au top Colonel Reyel', '2015-08-17 12:10:10', '127.0.0.1', '4', '0');
INSERT INTO `comment` VALUES ('1', 'Maitre GIm est toujours Maitre', '2015-08-17 12:10:10', '127.0.0.1', '4', '1');
INSERT INTO `comment` VALUES ('2', 'J\'adore ce mec', '2015-08-17 12:10:10', '127.0.0.1', '4', '0');
INSERT INTO `comment` VALUES ('3', '5/5', '2015-08-17 12:10:10', '127.0.0.1', '5', '0');
INSERT INTO `comment` VALUES ('4', '5/5', '2015-08-17 12:10:10', '127.0.0.1', '5', '1');
INSERT INTO `comment` VALUES ('5', 'Cool', '2015-08-17 12:10:10', '127.0.0.1', '0', '1');
INSERT INTO `comment` VALUES ('6', '5/5', '2015-08-17 12:10:10', '127.0.0.1', '5', '2');

-- ----------------------------
-- Table structure for `music`
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_11cfeu8v4js1bd30raycv09ei` (`person_id`),
  CONSTRAINT `FK_11cfeu8v4js1bd30raycv09ei` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('0', '4', 'https://dl.dropboxusercontent.com/u/75646284/musikloud/ColonelReyel-Aurlie.mp3', 'AURELI', '0');
INSERT INTO `music` VALUES ('1', '5', 'https://dl.dropboxusercontent.com/u/75646284/musikloud/MaitreGims-Bella.mp3', 'Bella', '1');
INSERT INTO `music` VALUES ('2', '3', 'https://dl.dropboxusercontent.com/u/75646284/musikloud/Kenny-TheMoment.mp3', 'THE Moment', '2');

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('0', 'Reyel', 'Colonel');
INSERT INTO `person` VALUES ('1', 'GIM', 'Maitre');
INSERT INTO `person` VALUES ('2', 'G', 'KENNY');

-- ----------------------------
-- Table structure for `user_admin`
-- ----------------------------
DROP TABLE IF EXISTS `user_admin`;
CREATE TABLE `user_admin` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_admin
-- ----------------------------
INSERT INTO `user_admin` VALUES ('1', '12345', 'test');
INSERT INTO `user_admin` VALUES ('2', 'azerty', 'ramanou');
