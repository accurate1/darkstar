/*
MySQL Data Transfer
Source Host: localhost
Source Database: dspdb
Target Host: localhost
Target Database: dspdb
Date: 2/16/2018 10:15:51 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for auction_house
-- ----------------------------
CREATE TABLE `auction_house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `stack` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `seller` int(10) unsigned NOT NULL DEFAULT 0,
  `seller_name` varchar(15) DEFAULT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `price` int(10) unsigned NOT NULL DEFAULT 0,
  `buyer_name` varchar(15) DEFAULT NULL,
  `sale` int(10) unsigned NOT NULL DEFAULT 0,
  `sell_date` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `itemid` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
