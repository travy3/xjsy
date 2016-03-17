/*
Navicat MySQL Data Transfer

Source Server         : chenjie
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : xjsynew

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-03-17 17:12:31
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_business
-- ----------------------------

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
  `delFlag` char(1) NOT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `permission` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '根目录', '0', '#', 'N', '0', null, null);
INSERT INTO `sys_menu` VALUES ('2', '系统管理', '1', '#', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('3', '用户管理', '2', '#', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('4', '角色管理', '2', '#', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('5', '菜单管理', '2', '/sys/menu/list', 'Y', '0', null, 'sys:menu:list');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL,
  `role_id` varchar(64) NOT NULL,
  PRIMARY KEY (`role_id`),
  KEY `sys_user_role_sys_user_id_fk` (`user_id`),
  CONSTRAINT `sys_user_role_sys_role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `jeesitenew`.`sys_role` (`id`),
  CONSTRAINT `sys_user_role_sys_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `jeesitenew`.`sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
