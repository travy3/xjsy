/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50619
Source Host           : localhost:3306
Source Database       : xjsynew

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2016-03-04 23:26:09
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `sys_menu` VALUES ('5', '菜单管理', '2', '#', 'Y', '0', null, null);
