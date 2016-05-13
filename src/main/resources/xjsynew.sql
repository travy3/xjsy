/*
Navicat MySQL Data Transfer

Source Server         : chenjie
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : xjsynew

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-05-13 17:18:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cus_customer
-- ----------------------------
DROP TABLE IF EXISTS `cus_customer`;
CREATE TABLE `cus_customer` (
  `id` varchar(64) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `glasses_time` varchar(32) DEFAULT NULL COMMENT '带镜史',
  `naked_eye_sight_l` varchar(16) DEFAULT NULL COMMENT '左裸眼视力',
  `naked_eye_sight_r` varchar(16) DEFAULT NULL COMMENT '右裸眼视力',
  `recover_eye_sight_l` varchar(16) DEFAULT NULL,
  `recover_eye_sight_r` varchar(16) DEFAULT NULL,
  `eyeglass_sight_l` varchar(16) DEFAULT NULL,
  `eyeglass_sight_r` varchar(16) DEFAULT NULL,
  `business` varchar(64) DEFAULT NULL,
  `school` varchar(64) DEFAULT NULL,
  `defin_l` varchar(16) DEFAULT NULL COMMENT '清晰度',
  `defin_r` varchar(16) DEFAULT NULL,
  `hasdisease` varchar(255) DEFAULT NULL,
  `eye_control` varchar(255) DEFAULT NULL COMMENT '调节力',
  `eye_strengh` varchar(255) DEFAULT NULL COMMENT '眼肌所承受强度',
  `status` varchar(64) DEFAULT '' COMMENT '治疗状态 1活跃 0流失',
  `cid` varchar(32) DEFAULT NULL COMMENT '客户编号',
  `plan` varchar(16) DEFAULT NULL COMMENT '方案',
  `duration` varchar(16) DEFAULT NULL COMMENT '0带确诊1治疗期2保健期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注消息',
  `delflag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cus_customer
-- ----------------------------
INSERT INTO `cus_customer` VALUES ('184d9d479daa4951b057301ea99b8e39', '张宇', '1', '1980-08-08', '15032831553', '合作路', '123', '12', '12', '12', '32', '123', '123', '1', '十八中', '123', '123', '阿斯顿12', '32', '12', '1', null, null, '0', '1', '2016-05-03 15:48:24', '1', '2016-05-04 14:34:43', null, '0');
INSERT INTO `cus_customer` VALUES ('b789c1c2276a495786b79fcffeb940ad', '新增Item1', '1', '2009-05-04', '15032831554', '范甘迪', '12', '21', '23', '23', '123', '1', '2', '1', '十五中', '123', '32', '文身断发', '12', '3', '1', null, null, '1', '1', '2016-05-04 16:36:26', '1', '2016-05-10 10:12:10', null, '0');

-- ----------------------------
-- Table structure for cus_hpmanager
-- ----------------------------
DROP TABLE IF EXISTS `cus_hpmanager`;
CREATE TABLE `cus_hpmanager` (
  `id` varchar(64) DEFAULT NULL,
  `customer` varchar(64) DEFAULT NULL,
  `no` int(6) DEFAULT NULL COMMENT '次数',
  `date` datetime DEFAULT NULL,
  `beforeAdjustLStart` varchar(32) DEFAULT NULL COMMENT '训练前 调节开始',
  `beforeAdjustRStart` varchar(32) DEFAULT NULL,
  `beforeAdjustLEnd` varchar(32) DEFAULT NULL COMMENT '训练前调节终',
  `beforeAdjustREnd` varchar(32) DEFAULT NULL,
  `trainOne` varchar(32) DEFAULT NULL,
  `trainTwo` varchar(32) DEFAULT NULL,
  `afterAdjustL` varchar(32) DEFAULT NULL,
  `afterAdjustR` varchar(32) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  `plan` varchar(64) DEFAULT NULL COMMENT '所属方案',
  `code` varchar(10) DEFAULT NULL,
  `times` varchar(10) DEFAULT NULL,
  `paper` varchar(10) DEFAULT NULL,
  `optometryL` varchar(32) DEFAULT NULL COMMENT '验光',
  `optometryR` varchar(32) DEFAULT NULL COMMENT '验光',
  KEY `FK_INFOCUSTOMER_ID` (`customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cus_hpmanager
-- ----------------------------
INSERT INTO `cus_hpmanager` VALUES ('da93af4782aa4a71b30cb10620d4e292', null, '1', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('b094970561564ae8a29a9048a5611984', null, '2', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('b55133ef2d064db2a5f1298f1568a6b3', null, '3', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '9号图纸', null, null);

-- ----------------------------
-- Table structure for info_plan
-- ----------------------------
DROP TABLE IF EXISTS `info_plan`;
CREATE TABLE `info_plan` (
  `id` varchar(64) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_plan
-- ----------------------------
INSERT INTO `info_plan` VALUES ('1', '方案1', '数字1', '1');
INSERT INTO `info_plan` VALUES ('4', '4级一期方案', '4级一期方案', '0');
INSERT INTO `info_plan` VALUES ('5', '5级一期方案', '5级一期方案', '0');
INSERT INTO `info_plan` VALUES ('500eb43a595943bfb0daaa73479ed157', '方案3', '阿道夫', '0');
INSERT INTO `info_plan` VALUES ('6', '6级一期方案', '6级一期方案', '0');
INSERT INTO `info_plan` VALUES ('746a9752fbf641e7b27190f4dbca4fcb', '方案2', '阿斯蒂芬', '0');

-- ----------------------------
-- Table structure for info_planinfo
-- ----------------------------
DROP TABLE IF EXISTS `info_planinfo`;
CREATE TABLE `info_planinfo` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `planid` varchar(64) NOT NULL,
  `code` varchar(10) NOT NULL,
  `times` varchar(10) DEFAULT NULL,
  `paper` varchar(10) DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_planinfo
-- ----------------------------
INSERT INTO `info_planinfo` VALUES ('1', '1', 's1', '1', '8', '1');
INSERT INTO `info_planinfo` VALUES ('2', '1', 's2', '1', '9', '2');
INSERT INTO `info_planinfo` VALUES ('3', '1', 's3', '1', '6', '3');
INSERT INTO `info_planinfo` VALUES ('4', '1', 's2', '1', '2', '4');
INSERT INTO `info_planinfo` VALUES ('5', '1', 's2', '2', '3', '5');
INSERT INTO `info_planinfo` VALUES ('6', '746a9752fbf641e7b27190f4dbca4fcb', 's2', '3', '2', '1');
INSERT INTO `info_planinfo` VALUES ('7', '746a9752fbf641e7b27190f4dbca4fcb', 's5', '2', '2', '2');
INSERT INTO `info_planinfo` VALUES ('8', '746a9752fbf641e7b27190f4dbca4fcb', 's2', '1', '2', '3');
INSERT INTO `info_planinfo` VALUES ('9', '746a9752fbf641e7b27190f4dbca4fcb', 's1', '3', '2', '4');
INSERT INTO `info_planinfo` VALUES ('10', '500eb43a595943bfb0daaa73479ed157', 's1', '2', '3', '1');
INSERT INTO `info_planinfo` VALUES ('11', '500eb43a595943bfb0daaa73479ed157', 's34', '2', '2', '2');
INSERT INTO `info_planinfo` VALUES ('12', '500eb43a595943bfb0daaa73479ed157', 's1', '3', '34', '3');
INSERT INTO `info_planinfo` VALUES ('13', '', '2', '3', '4', '1');
INSERT INTO `info_planinfo` VALUES ('14', '13b82f9629cb429c80ce63e9ce0113b1', '2', '3', '4', '1');
INSERT INTO `info_planinfo` VALUES ('15', '4538c1950d60455dbcd698916b12c6d5', '2', '2', '4', '1');
INSERT INTO `info_planinfo` VALUES ('16', '1faa469833b94180901c847958375b0a', '2', '3', '4', '1');
INSERT INTO `info_planinfo` VALUES ('17', '13b82f9629cb429c80ce63e9ce0113b1', '3', '4', '5', '2');
INSERT INTO `info_planinfo` VALUES ('18', '13b82f9629cb429c80ce63e9ce0113b1', '7', '8', '9', '6');
INSERT INTO `info_planinfo` VALUES ('19', '4538c1950d60455dbcd698916b12c6d5', '3', '4', '5', '2');
INSERT INTO `info_planinfo` VALUES ('20', '4538c1950d60455dbcd698916b12c6d5', '3', '4', '5', '2');
INSERT INTO `info_planinfo` VALUES ('21', '4538c1950d60455dbcd698916b12c6d5', '123', '23', '2', '123');
INSERT INTO `info_planinfo` VALUES ('22', '4538c1950d60455dbcd698916b12c6d5', '3', '3', '12', '2');
INSERT INTO `info_planinfo` VALUES ('23', '4538c1950d60455dbcd698916b12c6d5', '2', '3', '4', '1');
INSERT INTO `info_planinfo` VALUES ('24', '5', 's2', '1', '7号图纸', '1');
INSERT INTO `info_planinfo` VALUES ('25', '5', 's1', '1', '8号图纸', '2');
INSERT INTO `info_planinfo` VALUES ('26', '5', 's1', '1', '9号图纸', '3');
INSERT INTO `info_planinfo` VALUES ('27', '6', 's1', '1', '1号图纸', '1');
INSERT INTO `info_planinfo` VALUES ('28', '6', 's2', '1', '2号图纸', '2');
INSERT INTO `info_planinfo` VALUES ('29', '6', 's3', '1', '3号图纸', '3');

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL,
  `pid` varchar(64) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('0', null, '全国', '0', 'qg');
INSERT INTO `sys_area` VALUES ('1', '0', '河北', '1', 'province');
INSERT INTO `sys_area` VALUES ('2', '1', '石家庄', '100', 'city');
INSERT INTO `sys_area` VALUES ('3', '1', '保定', '101', 'city');

-- ----------------------------
-- Table structure for sys_business
-- ----------------------------
DROP TABLE IF EXISTS `sys_business`;
CREATE TABLE `sys_business` (
  `id` varchar(64) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `area` varchar(200) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `master` varchar(64) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `delflag` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_business
-- ----------------------------
INSERT INTO `sys_business` VALUES ('1', '石家庄总店', '2', '青园街220', '1', '15032831553', '11@qqc.com', '0');
INSERT INTO `sys_business` VALUES ('198237dd247241c5bd50c51281aa3211', '加盟商B', '2', 'asd', 'def', '15032831554', 'qwe@qq.com', '1');
INSERT INTO `sys_business` VALUES ('75c1ca28b5bf488b9841077de4d31591', '石家庄总店2', '3', '青园街220', 'asd', '15032831553', '11@qqc.com', '1');
INSERT INTO `sys_business` VALUES ('9f44ea18e2864ea59a89dd748e2b7de3', '石家庄青园店', '2', '青园街220', '张颖', '15032831553', '11@qqc.com', '0');
INSERT INTO `sys_business` VALUES ('c9528829f76b46f0941fc0e0d58ab1b7', '石家庄总店3', '2', '青园街220', '张颖', '15032831553', '11@qqc.com', '1');
INSERT INTO `sys_business` VALUES ('e46e1a443e3d429eb932c42721c71666', '石家庄总店220', '2', '青园街220', 'werw', '15032831553', '11@qqc.com', '1');

-- ----------------------------
-- Table structure for sys_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary`;
CREATE TABLE `sys_dictionary` (
  `id` varchar(64) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `pid` varchar(64) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dictionary
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pid` varchar(64) NOT NULL,
  `href` varchar(2000) DEFAULT NULL,
  `isShow` char(1) NOT NULL,
  `delflag` char(1) NOT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `permission` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '根目录', '0', '#', 'N', '0', null, null);
INSERT INTO `sys_menu` VALUES ('10', '客户管理', '1', '#', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('11', '治疗期', '10', '/cus/1', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('12', '保健期', '10', '/cus/2', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('13', '试用期', '10', '/cus/0', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('2', '系统管理', '1', '#', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('3', '用户管理', '2', '/sys/user', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('4', '角色管理', '2', '/sys/role', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('5', '菜单管理', '2', '/sys/menu/list', 'Y', '0', null, 'sys:menu:list');
INSERT INTO `sys_menu` VALUES ('6', '加盟管理', '1', '#', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('7', '加盟商信息', '6', '/info/business', 'Y', '0', null, 'info:business:list');
INSERT INTO `sys_menu` VALUES ('8', '方案管理', '6', '/info/plan', 'Y', '0', null, 'info:plan:list');
INSERT INTO `sys_menu` VALUES ('9', '日常', '1', '#', 'Y', '0', null, null);

-- ----------------------------
-- Table structure for sys_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_role`;
CREATE TABLE `sys_menu_role` (
  `menu_id` varchar(64) NOT NULL,
  `role_id` varchar(64) NOT NULL,
  KEY `sys_menu_role_sys_menu_id_fk` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu_role
-- ----------------------------
INSERT INTO `sys_menu_role` VALUES ('6', 'dd79e14c2c7b4261ba18f03c7c4ab8a2');
INSERT INTO `sys_menu_role` VALUES ('7', 'dd79e14c2c7b4261ba18f03c7c4ab8a2');
INSERT INTO `sys_menu_role` VALUES ('10', 'a4e9a2cf56fc4cbbafa74f312fec23e4');
INSERT INTO `sys_menu_role` VALUES ('11', 'a4e9a2cf56fc4cbbafa74f312fec23e4');
INSERT INTO `sys_menu_role` VALUES ('12', 'a4e9a2cf56fc4cbbafa74f312fec23e4');
INSERT INTO `sys_menu_role` VALUES ('13', 'a4e9a2cf56fc4cbbafa74f312fec23e4');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL,
  `enname` varchar(255) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'admin', '管理员', '系统', '0', '1', '2016-03-23 15:13:58', '1', '2016-03-23 15:14:01');
INSERT INTO `sys_role` VALUES ('2', 'jiameng', '加盟商', '加盟商', '0', '1', '2016-03-23 15:14:24', '1', '2016-03-23 15:14:26');
INSERT INTO `sys_role` VALUES ('a4e9a2cf56fc4cbbafa74f312fec23e4', 'jiamengC', '加盟C', '123', '0', '1', '2016-05-10 15:49:58', '1', '2016-05-10 15:49:58');
INSERT INTO `sys_role` VALUES ('dd79e14c2c7b4261ba18f03c7c4ab8a2', 'jiamengB', '加盟商B', '二级', '0', null, '2016-04-04 23:10:56', null, '2016-04-04 23:10:56');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL,
  `login_name` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `real_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `business` varchar(64) DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `loginflag` char(1) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '1caae8b0fe63380363b79062433faa6e3046cd8cc6cf740dbdfe6ab0', '管理员', '15032831553', '11@qq.com', null, '0', '1', '1', '2016-03-17 20:15:26', '1', '2016-03-30 14:56:11', '0', '2016-03-29');
INSERT INTO `sys_user` VALUES ('2', 'zhangyu', '587043a9e96edde05070d54559065210f377b4345abda4d00ea8dcef', '加盟a', '15032850523', '22@qq.com', null, '0', '1', '1', '2016-03-01 13:32:08', '1', '2016-05-10 15:51:50', '0', '2017-03-27');
INSERT INTO `sys_user` VALUES ('3', 'zhangying123', null, '加盟C1', '15032831536', '133@qq.com', null, '0', '1', '1', '2016-03-24 12:48:01', '1', '2016-04-26 14:36:57', '0', '2018-03-27');
INSERT INTO `sys_user` VALUES ('57a61b6d1a0148239b1c5ea55b4346f3', 'benz', 'b7349aafbbcb24a5552dbd0d32c83649b9d5bd3436f843b955635671', '新增Item1', '15032831553', '123@qq.com', null, '0', '1', null, '2016-03-30 16:48:40', null, '2016-03-30 16:48:40', '0', null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL,
  `role_id` varchar(64) NOT NULL,
  KEY `sys_user_role_sys_user_id_fk` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('57a61b6d1a0148239b1c5ea55b4346f3', '2');
INSERT INTO `sys_user_role` VALUES ('3', '1');
INSERT INTO `sys_user_role` VALUES ('2', 'a4e9a2cf56fc4cbbafa74f312fec23e4');
