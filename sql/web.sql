/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : web

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-01-29 11:01:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '账号ID',
  `account_name` varchar(32) DEFAULT '' COMMENT '账号名',
  `account_pw` char(33) DEFAULT '' COMMENT '密码',
  `user_channel` varchar(64) DEFAULT '' COMMENT '用户渠道',
  PRIMARY KEY (`id`),
  KEY `name` (`account_name`,`account_pw`) USING BTREE,
  KEY `phone` (`account_pw`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=128912 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('128876', 'leiguan', 'sssss', 'no1');
INSERT INTO `account` VALUES ('128877', 'aasdasd', 'asdasd', 'qqw');
INSERT INTO `account` VALUES ('128878', 'qqwef', 'ssss', 'ss');
INSERT INTO `account` VALUES ('128879', 'asdfasdfsadf', 'asdfasdfasdf', 'asdfasdfsadf');
INSERT INTO `account` VALUES ('128880', 'wuhaha', 'leiguan', 'wuhaha');
INSERT INTO `account` VALUES ('128881', 'nininii', 'nininii', 'nininii');
INSERT INTO `account` VALUES ('128882', 'nininii', 'nininii', 'nininii');
INSERT INTO `account` VALUES ('128883', null, null, null);
INSERT INTO `account` VALUES ('128884', 'asdfsafasfas1', 'wangjian', 'asdfsafasfas1');
INSERT INTO `account` VALUES ('128885', '1231231s', 'leiguan', '1231231s');
INSERT INTO `account` VALUES ('128886', 'leiguan', 'leiguan', 'leiguan');
INSERT INTO `account` VALUES ('128887', null, null, null);
INSERT INTO `account` VALUES ('128888', 'xxxuuuu', 'wangjian', 'xxxuuuu');
INSERT INTO `account` VALUES ('128889', 'asdfasdfs', 'asdfasdfs', 'asdfasdfs');
INSERT INTO `account` VALUES ('128890', 'asdfasdfs11', 'wangjian', 'asdfasdfs11');
INSERT INTO `account` VALUES ('128891', 'ssdsssddf3', 'wangjian', 'ssdsssddf3');
INSERT INTO `account` VALUES ('128892', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128893', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128894', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128895', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128896', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128897', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128898', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128899', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128900', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128901', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128902', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128903', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128904', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128905', 'xxbbssbb', 'aa07d559cde542c6db7bb90d12ef0bb5', 'xxbbssbb');
INSERT INTO `account` VALUES ('128906', 'session', '8159a7e13d641d7969026df22fca0248', 'session');
INSERT INTO `account` VALUES ('128907', 'admin', '09b95660cad3653a722d0fca968fb05c', 'admin');
INSERT INTO `account` VALUES ('128908', 'sdfsdfsdfs', '26a9feceaa15bff4ba77986c1af0c49c', 'sdfsdfsdfs');
INSERT INTO `account` VALUES ('128909', 's13sdfsd', '6034d8cdecc70de6935cdbbbe5ae0b68', 's13sdfsd');
INSERT INTO `account` VALUES ('128910', 'internal_dev', '44643a5b9562751cbf76f72ffdd363c0', 'internal_dev');
INSERT INTO `account` VALUES ('128911', 'xxxxxxxx', '65e8c268172bdd292fc63604eeb38c5e', 'xxxxxxxx');
