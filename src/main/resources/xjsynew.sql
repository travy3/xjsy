/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50619
Source Host           : localhost:3306
Source Database       : xjsynew

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2016-03-30 23:23:38
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `sys_menu` VALUES ('4', '角色管理', '2', '', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('5', '菜单管理', '2', '/sys/menu/list', 'Y', '0', null, 'sys:menu:list');
INSERT INTO `sys_menu` VALUES ('6', '加盟管理', '1', '#', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('7', '加盟商信息', '6', '/info/business', 'Y', '0', null, 'info:business:list');

-- ----------------------------
-- Table structure for sys_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_role`;
CREATE TABLE `sys_menu_role` (
  `menu_id` varchar(64) NOT NULL,
  `role_id` varchar(64) NOT NULL,
  PRIMARY KEY (`role_id`),
  KEY `sys_menu_role_sys_menu_id_fk` (`menu_id`),
  CONSTRAINT `sys_menu_role_sys_menu_id_fk` FOREIGN KEY (`menu_id`) REFERENCES `jeesitenew`.`sys_menu` (`id`),
  CONSTRAINT `sys_menu_role_sys_role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `jeesitenew`.`sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu_role
-- ----------------------------

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
INSERT INTO `sys_role` VALUES ('1', null, '管理员', '系统', '0', '1', '2016-03-23 15:13:58', '1', '2016-03-23 15:14:01');
INSERT INTO `sys_role` VALUES ('2', null, '加盟商', '加盟商', '0', '1', '2016-03-23 15:14:24', '1', '2016-03-23 15:14:26');

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
INSERT INTO `sys_user` VALUES ('1', 'admin', '6c0edcf1d380c1e0b9bc7ce77fecb7d8428f5219764d0b2f1e133ee7', '管理员', '15032831553', '11@qq.com', null, '0', '1', '1', '2016-03-17 20:15:26', null, '2016-03-30 20:23:59', '0', '2016-03-29');
INSERT INTO `sys_user` VALUES ('2', 'zhangyu', '0439b8af93d04d3df38c717079c4e3b86fe92aee69bb9001ecd64c6e', '加盟a', '15032850523', '22@qq.com', null, '0', '1', '1', '2016-03-01 13:32:08', '1', '2016-03-24 13:32:13', '0', '2017-03-27');
INSERT INTO `sys_user` VALUES ('3', 'zhangying', '0439b8af93d04d3df38c717079c4e3b86fe92aee69bb9001ecd64c6e', '加盟B', '15032831546', '33@qq.com', null, '0', '1', '1', '2016-03-24 12:48:01', '1', '2016-03-24 12:48:03', '0', '2018-03-27');
INSERT INTO `sys_user` VALUES ('5799880e003e468899d1cc706a827842', 'baoding', '48df50df5543b43778386ddd1148880fe3423515f6970dd2f9de3379', '保定', '15032831553', 'qwe@qq.com', null, '0', '1', '1', '2016-03-30 20:22:58', '1', '2016-03-30 20:23:08', '0', null);
INSERT INTO `sys_user` VALUES ('946b4fb5963b4bd3be3dd777f37b1902', 'benz', 'dd05b7f1e351e9212e6fc4e4deb8575296ab45b056e26469d92f7dbb', '梅赛德斯', '15032831553', '323@qq.com', null, '1', '1', '1', '2016-03-30 20:20:36', '1', '2016-03-30 20:20:36', '0', null);

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
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '2');
INSERT INTO `sys_user_role` VALUES ('946b4fb5963b4bd3be3dd777f37b1902', '2');
INSERT INTO `sys_user_role` VALUES ('5799880e003e468899d1cc706a827842', '1');
INSERT INTO `sys_user_role` VALUES ('1', '1');
