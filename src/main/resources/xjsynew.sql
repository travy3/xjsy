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



CREATE TABLE sys_menu_role
(
    menu_id VARCHAR(64) NOT NULL,
    role_id VARCHAR(64) PRIMARY KEY NOT NULL
);
CREATE TABLE sys_role
(
    id VARCHAR(64) PRIMARY KEY NOT NULL,
    name VARCHAR(200),
    remarks VARCHAR(255),
    delflag CHAR(1),
    create_by VARCHAR(64),
    create_date DATETIME,
    update_by VARCHAR(64),
    update_date DATETIME
);
CREATE TABLE sys_user
(
    id VARCHAR(64) PRIMARY KEY NOT NULL,
    login_name VARCHAR(200),
    password VARCHAR(100),
    real_name VARCHAR(100),
    mobile VARCHAR(200),
    email VARCHAR(200),
    remarks VARCHAR(255),
    delflag CHAR(1),
    business VARCHAR(64),
    create_by VARCHAR(64),
    create_date DATETIME,
    update_by VARCHAR(64),
    update_date DATETIME
);
CREATE TABLE sys_user_role
(
    user_id VARCHAR(64) NOT NULL,
    role_id VARCHAR(64) PRIMARY KEY NOT NULL
);
ALTER TABLE sys_menu_role ADD FOREIGN KEY (menu_id) REFERENCES sys_menu (id);
ALTER TABLE sys_menu_role ADD FOREIGN KEY (role_id) REFERENCES sys_role (id);
CREATE INDEX sys_menu_role_sys_menu_id_fk ON sys_menu_role (menu_id);
ALTER TABLE sys_user_role ADD FOREIGN KEY (role_id) REFERENCES sys_role (id);
ALTER TABLE sys_user_role ADD FOREIGN KEY (user_id) REFERENCES sys_user (id);
CREATE INDEX sys_user_role_sys_user_id_fk ON sys_user_role (user_id);