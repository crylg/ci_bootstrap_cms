/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.2
Source Server Version : 50703
Source Host           : 192.168.1.2:3306
Source Database       : ddz_data

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2016-01-15 11:40:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account_login
-- ----------------------------
DROP TABLE IF EXISTS `account_login`;
CREATE TABLE `account_login` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `account_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '账号ID',
  `device` varchar(64) NOT NULL DEFAULT '' COMMENT '设备ID',
  `datatime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24747 DEFAULT CHARSET=utf8 COMMENT='登录统计表';

-- ----------------------------
-- Records of account_login
-- ----------------------------
INSERT INTO `account_login` VALUES ('24616', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-12 18:29:52');
INSERT INTO `account_login` VALUES ('24617', '115191', '32c5a5701b9c6b8ab239d84af8f85ae', '2016-01-12 18:35:36');
INSERT INTO `account_login` VALUES ('24618', '115191', '32c5a5701b9c6b8ab239d84af8f85ae', '2016-01-12 18:42:51');
INSERT INTO `account_login` VALUES ('24619', '110073', 'GameDev004', '2016-01-12 18:44:37');
INSERT INTO `account_login` VALUES ('24620', '110073', 'GameDev004', '2016-01-12 18:45:20');
INSERT INTO `account_login` VALUES ('24621', '110073', 'GameDev004', '2016-01-12 18:45:43');
INSERT INTO `account_login` VALUES ('24622', '110073', 'GameDev004', '2016-01-12 18:46:05');
INSERT INTO `account_login` VALUES ('24623', '110073', 'GameDev004', '2016-01-12 18:46:34');
INSERT INTO `account_login` VALUES ('24624', '115191', '32c5a5701b9c6b8ab239d84af8f85ae', '2016-01-12 18:48:33');
INSERT INTO `account_login` VALUES ('24625', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 10:35:28');
INSERT INTO `account_login` VALUES ('24626', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 10:36:05');
INSERT INTO `account_login` VALUES ('24627', '110073', 'GameDev004', '2016-01-13 11:05:00');
INSERT INTO `account_login` VALUES ('24628', '110073', 'GameDev004', '2016-01-13 11:06:43');
INSERT INTO `account_login` VALUES ('24629', '110073', 'GameDev004', '2016-01-13 11:08:22');
INSERT INTO `account_login` VALUES ('24630', '110073', 'GameDev004', '2016-01-13 11:08:33');
INSERT INTO `account_login` VALUES ('24631', '110073', 'GameDev004', '2016-01-13 11:17:55');
INSERT INTO `account_login` VALUES ('24632', '110109', 'guijia', '2016-01-13 11:28:16');
INSERT INTO `account_login` VALUES ('24633', '110109', 'guijia', '2016-01-13 11:33:09');
INSERT INTO `account_login` VALUES ('24634', '115229', 'Windows Dummy IMEI', '2016-01-13 11:34:31');
INSERT INTO `account_login` VALUES ('24635', '115229', 'Windows Dummy IMEI', '2016-01-13 11:35:44');
INSERT INTO `account_login` VALUES ('24636', '110109', 'guijia', '2016-01-13 11:40:54');
INSERT INTO `account_login` VALUES ('24637', '115229', 'Windows Dummy IMEI', '2016-01-13 11:44:16');
INSERT INTO `account_login` VALUES ('24638', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 11:52:06');
INSERT INTO `account_login` VALUES ('24639', '115229', 'Windows Dummy IMEI', '2016-01-13 11:53:11');
INSERT INTO `account_login` VALUES ('24640', '110109', 'guijia', '2016-01-13 11:53:19');
INSERT INTO `account_login` VALUES ('24641', '115229', 'Windows Dummy IMEI', '2016-01-13 11:55:01');
INSERT INTO `account_login` VALUES ('24642', '115229', 'Windows Dummy IMEI', '2016-01-13 11:55:58');
INSERT INTO `account_login` VALUES ('24643', '110073', 'GameDev004', '2016-01-13 12:01:39');
INSERT INTO `account_login` VALUES ('24644', '115229', 'Windows Dummy IMEI', '2016-01-13 12:01:43');
INSERT INTO `account_login` VALUES ('24645', '110073', 'GameDev004', '2016-01-13 12:02:15');
INSERT INTO `account_login` VALUES ('24646', '110073', 'GameDev004', '2016-01-13 12:02:35');
INSERT INTO `account_login` VALUES ('24647', '115234', 'fucku', '2016-01-13 12:03:58');
INSERT INTO `account_login` VALUES ('24648', '115234', 'fucku', '2016-01-13 12:05:55');
INSERT INTO `account_login` VALUES ('24649', '115235', 'fucku1', '2016-01-13 12:06:17');
INSERT INTO `account_login` VALUES ('24650', '115229', 'Windows Dummy IMEI', '2016-01-13 12:10:56');
INSERT INTO `account_login` VALUES ('24651', '115235', 'fucku1', '2016-01-13 12:15:02');
INSERT INTO `account_login` VALUES ('24652', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 12:16:26');
INSERT INTO `account_login` VALUES ('24653', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 12:22:16');
INSERT INTO `account_login` VALUES ('24654', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 13:51:57');
INSERT INTO `account_login` VALUES ('24655', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 14:10:23');
INSERT INTO `account_login` VALUES ('24656', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 14:24:02');
INSERT INTO `account_login` VALUES ('24657', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 14:38:21');
INSERT INTO `account_login` VALUES ('24658', '110109', 'guijia', '2016-01-13 14:48:04');
INSERT INTO `account_login` VALUES ('24659', '110109', 'guijia', '2016-01-13 14:49:18');
INSERT INTO `account_login` VALUES ('24660', '110109', 'guijia', '2016-01-13 14:56:54');
INSERT INTO `account_login` VALUES ('24661', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 14:57:11');
INSERT INTO `account_login` VALUES ('24662', '110109', 'guijia', '2016-01-13 14:59:43');
INSERT INTO `account_login` VALUES ('24663', '110109', 'guijia', '2016-01-13 15:13:22');
INSERT INTO `account_login` VALUES ('24664', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 15:13:30');
INSERT INTO `account_login` VALUES ('24665', '110109', 'guijia', '2016-01-13 15:15:45');
INSERT INTO `account_login` VALUES ('24666', '110109', 'guijia', '2016-01-13 15:20:21');
INSERT INTO `account_login` VALUES ('24667', '110109', 'guijia', '2016-01-13 15:20:48');
INSERT INTO `account_login` VALUES ('24668', '110109', 'guijia', '2016-01-13 15:26:08');
INSERT INTO `account_login` VALUES ('24669', '110109', 'guijia', '2016-01-13 15:34:24');
INSERT INTO `account_login` VALUES ('24670', '110109', 'guijia', '2016-01-13 15:37:20');
INSERT INTO `account_login` VALUES ('24671', '110109', 'guijia', '2016-01-13 15:39:38');
INSERT INTO `account_login` VALUES ('24672', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 15:45:31');
INSERT INTO `account_login` VALUES ('24673', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 15:46:31');
INSERT INTO `account_login` VALUES ('24674', '110109', 'guijia', '2016-01-13 15:54:27');
INSERT INTO `account_login` VALUES ('24675', '110109', 'guijia', '2016-01-13 15:57:40');
INSERT INTO `account_login` VALUES ('24676', '110109', 'guijia', '2016-01-13 15:58:10');
INSERT INTO `account_login` VALUES ('24677', '110109', 'guijia', '2016-01-13 16:01:35');
INSERT INTO `account_login` VALUES ('24678', '110109', 'guijia', '2016-01-13 16:02:22');
INSERT INTO `account_login` VALUES ('24679', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 16:08:48');
INSERT INTO `account_login` VALUES ('24680', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 16:13:57');
INSERT INTO `account_login` VALUES ('24681', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 16:14:39');
INSERT INTO `account_login` VALUES ('24682', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 16:16:01');
INSERT INTO `account_login` VALUES ('24683', '110109', 'guijia', '2016-01-13 16:21:52');
INSERT INTO `account_login` VALUES ('24684', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 16:25:08');
INSERT INTO `account_login` VALUES ('24685', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 16:31:10');
INSERT INTO `account_login` VALUES ('24686', '110109', 'guijia', '2016-01-13 16:37:41');
INSERT INTO `account_login` VALUES ('24687', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 17:05:37');
INSERT INTO `account_login` VALUES ('24688', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 17:21:39');
INSERT INTO `account_login` VALUES ('24689', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 17:28:19');
INSERT INTO `account_login` VALUES ('24690', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 17:29:52');
INSERT INTO `account_login` VALUES ('24691', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 17:43:43');
INSERT INTO `account_login` VALUES ('24692', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 17:45:08');
INSERT INTO `account_login` VALUES ('24693', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 17:46:11');
INSERT INTO `account_login` VALUES ('24694', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 17:46:43');
INSERT INTO `account_login` VALUES ('24695', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-13 17:52:17');
INSERT INTO `account_login` VALUES ('24696', '115235', 'fucku1', '2016-01-14 10:17:17');
INSERT INTO `account_login` VALUES ('24697', '115235', 'fucku1', '2016-01-14 10:26:41');
INSERT INTO `account_login` VALUES ('24698', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-14 10:35:24');
INSERT INTO `account_login` VALUES ('24699', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-14 10:36:01');
INSERT INTO `account_login` VALUES ('24700', '115235', 'fucku1', '2016-01-14 10:38:31');
INSERT INTO `account_login` VALUES ('24701', '115235', 'fucku1', '2016-01-14 10:40:31');
INSERT INTO `account_login` VALUES ('24702', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-14 10:40:55');
INSERT INTO `account_login` VALUES ('24703', '115235', 'fucku1', '2016-01-14 10:41:11');
INSERT INTO `account_login` VALUES ('24704', '115235', 'fucku1', '2016-01-14 10:41:52');
INSERT INTO `account_login` VALUES ('24705', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-14 10:42:40');
INSERT INTO `account_login` VALUES ('24706', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-14 10:42:57');
INSERT INTO `account_login` VALUES ('24707', '110109', 'guijia', '2016-01-14 10:45:07');
INSERT INTO `account_login` VALUES ('24708', '115235', 'fucku1', '2016-01-14 11:23:15');
INSERT INTO `account_login` VALUES ('24709', '115191', '32c5a5701b9c6b8ab239d84af8f85ae', '2016-01-14 11:24:24');
INSERT INTO `account_login` VALUES ('24710', '115235', 'fucku1', '2016-01-14 11:38:12');
INSERT INTO `account_login` VALUES ('24711', '110109', 'guijia', '2016-01-14 11:48:29');
INSERT INTO `account_login` VALUES ('24712', '110109', 'guijia', '2016-01-14 11:52:36');
INSERT INTO `account_login` VALUES ('24713', '115191', '32c5a5701b9c6b8ab239d84af8f85ae', '2016-01-14 11:57:32');
INSERT INTO `account_login` VALUES ('24714', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-14 12:02:33');
INSERT INTO `account_login` VALUES ('24715', '115213', '871016354d147d3a9b8b5c5cc6fe7d28', '2016-01-14 12:12:28');
INSERT INTO `account_login` VALUES ('24716', '110109', 'guijia', '2016-01-14 12:19:01');
INSERT INTO `account_login` VALUES ('24717', '115235', 'fucku1', '2016-01-14 12:36:06');
INSERT INTO `account_login` VALUES ('24718', '115229', 'Windows Dummy IMEI', '2016-01-14 13:46:39');
INSERT INTO `account_login` VALUES ('24719', '115229', 'Windows Dummy IMEI', '2016-01-14 13:47:07');
INSERT INTO `account_login` VALUES ('24720', '115229', 'Windows Dummy IMEI', '2016-01-14 13:47:43');
INSERT INTO `account_login` VALUES ('24721', '115229', 'Windows Dummy IMEI', '2016-01-14 13:49:12');
INSERT INTO `account_login` VALUES ('24722', '115229', 'Windows Dummy IMEI', '2016-01-14 13:50:17');
INSERT INTO `account_login` VALUES ('24723', '115212', '59ff94fd3d98da662ea3f12965af599f', '2016-01-14 13:56:35');
INSERT INTO `account_login` VALUES ('24724', '115229', 'Windows Dummy IMEI', '2016-01-14 14:05:50');
INSERT INTO `account_login` VALUES ('24725', '115229', 'Windows Dummy IMEI', '2016-01-14 14:06:04');
INSERT INTO `account_login` VALUES ('24726', '115229', 'Windows Dummy IMEI', '2016-01-14 14:07:46');
INSERT INTO `account_login` VALUES ('24727', '115229', 'Windows Dummy IMEI', '2016-01-14 14:11:39');
INSERT INTO `account_login` VALUES ('24728', '115229', 'Windows Dummy IMEI', '2016-01-14 14:12:25');
INSERT INTO `account_login` VALUES ('24729', '115229', 'Windows Dummy IMEI', '2016-01-14 14:18:31');
INSERT INTO `account_login` VALUES ('24730', '115229', 'Windows Dummy IMEI', '2016-01-14 14:23:05');
INSERT INTO `account_login` VALUES ('24731', '115229', 'Windows Dummy IMEI', '2016-01-14 14:25:49');
INSERT INTO `account_login` VALUES ('24732', '115229', 'Windows Dummy IMEI', '2016-01-14 15:01:49');
INSERT INTO `account_login` VALUES ('24733', '115229', 'Windows Dummy IMEI', '2016-01-14 15:04:56');
INSERT INTO `account_login` VALUES ('24734', '115229', 'Windows Dummy IMEI', '2016-01-14 15:05:30');
INSERT INTO `account_login` VALUES ('24735', '115229', 'Windows Dummy IMEI', '2016-01-14 15:07:37');
INSERT INTO `account_login` VALUES ('24736', '115229', 'Windows Dummy IMEI', '2016-01-14 15:08:44');
INSERT INTO `account_login` VALUES ('24737', '115229', 'Windows Dummy IMEI', '2016-01-14 15:10:14');
INSERT INTO `account_login` VALUES ('24738', '115229', 'Windows Dummy IMEI', '2016-01-14 15:10:53');
INSERT INTO `account_login` VALUES ('24739', '115229', 'Windows Dummy IMEI', '2016-01-14 15:12:19');
INSERT INTO `account_login` VALUES ('24740', '115229', 'Windows Dummy IMEI', '2016-01-14 15:13:27');
INSERT INTO `account_login` VALUES ('24741', '115229', 'Windows Dummy IMEI', '2016-01-14 15:33:36');
INSERT INTO `account_login` VALUES ('24742', '115229', 'Windows Dummy IMEI', '2016-01-14 15:41:13');
INSERT INTO `account_login` VALUES ('24743', '115229', 'Windows Dummy IMEI', '2016-01-14 15:53:06');
INSERT INTO `account_login` VALUES ('24744', '115229', 'Windows Dummy IMEI', '2016-01-14 15:56:20');
INSERT INTO `account_login` VALUES ('24745', '115232', 'Test3333', '2016-01-14 16:51:15');
INSERT INTO `account_login` VALUES ('24746', '115233', 'Test10000', '2016-01-14 16:51:19');

-- ----------------------------
-- Table structure for account_logout
-- ----------------------------
DROP TABLE IF EXISTS `account_logout`;
CREATE TABLE `account_logout` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `account_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '账号ID',
  `login_time` datetime DEFAULT NULL COMMENT '登录时间戳',
  `logout_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17868 DEFAULT CHARSET=utf8 COMMENT='登出统计表';

-- ----------------------------
-- Records of account_logout
-- ----------------------------
INSERT INTO `account_logout` VALUES ('17756', '115212', '2016-01-12 18:29:52', '2016-01-12 18:38:20');
INSERT INTO `account_logout` VALUES ('17757', '115191', '2016-01-12 18:35:36', '2016-01-12 18:42:46');
INSERT INTO `account_logout` VALUES ('17758', '110073', '2016-01-12 18:44:34', '2016-01-12 18:45:13');
INSERT INTO `account_logout` VALUES ('17759', '110073', '2016-01-12 18:45:17', '2016-01-12 18:45:36');
INSERT INTO `account_logout` VALUES ('17760', '110073', '2016-01-12 18:45:40', '2016-01-12 18:45:58');
INSERT INTO `account_logout` VALUES ('17761', '110073', '2016-01-12 18:46:02', '2016-01-12 18:46:27');
INSERT INTO `account_logout` VALUES ('17762', '110073', '2016-01-12 18:46:31', '2016-01-12 18:47:26');
INSERT INTO `account_logout` VALUES ('17763', '115191', '2016-01-12 18:42:51', '2016-01-12 18:48:28');
INSERT INTO `account_logout` VALUES ('17764', '115191', '2016-01-12 18:48:33', '2016-01-12 18:54:11');
INSERT INTO `account_logout` VALUES ('17765', '115212', '2016-01-13 10:35:28', '2016-01-13 10:35:48');
INSERT INTO `account_logout` VALUES ('17766', '110073', '2016-01-13 11:08:16', '2016-01-13 11:08:26');
INSERT INTO `account_logout` VALUES ('17767', '110109', '2016-01-13 11:28:16', '2016-01-13 11:33:00');
INSERT INTO `account_logout` VALUES ('17768', '110109', '2016-01-13 11:33:09', '2016-01-13 11:34:33');
INSERT INTO `account_logout` VALUES ('17769', '115229', '2016-01-13 11:34:13', '2016-01-13 11:35:16');
INSERT INTO `account_logout` VALUES ('17770', '115229', '2016-01-13 11:35:25', '2016-01-13 11:39:06');
INSERT INTO `account_logout` VALUES ('17771', '110109', '2016-01-13 11:40:54', '2016-01-13 11:44:14');
INSERT INTO `account_logout` VALUES ('17772', '115229', '2016-01-13 11:43:57', '2016-01-13 11:52:21');
INSERT INTO `account_logout` VALUES ('17773', '115229', '2016-01-13 11:52:53', '2016-01-13 11:53:42');
INSERT INTO `account_logout` VALUES ('17774', '110109', '2016-01-13 11:53:19', '2016-01-13 11:55:06');
INSERT INTO `account_logout` VALUES ('17775', '115229', '2016-01-13 11:54:43', '2016-01-13 11:55:14');
INSERT INTO `account_logout` VALUES ('17776', '115229', '2016-01-13 11:55:40', '2016-01-13 11:58:59');
INSERT INTO `account_logout` VALUES ('17777', '110073', '2016-01-13 12:01:33', '2016-01-13 12:01:47');
INSERT INTO `account_logout` VALUES ('17778', '110073', '2016-01-13 12:02:08', '2016-01-13 12:02:19');
INSERT INTO `account_logout` VALUES ('17779', '115229', '2016-01-13 12:01:25', '2016-01-13 12:02:20');
INSERT INTO `account_logout` VALUES ('17780', '110073', '2016-01-13 12:02:29', '2016-01-13 12:02:38');
INSERT INTO `account_logout` VALUES ('17781', '115234', '2016-01-13 12:03:52', '2016-01-13 12:04:17');
INSERT INTO `account_logout` VALUES ('17782', '115234', '2016-01-13 12:05:49', '2016-01-13 12:05:57');
INSERT INTO `account_logout` VALUES ('17783', '115235', '2016-01-13 12:06:11', '2016-01-13 12:07:24');
INSERT INTO `account_logout` VALUES ('17784', '115235', '2016-01-13 12:14:56', '2016-01-13 12:15:35');
INSERT INTO `account_logout` VALUES ('17785', '115212', '2016-01-13 11:52:06', '2016-01-13 12:16:02');
INSERT INTO `account_logout` VALUES ('17786', '115229', '2016-01-13 12:10:38', '2016-01-13 12:20:21');
INSERT INTO `account_logout` VALUES ('17787', '115212', '2016-01-13 12:16:26', '2016-01-13 12:22:10');
INSERT INTO `account_logout` VALUES ('17788', '115212', '2016-01-13 12:22:16', '2016-01-13 12:23:22');
INSERT INTO `account_logout` VALUES ('17789', '115212', '2016-01-13 13:51:57', '2016-01-13 14:07:06');
INSERT INTO `account_logout` VALUES ('17790', '115212', '2016-01-13 14:10:23', '2016-01-13 14:21:08');
INSERT INTO `account_logout` VALUES ('17791', '115212', '2016-01-13 14:24:02', '2016-01-13 14:36:47');
INSERT INTO `account_logout` VALUES ('17792', '110109', '2016-01-13 14:48:04', '2016-01-13 14:49:09');
INSERT INTO `account_logout` VALUES ('17793', '110109', '2016-01-13 14:49:18', '2016-01-13 14:54:14');
INSERT INTO `account_logout` VALUES ('17794', '115212', '2016-01-13 14:38:21', '2016-01-13 14:54:54');
INSERT INTO `account_logout` VALUES ('17795', '110109', '2016-01-13 14:56:54', '2016-01-13 14:59:40');
INSERT INTO `account_logout` VALUES ('17796', '115212', '2016-01-13 14:57:11', '2016-01-13 15:05:57');
INSERT INTO `account_logout` VALUES ('17797', '110109', '2016-01-13 15:13:22', '2016-01-13 15:15:43');
INSERT INTO `account_logout` VALUES ('17798', '110109', '2016-01-13 15:15:45', '2016-01-13 15:18:33');
INSERT INTO `account_logout` VALUES ('17799', '110109', '2016-01-13 15:20:21', '2016-01-13 15:20:48');
INSERT INTO `account_logout` VALUES ('17800', '110109', '2016-01-13 15:20:48', '2016-01-13 15:21:42');
INSERT INTO `account_logout` VALUES ('17801', '110109', '2016-01-13 15:26:08', '2016-01-13 15:31:06');
INSERT INTO `account_logout` VALUES ('17802', '110109', '2016-01-13 15:34:24', '2016-01-13 15:34:50');
INSERT INTO `account_logout` VALUES ('17803', '115212', '2016-01-13 15:13:30', '2016-01-13 15:36:57');
INSERT INTO `account_logout` VALUES ('17804', '110109', '2016-01-13 15:37:20', '2016-01-13 15:37:47');
INSERT INTO `account_logout` VALUES ('17805', '110109', '2016-01-13 15:39:38', '2016-01-13 15:41:30');
INSERT INTO `account_logout` VALUES ('17806', '115212', '2016-01-13 15:45:31', '2016-01-13 15:45:54');
INSERT INTO `account_logout` VALUES ('17807', '110109', '2016-01-13 15:54:27', '2016-01-13 15:54:53');
INSERT INTO `account_logout` VALUES ('17808', '110109', '2016-01-13 15:57:40', '2016-01-13 15:58:10');
INSERT INTO `account_logout` VALUES ('17809', '110109', '2016-01-13 15:58:10', '2016-01-13 15:59:31');
INSERT INTO `account_logout` VALUES ('17810', '110109', '2016-01-13 16:01:35', '2016-01-13 16:01:43');
INSERT INTO `account_logout` VALUES ('17811', '115212', '2016-01-13 16:08:48', '2016-01-13 16:13:50');
INSERT INTO `account_logout` VALUES ('17812', '115212', '2016-01-13 16:13:57', '2016-01-13 16:14:33');
INSERT INTO `account_logout` VALUES ('17813', '115212', '2016-01-13 16:14:39', '2016-01-13 16:14:45');
INSERT INTO `account_logout` VALUES ('17814', '110109', '2016-01-13 16:37:41', '2016-01-13 16:38:18');
INSERT INTO `account_logout` VALUES ('17815', '115212', '2016-01-13 16:31:10', '2016-01-13 17:04:08');
INSERT INTO `account_logout` VALUES ('17816', '115212', '2016-01-13 17:05:37', '2016-01-13 17:19:56');
INSERT INTO `account_logout` VALUES ('17817', '115212', '2016-01-13 17:21:39', '2016-01-13 17:26:05');
INSERT INTO `account_logout` VALUES ('17818', '115212', '2016-01-13 17:28:19', '2016-01-13 17:29:30');
INSERT INTO `account_logout` VALUES ('17819', '115212', '2016-01-13 17:29:52', '2016-01-13 17:39:56');
INSERT INTO `account_logout` VALUES ('17820', '115212', '2016-01-13 17:43:43', '2016-01-13 17:45:00');
INSERT INTO `account_logout` VALUES ('17821', '115212', '2016-01-13 17:45:08', '2016-01-13 17:45:44');
INSERT INTO `account_logout` VALUES ('17822', '115212', '2016-01-13 17:46:11', '2016-01-13 17:46:35');
INSERT INTO `account_logout` VALUES ('17823', '115212', '2016-01-13 17:46:43', '2016-01-13 17:52:09');
INSERT INTO `account_logout` VALUES ('17824', '115212', '2016-01-13 17:52:17', '2016-01-13 17:53:00');
INSERT INTO `account_logout` VALUES ('17825', '115235', '2016-01-14 10:17:10', '2016-01-14 10:18:21');
INSERT INTO `account_logout` VALUES ('17826', '115212', '2016-01-14 10:35:23', '2016-01-14 10:35:34');
INSERT INTO `account_logout` VALUES ('17827', '115235', '2016-01-14 10:38:31', '2016-01-14 10:40:28');
INSERT INTO `account_logout` VALUES ('17828', '115212', '2016-01-14 10:36:01', '2016-01-14 10:40:36');
INSERT INTO `account_logout` VALUES ('17829', '115235', '2016-01-14 10:40:31', '2016-01-14 10:40:55');
INSERT INTO `account_logout` VALUES ('17830', '115212', '2016-01-14 10:42:40', '2016-01-14 10:42:53');
INSERT INTO `account_logout` VALUES ('17831', '110109', '2016-01-14 11:48:29', '2016-01-14 11:51:53');
INSERT INTO `account_logout` VALUES ('17832', '110109', '2016-01-14 11:52:36', '2016-01-14 11:53:41');
INSERT INTO `account_logout` VALUES ('17833', '115191', '2016-01-14 11:24:24', '2016-01-14 11:57:07');
INSERT INTO `account_logout` VALUES ('17834', '115191', '2016-01-14 11:57:32', '2016-01-14 11:58:29');
INSERT INTO `account_logout` VALUES ('17835', '115212', '2016-01-14 12:02:33', '2016-01-14 12:02:46');
INSERT INTO `account_logout` VALUES ('17836', '115213', '2016-01-14 12:12:27', '2016-01-14 12:14:06');
INSERT INTO `account_logout` VALUES ('17837', '110109', '2016-01-14 12:19:01', '2016-01-14 12:26:28');
INSERT INTO `account_logout` VALUES ('17838', '115235', '2016-01-14 12:36:06', '2016-01-14 13:22:54');
INSERT INTO `account_logout` VALUES ('17839', '115229', '2016-01-14 13:46:18', '2016-01-14 13:46:55');
INSERT INTO `account_logout` VALUES ('17840', '115229', '2016-01-14 13:46:46', '2016-01-14 13:47:37');
INSERT INTO `account_logout` VALUES ('17841', '115229', '2016-01-14 13:47:23', '2016-01-14 13:48:14');
INSERT INTO `account_logout` VALUES ('17842', '115229', '2016-01-14 13:48:52', '2016-01-14 13:49:19');
INSERT INTO `account_logout` VALUES ('17843', '115229', '2016-01-14 13:49:56', '2016-01-14 13:51:09');
INSERT INTO `account_logout` VALUES ('17844', '115229', '2016-01-14 14:05:30', '2016-01-14 14:06:00');
INSERT INTO `account_logout` VALUES ('17845', '115229', '2016-01-14 14:05:44', '2016-01-14 14:06:59');
INSERT INTO `account_logout` VALUES ('17846', '115229', '2016-01-14 14:07:26', '2016-01-14 14:08:42');
INSERT INTO `account_logout` VALUES ('17847', '115229', '2016-01-14 14:11:18', '2016-01-14 14:12:03');
INSERT INTO `account_logout` VALUES ('17848', '115229', '2016-01-14 14:12:05', '2016-01-14 14:13:34');
INSERT INTO `account_logout` VALUES ('17849', '115212', '2016-01-14 13:56:35', '2016-01-14 14:15:23');
INSERT INTO `account_logout` VALUES ('17850', '115229', '2016-01-14 14:18:10', '2016-01-14 14:22:59');
INSERT INTO `account_logout` VALUES ('17851', '115229', '2016-01-14 14:22:44', '2016-01-14 14:25:15');
INSERT INTO `account_logout` VALUES ('17852', '115229', '2016-01-14 14:25:29', '2016-01-14 14:29:18');
INSERT INTO `account_logout` VALUES ('17853', '115229', '2016-01-14 15:01:29', '2016-01-14 15:02:01');
INSERT INTO `account_logout` VALUES ('17854', '115229', '2016-01-14 15:04:35', '2016-01-14 15:05:16');
INSERT INTO `account_logout` VALUES ('17855', '115229', '2016-01-14 15:05:10', '2016-01-14 15:05:51');
INSERT INTO `account_logout` VALUES ('17856', '115229', '2016-01-14 15:07:17', '2016-01-14 15:08:13');
INSERT INTO `account_logout` VALUES ('17857', '115229', '2016-01-14 15:08:23', '2016-01-14 15:09:52');
INSERT INTO `account_logout` VALUES ('17858', '115229', '2016-01-14 15:09:54', '2016-01-14 15:10:39');
INSERT INTO `account_logout` VALUES ('17859', '115229', '2016-01-14 15:10:32', '2016-01-14 15:11:55');
INSERT INTO `account_logout` VALUES ('17860', '115229', '2016-01-14 15:11:59', '2016-01-14 15:13:12');
INSERT INTO `account_logout` VALUES ('17861', '115229', '2016-01-14 15:13:06', '2016-01-14 15:14:07');
INSERT INTO `account_logout` VALUES ('17862', '115229', '2016-01-14 15:33:16', '2016-01-14 15:34:12');
INSERT INTO `account_logout` VALUES ('17863', '115229', '2016-01-14 15:40:52', '2016-01-14 15:49:31');
INSERT INTO `account_logout` VALUES ('17864', '115229', '2016-01-14 15:52:45', '2016-01-14 15:55:52');
INSERT INTO `account_logout` VALUES ('17865', '115229', '2016-01-14 15:56:00', '2016-01-14 15:57:18');
INSERT INTO `account_logout` VALUES ('17866', '115233', '2016-01-14 16:49:14', '2016-01-14 16:51:21');
INSERT INTO `account_logout` VALUES ('17867', '115232', '2016-01-14 16:49:10', '2016-01-14 16:51:23');

-- ----------------------------
-- Table structure for account_register
-- ----------------------------
DROP TABLE IF EXISTS `account_register`;
CREATE TABLE `account_register` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `account_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '账号ID',
  `device` varchar(64) NOT NULL DEFAULT '' COMMENT '设备ID',
  `datatime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='账号注册统计表';

-- ----------------------------
-- Records of account_register
-- ----------------------------
INSERT INTO `account_register` VALUES ('1', '115234', 'fucku', '2016-01-13 12:03:58');
INSERT INTO `account_register` VALUES ('2', '115235', 'fucku1', '2016-01-13 12:06:17');

-- ----------------------------
-- Table structure for diamond_record
-- ----------------------------
DROP TABLE IF EXISTS `diamond_record`;
CREATE TABLE `diamond_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '玩家账号ID',
  `diamond_current` int(11) DEFAULT '0' COMMENT '当前金币数',
  `diamond_change_way` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '金币花费获得方式 1购买 2牌局输赢 3牌局入场花费 4牌局中花费 5牌局数奖励 6连续赢奖励 7比赛奖励 8任务奖励 9签到奖励 10兑奖兑换 11购买VIP奖励 12邮件给予',
  `diamond_change_data` int(11) NOT NULL DEFAULT '0' COMMENT '街头币改变值',
  `datatime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='街头币变化记录表';

-- ----------------------------
-- Records of diamond_record
-- ----------------------------

-- ----------------------------
-- Table structure for esales_bill
-- ----------------------------
DROP TABLE IF EXISTS `esales_bill`;
CREATE TABLE `esales_bill` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '账号ID',
  `mobile_number` char(16) NOT NULL DEFAULT '' COMMENT '手机号码',
  `diamond` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所需钻石',
  `price` varchar(16) NOT NULL DEFAULT '' COMMENT '商品价格',
  `user_channel` char(32) NOT NULL DEFAULT '' COMMENT '用户渠道',
  `bill_id` char(32) NOT NULL DEFAULT '' COMMENT '服务器生成的订单号',
  `net_bill_id` char(64) NOT NULL DEFAULT '' COMMENT '对接方生成的订单号',
  `order_money` varchar(16) NOT NULL DEFAULT '' COMMENT '支付金额',
  `error_message` varchar(512) NOT NULL DEFAULT '' COMMENT '错误信息 request success表示提交请求成功 ok表示话费充值成功 其他表示失败原因',
  `datatime` datetime NOT NULL COMMENT '时间戳',
  PRIMARY KEY (`id`),
  KEY `bill_id` (`bill_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='冲话费订单记录';

-- ----------------------------
-- Records of esales_bill
-- ----------------------------

-- ----------------------------
-- Table structure for exchange_award_record
-- ----------------------------
DROP TABLE IF EXISTS `exchange_award_record`;
CREATE TABLE `exchange_award_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `player_account` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '玩家账号ID',
  `order_id` char(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `award_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '奖励ID',
  `award_name` varchar(64) NOT NULL DEFAULT '' COMMENT '奖励名称',
  `award_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '奖励价值',
  `cost_diamond` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '花费的钻石数',
  `player_name` char(16) NOT NULL DEFAULT '' COMMENT '玩家名字',
  `player_phone_number` char(16) NOT NULL DEFAULT '' COMMENT '玩家电话号码',
  `player_address` varchar(128) NOT NULL DEFAULT '' COMMENT '玩家地址',
  `datatime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兑奖记录表';

-- ----------------------------
-- Records of exchange_award_record
-- ----------------------------

-- ----------------------------
-- Table structure for fruit_slots_record
-- ----------------------------
DROP TABLE IF EXISTS `fruit_slots_record`;
CREATE TABLE `fruit_slots_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '玩家账号ID',
  `chip_bar` int(11) NOT NULL DEFAULT '0' COMMENT '下注',
  `chip_77` int(11) NOT NULL DEFAULT '0',
  `chip_star` int(11) NOT NULL DEFAULT '0',
  `chip_watermelon` int(11) NOT NULL DEFAULT '0',
  `chip_bell` int(11) NOT NULL DEFAULT '0',
  `chip_mango` int(11) NOT NULL DEFAULT '0',
  `chip_orange` int(11) NOT NULL DEFAULT '0',
  `chip_apple` int(11) NOT NULL DEFAULT '0',
  `sum_chip` int(11) NOT NULL DEFAULT '0' COMMENT '下注总金额',
  `in_come` bigint(20) NOT NULL DEFAULT '0' COMMENT '收益总金额',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回合开始时间 回合唯一标识',
  `result` tinyint(4) NOT NULL DEFAULT '0' COMMENT '结果',
  `result_name` varchar(32) DEFAULT '' COMMENT '结果名称',
  `special_result` tinyint(4) DEFAULT '0' COMMENT '特殊结果 0无 1爆机 2小三元 3大三元 4小满贯 5大满贯',
  `datatime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8 COMMENT='水果机记录表';

-- ----------------------------
-- Records of fruit_slots_record
-- ----------------------------
INSERT INTO `fruit_slots_record` VALUES ('17', '115212', '0', '0', '0', '0', '0', '10000', '10000', '10000', '30000', '40000', '1452657217', '9', 'Apple_4', '0', '2016-01-13 11:53:37');
INSERT INTO `fruit_slots_record` VALUES ('18', '115212', '0', '0', '0', '0', '0', '10000', '10000', '10000', '30000', '40000', '1452657247', '20', 'Orange_4', '0', '2016-01-13 11:54:07');
INSERT INTO `fruit_slots_record` VALUES ('19', '115212', '0', '0', '0', '0', '0', '10000', '10000', '10000', '30000', '20000', '1452657277', '2', 'Apple_2', '0', '2016-01-13 11:54:37');
INSERT INTO `fruit_slots_record` VALUES ('20', '115212', '0', '0', '0', '0', '0', '10000', '10000', '10000', '30000', '0', '1452657307', '11', 'Star_8', '0', '2016-01-13 11:55:07');
INSERT INTO `fruit_slots_record` VALUES ('21', '115212', '0', '0', '0', '0', '0', '10000', '10000', '10000', '30000', '0', '1452657337', '21', 'Bell_6', '0', '2016-01-13 11:55:37');
INSERT INTO `fruit_slots_record` VALUES ('22', '115212', '0', '0', '0', '0', '0', '10000', '10000', '10000', '30000', '0', '1452657367', '19', 'Star_2', '0', '2016-01-13 11:56:07');
INSERT INTO `fruit_slots_record` VALUES ('23', '115212', '0', '0', '0', '0', '0', '10000', '10000', '10000', '30000', '60000', '1452657427', '1', 'GOODLUCK', '4', '2016-01-13 11:57:07');
INSERT INTO `fruit_slots_record` VALUES ('24', '115212', '0', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '70000', '60000', '1452657462', '21', 'Bell_6', '0', '2016-01-13 11:57:42');
INSERT INTO `fruit_slots_record` VALUES ('25', '115212', '0', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '70000', '20000', '1452657492', '2', 'Apple_2', '0', '2016-01-13 11:58:12');
INSERT INTO `fruit_slots_record` VALUES ('26', '115212', '0', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '70000', '40000', '1452657522', '3', 'Orange_4', '0', '2016-01-13 11:58:42');
INSERT INTO `fruit_slots_record` VALUES ('27', '115212', '0', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '70000', '20000', '1452657582', '2', 'Apple_2', '0', '2016-01-13 11:59:42');
INSERT INTO `fruit_slots_record` VALUES ('28', '115212', '0', '0', '0', '0', '0', '0', '0', '50000', '50000', '0', '1452657612', '5', 'Watermelon_8', '0', '2016-01-13 12:00:12');
INSERT INTO `fruit_slots_record` VALUES ('29', '115212', '0', '30000', '30000', '30000', '0', '0', '0', '0', '90000', '0', '1452657857', '9', 'Apple_4', '0', '2016-01-13 12:04:17');
INSERT INTO `fruit_slots_record` VALUES ('30', '115212', '0', '30000', '30000', '30000', '0', '0', '0', '0', '90000', '0', '1452657887', '14', 'Apple_4', '0', '2016-01-13 12:04:47');
INSERT INTO `fruit_slots_record` VALUES ('31', '115212', '0', '30000', '30000', '30000', '0', '0', '0', '0', '90000', '0', '1452657917', '9', 'Apple_4', '0', '2016-01-13 12:05:17');
INSERT INTO `fruit_slots_record` VALUES ('32', '115212', '0', '30000', '30000', '30000', '0', '0', '0', '0', '90000', '240000', '1452657947', '16', 'Star_8', '0', '2016-01-13 12:05:47');
INSERT INTO `fruit_slots_record` VALUES ('33', '115212', '0', '30000', '30000', '30000', '0', '0', '0', '0', '90000', '0', '1452657977', '15', 'Bell_6', '0', '2016-01-13 12:06:17');
INSERT INTO `fruit_slots_record` VALUES ('34', '115212', '0', '30000', '30000', '30000', '0', '0', '0', '0', '90000', '0', '1452658007', '21', 'Bell_6', '0', '2016-01-13 12:06:47');
INSERT INTO `fruit_slots_record` VALUES ('35', '115212', '0', '30000', '30000', '30000', '0', '0', '0', '0', '90000', '0', '1452658067', '4', 'Mango_6', '0', '2016-01-13 12:07:47');
INSERT INTO `fruit_slots_record` VALUES ('36', '115212', '0', '0', '0', '0', '0', '50000', '0', '0', '50000', '0', '1452658097', '9', 'Apple_4', '0', '2016-01-13 12:08:17');
INSERT INTO `fruit_slots_record` VALUES ('37', '115212', '0', '0', '0', '0', '0', '50000', '0', '0', '50000', '0', '1452658157', '1', 'GOODLUCK', '3', '2016-01-13 12:09:17');
INSERT INTO `fruit_slots_record` VALUES ('38', '115212', '0', '0', '0', '0', '0', '50000', '0', '0', '50000', '0', '1452658192', '22', 'Watermelon_8', '0', '2016-01-13 12:09:52');
INSERT INTO `fruit_slots_record` VALUES ('39', '115212', '0', '0', '0', '0', '0', '50000', '0', '0', '50000', '0', '1452658222', '5', 'Watermelon_8', '0', '2016-01-13 12:10:22');
INSERT INTO `fruit_slots_record` VALUES ('40', '115212', '0', '30000', '30000', '30000', '0', '0', '0', '0', '90000', '0', '1452658252', '20', 'Orange_4', '0', '2016-01-13 12:10:52');
INSERT INTO `fruit_slots_record` VALUES ('41', '115212', '0', '30000', '30000', '30000', '0', '0', '0', '0', '90000', '240000', '1452658282', '5', 'Watermelon_8', '0', '2016-01-13 12:11:22');
INSERT INTO `fruit_slots_record` VALUES ('42', '115212', '0', '30000', '30000', '30000', '0', '0', '0', '0', '90000', '0', '1452658312', '15', 'Bell_6', '0', '2016-01-13 12:11:52');
INSERT INTO `fruit_slots_record` VALUES ('43', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '200000', '1452658682', '3', 'Orange_4', '0', '2016-01-13 12:18:02');
INSERT INTO `fruit_slots_record` VALUES ('44', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '100000', '1452658712', '8', 'Orange_2', '0', '2016-01-13 12:18:32');
INSERT INTO `fruit_slots_record` VALUES ('45', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '200000', '1452658742', '3', 'Orange_4', '0', '2016-01-13 12:19:02');
INSERT INTO `fruit_slots_record` VALUES ('46', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '0', '1452658802', '5', 'Watermelon_8', '0', '2016-01-13 12:20:02');
INSERT INTO `fruit_slots_record` VALUES ('47', '115212', '0', '0', '0', '50000', '0', '0', '0', '0', '50000', '0', '1452658892', '4', 'Mango_6', '0', '2016-01-13 12:21:32');
INSERT INTO `fruit_slots_record` VALUES ('48', '115212', '0', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '70000', '40000', '1452664359', '3', 'Orange_4', '0', '2016-01-13 13:52:39');
INSERT INTO `fruit_slots_record` VALUES ('49', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '100000', '1452664389', '17', 'Watermelon_2', '4', '2016-01-13 13:53:09');
INSERT INTO `fruit_slots_record` VALUES ('50', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '0', '1452664424', '10', 'Mango_6', '0', '2016-01-13 13:53:44');
INSERT INTO `fruit_slots_record` VALUES ('51', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '0', '1452664454', '6', 'Bell_2', '0', '2016-01-13 13:54:14');
INSERT INTO `fruit_slots_record` VALUES ('52', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '100000', '1452664514', '8', 'Orange_2', '0', '2016-01-13 13:55:14');
INSERT INTO `fruit_slots_record` VALUES ('53', '115212', '0', '0', '0', '0', '60000', '0', '0', '0', '60000', '0', '1452664544', '17', 'Watermelon_2', '0', '2016-01-13 13:55:44');
INSERT INTO `fruit_slots_record` VALUES ('54', '115212', '0', '0', '0', '50000', '0', '0', '0', '0', '50000', '0', '1452664574', '15', 'Bell_6', '0', '2016-01-13 13:56:14');
INSERT INTO `fruit_slots_record` VALUES ('55', '115212', '0', '0', '0', '0', '100000', '0', '0', '0', '100000', '0', '1452664604', '12', 'BAR_30', '0', '2016-01-13 13:56:44');
INSERT INTO `fruit_slots_record` VALUES ('56', '115212', '0', '0', '0', '0', '100000', '0', '0', '0', '100000', '0', '1452664634', '20', 'Orange_4', '0', '2016-01-13 13:57:14');
INSERT INTO `fruit_slots_record` VALUES ('57', '115212', '0', '0', '0', '0', '0', '30000', '30000', '30000', '90000', '180000', '1452664694', '10', 'Mango_6', '0', '2016-01-13 13:58:14');
INSERT INTO `fruit_slots_record` VALUES ('58', '115212', '0', '0', '0', '0', '0', '30000', '30000', '30000', '90000', '180000', '1452664724', '13', 'Mango_2', '4', '2016-01-13 13:58:44');
INSERT INTO `fruit_slots_record` VALUES ('59', '115212', '0', '0', '0', '0', '0', '50000', '0', '0', '50000', '0', '1452664819', '8', 'Orange_2', '0', '2016-01-13 14:00:19');
INSERT INTO `fruit_slots_record` VALUES ('60', '115212', '0', '0', '0', '0', '0', '50000', '0', '0', '50000', '0', '1452664849', '2', 'Apple_2', '0', '2016-01-13 14:00:49');
INSERT INTO `fruit_slots_record` VALUES ('61', '115212', '0', '0', '0', '0', '0', '50000', '0', '0', '50000', '0', '1452664909', '16', 'Star_8', '0', '2016-01-13 14:01:49');
INSERT INTO `fruit_slots_record` VALUES ('62', '115212', '0', '0', '0', '0', '0', '50000', '0', '0', '50000', '0', '1452665029', '14', 'Apple_4', '0', '2016-01-13 14:03:49');
INSERT INTO `fruit_slots_record` VALUES ('63', '115212', '0', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '70000', '20000', '1452665460', '8', 'Orange_2', '0', '2016-01-13 14:11:00');
INSERT INTO `fruit_slots_record` VALUES ('64', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '0', '1452665485', '2', 'Apple_2', '0', '2016-01-13 14:11:25');
INSERT INTO `fruit_slots_record` VALUES ('65', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '0', '1452665535', '9', 'Apple_4', '0', '2016-01-13 14:12:15');
INSERT INTO `fruit_slots_record` VALUES ('66', '115212', '0', '0', '40000', '0', '0', '0', '0', '60000', '100000', '0', '1452665560', '10', 'Mango_6', '0', '2016-01-13 14:12:40');
INSERT INTO `fruit_slots_record` VALUES ('67', '115212', '0', '0', '0', '0', '0', '50000', '0', '60000', '110000', '300000', '1452665585', '10', 'Mango_6', '0', '2016-01-13 14:13:05');
INSERT INTO `fruit_slots_record` VALUES ('68', '115212', '0', '0', '30000', '0', '0', '40000', '0', '0', '70000', '0', '1452665660', '14', 'Apple_4', '0', '2016-01-13 14:14:20');
INSERT INTO `fruit_slots_record` VALUES ('69', '115212', '0', '0', '0', '0', '0', '100000', '0', '0', '100000', '0', '1452665930', '11', 'Star_8', '0', '2016-01-13 14:18:50');
INSERT INTO `fruit_slots_record` VALUES ('70', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '200000', '1452666361', '3', 'Orange_4', '0', '2016-01-13 14:26:01');
INSERT INTO `fruit_slots_record` VALUES ('71', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '0', '1452666388', '14', 'Apple_4', '0', '2016-01-13 14:26:28');
INSERT INTO `fruit_slots_record` VALUES ('72', '115212', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '0', '1452666558', '10', 'Mango_6', '0', '2016-01-13 14:29:18');
INSERT INTO `fruit_slots_record` VALUES ('73', '115212', '0', '0', '0', '0', '0', '60000', '0', '0', '60000', '0', '1452666585', '21', 'Bell_6', '0', '2016-01-13 14:29:45');
INSERT INTO `fruit_slots_record` VALUES ('74', '115212', '0', '30000', '30000', '30000', '30000', '30000', '40000', '30000', '220000', '180000', '1452666863', '15', 'Bell_6', '0', '2016-01-13 14:34:23');
INSERT INTO `fruit_slots_record` VALUES ('75', '115212', '0', '30000', '30000', '30000', '30000', '30000', '40000', '30000', '220000', '180000', '1452666890', '15', 'Bell_6', '0', '2016-01-13 14:34:50');
INSERT INTO `fruit_slots_record` VALUES ('76', '115212', '0', '30000', '30000', '30000', '30000', '30000', '40000', '30000', '220000', '240000', '1452666917', '5', 'Watermelon_8', '0', '2016-01-13 14:35:17');
INSERT INTO `fruit_slots_record` VALUES ('77', '115212', '0', '30000', '30000', '30000', '30000', '30000', '40000', '30000', '220000', '80000', '1452666944', '8', 'Orange_2', '0', '2016-01-13 14:35:44');
INSERT INTO `fruit_slots_record` VALUES ('78', '115212', '0', '0', '60000', '60000', '60000', '70000', '60000', '40000', '350000', '240000', '1452666971', '20', 'Orange_4', '0', '2016-01-13 14:36:11');
INSERT INTO `fruit_slots_record` VALUES ('79', '115212', '0', '0', '60000', '60000', '60000', '70000', '60000', '40000', '350000', '120000', '1452666998', '8', 'Orange_2', '0', '2016-01-13 14:36:38');
INSERT INTO `fruit_slots_record` VALUES ('80', '115212', '0', '0', '0', '0', '0', '10000', '10000', '10000', '30000', '0', '1452667131', '6', 'Bell_2', '0', '2016-01-13 14:38:51');
INSERT INTO `fruit_slots_record` VALUES ('81', '115212', '0', '0', '0', '0', '50000', '0', '0', '0', '50000', '0', '1452667158', '9', 'Apple_4', '0', '2016-01-13 14:39:18');
INSERT INTO `fruit_slots_record` VALUES ('82', '115212', '0', '0', '0', '0', '50000', '50000', '0', '40000', '140000', '300000', '1452667185', '4', 'Mango_6', '0', '2016-01-13 14:39:45');
INSERT INTO `fruit_slots_record` VALUES ('83', '115212', '0', '0', '0', '0', '0', '100000', '0', '0', '100000', '0', '1452667212', '2', 'Apple_2', '0', '2016-01-13 14:40:12');
INSERT INTO `fruit_slots_record` VALUES ('84', '115212', '0', '0', '0', '0', '0', '60000', '0', '60000', '120000', '0', '1452667239', '8', 'Orange_2', '0', '2016-01-13 14:40:39');
INSERT INTO `fruit_slots_record` VALUES ('85', '115212', '0', '0', '0', '0', '0', '60000', '0', '60000', '120000', '240000', '1452667266', '9', 'Apple_4', '0', '2016-01-13 14:41:06');
INSERT INTO `fruit_slots_record` VALUES ('86', '115212', '0', '0', '0', '0', '0', '60000', '0', '60000', '120000', '0', '1452667293', '1', 'GOODLUCK', '3', '2016-01-13 14:41:33');
INSERT INTO `fruit_slots_record` VALUES ('87', '115212', '0', '0', '0', '0', '0', '0', '0', '50000', '50000', '200000', '1452667436', '9', 'Apple_4', '0', '2016-01-13 14:43:56');
INSERT INTO `fruit_slots_record` VALUES ('88', '115212', '0', '0', '0', '0', '0', '0', '0', '50000', '50000', '0', '1452667463', '12', 'BAR_30', '0', '2016-01-13 14:44:23');
INSERT INTO `fruit_slots_record` VALUES ('89', '115212', '0', '0', '0', '0', '0', '0', '0', '50000', '50000', '0', '1452667490', '1', 'GOODLUCK', '3', '2016-01-13 14:44:50');
INSERT INTO `fruit_slots_record` VALUES ('90', '115212', '0', '0', '0', '0', '0', '0', '0', '50000', '50000', '100000', '1452667525', '2', 'Apple_2', '4', '2016-01-13 14:45:25');
INSERT INTO `fruit_slots_record` VALUES ('91', '115212', '0', '0', '0', '0', '0', '0', '0', '50000', '50000', '0', '1452667560', '16', 'Star_8', '0', '2016-01-13 14:46:00');
INSERT INTO `fruit_slots_record` VALUES ('92', '115212', '0', '0', '50000', '0', '0', '0', '0', '50000', '100000', '100000', '1452667587', '2', 'Apple_2', '0', '2016-01-13 14:46:27');
INSERT INTO `fruit_slots_record` VALUES ('93', '115212', '0', '0', '40000', '0', '0', '0', '0', '50000', '90000', '0', '1452667614', '15', 'Bell_6', '0', '2016-01-13 14:46:54');
INSERT INTO `fruit_slots_record` VALUES ('94', '115212', '0', '0', '20000', '0', '30000', '0', '0', '50000', '100000', '0', '1452667641', '5', 'Watermelon_8', '0', '2016-01-13 14:47:21');
INSERT INTO `fruit_slots_record` VALUES ('95', '115212', '0', '30000', '50000', '40000', '40000', '40000', '30000', '40000', '270000', '320000', '1452667668', '5', 'Watermelon_8', '0', '2016-01-13 14:47:48');
INSERT INTO `fruit_slots_record` VALUES ('96', '115212', '0', '30000', '50000', '40000', '40000', '40000', '30000', '40000', '270000', '160000', '1452667695', '14', 'Apple_4', '0', '2016-01-13 14:48:15');
INSERT INTO `fruit_slots_record` VALUES ('97', '115212', '0', '30000', '50000', '40000', '40000', '40000', '30000', '40000', '270000', '120000', '1452667722', '3', 'Orange_4', '0', '2016-01-13 14:48:42');
INSERT INTO `fruit_slots_record` VALUES ('98', '115212', '0', '30000', '50000', '40000', '40000', '40000', '30000', '40000', '270000', '120000', '1452667749', '3', 'Orange_4', '0', '2016-01-13 14:49:09');
INSERT INTO `fruit_slots_record` VALUES ('99', '115212', '0', '30000', '50000', '40000', '40000', '40000', '30000', '40000', '270000', '320000', '1452667776', '22', 'Watermelon_8', '0', '2016-01-13 14:49:36');
INSERT INTO `fruit_slots_record` VALUES ('100', '115212', '0', '30000', '50000', '40000', '40000', '40000', '30000', '40000', '270000', '80000', '1452667803', '17', 'Watermelon_2', '0', '2016-01-13 14:50:03');
INSERT INTO `fruit_slots_record` VALUES ('101', '115212', '0', '30000', '50000', '40000', '40000', '40000', '30000', '40000', '270000', '0', '1452667830', '12', 'BAR_30', '0', '2016-01-13 14:50:30');
INSERT INTO `fruit_slots_record` VALUES ('102', '115212', '0', '30000', '50000', '40000', '40000', '40000', '30000', '40000', '270000', '160000', '1452667857', '9', 'Apple_4', '0', '2016-01-13 14:50:57');
INSERT INTO `fruit_slots_record` VALUES ('103', '115212', '0', '30000', '50000', '40000', '40000', '40000', '30000', '40000', '270000', '520000', '1452667884', '1', 'GOODLUCK', '2', '2016-01-13 14:51:24');
INSERT INTO `fruit_slots_record` VALUES ('104', '115212', '0', '30000', '50000', '40000', '40000', '40000', '30000', '40000', '270000', '120000', '1452668081', '20', 'Orange_4', '0', '2016-01-13 14:54:41');
INSERT INTO `fruit_slots_record` VALUES ('105', '110109', '0', '0', '0', '10000', '10000', '10000', '10000', '10000', '50000', '40000', '1452668326', '14', 'Apple_4', '0', '2016-01-13 14:58:46');
INSERT INTO `fruit_slots_record` VALUES ('106', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '3308000', '1452668380', '1', 'GOODLUCK', '1', '2016-01-13 14:59:40');
INSERT INTO `fruit_slots_record` VALUES ('107', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452668415', '8', 'Orange_2', '0', '2016-01-13 15:00:15');
INSERT INTO `fruit_slots_record` VALUES ('108', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452668442', '4', 'Mango_6', '0', '2016-01-13 15:00:42');
INSERT INTO `fruit_slots_record` VALUES ('109', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452668469', '4', 'Mango_6', '0', '2016-01-13 15:01:09');
INSERT INTO `fruit_slots_record` VALUES ('110', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452668496', '5', 'Watermelon_8', '0', '2016-01-13 15:01:36');
INSERT INTO `fruit_slots_record` VALUES ('111', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452668523', '22', 'Watermelon_8', '0', '2016-01-13 15:02:03');
INSERT INTO `fruit_slots_record` VALUES ('112', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452668550', '5', 'Watermelon_8', '0', '2016-01-13 15:02:30');
INSERT INTO `fruit_slots_record` VALUES ('113', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '630000', '1452668577', '1', 'GOODLUCK', '1', '2016-01-13 15:02:57');
INSERT INTO `fruit_slots_record` VALUES ('114', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452668612', '16', 'Star_8', '0', '2016-01-13 15:03:32');
INSERT INTO `fruit_slots_record` VALUES ('115', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452668639', '14', 'Apple_4', '0', '2016-01-13 15:03:59');
INSERT INTO `fruit_slots_record` VALUES ('116', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452668666', '5', 'Watermelon_8', '0', '2016-01-13 15:04:26');
INSERT INTO `fruit_slots_record` VALUES ('117', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452668693', '4', 'Mango_6', '0', '2016-01-13 15:04:53');
INSERT INTO `fruit_slots_record` VALUES ('118', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452668720', '3', 'Orange_4', '0', '2016-01-13 15:05:20');
INSERT INTO `fruit_slots_record` VALUES ('119', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452668747', '3', 'Orange_4', '0', '2016-01-13 15:05:47');
INSERT INTO `fruit_slots_record` VALUES ('120', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452669262', '19', 'Star_2', '0', '2016-01-13 15:14:22');
INSERT INTO `fruit_slots_record` VALUES ('121', '110109', '0', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '70000', '20000', '1452669289', '2', 'Apple_2', '0', '2016-01-13 15:14:49');
INSERT INTO `fruit_slots_record` VALUES ('122', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452669289', '2', 'Apple_2', '0', '2016-01-13 15:14:49');
INSERT INTO `fruit_slots_record` VALUES ('123', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452669316', '14', 'Apple_4', '0', '2016-01-13 15:15:16');
INSERT INTO `fruit_slots_record` VALUES ('124', '110109', '0', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '70000', '20000', '1452669343', '6', 'Bell_2', '0', '2016-01-13 15:15:43');
INSERT INTO `fruit_slots_record` VALUES ('125', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452669343', '6', 'Bell_2', '0', '2016-01-13 15:15:43');
INSERT INTO `fruit_slots_record` VALUES ('126', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452669370', '2', 'Apple_2', '0', '2016-01-13 15:16:10');
INSERT INTO `fruit_slots_record` VALUES ('127', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '560000', '1452669397', '1', 'GOODLUCK', '2', '2016-01-13 15:16:37');
INSERT INTO `fruit_slots_record` VALUES ('128', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452669432', '14', 'Apple_4', '0', '2016-01-13 15:17:12');
INSERT INTO `fruit_slots_record` VALUES ('129', '110109', '0', '0', '10000', '10000', '10000', '10000', '0', '0', '40000', '20000', '1452669459', '13', 'Mango_2', '0', '2016-01-13 15:17:39');
INSERT INTO `fruit_slots_record` VALUES ('130', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452669459', '13', 'Mango_2', '0', '2016-01-13 15:17:39');
INSERT INTO `fruit_slots_record` VALUES ('131', '110109', '0', '0', '0', '10000', '10000', '10000', '10000', '10000', '50000', '40000', '1452669486', '9', 'Apple_4', '0', '2016-01-13 15:18:06');
INSERT INTO `fruit_slots_record` VALUES ('132', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452669486', '9', 'Apple_4', '0', '2016-01-13 15:18:06');
INSERT INTO `fruit_slots_record` VALUES ('133', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452669513', '11', 'Star_8', '0', '2016-01-13 15:18:33');
INSERT INTO `fruit_slots_record` VALUES ('134', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452669540', '3', 'Orange_4', '0', '2016-01-13 15:19:00');
INSERT INTO `fruit_slots_record` VALUES ('135', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '600000', '1452669567', '12', 'BAR_30', '0', '2016-01-13 15:19:27');
INSERT INTO `fruit_slots_record` VALUES ('136', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452669594', '17', 'Watermelon_2', '0', '2016-01-13 15:19:54');
INSERT INTO `fruit_slots_record` VALUES ('137', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452669621', '11', 'Star_8', '0', '2016-01-13 15:20:21');
INSERT INTO `fruit_slots_record` VALUES ('138', '110109', '0', '0', '0', '10000', '10000', '10000', '10000', '0', '40000', '80000', '1452669648', '22', 'Watermelon_8', '0', '2016-01-13 15:20:48');
INSERT INTO `fruit_slots_record` VALUES ('139', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452669648', '22', 'Watermelon_8', '0', '2016-01-13 15:20:48');
INSERT INTO `fruit_slots_record` VALUES ('140', '110109', '0', '0', '0', '0', '10000', '20000', '0', '0', '30000', '0', '1452669675', '20', 'Orange_4', '0', '2016-01-13 15:21:15');
INSERT INTO `fruit_slots_record` VALUES ('141', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452669675', '20', 'Orange_4', '0', '2016-01-13 15:21:15');
INSERT INTO `fruit_slots_record` VALUES ('142', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452669702', '8', 'Orange_2', '0', '2016-01-13 15:21:42');
INSERT INTO `fruit_slots_record` VALUES ('143', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452669729', '6', 'Bell_2', '0', '2016-01-13 15:22:09');
INSERT INTO `fruit_slots_record` VALUES ('144', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452669756', '21', 'Bell_6', '0', '2016-01-13 15:22:36');
INSERT INTO `fruit_slots_record` VALUES ('145', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '480000', '1452669783', '1', 'GOODLUCK', '4', '2016-01-13 15:23:03');
INSERT INTO `fruit_slots_record` VALUES ('146', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452669818', '4', 'Mango_6', '0', '2016-01-13 15:23:38');
INSERT INTO `fruit_slots_record` VALUES ('147', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452669845', '6', 'Bell_2', '0', '2016-01-13 15:24:05');
INSERT INTO `fruit_slots_record` VALUES ('148', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452669872', '21', 'Bell_6', '0', '2016-01-13 15:24:32');
INSERT INTO `fruit_slots_record` VALUES ('149', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452669899', '11', 'Star_8', '0', '2016-01-13 15:24:59');
INSERT INTO `fruit_slots_record` VALUES ('150', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452669926', '17', 'Watermelon_2', '0', '2016-01-13 15:25:26');
INSERT INTO `fruit_slots_record` VALUES ('151', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452669953', '22', 'Watermelon_8', '0', '2016-01-13 15:25:53');
INSERT INTO `fruit_slots_record` VALUES ('152', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '3060000', '1452669980', '1', 'GOODLUCK', '1', '2016-01-13 15:26:20');
INSERT INTO `fruit_slots_record` VALUES ('153', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452670015', '16', 'Star_8', '0', '2016-01-13 15:26:55');
INSERT INTO `fruit_slots_record` VALUES ('154', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452670042', '5', 'Watermelon_8', '0', '2016-01-13 15:27:22');
INSERT INTO `fruit_slots_record` VALUES ('155', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452670069', '14', 'Apple_4', '0', '2016-01-13 15:27:49');
INSERT INTO `fruit_slots_record` VALUES ('156', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452670096', '9', 'Apple_4', '0', '2016-01-13 15:28:16');
INSERT INTO `fruit_slots_record` VALUES ('157', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452670123', '16', 'Star_8', '0', '2016-01-13 15:28:43');
INSERT INTO `fruit_slots_record` VALUES ('158', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452670150', '4', 'Mango_6', '0', '2016-01-13 15:29:10');
INSERT INTO `fruit_slots_record` VALUES ('159', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '630000', '1452670177', '1', 'GOODLUCK', '1', '2016-01-13 15:29:37');
INSERT INTO `fruit_slots_record` VALUES ('160', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452670212', '14', 'Apple_4', '0', '2016-01-13 15:30:12');
INSERT INTO `fruit_slots_record` VALUES ('161', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452670239', '16', 'Star_8', '0', '2016-01-13 15:30:39');
INSERT INTO `fruit_slots_record` VALUES ('162', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452670266', '22', 'Watermelon_8', '0', '2016-01-13 15:31:06');
INSERT INTO `fruit_slots_record` VALUES ('163', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452670293', '3', 'Orange_4', '0', '2016-01-13 15:31:33');
INSERT INTO `fruit_slots_record` VALUES ('164', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452670320', '15', 'Bell_6', '0', '2016-01-13 15:32:00');
INSERT INTO `fruit_slots_record` VALUES ('165', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452670347', '13', 'Mango_2', '0', '2016-01-13 15:32:27');
INSERT INTO `fruit_slots_record` VALUES ('166', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '630000', '1452670374', '1', 'GOODLUCK', '1', '2016-01-13 15:32:54');
INSERT INTO `fruit_slots_record` VALUES ('167', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452670409', '10', 'Mango_6', '0', '2016-01-13 15:33:29');
INSERT INTO `fruit_slots_record` VALUES ('168', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452670436', '11', 'Star_8', '0', '2016-01-13 15:33:56');
INSERT INTO `fruit_slots_record` VALUES ('169', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452670463', '11', 'Star_8', '0', '2016-01-13 15:34:23');
INSERT INTO `fruit_slots_record` VALUES ('170', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452670490', '5', 'Watermelon_8', '0', '2016-01-13 15:34:50');
INSERT INTO `fruit_slots_record` VALUES ('171', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452670517', '17', 'Watermelon_2', '0', '2016-01-13 15:35:17');
INSERT INTO `fruit_slots_record` VALUES ('172', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452670544', '16', 'Star_8', '0', '2016-01-13 15:35:44');
INSERT INTO `fruit_slots_record` VALUES ('173', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '630000', '1452670571', '1', 'GOODLUCK', '1', '2016-01-13 15:36:11');
INSERT INTO `fruit_slots_record` VALUES ('174', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452670606', '19', 'Star_2', '0', '2016-01-13 15:36:46');
INSERT INTO `fruit_slots_record` VALUES ('175', '110109', '0', '0', '0', '0', '0', '10000', '10000', '0', '20000', '0', '1452670660', '21', 'Bell_6', '0', '2016-01-13 15:37:40');
INSERT INTO `fruit_slots_record` VALUES ('176', '110109', '0', '0', '0', '0', '0', '10000', '10000', '0', '20000', '0', '1452670803', '11', 'Star_8', '0', '2016-01-13 15:40:03');
INSERT INTO `fruit_slots_record` VALUES ('177', '110109', '0', '0', '0', '0', '10000', '0', '0', '0', '10000', '0', '1452670857', '2', 'Apple_2', '0', '2016-01-13 15:40:57');
INSERT INTO `fruit_slots_record` VALUES ('178', '110109', '0', '0', '0', '0', '10000', '0', '0', '0', '10000', '0', '1452670884', '13', 'Mango_2', '0', '2016-01-13 15:41:24');
INSERT INTO `fruit_slots_record` VALUES ('179', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452671253', '19', 'Star_2', '0', '2016-01-13 15:47:33');
INSERT INTO `fruit_slots_record` VALUES ('180', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452671280', '10', 'Mango_6', '0', '2016-01-13 15:48:00');
INSERT INTO `fruit_slots_record` VALUES ('181', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452671307', '13', 'Mango_2', '0', '2016-01-13 15:48:27');
INSERT INTO `fruit_slots_record` VALUES ('182', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '640000', '1452671334', '1', 'GOODLUCK', '3', '2016-01-13 15:48:54');
INSERT INTO `fruit_slots_record` VALUES ('183', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452671369', '9', 'Apple_4', '0', '2016-01-13 15:49:29');
INSERT INTO `fruit_slots_record` VALUES ('184', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452671396', '19', 'Star_2', '0', '2016-01-13 15:49:56');
INSERT INTO `fruit_slots_record` VALUES ('185', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452671423', '5', 'Watermelon_8', '0', '2016-01-13 15:50:23');
INSERT INTO `fruit_slots_record` VALUES ('186', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452671450', '15', 'Bell_6', '0', '2016-01-13 15:50:50');
INSERT INTO `fruit_slots_record` VALUES ('187', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452671477', '15', 'Bell_6', '0', '2016-01-13 15:51:17');
INSERT INTO `fruit_slots_record` VALUES ('188', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452671504', '5', 'Watermelon_8', '0', '2016-01-13 15:51:44');
INSERT INTO `fruit_slots_record` VALUES ('189', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452671531', '22', 'Watermelon_8', '0', '2016-01-13 15:52:11');
INSERT INTO `fruit_slots_record` VALUES ('190', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452671558', '21', 'Bell_6', '0', '2016-01-13 15:52:38');
INSERT INTO `fruit_slots_record` VALUES ('191', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452671585', '20', 'Orange_4', '0', '2016-01-13 15:53:05');
INSERT INTO `fruit_slots_record` VALUES ('192', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452671612', '15', 'Bell_6', '0', '2016-01-13 15:53:32');
INSERT INTO `fruit_slots_record` VALUES ('193', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452671639', '20', 'Orange_4', '0', '2016-01-13 15:53:59');
INSERT INTO `fruit_slots_record` VALUES ('194', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452671666', '14', 'Apple_4', '0', '2016-01-13 15:54:26');
INSERT INTO `fruit_slots_record` VALUES ('195', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452671693', '13', 'Mango_2', '0', '2016-01-13 15:54:53');
INSERT INTO `fruit_slots_record` VALUES ('196', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '480000', '1452671720', '1', 'GOODLUCK', '4', '2016-01-13 15:55:20');
INSERT INTO `fruit_slots_record` VALUES ('197', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452671755', '15', 'Bell_6', '0', '2016-01-13 15:55:55');
INSERT INTO `fruit_slots_record` VALUES ('198', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452671782', '6', 'Bell_2', '0', '2016-01-13 15:56:22');
INSERT INTO `fruit_slots_record` VALUES ('199', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452671809', '16', 'Star_8', '0', '2016-01-13 15:56:49');
INSERT INTO `fruit_slots_record` VALUES ('200', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452671836', '19', 'Star_2', '0', '2016-01-13 15:57:16');
INSERT INTO `fruit_slots_record` VALUES ('201', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452671863', '22', 'Watermelon_8', '0', '2016-01-13 15:57:43');
INSERT INTO `fruit_slots_record` VALUES ('202', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452671890', '19', 'Star_2', '0', '2016-01-13 15:58:10');
INSERT INTO `fruit_slots_record` VALUES ('203', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452671917', '10', 'Mango_6', '0', '2016-01-13 15:58:37');
INSERT INTO `fruit_slots_record` VALUES ('204', '110109', '0', '0', '0', '0', '10000', '10000', '10000', '0', '30000', '60000', '1452671944', '15', 'Bell_6', '0', '2016-01-13 15:59:04');
INSERT INTO `fruit_slots_record` VALUES ('205', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452671944', '15', 'Bell_6', '0', '2016-01-13 15:59:04');
INSERT INTO `fruit_slots_record` VALUES ('206', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452671971', '15', 'Bell_6', '0', '2016-01-13 15:59:31');
INSERT INTO `fruit_slots_record` VALUES ('207', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452671998', '4', 'Mango_6', '0', '2016-01-13 15:59:58');
INSERT INTO `fruit_slots_record` VALUES ('208', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452672025', '6', 'Bell_2', '0', '2016-01-13 16:00:25');
INSERT INTO `fruit_slots_record` VALUES ('209', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452672052', '3', 'Orange_4', '0', '2016-01-13 16:00:52');
INSERT INTO `fruit_slots_record` VALUES ('210', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452672079', '10', 'Mango_6', '0', '2016-01-13 16:01:19');
INSERT INTO `fruit_slots_record` VALUES ('211', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '0', '1452672243', '1', 'GOODLUCK', '0', '2016-01-13 16:04:03');
INSERT INTO `fruit_slots_record` VALUES ('212', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452672549', '6', 'Bell_2', '0', '2016-01-13 16:09:09');
INSERT INTO `fruit_slots_record` VALUES ('213', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452672576', '17', 'Watermelon_2', '0', '2016-01-13 16:09:36');
INSERT INTO `fruit_slots_record` VALUES ('214', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '480000', '1452672603', '19', 'Star_2', '4', '2016-01-13 16:10:03');
INSERT INTO `fruit_slots_record` VALUES ('215', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452672638', '5', 'Watermelon_8', '0', '2016-01-13 16:10:38');
INSERT INTO `fruit_slots_record` VALUES ('216', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452672665', '17', 'Watermelon_2', '0', '2016-01-13 16:11:05');
INSERT INTO `fruit_slots_record` VALUES ('217', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '480000', '1452672692', '17', 'Watermelon_2', '4', '2016-01-13 16:11:32');
INSERT INTO `fruit_slots_record` VALUES ('218', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '0', '1452672830', '1', 'GOODLUCK', '0', '2016-01-13 16:13:50');
INSERT INTO `fruit_slots_record` VALUES ('219', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452672979', '19', 'Star_2', '0', '2016-01-13 16:16:19');
INSERT INTO `fruit_slots_record` VALUES ('220', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '480000', '1452673006', '19', 'Star_2', '4', '2016-01-13 16:16:46');
INSERT INTO `fruit_slots_record` VALUES ('221', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452673041', '8', 'Orange_2', '0', '2016-01-13 16:17:21');
INSERT INTO `fruit_slots_record` VALUES ('222', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452673068', '3', 'Orange_4', '0', '2016-01-13 16:17:48');
INSERT INTO `fruit_slots_record` VALUES ('223', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452673095', '2', 'Apple_2', '0', '2016-01-13 16:18:15');
INSERT INTO `fruit_slots_record` VALUES ('224', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '480000', '1452673122', '1', 'GOODLUCK', '4', '2016-01-13 16:18:42');
INSERT INTO `fruit_slots_record` VALUES ('225', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452673157', '15', 'Bell_6', '0', '2016-01-13 16:19:17');
INSERT INTO `fruit_slots_record` VALUES ('226', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452673184', '11', 'Star_8', '0', '2016-01-13 16:19:44');
INSERT INTO `fruit_slots_record` VALUES ('227', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452673211', '4', 'Mango_6', '0', '2016-01-13 16:20:11');
INSERT INTO `fruit_slots_record` VALUES ('228', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452673238', '8', 'Orange_2', '0', '2016-01-13 16:20:38');
INSERT INTO `fruit_slots_record` VALUES ('229', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452673265', '21', 'Bell_6', '0', '2016-01-13 16:21:05');
INSERT INTO `fruit_slots_record` VALUES ('230', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452673292', '15', 'Bell_6', '0', '2016-01-13 16:21:32');
INSERT INTO `fruit_slots_record` VALUES ('231', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452673550', '20', 'Orange_4', '0', '2016-01-13 16:25:50');
INSERT INTO `fruit_slots_record` VALUES ('232', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452673577', '4', 'Mango_6', '0', '2016-01-13 16:26:17');
INSERT INTO `fruit_slots_record` VALUES ('233', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452673604', '5', 'Watermelon_8', '0', '2016-01-13 16:26:44');
INSERT INTO `fruit_slots_record` VALUES ('234', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452673631', '20', 'Orange_4', '0', '2016-01-13 16:27:11');
INSERT INTO `fruit_slots_record` VALUES ('235', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452673658', '21', 'Bell_6', '0', '2016-01-13 16:27:38');
INSERT INTO `fruit_slots_record` VALUES ('236', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452673685', '14', 'Apple_4', '0', '2016-01-13 16:28:05');
INSERT INTO `fruit_slots_record` VALUES ('237', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452673885', '13', 'Mango_2', '0', '2016-01-13 16:31:25');
INSERT INTO `fruit_slots_record` VALUES ('238', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452673912', '19', 'Star_2', '0', '2016-01-13 16:31:52');
INSERT INTO `fruit_slots_record` VALUES ('239', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452673939', '19', 'Star_2', '0', '2016-01-13 16:32:19');
INSERT INTO `fruit_slots_record` VALUES ('240', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452673966', '3', 'Orange_4', '0', '2016-01-13 16:32:46');
INSERT INTO `fruit_slots_record` VALUES ('241', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452673993', '19', 'Star_2', '0', '2016-01-13 16:33:13');
INSERT INTO `fruit_slots_record` VALUES ('242', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452674020', '20', 'Orange_4', '0', '2016-01-13 16:33:40');
INSERT INTO `fruit_slots_record` VALUES ('243', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '560000', '1452674047', '1', 'GOODLUCK', '2', '2016-01-13 16:34:07');
INSERT INTO `fruit_slots_record` VALUES ('244', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452674082', '22', 'Watermelon_8', '0', '2016-01-13 16:34:42');
INSERT INTO `fruit_slots_record` VALUES ('245', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452674109', '16', 'Star_8', '0', '2016-01-13 16:35:09');
INSERT INTO `fruit_slots_record` VALUES ('246', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452674136', '16', 'Star_8', '0', '2016-01-13 16:35:36');
INSERT INTO `fruit_slots_record` VALUES ('247', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452674163', '14', 'Apple_4', '0', '2016-01-13 16:36:03');
INSERT INTO `fruit_slots_record` VALUES ('248', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452674190', '21', 'Bell_6', '0', '2016-01-13 16:36:30');
INSERT INTO `fruit_slots_record` VALUES ('249', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452674217', '17', 'Watermelon_2', '0', '2016-01-13 16:36:57');
INSERT INTO `fruit_slots_record` VALUES ('250', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452674244', '4', 'Mango_6', '0', '2016-01-13 16:37:24');
INSERT INTO `fruit_slots_record` VALUES ('251', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452674271', '21', 'Bell_6', '0', '2016-01-13 16:37:51');
INSERT INTO `fruit_slots_record` VALUES ('252', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452674298', '11', 'Star_8', '0', '2016-01-13 16:38:18');
INSERT INTO `fruit_slots_record` VALUES ('253', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452674325', '17', 'Watermelon_2', '0', '2016-01-13 16:38:45');
INSERT INTO `fruit_slots_record` VALUES ('254', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452674352', '22', 'Watermelon_8', '0', '2016-01-13 16:39:12');
INSERT INTO `fruit_slots_record` VALUES ('255', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452674379', '17', 'Watermelon_2', '0', '2016-01-13 16:39:39');
INSERT INTO `fruit_slots_record` VALUES ('256', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452674406', '4', 'Mango_6', '0', '2016-01-13 16:40:06');
INSERT INTO `fruit_slots_record` VALUES ('257', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '7137000', '1452674433', '1', 'GOODLUCK', '1', '2016-01-13 16:40:33');
INSERT INTO `fruit_slots_record` VALUES ('258', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452674468', '22', 'Watermelon_8', '0', '2016-01-13 16:41:08');
INSERT INTO `fruit_slots_record` VALUES ('259', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452674495', '10', 'Mango_6', '0', '2016-01-13 16:41:35');
INSERT INTO `fruit_slots_record` VALUES ('260', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452674522', '15', 'Bell_6', '0', '2016-01-13 16:42:02');
INSERT INTO `fruit_slots_record` VALUES ('261', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452674549', '22', 'Watermelon_8', '0', '2016-01-13 16:42:29');
INSERT INTO `fruit_slots_record` VALUES ('262', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452674576', '4', 'Mango_6', '0', '2016-01-13 16:42:56');
INSERT INTO `fruit_slots_record` VALUES ('263', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452674603', '13', 'Mango_2', '0', '2016-01-13 16:43:23');
INSERT INTO `fruit_slots_record` VALUES ('264', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '630000', '1452674630', '1', 'GOODLUCK', '1', '2016-01-13 16:43:50');
INSERT INTO `fruit_slots_record` VALUES ('265', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452674665', '5', 'Watermelon_8', '0', '2016-01-13 16:44:25');
INSERT INTO `fruit_slots_record` VALUES ('266', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452674692', '21', 'Bell_6', '0', '2016-01-13 16:44:52');
INSERT INTO `fruit_slots_record` VALUES ('267', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452674719', '13', 'Mango_2', '0', '2016-01-13 16:45:19');
INSERT INTO `fruit_slots_record` VALUES ('268', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452674746', '4', 'Mango_6', '0', '2016-01-13 16:45:46');
INSERT INTO `fruit_slots_record` VALUES ('269', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452674773', '13', 'Mango_2', '0', '2016-01-13 16:46:13');
INSERT INTO `fruit_slots_record` VALUES ('270', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452674800', '5', 'Watermelon_8', '0', '2016-01-13 16:46:40');
INSERT INTO `fruit_slots_record` VALUES ('271', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452674827', '5', 'Watermelon_8', '0', '2016-01-13 16:47:07');
INSERT INTO `fruit_slots_record` VALUES ('272', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452674854', '20', 'Orange_4', '0', '2016-01-13 16:47:34');
INSERT INTO `fruit_slots_record` VALUES ('273', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452674881', '10', 'Mango_6', '0', '2016-01-13 16:48:01');
INSERT INTO `fruit_slots_record` VALUES ('274', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452674908', '4', 'Mango_6', '0', '2016-01-13 16:48:28');
INSERT INTO `fruit_slots_record` VALUES ('275', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452674935', '19', 'Star_2', '0', '2016-01-13 16:48:55');
INSERT INTO `fruit_slots_record` VALUES ('276', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '480000', '1452674962', '2', 'Apple_2', '4', '2016-01-13 16:49:22');
INSERT INTO `fruit_slots_record` VALUES ('277', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452674997', '17', 'Watermelon_2', '0', '2016-01-13 16:49:57');
INSERT INTO `fruit_slots_record` VALUES ('278', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '1260000', '1452675024', '1', 'GOODLUCK', '1', '2016-01-13 16:50:24');
INSERT INTO `fruit_slots_record` VALUES ('279', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452675059', '3', 'Orange_4', '0', '2016-01-13 16:50:59');
INSERT INTO `fruit_slots_record` VALUES ('280', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452675086', '16', 'Star_8', '0', '2016-01-13 16:51:26');
INSERT INTO `fruit_slots_record` VALUES ('281', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452675113', '5', 'Watermelon_8', '0', '2016-01-13 16:51:53');
INSERT INTO `fruit_slots_record` VALUES ('282', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452675140', '10', 'Mango_6', '0', '2016-01-13 16:52:20');
INSERT INTO `fruit_slots_record` VALUES ('283', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452675167', '9', 'Apple_4', '0', '2016-01-13 16:52:47');
INSERT INTO `fruit_slots_record` VALUES ('284', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '480000', '1452675194', '2', 'Apple_2', '4', '2016-01-13 16:53:14');
INSERT INTO `fruit_slots_record` VALUES ('285', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '630000', '1452675229', '1', 'GOODLUCK', '1', '2016-01-13 16:53:49');
INSERT INTO `fruit_slots_record` VALUES ('286', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452675264', '16', 'Star_8', '0', '2016-01-13 16:54:24');
INSERT INTO `fruit_slots_record` VALUES ('287', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452675291', '19', 'Star_2', '0', '2016-01-13 16:54:51');
INSERT INTO `fruit_slots_record` VALUES ('288', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452675318', '15', 'Bell_6', '0', '2016-01-13 16:55:18');
INSERT INTO `fruit_slots_record` VALUES ('289', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452675345', '16', 'Star_8', '0', '2016-01-13 16:55:45');
INSERT INTO `fruit_slots_record` VALUES ('290', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452675372', '11', 'Star_8', '0', '2016-01-13 16:56:12');
INSERT INTO `fruit_slots_record` VALUES ('291', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452675399', '2', 'Apple_2', '0', '2016-01-13 16:56:39');
INSERT INTO `fruit_slots_record` VALUES ('292', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452675426', '16', 'Star_8', '0', '2016-01-13 16:57:06');
INSERT INTO `fruit_slots_record` VALUES ('293', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452675453', '17', 'Watermelon_2', '0', '2016-01-13 16:57:33');
INSERT INTO `fruit_slots_record` VALUES ('294', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452675480', '20', 'Orange_4', '0', '2016-01-13 16:58:00');
INSERT INTO `fruit_slots_record` VALUES ('295', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452675507', '21', 'Bell_6', '0', '2016-01-13 16:58:27');
INSERT INTO `fruit_slots_record` VALUES ('296', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452675534', '3', 'Orange_4', '0', '2016-01-13 16:58:54');
INSERT INTO `fruit_slots_record` VALUES ('297', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452675561', '8', 'Orange_2', '0', '2016-01-13 16:59:21');
INSERT INTO `fruit_slots_record` VALUES ('298', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '560000', '1452675588', '20', 'Orange_4', '2', '2016-01-13 16:59:48');
INSERT INTO `fruit_slots_record` VALUES ('299', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452675623', '20', 'Orange_4', '0', '2016-01-13 17:00:23');
INSERT INTO `fruit_slots_record` VALUES ('300', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452675650', '20', 'Orange_4', '0', '2016-01-13 17:00:50');
INSERT INTO `fruit_slots_record` VALUES ('301', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452675677', '20', 'Orange_4', '0', '2016-01-13 17:01:17');
INSERT INTO `fruit_slots_record` VALUES ('302', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452675704', '21', 'Bell_6', '0', '2016-01-13 17:01:44');
INSERT INTO `fruit_slots_record` VALUES ('303', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452675731', '21', 'Bell_6', '0', '2016-01-13 17:02:11');
INSERT INTO `fruit_slots_record` VALUES ('304', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452675758', '13', 'Mango_2', '0', '2016-01-13 17:02:38');
INSERT INTO `fruit_slots_record` VALUES ('305', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452675785', '11', 'Star_8', '0', '2016-01-13 17:03:05');
INSERT INTO `fruit_slots_record` VALUES ('306', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '1889999', '1452675812', '1', 'GOODLUCK', '1', '2016-01-13 17:03:32');
INSERT INTO `fruit_slots_record` VALUES ('307', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452675847', '21', 'Bell_6', '0', '2016-01-13 17:04:07');
INSERT INTO `fruit_slots_record` VALUES ('308', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452675972', '9', 'Apple_4', '0', '2016-01-13 17:06:12');
INSERT INTO `fruit_slots_record` VALUES ('309', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452675999', '16', 'Star_8', '0', '2016-01-13 17:06:39');
INSERT INTO `fruit_slots_record` VALUES ('310', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452676026', '19', 'Star_2', '0', '2016-01-13 17:07:06');
INSERT INTO `fruit_slots_record` VALUES ('311', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452676053', '13', 'Mango_2', '0', '2016-01-13 17:07:33');
INSERT INTO `fruit_slots_record` VALUES ('312', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452676080', '11', 'Star_8', '0', '2016-01-13 17:08:00');
INSERT INTO `fruit_slots_record` VALUES ('313', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452676107', '20', 'Orange_4', '0', '2016-01-13 17:08:27');
INSERT INTO `fruit_slots_record` VALUES ('314', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '560000', '1452676134', '1', 'GOODLUCK', '2', '2016-01-13 17:08:54');
INSERT INTO `fruit_slots_record` VALUES ('315', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452676169', '10', 'Mango_6', '0', '2016-01-13 17:09:29');
INSERT INTO `fruit_slots_record` VALUES ('316', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452676196', '13', 'Mango_2', '0', '2016-01-13 17:09:56');
INSERT INTO `fruit_slots_record` VALUES ('317', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452676223', '22', 'Watermelon_8', '0', '2016-01-13 17:10:23');
INSERT INTO `fruit_slots_record` VALUES ('318', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452676250', '21', 'Bell_6', '0', '2016-01-13 17:10:50');
INSERT INTO `fruit_slots_record` VALUES ('319', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452676277', '15', 'Bell_6', '0', '2016-01-13 17:11:17');
INSERT INTO `fruit_slots_record` VALUES ('320', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452676304', '13', 'Mango_2', '0', '2016-01-13 17:11:44');
INSERT INTO `fruit_slots_record` VALUES ('321', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452676331', '5', 'Watermelon_8', '0', '2016-01-13 17:12:11');
INSERT INTO `fruit_slots_record` VALUES ('322', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452676358', '4', 'Mango_6', '0', '2016-01-13 17:12:38');
INSERT INTO `fruit_slots_record` VALUES ('323', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452676385', '6', 'Bell_2', '0', '2016-01-13 17:13:05');
INSERT INTO `fruit_slots_record` VALUES ('324', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452676412', '9', 'Apple_4', '0', '2016-01-13 17:13:32');
INSERT INTO `fruit_slots_record` VALUES ('325', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452676439', '2', 'Apple_2', '0', '2016-01-13 17:13:59');
INSERT INTO `fruit_slots_record` VALUES ('326', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452676466', '9', 'Apple_4', '0', '2016-01-13 17:14:26');
INSERT INTO `fruit_slots_record` VALUES ('327', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452676493', '8', 'Orange_2', '0', '2016-01-13 17:14:53');
INSERT INTO `fruit_slots_record` VALUES ('328', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '480000', '1452676520', '1', 'GOODLUCK', '4', '2016-01-13 17:15:20');
INSERT INTO `fruit_slots_record` VALUES ('329', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452676555', '8', 'Orange_2', '0', '2016-01-13 17:15:55');
INSERT INTO `fruit_slots_record` VALUES ('330', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '480000', '1452676582', '17', 'Watermelon_2', '4', '2016-01-13 17:16:22');
INSERT INTO `fruit_slots_record` VALUES ('331', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452676617', '4', 'Mango_6', '0', '2016-01-13 17:16:57');
INSERT INTO `fruit_slots_record` VALUES ('332', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452676644', '20', 'Orange_4', '0', '2016-01-13 17:17:24');
INSERT INTO `fruit_slots_record` VALUES ('333', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452676671', '10', 'Mango_6', '0', '2016-01-13 17:17:51');
INSERT INTO `fruit_slots_record` VALUES ('334', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452676698', '4', 'Mango_6', '0', '2016-01-13 17:18:18');
INSERT INTO `fruit_slots_record` VALUES ('335', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '2610000', '1452676725', '1', 'GOODLUCK', '1', '2016-01-13 17:18:45');
INSERT INTO `fruit_slots_record` VALUES ('336', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452676760', '22', 'Watermelon_8', '0', '2016-01-13 17:19:20');
INSERT INTO `fruit_slots_record` VALUES ('337', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '160000', '1452676787', '9', 'Apple_4', '0', '2016-01-13 17:19:47');
INSERT INTO `fruit_slots_record` VALUES ('338', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452738977', '11', 'Star_8', '0', '2016-01-14 10:36:17');
INSERT INTO `fruit_slots_record` VALUES ('339', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452739004', '21', 'Bell_6', '0', '2016-01-14 10:36:44');
INSERT INTO `fruit_slots_record` VALUES ('340', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452739031', '15', 'Bell_6', '0', '2016-01-14 10:37:11');
INSERT INTO `fruit_slots_record` VALUES ('341', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452739058', '8', 'Orange_2', '0', '2016-01-14 10:37:38');
INSERT INTO `fruit_slots_record` VALUES ('342', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '240000', '1452739085', '15', 'Bell_6', '0', '2016-01-14 10:38:05');
INSERT INTO `fruit_slots_record` VALUES ('343', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '720000', '1452739112', '1', 'GOODLUCK', '1', '2016-01-14 10:38:32');
INSERT INTO `fruit_slots_record` VALUES ('344', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452739147', '22', 'Watermelon_8', '0', '2016-01-14 10:39:07');
INSERT INTO `fruit_slots_record` VALUES ('345', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '80000', '1452739174', '8', 'Orange_2', '0', '2016-01-14 10:39:34');
INSERT INTO `fruit_slots_record` VALUES ('346', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452739201', '16', 'Star_8', '0', '2016-01-14 10:40:01');
INSERT INTO `fruit_slots_record` VALUES ('347', '115212', '20000', '40000', '40000', '40000', '40000', '40000', '40000', '40000', '300000', '320000', '1452739228', '22', 'Watermelon_8', '0', '2016-01-14 10:40:28');
INSERT INTO `fruit_slots_record` VALUES ('348', '115212', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '80000', '60000', '1452739282', '15', 'Bell_6', '0', '2016-01-14 10:41:22');
INSERT INTO `fruit_slots_record` VALUES ('349', '115212', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '80000', '120000', '1452739373', '6', 'Bell_2', '4', '2016-01-14 10:42:53');
INSERT INTO `fruit_slots_record` VALUES ('350', '115212', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '80000', '40000', '1452739408', '9', 'Apple_4', '0', '2016-01-14 10:43:28');
INSERT INTO `fruit_slots_record` VALUES ('351', '115212', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '80000', '20000', '1452739435', '2', 'Apple_2', '0', '2016-01-14 10:43:55');
INSERT INTO `fruit_slots_record` VALUES ('352', '115212', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '80000', '120000', '1452739462', '19', 'Star_2', '4', '2016-01-14 10:44:22');
INSERT INTO `fruit_slots_record` VALUES ('353', '115212', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '80000', '20000', '1452739497', '13', 'Mango_2', '0', '2016-01-14 10:44:57');
INSERT INTO `fruit_slots_record` VALUES ('354', '115212', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '80000', '40000', '1452739524', '3', 'Orange_4', '0', '2016-01-14 10:45:24');
INSERT INTO `fruit_slots_record` VALUES ('355', '115212', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '80000', '120000', '1452739551', '2', 'Apple_2', '4', '2016-01-14 10:45:51');
INSERT INTO `fruit_slots_record` VALUES ('356', '115191', '10000', '0', '20000', '10000', '100000', '80000', '10000', '60000', '290000', '80000', '1452742002', '5', 'Watermelon_8', '0', '2016-01-14 11:26:42');
INSERT INTO `fruit_slots_record` VALUES ('357', '115191', '0', '0', '0', '110000', '0', '0', '0', '0', '110000', '0', '1452742029', '14', 'Apple_4', '2', '2016-01-14 11:27:09');
INSERT INTO `fruit_slots_record` VALUES ('358', '115191', '0', '0', '0', '110000', '0', '0', '0', '0', '110000', '0', '1452742064', '20', 'Orange_4', '2', '2016-01-14 11:27:44');
INSERT INTO `fruit_slots_record` VALUES ('359', '115191', '0', '0', '0', '50000', '0', '80000', '0', '0', '130000', '0', '1452742099', '16', 'Star_8', '0', '2016-01-14 11:28:19');
INSERT INTO `fruit_slots_record` VALUES ('360', '115191', '0', '0', '0', '80000', '0', '0', '0', '0', '80000', '160000', '1452742126', '17', 'Watermelon_2', '4', '2016-01-14 11:28:46');
INSERT INTO `fruit_slots_record` VALUES ('361', '115191', '0', '0', '20000', '0', '0', '0', '20000', '0', '40000', '0', '1452742161', '10', 'Mango_6', '0', '2016-01-14 11:29:21');
INSERT INTO `fruit_slots_record` VALUES ('362', '115191', '0', '0', '0', '0', '0', '30000', '0', '0', '30000', '180000', '1452742188', '10', 'Mango_6', '0', '2016-01-14 11:29:48');
INSERT INTO `fruit_slots_record` VALUES ('363', '115191', '0', '0', '0', '0', '0', '30000', '0', '0', '30000', '0', '1452742215', '8', 'Orange_2', '0', '2016-01-14 11:30:15');
INSERT INTO `fruit_slots_record` VALUES ('364', '115191', '0', '0', '0', '0', '0', '0', '50000', '0', '50000', '0', '1452742242', '4', 'Mango_6', '0', '2016-01-14 11:30:42');
INSERT INTO `fruit_slots_record` VALUES ('365', '115191', '0', '0', '0', '0', '0', '30000', '20000', '0', '50000', '0', '1452742269', '2', 'Apple_2', '0', '2016-01-14 11:31:09');
INSERT INTO `fruit_slots_record` VALUES ('366', '115191', '0', '0', '0', '0', '0', '0', '0', '50000', '50000', '200000', '1452742296', '1', 'GOODLUCK', '2', '2016-01-14 11:31:36');
INSERT INTO `fruit_slots_record` VALUES ('367', '115191', '0', '0', '0', '0', '0', '40000', '0', '0', '40000', '0', '1452742331', '17', 'Watermelon_2', '0', '2016-01-14 11:32:11');
INSERT INTO `fruit_slots_record` VALUES ('368', '115191', '0', '0', '20000', '0', '10000', '0', '20000', '20000', '70000', '0', '1452742385', '5', 'Watermelon_8', '0', '2016-01-14 11:33:05');
INSERT INTO `fruit_slots_record` VALUES ('369', '115191', '0', '0', '40000', '40000', '0', '20000', '0', '0', '100000', '0', '1452742412', '15', 'Bell_6', '0', '2016-01-14 11:33:32');
INSERT INTO `fruit_slots_record` VALUES ('370', '115191', '0', '0', '0', '0', '10000', '10000', '10000', '0', '30000', '0', '1452742474', '22', 'Watermelon_8', '0', '2016-01-14 11:34:34');
INSERT INTO `fruit_slots_record` VALUES ('371', '115191', '10000', '20000', '20000', '10000', '10000', '10000', '20000', '10000', '110000', '160000', '1452742501', '11', 'Star_8', '0', '2016-01-14 11:35:01');
INSERT INTO `fruit_slots_record` VALUES ('372', '115191', '0', '0', '10000', '0', '10000', '0', '0', '0', '20000', '0', '1452742868', '5', 'Watermelon_8', '0', '2016-01-14 11:41:08');
INSERT INTO `fruit_slots_record` VALUES ('373', '115191', '0', '0', '0', '0', '300000', '0', '0', '0', '300000', '0', '1452743308', '16', 'Star_8', '0', '2016-01-14 11:48:28');
INSERT INTO `fruit_slots_record` VALUES ('374', '110109', '0', '10000', '10000', '20000', '0', '10000', '0', '10000', '60000', '80000', '1452743335', '16', 'Star_8', '0', '2016-01-14 11:48:55');
INSERT INTO `fruit_slots_record` VALUES ('375', '110109', '0', '10000', '10000', '10000', '10000', '10000', '10000', '10000', '70000', '160000', '1452743478', '1', 'GOODLUCK', '3', '2016-01-14 11:51:18');
INSERT INTO `fruit_slots_record` VALUES ('376', '115191', '0', '0', '0', '0', '0', '100000', '0', '0', '100000', '0', '1452743478', '1', 'GOODLUCK', '3', '2016-01-14 11:51:18');
INSERT INTO `fruit_slots_record` VALUES ('377', '115191', '100000', '100000', '100000', '100000', '100000', '100000', '100000', '100000', '800000', '800000', '1452743513', '11', 'Star_8', '0', '2016-01-14 11:51:53');
INSERT INTO `fruit_slots_record` VALUES ('378', '115191', '100000', '100000', '100000', '300000', '600000', '300000', '300000', '400000', '2200000', '2013000', '1452743683', '1', 'GOODLUCK', '1', '2016-01-14 11:54:43');
INSERT INTO `fruit_slots_record` VALUES ('379', '115191', '0', '0', '0', '200000', '0', '200000', '200000', '0', '600000', '1200000', '1452743826', '10', 'Mango_6', '0', '2016-01-14 11:57:06');
INSERT INTO `fruit_slots_record` VALUES ('380', '115191', '0', '0', '10000', '20000', '0', '0', '20000', '10000', '60000', '160000', '1452743907', '22', 'Watermelon_8', '0', '2016-01-14 11:58:27');
INSERT INTO `fruit_slots_record` VALUES ('381', '115213', '0', '0', '0', '0', '10000', '10000', '0', '10000', '30000', '60000', '1452744811', '17', 'Watermelon_2', '4', '2016-01-14 12:13:31');
INSERT INTO `fruit_slots_record` VALUES ('382', '115212', '0', '0', '100000', '0', '0', '0', '0', '0', '100000', '200000', '1452752025', '19', 'Star_2', '0', '2016-01-14 14:13:45');
INSERT INTO `fruit_slots_record` VALUES ('383', '115212', '0', '0', '100000', '0', '0', '0', '0', '0', '100000', '0', '1452752052', '14', 'Apple_4', '0', '2016-01-14 14:14:12');
INSERT INTO `fruit_slots_record` VALUES ('384', '115212', '0', '0', '100000', '0', '0', '0', '0', '100000', '200000', '0', '1452752079', '15', 'Bell_6', '0', '2016-01-14 14:14:39');

-- ----------------------------
-- Table structure for gold_record
-- ----------------------------
DROP TABLE IF EXISTS `gold_record`;
CREATE TABLE `gold_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '玩家账号ID',
  `gold_current` bigint(20) DEFAULT '0' COMMENT '当前金币数',
  `gold_change_way` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '金币花费获得方式 1购买 2牌局输赢 3牌局入场花费 4牌局中花费 5牌局数奖励 6连续赢奖励 7比赛奖励 8任务奖励 9签到奖励 10兑奖兑换 11购买VIP奖励 12邮件给予',
  `gold_change_data` int(11) NOT NULL DEFAULT '0' COMMENT '金币改变值',
  `datatime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=712175 DEFAULT CHARSET=utf8 COMMENT='金币变化记录表';

-- ----------------------------
-- Records of gold_record
-- ----------------------------
INSERT INTO `gold_record` VALUES ('711445', '110073', '10217170', '14', '-80000', '2016-01-12 18:44:49');
INSERT INTO `gold_record` VALUES ('711446', '110073', '10237170', '15', '20000', '2016-01-12 18:44:59');
INSERT INTO `gold_record` VALUES ('711447', '115191', '80376079', '14', '-30000', '2016-01-12 18:45:16');
INSERT INTO `gold_record` VALUES ('711448', '115191', '80396079', '15', '20000', '2016-01-12 18:45:18');
INSERT INTO `gold_record` VALUES ('711449', '115191', '80326079', '14', '-70000', '2016-01-12 18:48:53');
INSERT INTO `gold_record` VALUES ('711450', '115191', '80386079', '15', '60000', '2016-01-12 18:49:02');
INSERT INTO `gold_record` VALUES ('711451', '115191', '80346079', '14', '-40000', '2016-01-12 18:49:26');
INSERT INTO `gold_record` VALUES ('711452', '115191', '80386079', '15', '40000', '2016-01-12 18:49:30');
INSERT INTO `gold_record` VALUES ('711453', '115191', '80296079', '14', '-90000', '2016-01-12 18:50:45');
INSERT INTO `gold_record` VALUES ('711454', '115191', '80316079', '15', '20000', '2016-01-12 18:50:54');
INSERT INTO `gold_record` VALUES ('711455', '110073', '10247170', '9', '10000', '2016-01-13 11:05:02');
INSERT INTO `gold_record` VALUES ('711456', '110073', '10227170', '14', '-20000', '2016-01-13 11:05:10');
INSERT INTO `gold_record` VALUES ('711457', '110073', '10247170', '9', '10000', '2016-01-13 11:06:47');
INSERT INTO `gold_record` VALUES ('711458', '110073', '10237170', '14', '-10000', '2016-01-13 11:07:08');
INSERT INTO `gold_record` VALUES ('711459', '110073', '10247170', '9', '10000', '2016-01-13 11:08:24');
INSERT INTO `gold_record` VALUES ('711460', '110073', '10237170', '14', '-10000', '2016-01-13 11:09:10');
INSERT INTO `gold_record` VALUES ('711461', '110073', '10227170', '14', '-10000', '2016-01-13 11:11:06');
INSERT INTO `gold_record` VALUES ('711462', '110073', '10147170', '14', '-80000', '2016-01-13 11:11:31');
INSERT INTO `gold_record` VALUES ('711463', '110073', '10667170', '15', '520000', '2016-01-13 11:11:42');
INSERT INTO `gold_record` VALUES ('711464', '110073', '10587170', '14', '-80000', '2016-01-13 11:12:31');
INSERT INTO `gold_record` VALUES ('711465', '110073', '10647170', '15', '60000', '2016-01-13 11:12:45');
INSERT INTO `gold_record` VALUES ('711466', '110073', '10247370', '8', '200', '2016-01-13 11:17:58');
INSERT INTO `gold_record` VALUES ('711467', '110073', '10127370', '14', '-120000', '2016-01-13 11:18:22');
INSERT INTO `gold_record` VALUES ('711468', '110073', '10147370', '15', '20000', '2016-01-13 11:18:30');
INSERT INTO `gold_record` VALUES ('711469', '110073', '10027370', '14', '-120000', '2016-01-13 11:18:48');
INSERT INTO `gold_record` VALUES ('711470', '110073', '10087370', '15', '60000', '2016-01-13 11:18:58');
INSERT INTO `gold_record` VALUES ('711471', '110073', '9967370', '14', '-120000', '2016-01-13 11:19:17');
INSERT INTO `gold_record` VALUES ('711472', '110073', '9987370', '15', '20000', '2016-01-13 11:19:26');
INSERT INTO `gold_record` VALUES ('711473', '110073', '9867370', '14', '-120000', '2016-01-13 11:19:40');
INSERT INTO `gold_record` VALUES ('711474', '110073', '9887370', '15', '20000', '2016-01-13 11:19:54');
INSERT INTO `gold_record` VALUES ('711475', '110073', '9767370', '14', '-120000', '2016-01-13 11:20:09');
INSERT INTO `gold_record` VALUES ('711476', '110073', '9807370', '15', '40000', '2016-01-13 11:20:22');
INSERT INTO `gold_record` VALUES ('711477', '110109', '100051999', '9', '2000', '2016-01-13 11:28:18');
INSERT INTO `gold_record` VALUES ('711478', '110109', '100051599', '3', '-400', '2016-01-13 11:30:05');
INSERT INTO `gold_record` VALUES ('711479', '110109', '100052199', '2', '600', '2016-01-13 11:30:05');
INSERT INTO `gold_record` VALUES ('711480', '101633', '1913790', '3', '-400', '2016-01-13 11:30:05');
INSERT INTO `gold_record` VALUES ('711481', '101633', '1914390', '2', '600', '2016-01-13 11:30:05');
INSERT INTO `gold_record` VALUES ('711482', '100381', '1910600', '3', '-400', '2016-01-13 11:30:05');
INSERT INTO `gold_record` VALUES ('711483', '100381', '1909400', '2', '-1200', '2016-01-13 11:30:05');
INSERT INTO `gold_record` VALUES ('711484', '110109', '100051799', '3', '-400', '2016-01-13 11:32:33');
INSERT INTO `gold_record` VALUES ('711485', '110109', '100049399', '2', '-2400', '2016-01-13 11:32:33');
INSERT INTO `gold_record` VALUES ('711486', '101069', '1011600', '3', '-400', '2016-01-13 11:32:33');
INSERT INTO `gold_record` VALUES ('711487', '101069', '1014000', '2', '2400', '2016-01-13 11:32:33');
INSERT INTO `gold_record` VALUES ('711488', '101734', '1011230', '3', '-400', '2016-01-13 11:32:33');
INSERT INTO `gold_record` VALUES ('711489', '101250', '1000600', '3', '-400', '2016-01-13 11:34:33');
INSERT INTO `gold_record` VALUES ('711490', '110109', '100048999', '3', '-400', '2016-01-13 11:34:33');
INSERT INTO `gold_record` VALUES ('711491', '110109', '100044199', '2', '-4800', '2016-01-13 11:34:33');
INSERT INTO `gold_record` VALUES ('711492', '101302', '1961600', '3', '-400', '2016-01-13 11:34:33');
INSERT INTO `gold_record` VALUES ('711493', '101302', '1966400', '2', '4800', '2016-01-13 11:34:33');
INSERT INTO `gold_record` VALUES ('711494', '115212', '3476500', '14', '-30000', '2016-01-13 11:53:28');
INSERT INTO `gold_record` VALUES ('711495', '115212', '3516500', '15', '40000', '2016-01-13 11:53:37');
INSERT INTO `gold_record` VALUES ('711496', '115212', '3486500', '14', '-30000', '2016-01-13 11:54:02');
INSERT INTO `gold_record` VALUES ('711497', '115212', '3526500', '15', '40000', '2016-01-13 11:54:07');
INSERT INTO `gold_record` VALUES ('711498', '115212', '3496500', '14', '-30000', '2016-01-13 11:54:29');
INSERT INTO `gold_record` VALUES ('711499', '100944', '1048250', '3', '-400', '2016-01-13 11:54:36');
INSERT INTO `gold_record` VALUES ('711500', '100944', '1047650', '2', '-600', '2016-01-13 11:54:36');
INSERT INTO `gold_record` VALUES ('711501', '110109', '100043799', '3', '-400', '2016-01-13 11:54:36');
INSERT INTO `gold_record` VALUES ('711502', '110109', '100043199', '2', '-600', '2016-01-13 11:54:36');
INSERT INTO `gold_record` VALUES ('711503', '101537', '1962090', '3', '-400', '2016-01-13 11:54:36');
INSERT INTO `gold_record` VALUES ('711504', '101537', '1963290', '2', '1200', '2016-01-13 11:54:36');
INSERT INTO `gold_record` VALUES ('711505', '115212', '3516500', '15', '20000', '2016-01-13 11:54:37');
INSERT INTO `gold_record` VALUES ('711506', '115212', '3486500', '14', '-30000', '2016-01-13 11:54:53');
INSERT INTO `gold_record` VALUES ('711507', '115212', '3456500', '14', '-30000', '2016-01-13 11:55:31');
INSERT INTO `gold_record` VALUES ('711508', '115212', '3426500', '14', '-30000', '2016-01-13 11:55:57');
INSERT INTO `gold_record` VALUES ('711509', '115212', '3396500', '14', '-30000', '2016-01-13 11:56:56');
INSERT INTO `gold_record` VALUES ('711510', '115212', '3456500', '15', '60000', '2016-01-13 11:57:07');
INSERT INTO `gold_record` VALUES ('711511', '115212', '3386500', '14', '-70000', '2016-01-13 11:57:33');
INSERT INTO `gold_record` VALUES ('711512', '115212', '3446500', '15', '60000', '2016-01-13 11:57:42');
INSERT INTO `gold_record` VALUES ('711513', '115212', '3376500', '14', '-70000', '2016-01-13 11:58:01');
INSERT INTO `gold_record` VALUES ('711514', '115212', '3396500', '15', '20000', '2016-01-13 11:58:12');
INSERT INTO `gold_record` VALUES ('711515', '115212', '3326500', '14', '-70000', '2016-01-13 11:58:29');
INSERT INTO `gold_record` VALUES ('711516', '115212', '3366500', '15', '40000', '2016-01-13 11:58:42');
INSERT INTO `gold_record` VALUES ('711517', '115212', '3296500', '14', '-70000', '2016-01-13 11:59:28');
INSERT INTO `gold_record` VALUES ('711518', '115212', '3316500', '15', '20000', '2016-01-13 11:59:42');
INSERT INTO `gold_record` VALUES ('711519', '115212', '3266500', '14', '-50000', '2016-01-13 11:59:59');
INSERT INTO `gold_record` VALUES ('711520', '115212', '3176500', '14', '-90000', '2016-01-13 12:04:09');
INSERT INTO `gold_record` VALUES ('711521', '115212', '3086500', '14', '-90000', '2016-01-13 12:04:39');
INSERT INTO `gold_record` VALUES ('711522', '115212', '2996500', '14', '-90000', '2016-01-13 12:05:11');
INSERT INTO `gold_record` VALUES ('711523', '115212', '2906500', '14', '-90000', '2016-01-13 12:05:33');
INSERT INTO `gold_record` VALUES ('711524', '115212', '3146500', '15', '240000', '2016-01-13 12:05:47');
INSERT INTO `gold_record` VALUES ('711525', '115212', '3056500', '14', '-90000', '2016-01-13 12:06:03');
INSERT INTO `gold_record` VALUES ('711526', '115212', '2966500', '14', '-90000', '2016-01-13 12:06:33');
INSERT INTO `gold_record` VALUES ('711527', '115212', '2876500', '14', '-90000', '2016-01-13 12:07:33');
INSERT INTO `gold_record` VALUES ('711528', '115212', '2826500', '14', '-50000', '2016-01-13 12:08:05');
INSERT INTO `gold_record` VALUES ('711529', '115212', '2776500', '14', '-50000', '2016-01-13 12:09:04');
INSERT INTO `gold_record` VALUES ('711530', '115212', '2726500', '14', '-50000', '2016-01-13 12:09:42');
INSERT INTO `gold_record` VALUES ('711531', '115212', '2676500', '14', '-50000', '2016-01-13 12:10:08');
INSERT INTO `gold_record` VALUES ('711532', '115212', '2586500', '14', '-90000', '2016-01-13 12:10:45');
INSERT INTO `gold_record` VALUES ('711533', '115212', '2496500', '14', '-90000', '2016-01-13 12:11:09');
INSERT INTO `gold_record` VALUES ('711534', '115212', '2736500', '15', '240000', '2016-01-13 12:11:22');
INSERT INTO `gold_record` VALUES ('711535', '115212', '2646500', '14', '-90000', '2016-01-13 12:11:50');
INSERT INTO `gold_record` VALUES ('711536', '115212', '2596500', '14', '-50000', '2016-01-13 12:17:50');
INSERT INTO `gold_record` VALUES ('711537', '115212', '2796500', '15', '200000', '2016-01-13 12:18:02');
INSERT INTO `gold_record` VALUES ('711538', '115212', '2746500', '14', '-50000', '2016-01-13 12:18:18');
INSERT INTO `gold_record` VALUES ('711539', '115212', '2846500', '15', '100000', '2016-01-13 12:18:32');
INSERT INTO `gold_record` VALUES ('711540', '115212', '2796500', '14', '-50000', '2016-01-13 12:18:54');
INSERT INTO `gold_record` VALUES ('711541', '115212', '2996500', '15', '200000', '2016-01-13 12:19:02');
INSERT INTO `gold_record` VALUES ('711542', '115212', '2946500', '14', '-50000', '2016-01-13 12:19:54');
INSERT INTO `gold_record` VALUES ('711543', '115212', '2896500', '14', '-50000', '2016-01-13 12:21:23');
INSERT INTO `gold_record` VALUES ('711544', '115212', '2826500', '14', '-70000', '2016-01-13 13:52:35');
INSERT INTO `gold_record` VALUES ('711545', '115212', '2866500', '15', '40000', '2016-01-13 13:52:39');
INSERT INTO `gold_record` VALUES ('711546', '115212', '2816500', '14', '-50000', '2016-01-13 13:52:57');
INSERT INTO `gold_record` VALUES ('711547', '115212', '2916500', '15', '100000', '2016-01-13 13:53:09');
INSERT INTO `gold_record` VALUES ('711548', '115212', '2866500', '14', '-50000', '2016-01-13 13:53:39');
INSERT INTO `gold_record` VALUES ('711549', '115212', '2816500', '14', '-50000', '2016-01-13 13:54:00');
INSERT INTO `gold_record` VALUES ('711550', '115212', '2766500', '14', '-50000', '2016-01-13 13:55:04');
INSERT INTO `gold_record` VALUES ('711551', '115212', '2866500', '15', '100000', '2016-01-13 13:55:14');
INSERT INTO `gold_record` VALUES ('711552', '115212', '2806500', '14', '-60000', '2016-01-13 13:55:34');
INSERT INTO `gold_record` VALUES ('711553', '115212', '2756500', '14', '-50000', '2016-01-13 13:56:05');
INSERT INTO `gold_record` VALUES ('711554', '115212', '2656500', '14', '-100000', '2016-01-13 13:56:32');
INSERT INTO `gold_record` VALUES ('711555', '115212', '2556500', '14', '-100000', '2016-01-13 13:57:03');
INSERT INTO `gold_record` VALUES ('711556', '115212', '2466500', '14', '-90000', '2016-01-13 13:58:06');
INSERT INTO `gold_record` VALUES ('711557', '115212', '2646500', '15', '180000', '2016-01-13 13:58:14');
INSERT INTO `gold_record` VALUES ('711558', '115212', '2556500', '14', '-90000', '2016-01-13 13:58:31');
INSERT INTO `gold_record` VALUES ('711559', '115212', '2736500', '15', '180000', '2016-01-13 13:58:44');
INSERT INTO `gold_record` VALUES ('711560', '115212', '2686500', '14', '-50000', '2016-01-13 14:00:07');
INSERT INTO `gold_record` VALUES ('711561', '115212', '2636500', '14', '-50000', '2016-01-13 14:00:35');
INSERT INTO `gold_record` VALUES ('711562', '115212', '2586500', '14', '-50000', '2016-01-13 14:01:34');
INSERT INTO `gold_record` VALUES ('711563', '115212', '2536500', '14', '-50000', '2016-01-13 14:03:36');
INSERT INTO `gold_record` VALUES ('711564', '115212', '2466500', '14', '-70000', '2016-01-13 14:10:52');
INSERT INTO `gold_record` VALUES ('711565', '115212', '2486500', '15', '20000', '2016-01-13 14:11:00');
INSERT INTO `gold_record` VALUES ('711566', '115212', '2436500', '14', '-50000', '2016-01-13 14:11:12');
INSERT INTO `gold_record` VALUES ('711567', '115212', '2386500', '14', '-50000', '2016-01-13 14:12:02');
INSERT INTO `gold_record` VALUES ('711568', '115212', '2286500', '14', '-100000', '2016-01-13 14:12:37');
INSERT INTO `gold_record` VALUES ('711569', '115212', '2176500', '14', '-110000', '2016-01-13 14:12:55');
INSERT INTO `gold_record` VALUES ('711570', '115212', '2476500', '15', '300000', '2016-01-13 14:13:05');
INSERT INTO `gold_record` VALUES ('711571', '115212', '2406500', '14', '-70000', '2016-01-13 14:14:19');
INSERT INTO `gold_record` VALUES ('711572', '115212', '2306500', '14', '-100000', '2016-01-13 14:18:40');
INSERT INTO `gold_record` VALUES ('711573', '115212', '2256500', '14', '-50000', '2016-01-13 14:26:00');
INSERT INTO `gold_record` VALUES ('711574', '115212', '2456500', '15', '200000', '2016-01-13 14:26:01');
INSERT INTO `gold_record` VALUES ('711575', '115212', '2406500', '14', '-50000', '2016-01-13 14:26:13');
INSERT INTO `gold_record` VALUES ('711576', '115212', '2356500', '14', '-50000', '2016-01-13 14:29:07');
INSERT INTO `gold_record` VALUES ('711577', '115212', '2296500', '14', '-60000', '2016-01-13 14:29:40');
INSERT INTO `gold_record` VALUES ('711578', '115212', '2076500', '14', '-220000', '2016-01-13 14:34:19');
INSERT INTO `gold_record` VALUES ('711579', '115212', '2256500', '15', '180000', '2016-01-13 14:34:23');
INSERT INTO `gold_record` VALUES ('711580', '115212', '2036500', '14', '-220000', '2016-01-13 14:34:35');
INSERT INTO `gold_record` VALUES ('711581', '115212', '2216500', '15', '180000', '2016-01-13 14:34:50');
INSERT INTO `gold_record` VALUES ('711582', '115212', '1996500', '14', '-220000', '2016-01-13 14:35:03');
INSERT INTO `gold_record` VALUES ('711583', '115212', '2236500', '15', '240000', '2016-01-13 14:35:17');
INSERT INTO `gold_record` VALUES ('711584', '115212', '2016500', '14', '-220000', '2016-01-13 14:35:29');
INSERT INTO `gold_record` VALUES ('711585', '115212', '2096500', '15', '80000', '2016-01-13 14:35:44');
INSERT INTO `gold_record` VALUES ('711586', '115212', '1746500', '14', '-350000', '2016-01-13 14:36:06');
INSERT INTO `gold_record` VALUES ('711587', '115212', '1986500', '15', '240000', '2016-01-13 14:36:11');
INSERT INTO `gold_record` VALUES ('711588', '115212', '1636500', '14', '-350000', '2016-01-13 14:36:26');
INSERT INTO `gold_record` VALUES ('711589', '115212', '1756500', '15', '120000', '2016-01-13 14:36:38');
INSERT INTO `gold_record` VALUES ('711590', '115212', '1726500', '14', '-30000', '2016-01-13 14:38:43');
INSERT INTO `gold_record` VALUES ('711591', '115212', '1676500', '14', '-50000', '2016-01-13 14:39:05');
INSERT INTO `gold_record` VALUES ('711592', '115212', '1536500', '14', '-140000', '2016-01-13 14:39:35');
INSERT INTO `gold_record` VALUES ('711593', '115212', '1836500', '15', '300000', '2016-01-13 14:39:45');
INSERT INTO `gold_record` VALUES ('711594', '115212', '1736500', '14', '-100000', '2016-01-13 14:39:59');
INSERT INTO `gold_record` VALUES ('711595', '115212', '1616500', '14', '-120000', '2016-01-13 14:40:27');
INSERT INTO `gold_record` VALUES ('711596', '115212', '1496500', '14', '-120000', '2016-01-13 14:40:52');
INSERT INTO `gold_record` VALUES ('711597', '115212', '1736500', '15', '240000', '2016-01-13 14:41:06');
INSERT INTO `gold_record` VALUES ('711598', '115212', '1616500', '14', '-120000', '2016-01-13 14:41:24');
INSERT INTO `gold_record` VALUES ('711599', '115212', '1566500', '14', '-50000', '2016-01-13 14:43:43');
INSERT INTO `gold_record` VALUES ('711600', '115212', '1766500', '15', '200000', '2016-01-13 14:43:56');
INSERT INTO `gold_record` VALUES ('711601', '115212', '1716500', '14', '-50000', '2016-01-13 14:44:09');
INSERT INTO `gold_record` VALUES ('711602', '115212', '1666500', '14', '-50000', '2016-01-13 14:44:49');
INSERT INTO `gold_record` VALUES ('711603', '115212', '1616500', '14', '-50000', '2016-01-13 14:45:22');
INSERT INTO `gold_record` VALUES ('711604', '115212', '1716500', '15', '100000', '2016-01-13 14:45:25');
INSERT INTO `gold_record` VALUES ('711605', '115212', '1666500', '14', '-50000', '2016-01-13 14:45:48');
INSERT INTO `gold_record` VALUES ('711606', '115212', '1566500', '14', '-100000', '2016-01-13 14:46:20');
INSERT INTO `gold_record` VALUES ('711607', '115212', '1666500', '15', '100000', '2016-01-13 14:46:27');
INSERT INTO `gold_record` VALUES ('711608', '115212', '1576500', '14', '-90000', '2016-01-13 14:46:47');
INSERT INTO `gold_record` VALUES ('711609', '115212', '1476500', '14', '-100000', '2016-01-13 14:47:13');
INSERT INTO `gold_record` VALUES ('711610', '115212', '1206500', '14', '-270000', '2016-01-13 14:47:41');
INSERT INTO `gold_record` VALUES ('711611', '115212', '1526500', '15', '320000', '2016-01-13 14:47:48');
INSERT INTO `gold_record` VALUES ('711612', '115212', '1256500', '14', '-270000', '2016-01-13 14:48:02');
INSERT INTO `gold_record` VALUES ('711613', '115212', '1416500', '15', '160000', '2016-01-13 14:48:15');
INSERT INTO `gold_record` VALUES ('711614', '115212', '1146500', '14', '-270000', '2016-01-13 14:48:29');
INSERT INTO `gold_record` VALUES ('711615', '115212', '1266500', '15', '120000', '2016-01-13 14:48:42');
INSERT INTO `gold_record` VALUES ('711616', '115212', '996500', '14', '-270000', '2016-01-13 14:48:55');
INSERT INTO `gold_record` VALUES ('711617', '115212', '1116500', '15', '120000', '2016-01-13 14:49:09');
INSERT INTO `gold_record` VALUES ('711618', '115212', '846500', '14', '-270000', '2016-01-13 14:49:21');
INSERT INTO `gold_record` VALUES ('711619', '115212', '1166500', '15', '320000', '2016-01-13 14:49:36');
INSERT INTO `gold_record` VALUES ('711620', '115212', '896500', '14', '-270000', '2016-01-13 14:49:48');
INSERT INTO `gold_record` VALUES ('711621', '115212', '976500', '15', '80000', '2016-01-13 14:50:03');
INSERT INTO `gold_record` VALUES ('711622', '115212', '706500', '14', '-270000', '2016-01-13 14:50:15');
INSERT INTO `gold_record` VALUES ('711623', '115212', '436500', '14', '-270000', '2016-01-13 14:50:44');
INSERT INTO `gold_record` VALUES ('711624', '115212', '596500', '15', '160000', '2016-01-13 14:50:57');
INSERT INTO `gold_record` VALUES ('711625', '115212', '326500', '14', '-270000', '2016-01-13 14:51:09');
INSERT INTO `gold_record` VALUES ('711626', '115212', '846500', '15', '520000', '2016-01-13 14:51:24');
INSERT INTO `gold_record` VALUES ('711627', '115212', '576500', '14', '-270000', '2016-01-13 14:54:31');
INSERT INTO `gold_record` VALUES ('711628', '115212', '696500', '15', '120000', '2016-01-13 14:54:41');
INSERT INTO `gold_record` VALUES ('711629', '110109', '99993199', '14', '-50000', '2016-01-13 14:58:33');
INSERT INTO `gold_record` VALUES ('711630', '110109', '100033199', '15', '40000', '2016-01-13 14:58:46');
INSERT INTO `gold_record` VALUES ('711631', '115212', '9700000', '14', '-300000', '2016-01-13 14:59:33');
INSERT INTO `gold_record` VALUES ('711632', '115212', '13008000', '15', '3308000', '2016-01-13 14:59:40');
INSERT INTO `gold_record` VALUES ('711633', '115212', '12708000', '14', '-300000', '2016-01-13 15:00:00');
INSERT INTO `gold_record` VALUES ('711634', '115212', '12788000', '15', '80000', '2016-01-13 15:00:15');
INSERT INTO `gold_record` VALUES ('711635', '115212', '12488000', '14', '-300000', '2016-01-13 15:00:28');
INSERT INTO `gold_record` VALUES ('711636', '115212', '12728000', '15', '240000', '2016-01-13 15:00:42');
INSERT INTO `gold_record` VALUES ('711637', '115212', '12428000', '14', '-300000', '2016-01-13 15:00:57');
INSERT INTO `gold_record` VALUES ('711638', '115212', '12668000', '15', '240000', '2016-01-13 15:01:09');
INSERT INTO `gold_record` VALUES ('711639', '115212', '12368000', '14', '-300000', '2016-01-13 15:01:26');
INSERT INTO `gold_record` VALUES ('711640', '115212', '12688000', '15', '320000', '2016-01-13 15:01:36');
INSERT INTO `gold_record` VALUES ('711641', '115212', '12388000', '14', '-300000', '2016-01-13 15:01:48');
INSERT INTO `gold_record` VALUES ('711642', '115212', '12708000', '15', '320000', '2016-01-13 15:02:03');
INSERT INTO `gold_record` VALUES ('711643', '115212', '12408000', '14', '-300000', '2016-01-13 15:02:16');
INSERT INTO `gold_record` VALUES ('711644', '115212', '12728000', '15', '320000', '2016-01-13 15:02:30');
INSERT INTO `gold_record` VALUES ('711645', '115212', '12428000', '14', '-300000', '2016-01-13 15:02:42');
INSERT INTO `gold_record` VALUES ('711646', '115212', '13058000', '15', '630000', '2016-01-13 15:02:57');
INSERT INTO `gold_record` VALUES ('711647', '115212', '12758000', '14', '-300000', '2016-01-13 15:03:17');
INSERT INTO `gold_record` VALUES ('711648', '115212', '13078000', '15', '320000', '2016-01-13 15:03:32');
INSERT INTO `gold_record` VALUES ('711649', '115212', '12778000', '14', '-300000', '2016-01-13 15:03:44');
INSERT INTO `gold_record` VALUES ('711650', '115212', '12938000', '15', '160000', '2016-01-13 15:03:59');
INSERT INTO `gold_record` VALUES ('711651', '115212', '12638000', '14', '-300000', '2016-01-13 15:04:12');
INSERT INTO `gold_record` VALUES ('711652', '115212', '12958000', '15', '320000', '2016-01-13 15:04:26');
INSERT INTO `gold_record` VALUES ('711653', '115212', '12658000', '14', '-300000', '2016-01-13 15:04:38');
INSERT INTO `gold_record` VALUES ('711654', '115212', '12898000', '15', '240000', '2016-01-13 15:04:53');
INSERT INTO `gold_record` VALUES ('711655', '115212', '12598000', '14', '-300000', '2016-01-13 15:05:05');
INSERT INTO `gold_record` VALUES ('711656', '115212', '12758000', '15', '160000', '2016-01-13 15:05:20');
INSERT INTO `gold_record` VALUES ('711657', '115212', '12458000', '14', '-300000', '2016-01-13 15:05:33');
INSERT INTO `gold_record` VALUES ('711658', '115212', '12618000', '15', '160000', '2016-01-13 15:05:47');
INSERT INTO `gold_record` VALUES ('711659', '115212', '9700000', '14', '-300000', '2016-01-13 15:14:16');
INSERT INTO `gold_record` VALUES ('711660', '115212', '9780000', '15', '80000', '2016-01-13 15:14:22');
INSERT INTO `gold_record` VALUES ('711661', '115212', '9480000', '14', '-300000', '2016-01-13 15:14:34');
INSERT INTO `gold_record` VALUES ('711662', '110109', '99963199', '14', '-70000', '2016-01-13 15:14:38');
INSERT INTO `gold_record` VALUES ('711663', '110109', '99983199', '15', '20000', '2016-01-13 15:14:49');
INSERT INTO `gold_record` VALUES ('711664', '115212', '9560000', '15', '80000', '2016-01-13 15:14:49');
INSERT INTO `gold_record` VALUES ('711665', '115212', '9260000', '14', '-300000', '2016-01-13 15:15:01');
INSERT INTO `gold_record` VALUES ('711666', '115212', '9420000', '15', '160000', '2016-01-13 15:15:16');
INSERT INTO `gold_record` VALUES ('711667', '115212', '9120000', '14', '-300000', '2016-01-13 15:15:29');
INSERT INTO `gold_record` VALUES ('711668', '110109', '99913199', '14', '-70000', '2016-01-13 15:15:34');
INSERT INTO `gold_record` VALUES ('711669', '110109', '99933199', '15', '20000', '2016-01-13 15:15:43');
INSERT INTO `gold_record` VALUES ('711670', '115212', '9200000', '15', '80000', '2016-01-13 15:15:43');
INSERT INTO `gold_record` VALUES ('711671', '115212', '8900000', '14', '-300000', '2016-01-13 15:15:55');
INSERT INTO `gold_record` VALUES ('711672', '115212', '8980000', '15', '80000', '2016-01-13 15:16:10');
INSERT INTO `gold_record` VALUES ('711673', '115212', '8680000', '14', '-300000', '2016-01-13 15:16:22');
INSERT INTO `gold_record` VALUES ('711674', '115212', '9240000', '15', '560000', '2016-01-13 15:16:37');
INSERT INTO `gold_record` VALUES ('711675', '115212', '8940000', '14', '-300000', '2016-01-13 15:16:57');
INSERT INTO `gold_record` VALUES ('711676', '115212', '9100000', '15', '160000', '2016-01-13 15:17:12');
INSERT INTO `gold_record` VALUES ('711677', '115212', '8800000', '14', '-300000', '2016-01-13 15:17:24');
INSERT INTO `gold_record` VALUES ('711678', '110109', '99893199', '14', '-40000', '2016-01-13 15:17:29');
INSERT INTO `gold_record` VALUES ('711679', '110109', '99913199', '15', '20000', '2016-01-13 15:17:39');
INSERT INTO `gold_record` VALUES ('711680', '115212', '8880000', '15', '80000', '2016-01-13 15:17:39');
INSERT INTO `gold_record` VALUES ('711681', '115212', '8580000', '14', '-300000', '2016-01-13 15:17:52');
INSERT INTO `gold_record` VALUES ('711682', '110109', '99863199', '14', '-50000', '2016-01-13 15:17:55');
INSERT INTO `gold_record` VALUES ('711683', '110109', '99903199', '15', '40000', '2016-01-13 15:18:06');
INSERT INTO `gold_record` VALUES ('711684', '115212', '8740000', '15', '160000', '2016-01-13 15:18:06');
INSERT INTO `gold_record` VALUES ('711685', '115212', '8440000', '14', '-300000', '2016-01-13 15:18:18');
INSERT INTO `gold_record` VALUES ('711686', '115212', '8760000', '15', '320000', '2016-01-13 15:18:33');
INSERT INTO `gold_record` VALUES ('711687', '115212', '8460000', '14', '-300000', '2016-01-13 15:18:45');
INSERT INTO `gold_record` VALUES ('711688', '115212', '8620000', '15', '160000', '2016-01-13 15:19:00');
INSERT INTO `gold_record` VALUES ('711689', '115212', '8320000', '14', '-300000', '2016-01-13 15:19:13');
INSERT INTO `gold_record` VALUES ('711690', '115212', '8920000', '15', '600000', '2016-01-13 15:19:27');
INSERT INTO `gold_record` VALUES ('711691', '115212', '8620000', '14', '-300000', '2016-01-13 15:19:39');
INSERT INTO `gold_record` VALUES ('711692', '115212', '8700000', '15', '80000', '2016-01-13 15:19:54');
INSERT INTO `gold_record` VALUES ('711693', '115212', '8400000', '14', '-300000', '2016-01-13 15:20:06');
INSERT INTO `gold_record` VALUES ('711694', '115212', '8720000', '15', '320000', '2016-01-13 15:20:21');
INSERT INTO `gold_record` VALUES ('711695', '115212', '8420000', '14', '-300000', '2016-01-13 15:20:34');
INSERT INTO `gold_record` VALUES ('711696', '110109', '99863199', '14', '-40000', '2016-01-13 15:20:40');
INSERT INTO `gold_record` VALUES ('711697', '110109', '99943199', '15', '80000', '2016-01-13 15:20:48');
INSERT INTO `gold_record` VALUES ('711698', '115212', '8740000', '15', '320000', '2016-01-13 15:20:48');
INSERT INTO `gold_record` VALUES ('711699', '115212', '8440000', '14', '-300000', '2016-01-13 15:21:00');
INSERT INTO `gold_record` VALUES ('711700', '110109', '99913199', '14', '-30000', '2016-01-13 15:21:03');
INSERT INTO `gold_record` VALUES ('711701', '115212', '8600000', '15', '160000', '2016-01-13 15:21:15');
INSERT INTO `gold_record` VALUES ('711702', '115212', '8300000', '14', '-300000', '2016-01-13 15:21:27');
INSERT INTO `gold_record` VALUES ('711703', '115212', '8380000', '15', '80000', '2016-01-13 15:21:42');
INSERT INTO `gold_record` VALUES ('711704', '115212', '8080000', '14', '-300000', '2016-01-13 15:21:55');
INSERT INTO `gold_record` VALUES ('711705', '115212', '8160000', '15', '80000', '2016-01-13 15:22:09');
INSERT INTO `gold_record` VALUES ('711706', '115212', '7860000', '14', '-300000', '2016-01-13 15:22:21');
INSERT INTO `gold_record` VALUES ('711707', '115212', '8100000', '15', '240000', '2016-01-13 15:22:36');
INSERT INTO `gold_record` VALUES ('711708', '115212', '7800000', '14', '-300000', '2016-01-13 15:22:49');
INSERT INTO `gold_record` VALUES ('711709', '115212', '8280000', '15', '480000', '2016-01-13 15:23:03');
INSERT INTO `gold_record` VALUES ('711710', '115212', '7980000', '14', '-300000', '2016-01-13 15:23:23');
INSERT INTO `gold_record` VALUES ('711711', '115212', '8220000', '15', '240000', '2016-01-13 15:23:38');
INSERT INTO `gold_record` VALUES ('711712', '115212', '7920000', '14', '-300000', '2016-01-13 15:23:51');
INSERT INTO `gold_record` VALUES ('711713', '115212', '8000000', '15', '80000', '2016-01-13 15:24:05');
INSERT INTO `gold_record` VALUES ('711714', '115212', '7700000', '14', '-300000', '2016-01-13 15:24:17');
INSERT INTO `gold_record` VALUES ('711715', '115212', '7940000', '15', '240000', '2016-01-13 15:24:32');
INSERT INTO `gold_record` VALUES ('711716', '115212', '7640000', '14', '-300000', '2016-01-13 15:24:44');
INSERT INTO `gold_record` VALUES ('711717', '115212', '7960000', '15', '320000', '2016-01-13 15:24:59');
INSERT INTO `gold_record` VALUES ('711718', '115212', '7660000', '14', '-300000', '2016-01-13 15:25:12');
INSERT INTO `gold_record` VALUES ('711719', '115212', '7740000', '15', '80000', '2016-01-13 15:25:26');
INSERT INTO `gold_record` VALUES ('711720', '115212', '7440000', '14', '-300000', '2016-01-13 15:25:38');
INSERT INTO `gold_record` VALUES ('711721', '115212', '7760000', '15', '320000', '2016-01-13 15:25:53');
INSERT INTO `gold_record` VALUES ('711722', '115212', '7460000', '14', '-300000', '2016-01-13 15:26:05');
INSERT INTO `gold_record` VALUES ('711723', '115212', '10520000', '15', '3060000', '2016-01-13 15:26:20');
INSERT INTO `gold_record` VALUES ('711724', '115212', '10220000', '14', '-300000', '2016-01-13 15:26:40');
INSERT INTO `gold_record` VALUES ('711725', '115212', '10540000', '15', '320000', '2016-01-13 15:26:55');
INSERT INTO `gold_record` VALUES ('711726', '115212', '10240000', '14', '-300000', '2016-01-13 15:27:07');
INSERT INTO `gold_record` VALUES ('711727', '115212', '10560000', '15', '320000', '2016-01-13 15:27:22');
INSERT INTO `gold_record` VALUES ('711728', '115212', '10260000', '14', '-300000', '2016-01-13 15:27:35');
INSERT INTO `gold_record` VALUES ('711729', '115212', '10420000', '15', '160000', '2016-01-13 15:27:49');
INSERT INTO `gold_record` VALUES ('711730', '115212', '10120000', '14', '-300000', '2016-01-13 15:28:01');
INSERT INTO `gold_record` VALUES ('711731', '115212', '10280000', '15', '160000', '2016-01-13 15:28:16');
INSERT INTO `gold_record` VALUES ('711732', '115212', '9980000', '14', '-300000', '2016-01-13 15:28:28');
INSERT INTO `gold_record` VALUES ('711733', '115212', '10300000', '15', '320000', '2016-01-13 15:28:43');
INSERT INTO `gold_record` VALUES ('711734', '115212', '10000000', '14', '-300000', '2016-01-13 15:28:56');
INSERT INTO `gold_record` VALUES ('711735', '115212', '10240000', '15', '240000', '2016-01-13 15:29:10');
INSERT INTO `gold_record` VALUES ('711736', '115212', '9940000', '14', '-300000', '2016-01-13 15:29:22');
INSERT INTO `gold_record` VALUES ('711737', '115212', '10570000', '15', '630000', '2016-01-13 15:29:37');
INSERT INTO `gold_record` VALUES ('711738', '115212', '10270000', '14', '-300000', '2016-01-13 15:29:58');
INSERT INTO `gold_record` VALUES ('711739', '115212', '10430000', '15', '160000', '2016-01-13 15:30:12');
INSERT INTO `gold_record` VALUES ('711740', '115212', '10130000', '14', '-300000', '2016-01-13 15:30:24');
INSERT INTO `gold_record` VALUES ('711741', '115212', '10450000', '15', '320000', '2016-01-13 15:30:39');
INSERT INTO `gold_record` VALUES ('711742', '115212', '10150000', '14', '-300000', '2016-01-13 15:30:51');
INSERT INTO `gold_record` VALUES ('711743', '115212', '10470000', '15', '320000', '2016-01-13 15:31:06');
INSERT INTO `gold_record` VALUES ('711744', '115212', '10170000', '14', '-300000', '2016-01-13 15:31:19');
INSERT INTO `gold_record` VALUES ('711745', '115212', '10330000', '15', '160000', '2016-01-13 15:31:33');
INSERT INTO `gold_record` VALUES ('711746', '115212', '10030000', '14', '-300000', '2016-01-13 15:31:45');
INSERT INTO `gold_record` VALUES ('711747', '115212', '10270000', '15', '240000', '2016-01-13 15:32:00');
INSERT INTO `gold_record` VALUES ('711748', '115212', '9970000', '14', '-300000', '2016-01-13 15:32:12');
INSERT INTO `gold_record` VALUES ('711749', '115212', '10050000', '15', '80000', '2016-01-13 15:32:27');
INSERT INTO `gold_record` VALUES ('711750', '115212', '9750000', '14', '-300000', '2016-01-13 15:32:40');
INSERT INTO `gold_record` VALUES ('711751', '115212', '10380000', '15', '630000', '2016-01-13 15:32:54');
INSERT INTO `gold_record` VALUES ('711752', '115212', '10080000', '14', '-300000', '2016-01-13 15:33:14');
INSERT INTO `gold_record` VALUES ('711753', '115212', '10320000', '15', '240000', '2016-01-13 15:33:29');
INSERT INTO `gold_record` VALUES ('711754', '115212', '10020000', '14', '-300000', '2016-01-13 15:33:42');
INSERT INTO `gold_record` VALUES ('711755', '115212', '10340000', '15', '320000', '2016-01-13 15:33:56');
INSERT INTO `gold_record` VALUES ('711756', '115212', '10040000', '14', '-300000', '2016-01-13 15:34:08');
INSERT INTO `gold_record` VALUES ('711757', '115212', '10360000', '15', '320000', '2016-01-13 15:34:23');
INSERT INTO `gold_record` VALUES ('711758', '115212', '10060000', '14', '-300000', '2016-01-13 15:34:35');
INSERT INTO `gold_record` VALUES ('711759', '115212', '10380000', '15', '320000', '2016-01-13 15:34:50');
INSERT INTO `gold_record` VALUES ('711760', '115212', '10080000', '14', '-300000', '2016-01-13 15:35:03');
INSERT INTO `gold_record` VALUES ('711761', '115212', '10160000', '15', '80000', '2016-01-13 15:35:17');
INSERT INTO `gold_record` VALUES ('711762', '115212', '9860000', '14', '-300000', '2016-01-13 15:35:29');
INSERT INTO `gold_record` VALUES ('711763', '115212', '10180000', '15', '320000', '2016-01-13 15:35:44');
INSERT INTO `gold_record` VALUES ('711764', '115212', '9880000', '14', '-300000', '2016-01-13 15:35:56');
INSERT INTO `gold_record` VALUES ('711765', '115212', '10510000', '15', '630000', '2016-01-13 15:36:11');
INSERT INTO `gold_record` VALUES ('711766', '115212', '10210000', '14', '-300000', '2016-01-13 15:36:31');
INSERT INTO `gold_record` VALUES ('711767', '115212', '10290000', '15', '80000', '2016-01-13 15:36:46');
INSERT INTO `gold_record` VALUES ('711768', '110109', '99893199', '14', '-20000', '2016-01-13 15:37:27');
INSERT INTO `gold_record` VALUES ('711769', '110109', '99873199', '14', '-20000', '2016-01-13 15:39:52');
INSERT INTO `gold_record` VALUES ('711770', '110109', '99863199', '14', '-10000', '2016-01-13 15:40:54');
INSERT INTO `gold_record` VALUES ('711771', '110109', '99853199', '14', '-10000', '2016-01-13 15:41:11');
INSERT INTO `gold_record` VALUES ('711772', '115212', '9700000', '14', '-300000', '2016-01-13 15:47:27');
INSERT INTO `gold_record` VALUES ('711773', '115212', '9780000', '15', '80000', '2016-01-13 15:47:33');
INSERT INTO `gold_record` VALUES ('711774', '115212', '9480000', '14', '-300000', '2016-01-13 15:47:45');
INSERT INTO `gold_record` VALUES ('711775', '115212', '9720000', '15', '240000', '2016-01-13 15:48:00');
INSERT INTO `gold_record` VALUES ('711776', '115212', '9420000', '14', '-300000', '2016-01-13 15:48:12');
INSERT INTO `gold_record` VALUES ('711777', '115212', '9500000', '15', '80000', '2016-01-13 15:48:27');
INSERT INTO `gold_record` VALUES ('711778', '115212', '9200000', '14', '-300000', '2016-01-13 15:48:40');
INSERT INTO `gold_record` VALUES ('711779', '115212', '9840000', '15', '640000', '2016-01-13 15:48:54');
INSERT INTO `gold_record` VALUES ('711780', '115212', '9540000', '14', '-300000', '2016-01-13 15:49:14');
INSERT INTO `gold_record` VALUES ('711781', '115212', '9700000', '15', '160000', '2016-01-13 15:49:29');
INSERT INTO `gold_record` VALUES ('711782', '115212', '9400000', '14', '-300000', '2016-01-13 15:49:42');
INSERT INTO `gold_record` VALUES ('711783', '115212', '9480000', '15', '80000', '2016-01-13 15:49:56');
INSERT INTO `gold_record` VALUES ('711784', '115212', '9180000', '14', '-300000', '2016-01-13 15:50:08');
INSERT INTO `gold_record` VALUES ('711785', '115212', '9500000', '15', '320000', '2016-01-13 15:50:23');
INSERT INTO `gold_record` VALUES ('711786', '115212', '9200000', '14', '-300000', '2016-01-13 15:50:35');
INSERT INTO `gold_record` VALUES ('711787', '115212', '9440000', '15', '240000', '2016-01-13 15:50:50');
INSERT INTO `gold_record` VALUES ('711788', '115212', '9140000', '14', '-300000', '2016-01-13 15:51:03');
INSERT INTO `gold_record` VALUES ('711789', '115212', '9380000', '15', '240000', '2016-01-13 15:51:17');
INSERT INTO `gold_record` VALUES ('711790', '115212', '9080000', '14', '-300000', '2016-01-13 15:51:29');
INSERT INTO `gold_record` VALUES ('711791', '115212', '9400000', '15', '320000', '2016-01-13 15:51:44');
INSERT INTO `gold_record` VALUES ('711792', '115212', '9100000', '14', '-300000', '2016-01-13 15:51:56');
INSERT INTO `gold_record` VALUES ('711793', '115212', '9420000', '15', '320000', '2016-01-13 15:52:11');
INSERT INTO `gold_record` VALUES ('711794', '115212', '9120000', '14', '-300000', '2016-01-13 15:52:24');
INSERT INTO `gold_record` VALUES ('711795', '115212', '9360000', '15', '240000', '2016-01-13 15:52:38');
INSERT INTO `gold_record` VALUES ('711796', '115212', '9060000', '14', '-300000', '2016-01-13 15:52:50');
INSERT INTO `gold_record` VALUES ('711797', '115212', '9220000', '15', '160000', '2016-01-13 15:53:05');
INSERT INTO `gold_record` VALUES ('711798', '115212', '8920000', '14', '-300000', '2016-01-13 15:53:17');
INSERT INTO `gold_record` VALUES ('711799', '115212', '9160000', '15', '240000', '2016-01-13 15:53:32');
INSERT INTO `gold_record` VALUES ('711800', '115212', '8860000', '14', '-300000', '2016-01-13 15:53:45');
INSERT INTO `gold_record` VALUES ('711801', '115212', '9020000', '15', '160000', '2016-01-13 15:53:59');
INSERT INTO `gold_record` VALUES ('711802', '115212', '8720000', '14', '-300000', '2016-01-13 15:54:11');
INSERT INTO `gold_record` VALUES ('711803', '115212', '8880000', '15', '160000', '2016-01-13 15:54:26');
INSERT INTO `gold_record` VALUES ('711804', '115212', '8580000', '14', '-300000', '2016-01-13 15:54:38');
INSERT INTO `gold_record` VALUES ('711805', '115212', '8660000', '15', '80000', '2016-01-13 15:54:53');
INSERT INTO `gold_record` VALUES ('711806', '115212', '8360000', '14', '-300000', '2016-01-13 15:55:06');
INSERT INTO `gold_record` VALUES ('711807', '115212', '8840000', '15', '480000', '2016-01-13 15:55:20');
INSERT INTO `gold_record` VALUES ('711808', '115212', '8540000', '14', '-300000', '2016-01-13 15:55:40');
INSERT INTO `gold_record` VALUES ('711809', '115212', '8780000', '15', '240000', '2016-01-13 15:55:55');
INSERT INTO `gold_record` VALUES ('711810', '115212', '8480000', '14', '-300000', '2016-01-13 15:56:08');
INSERT INTO `gold_record` VALUES ('711811', '115212', '8560000', '15', '80000', '2016-01-13 15:56:22');
INSERT INTO `gold_record` VALUES ('711812', '115212', '8260000', '14', '-300000', '2016-01-13 15:56:34');
INSERT INTO `gold_record` VALUES ('711813', '115212', '8580000', '15', '320000', '2016-01-13 15:56:49');
INSERT INTO `gold_record` VALUES ('711814', '115212', '8280000', '14', '-300000', '2016-01-13 15:57:02');
INSERT INTO `gold_record` VALUES ('711815', '115212', '8360000', '15', '80000', '2016-01-13 15:57:16');
INSERT INTO `gold_record` VALUES ('711816', '115212', '8060000', '14', '-300000', '2016-01-13 15:57:28');
INSERT INTO `gold_record` VALUES ('711817', '115212', '8380000', '15', '320000', '2016-01-13 15:57:43');
INSERT INTO `gold_record` VALUES ('711818', '115212', '8080000', '14', '-300000', '2016-01-13 15:57:55');
INSERT INTO `gold_record` VALUES ('711819', '115212', '8160000', '15', '80000', '2016-01-13 15:58:10');
INSERT INTO `gold_record` VALUES ('711820', '115212', '7860000', '14', '-300000', '2016-01-13 15:58:23');
INSERT INTO `gold_record` VALUES ('711821', '115212', '8100000', '15', '240000', '2016-01-13 15:58:37');
INSERT INTO `gold_record` VALUES ('711822', '115212', '7800000', '14', '-300000', '2016-01-13 15:58:49');
INSERT INTO `gold_record` VALUES ('711823', '110109', '99823199', '14', '-30000', '2016-01-13 15:59:03');
INSERT INTO `gold_record` VALUES ('711824', '110109', '99883199', '15', '60000', '2016-01-13 15:59:04');
INSERT INTO `gold_record` VALUES ('711825', '115212', '8040000', '15', '240000', '2016-01-13 15:59:04');
INSERT INTO `gold_record` VALUES ('711826', '115212', '7740000', '14', '-300000', '2016-01-13 15:59:16');
INSERT INTO `gold_record` VALUES ('711827', '115212', '7980000', '15', '240000', '2016-01-13 15:59:31');
INSERT INTO `gold_record` VALUES ('711828', '115212', '7680000', '14', '-300000', '2016-01-13 15:59:44');
INSERT INTO `gold_record` VALUES ('711829', '115212', '7920000', '15', '240000', '2016-01-13 15:59:58');
INSERT INTO `gold_record` VALUES ('711830', '115212', '7620000', '14', '-300000', '2016-01-13 16:00:10');
INSERT INTO `gold_record` VALUES ('711831', '115212', '7700000', '15', '80000', '2016-01-13 16:00:25');
INSERT INTO `gold_record` VALUES ('711832', '115212', '7400000', '14', '-300000', '2016-01-13 16:00:37');
INSERT INTO `gold_record` VALUES ('711833', '115212', '7560000', '15', '160000', '2016-01-13 16:00:52');
INSERT INTO `gold_record` VALUES ('711834', '115212', '7260000', '14', '-300000', '2016-01-13 16:01:05');
INSERT INTO `gold_record` VALUES ('711835', '115212', '7500000', '15', '240000', '2016-01-13 16:01:19');
INSERT INTO `gold_record` VALUES ('711836', '115212', '7200000', '14', '-300000', '2016-01-13 16:01:31');
INSERT INTO `gold_record` VALUES ('711837', '115212', '9700000', '14', '-300000', '2016-01-13 16:09:03');
INSERT INTO `gold_record` VALUES ('711838', '115212', '9780000', '15', '80000', '2016-01-13 16:09:09');
INSERT INTO `gold_record` VALUES ('711839', '115212', '9480000', '14', '-300000', '2016-01-13 16:09:21');
INSERT INTO `gold_record` VALUES ('711840', '115212', '9560000', '15', '80000', '2016-01-13 16:09:36');
INSERT INTO `gold_record` VALUES ('711841', '115212', '9260000', '14', '-300000', '2016-01-13 16:09:48');
INSERT INTO `gold_record` VALUES ('711842', '115212', '9740000', '15', '480000', '2016-01-13 16:10:03');
INSERT INTO `gold_record` VALUES ('711843', '115212', '9440000', '14', '-300000', '2016-01-13 16:10:23');
INSERT INTO `gold_record` VALUES ('711844', '115212', '9760000', '15', '320000', '2016-01-13 16:10:38');
INSERT INTO `gold_record` VALUES ('711845', '115212', '9460000', '14', '-300000', '2016-01-13 16:10:50');
INSERT INTO `gold_record` VALUES ('711846', '115212', '9540000', '15', '80000', '2016-01-13 16:11:05');
INSERT INTO `gold_record` VALUES ('711847', '115212', '9240000', '14', '-300000', '2016-01-13 16:11:18');
INSERT INTO `gold_record` VALUES ('711848', '115212', '9720000', '15', '480000', '2016-01-13 16:11:32');
INSERT INTO `gold_record` VALUES ('711849', '115212', '9420000', '14', '-300000', '2016-01-13 16:11:53');
INSERT INTO `gold_record` VALUES ('711850', '115212', '9120000', '14', '-300000', '2016-01-13 16:16:15');
INSERT INTO `gold_record` VALUES ('711851', '115212', '9200000', '15', '80000', '2016-01-13 16:16:19');
INSERT INTO `gold_record` VALUES ('711852', '115212', '8900000', '14', '-300000', '2016-01-13 16:16:31');
INSERT INTO `gold_record` VALUES ('711853', '115212', '9380000', '15', '480000', '2016-01-13 16:16:46');
INSERT INTO `gold_record` VALUES ('711854', '115212', '9080000', '14', '-300000', '2016-01-13 16:17:06');
INSERT INTO `gold_record` VALUES ('711855', '115212', '9160000', '15', '80000', '2016-01-13 16:17:21');
INSERT INTO `gold_record` VALUES ('711856', '115212', '8860000', '14', '-300000', '2016-01-13 16:17:33');
INSERT INTO `gold_record` VALUES ('711857', '115212', '9020000', '15', '160000', '2016-01-13 16:17:48');
INSERT INTO `gold_record` VALUES ('711858', '115212', '8720000', '14', '-300000', '2016-01-13 16:18:01');
INSERT INTO `gold_record` VALUES ('711859', '115212', '8800000', '15', '80000', '2016-01-13 16:18:15');
INSERT INTO `gold_record` VALUES ('711860', '115212', '8500000', '14', '-300000', '2016-01-13 16:18:27');
INSERT INTO `gold_record` VALUES ('711861', '115212', '8980000', '15', '480000', '2016-01-13 16:18:42');
INSERT INTO `gold_record` VALUES ('711862', '115212', '8680000', '14', '-300000', '2016-01-13 16:19:02');
INSERT INTO `gold_record` VALUES ('711863', '115212', '8920000', '15', '240000', '2016-01-13 16:19:17');
INSERT INTO `gold_record` VALUES ('711864', '115212', '8620000', '14', '-300000', '2016-01-13 16:19:29');
INSERT INTO `gold_record` VALUES ('711865', '115212', '8940000', '15', '320000', '2016-01-13 16:19:44');
INSERT INTO `gold_record` VALUES ('711866', '115212', '8640000', '14', '-300000', '2016-01-13 16:19:57');
INSERT INTO `gold_record` VALUES ('711867', '115212', '8880000', '15', '240000', '2016-01-13 16:20:11');
INSERT INTO `gold_record` VALUES ('711868', '115212', '8580000', '14', '-300000', '2016-01-13 16:20:23');
INSERT INTO `gold_record` VALUES ('711869', '115212', '8660000', '15', '80000', '2016-01-13 16:20:38');
INSERT INTO `gold_record` VALUES ('711870', '115212', '8360000', '14', '-300000', '2016-01-13 16:20:50');
INSERT INTO `gold_record` VALUES ('711871', '115212', '8600000', '15', '240000', '2016-01-13 16:21:05');
INSERT INTO `gold_record` VALUES ('711872', '115212', '8300000', '14', '-300000', '2016-01-13 16:21:18');
INSERT INTO `gold_record` VALUES ('711873', '115212', '8540000', '15', '240000', '2016-01-13 16:21:32');
INSERT INTO `gold_record` VALUES ('711874', '115212', '8240000', '14', '-300000', '2016-01-13 16:21:44');
INSERT INTO `gold_record` VALUES ('711875', '115212', '9120000', '14', '-300000', '2016-01-13 16:25:44');
INSERT INTO `gold_record` VALUES ('711876', '115212', '9280000', '15', '160000', '2016-01-13 16:25:50');
INSERT INTO `gold_record` VALUES ('711877', '115212', '8980000', '14', '-300000', '2016-01-13 16:26:02');
INSERT INTO `gold_record` VALUES ('711878', '115212', '9220000', '15', '240000', '2016-01-13 16:26:17');
INSERT INTO `gold_record` VALUES ('711879', '115212', '8920000', '14', '-300000', '2016-01-13 16:26:29');
INSERT INTO `gold_record` VALUES ('711880', '115212', '9240000', '15', '320000', '2016-01-13 16:26:44');
INSERT INTO `gold_record` VALUES ('711881', '115212', '8940000', '14', '-300000', '2016-01-13 16:26:57');
INSERT INTO `gold_record` VALUES ('711882', '115212', '9100000', '15', '160000', '2016-01-13 16:27:11');
INSERT INTO `gold_record` VALUES ('711883', '115212', '8800000', '14', '-300000', '2016-01-13 16:27:23');
INSERT INTO `gold_record` VALUES ('711884', '115212', '9040000', '15', '240000', '2016-01-13 16:27:38');
INSERT INTO `gold_record` VALUES ('711885', '115212', '8740000', '14', '-300000', '2016-01-13 16:27:50');
INSERT INTO `gold_record` VALUES ('711886', '115212', '8900000', '15', '160000', '2016-01-13 16:28:05');
INSERT INTO `gold_record` VALUES ('711887', '115212', '8600000', '14', '-300000', '2016-01-13 16:28:18');
INSERT INTO `gold_record` VALUES ('711888', '115212', '9120000', '14', '-300000', '2016-01-13 16:31:22');
INSERT INTO `gold_record` VALUES ('711889', '115212', '9200000', '15', '80000', '2016-01-13 16:31:25');
INSERT INTO `gold_record` VALUES ('711890', '115212', '8900000', '14', '-300000', '2016-01-13 16:31:37');
INSERT INTO `gold_record` VALUES ('711891', '115212', '8980000', '15', '80000', '2016-01-13 16:31:52');
INSERT INTO `gold_record` VALUES ('711892', '115212', '8680000', '14', '-300000', '2016-01-13 16:32:04');
INSERT INTO `gold_record` VALUES ('711893', '115212', '8760000', '15', '80000', '2016-01-13 16:32:19');
INSERT INTO `gold_record` VALUES ('711894', '115212', '8460000', '14', '-300000', '2016-01-13 16:32:32');
INSERT INTO `gold_record` VALUES ('711895', '115212', '8620000', '15', '160000', '2016-01-13 16:32:46');
INSERT INTO `gold_record` VALUES ('711896', '115212', '8320000', '14', '-300000', '2016-01-13 16:32:58');
INSERT INTO `gold_record` VALUES ('711897', '115212', '8400000', '15', '80000', '2016-01-13 16:33:13');
INSERT INTO `gold_record` VALUES ('711898', '115212', '8100000', '14', '-300000', '2016-01-13 16:33:26');
INSERT INTO `gold_record` VALUES ('711899', '115212', '8260000', '15', '160000', '2016-01-13 16:33:40');
INSERT INTO `gold_record` VALUES ('711900', '115212', '7960000', '14', '-300000', '2016-01-13 16:33:52');
INSERT INTO `gold_record` VALUES ('711901', '115212', '8520000', '15', '560000', '2016-01-13 16:34:07');
INSERT INTO `gold_record` VALUES ('711902', '115212', '8220000', '14', '-300000', '2016-01-13 16:34:28');
INSERT INTO `gold_record` VALUES ('711903', '115212', '8540000', '15', '320000', '2016-01-13 16:34:42');
INSERT INTO `gold_record` VALUES ('711904', '115212', '8240000', '14', '-300000', '2016-01-13 16:34:54');
INSERT INTO `gold_record` VALUES ('711905', '115212', '8560000', '15', '320000', '2016-01-13 16:35:09');
INSERT INTO `gold_record` VALUES ('711906', '115212', '8260000', '14', '-300000', '2016-01-13 16:35:21');
INSERT INTO `gold_record` VALUES ('711907', '115212', '8580000', '15', '320000', '2016-01-13 16:35:36');
INSERT INTO `gold_record` VALUES ('711908', '115212', '8280000', '14', '-300000', '2016-01-13 16:35:49');
INSERT INTO `gold_record` VALUES ('711909', '115212', '8440000', '15', '160000', '2016-01-13 16:36:03');
INSERT INTO `gold_record` VALUES ('711910', '115212', '8140000', '14', '-300000', '2016-01-13 16:36:15');
INSERT INTO `gold_record` VALUES ('711911', '115212', '8380000', '15', '240000', '2016-01-13 16:36:30');
INSERT INTO `gold_record` VALUES ('711912', '115212', '8080000', '14', '-300000', '2016-01-13 16:36:42');
INSERT INTO `gold_record` VALUES ('711913', '115212', '8160000', '15', '80000', '2016-01-13 16:36:57');
INSERT INTO `gold_record` VALUES ('711914', '115212', '7860000', '14', '-300000', '2016-01-13 16:37:10');
INSERT INTO `gold_record` VALUES ('711915', '115212', '8100000', '15', '240000', '2016-01-13 16:37:24');
INSERT INTO `gold_record` VALUES ('711916', '115212', '7800000', '14', '-300000', '2016-01-13 16:37:36');
INSERT INTO `gold_record` VALUES ('711917', '115212', '8040000', '15', '240000', '2016-01-13 16:37:51');
INSERT INTO `gold_record` VALUES ('711918', '115212', '7740000', '14', '-300000', '2016-01-13 16:38:04');
INSERT INTO `gold_record` VALUES ('711919', '115212', '8060000', '15', '320000', '2016-01-13 16:38:18');
INSERT INTO `gold_record` VALUES ('711920', '115212', '7760000', '14', '-300000', '2016-01-13 16:38:30');
INSERT INTO `gold_record` VALUES ('711921', '115212', '7840000', '15', '80000', '2016-01-13 16:38:45');
INSERT INTO `gold_record` VALUES ('711922', '115212', '7540000', '14', '-300000', '2016-01-13 16:38:57');
INSERT INTO `gold_record` VALUES ('711923', '115212', '7860000', '15', '320000', '2016-01-13 16:39:12');
INSERT INTO `gold_record` VALUES ('711924', '115212', '7560000', '14', '-300000', '2016-01-13 16:39:25');
INSERT INTO `gold_record` VALUES ('711925', '115212', '7640000', '15', '80000', '2016-01-13 16:39:39');
INSERT INTO `gold_record` VALUES ('711926', '115212', '7340000', '14', '-300000', '2016-01-13 16:39:51');
INSERT INTO `gold_record` VALUES ('711927', '115212', '7580000', '15', '240000', '2016-01-13 16:40:06');
INSERT INTO `gold_record` VALUES ('711928', '115212', '7280000', '14', '-300000', '2016-01-13 16:40:18');
INSERT INTO `gold_record` VALUES ('711929', '115212', '14417000', '15', '7137000', '2016-01-13 16:40:33');
INSERT INTO `gold_record` VALUES ('711930', '115212', '14117000', '14', '-300000', '2016-01-13 16:40:53');
INSERT INTO `gold_record` VALUES ('711931', '115212', '14437000', '15', '320000', '2016-01-13 16:41:08');
INSERT INTO `gold_record` VALUES ('711932', '115212', '14137000', '14', '-300000', '2016-01-13 16:41:20');
INSERT INTO `gold_record` VALUES ('711933', '115212', '14377000', '15', '240000', '2016-01-13 16:41:35');
INSERT INTO `gold_record` VALUES ('711934', '115212', '14077000', '14', '-300000', '2016-01-13 16:41:48');
INSERT INTO `gold_record` VALUES ('711935', '115212', '14317000', '15', '240000', '2016-01-13 16:42:02');
INSERT INTO `gold_record` VALUES ('711936', '115212', '14017000', '14', '-300000', '2016-01-13 16:42:14');
INSERT INTO `gold_record` VALUES ('711937', '115212', '14337000', '15', '320000', '2016-01-13 16:42:29');
INSERT INTO `gold_record` VALUES ('711938', '115212', '14037000', '14', '-300000', '2016-01-13 16:42:41');
INSERT INTO `gold_record` VALUES ('711939', '115212', '14277000', '15', '240000', '2016-01-13 16:42:56');
INSERT INTO `gold_record` VALUES ('711940', '115212', '13977000', '14', '-300000', '2016-01-13 16:43:09');
INSERT INTO `gold_record` VALUES ('711941', '115212', '14057000', '15', '80000', '2016-01-13 16:43:23');
INSERT INTO `gold_record` VALUES ('711942', '115212', '13757000', '14', '-300000', '2016-01-13 16:43:35');
INSERT INTO `gold_record` VALUES ('711943', '115212', '14387000', '15', '630000', '2016-01-13 16:43:50');
INSERT INTO `gold_record` VALUES ('711944', '115212', '14087000', '14', '-300000', '2016-01-13 16:44:11');
INSERT INTO `gold_record` VALUES ('711945', '115212', '14407000', '15', '320000', '2016-01-13 16:44:25');
INSERT INTO `gold_record` VALUES ('711946', '115212', '14107000', '14', '-300000', '2016-01-13 16:44:37');
INSERT INTO `gold_record` VALUES ('711947', '115212', '14347000', '15', '240000', '2016-01-13 16:44:52');
INSERT INTO `gold_record` VALUES ('711948', '115212', '14047000', '14', '-300000', '2016-01-13 16:45:05');
INSERT INTO `gold_record` VALUES ('711949', '115212', '14127000', '15', '80000', '2016-01-13 16:45:19');
INSERT INTO `gold_record` VALUES ('711950', '115212', '13827000', '14', '-300000', '2016-01-13 16:45:31');
INSERT INTO `gold_record` VALUES ('711951', '115212', '14067000', '15', '240000', '2016-01-13 16:45:46');
INSERT INTO `gold_record` VALUES ('711952', '115212', '13767000', '14', '-300000', '2016-01-13 16:45:58');
INSERT INTO `gold_record` VALUES ('711953', '115212', '13847000', '15', '80000', '2016-01-13 16:46:13');
INSERT INTO `gold_record` VALUES ('711954', '115212', '13547000', '14', '-300000', '2016-01-13 16:46:26');
INSERT INTO `gold_record` VALUES ('711955', '115212', '13867000', '15', '320000', '2016-01-13 16:46:40');
INSERT INTO `gold_record` VALUES ('711956', '115212', '13567000', '14', '-300000', '2016-01-13 16:46:52');
INSERT INTO `gold_record` VALUES ('711957', '115212', '13887000', '15', '320000', '2016-01-13 16:47:07');
INSERT INTO `gold_record` VALUES ('711958', '115212', '13587000', '14', '-300000', '2016-01-13 16:47:19');
INSERT INTO `gold_record` VALUES ('711959', '115212', '13747000', '15', '160000', '2016-01-13 16:47:34');
INSERT INTO `gold_record` VALUES ('711960', '115212', '13447000', '14', '-300000', '2016-01-13 16:47:47');
INSERT INTO `gold_record` VALUES ('711961', '115212', '13687000', '15', '240000', '2016-01-13 16:48:01');
INSERT INTO `gold_record` VALUES ('711962', '115212', '13387000', '14', '-300000', '2016-01-13 16:48:13');
INSERT INTO `gold_record` VALUES ('711963', '115212', '13627000', '15', '240000', '2016-01-13 16:48:28');
INSERT INTO `gold_record` VALUES ('711964', '115212', '13327000', '14', '-300000', '2016-01-13 16:48:40');
INSERT INTO `gold_record` VALUES ('711965', '115212', '13407000', '15', '80000', '2016-01-13 16:48:55');
INSERT INTO `gold_record` VALUES ('711966', '115212', '13107000', '14', '-300000', '2016-01-13 16:49:08');
INSERT INTO `gold_record` VALUES ('711967', '115212', '13587000', '15', '480000', '2016-01-13 16:49:22');
INSERT INTO `gold_record` VALUES ('711968', '115212', '13287000', '14', '-300000', '2016-01-13 16:49:42');
INSERT INTO `gold_record` VALUES ('711969', '115212', '13367000', '15', '80000', '2016-01-13 16:49:57');
INSERT INTO `gold_record` VALUES ('711970', '115212', '13067000', '14', '-300000', '2016-01-13 16:50:10');
INSERT INTO `gold_record` VALUES ('711971', '115212', '14327000', '15', '1260000', '2016-01-13 16:50:24');
INSERT INTO `gold_record` VALUES ('711972', '115212', '14027000', '14', '-300000', '2016-01-13 16:50:45');
INSERT INTO `gold_record` VALUES ('711973', '115212', '14187000', '15', '160000', '2016-01-13 16:50:59');
INSERT INTO `gold_record` VALUES ('711974', '115212', '13887000', '14', '-300000', '2016-01-13 16:51:11');
INSERT INTO `gold_record` VALUES ('711975', '115212', '14207000', '15', '320000', '2016-01-13 16:51:26');
INSERT INTO `gold_record` VALUES ('711976', '115212', '13907000', '14', '-300000', '2016-01-13 16:51:38');
INSERT INTO `gold_record` VALUES ('711977', '115212', '14227000', '15', '320000', '2016-01-13 16:51:53');
INSERT INTO `gold_record` VALUES ('711978', '115212', '13927000', '14', '-300000', '2016-01-13 16:52:06');
INSERT INTO `gold_record` VALUES ('711979', '115212', '14167000', '15', '240000', '2016-01-13 16:52:20');
INSERT INTO `gold_record` VALUES ('711980', '115212', '13867000', '14', '-300000', '2016-01-13 16:52:32');
INSERT INTO `gold_record` VALUES ('711981', '115212', '14027000', '15', '160000', '2016-01-13 16:52:47');
INSERT INTO `gold_record` VALUES ('711982', '115212', '13727000', '14', '-300000', '2016-01-13 16:52:59');
INSERT INTO `gold_record` VALUES ('711983', '115212', '14207000', '15', '480000', '2016-01-13 16:53:14');
INSERT INTO `gold_record` VALUES ('711984', '115212', '13907000', '14', '-300000', '2016-01-13 16:53:34');
INSERT INTO `gold_record` VALUES ('711985', '115212', '14537000', '15', '630000', '2016-01-13 16:53:49');
INSERT INTO `gold_record` VALUES ('711986', '115212', '14237000', '14', '-300000', '2016-01-13 16:54:10');
INSERT INTO `gold_record` VALUES ('711987', '115212', '14557000', '15', '320000', '2016-01-13 16:54:24');
INSERT INTO `gold_record` VALUES ('711988', '115212', '14257000', '14', '-300000', '2016-01-13 16:54:36');
INSERT INTO `gold_record` VALUES ('711989', '115212', '14337000', '15', '80000', '2016-01-13 16:54:51');
INSERT INTO `gold_record` VALUES ('711990', '115212', '14037000', '14', '-300000', '2016-01-13 16:55:03');
INSERT INTO `gold_record` VALUES ('711991', '115212', '14277000', '15', '240000', '2016-01-13 16:55:18');
INSERT INTO `gold_record` VALUES ('711992', '115212', '13977000', '14', '-300000', '2016-01-13 16:55:31');
INSERT INTO `gold_record` VALUES ('711993', '115212', '14297000', '15', '320000', '2016-01-13 16:55:45');
INSERT INTO `gold_record` VALUES ('711994', '115212', '13997000', '14', '-300000', '2016-01-13 16:55:57');
INSERT INTO `gold_record` VALUES ('711995', '115212', '14317000', '15', '320000', '2016-01-13 16:56:12');
INSERT INTO `gold_record` VALUES ('711996', '115212', '14017000', '14', '-300000', '2016-01-13 16:56:24');
INSERT INTO `gold_record` VALUES ('711997', '115212', '14097000', '15', '80000', '2016-01-13 16:56:39');
INSERT INTO `gold_record` VALUES ('711998', '115212', '13797000', '14', '-300000', '2016-01-13 16:56:52');
INSERT INTO `gold_record` VALUES ('711999', '115212', '14117000', '15', '320000', '2016-01-13 16:57:06');
INSERT INTO `gold_record` VALUES ('712000', '115212', '13817000', '14', '-300000', '2016-01-13 16:57:18');
INSERT INTO `gold_record` VALUES ('712001', '115212', '13897000', '15', '80000', '2016-01-13 16:57:33');
INSERT INTO `gold_record` VALUES ('712002', '115212', '13597000', '14', '-300000', '2016-01-13 16:57:45');
INSERT INTO `gold_record` VALUES ('712003', '115212', '13757000', '15', '160000', '2016-01-13 16:58:00');
INSERT INTO `gold_record` VALUES ('712004', '115212', '13457000', '14', '-300000', '2016-01-13 16:58:12');
INSERT INTO `gold_record` VALUES ('712005', '115212', '13697000', '15', '240000', '2016-01-13 16:58:27');
INSERT INTO `gold_record` VALUES ('712006', '115212', '13397000', '14', '-300000', '2016-01-13 16:58:39');
INSERT INTO `gold_record` VALUES ('712007', '115212', '13557000', '15', '160000', '2016-01-13 16:58:54');
INSERT INTO `gold_record` VALUES ('712008', '115212', '13257000', '14', '-300000', '2016-01-13 16:59:07');
INSERT INTO `gold_record` VALUES ('712009', '115212', '13337000', '15', '80000', '2016-01-13 16:59:21');
INSERT INTO `gold_record` VALUES ('712010', '115212', '13037000', '14', '-300000', '2016-01-13 16:59:33');
INSERT INTO `gold_record` VALUES ('712011', '115212', '13597000', '15', '560000', '2016-01-13 16:59:48');
INSERT INTO `gold_record` VALUES ('712012', '115212', '13297000', '14', '-300000', '2016-01-13 17:00:09');
INSERT INTO `gold_record` VALUES ('712013', '115212', '13457000', '15', '160000', '2016-01-13 17:00:23');
INSERT INTO `gold_record` VALUES ('712014', '115212', '13157000', '14', '-300000', '2016-01-13 17:00:35');
INSERT INTO `gold_record` VALUES ('712015', '115212', '13317000', '15', '160000', '2016-01-13 17:00:50');
INSERT INTO `gold_record` VALUES ('712016', '115212', '13017000', '14', '-300000', '2016-01-13 17:01:02');
INSERT INTO `gold_record` VALUES ('712017', '115212', '13177000', '15', '160000', '2016-01-13 17:01:17');
INSERT INTO `gold_record` VALUES ('712018', '115212', '12877000', '14', '-300000', '2016-01-13 17:01:30');
INSERT INTO `gold_record` VALUES ('712019', '115212', '13117000', '15', '240000', '2016-01-13 17:01:44');
INSERT INTO `gold_record` VALUES ('712020', '115212', '12817000', '14', '-300000', '2016-01-13 17:01:56');
INSERT INTO `gold_record` VALUES ('712021', '115212', '13057000', '15', '240000', '2016-01-13 17:02:11');
INSERT INTO `gold_record` VALUES ('712022', '115212', '12757000', '14', '-300000', '2016-01-13 17:02:23');
INSERT INTO `gold_record` VALUES ('712023', '115212', '12837000', '15', '80000', '2016-01-13 17:02:38');
INSERT INTO `gold_record` VALUES ('712024', '115212', '12537000', '14', '-300000', '2016-01-13 17:02:51');
INSERT INTO `gold_record` VALUES ('712025', '115212', '12857000', '15', '320000', '2016-01-13 17:03:05');
INSERT INTO `gold_record` VALUES ('712026', '115212', '12557000', '14', '-300000', '2016-01-13 17:03:17');
INSERT INTO `gold_record` VALUES ('712027', '115212', '14446999', '15', '1889999', '2016-01-13 17:03:32');
INSERT INTO `gold_record` VALUES ('712028', '115212', '14146999', '14', '-300000', '2016-01-13 17:03:53');
INSERT INTO `gold_record` VALUES ('712029', '115212', '14386999', '15', '240000', '2016-01-13 17:04:07');
INSERT INTO `gold_record` VALUES ('712030', '115212', '14086999', '14', '-300000', '2016-01-13 17:06:06');
INSERT INTO `gold_record` VALUES ('712031', '115212', '14246999', '15', '160000', '2016-01-13 17:06:12');
INSERT INTO `gold_record` VALUES ('712032', '115212', '13946999', '14', '-300000', '2016-01-13 17:06:24');
INSERT INTO `gold_record` VALUES ('712033', '115212', '14266999', '15', '320000', '2016-01-13 17:06:39');
INSERT INTO `gold_record` VALUES ('712034', '115212', '13966999', '14', '-300000', '2016-01-13 17:06:52');
INSERT INTO `gold_record` VALUES ('712035', '115212', '14046999', '15', '80000', '2016-01-13 17:07:06');
INSERT INTO `gold_record` VALUES ('712036', '115212', '13746999', '14', '-300000', '2016-01-13 17:07:18');
INSERT INTO `gold_record` VALUES ('712037', '115212', '13826999', '15', '80000', '2016-01-13 17:07:33');
INSERT INTO `gold_record` VALUES ('712038', '115212', '13526999', '14', '-300000', '2016-01-13 17:07:45');
INSERT INTO `gold_record` VALUES ('712039', '115212', '13846999', '15', '320000', '2016-01-13 17:08:00');
INSERT INTO `gold_record` VALUES ('712040', '115212', '13546999', '14', '-300000', '2016-01-13 17:08:13');
INSERT INTO `gold_record` VALUES ('712041', '115212', '13706999', '15', '160000', '2016-01-13 17:08:27');
INSERT INTO `gold_record` VALUES ('712042', '115212', '13406999', '14', '-300000', '2016-01-13 17:08:39');
INSERT INTO `gold_record` VALUES ('712043', '115212', '13966999', '15', '560000', '2016-01-13 17:08:54');
INSERT INTO `gold_record` VALUES ('712044', '115212', '13666999', '14', '-300000', '2016-01-13 17:09:14');
INSERT INTO `gold_record` VALUES ('712045', '115212', '13906999', '15', '240000', '2016-01-13 17:09:29');
INSERT INTO `gold_record` VALUES ('712046', '115212', '13606999', '14', '-300000', '2016-01-13 17:09:41');
INSERT INTO `gold_record` VALUES ('712047', '115212', '13686999', '15', '80000', '2016-01-13 17:09:56');
INSERT INTO `gold_record` VALUES ('712048', '115212', '13386999', '14', '-300000', '2016-01-13 17:10:09');
INSERT INTO `gold_record` VALUES ('712049', '115212', '13706999', '15', '320000', '2016-01-13 17:10:23');
INSERT INTO `gold_record` VALUES ('712050', '115212', '13406999', '14', '-300000', '2016-01-13 17:10:36');
INSERT INTO `gold_record` VALUES ('712051', '115212', '13646999', '15', '240000', '2016-01-13 17:10:50');
INSERT INTO `gold_record` VALUES ('712052', '115212', '13346999', '14', '-300000', '2016-01-13 17:11:02');
INSERT INTO `gold_record` VALUES ('712053', '115212', '13586999', '15', '240000', '2016-01-13 17:11:17');
INSERT INTO `gold_record` VALUES ('712054', '115212', '13286999', '14', '-300000', '2016-01-13 17:11:30');
INSERT INTO `gold_record` VALUES ('712055', '115212', '13366999', '15', '80000', '2016-01-13 17:11:44');
INSERT INTO `gold_record` VALUES ('712056', '115212', '13066999', '14', '-300000', '2016-01-13 17:11:56');
INSERT INTO `gold_record` VALUES ('712057', '115212', '13386999', '15', '320000', '2016-01-13 17:12:11');
INSERT INTO `gold_record` VALUES ('712058', '115212', '13086999', '14', '-300000', '2016-01-13 17:12:23');
INSERT INTO `gold_record` VALUES ('712059', '115212', '13326999', '15', '240000', '2016-01-13 17:12:38');
INSERT INTO `gold_record` VALUES ('712060', '115212', '13026999', '14', '-300000', '2016-01-13 17:12:51');
INSERT INTO `gold_record` VALUES ('712061', '115212', '13106999', '15', '80000', '2016-01-13 17:13:05');
INSERT INTO `gold_record` VALUES ('712062', '115212', '12806999', '14', '-300000', '2016-01-13 17:13:17');
INSERT INTO `gold_record` VALUES ('712063', '115212', '12966999', '15', '160000', '2016-01-13 17:13:32');
INSERT INTO `gold_record` VALUES ('712064', '115212', '12666999', '14', '-300000', '2016-01-13 17:13:44');
INSERT INTO `gold_record` VALUES ('712065', '115212', '12746999', '15', '80000', '2016-01-13 17:13:59');
INSERT INTO `gold_record` VALUES ('712066', '115212', '12446999', '14', '-300000', '2016-01-13 17:14:12');
INSERT INTO `gold_record` VALUES ('712067', '115212', '12606999', '15', '160000', '2016-01-13 17:14:26');
INSERT INTO `gold_record` VALUES ('712068', '115212', '12306999', '14', '-300000', '2016-01-13 17:14:38');
INSERT INTO `gold_record` VALUES ('712069', '115212', '12386999', '15', '80000', '2016-01-13 17:14:53');
INSERT INTO `gold_record` VALUES ('712070', '115212', '12086999', '14', '-300000', '2016-01-13 17:15:05');
INSERT INTO `gold_record` VALUES ('712071', '115212', '12566999', '15', '480000', '2016-01-13 17:15:20');
INSERT INTO `gold_record` VALUES ('712072', '115212', '12266999', '14', '-300000', '2016-01-13 17:15:40');
INSERT INTO `gold_record` VALUES ('712073', '115212', '12346999', '15', '80000', '2016-01-13 17:15:55');
INSERT INTO `gold_record` VALUES ('712074', '115212', '12046999', '14', '-300000', '2016-01-13 17:16:07');
INSERT INTO `gold_record` VALUES ('712075', '115212', '12526999', '15', '480000', '2016-01-13 17:16:22');
INSERT INTO `gold_record` VALUES ('712076', '115212', '12226999', '14', '-300000', '2016-01-13 17:16:42');
INSERT INTO `gold_record` VALUES ('712077', '115212', '12466999', '15', '240000', '2016-01-13 17:16:57');
INSERT INTO `gold_record` VALUES ('712078', '115212', '12166999', '14', '-300000', '2016-01-13 17:17:09');
INSERT INTO `gold_record` VALUES ('712079', '115212', '12326999', '15', '160000', '2016-01-13 17:17:24');
INSERT INTO `gold_record` VALUES ('712080', '115212', '12026999', '14', '-300000', '2016-01-13 17:17:37');
INSERT INTO `gold_record` VALUES ('712081', '115212', '12266999', '15', '240000', '2016-01-13 17:17:51');
INSERT INTO `gold_record` VALUES ('712082', '115212', '11966999', '14', '-300000', '2016-01-13 17:18:03');
INSERT INTO `gold_record` VALUES ('712083', '115212', '12206999', '15', '240000', '2016-01-13 17:18:18');
INSERT INTO `gold_record` VALUES ('712084', '115212', '11906999', '14', '-300000', '2016-01-13 17:18:30');
INSERT INTO `gold_record` VALUES ('712085', '115212', '14516999', '15', '2610000', '2016-01-13 17:18:45');
INSERT INTO `gold_record` VALUES ('712086', '115212', '14216999', '14', '-300000', '2016-01-13 17:19:05');
INSERT INTO `gold_record` VALUES ('712087', '115212', '14536999', '15', '320000', '2016-01-13 17:19:20');
INSERT INTO `gold_record` VALUES ('712088', '115212', '14236999', '14', '-300000', '2016-01-13 17:19:32');
INSERT INTO `gold_record` VALUES ('712089', '115212', '14396999', '15', '160000', '2016-01-13 17:19:47');
INSERT INTO `gold_record` VALUES ('712090', '115212', '14399499', '9', '2500', '2016-01-13 17:30:28');
INSERT INTO `gold_record` VALUES ('712091', '115212', '14399699', '8', '200', '2016-01-13 17:48:10');
INSERT INTO `gold_record` VALUES ('712092', '115235', '4000', '9', '1000', '2016-01-14 10:26:42');
INSERT INTO `gold_record` VALUES ('712093', '115212', '14099699', '14', '-300000', '2016-01-14 10:36:15');
INSERT INTO `gold_record` VALUES ('712094', '115212', '14419699', '15', '320000', '2016-01-14 10:36:17');
INSERT INTO `gold_record` VALUES ('712095', '115212', '14119699', '14', '-300000', '2016-01-14 10:36:31');
INSERT INTO `gold_record` VALUES ('712096', '115212', '14359699', '15', '240000', '2016-01-14 10:36:44');
INSERT INTO `gold_record` VALUES ('712097', '115212', '14059699', '14', '-300000', '2016-01-14 10:36:59');
INSERT INTO `gold_record` VALUES ('712098', '115212', '14299699', '15', '240000', '2016-01-14 10:37:11');
INSERT INTO `gold_record` VALUES ('712099', '115212', '13999699', '14', '-300000', '2016-01-14 10:37:23');
INSERT INTO `gold_record` VALUES ('712100', '115212', '14079699', '15', '80000', '2016-01-14 10:37:38');
INSERT INTO `gold_record` VALUES ('712101', '115212', '13779699', '14', '-300000', '2016-01-14 10:37:51');
INSERT INTO `gold_record` VALUES ('712102', '115212', '14019699', '15', '240000', '2016-01-14 10:38:05');
INSERT INTO `gold_record` VALUES ('712103', '115212', '13719699', '14', '-300000', '2016-01-14 10:38:17');
INSERT INTO `gold_record` VALUES ('712104', '115212', '14439699', '15', '720000', '2016-01-14 10:38:32');
INSERT INTO `gold_record` VALUES ('712105', '115235', '4000', '9', '1000', '2016-01-14 10:38:33');
INSERT INTO `gold_record` VALUES ('712106', '115212', '14139699', '14', '-300000', '2016-01-14 10:38:53');
INSERT INTO `gold_record` VALUES ('712107', '115212', '14459699', '15', '320000', '2016-01-14 10:39:07');
INSERT INTO `gold_record` VALUES ('712108', '115212', '14159699', '14', '-300000', '2016-01-14 10:39:19');
INSERT INTO `gold_record` VALUES ('712109', '115212', '14239699', '15', '80000', '2016-01-14 10:39:34');
INSERT INTO `gold_record` VALUES ('712110', '115212', '13939699', '14', '-300000', '2016-01-14 10:39:46');
INSERT INTO `gold_record` VALUES ('712111', '115212', '14259699', '15', '320000', '2016-01-14 10:40:01');
INSERT INTO `gold_record` VALUES ('712112', '115212', '13959699', '14', '-300000', '2016-01-14 10:40:14');
INSERT INTO `gold_record` VALUES ('712113', '115212', '14279699', '15', '320000', '2016-01-14 10:40:28');
INSERT INTO `gold_record` VALUES ('712114', '115212', '14199699', '14', '-80000', '2016-01-14 10:41:19');
INSERT INTO `gold_record` VALUES ('712115', '115212', '14259699', '15', '60000', '2016-01-14 10:41:22');
INSERT INTO `gold_record` VALUES ('712116', '115235', '4200', '8', '200', '2016-01-14 10:41:56');
INSERT INTO `gold_record` VALUES ('712117', '115212', '14199699', '14', '-80000', '2016-01-14 10:42:40');
INSERT INTO `gold_record` VALUES ('712118', '115212', '14319699', '15', '120000', '2016-01-14 10:42:53');
INSERT INTO `gold_record` VALUES ('712119', '115212', '14239699', '14', '-80000', '2016-01-14 10:43:16');
INSERT INTO `gold_record` VALUES ('712120', '115212', '14279699', '15', '40000', '2016-01-14 10:43:28');
INSERT INTO `gold_record` VALUES ('712121', '115212', '14199699', '14', '-80000', '2016-01-14 10:43:40');
INSERT INTO `gold_record` VALUES ('712122', '115212', '14219699', '15', '20000', '2016-01-14 10:43:55');
INSERT INTO `gold_record` VALUES ('712123', '115212', '14139699', '14', '-80000', '2016-01-14 10:44:08');
INSERT INTO `gold_record` VALUES ('712124', '115212', '14259699', '15', '120000', '2016-01-14 10:44:22');
INSERT INTO `gold_record` VALUES ('712125', '115212', '14179699', '14', '-80000', '2016-01-14 10:44:42');
INSERT INTO `gold_record` VALUES ('712126', '115212', '14199699', '15', '20000', '2016-01-14 10:44:57');
INSERT INTO `gold_record` VALUES ('712127', '115212', '14119699', '14', '-80000', '2016-01-14 10:45:10');
INSERT INTO `gold_record` VALUES ('712128', '115212', '14159699', '15', '40000', '2016-01-14 10:45:24');
INSERT INTO `gold_record` VALUES ('712129', '115212', '14079699', '14', '-80000', '2016-01-14 10:45:36');
INSERT INTO `gold_record` VALUES ('712130', '115212', '14199699', '15', '120000', '2016-01-14 10:45:51');
INSERT INTO `gold_record` VALUES ('712131', '115212', '14119699', '14', '-80000', '2016-01-14 10:46:12');
INSERT INTO `gold_record` VALUES ('712132', '115191', '80026079', '14', '-290000', '2016-01-14 11:26:37');
INSERT INTO `gold_record` VALUES ('712133', '115191', '80106079', '15', '80000', '2016-01-14 11:26:42');
INSERT INTO `gold_record` VALUES ('712134', '115191', '79996079', '14', '-110000', '2016-01-14 11:27:01');
INSERT INTO `gold_record` VALUES ('712135', '115191', '79886079', '14', '-110000', '2016-01-14 11:27:36');
INSERT INTO `gold_record` VALUES ('712136', '115191', '79756079', '14', '-130000', '2016-01-14 11:28:14');
INSERT INTO `gold_record` VALUES ('712137', '115191', '79676079', '14', '-80000', '2016-01-14 11:28:33');
INSERT INTO `gold_record` VALUES ('712138', '115191', '79836079', '15', '160000', '2016-01-14 11:28:46');
INSERT INTO `gold_record` VALUES ('712139', '115191', '79796079', '14', '-40000', '2016-01-14 11:29:18');
INSERT INTO `gold_record` VALUES ('712140', '115191', '79766079', '14', '-30000', '2016-01-14 11:29:45');
INSERT INTO `gold_record` VALUES ('712141', '115191', '79946079', '15', '180000', '2016-01-14 11:29:48');
INSERT INTO `gold_record` VALUES ('712142', '115191', '79916079', '14', '-30000', '2016-01-14 11:30:02');
INSERT INTO `gold_record` VALUES ('712143', '115191', '79866079', '14', '-50000', '2016-01-14 11:30:29');
INSERT INTO `gold_record` VALUES ('712144', '115191', '79816079', '14', '-50000', '2016-01-14 11:30:57');
INSERT INTO `gold_record` VALUES ('712145', '115191', '79766079', '14', '-50000', '2016-01-14 11:31:32');
INSERT INTO `gold_record` VALUES ('712146', '115191', '79966079', '15', '200000', '2016-01-14 11:31:36');
INSERT INTO `gold_record` VALUES ('712147', '115191', '79926079', '14', '-40000', '2016-01-14 11:32:07');
INSERT INTO `gold_record` VALUES ('712148', '115191', '79856079', '14', '-70000', '2016-01-14 11:32:58');
INSERT INTO `gold_record` VALUES ('712149', '115191', '79756079', '14', '-100000', '2016-01-14 11:33:26');
INSERT INTO `gold_record` VALUES ('712150', '115191', '79726079', '14', '-30000', '2016-01-14 11:34:32');
INSERT INTO `gold_record` VALUES ('712151', '115191', '79616079', '14', '-110000', '2016-01-14 11:34:54');
INSERT INTO `gold_record` VALUES ('712152', '115191', '79776079', '15', '160000', '2016-01-14 11:35:01');
INSERT INTO `gold_record` VALUES ('712153', '115191', '79756079', '14', '-20000', '2016-01-14 11:40:58');
INSERT INTO `gold_record` VALUES ('712154', '115191', '79456079', '14', '-300000', '2016-01-14 11:48:20');
INSERT INTO `gold_record` VALUES ('712155', '110109', '99823199', '14', '-60000', '2016-01-14 11:48:43');
INSERT INTO `gold_record` VALUES ('712156', '110109', '99903199', '15', '80000', '2016-01-14 11:48:55');
INSERT INTO `gold_record` VALUES ('712157', '110109', '99833199', '14', '-70000', '2016-01-14 11:51:06');
INSERT INTO `gold_record` VALUES ('712158', '115191', '79356079', '14', '-100000', '2016-01-14 11:51:16');
INSERT INTO `gold_record` VALUES ('712159', '110109', '99993199', '15', '160000', '2016-01-14 11:51:18');
INSERT INTO `gold_record` VALUES ('712160', '115191', '78556079', '14', '-800000', '2016-01-14 11:51:46');
INSERT INTO `gold_record` VALUES ('712161', '115191', '79356079', '15', '800000', '2016-01-14 11:51:53');
INSERT INTO `gold_record` VALUES ('712162', '115191', '77156079', '14', '-2200000', '2016-01-14 11:54:40');
INSERT INTO `gold_record` VALUES ('712163', '115191', '79169079', '15', '2013000', '2016-01-14 11:54:43');
INSERT INTO `gold_record` VALUES ('712164', '115191', '78569079', '14', '-600000', '2016-01-14 11:57:05');
INSERT INTO `gold_record` VALUES ('712165', '115191', '79769079', '15', '1200000', '2016-01-14 11:57:06');
INSERT INTO `gold_record` VALUES ('712166', '115191', '79709079', '14', '-60000', '2016-01-14 11:58:14');
INSERT INTO `gold_record` VALUES ('712167', '115191', '79869079', '15', '160000', '2016-01-14 11:58:27');
INSERT INTO `gold_record` VALUES ('712168', '115213', '276300', '14', '-30000', '2016-01-14 12:13:23');
INSERT INTO `gold_record` VALUES ('712169', '115213', '336300', '15', '60000', '2016-01-14 12:13:31');
INSERT INTO `gold_record` VALUES ('712170', '115235', '4200', '8', '200', '2016-01-14 12:36:09');
INSERT INTO `gold_record` VALUES ('712171', '115212', '14219699', '14', '-100000', '2016-01-14 14:13:33');
INSERT INTO `gold_record` VALUES ('712172', '115212', '14419699', '15', '200000', '2016-01-14 14:13:45');
INSERT INTO `gold_record` VALUES ('712173', '115212', '14319699', '14', '-100000', '2016-01-14 14:13:58');
INSERT INTO `gold_record` VALUES ('712174', '115212', '14119699', '14', '-200000', '2016-01-14 14:14:30');

-- ----------------------------
-- Table structure for huyi_sns_record
-- ----------------------------
DROP TABLE IF EXISTS `huyi_sns_record`;
CREATE TABLE `huyi_sns_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` char(16) NOT NULL DEFAULT '' COMMENT '手机号码',
  `content` varchar(512) NOT NULL DEFAULT '' COMMENT '短信内容',
  `code` char(16) NOT NULL DEFAULT '' COMMENT '回复错误码 2成功 其他失败',
  `snsid` varchar(64) NOT NULL DEFAULT '' COMMENT '短信ID',
  `error_message` varchar(258) DEFAULT '' COMMENT '错误信息',
  `datatime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='互亿短信通知记录';

-- ----------------------------
-- Records of huyi_sns_record
-- ----------------------------

-- ----------------------------
-- Table structure for item_buying
-- ----------------------------
DROP TABLE IF EXISTS `item_buying`;
CREATE TABLE `item_buying` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '玩家账号ID',
  `item_name` varchar(32) DEFAULT '',
  `item_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '物品类型',
  `item_num` int(11) NOT NULL DEFAULT '0' COMMENT '物品数量',
  `item_data` int(11) NOT NULL DEFAULT '0' COMMENT '物品参数',
  `datatime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品购买记录';

-- ----------------------------
-- Records of item_buying
-- ----------------------------

-- ----------------------------
-- Table structure for item_using
-- ----------------------------
DROP TABLE IF EXISTS `item_using`;
CREATE TABLE `item_using` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '玩家账号ID',
  `item_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '物品类型',
  `item_num` int(11) NOT NULL DEFAULT '0' COMMENT '物品数量',
  `datatime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品使用记录';

-- ----------------------------
-- Records of item_using
-- ----------------------------

-- ----------------------------
-- Table structure for match_round
-- ----------------------------
DROP TABLE IF EXISTS `match_round`;
CREATE TABLE `match_round` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `room` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '房间ID',
  `match` int(11) NOT NULL DEFAULT '0' COMMENT '比赛实例ID',
  `need_gold` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '入场费',
  `call_lord_score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '叫地主底分 欢乐模式则为抢地主倍率',
  `pocket_factor` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '底牌倍率',
  `bomb_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总炸弹数',
  `spring` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否是春天',
  `lord` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '地主ID',
  `winer` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '赢家ID',
  `player1` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '玩家1',
  `score1` int(11) NOT NULL DEFAULT '0' COMMENT '玩家1输赢金币数',
  `cost_gold1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '游戏中花费',
  `bomb_num1` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '玩家1使用炸弹数',
  `showcards_factor1` tinyint(4) NOT NULL DEFAULT '0' COMMENT '明牌倍率',
  `double_factor1` tinyint(4) NOT NULL DEFAULT '0' COMMENT '加倍倍率',
  `player2` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '玩家2',
  `score2` int(11) NOT NULL DEFAULT '0' COMMENT '玩家2输赢金币数',
  `cost_gold2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '游戏中花费',
  `bomb_num2` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '玩家2使用炸弹数',
  `showcards_factor2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '明牌倍率',
  `double_factor2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '加倍倍率',
  `player3` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '玩家3',
  `score3` int(11) NOT NULL DEFAULT '0' COMMENT '玩家3输赢金币数',
  `cost_gold3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '游戏中花费',
  `bomb_num3` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '玩家3使用炸弹数',
  `showcards_factor3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '明牌倍率',
  `double_factor3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '加倍倍率',
  `datatime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='比赛牌局记录表';

-- ----------------------------
-- Records of match_round
-- ----------------------------

-- ----------------------------
-- Table structure for pay_bill
-- ----------------------------
DROP TABLE IF EXISTS `pay_bill`;
CREATE TABLE `pay_bill` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '账号ID',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `goods_name` varchar(32) NOT NULL DEFAULT '' COMMENT '商店名称',
  `goods_price` int(10) DEFAULT '0' COMMENT '商品价格',
  `pay_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付类型',
  `user_channel` char(32) NOT NULL DEFAULT '' COMMENT '用户渠道',
  `bill_id` char(32) NOT NULL DEFAULT '' COMMENT '服务器生成的订单号',
  `net_bill_id` char(64) NOT NULL DEFAULT '' COMMENT '对接方生成的订单号',
  `pay_amt` varchar(16) NOT NULL DEFAULT '' COMMENT '支付金额',
  `error_message` varchar(256) NOT NULL DEFAULT '' COMMENT '错误信息',
  `datatime` datetime NOT NULL COMMENT '时间戳',
  PRIMARY KEY (`id`),
  KEY `bill_id` (`bill_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付订单';

-- ----------------------------
-- Records of pay_bill
-- ----------------------------

-- ----------------------------
-- Table structure for quest_finished
-- ----------------------------
DROP TABLE IF EXISTS `quest_finished`;
CREATE TABLE `quest_finished` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '玩家账号ID',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '任务ID',
  `award_gold` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '奖励金币',
  `award_diamond` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '奖励钻石',
  `datatime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='任务完成记录表';

-- ----------------------------
-- Records of quest_finished
-- ----------------------------
INSERT INTO `quest_finished` VALUES ('1', '110073', '10101', '200', '0', '2016-01-13 11:17:58');
INSERT INTO `quest_finished` VALUES ('2', '115212', '10101', '200', '0', '2016-01-13 17:48:10');
INSERT INTO `quest_finished` VALUES ('3', '115235', '10101', '200', '0', '2016-01-14 10:41:56');
INSERT INTO `quest_finished` VALUES ('4', '115235', '10101', '200', '0', '2016-01-14 12:36:09');

-- ----------------------------
-- Table structure for room_round
-- ----------------------------
DROP TABLE IF EXISTS `room_round`;
CREATE TABLE `room_round` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `room` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '房间ID',
  `need_gold` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '入场费',
  `call_lord_score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '叫地主底分 欢乐模式则为抢地主倍率',
  `pocket_factor` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '底牌倍率',
  `bomb_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总炸弹数',
  `spring` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否是春天',
  `lord` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '地主ID',
  `winer` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '赢家ID',
  `player1` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '玩家1',
  `score1` int(11) NOT NULL DEFAULT '0' COMMENT '玩家1输赢金币数',
  `cost_gold1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '游戏中花费',
  `bomb_num1` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '玩家1使用炸弹数',
  `showcards_factor1` tinyint(4) NOT NULL DEFAULT '0' COMMENT '明牌倍率',
  `double_factor1` tinyint(4) NOT NULL DEFAULT '0' COMMENT '加倍倍率',
  `player2` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '玩家2',
  `score2` int(11) NOT NULL DEFAULT '0' COMMENT '玩家2输赢金币数',
  `cost_gold2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '游戏中花费',
  `bomb_num2` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '玩家2使用炸弹数',
  `showcards_factor2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '明牌倍率',
  `double_factor2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '加倍倍率',
  `player3` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '玩家3',
  `score3` int(11) NOT NULL DEFAULT '0' COMMENT '玩家3输赢金币数',
  `cost_gold3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '游戏中花费',
  `bomb_num3` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '玩家3使用炸弹数',
  `showcards_factor3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '明牌倍率',
  `double_factor3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '加倍倍率',
  `datatime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='牌局记录表';

-- ----------------------------
-- Records of room_round
-- ----------------------------
INSERT INTO `room_round` VALUES ('1', '10101', '400', '3', '1', '0', '0', '100381', '110109', '110109', '600', '0', '0', '0', '0', '101633', '600', '0', '0', '0', '0', '100381', '-1200', '0', '0', '0', '0', '2016-01-13 11:30:05');
INSERT INTO `room_round` VALUES ('2', '10101', '400', '3', '1', '1', '0', '101069', '101069', '110109', '-2400', '0', '0', '0', '0', '101069', '2400', '0', '1', '0', '0', '101734', '0', '0', '0', '0', '0', '2016-01-13 11:32:33');
INSERT INTO `room_round` VALUES ('3', '10101', '400', '3', '2', '1', '0', '101302', '101302', '101250', '0', '0', '0', '0', '0', '110109', '-4800', '0', '0', '0', '0', '101302', '4800', '0', '1', '0', '0', '2016-01-13 11:34:33');
INSERT INTO `room_round` VALUES ('4', '10101', '400', '3', '1', '0', '0', '101537', '101537', '100944', '-600', '0', '0', '0', '0', '110109', '-600', '0', '0', '0', '0', '101537', '1200', '0', '0', '0', '0', '2016-01-13 11:54:36');

-- ----------------------------
-- Table structure for sign_record
-- ----------------------------
DROP TABLE IF EXISTS `sign_record`;
CREATE TABLE `sign_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家账号ID',
  `day` int(10) NOT NULL DEFAULT '0',
  `gold` int(10) NOT NULL DEFAULT '0' COMMENT '奖励金币',
  `diamond` int(10) NOT NULL DEFAULT '0' COMMENT '奖励钻石',
  `call_prop` int(10) NOT NULL DEFAULT '0' COMMENT '奖励喇叭数',
  `card_prop` int(10) NOT NULL DEFAULT '0' COMMENT '奖励记牌器天数',
  `datatime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='签到记录表';

-- ----------------------------
-- Records of sign_record
-- ----------------------------
INSERT INTO `sign_record` VALUES ('1', '110073', '13', '10000', '0', '0', '0', '2016-01-13 11:05:02');
INSERT INTO `sign_record` VALUES ('2', '110073', '13', '10000', '0', '0', '0', '2016-01-13 11:06:47');
INSERT INTO `sign_record` VALUES ('3', '110073', '13', '10000', '0', '0', '0', '2016-01-13 11:08:24');
INSERT INTO `sign_record` VALUES ('4', '110109', '8', '2000', '0', '0', '0', '2016-01-13 11:28:18');
INSERT INTO `sign_record` VALUES ('5', '115212', '9', '2500', '0', '0', '0', '2016-01-13 17:30:28');
INSERT INTO `sign_record` VALUES ('6', '115235', '1', '1000', '0', '0', '0', '2016-01-14 10:26:42');
INSERT INTO `sign_record` VALUES ('7', '115235', '1', '1000', '0', '0', '0', '2016-01-14 10:38:33');
