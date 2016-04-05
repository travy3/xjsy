/*
Navicat MySQL Data Transfer

Source Server         : chenjie
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : xjsynew

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-04-05 17:16:35
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `info_plan` VALUES ('1', '方案1', '数字1', '0');

-- ----------------------------
-- Table structure for info_planinfo
-- ----------------------------
DROP TABLE IF EXISTS `info_planinfo`;
CREATE TABLE `info_planinfo` (
  `id` varchar(64) NOT NULL,
  `planid` varchar(64) NOT NULL,
  `code` varchar(10) NOT NULL,
  `times` varchar(10) DEFAULT NULL,
  `paper` varchar(10) DEFAULT NULL,
  `num` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_planinfo
-- ----------------------------
INSERT INTO `info_planinfo` VALUES ('1', '1', 's1', '1', '8', '1');
INSERT INTO `info_planinfo` VALUES ('2', '1', 's3', '1', '9', '2');

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
INSERT INTO `sys_menu` VALUES ('2', '系统管理', '1', '#', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('3', '用户管理', '2', '/sys/user', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('4', '角色管理', '2', '/sys/role', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('5', '菜单管理', '2', '/sys/menu/list', 'Y', '0', null, 'sys:menu:list');
INSERT INTO `sys_menu` VALUES ('6', '加盟管理', '1', '#', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('7', '加盟商信息', '6', '/info/business', 'Y', '0', null, 'info:business:list');
INSERT INTO `sys_menu` VALUES ('8', '方案管理', '6', '/info/plan', 'Y', '0', null, 'info:plan:list');

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
INSERT INTO `sys_user` VALUES ('2', 'zhangyu', '22b39462b3fdedc07e911d860434b19be3afa59af3fa9bd98604e6fa', '加盟a', '15032850523', '22@qq.com', null, '0', '1', '1', '2016-03-01 13:32:08', '1', '2016-04-05 08:29:14', '0', '2017-03-27');
INSERT INTO `sys_user` VALUES ('3', 'zhangying123', null, '加盟C', '15032831536', '133@qq.com', null, '0', '1', '1', '2016-03-24 12:48:01', null, '2016-03-30 16:15:32', '0', '2018-03-27');
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
INSERT INTO `sys_user_role` VALUES ('3', '1');
INSERT INTO `sys_user_role` VALUES ('57a61b6d1a0148239b1c5ea55b4346f3', '2');
INSERT INTO `sys_user_role` VALUES ('2', 'dd79e14c2c7b4261ba18f03c7c4ab8a2');
