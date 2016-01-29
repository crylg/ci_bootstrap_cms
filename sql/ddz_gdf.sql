/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : ddz_gdf

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-01-29 11:01:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for exchange_award
-- ----------------------------
DROP TABLE IF EXISTS `exchange_award`;
CREATE TABLE `exchange_award` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '兑奖索引',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '分类 1实体奖品 2话费充值 3兑换金币 4其他',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名字',
  `icon` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'icon索引',
  `diamond` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '需要花费的钻石数',
  `value` int(10) unsigned DEFAULT '0' COMMENT '价值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兑奖配置表';

-- ----------------------------
-- Records of exchange_award
-- ----------------------------
INSERT INTO `exchange_award` VALUES ('1', '2', '20元话费', '502', '2000', '20');
INSERT INTO `exchange_award` VALUES ('2', '2', '50元话费', '503', '5000', '50');
INSERT INTO `exchange_award` VALUES ('3', '1', '京东E卡100元', '601', '11000', '110');
INSERT INTO `exchange_award` VALUES ('4', '1', '京东E卡200元', '602', '22000', '220');
INSERT INTO `exchange_award` VALUES ('5', '1', 'iPhone 6s', '701', '580000', '5800');
INSERT INTO `exchange_award` VALUES ('6', '1', 'iPad Air2', '702', '380000', '3800');
INSERT INTO `exchange_award` VALUES ('7', '1', '小米电视2 40寸', '703', '220000', '2200');
INSERT INTO `exchange_award` VALUES ('8', '1', '小米平板', '704', '120000', '1200');

-- ----------------------------
-- Table structure for fruit_slots_config
-- ----------------------------
DROP TABLE IF EXISTS `fruit_slots_config`;
CREATE TABLE `fruit_slots_config` (
  `interval_time` int(11) NOT NULL DEFAULT '0' COMMENT '开始时间间隔 单位秒',
  `player_max` int(11) NOT NULL DEFAULT '0' COMMENT '人数限制',
  `none_time` int(11) NOT NULL DEFAULT '0' COMMENT '无特殊事件等待时间',
  `baoji_time` int(11) NOT NULL DEFAULT '0' COMMENT '爆机等待时间',
  `xiaosanyuan_time` int(11) NOT NULL DEFAULT '0' COMMENT '小三元等待时间',
  `dasanyuan_time` int(11) NOT NULL DEFAULT '0' COMMENT '大三元等待时间',
  `xiaomanguan_time` int(11) NOT NULL DEFAULT '0' COMMENT '小满贯等待时间',
  `damanguan_time` int(11) NOT NULL DEFAULT '0' COMMENT '大满贯等待时间',
  `rank_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '排行榜更新时间间隔 单位秒',
  `chips_all_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '所有玩家下注信息更新时间间隔 单位秒',
  `pool_gold_add_rate` int(11) NOT NULL DEFAULT '0' COMMENT '下注放入奖池金币百分比',
  `chip_base_default` int(11) NOT NULL DEFAULT '0' COMMENT '下注基数默认值',
  `adjust_chance_time` int(11) NOT NULL DEFAULT '120' COMMENT '吐分期调整几率持续时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='水果机配置表';

-- ----------------------------
-- Records of fruit_slots_config
-- ----------------------------
INSERT INTO `fruit_slots_config` VALUES ('30', '10000', '10', '10', '10', '10', '15', '15', '600', '3', '10', '10000', '180');

-- ----------------------------
-- Table structure for fruit_slots_fruit_base
-- ----------------------------
DROP TABLE IF EXISTS `fruit_slots_fruit_base`;
CREATE TABLE `fruit_slots_fruit_base` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '索引',
  `name` char(32) NOT NULL DEFAULT '' COMMENT '名字',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '类型 255GOODLUCK 0BAR 177 2STAR 3WATERMELON 4BELL 5MANGO 6ORANGE 7APPLE',
  `rate` int(11) NOT NULL DEFAULT '0' COMMENT '倍率',
  `chance` int(11) NOT NULL DEFAULT '0' COMMENT '几率',
  `chance1` int(11) NOT NULL DEFAULT '0' COMMENT '吐分期几率',
  `interval_time` int(11) NOT NULL DEFAULT '0' COMMENT '出现间隔时间 单位分钟',
  `none_chance` int(11) NOT NULL DEFAULT '0' COMMENT '特殊事件不中几率',
  `baoji_chance` int(11) NOT NULL DEFAULT '0' COMMENT '爆机几率',
  `xiaosanyuan_chance` int(11) NOT NULL DEFAULT '0' COMMENT '小三元几率',
  `dasanyuan_chance` int(11) NOT NULL DEFAULT '0' COMMENT '大三元几率',
  `xiaomanguan_chance` int(11) NOT NULL DEFAULT '0' COMMENT '小满贯几率',
  `damanguan_chance` int(11) NOT NULL DEFAULT '0' COMMENT '大满贯几率',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='水果机水果数据配置表';

-- ----------------------------
-- Records of fruit_slots_fruit_base
-- ----------------------------
INSERT INTO `fruit_slots_fruit_base` VALUES ('1', 'GOODLUCK', '255', '0', '50000', '50000', '3', '0', '100', '9000', '9000', '9000', '3000');
INSERT INTO `fruit_slots_fruit_base` VALUES ('2', 'Apple_2', '7', '2', '8000', '3000', '0', '8000', '0', '0', '0', '2000', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('3', 'Orange_4', '6', '4', '200', '3000', '0', '10000', '0', '0', '0', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('4', 'Mango_6', '5', '6', '200', '2000', '0', '10000', '0', '0', '0', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('5', 'Watermelon_8', '3', '8', '100', '2000', '0', '8000', '0', '0', '2000', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('6', 'Bell_2', '4', '2', '8000', '3000', '0', '8000', '0', '0', '0', '2000', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('7', '77_12', '1', '12', '100', '2000', '3', '10000', '0', '0', '0', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('8', 'Orange_2', '6', '2', '8000', '3000', '0', '8000', '0', '0', '0', '2000', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('9', 'Apple_4', '7', '4', '200', '3000', '0', '10000', '0', '0', '0', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('10', 'Mango_6', '5', '6', '200', '2000', '0', '8000', '0', '2000', '0', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('11', 'Star_8', '2', '8', '100', '2000', '0', '8000', '0', '0', '2000', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('12', 'BAR_30', '0', '30', '10000', '10000', '18', '10000', '0', '0', '0', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('13', 'Mango_2', '5', '2', '8000', '3000', '0', '8000', '0', '0', '0', '2000', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('14', 'Apple_4', '7', '4', '200', '3000', '0', '8000', '0', '2000', '0', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('15', 'Bell_6', '4', '6', '100', '2000', '0', '10000', '0', '0', '0', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('16', 'Star_8', '2', '8', '100', '2000', '0', '10000', '0', '0', '0', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('17', 'Watermelon_2', '3', '2', '8000', '3000', '0', '8000', '0', '0', '0', '2000', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('18', '77_12', '1', '12', '100', '2000', '3', '8000', '0', '0', '2000', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('19', 'Star_2', '2', '2', '8000', '3000', '0', '8000', '0', '0', '0', '2000', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('20', 'Orange_4', '6', '4', '200', '3000', '0', '8000', '0', '2000', '0', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('21', 'Bell_6', '4', '6', '100', '2000', '0', '10000', '0', '0', '0', '0', '0');
INSERT INTO `fruit_slots_fruit_base` VALUES ('22', 'Watermelon_8', '3', '8', '100', '2000', '0', '10000', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for fruit_solts_fruit_composite
-- ----------------------------
DROP TABLE IF EXISTS `fruit_solts_fruit_composite`;
CREATE TABLE `fruit_solts_fruit_composite` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '索引',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '名称',
  `slots` varchar(64) NOT NULL DEFAULT '' COMMENT '包含的水果ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='水果机水果组合数据配置表';

-- ----------------------------
-- Records of fruit_solts_fruit_composite
-- ----------------------------
INSERT INTO `fruit_solts_fruit_composite` VALUES ('1', '爆机', '');
INSERT INTO `fruit_solts_fruit_composite` VALUES ('2', '小三元', '10,14,20');
INSERT INTO `fruit_solts_fruit_composite` VALUES ('3', '大三元', '5,11,18');
INSERT INTO `fruit_solts_fruit_composite` VALUES ('4', '小满贯', '2,6,8,13,17,19');
INSERT INTO `fruit_solts_fruit_composite` VALUES ('5', '大满贯', '4,7,9,11,15,20,22');

-- ----------------------------
-- Table structure for gift
-- ----------------------------
DROP TABLE IF EXISTS `gift`;
CREATE TABLE `gift` (
  `id` int(11) NOT NULL COMMENT '礼包ID',
  `name` varchar(64) DEFAULT '',
  `gold` int(11) DEFAULT '0' COMMENT '给予的金币数',
  `diamond` int(11) DEFAULT '0' COMMENT '给予的街头币数',
  `vip` int(11) DEFAULT '0' COMMENT 'VIP等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='礼包配置表';

-- ----------------------------
-- Records of gift
-- ----------------------------
INSERT INTO `gift` VALUES ('1', '新手礼包', '100000', '0', '1');

-- ----------------------------
-- Table structure for level_exp
-- ----------------------------
DROP TABLE IF EXISTS `level_exp`;
CREATE TABLE `level_exp` (
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `exp` int(10) unsigned DEFAULT '0' COMMENT '升级所需经验',
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='升级经验配置表';

-- ----------------------------
-- Records of level_exp
-- ----------------------------
INSERT INTO `level_exp` VALUES ('1', '1000');
INSERT INTO `level_exp` VALUES ('2', '2000');
INSERT INTO `level_exp` VALUES ('3', '3000');
INSERT INTO `level_exp` VALUES ('4', '4000');
INSERT INTO `level_exp` VALUES ('5', '5000');
INSERT INTO `level_exp` VALUES ('6', '6000');
INSERT INTO `level_exp` VALUES ('7', '7000');
INSERT INTO `level_exp` VALUES ('8', '8000');
INSERT INTO `level_exp` VALUES ('9', '9000');
INSERT INTO `level_exp` VALUES ('10', '10000');
INSERT INTO `level_exp` VALUES ('11', '11000');
INSERT INTO `level_exp` VALUES ('12', '12000');
INSERT INTO `level_exp` VALUES ('13', '13000');
INSERT INTO `level_exp` VALUES ('14', '14000');
INSERT INTO `level_exp` VALUES ('15', '15000');
INSERT INTO `level_exp` VALUES ('16', '16000');
INSERT INTO `level_exp` VALUES ('17', '17000');
INSERT INTO `level_exp` VALUES ('18', '18000');
INSERT INTO `level_exp` VALUES ('19', '19000');
INSERT INTO `level_exp` VALUES ('20', '20000');
INSERT INTO `level_exp` VALUES ('21', '21000');
INSERT INTO `level_exp` VALUES ('22', '22000');
INSERT INTO `level_exp` VALUES ('23', '23000');
INSERT INTO `level_exp` VALUES ('24', '24000');
INSERT INTO `level_exp` VALUES ('25', '25000');
INSERT INTO `level_exp` VALUES ('26', '26000');
INSERT INTO `level_exp` VALUES ('27', '27000');
INSERT INTO `level_exp` VALUES ('28', '28000');
INSERT INTO `level_exp` VALUES ('29', '29000');
INSERT INTO `level_exp` VALUES ('30', '30000');
INSERT INTO `level_exp` VALUES ('31', '31000');
INSERT INTO `level_exp` VALUES ('32', '32000');
INSERT INTO `level_exp` VALUES ('33', '33000');
INSERT INTO `level_exp` VALUES ('34', '34000');
INSERT INTO `level_exp` VALUES ('35', '35000');
INSERT INTO `level_exp` VALUES ('36', '36000');
INSERT INTO `level_exp` VALUES ('37', '37000');
INSERT INTO `level_exp` VALUES ('38', '38000');
INSERT INTO `level_exp` VALUES ('39', '39000');
INSERT INTO `level_exp` VALUES ('40', '40000');
INSERT INTO `level_exp` VALUES ('41', '41000');
INSERT INTO `level_exp` VALUES ('42', '42000');
INSERT INTO `level_exp` VALUES ('43', '43000');
INSERT INTO `level_exp` VALUES ('44', '44000');
INSERT INTO `level_exp` VALUES ('45', '45000');
INSERT INTO `level_exp` VALUES ('46', '46000');
INSERT INTO `level_exp` VALUES ('47', '47000');
INSERT INTO `level_exp` VALUES ('48', '48000');
INSERT INTO `level_exp` VALUES ('49', '49000');
INSERT INTO `level_exp` VALUES ('50', '50000');
INSERT INTO `level_exp` VALUES ('51', '51000');
INSERT INTO `level_exp` VALUES ('52', '52000');
INSERT INTO `level_exp` VALUES ('53', '53000');
INSERT INTO `level_exp` VALUES ('54', '54000');
INSERT INTO `level_exp` VALUES ('55', '55000');
INSERT INTO `level_exp` VALUES ('56', '56000');
INSERT INTO `level_exp` VALUES ('57', '57000');
INSERT INTO `level_exp` VALUES ('58', '58000');
INSERT INTO `level_exp` VALUES ('59', '59000');
INSERT INTO `level_exp` VALUES ('60', '60000');
INSERT INTO `level_exp` VALUES ('61', '122000');
INSERT INTO `level_exp` VALUES ('62', '124000');
INSERT INTO `level_exp` VALUES ('63', '126000');
INSERT INTO `level_exp` VALUES ('64', '128000');
INSERT INTO `level_exp` VALUES ('65', '130000');
INSERT INTO `level_exp` VALUES ('66', '132000');
INSERT INTO `level_exp` VALUES ('67', '134000');
INSERT INTO `level_exp` VALUES ('68', '136000');
INSERT INTO `level_exp` VALUES ('69', '138000');
INSERT INTO `level_exp` VALUES ('70', '140000');
INSERT INTO `level_exp` VALUES ('71', '213000');
INSERT INTO `level_exp` VALUES ('72', '216000');
INSERT INTO `level_exp` VALUES ('73', '219000');
INSERT INTO `level_exp` VALUES ('74', '222000');
INSERT INTO `level_exp` VALUES ('75', '225000');
INSERT INTO `level_exp` VALUES ('76', '228000');
INSERT INTO `level_exp` VALUES ('77', '231000');
INSERT INTO `level_exp` VALUES ('78', '234000');
INSERT INTO `level_exp` VALUES ('79', '237000');
INSERT INTO `level_exp` VALUES ('80', '240000');
INSERT INTO `level_exp` VALUES ('81', '324000');
INSERT INTO `level_exp` VALUES ('82', '328000');
INSERT INTO `level_exp` VALUES ('83', '332000');
INSERT INTO `level_exp` VALUES ('84', '336000');
INSERT INTO `level_exp` VALUES ('85', '340000');
INSERT INTO `level_exp` VALUES ('86', '344000');
INSERT INTO `level_exp` VALUES ('87', '348000');
INSERT INTO `level_exp` VALUES ('88', '352000');
INSERT INTO `level_exp` VALUES ('89', '356000');
INSERT INTO `level_exp` VALUES ('90', '360000');
INSERT INTO `level_exp` VALUES ('91', '455000');
INSERT INTO `level_exp` VALUES ('92', '460000');
INSERT INTO `level_exp` VALUES ('93', '465000');
INSERT INTO `level_exp` VALUES ('94', '470000');
INSERT INTO `level_exp` VALUES ('95', '475000');
INSERT INTO `level_exp` VALUES ('96', '480000');
INSERT INTO `level_exp` VALUES ('97', '485000');
INSERT INTO `level_exp` VALUES ('98', '490000');
INSERT INTO `level_exp` VALUES ('99', '495000');
INSERT INTO `level_exp` VALUES ('100', '500000');

-- ----------------------------
-- Table structure for match
-- ----------------------------
DROP TABLE IF EXISTS `match`;
CREATE TABLE `match` (
  `id` int(10) unsigned NOT NULL COMMENT '房间ID',
  `game_mode` tinyint(3) unsigned DEFAULT '0' COMMENT '游戏类型 2经典 3快乐 4癞子  5二人',
  `special` tinyint(3) unsigned DEFAULT '0' COMMENT '是否特殊入口比赛',
  `name` char(64) DEFAULT '' COMMENT '房间名',
  `channel` varchar(64) DEFAULT '' COMMENT '渠道来源',
  `bet` int(10) unsigned DEFAULT '0' COMMENT '赌注基数',
  `bet_add` int(10) unsigned DEFAULT '0' COMMENT '赌注基数增加值',
  `bet1` int(10) unsigned DEFAULT '0' COMMENT '比赛场额外赌注基数',
  `gold_max_limit` int(10) unsigned DEFAULT '0' COMMENT '入场金币最大限制',
  `gold_cost` int(10) unsigned DEFAULT '0' COMMENT '手续费用',
  `award` int(10) unsigned DEFAULT '0' COMMENT '排名奖励ID',
  `player_num` int(10) unsigned DEFAULT '0' COMMENT '比赛场开赛人数',
  `player_num_max` int(10) unsigned DEFAULT '200' COMMENT '比赛最大人数限制',
  `player_num_extra` int(10) unsigned DEFAULT '0',
  `player_num_final` int(10) unsigned DEFAULT '0' COMMENT '入围赛的人数启用条件',
  `chip` int(10) unsigned DEFAULT '0' COMMENT '比赛场入场积分筹码',
  `chip1` int(10) unsigned DEFAULT '0' COMMENT '比赛场决赛积分筹码',
  `open_type` tinyint(3) unsigned DEFAULT '0' COMMENT '开赛时间类型 0无限制 1特定时间 2特定星期几 3每天特定时间',
  `start_time` char(16) DEFAULT '' COMMENT '开赛时间 特定时间格式2015-06-25 15:17 特定星期几格式0-6 特定时间15:18',
  `round_limit` tinyint(3) unsigned DEFAULT '0' COMMENT '牌局数限制',
  `interval` int(10) unsigned DEFAULT '0' COMMENT '开赛间隔时间 单位秒',
  `exp` int(10) unsigned DEFAULT '0' COMMENT '牌局经验',
  `gold_award_out` int(10) unsigned DEFAULT '0' COMMENT '淘汰玩家奖励金币数',
  `notify_time0` int(11) DEFAULT '0' COMMENT '比赛前通知时间',
  `notify_time1` int(11) DEFAULT '0',
  `notify_time2` int(11) DEFAULT '0',
  `icon` int(11) DEFAULT '0' COMMENT '图标索引',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='比赛配置表';

-- ----------------------------
-- Records of match
-- ----------------------------
INSERT INTO `match` VALUES ('40101', '2', '1', '破产翻身赛（免费）', '0', '1000', '100', '100', '1000', '0', '40101', '90', '1200', '33', '12', '10000', '1000', '0', '0', '0', '3', '300', '100', '0', '0', '0', '802');
INSERT INTO `match` VALUES ('40201', '2', '1', '5元话费赛（免费）', '0', '1000', '100', '100', '0', '0', '40201', '60', '1200', '33', '12', '10000', '1000', '3', '6:00', '40', '1800', '300', '100', '300', '180', '60', '801');
INSERT INTO `match` VALUES ('40202', '2', '1', '50元话费赛（免费）', '0', '1000', '100', '100', '0', '0', '40202', '60', '1200', '33', '12', '10000', '1000', '3', '13:00', '2', '25200', '300', '100', '300', '180', '60', '801');
INSERT INTO `match` VALUES ('40301', '2', '1', '5元话费赛', '0', '1000', '100', '100', '0', '10000', '40301', '90', '1200', '33', '12', '10000', '1000', '0', '0', '0', '3', '300', '100', '0', '0', '0', '803');

-- ----------------------------
-- Table structure for match_award
-- ----------------------------
DROP TABLE IF EXISTS `match_award`;
CREATE TABLE `match_award` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '奖励ID',
  `rank_min` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排名区间',
  `rank_max` int(10) unsigned DEFAULT '0' COMMENT '排名区间',
  `gold` int(10) unsigned DEFAULT '0' COMMENT '奖励金币数',
  `diamond` int(10) unsigned DEFAULT '0' COMMENT '奖励钻石数',
  `item` int(10) unsigned DEFAULT '0' COMMENT '物品ID',
  `item_amount` int(10) unsigned DEFAULT '0' COMMENT '物品数量',
  `item_icon` char(64) DEFAULT '' COMMENT '物品图标',
  PRIMARY KEY (`id`,`rank_min`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='比赛排名奖励表';

-- ----------------------------
-- Records of match_award
-- ----------------------------
INSERT INTO `match_award` VALUES ('40101', '1', '1', '500', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40101', '2', '2', '200', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40101', '3', '3', '100', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40101', '4', '6', '40', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40101', '7', '12', '30', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40101', '13', '30', '20', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40101', '31', '60', '10', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40201', '1', '1', '0', '500', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40201', '2', '2', '2000', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40201', '3', '3', '1000', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40201', '4', '6', '400', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40201', '7', '12', '300', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40201', '13', '30', '200', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40201', '31', '60', '100', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40202', '1', '1', '0', '5000', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40202', '2', '2', '2000', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40202', '3', '3', '1000', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40202', '4', '6', '400', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40202', '7', '12', '300', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40202', '13', '30', '200', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40202', '31', '60', '100', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40301', '1', '1', '0', '500', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40301', '2', '2', '20000', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40301', '3', '3', '10000', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40301', '4', '6', '4000', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40301', '7', '12', '3000', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40301', '13', '30', '2000', '0', '0', '0', '0');
INSERT INTO `match_award` VALUES ('40301', '31', '60', '1000', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for quest
-- ----------------------------
DROP TABLE IF EXISTS `quest`;
CREATE TABLE `quest` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '任务ID',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '任务类型',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名',
  `content` varchar(128) NOT NULL DEFAULT '' COMMENT '任务内容',
  `data` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '任务达成数据',
  `gold` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '任务金币奖励',
  `diamond` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '任务钻石奖励',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0成就 1任务（每日刷新）',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '任务图标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务配置表';

-- ----------------------------
-- Records of quest
-- ----------------------------
INSERT INTO `quest` VALUES ('10101', '1', '签到领奖', '签到可以免费领取金币', '1', '200', '0', '1', '8');
INSERT INTO `quest` VALUES ('10201', '2', '对战5局', '在任意自由桌对战5局', '5', '200', '0', '1', '3');
INSERT INTO `quest` VALUES ('10202', '2', '对战10局', '在任意自由桌对战10局', '10', '200', '0', '1', '3');
INSERT INTO `quest` VALUES ('10203', '2', '对战15局', '在任意自由桌对战15局', '15', '200', '0', '1', '3');
INSERT INTO `quest` VALUES ('10301', '3', '赢取5局', '在任意自由桌赢取5局', '5', '200', '0', '1', '4');
INSERT INTO `quest` VALUES ('10302', '3', '赢取10局', '在任意自由桌赢取10局', '10', '200', '0', '1', '4');
INSERT INTO `quest` VALUES ('10303', '3', '赢取15局', '在任意自由桌赢取15局', '15', '200', '0', '1', '4');
INSERT INTO `quest` VALUES ('10401', '4', '连胜3局', '在任意自由桌获得一次3连胜', '3', '200', '0', '1', '2');
INSERT INTO `quest` VALUES ('10402', '4', '连胜4局', '在任意自由桌获得一次4连胜', '4', '200', '0', '1', '2');
INSERT INTO `quest` VALUES ('10403', '4', '连胜5局', '在任意自由桌获得一次5连胜', '5', '200', '0', '1', '2');
INSERT INTO `quest` VALUES ('10601', '6', '比赛1局', '进行任意1局比赛', '1', '200', '0', '1', '1');
INSERT INTO `quest` VALUES ('10602', '6', '比赛2局', '进行任意2局比赛', '2', '200', '0', '1', '1');
INSERT INTO `quest` VALUES ('10603', '6', '比赛3局', '进行任意3局比赛', '3', '200', '0', '1', '1');
INSERT INTO `quest` VALUES ('10701', '7', '使用1次炸弹', '在任意自由桌使用1次炸弹', '1', '200', '0', '1', '9');
INSERT INTO `quest` VALUES ('10702', '7', '使用2次炸弹', '在任意自由桌使用2次炸弹', '2', '200', '0', '1', '9');
INSERT INTO `quest` VALUES ('10703', '7', '使用3次炸弹', '在任意自由桌使用3次炸弹', '3', '200', '0', '1', '9');
INSERT INTO `quest` VALUES ('10801', '8', '购买金币1次', '购买任意数量金币1次', '1', '1000', '0', '1', '5');
INSERT INTO `quest` VALUES ('10901', '9', '微信分享1次', '进行微信分享1次', '1', '1000', '0', '1', '6');
INSERT INTO `quest` VALUES ('20101', '1', '日进斗金', '累计签到5次', '5', '500', '0', '0', '8');
INSERT INTO `quest` VALUES ('20102', '1', '日进斗金', '累计签到10次', '10', '1000', '0', '0', '8');
INSERT INTO `quest` VALUES ('20103', '1', '日进斗金', '累计签到20次', '20', '1500', '0', '0', '8');
INSERT INTO `quest` VALUES ('20104', '1', '日进斗金', '累计签到30次', '30', '2000', '0', '0', '8');
INSERT INTO `quest` VALUES ('20105', '1', '日进斗金', '累计签到40次', '40', '2500', '0', '0', '8');
INSERT INTO `quest` VALUES ('20106', '1', '日进斗金', '累计签到50次', '50', '3000', '0', '0', '8');
INSERT INTO `quest` VALUES ('20107', '1', '日进斗金', '累计签到60次', '60', '3500', '0', '0', '8');
INSERT INTO `quest` VALUES ('20108', '1', '日进斗金', '累计签到70次', '70', '4000', '0', '0', '8');
INSERT INTO `quest` VALUES ('20109', '1', '日进斗金', '累计签到80次', '80', '4500', '0', '0', '8');
INSERT INTO `quest` VALUES ('20110', '1', '日进斗金', '累计签到90次', '90', '5000', '0', '0', '8');
INSERT INTO `quest` VALUES ('20201', '2', '乐不思蜀', '在任意自由桌对战30局', '30', '500', '0', '0', '3');
INSERT INTO `quest` VALUES ('20202', '2', '乐不思蜀', '在任意自由桌对战60局', '60', '1000', '0', '0', '3');
INSERT INTO `quest` VALUES ('20203', '2', '乐不思蜀', '在任意自由桌对战90局', '90', '1500', '0', '0', '3');
INSERT INTO `quest` VALUES ('20204', '2', '乐不思蜀', '在任意自由桌对战120局', '120', '2000', '0', '0', '3');
INSERT INTO `quest` VALUES ('20205', '2', '乐不思蜀', '在任意自由桌对战150局', '150', '2500', '0', '0', '3');
INSERT INTO `quest` VALUES ('20206', '2', '乐不思蜀', '在任意自由桌对战180局', '180', '3000', '0', '0', '3');
INSERT INTO `quest` VALUES ('20207', '2', '乐不思蜀', '在任意自由桌对战210局', '210', '3500', '0', '0', '3');
INSERT INTO `quest` VALUES ('20208', '2', '乐不思蜀', '在任意自由桌对战240局', '240', '4000', '0', '0', '3');
INSERT INTO `quest` VALUES ('20209', '2', '乐不思蜀', '在任意自由桌对战270局', '270', '4500', '0', '0', '3');
INSERT INTO `quest` VALUES ('20210', '2', '乐不思蜀', '在任意自由桌对战300局', '300', '5000', '0', '0', '3');
INSERT INTO `quest` VALUES ('20301', '3', '赌神附体', '在任意自由桌赢取30局', '30', '500', '0', '0', '4');
INSERT INTO `quest` VALUES ('20302', '3', '赌神附体', '在任意自由桌赢取60局', '60', '1000', '0', '0', '4');
INSERT INTO `quest` VALUES ('20303', '3', '赌神附体', '在任意自由桌赢取90局', '90', '1500', '0', '0', '4');
INSERT INTO `quest` VALUES ('20304', '3', '赌神附体', '在任意自由桌赢取120局', '120', '2000', '0', '0', '4');
INSERT INTO `quest` VALUES ('20305', '3', '赌神附体', '在任意自由桌赢取150局', '150', '2500', '0', '0', '4');
INSERT INTO `quest` VALUES ('20306', '3', '赌神附体', '在任意自由桌赢取180局', '180', '3000', '0', '0', '4');
INSERT INTO `quest` VALUES ('20307', '3', '赌神附体', '在任意自由桌赢取210局', '210', '3500', '0', '0', '4');
INSERT INTO `quest` VALUES ('20308', '3', '赌神附体', '在任意自由桌赢取240局', '240', '4000', '0', '0', '4');
INSERT INTO `quest` VALUES ('20309', '3', '赌神附体', '在任意自由桌赢取270局', '270', '4500', '0', '0', '4');
INSERT INTO `quest` VALUES ('20310', '3', '赌神附体', '在任意自由桌赢取300局', '300', '5000', '0', '0', '4');
INSERT INTO `quest` VALUES ('20401', '4', '所向披靡', '在任意自由桌获得1次5连胜', '5', '1000', '0', '0', '2');
INSERT INTO `quest` VALUES ('20402', '4', '所向披靡', '在任意自由桌获得1次6连胜', '6', '2000', '0', '0', '2');
INSERT INTO `quest` VALUES ('20403', '4', '所向披靡', '在任意自由桌获得1次7连胜', '7', '3000', '0', '0', '2');
INSERT INTO `quest` VALUES ('20404', '4', '所向披靡', '在任意自由桌获得1次8连胜', '8', '4000', '0', '0', '2');
INSERT INTO `quest` VALUES ('20405', '4', '所向披靡', '在任意自由桌获得1次9连胜', '9', '5000', '0', '0', '2');
INSERT INTO `quest` VALUES ('20501', '6', '勇者无惧', '进行任意30局比赛', '30', '500', '0', '0', '1');
INSERT INTO `quest` VALUES ('20502', '6', '勇者无惧', '进行任意60局比赛', '60', '1000', '0', '0', '1');
INSERT INTO `quest` VALUES ('20503', '6', '勇者无惧', '进行任意90局比赛', '90', '1500', '0', '0', '1');
INSERT INTO `quest` VALUES ('20504', '6', '勇者无惧', '进行任意120局比赛', '120', '2000', '0', '0', '1');
INSERT INTO `quest` VALUES ('20505', '6', '勇者无惧', '进行任意150局比赛', '150', '2500', '0', '0', '1');
INSERT INTO `quest` VALUES ('20506', '6', '勇者无惧', '进行任意180局比赛', '180', '3000', '0', '0', '1');
INSERT INTO `quest` VALUES ('20507', '6', '勇者无惧', '进行任意210局比赛', '210', '3500', '0', '0', '1');
INSERT INTO `quest` VALUES ('20508', '6', '勇者无惧', '进行任意240局比赛', '240', '4000', '0', '0', '1');
INSERT INTO `quest` VALUES ('20509', '6', '勇者无惧', '进行任意270局比赛', '270', '4500', '0', '0', '1');
INSERT INTO `quest` VALUES ('20510', '6', '勇者无惧', '进行任意300局比赛', '300', '5000', '0', '0', '1');
INSERT INTO `quest` VALUES ('20601', '7', '险中求胜', '在任意自由桌使用5次炸弹', '5', '500', '0', '0', '9');
INSERT INTO `quest` VALUES ('20602', '7', '险中求胜', '在任意自由桌使用10次炸弹', '10', '1000', '0', '0', '9');
INSERT INTO `quest` VALUES ('20603', '7', '险中求胜', '在任意自由桌使用20次炸弹', '20', '1500', '0', '0', '9');
INSERT INTO `quest` VALUES ('20604', '7', '险中求胜', '在任意自由桌使用30次炸弹', '30', '2000', '0', '0', '9');
INSERT INTO `quest` VALUES ('20605', '7', '险中求胜', '在任意自由桌使用40次炸弹', '40', '2500', '0', '0', '9');
INSERT INTO `quest` VALUES ('20606', '7', '险中求胜', '在任意自由桌使用50次炸弹', '50', '3000', '0', '0', '9');
INSERT INTO `quest` VALUES ('20607', '7', '险中求胜', '在任意自由桌使用60次炸弹', '60', '3500', '0', '0', '9');
INSERT INTO `quest` VALUES ('20608', '7', '险中求胜', '在任意自由桌使用70次炸弹', '70', '4000', '0', '0', '9');
INSERT INTO `quest` VALUES ('20609', '7', '险中求胜', '在任意自由桌使用80次炸弹', '80', '4500', '0', '0', '9');
INSERT INTO `quest` VALUES ('20610', '7', '险中求胜', '在任意自由桌使用90次炸弹', '90', '5000', '0', '0', '9');
INSERT INTO `quest` VALUES ('20701', '9', '欢乐齐享', '进行微信分享5次', '5', '500', '0', '0', '6');
INSERT INTO `quest` VALUES ('20702', '9', '欢乐齐享', '进行微信分享10次', '10', '1000', '0', '0', '6');
INSERT INTO `quest` VALUES ('20703', '9', '欢乐齐享', '进行微信分享20次', '20', '1500', '0', '0', '6');
INSERT INTO `quest` VALUES ('20704', '9', '欢乐齐享', '进行微信分享30次', '30', '2000', '0', '0', '6');
INSERT INTO `quest` VALUES ('20705', '9', '欢乐齐享', '进行微信分享40次', '40', '2500', '0', '0', '6');
INSERT INTO `quest` VALUES ('20706', '9', '欢乐齐享', '进行微信分享50次', '50', '3000', '0', '0', '6');
INSERT INTO `quest` VALUES ('20707', '9', '欢乐齐享', '进行微信分享60次', '60', '3500', '0', '0', '6');
INSERT INTO `quest` VALUES ('20708', '9', '欢乐齐享', '进行微信分享70次', '70', '4000', '0', '0', '6');
INSERT INTO `quest` VALUES ('20709', '9', '欢乐齐享', '进行微信分享80次', '80', '4500', '0', '0', '6');
INSERT INTO `quest` VALUES ('20710', '9', '欢乐齐享', '进行微信分享90次', '90', '5000', '0', '0', '6');
INSERT INTO `quest` VALUES ('20801', '10', '崭露头角', '等级升到5级', '5', '500', '0', '0', '10');
INSERT INTO `quest` VALUES ('20802', '10', '崭露头角', '等级升到10级', '10', '1000', '0', '0', '10');
INSERT INTO `quest` VALUES ('20803', '10', '崭露头角', '等级升到20级', '20', '1500', '0', '0', '10');
INSERT INTO `quest` VALUES ('20804', '10', '崭露头角', '等级升到30级', '30', '2000', '0', '0', '10');
INSERT INTO `quest` VALUES ('20805', '10', '崭露头角', '等级升到40级', '40', '2500', '0', '0', '10');
INSERT INTO `quest` VALUES ('20806', '10', '崭露头角', '等级升到50级', '50', '3000', '0', '0', '10');
INSERT INTO `quest` VALUES ('20807', '10', '崭露头角', '等级升到60级', '60', '3500', '0', '0', '10');
INSERT INTO `quest` VALUES ('20808', '10', '崭露头角', '等级升到70级', '70', '4000', '0', '0', '10');
INSERT INTO `quest` VALUES ('20809', '10', '崭露头角', '等级升到80级', '80', '4500', '0', '0', '10');
INSERT INTO `quest` VALUES ('20810', '10', '崭露头角', '等级升到90级', '90', '5000', '0', '0', '10');
INSERT INTO `quest` VALUES ('20901', '11', '巅峰王者', '在任意比赛获得一次第5名', '5', '1000', '0', '0', '11');
INSERT INTO `quest` VALUES ('20902', '11', '巅峰王者', '在任意比赛获得一次第4名', '4', '2000', '0', '0', '11');
INSERT INTO `quest` VALUES ('20903', '11', '巅峰王者', '在任意比赛获得一次第3名', '3', '3000', '0', '0', '11');
INSERT INTO `quest` VALUES ('20904', '11', '巅峰王者', '在任意比赛获得一次第2名', '2', '4000', '0', '0', '11');
INSERT INTO `quest` VALUES ('20905', '11', '巅峰王者', '在任意比赛获得一次第1名', '1', '5000', '0', '0', '11');
INSERT INTO `quest` VALUES ('21001', '12', '花开富贵', '在任意自由桌打出20倍以上的倍率', '20', '1000', '0', '0', '12');
INSERT INTO `quest` VALUES ('21002', '12', '花开富贵', '在任意自由桌打出40倍以上的倍率', '40', '2000', '0', '0', '12');
INSERT INTO `quest` VALUES ('21003', '12', '花开富贵', '在任意自由桌打出80倍以上的倍率', '80', '3000', '0', '0', '12');
INSERT INTO `quest` VALUES ('21004', '12', '花开富贵', '在任意自由桌打出160倍以上的倍率', '160', '4000', '0', '0', '12');
INSERT INTO `quest` VALUES ('21005', '12', '花开富贵', '在任意自由桌打出320倍以上的倍率', '320', '5000', '0', '0', '12');
INSERT INTO `quest` VALUES ('21101', '13', '玩家杀手', '在任意自由桌让1名玩家破产出局', '1', '1000', '0', '0', '13');
INSERT INTO `quest` VALUES ('21102', '13', '玩家杀手', '在任意自由桌让2名玩家破产出局', '2', '2000', '0', '0', '13');
INSERT INTO `quest` VALUES ('21103', '13', '玩家杀手', '在任意自由桌让3名玩家破产出局', '3', '3000', '0', '0', '13');
INSERT INTO `quest` VALUES ('21104', '13', '玩家杀手', '在任意自由桌让4名玩家破产出局', '4', '4000', '0', '0', '13');
INSERT INTO `quest` VALUES ('21105', '13', '玩家杀手', '在任意自由桌让5名玩家破产出局', '5', '5000', '0', '0', '13');

-- ----------------------------
-- Table structure for robot
-- ----------------------------
DROP TABLE IF EXISTS `robot`;
CREATE TABLE `robot` (
  `id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  `name` char(64) NOT NULL DEFAULT '' COMMENT '名字',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '等级',
  `avatar` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '角色索引',
  `gold` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '金币数量',
  `diamond` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '钻石数量',
  `call_prop` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '小喇叭数量',
  `card_prop` int(10) unsigned DEFAULT '0' COMMENT '记牌器数量',
  `exp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '经验',
  `offline_timestamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '离线时间戳',
  `win_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '累计胜利场数',
  `sign_num` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '签到次数',
  `sign_timestamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '签到时间戳',
  `lost_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '输的盘数',
  `title` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '称号',
  `vip_level` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'VIP等级',
  `vip_exp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'VIP到期时间戳',
  `fruit_slots_gold` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '水果机收益金币数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of robot
-- ----------------------------
INSERT INTO `robot` VALUES ('100000', '赌神降临', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100001', '8150D', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100002', '我要当地主', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100003', 'AMOI A900T', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100004', '拆迁暴发户', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100005', 'ASUS_T00J', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100006', '城管临时工', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100007', 'C8650', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100008', '赢你很简单', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100009', 'Coolpad 5216D', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100010', '老夫有火箭', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100011', 'Coolpad 5951', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100012', '唯一赢家', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100013', 'Coolpad 7268', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100014', '富翁先生', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100015', 'Coolpad 8076D', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100016', '专业赢话费', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100017', 'Coolpad 8670', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100018', '教你斗地主', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100019', 'Coolpad 9190L', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100020', '炸翻天', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100021', 'Coolpad7295+', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100022', '小屁孩', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100023', 'Coolpad8198T', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100024', '就这个节奏', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100025', 'DAKELE MC001', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100026', '搁浅的心', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100027', 'FWS710', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100028', '似水年华', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100029', 'G620S-UL00', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100030', '杰克丹尼', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100031', 'GFIVE A86', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100032', '路灯下的人', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100033', 'GN800', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100034', '霸气外露', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100035', 'GT-I8262D', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100036', '人生须尽欢', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100037', 'GT-I9000', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100038', '斗牛士', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100039', 'GT-I9100', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100040', '只赢不输', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100041', 'GT-I9128', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100042', '抽烟打牌', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100043', 'GT-I9168I', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100044', '独孤求败', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100045', 'GT-I9220', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100046', '爆米花', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100047', 'GT-I9500', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100048', '麒麟臂', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100049', 'GT-N7000', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100050', '红烧肉', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100051', 'GT-S5660', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100052', '朋友你输了', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100053', 'GT-S7278U', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100054', '唯我独尊', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100055', 'GT-S7898I', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100056', '寂寞游戏', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100057', 'H60-L01', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100058', '街头巨星', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100059', 'HM 1SC', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100060', 'HM 2A', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100061', '夜店头牌', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100062', 'HS-T9', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100063', '老夫要炸了', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100064', 'HTC 603e', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100065', '世纪牌王', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100066', 'HTC A9188', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100067', '碾压一切', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100068', 'HTC Desire S', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100069', '骚年英雄', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100070', 'HTC S610d', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100071', '赌桌爵爷', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100072', 'HTC T528d', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100073', '葡京赌王', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100074', 'HTC X515d', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100075', '霸气侧漏', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100076', 'HUAWEI A199', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100077', '只赢你一局', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100078', 'HUAWEI G520-5000', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100079', '街头枭雄', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100080', 'HUAWEI G6-C00', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100081', '霸气萌妹子', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100082', 'HUAWEI G750-T00', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100083', '走你', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100084', 'HUAWEI MT2-L05', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100085', '专业斗地主', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100086', 'HUAWEI T8951', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100087', '小霸王', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100088', '呵呵', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100089', '凹凸曼', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100090', 'K3528', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100091', '觉醒', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100092', 'K-Touch S5', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100093', '文艺范', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100094', 'K-Touch W68a', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100095', '然并卵', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100096', 'LA-Q1', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100097', '砍瓜切菜', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100098', 'Lenovo A390', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100099', '给爷笑一个', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100100', 'Lenovo A760', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100101', '一壶浊酒', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100102', 'Lenovo A828t', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100103', '乡村赌神', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100104', 'Lenovo A889', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100105', '叫我达文西', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100106', 'Lenovo P770', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100107', '肾虚道长', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100108', 'Lenovo S858t', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100109', '胸大有脑', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100110', 'Lenovo Z2w', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100111', '来炸我啊', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100112', '手抖出错牌', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100113', '十年磨一贱', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100114', 'LT18i', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100115', '淫诗一首', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100116', 'LT29i', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100117', '哥来收拾你', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100118', 'M1 note', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100119', 'M2 note', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100120', '盗版牌王', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100121', 'MD239CH', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100122', '俺就是嚣张', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100123', 'MediaPad X1 7.0', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100124', '你愁啥', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100125', 'MI 1S', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100126', '无可救药', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100127', 'MI 2SC', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100128', '妹子快来', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100129', 'MI NOTE LTE', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100130', '你丫闭嘴', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100131', 'MI-ONE Plus', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100132', '魅力老男人', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100133', 'MT788', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100134', '红唇', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100135', 'MX4 Pro', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100136', '施主请自重', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100137', 'N5117', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100138', '地主必须死', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100139', 'NX503A', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100140', '冬锅先森', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100141', 'P200', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100142', '小不点', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100143', 'R6007', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100144', '伏特加', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100145', 'R8007', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100146', '匿名用户', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100147', 'R821T', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100148', '一炸泯恩仇', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100149', 'R830', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100150', '不想起床', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100151', 'Redmi Note 2', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100152', '洒家还要撸', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100153', 'SCH-I739', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100154', '街头暴走', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100155', 'SCH-I939I', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100156', '就是逗你玩', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100157', 'SCH-P729', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100158', '脑残也赢你', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100159', 'SM705', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100160', '你敢炸我吗', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100161', 'SM-G3818', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100162', '老当益壮', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100163', 'SM-G7108V', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100164', '百步穿杨', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100165', 'SM-T211', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100166', '红尘笑', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100167', 'ST18i', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100168', '纸醉金迷', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100169', 'TCL S850', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100170', '跟上', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100171', 'U9500E', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100172', '人生赢家', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100173', 'vivo S7i(t)', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100174', '雨露', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100175', 'vivo X510t', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100176', '雾里看花', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100177', 'vivo Y18L', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100178', '这牌怎么打', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100179', 'vivo Y27', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100180', '秋风', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100181', 'W6HD ICS', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100182', '烟寞', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100183', 'X805', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100184', '落叶', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100185', 'X850', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100186', '沧桑', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100187', 'X9180', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100188', '只抽万宝路', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100189', 'XT615', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100190', '热干面', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100191', 'ZTE N900D', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100192', '河北玉麒麟', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100193', 'ZTE U795', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100194', '话费我来了', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100195', 'ZTE U880E', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100196', '街头等着你', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100197', 'ZTE V889D', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100198', '曾经也贰过', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100199', 'ZTE-T U880', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100200', 'wangkai', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100201', '8150D', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100202', '独一无二', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100203', 'AMOI A900T', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100204', '啪啪啪', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100205', 'ASUS_T00J', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100206', '29529119', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100207', 'C8650', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100208', '广场舞大妈', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100209', 'Coolpad 5216D', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100210', '隔壁老王', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100211', 'Coolpad 5951', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100212', '小心逼有炸', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100213', 'Coolpad 7268', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100214', 'jack', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100215', 'Coolpad 8076D', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100216', '饭团', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100217', 'Coolpad 8670', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100218', '赢的漂亮', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100219', 'Coolpad 9190L', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100220', 'tiantian', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100221', 'Coolpad7295+', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100222', '朗儿里格朗', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100223', 'Coolpad8198T', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100224', '岭南牌王', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100225', 'DAKELE MC001', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100226', '专赢煞逼', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100227', 'FWS710', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100228', '精钢葫芦袜', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100229', 'G620S-UL00', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100230', '洪兴大B哥', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100231', 'GFIVE A86', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100232', '地主也疯狂', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100233', 'GN800', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100234', '俺是小农民', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100235', 'GT-I8262D', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100236', '阿里巴巴', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100237', 'GT-I9000', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100238', '求不坑爹', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100239', 'GT-I9100', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100240', '五毛', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100241', 'GT-I9128', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100242', '胜者为王', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100243', 'GT-I9168I', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100244', '澳门皇帝', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100245', 'GT-I9220', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100246', '烟不离手', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100247', 'GT-I9500', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100248', '机智小农民', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100249', 'GT-N7000', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100250', '地主你等着', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100251', 'GT-S5660', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100252', '没牌也能赢', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100253', 'GT-S7278U', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100254', '街头神话', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100255', 'GT-S7898I', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100256', '逍遥游', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100257', 'H60-L01', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100258', '魔鬼的步伐', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100259', 'HM 1SC', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100260', 'HM 2A', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100261', '放下我的钱', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100262', 'HS-T9', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100263', '赢了就跑', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100264', 'HTC 603e', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100265', '赢我的是狗', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100266', 'HTC A9188', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100267', '叽叽歪歪', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100268', 'HTC Desire S', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100269', '有钱才有脸', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100270', 'HTC S610d', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100271', '绝杀', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100272', 'HTC T528d', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100273', '何曾输过', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100274', 'HTC X515d', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100275', '街头霸王', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100276', 'HUAWEI A199', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100277', '我只用小米', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100278', 'HUAWEI G520-5000', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100279', '含住别说话', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100280', 'HUAWEI G6-C00', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100281', '双天至尊', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100282', 'HUAWEI G750-T00', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100283', '没钱你别来', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100284', 'HUAWEI MT2-L05', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100285', '一把都赢光', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100286', 'HUAWEI T8951', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100287', '七爷', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100288', 'IdeaTabA5000-E', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100289', '拉倒吧兄弟', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100290', 'K3528', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100291', '赢了别跑', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100292', 'K-Touch S5', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100293', '浮生半日闲', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100294', 'K-Touch W68a', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100295', '妹子请留步', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100296', 'LA-Q1', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100297', '此号作废', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100298', 'Lenovo A390', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100299', '好走不送', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100300', 'Lenovo A760', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100301', '无聊', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100302', 'Lenovo A828t', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100303', '一炸就爆头', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100304', 'Lenovo A889', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100305', '快到兜里来', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100306', 'Lenovo P770', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100307', '玩钱不玩命', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100308', 'Lenovo S858t', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100309', '农民的逆袭', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100310', 'Lenovo Z2w', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100311', '谁是高手', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100312', 'LNV-Lenovo A785e', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100313', '超级VIP', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100314', 'LT18i', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100315', '山野村夫', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100316', 'LT29i', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100317', '放马过来', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100318', 'M1 note', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100319', 'M2 note', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100320', '限量版赌神', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100321', 'MD239CH', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100322', '一把全出光', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100323', 'MediaPad X1 7.0', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100324', '草帽撸夫', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100325', 'MI 1S', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100326', '你不炸我炸', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100327', 'MI 2SC', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100328', '花式虐地主', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100329', 'MI NOTE LTE', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100330', '饭团', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100331', 'MI-ONE Plus', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100332', '爽歪歪', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100333', 'MT788', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100334', '骚年你不行', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100335', 'MX4 Pro', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100336', '谁敢一战', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100337', 'N5117', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100338', '赌神高进', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100339', 'NX503A', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100340', '双王四个二', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100341', 'P200', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100342', '蓝海', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100343', 'R6007', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100344', '街头话事人', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100345', 'R8007', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100346', 'iphone', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100347', 'R821T', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100348', '起手就4炸', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100349', 'R830', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100350', '夏天', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100351', 'Redmi Note 2', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100352', '打火机', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100353', 'SCH-I739', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100354', '屌就一个字', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100355', 'SCH-I939I', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100356', '钢哥', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100357', 'SCH-P729', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100358', '狼牙棒', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100359', 'SM705', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100360', '金秋十月', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100361', 'SM-G3818', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100362', '无欲无求', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100363', 'SM-G7108V', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100364', '习惯一个人', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100365', 'SM-T211', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100366', '飞鸟', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100367', 'ST18i', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100368', 'see you', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100369', 'TCL S850', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100370', '蓝色幽灵', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100371', 'U9500E', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100372', '路人甲', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100373', 'Martin', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100374', 'vivo X3L', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100375', '牛哥', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100376', 'vivo Y1', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100377', '一只醉猫', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100378', 'vivo Y22L', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100379', '死宅', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100380', 'VLAND E2013', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100381', '跳跳虫', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100382', 'WT19i', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100383', '阿乐', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100384', 'X817', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100385', '情瘦', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100386', 'X9077', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100387', '堕落无罪', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100388', 'XT1085', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100389', '法师', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100390', 'ZTE N798', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100391', 'dede', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100392', 'ZTE U790', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100393', '首席村长', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100394', 'ZTE U819', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100395', '蜗牛', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100396', 'ZTE U930HD', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100397', '笑看风云', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100398', 'ZTE V985', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100399', '松哥', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100400', '5860A', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100401', '木子', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100402', '8190Q', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100403', '鸡的屁', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100404', 'AMOI N821', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100405', '苹绿果', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100406', 'ASUS_Z00ADB', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100407', '内裤超人', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100408', 'Che2-TL00', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100409', '间歇神经病', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100410', 'Coolpad 5890', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100411', '牌桌终结者', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100412', 'Coolpad 7020', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100413', '蒙哥卡恩', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100414', 'Coolpad 8017-T00', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100415', '土鳖', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100416', 'Coolpad 8297W', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100417', '装逼蚀把米', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100418', 'Coolpad 8729', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100419', '职业赢话费', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100420', 'Coolpad T1', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100421', '不赢不舒服', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100422', 'CoolPad8020+', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100423', '输掉底裤', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100424', 'Coolpad8908', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100425', 'Sage', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100426', 'Find 5', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100427', '爆米花', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100428', 'FWS910', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100429', '不看就弃牌', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100430', 'Galaxy Nexus', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100431', '小赌怡情', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100432', 'GN151', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100433', '搬砖工', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100434', 'GN9005', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100435', '街头小贩', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100436', 'GT-I8558', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100437', '地主请留步', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100438', 'GT-I9070', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100439', '屎里逃生', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100440', 'GT-I9100G', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100441', '妓术总奸', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100442', 'GT-I9128I', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100443', '帅死一条街', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100444', 'GT-I9190', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100445', '爬墙等红杏', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100446', 'GT-I9268', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100447', '幼儿园打手', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100448', 'GT-I9502', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100449', '臣妾做不到', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100450', 'GT-N7102', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100451', '葡萄美酒', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100452', 'GT-S5831i', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100453', '胡渣熟男', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100454', 'GT-S7562', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100455', '老男人', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100456', 'H30-T00', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100457', '赢了还想跑', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100458', '一杯二锅头', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100459', 'HM 1SC', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100460', 'HM 2A', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100461', '不会斗地主', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100462', 'HS-T9', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100463', '出牌我就炸', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100464', 'HTC 603e', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100465', '二哥', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100466', 'HTC A9188', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100467', '心惊肉跳', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100468', 'HTC Desire S', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100469', '一介撸夫', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100470', 'HTC S610d', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100471', '彼岸', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100472', 'HTC T528d', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100473', '没钱怎么玩', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100474', 'HTC X515d', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100475', '很胖的瘦子', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100476', 'HUAWEI A199', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100477', '家禽', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100478', 'HUAWEI G520-5000', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100479', '瘦人必须死', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100480', 'HUAWEI G6-C00', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100481', '大妈杀手', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100482', 'HUAWEI G750-T00', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100483', '帅到自己怕', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100484', 'HUAWEI MT2-L05', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100485', '胸大遮百丑', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100486', 'HUAWEI T8951', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100487', '贫尼想借色', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100488', 'IdeaTabA5000-E', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100489', '闲蛋小超人', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100490', 'K3528', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100491', '一贱你就笑', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100492', 'K-Touch S5', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100493', '暮然回首', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100494', 'K-Touch W68a', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100495', '让你贱笑了', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100496', 'LA-Q1', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100497', '可乐配辣条', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100498', 'Lenovo A390', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100499', '药不能停', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100500', 'Lenovo A760', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100501', '今天星期八', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100502', 'Lenovo A828t', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100503', '裤裆有妖气', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100504', 'Lenovo A889', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100505', '善解人衣', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100506', 'Lenovo P770', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100507', '只赢一百元', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100508', 'Lenovo S858t', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100509', '新丁驾到', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100510', 'Lenovo Z2w', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100511', '七级床震', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100512', 'LNV-Lenovo A785e', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100513', '一朵奇葩', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100514', 'LT18i', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100515', '咸鱼翻身', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100516', 'LT29i', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100517', '海阔天空', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100518', 'M1 note', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100519', '肥皂掉一地', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100520', 'M811', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100521', '少废话给钱', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100522', 'ME525+', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100523', '二逼欢乐多', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100524', '用户不存在', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100525', 'MI 1S', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100526', 'MI 2S', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100527', '乡村逗比', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100528', 'MI 4W', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100529', 'MI NOTE LTE', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100530', '自强不吸', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100531', 'MI-ONE Plus', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100532', '骑驴追火箭', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100533', 'MT788', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100534', '萌汉药', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100535', 'MX4 Pro', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100536', '老衲来阅经', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100537', 'N5117', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100538', '来给爷笑个', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100539', 'NX503A', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100540', '苍老师', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100541', 'P200', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100542', '瞎得瑟', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100543', 'R6007', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100544', '装逼就报警', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100545', 'R8007', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100546', '土豆', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100547', 'R821T', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100548', '队长别开枪', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100549', 'R830', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100550', '棋牌研究僧', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100551', 'Redmi Note 2', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100552', '抠脚大汉', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100553', 'SCH-I739', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100554', '炸弹人', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100555', 'SCH-I939I', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100556', '菜花头', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100557', 'SCH-P729', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100558', '挨打要立正', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100559', 'SM705', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100560', '骑猪来打牌', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100561', 'SM-G3818', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100562', '含笑半步颠', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100563', 'SM-G7108V', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100564', '街道办事处', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100565', 'SM-T211', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100566', '苏打水', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100567', 'ST18i', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100568', '人善被猪欺', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100569', 'TCL S850', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100570', '搞鸡不搞基', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100571', 'U9500E', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100572', '大宝剑', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100573', '人走茶不凉', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100574', '再来一局', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100575', '风中凌乱', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100576', 'vivo Y1', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100577', '灭你就一刀', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100578', 'vivo Y22L', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100579', '见飞机就炸', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100580', 'VLAND E2013', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100581', '恍若隔世', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100582', 'WT19i', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100583', '完美得意外', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100584', 'X817', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100585', '街头往事', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100586', 'X9077', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100587', '热翔炸弹', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100588', 'XT1085', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100589', '罚酒三杯', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100590', 'ZTE N798', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100591', '温酒赢话费', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100592', 'ZTE U790', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100593', '梦醒时分', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100594', 'ZTE U819', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100595', '无脑随便出', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100596', 'ZTE U930HD', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100597', '打得起就打', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100598', 'ZTE V985', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100599', '自由客', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100600', '5860A', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100601', '街头痞子', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100602', '8190Q', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100603', '老炮', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100604', 'AMOI N821', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100605', '炸你一百翻', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100606', 'ASUS_Z00ADB', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100607', '爱拼才会赢', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100608', 'Che2-TL00', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100609', '头断发不乱', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100610', 'Coolpad 5890', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100611', '土老帽', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100612', 'Coolpad 7020', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100613', '西柚', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100614', 'Coolpad 8017-T00', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100615', '怂爷', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100616', 'Coolpad 8297W', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100617', '黑眼圈', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100618', 'Coolpad 8729', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100619', '拾荒捡话费', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100620', 'Coolpad T1', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100621', '一炸情深', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100622', 'CoolPad8020+', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100623', '康忙北鼻', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100624', 'Coolpad8908', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100625', '灰太狼', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100626', 'Find 5', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100627', '法克鱿', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100628', 'FWS910', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100629', '独赢全场', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100630', 'Galaxy Nexus', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100631', '不服就来搞', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100632', 'GN151', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100633', '学不会低调', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100634', 'GN9005', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100635', '强势控局', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100636', 'GT-I8558', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100637', '战无不胜', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100638', 'GT-I9070', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100639', '欲罢不能', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100640', 'GT-I9100G', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100641', '傲视街头', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100642', 'GT-I9128I', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100643', '沾花不惹草', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100644', 'GT-I9190', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100645', '就是任性', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100646', 'GT-I9268', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100647', '菇凉你真骚', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100648', 'GT-I9502', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100649', '浮夸', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100650', 'GT-N7102', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100651', '冷眼观世界', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100652', 'GT-S5831i', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100653', '落寞贵族', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100654', 'GT-S7562', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100655', '没王也能赢', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100656', 'H30-T00', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100657', '妖颜惑众', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100658', '叫我第一名', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100659', 'HM 1SC', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100660', 'HM 2A', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100661', '小角色', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100662', 'HS-T9', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100663', '群众演员', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100664', 'HTC 603e', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100665', '不离不弃', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100666', 'HTC A9188', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100667', '碎梦', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100668', 'HTC Desire S', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100669', '孩儿特爹', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100670', 'HTC S610d', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100671', '独占你心', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100672', 'HTC T528d', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100673', '姐就是拽', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100674', 'HTC X515d', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100675', 'Liquor', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100676', 'HUAWEI A199', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100677', '皇者何畏', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100678', 'HUAWEI G520-5000', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100679', '哥只是传说', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100680', 'HUAWEI G6-C00', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100681', '威震天', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100682', 'HUAWEI G750-T00', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100683', '快到碗里来', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100684', 'HUAWEI MT2-L05', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100685', '朕射你无罪', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100686', 'HUAWEI T8951', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100687', '吾本轻狂', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100688', '麻婆豆腐', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100689', '不败的神话', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100690', 'K3528', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100691', '听天由命', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100692', 'K-Touch S5', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100693', '从未被超越', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100694', '坑的就是你', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100695', '人在塔在', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100696', '锋芒毕露', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100697', '此号已被封', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100698', 'Lenovo A390', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100699', '三岁就狠拽', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100700', 'Lenovo A760', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100701', '不作不会死', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100702', '命里不缺金', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100703', 'Lenovo A830', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100704', '单身照样嗨', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100705', '带你装逼', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100706', 'Lenovo P770', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100707', '你妈嫌我帅', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100708', '有本事咬我', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100709', 'Lenovo S890', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100710', '都是我的菜', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100711', 'LG-D802', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100712', '年少必轻狂', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100713', 'LT15i', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100714', '痞爷', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100715', 'LT26i', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100716', '狗头军师', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100717', 'M040', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100718', 'M1 note', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100719', 'M2 note', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100720', '炸了我就跑', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100721', 'MD239CH', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100722', '我爱吃西瓜', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100723', '打你个飞机', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100724', '漂流瓶', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100725', 'MI 1S', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100726', 'MI 2S', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100727', 'MI 2SC', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100728', '可乐不加冰', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100729', 'MI NOTE LTE', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100730', '孤灯夜影', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100731', 'MI-ONE Plus', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100732', '春天里', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100733', 'MT788', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100734', '辣条哥', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100735', 'MX4 Pro', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100736', 'Gentlem', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100737', 'N5117', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100738', '烟圈', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100739', 'NX503A', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100740', '我只想静静', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100741', 'P200', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100742', '早开的晚霞', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100743', 'R6007', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100744', '日进斗金', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100745', 'R8007', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100746', '街头扛把子', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100747', 'R821T', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100748', '帅到亮瞎眼', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100749', 'R830', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100750', 'Ronin', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100751', '小心有炸', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100752', 'RSD-S8008', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100753', '毁人不倦', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100754', 'SCH-I939', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100755', '再回首', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100756', 'SCH-N719', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100757', '快乐至上', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100758', 'SGH-T959', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100759', '一贱倾心', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100760', 'SM-C101', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100761', '午夜游子', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100762', 'SM-G7108', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100763', '农民的逆袭', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100764', 'SM-G8508S', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100765', '西门大官人', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100766', 'SM-T311', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100767', '围观群众', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100768', '想赢就赢', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100769', 'TCL S850', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100770', '士大夫', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100771', 'U9500E', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100772', '小子你别跑', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100773', '清一色', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100774', 'vivo X3L', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100775', '炸弹闷手里', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100776', 'vivo Y1', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100777', '一手同花顺', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100778', 'vivo Y22L', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100779', '输完就走', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100780', '输了不给钱', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100781', 'W6HD ICS', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100782', '万恶赢为首', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100783', 'X805', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100784', '翻身把歌唱', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100785', 'X850', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100786', '房地产老板', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100787', 'X9180', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100788', '吃大户', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100789', 'XT615', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100790', '农民工进城', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100791', '斗斗斗地主', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100792', 'ZTE U790', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100793', '飞机带翅膀', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100794', 'ZTE U819', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100795', '春天的故事', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100796', '地主不管饭', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100797', 'ZTE V889D', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100798', '酒麻木', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100799', 'ZTE-T U880', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100800', '就不让你过', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100801', '内奸', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100802', '8190Q', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100803', '做你的笼子', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100804', 'AMOI N821', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100805', '糯米包油条', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100806', 'ASUS_Z00ADB', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100807', '煎饼果子', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100808', 'Che2-TL00', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100809', '梦里寻花', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100810', 'Coolpad 5890', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100811', '看不见我', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100812', 'Coolpad 7020', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100813', 'Coolpad 7268', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100814', '周杰伦', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100815', 'Coolpad 8076D', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100816', '十三妹', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100817', 'Coolpad 8670', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100818', '天牌', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100819', '身高两米一', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100820', '我爱地主婆', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100821', '起名字好难', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100822', '水木年华', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100823', '楚留香', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100824', 'Coolpad8908', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100825', '我爱吃辣条', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100826', '春天在哪里', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100827', 'FWS710', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100828', '我不是间谍', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100829', 'G620S-UL00', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100830', '请叫我叛徒', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100831', '油炸丸子', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100832', 'GN151', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100833', '三四五六七', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100834', 'GN9005', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100835', '跑得快', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100836', 'GT-I8558', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100837', '叫地主', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100838', '非主流农民', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100839', 'GT-I9100', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100840', '罗纳尔多', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100841', 'GT-I9128', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100842', '龙五', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100843', 'GT-I9168I', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100844', '专门抓地主', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100845', 'GT-I9220', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100846', '赢了就走', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100847', 'GT-I9500', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100848', '赢了倒找钱', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100849', '磨叽', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100850', 'GT-N7102', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100851', 'GT-S5660', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100852', '不差钱', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100853', 'GT-S7278U', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100854', '六味地黄丸', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100855', 'GT-S7898I', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100856', 'King', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100857', 'H60-L01', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100858', '管杀不管埋', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100859', 'HM 1SC', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100860', 'HM 2A', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100861', '香奈儿', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100862', 'HS-T9', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100863', '光头强', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100864', 'HTC 603e', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100865', '收保护费', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100866', 'HTC A9188', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100867', '喵家', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100868', 'HTC Desire S', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100869', '白兰地', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100870', 'HTC S610d', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100871', '麻辣烫', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100872', 'HTC T528d', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100873', '求财不要命', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100874', 'HTC X515d', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100875', '琛哥', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100876', 'HUAWEI A199', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100877', 'HUAWEI C8813', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100878', '黑旋风', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100879', '非洲刘德华', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100880', '别炸我', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100881', '黑猫警长', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100882', '一水到底', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100883', '忘记出对二', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100884', '最爱热干面', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100885', '鸡爷', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100886', 'HUAWEI T8951', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100887', '巴班吉达', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100888', 'IdeaTabA5000-E', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100889', '旺财', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100890', 'K3528', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100891', '我不玩猎人', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100892', 'K-Touch S5', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100893', '路飞', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100894', '哇呜', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100895', '云中子', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100896', 'LA-Q1', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100897', '平哥', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100898', 'Lenovo A390', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100899', '午夜屠猪男', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100900', 'Lenovo A760', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100901', '开会玩两把', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100902', 'Lenovo A828t', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100903', '发牌就三炸', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100904', 'Lenovo A889', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100905', '十方俱灭', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100906', 'Lenovo P770', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100907', '收租的来了', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100908', 'Lenovo S858t', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100909', '大浪淘沙', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100910', 'Lenovo Z2w', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100911', 'LG-D802', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100912', '没带公交卡', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100913', 'ETC', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100914', 'LT18i', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100915', '窝窝头', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100916', 'LT29i', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100917', '大老二', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100918', 'M1 note', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100919', 'M2 note', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100920', '小十一狼', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100921', 'MD239CH', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100922', '黄世仁', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100923', '王在哪里', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100924', '雷曼', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100925', 'MI 1S', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100926', 'MI 2S', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100927', 'MI 2SC', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100928', 'MI 4W', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100929', 'MI NOTE LTE', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100930', '二愣子', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100931', 'MI-ONE Plus', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100932', '帕萨特', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100933', 'MT788', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100934', '南霸天', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100935', 'MX4 Pro', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100936', '方便面', '1', '7', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100937', 'N5117', '1', '8', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100938', '两王拆着打', '1', '9', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100939', 'NX503A', '1', '1', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100940', '三胖子', '1', '2', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100941', 'P200', '1', '3', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100942', '十三幺', '1', '4', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100943', 'R6007', '1', '6', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100944', '管上', '1', '8', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100945', 'R8007', '1', '9', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100946', '未接来电', '1', '1', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100947', 'R821T', '1', '2', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100948', 'V587', '1', '3', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100949', 'R830', '1', '4', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100950', '千年杀', '1', '6', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100951', '五粮液', '1', '7', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100952', 'RSD-S8008', '1', '9', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100953', '叽叽叽叽', '1', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100954', 'SCH-I939', '1', '2', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100955', '让你随便出', '1', '3', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100956', 'SCH-N719', '1', '4', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100957', '输了就脱光', '1', '6', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100958', 'SGH-T959', '1', '7', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100959', '外公的姥爷', '1', '8', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100960', 'SM-C101', '1', '1', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100961', '瞄一眼', '1', '2', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100962', 'SM-G7108', '1', '3', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100963', '只看不说话', '1', '4', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100964', 'SM-G8508S', '1', '6', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100965', '自摸', '1', '7', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100966', 'SM-T311', '1', '8', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100967', '誓死不拆王', '1', '9', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100968', '一根油条', '1', '2', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100969', 'TCL S850', '1', '3', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100970', '就不让你过', '1', '4', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100971', 'U9500E', '1', '6', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100972', '炸的去医院', '1', '7', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100973', '手下留情', '1', '8', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100974', 'vivo X3L', '1', '9', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100975', '吊打同花顺', '1', '1', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100976', 'vivo Y1', '1', '3', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100977', '龙少爷', '1', '4', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100978', 'vivo Y22L', '1', '6', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100979', '猪肉刺身', '1', '7', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100980', '想炸不敢炸', '1', '8', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100981', '睡不着', '1', '9', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100982', 'WT19i', '1', '1', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100983', '我爱爱疯', '1', '2', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100984', 'X817', '1', '4', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100985', '不会莫瞎出', '1', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100986', 'X9077', '1', '7', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100987', '搞死不搞残', '1', '8', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100988', 'XT1085', '1', '9', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100989', '我是五花牛', '1', '1', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100990', 'ZTE N798', '1', '2', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100991', '地主招租', '1', '3', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100992', 'ZTE U790', '1', '6', '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100993', '胸前一对王', '1', '7', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100994', 'ZTE U819', '1', '8', '400000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100995', '火星用户', '1', '9', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100996', 'ZTE U930HD', '1', '1', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100997', '没的玩了', '1', '2', '700000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100998', 'ZTE V985', '1', '3', '800000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('100999', '闹眼子', '1', '4', '900000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101000', '5860A', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101001', '8150D', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101002', '8190Q', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101003', 'AMOI A900T', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101004', 'AMOI N821', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101005', 'ASUS_T00J', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101006', 'ASUS_Z00ADB', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101007', 'C8650', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101008', 'Che2-TL00', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101009', 'Coolpad 5216D', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101010', 'Coolpad 5890', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101011', 'Coolpad 5951', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101012', 'Coolpad 7020', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101013', 'Coolpad 7268', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101014', 'Coolpad 8017-T00', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101015', 'Coolpad 8076D', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101016', 'Coolpad 8297W', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101017', 'Coolpad 8670', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101018', 'Coolpad 8729', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101019', 'Coolpad 9190L', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101020', 'Coolpad T1', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101021', 'Coolpad7295+', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101022', 'CoolPad8020+', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101023', 'Coolpad8198T', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101024', 'Coolpad8908', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101025', 'DAKELE MC001', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101026', 'Find 5', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101027', 'FWS710', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101028', 'FWS910', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101029', 'G620S-UL00', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101030', 'Galaxy Nexus', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101031', 'GFIVE A86', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101032', 'GN151', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101033', 'GN800', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101034', 'GN9005', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101035', 'GT-I8262D', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101036', 'GT-I8558', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101037', 'GT-I9000', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101038', 'GT-I9070', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101039', 'GT-I9100', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101040', 'GT-I9100G', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101041', 'GT-I9128', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101042', 'GT-I9128I', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101043', 'GT-I9168I', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101044', 'GT-I9190', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101045', 'GT-I9220', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101046', 'GT-I9268', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101047', 'GT-I9500', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101048', 'GT-I9502', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101049', 'GT-N7000', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101050', 'GT-N7102', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101051', 'GT-S5660', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101052', 'GT-S5831i', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101053', 'GT-S7278U', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101054', 'GT-S7562', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101055', 'GT-S7898I', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101056', 'H30-T00', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101057', 'H60-L01', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101058', 'Haier HW-W910', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101059', 'HM 1SC', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101060', 'HM 2A', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101061', 'Hol-T00', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101062', 'HS-T9', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101063', 'HS-X8T', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101064', 'HTC 603e', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101065', 'HTC 802w', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101066', 'HTC A9188', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101067', 'HTC D816w', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101068', 'HTC Desire S', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101069', 'HTC EVO 3D X515m', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101070', 'HTC S610d', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101071', 'HTC T327t', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101072', 'HTC T528d', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101073', 'HTC Vision', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101074', 'HTC X515d', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101075', 'HTC Z710t', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101076', 'HUAWEI A199', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101077', 'HUAWEI C8813', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101078', 'HUAWEI G520-5000', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101079', 'HUAWEI G520-T10', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101080', 'HUAWEI G6-C00', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101081', 'HUAWEI G6-U00', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101082', 'HUAWEI G750-T00', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101083', 'HUAWEI MT1-U06', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101084', 'HUAWEI MT2-L05', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101085', 'HUAWEI P6-T00', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101086', 'HUAWEI T8951', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101087', 'HUAWEI Y325-T00', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101088', 'IdeaTabA5000-E', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101089', 'iris708', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101090', 'K3528', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101091', 'k95v21_om', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101092', 'K-Touch S5', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101093', 'K-Touch W619', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101094', 'K-Touch W68a', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101095', 'L39h', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101096', 'LA-Q1', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101097', 'Lenovo A308t', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101098', 'Lenovo A390', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101099', 'Lenovo A630t', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101100', 'Lenovo A760', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101101', 'Lenovo A808t', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101102', 'Lenovo A828t', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101103', 'Lenovo A830', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101104', 'Lenovo A889', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101105', 'Lenovo K50-T5', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101106', 'Lenovo P770', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101107', 'Lenovo S810t', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101108', 'Lenovo S858t', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101109', 'Lenovo S890', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101110', 'Lenovo Z2w', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101111', 'LG-D802', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101112', 'LNV-Lenovo A785e', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101113', 'LT15i', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101114', 'LT18i', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101115', 'LT26i', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101116', 'LT29i', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101117', 'M040', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101118', 'M1 note', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101119', 'M2 note', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101120', 'M811', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101121', 'MD239CH', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101122', 'ME525+', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101123', 'MediaPad X1 7.0', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101124', 'MEILING-I9300', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101125', 'MI 1S', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101126', 'MI 2S', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101127', 'MI 2SC', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101128', 'MI 4W', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101129', 'MI NOTE LTE', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101130', 'Micromax A102', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101131', 'MI-ONE Plus', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101132', 'MOT-XT553', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101133', 'MT788', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101134', 'MX4', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101135', 'MX4 Pro', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101136', 'N1T', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101137', 'N5117', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101138', 'Nexus 4', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101139', 'NX503A', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101140', 'NX505J', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101141', 'P200', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101142', 'R2017', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101143', 'R6007', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101144', 'R7005', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101145', 'R8007', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101146', 'R811', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101147', 'R821T', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101148', 'R823T', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101149', 'R830', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101150', 'R831S', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101151', 'Redmi Note 2', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101152', 'RSD-S8008', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101153', 'SCH-I739', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101154', 'SCH-I939', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101155', 'SCH-I939I', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101156', 'SCH-N719', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101157', 'SCH-P729', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101158', 'SGH-T959', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101159', 'SM705', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101160', 'SM-C101', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101161', 'SM-G3818', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101162', 'SM-G7108', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101163', 'SM-G7108V', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101164', 'SM-G8508S', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101165', 'SM-T211', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101166', 'SM-T311', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101167', 'ST18i', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101168', 'T1', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101169', 'TCL S850', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101170', 'U705T', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101171', 'U9500E', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101172', 'V185', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101173', 'vivo S7i(t)', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101174', 'vivo X3L', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101175', 'vivo X510t', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101176', 'vivo Y1', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101177', 'vivo Y18L', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101178', 'vivo Y22L', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101179', 'vivo Y27', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101180', 'VLAND E2013', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101181', 'W6HD ICS', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101182', 'WT19i', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101183', 'X805', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101184', 'X817', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101185', 'X850', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101186', 'X9077', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101187', 'X9180', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101188', 'XT1085', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101189', 'XT615', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101190', 'ZTE N798', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101191', 'ZTE N900D', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101192', 'ZTE U790', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101193', 'ZTE U795', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101194', 'ZTE U819', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101195', 'ZTE U880E', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101196', 'ZTE U930HD', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101197', 'ZTE V889D', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101198', 'ZTE V985', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101199', 'ZTE-T U880', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101200', '5860A', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101201', '8150D', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101202', '8190Q', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101203', 'AMOI A900T', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101204', 'AMOI N821', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101205', 'ASUS_T00J', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101206', 'ASUS_Z00ADB', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101207', 'C8650', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101208', 'Che2-TL00', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101209', 'Coolpad 5216D', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101210', 'Coolpad 5890', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101211', 'Coolpad 5951', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101212', 'Coolpad 7020', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101213', 'Coolpad 7268', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101214', 'Coolpad 8017-T00', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101215', 'Coolpad 8076D', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101216', 'Coolpad 8297W', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101217', 'Coolpad 8670', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101218', 'Coolpad 8729', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101219', 'Coolpad 9190L', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101220', 'Coolpad T1', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101221', 'Coolpad7295+', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101222', 'CoolPad8020+', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101223', 'Coolpad8198T', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101224', 'Coolpad8908', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101225', 'DAKELE MC001', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101226', 'Find 5', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101227', 'FWS710', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101228', 'FWS910', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101229', 'G620S-UL00', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101230', 'Galaxy Nexus', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101231', 'GFIVE A86', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101232', 'GN151', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101233', 'GN800', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101234', 'GN9005', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101235', 'GT-I8262D', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101236', 'GT-I8558', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101237', 'GT-I9000', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101238', 'GT-I9070', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101239', 'GT-I9100', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101240', 'GT-I9100G', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101241', 'GT-I9128', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101242', 'GT-I9128I', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101243', 'GT-I9168I', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101244', 'GT-I9190', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101245', 'GT-I9220', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101246', 'GT-I9268', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101247', 'GT-I9500', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101248', 'GT-I9502', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101249', 'GT-N7000', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101250', 'GT-N7102', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101251', 'GT-S5660', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101252', 'GT-S5831i', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101253', 'GT-S7278U', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101254', 'GT-S7562', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101255', 'GT-S7898I', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101256', 'H30-T00', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101257', 'H60-L01', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101258', 'Haier HW-W910', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101259', 'HM 1SC', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101260', 'HM 2A', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101261', 'Hol-T00', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101262', 'HS-T9', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101263', 'HS-X8T', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101264', 'HTC 603e', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101265', 'HTC 802w', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101266', 'HTC A9188', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101267', 'HTC D816w', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101268', 'HTC Desire S', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101269', 'HTC EVO 3D X515m', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101270', 'HTC S610d', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101271', 'HTC T327t', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101272', 'HTC T528d', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101273', 'HTC Vision', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101274', 'HTC X515d', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101275', 'HTC Z710t', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101276', 'HUAWEI A199', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101277', 'HUAWEI C8813', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101278', 'HUAWEI G520-5000', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101279', 'HUAWEI G520-T10', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101280', 'HUAWEI G6-C00', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101281', 'HUAWEI G6-U00', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101282', 'HUAWEI G750-T00', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101283', 'HUAWEI MT1-U06', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101284', 'HUAWEI MT2-L05', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101285', 'HUAWEI P6-T00', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101286', 'HUAWEI T8951', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101287', 'HUAWEI Y325-T00', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101288', 'IdeaTabA5000-E', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101289', 'iris708', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101290', 'K3528', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101291', 'k95v21_om', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101292', 'K-Touch S5', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101293', 'K-Touch W619', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101294', 'K-Touch W68a', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101295', 'L39h', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101296', 'LA-Q1', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101297', 'Lenovo A308t', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101298', 'Lenovo A390', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101299', 'Lenovo A630t', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101300', 'Lenovo A760', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101301', 'Lenovo A808t', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101302', 'Lenovo A828t', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101303', 'Lenovo A830', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101304', 'Lenovo A889', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101305', 'Lenovo K50-T5', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101306', 'Lenovo P770', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101307', 'Lenovo S810t', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101308', 'Lenovo S858t', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101309', 'Lenovo S890', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101310', 'Lenovo Z2w', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101311', 'LG-D802', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101312', 'LNV-Lenovo A785e', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101313', 'LT15i', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101314', 'LT18i', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101315', 'LT26i', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101316', 'LT29i', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101317', 'M040', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101318', 'M1 note', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101319', 'M2 note', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101320', 'M811', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101321', 'MD239CH', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101322', 'ME525+', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101323', 'MediaPad X1 7.0', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101324', 'MEILING-I9300', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101325', 'MI 1S', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101326', 'MI 2S', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101327', 'MI 2SC', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101328', 'MI 4W', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101329', 'MI NOTE LTE', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101330', 'Micromax A102', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101331', 'MI-ONE Plus', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101332', 'MOT-XT553', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101333', 'MT788', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101334', 'MX4', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101335', 'MX4 Pro', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101336', 'N1T', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101337', 'N5117', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101338', 'Nexus 4', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101339', 'NX503A', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101340', 'NX505J', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101341', 'P200', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101342', 'R2017', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101343', 'R6007', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101344', 'R7005', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101345', 'R8007', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101346', 'R811', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101347', 'R821T', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101348', 'R823T', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101349', 'R830', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101350', 'R831S', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101351', 'Redmi Note 2', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101352', 'RSD-S8008', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101353', 'SCH-I739', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101354', 'SCH-I939', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101355', 'SCH-I939I', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101356', 'SCH-N719', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101357', 'SCH-P729', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101358', 'SGH-T959', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101359', 'SM705', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101360', 'SM-C101', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101361', 'SM-G3818', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101362', 'SM-G7108', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101363', 'SM-G7108V', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101364', 'SM-G8508S', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101365', 'SM-T211', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101366', 'SM-T311', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101367', 'ST18i', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101368', 'T1', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101369', 'TCL S850', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101370', 'U705T', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101371', 'U9500E', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101372', 'V185', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101373', 'vivo S7i(t)', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101374', 'vivo X3L', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101375', 'vivo X510t', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101376', 'vivo Y1', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101377', 'vivo Y18L', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101378', 'vivo Y22L', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101379', 'vivo Y27', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101380', 'VLAND E2013', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101381', 'W6HD ICS', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101382', 'WT19i', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101383', 'X805', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101384', 'X817', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101385', 'X850', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101386', 'X9077', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101387', 'X9180', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101388', 'XT1085', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101389', 'XT615', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101390', 'ZTE N798', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101391', 'ZTE N900D', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101392', 'ZTE U790', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101393', 'ZTE U795', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101394', 'ZTE U819', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101395', 'ZTE U880E', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101396', 'ZTE U930HD', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101397', 'ZTE V889D', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101398', 'ZTE V985', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101399', 'ZTE-T U880', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101400', '5860A', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101401', '8150D', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101402', '8190Q', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101403', 'AMOI A900T', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101404', 'AMOI N821', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101405', 'ASUS_T00J', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101406', 'ASUS_Z00ADB', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101407', 'C8650', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101408', 'Che2-TL00', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101409', 'Coolpad 5216D', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101410', 'Coolpad 5890', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101411', 'Coolpad 5951', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101412', 'Coolpad 7020', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101413', 'Coolpad 7268', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101414', 'Coolpad 8017-T00', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101415', 'Coolpad 8076D', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101416', 'Coolpad 8297W', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101417', 'Coolpad 8670', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101418', 'Coolpad 8729', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101419', 'Coolpad 9190L', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101420', 'Coolpad T1', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101421', 'Coolpad7295+', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101422', 'CoolPad8020+', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101423', 'Coolpad8198T', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101424', 'Coolpad8908', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101425', 'DAKELE MC001', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101426', 'Find 5', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101427', 'FWS710', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101428', 'FWS910', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101429', 'G620S-UL00', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101430', 'Galaxy Nexus', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101431', 'GFIVE A86', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101432', 'GN151', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101433', 'GN800', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101434', 'GN9005', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101435', 'GT-I8262D', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101436', 'GT-I8558', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101437', 'GT-I9000', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101438', 'GT-I9070', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101439', 'GT-I9100', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101440', 'GT-I9100G', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101441', 'GT-I9128', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101442', 'GT-I9128I', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101443', 'GT-I9168I', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101444', 'GT-I9190', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101445', 'GT-I9220', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101446', 'GT-I9268', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101447', 'GT-I9500', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101448', 'GT-I9502', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101449', 'GT-N7000', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101450', 'GT-N7102', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101451', 'GT-S5660', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101452', 'GT-S5831i', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101453', 'GT-S7278U', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101454', 'GT-S7562', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101455', 'GT-S7898I', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101456', 'H30-T00', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101457', 'H60-L01', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101458', 'Haier HW-W910', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101459', 'HM 1SC', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101460', 'HM 2A', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101461', 'Hol-T00', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101462', 'HS-T9', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101463', 'HS-X8T', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101464', 'HTC 603e', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101465', 'HTC 802w', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101466', 'HTC A9188', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101467', 'HTC D816w', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101468', 'HTC Desire S', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101469', 'HTC EVO 3D X515m', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101470', 'HTC S610d', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101471', 'HTC T327t', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101472', 'HTC T528d', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101473', 'HTC Vision', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101474', 'HTC X515d', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101475', 'HTC Z710t', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101476', 'HUAWEI A199', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101477', 'HUAWEI C8813', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101478', 'HUAWEI G520-5000', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101479', 'HUAWEI G520-T10', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101480', 'HUAWEI G6-C00', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101481', 'HUAWEI G6-U00', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101482', 'HUAWEI G750-T00', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101483', 'HUAWEI MT1-U06', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101484', 'HUAWEI MT2-L05', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101485', 'HUAWEI P6-T00', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101486', 'HUAWEI T8951', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101487', 'HUAWEI Y325-T00', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101488', 'IdeaTabA5000-E', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101489', 'iris708', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101490', 'K3528', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101491', 'k95v21_om', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101492', 'K-Touch S5', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101493', 'K-Touch W619', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101494', 'K-Touch W68a', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101495', 'L39h', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101496', 'LA-Q1', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101497', 'Lenovo A308t', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101498', 'Lenovo A390', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101499', 'Lenovo A630t', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101500', 'Lenovo A760', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101501', 'Lenovo A808t', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101502', 'Lenovo A828t', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101503', 'Lenovo A830', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101504', 'Lenovo A889', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101505', 'Lenovo K50-T5', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101506', 'Lenovo P770', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101507', 'Lenovo S810t', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101508', 'Lenovo S858t', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101509', 'Lenovo S890', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101510', 'Lenovo Z2w', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101511', 'LG-D802', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101512', 'LNV-Lenovo A785e', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101513', 'LT15i', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101514', 'LT18i', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101515', 'LT26i', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101516', 'LT29i', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101517', 'M040', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101518', 'M1 note', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101519', 'M2 note', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101520', 'M811', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101521', 'MD239CH', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101522', 'ME525+', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101523', 'MediaPad X1 7.0', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101524', 'MEILING-I9300', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101525', 'MI 1S', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101526', 'MI 2S', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101527', 'MI 2SC', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101528', 'MI 4W', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101529', 'MI NOTE LTE', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101530', 'Micromax A102', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101531', 'MI-ONE Plus', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101532', 'MOT-XT553', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101533', 'MT788', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101534', 'MX4', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101535', 'MX4 Pro', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101536', 'N1T', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101537', 'N5117', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101538', 'Nexus 4', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101539', 'NX503A', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101540', 'NX505J', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101541', 'P200', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101542', 'R2017', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101543', 'R6007', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101544', 'R7005', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101545', 'R8007', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101546', 'R811', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101547', 'R821T', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101548', 'R823T', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101549', 'R830', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101550', 'R831S', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101551', 'Redmi Note 2', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101552', 'RSD-S8008', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101553', 'SCH-I739', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101554', 'SCH-I939', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101555', 'SCH-I939I', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101556', 'SCH-N719', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101557', 'SCH-P729', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101558', 'SGH-T959', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101559', 'SM705', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101560', 'SM-C101', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101561', 'SM-G3818', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101562', 'SM-G7108', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101563', 'SM-G7108V', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101564', 'SM-G8508S', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101565', 'SM-T211', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101566', 'SM-T311', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101567', 'ST18i', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101568', 'T1', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101569', 'TCL S850', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101570', 'U705T', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101571', 'U9500E', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101572', 'V185', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101573', 'vivo S7i(t)', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101574', 'vivo X3L', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101575', 'vivo X510t', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101576', 'vivo Y1', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101577', 'vivo Y18L', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101578', 'vivo Y22L', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101579', 'vivo Y27', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101580', 'VLAND E2013', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101581', 'W6HD ICS', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101582', 'WT19i', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101583', 'X805', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101584', 'X817', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101585', 'X850', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101586', 'X9077', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101587', 'X9180', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101588', 'XT1085', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101589', 'XT615', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101590', 'ZTE N798', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101591', 'ZTE N900D', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101592', 'ZTE U790', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101593', 'ZTE U795', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101594', 'ZTE U819', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101595', 'ZTE U880E', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101596', 'ZTE U930HD', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101597', 'ZTE V889D', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101598', 'ZTE V985', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101599', 'ZTE-T U880', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101600', '5860A', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101601', '8150D', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101602', '8190Q', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101603', 'AMOI A900T', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101604', 'AMOI N821', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101605', 'ASUS_T00J', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101606', 'ASUS_Z00ADB', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101607', 'C8650', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101608', 'Che2-TL00', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101609', 'Coolpad 5216D', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101610', 'Coolpad 5890', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101611', 'Coolpad 5951', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101612', 'Coolpad 7020', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101613', 'Coolpad 7268', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101614', 'Coolpad 8017-T00', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101615', 'Coolpad 8076D', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101616', 'Coolpad 8297W', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101617', 'Coolpad 8670', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101618', 'Coolpad 8729', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101619', 'Coolpad 9190L', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101620', 'Coolpad T1', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101621', 'Coolpad7295+', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101622', 'CoolPad8020+', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101623', 'Coolpad8198T', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101624', 'Coolpad8908', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101625', 'DAKELE MC001', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101626', 'Find 5', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101627', 'FWS710', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101628', 'FWS910', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101629', 'G620S-UL00', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101630', 'Galaxy Nexus', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101631', 'GFIVE A86', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101632', 'GN151', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101633', 'GN800', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101634', 'GN9005', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101635', 'GT-I8262D', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101636', 'GT-I8558', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101637', 'GT-I9000', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101638', 'GT-I9070', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101639', 'GT-I9100', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101640', 'GT-I9100G', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101641', 'GT-I9128', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101642', 'GT-I9128I', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101643', 'GT-I9168I', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101644', 'GT-I9190', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101645', 'GT-I9220', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101646', 'GT-I9268', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101647', 'GT-I9500', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101648', 'GT-I9502', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101649', 'GT-N7000', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101650', 'GT-N7102', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101651', 'GT-S5660', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101652', 'GT-S5831i', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101653', 'GT-S7278U', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101654', 'GT-S7562', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101655', 'GT-S7898I', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101656', 'H30-T00', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101657', 'H60-L01', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101658', 'Haier HW-W910', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101659', 'HM 1SC', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101660', 'HM 2A', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101661', 'Hol-T00', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101662', 'HS-T9', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101663', 'HS-X8T', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101664', 'HTC 603e', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101665', 'HTC 802w', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101666', 'HTC A9188', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101667', 'HTC D816w', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101668', 'HTC Desire S', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101669', 'HTC EVO 3D X515m', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101670', 'HTC S610d', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101671', 'HTC T327t', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101672', 'HTC T528d', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101673', 'HTC Vision', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101674', 'HTC X515d', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101675', 'HTC Z710t', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101676', 'HUAWEI A199', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101677', 'HUAWEI C8813', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101678', 'HUAWEI G520-5000', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101679', 'HUAWEI G520-T10', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101680', 'HUAWEI G6-C00', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101681', 'HUAWEI G6-U00', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101682', 'HUAWEI G750-T00', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101683', 'HUAWEI MT1-U06', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101684', 'HUAWEI MT2-L05', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101685', 'HUAWEI P6-T00', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101686', 'HUAWEI T8951', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101687', 'HUAWEI Y325-T00', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101688', 'IdeaTabA5000-E', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101689', 'iris708', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101690', 'K3528', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101691', 'k95v21_om', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101692', 'K-Touch S5', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101693', 'K-Touch W619', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101694', 'K-Touch W68a', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101695', 'L39h', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101696', 'LA-Q1', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101697', 'Lenovo A308t', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101698', 'Lenovo A390', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101699', 'Lenovo A630t', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101700', 'Lenovo A760', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101701', 'Lenovo A808t', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101702', 'Lenovo A828t', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101703', 'Lenovo A830', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101704', 'Lenovo A889', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101705', 'Lenovo K50-T5', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101706', 'Lenovo P770', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101707', 'Lenovo S810t', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101708', 'Lenovo S858t', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101709', 'Lenovo S890', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101710', 'Lenovo Z2w', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101711', 'LG-D802', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101712', 'LNV-Lenovo A785e', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101713', 'LT15i', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101714', 'LT18i', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101715', 'LT26i', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101716', 'LT29i', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101717', 'M040', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101718', 'M1 note', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101719', 'M2 note', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101720', 'M811', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101721', 'MD239CH', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101722', 'ME525+', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101723', 'MediaPad X1 7.0', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101724', 'MEILING-I9300', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101725', 'MI 1S', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101726', 'MI 2S', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101727', 'MI 2SC', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101728', 'MI 4W', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101729', 'MI NOTE LTE', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101730', 'Micromax A102', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101731', 'MI-ONE Plus', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101732', 'MOT-XT553', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101733', 'MT788', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101734', 'MX4', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101735', 'MX4 Pro', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101736', 'N1T', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101737', 'N5117', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101738', 'Nexus 4', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101739', 'NX503A', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101740', 'NX505J', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101741', 'P200', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101742', 'R2017', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101743', 'R6007', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101744', 'R7005', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101745', 'R8007', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101746', 'R811', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101747', 'R821T', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101748', 'R823T', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101749', 'R830', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101750', 'R831S', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101751', 'Redmi Note 2', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101752', 'RSD-S8008', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101753', 'SCH-I739', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101754', 'SCH-I939', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101755', 'SCH-I939I', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101756', 'SCH-N719', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101757', 'SCH-P729', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101758', 'SGH-T959', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101759', 'SM705', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101760', 'SM-C101', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101761', 'SM-G3818', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101762', 'SM-G7108', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101763', 'SM-G7108V', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101764', 'SM-G8508S', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101765', 'SM-T211', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101766', 'SM-T311', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101767', 'ST18i', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101768', 'T1', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101769', 'TCL S850', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101770', 'U705T', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101771', 'U9500E', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101772', 'V185', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101773', 'vivo S7i(t)', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101774', 'vivo X3L', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101775', 'vivo X510t', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101776', 'vivo Y1', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101777', 'vivo Y18L', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101778', 'vivo Y22L', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101779', 'vivo Y27', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101780', 'VLAND E2013', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101781', 'W6HD ICS', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101782', 'WT19i', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101783', 'X805', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101784', 'X817', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101785', 'X850', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101786', 'X9077', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101787', 'X9180', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101788', 'XT1085', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101789', 'XT615', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101790', 'ZTE N798', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101791', 'ZTE N900D', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101792', 'ZTE U790', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101793', 'ZTE U795', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101794', 'ZTE U819', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101795', 'ZTE U880E', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101796', 'ZTE U930HD', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101797', 'ZTE V889D', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101798', 'ZTE V985', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101799', 'ZTE-T U880', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101800', '5860A', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101801', '8150D', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101802', '8190Q', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101803', 'AMOI A900T', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101804', 'AMOI N821', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101805', 'ASUS_T00J', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101806', 'ASUS_Z00ADB', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101807', 'C8650', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101808', 'Che2-TL00', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101809', 'Coolpad 5216D', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101810', 'Coolpad 5890', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101811', 'Coolpad 5951', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101812', 'Coolpad 7020', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101813', 'Coolpad 7268', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101814', 'Coolpad 8017-T00', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101815', 'Coolpad 8076D', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101816', 'Coolpad 8297W', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101817', 'Coolpad 8670', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101818', 'Coolpad 8729', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101819', 'Coolpad 9190L', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101820', 'Coolpad T1', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101821', 'Coolpad7295+', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101822', 'CoolPad8020+', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101823', 'Coolpad8198T', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101824', 'Coolpad8908', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101825', 'DAKELE MC001', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101826', 'Find 5', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101827', 'FWS710', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101828', 'FWS910', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101829', 'G620S-UL00', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101830', 'Galaxy Nexus', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101831', 'GFIVE A86', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101832', 'GN151', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101833', 'GN800', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101834', 'GN9005', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101835', 'GT-I8262D', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101836', 'GT-I8558', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101837', 'GT-I9000', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101838', 'GT-I9070', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101839', 'GT-I9100', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101840', 'GT-I9100G', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101841', 'GT-I9128', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101842', 'GT-I9128I', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101843', 'GT-I9168I', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101844', 'GT-I9190', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101845', 'GT-I9220', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101846', 'GT-I9268', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101847', 'GT-I9500', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101848', 'GT-I9502', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101849', 'GT-N7000', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101850', 'GT-N7102', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101851', 'GT-S5660', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101852', 'GT-S5831i', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101853', 'GT-S7278U', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101854', 'GT-S7562', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101855', 'GT-S7898I', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101856', 'H30-T00', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101857', 'H60-L01', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101858', 'Haier HW-W910', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101859', 'HM 1SC', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101860', 'HM 2A', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101861', 'Hol-T00', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101862', 'HS-T9', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101863', 'HS-X8T', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101864', 'HTC 603e', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101865', 'HTC 802w', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101866', 'HTC A9188', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101867', 'HTC D816w', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101868', 'HTC Desire S', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101869', 'HTC EVO 3D X515m', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101870', 'HTC S610d', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101871', 'HTC T327t', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101872', 'HTC T528d', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101873', 'HTC Vision', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101874', 'HTC X515d', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101875', 'HTC Z710t', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101876', 'HUAWEI A199', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101877', 'HUAWEI C8813', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101878', 'HUAWEI G520-5000', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101879', 'HUAWEI G520-T10', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101880', 'HUAWEI G6-C00', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101881', 'HUAWEI G6-U00', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101882', 'HUAWEI G750-T00', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101883', 'HUAWEI MT1-U06', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101884', 'HUAWEI MT2-L05', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101885', 'HUAWEI P6-T00', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101886', 'HUAWEI T8951', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101887', 'HUAWEI Y325-T00', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101888', 'IdeaTabA5000-E', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101889', 'iris708', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101890', 'K3528', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101891', 'k95v21_om', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101892', 'K-Touch S5', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101893', 'K-Touch W619', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101894', 'K-Touch W68a', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101895', 'L39h', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101896', 'LA-Q1', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101897', 'Lenovo A308t', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101898', 'Lenovo A390', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101899', 'Lenovo A630t', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101900', 'Lenovo A760', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101901', 'Lenovo A808t', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101902', 'Lenovo A828t', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101903', 'Lenovo A830', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101904', 'Lenovo A889', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101905', 'Lenovo K50-T5', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101906', 'Lenovo P770', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101907', 'Lenovo S810t', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101908', 'Lenovo S858t', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101909', 'Lenovo S890', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101910', 'Lenovo Z2w', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101911', 'LG-D802', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101912', 'LNV-Lenovo A785e', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101913', 'LT15i', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101914', 'LT18i', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101915', 'LT26i', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101916', 'LT29i', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101917', 'M040', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101918', 'M1 note', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101919', 'M2 note', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101920', 'M811', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101921', 'MD239CH', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101922', 'ME525+', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101923', 'MediaPad X1 7.0', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101924', 'MEILING-I9300', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101925', 'MI 1S', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101926', 'MI 2S', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101927', 'MI 2SC', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101928', 'MI 4W', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101929', 'MI NOTE LTE', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101930', 'Micromax A102', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101931', 'MI-ONE Plus', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101932', 'MOT-XT553', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101933', 'MT788', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101934', 'MX4', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101935', 'MX4 Pro', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101936', 'N1T', '1', '3', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101937', 'N5117', '1', '4', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101938', 'Nexus 4', '1', '6', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101939', 'NX503A', '1', '7', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101940', 'NX505J', '1', '8', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101941', 'P200', '1', '9', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101942', 'R2017', '1', '1', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101943', 'R6007', '1', '2', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101944', 'R7005', '1', '4', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101945', 'R8007', '1', '6', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101946', 'R811', '1', '7', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101947', 'R821T', '1', '8', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101948', 'R823T', '1', '9', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101949', 'R830', '1', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101950', 'R831S', '1', '2', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101951', 'Redmi Note 2', '1', '3', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101952', 'RSD-S8008', '1', '6', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101953', 'SCH-I739', '1', '7', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101954', 'SCH-I939', '1', '8', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101955', 'SCH-I939I', '1', '9', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101956', 'SCH-N719', '1', '1', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101957', 'SCH-P729', '1', '2', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101958', 'SGH-T959', '1', '3', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101959', 'SM705', '1', '4', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101960', 'SM-C101', '1', '7', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101961', 'SM-G3818', '1', '8', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101962', 'SM-G7108', '1', '9', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101963', 'SM-G7108V', '1', '1', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101964', 'SM-G8508S', '1', '2', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101965', 'SM-T211', '1', '3', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101966', 'SM-T311', '1', '4', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101967', 'ST18i', '1', '6', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101968', 'T1', '1', '8', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101969', 'TCL S850', '1', '9', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101970', 'U705T', '1', '1', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101971', 'U9500E', '1', '2', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101972', 'V185', '1', '3', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101973', 'vivo S7i(t)', '1', '4', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101974', 'vivo X3L', '1', '6', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101975', 'vivo X510t', '1', '7', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101976', 'vivo Y1', '1', '9', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101977', 'vivo Y18L', '1', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101978', 'vivo Y22L', '1', '2', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101979', 'vivo Y27', '1', '3', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101980', 'VLAND E2013', '1', '4', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101981', 'W6HD ICS', '1', '6', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101982', 'WT19i', '1', '7', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101983', 'X805', '1', '8', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101984', 'X817', '1', '1', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101985', 'X850', '1', '2', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101986', 'X9077', '1', '3', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101987', 'X9180', '1', '4', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101988', 'XT1085', '1', '6', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101989', 'XT615', '1', '7', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101990', 'ZTE N798', '1', '8', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101991', 'ZTE N900D', '1', '9', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101992', 'ZTE U790', '1', '2', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101993', 'ZTE U795', '1', '3', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101994', 'ZTE U819', '1', '4', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101995', 'ZTE U880E', '1', '6', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101996', 'ZTE U930HD', '1', '7', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101997', 'ZTE V889D', '1', '8', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101998', 'ZTE V985', '1', '9', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `robot` VALUES ('101999', 'ZTE-T U880', '1', '1', '9000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` int(10) unsigned NOT NULL COMMENT '房间ID',
  `room_type` tinyint(3) unsigned DEFAULT '0' COMMENT '房间类型 0经典自由桌1经典比赛场2经典私人房 3快乐自由桌4快乐比赛场5快乐私人房 6癞子自由桌7癞子比赛场8癞子私人房 9二人自由桌10二人比赛场11二人私人房',
  `name` char(64) DEFAULT '' COMMENT '房间名',
  `bet` int(10) unsigned DEFAULT '0' COMMENT '赌注基数',
  `gold_limit` int(10) unsigned DEFAULT '0' COMMENT '入场金币限制',
  `gold_cost` int(10) unsigned DEFAULT '0' COMMENT '手续费用',
  `award` int(10) unsigned DEFAULT '0' COMMENT '奖励ID',
  `exp` int(10) unsigned DEFAULT '0' COMMENT '牌局经验',
  `gold_award_out` int(10) unsigned DEFAULT '0' COMMENT '淘汰玩家奖励金币数',
  `robot_seed_num` int(10) DEFAULT '0' COMMENT '期望的机器人数量',
  `virtual_player_num` int(11) DEFAULT '0' COMMENT '附加虚拟的玩家人数',
  `prevent_cheat` tinyint(4) DEFAULT '0' COMMENT '是否防作弊',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='斗地主房间奖励表';

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('10101', '0', '1000入场', '200', '1000', '400', '10101', '100', '100', '10', '400', '0');
INSERT INTO `room` VALUES ('10102', '0', '10000入场', '600', '10000', '1200', '10102', '200', '100', '0', '0', '1');
INSERT INTO `room` VALUES ('10103', '0', '100000入场', '6000', '100000', '12000', '10103', '300', '100', '0', '0', '1');
INSERT INTO `room` VALUES ('10201', '2', '10000入场', '600', '10000', '1200', '10201', '100', '100', '0', '0', '0');
INSERT INTO `room` VALUES ('10202', '2', '100000入场', '6000', '100000', '12000', '10202', '200', '100', '0', '0', '0');
INSERT INTO `room` VALUES ('10203', '2', '1000000入场', '20000', '1000000', '40000', '10203', '300', '100', '0', '0', '0');
INSERT INTO `room` VALUES ('20101', '3', '1000入场', '100', '1000', '400', '20101', '100', '100', '10', '300', '0');
INSERT INTO `room` VALUES ('20102', '3', '10000入场', '300', '10000', '1200', '20102', '200', '100', '0', '0', '1');
INSERT INTO `room` VALUES ('20103', '3', '100000入场', '3000', '100000', '12000', '20103', '300', '100', '0', '0', '1');
INSERT INTO `room` VALUES ('20201', '5', '10000入场', '300', '10000', '1200', '20201', '100', '100', '0', '0', '0');
INSERT INTO `room` VALUES ('20202', '5', '100000入场', '3000', '100000', '12000', '20202', '200', '100', '0', '0', '0');
INSERT INTO `room` VALUES ('20203', '5', '1000000入场', '10000', '1000000', '40000', '20203', '300', '100', '0', '0', '0');
INSERT INTO `room` VALUES ('30101', '6', '1000入场', '100', '1000', '400', '30101', '100', '100', '0', '0', '0');
INSERT INTO `room` VALUES ('30102', '6', '10000入场', '300', '10000', '1200', '30102', '200', '100', '0', '0', '1');
INSERT INTO `room` VALUES ('30103', '6', '100000入场', '3000', '100000', '12000', '30103', '300', '100', '0', '0', '1');
INSERT INTO `room` VALUES ('30201', '8', '10000入场', '300', '10000', '1200', '30201', '100', '100', '0', '0', '0');
INSERT INTO `room` VALUES ('30202', '8', '100000入场', '3000', '100000', '12000', '30202', '200', '100', '0', '0', '0');
INSERT INTO `room` VALUES ('30203', '8', '1000000入场', '10000', '1000000', '40000', '30203', '300', '100', '0', '0', '0');

-- ----------------------------
-- Table structure for room_award
-- ----------------------------
DROP TABLE IF EXISTS `room_award`;
CREATE TABLE `room_award` (
  `id` int(10) unsigned NOT NULL COMMENT '奖励ID',
  `round_num` int(10) unsigned DEFAULT '0' COMMENT '奖励局数',
  `round_award_type` tinyint(3) unsigned DEFAULT '0' COMMENT '局数奖励类型 1金币2钻石3小喇叭4记牌器5充值',
  `round_award_data` int(10) unsigned DEFAULT '0' COMMENT '局数奖励数值',
  `ws_award_type_1` tinyint(3) unsigned DEFAULT '0' COMMENT '连胜奖励类型 1金币2钻石3小喇叭4记牌器5充值',
  `ws_award_type_2` tinyint(3) unsigned DEFAULT '0' COMMENT '连胜奖励类型 1金币2钻石3小喇叭4记牌器5充值',
  `ws_award_type_3` tinyint(3) unsigned DEFAULT '0' COMMENT '连胜奖励类型 1金币2钻石3小喇叭4记牌器5充值',
  `ws_award_type_4` tinyint(3) unsigned DEFAULT '0' COMMENT '连胜奖励类型 1金币2钻石3小喇叭4记牌器5充值',
  `ws_award_type_5` tinyint(3) unsigned DEFAULT '0' COMMENT '连胜奖励类型 1金币2钻石3小喇叭4记牌器5充值',
  `ws_award_type_6` tinyint(3) unsigned DEFAULT '0' COMMENT '连胜奖励类型 1金币2钻石3小喇叭4记牌器5充值',
  `ws_award_type_7` tinyint(3) unsigned DEFAULT '0' COMMENT '连胜奖励类型 1金币2钻石3小喇叭4记牌器5充值',
  `ws_award_type_8` tinyint(3) unsigned DEFAULT '0' COMMENT '连胜奖励类型 1金币2钻石3小喇叭4记牌器5充值',
  `ws_award_type_9` tinyint(3) unsigned DEFAULT '0' COMMENT '连胜奖励类型 1金币2钻石3小喇叭4记牌器5充值',
  `ws_award_data_1` int(10) unsigned DEFAULT '0' COMMENT '连胜奖励数',
  `ws_award_data_2` int(10) unsigned DEFAULT '0' COMMENT '连胜奖励数',
  `ws_award_data_3` int(10) unsigned DEFAULT '0' COMMENT '连胜奖励数',
  `ws_award_data_4` int(10) unsigned DEFAULT '0' COMMENT '连胜奖励数',
  `ws_award_data_5` int(10) unsigned DEFAULT '0' COMMENT '连胜奖励数',
  `ws_award_data_6` int(10) unsigned DEFAULT '0' COMMENT '连胜奖励数',
  `ws_award_data_7` int(10) unsigned DEFAULT '0' COMMENT '连胜奖励数',
  `ws_award_data_8` int(10) unsigned DEFAULT '0' COMMENT '连胜奖励数',
  `ws_award_data_9` int(10) unsigned DEFAULT '0' COMMENT '连胜奖励数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房间基本奖励表';

-- ----------------------------
-- Records of room_award
-- ----------------------------
INSERT INTO `room_award` VALUES ('10101', '5', '1', '100', '1', '1', '1', '1', '1', '1', '1', '1', '1', '10', '20', '30', '40', '50', '60', '70', '80', '100');
INSERT INTO `room_award` VALUES ('10102', '5', '2', '10', '1', '1', '1', '1', '1', '1', '1', '1', '1', '50', '100', '150', '200', '250', '300', '350', '400', '500');
INSERT INTO `room_award` VALUES ('10103', '5', '2', '100', '1', '1', '1', '1', '1', '1', '1', '1', '1', '500', '1000', '1500', '2000', '2500', '3000', '3500', '4000', '5000');
INSERT INTO `room_award` VALUES ('10201', '5', '2', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `room_award` VALUES ('10202', '5', '2', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `room_award` VALUES ('10203', '5', '2', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `room_award` VALUES ('20101', '5', '1', '100', '1', '1', '1', '1', '1', '1', '1', '1', '1', '10', '20', '30', '40', '50', '60', '70', '80', '100');
INSERT INTO `room_award` VALUES ('20102', '5', '2', '10', '1', '1', '1', '1', '1', '1', '1', '1', '1', '50', '100', '150', '200', '250', '300', '350', '400', '500');
INSERT INTO `room_award` VALUES ('20103', '5', '2', '100', '1', '1', '1', '1', '1', '1', '1', '1', '1', '500', '1000', '1500', '2000', '2500', '3000', '3500', '4000', '5000');
INSERT INTO `room_award` VALUES ('20201', '5', '2', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `room_award` VALUES ('20202', '5', '2', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `room_award` VALUES ('20203', '5', '2', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `room_award` VALUES ('30101', '5', '1', '100', '1', '1', '1', '1', '1', '1', '1', '1', '1', '10', '20', '30', '40', '50', '60', '70', '80', '100');
INSERT INTO `room_award` VALUES ('30102', '5', '2', '10', '1', '1', '1', '1', '1', '1', '1', '1', '1', '50', '100', '150', '200', '250', '300', '350', '400', '500');
INSERT INTO `room_award` VALUES ('30103', '5', '2', '100', '1', '1', '1', '1', '1', '1', '1', '1', '1', '500', '1000', '1500', '2000', '2500', '3000', '3500', '4000', '5000');
INSERT INTO `room_award` VALUES ('30201', '5', '2', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `room_award` VALUES ('30202', '5', '2', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `room_award` VALUES ('30203', '5', '2', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for sign_award
-- ----------------------------
DROP TABLE IF EXISTS `sign_award`;
CREATE TABLE `sign_award` (
  `sign_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '签到次数',
  `gold` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '奖励的金币数',
  `diamond` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '奖励的钻石数',
  `call_prop` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '喇叭数量',
  `card_prop` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '记牌器数量',
  `icon` int(11) NOT NULL DEFAULT '0' COMMENT '图标',
  PRIMARY KEY (`sign_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='签到奖励配置表';

-- ----------------------------
-- Records of sign_award
-- ----------------------------
INSERT INTO `sign_award` VALUES ('1', '1000', '0', '0', '0', '101');
INSERT INTO `sign_award` VALUES ('2', '1200', '0', '0', '0', '102');
INSERT INTO `sign_award` VALUES ('3', '1400', '0', '0', '0', '103');
INSERT INTO `sign_award` VALUES ('4', '1600', '0', '0', '0', '104');
INSERT INTO `sign_award` VALUES ('5', '1800', '0', '0', '0', '105');
INSERT INTO `sign_award` VALUES ('6', '1000', '0', '0', '0', '101');
INSERT INTO `sign_award` VALUES ('7', '1200', '0', '0', '0', '102');
INSERT INTO `sign_award` VALUES ('8', '1400', '0', '0', '0', '103');
INSERT INTO `sign_award` VALUES ('9', '1600', '0', '0', '0', '104');
INSERT INTO `sign_award` VALUES ('10', '1800', '0', '0', '0', '105');
INSERT INTO `sign_award` VALUES ('11', '1000', '0', '0', '0', '101');
INSERT INTO `sign_award` VALUES ('12', '1200', '0', '0', '0', '102');
INSERT INTO `sign_award` VALUES ('13', '1400', '0', '0', '0', '103');
INSERT INTO `sign_award` VALUES ('14', '1600', '0', '0', '0', '104');
INSERT INTO `sign_award` VALUES ('15', '1800', '0', '0', '0', '105');
INSERT INTO `sign_award` VALUES ('255', '0', '0', '2', '1', '0');

-- ----------------------------
-- Table structure for vip
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `name` char(64) NOT NULL DEFAULT '' COMMENT 'VIP名字',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'VIP持续时间单位天',
  `icon` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'VIP图标',
  `award_gold` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '赠送金币数',
  `name_color` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '名字颜色',
  `sign_add_gold` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '签到增加金币',
  `exp_rate` float NOT NULL DEFAULT '0' COMMENT '经验倍率',
  `buy_gold_rate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '购买金币加成',
  `free_card_prop` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '免费记牌器天数',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '购买价格',
  `match_chip_rate` float DEFAULT '0' COMMENT '比赛积分倍率',
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='VIP升级经验配置表';

-- ----------------------------
-- Records of vip
-- ----------------------------
INSERT INTO `vip` VALUES ('1', 'VIP周卡', '7', '401', '10000', '1', '3000', '1', '0', '7', '10', '2');
INSERT INTO `vip` VALUES ('2', 'VIP月卡', '30', '402', '50000', '2', '3000', '1', '0', '30', '30', '2');
INSERT INTO `vip` VALUES ('3', 'VIP年卡', '360', '403', '1000000', '3', '5000', '1', '5', '360', '300', '3');
