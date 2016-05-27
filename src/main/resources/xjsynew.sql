/*
Navicat MySQL Data Transfer

Source Server         : chenjie
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : xjsynew

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-05-27 14:56:53
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
INSERT INTO `cus_customer` VALUES ('184d9d479daa4951b057301ea99b8e39', '张宇', '1', '1980-08-08', '15032831553', '合作路', '123', '12', '12', '12', '32', '99', '99', '1', '十八中', '123', '123', '阿斯顿12', '32', '99', '1', null, null, '1', '1', '2016-05-03 15:48:24', '1', '2016-05-26 15:45:30', null, '0');
INSERT INTO `cus_customer` VALUES ('4b1cf64dfc6046a586b31cea2b6a2584', '温柔', '1', '1999-05-26', '15032831554', '3', '2', '21', '2', '2', '3', '23', '12', '1', '阿飞', '22', '12', '第三方', '3', '12', '1', null, null, '0', '1', '2016-05-26 15:10:29', '1', '2016-05-26 15:18:25', null, '0');
INSERT INTO `cus_customer` VALUES ('a12ef2a8720b4825b22eccd02e950c83', '张丽', '1', '2000-05-26', '15032831554', '上海', '12', '212', '32', '32', '21', '2', '1', '1', '家里蹲', '23', '23', '无', '5', '2', '1', null, null, '1', '1', '2016-05-26 14:59:13', '1', '2016-05-26 15:22:03', null, '0');
INSERT INTO `cus_customer` VALUES ('b789c1c2276a495786b79fcffeb940ad', '新增Item1', '1', '2009-05-04', '15032831554', '范甘迪', '12', '21', '23', '23', '123', '1', '2', '1', '十五中', '123', '32', '文身断发', '12', '3', '1', null, '', '1', '1', '2016-05-04 16:36:26', '1', '2016-05-24 16:53:12', null, '0');

-- ----------------------------
-- Table structure for cus_hpmanager
-- ----------------------------
DROP TABLE IF EXISTS `cus_hpmanager`;
CREATE TABLE `cus_hpmanager` (
  `id` varchar(64) NOT NULL,
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
  PRIMARY KEY (`id`),
  KEY `FK_INFOCUSTOMER_ID` (`customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cus_hpmanager
-- ----------------------------
INSERT INTO `cus_hpmanager` VALUES ('011d081df6da433ab061c6dd42ce480c', '184d9d479daa4951b057301ea99b8e39', '62', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('012ce251706a4e4a83225893a2998e3a', '184d9d479daa4951b057301ea99b8e39', '59', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '23号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('024156bab240495097347b1f8c521359', 'a12ef2a8720b4825b22eccd02e950c83', '13', null, null, null, null, null, null, null, null, null, null, '5', 's3', '5', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('02b4ee164d1b44b4aba8a988751247d2', '184d9d479daa4951b057301ea99b8e39', '4', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('04660f44ca244f3d9c81153548a8b0eb', '184d9d479daa4951b057301ea99b8e39', '53', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '55号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('04e6ced92f334eaebfde9903deb10bb3', '184d9d479daa4951b057301ea99b8e39', '87', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('0814e94695104d98b17ac4ee2b916208', 'a12ef2a8720b4825b22eccd02e950c83', '20', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('0c7c6572e2f5484bba30fef6b3f1c2b9', '184d9d479daa4951b057301ea99b8e39', '83', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '55号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('0f0d2f8c03924596b66b629ea7c83b50', '184d9d479daa4951b057301ea99b8e39', '10', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('10e570cbdaff48c3aa670b3fa64db43f', '184d9d479daa4951b057301ea99b8e39', '15', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('1360c4358fb74423b1058cf30f324ecd', '184d9d479daa4951b057301ea99b8e39', '24', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('16f92b3b1cb84135b35c21af91e97c6a', '184d9d479daa4951b057301ea99b8e39', '61', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('1cf19381baab4fca8906a1b71cc4c4dc', '184d9d479daa4951b057301ea99b8e39', '32', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('213676c51daf47c9894990ada15fa1d2', '184d9d479daa4951b057301ea99b8e39', '95', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('213c912382fc4024b19b57578dc6054e', '184d9d479daa4951b057301ea99b8e39', '111', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('223d485df8c94ab8b737d93af8bb2101', 'a12ef2a8720b4825b22eccd02e950c83', '19', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('2315f3f18f6c4247abd35e79c7655519', '184d9d479daa4951b057301ea99b8e39', '104', null, null, null, null, null, null, null, null, null, null, '5', 's5', '4', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('2370c9fe1a594288b9fb247477e674e9', '184d9d479daa4951b057301ea99b8e39', '116', null, null, null, null, null, null, null, null, null, null, '5', 's1', '3', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('2b885c9958824461aeb951737b054cbb', '184d9d479daa4951b057301ea99b8e39', '13', null, null, null, null, null, null, null, null, null, null, '5', 's3', '5', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('2d8bc3ef0ceb4161a5ba0a854c1495a0', '184d9d479daa4951b057301ea99b8e39', '85', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('2e26d63126c44543a5b8b9d6b986e775', '184d9d479daa4951b057301ea99b8e39', '28', null, null, null, null, null, null, null, null, null, null, '5', 's4', '3', '22号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('2f33831c90674fb2b3e593a1e5d9897f', '184d9d479daa4951b057301ea99b8e39', '30', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('3200f901291242b0b78e1611a83d8956', '184d9d479daa4951b057301ea99b8e39', '70', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('3246205df106494a8b077f1244fcacb0', '184d9d479daa4951b057301ea99b8e39', '92', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('33b4d04dba77470399b5c38adcbb3c59', '184d9d479daa4951b057301ea99b8e39', '76', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('33d958a2f50c43d8a129f85ea03306e2', '184d9d479daa4951b057301ea99b8e39', '9', null, null, null, null, null, null, null, null, null, null, '5', 's1', '5', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('3483338a16ad4afe844b9a6ad4e702bd', '184d9d479daa4951b057301ea99b8e39', '44', null, null, null, null, null, null, null, null, null, null, '5', 's5', '4', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('34d8701e5a98447088af2603824cd26f', '184d9d479daa4951b057301ea99b8e39', '34', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('350ae9efad3344f79083677d61ece36c', '184d9d479daa4951b057301ea99b8e39', '6', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('398d500ca0e94757b8169b09fb4e8c79', 'a12ef2a8720b4825b22eccd02e950c83', '12', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('3b806f5728d442c9bd67a159292a84b6', '184d9d479daa4951b057301ea99b8e39', '27', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('3d661e101a914d5dae311abf8573a0f4', '184d9d479daa4951b057301ea99b8e39', '55', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('3dca0922eb1e4b17ae08f8b3b4e83c8f', 'a12ef2a8720b4825b22eccd02e950c83', '24', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('3df607f0ae874abb96d7910952416a02', '184d9d479daa4951b057301ea99b8e39', '80', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('3f08850b74924e019f73c241766744c1', '184d9d479daa4951b057301ea99b8e39', '37', null, null, null, null, null, null, null, null, null, null, '5', 's3', '3', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('3fdcb3ebd12e466bb8a087ae1985afaf', '184d9d479daa4951b057301ea99b8e39', '50', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('41f555ce522447beaec36105c1a34d9c', '184d9d479daa4951b057301ea99b8e39', '22', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('444f13a87e1d4216a7a9f8d9e9568104', '184d9d479daa4951b057301ea99b8e39', '11', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('468fd732e0dc44a6ae9295fefa22e935', '184d9d479daa4951b057301ea99b8e39', '120', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('47d09d0f7cf7408182e98b17468e6bed', '184d9d479daa4951b057301ea99b8e39', '1', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('499f9db2318a4b20b6ed8b67a487595b', 'a12ef2a8720b4825b22eccd02e950c83', '26', null, null, null, null, null, null, null, null, null, null, '5', 's1', '3', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('4aee677a7c4843c2a78b6c1ed64e5c92', '184d9d479daa4951b057301ea99b8e39', '99', null, null, null, null, null, null, null, null, null, null, '5', 's1', '5', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('4c25054045974d91aa2c20e47806ad7d', 'a12ef2a8720b4825b22eccd02e950c83', '11', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('4fd5e25cb4804ef891bf3dcea167118b', '184d9d479daa4951b057301ea99b8e39', '115', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('507cf7dc82a342eeadc90acbc148af84', '184d9d479daa4951b057301ea99b8e39', '40', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('511cc4b85dd74c6f8c82fd2d392677c8', 'a12ef2a8720b4825b22eccd02e950c83', '29', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '23号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('515d90aee15f4e268e224404015c6465', '184d9d479daa4951b057301ea99b8e39', '79', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('51b2d4464f2644738327f401a3d66467', 'a12ef2a8720b4825b22eccd02e950c83', '10', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('53bcedd631ef4c0d857ec400d9a997aa', 'a12ef2a8720b4825b22eccd02e950c83', '16', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('55fc7696155c4225b4e3e083bb1ce57d', 'a12ef2a8720b4825b22eccd02e950c83', '27', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('562160a7e52b48fb9da52dcbfeb56bcb', '184d9d479daa4951b057301ea99b8e39', '23', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '55号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('5b7418e36c5d42478c684773d57cb745', '184d9d479daa4951b057301ea99b8e39', '21', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('5be55bd1e09640a5aeac742493244286', '184d9d479daa4951b057301ea99b8e39', '108', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '5号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('5c155ab700744a9fa8606514aeae5f9b', '184d9d479daa4951b057301ea99b8e39', '26', null, null, null, null, null, null, null, null, null, null, '5', 's1', '3', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('5e8a6252a1e346ea9d42c541f9b785cd', '184d9d479daa4951b057301ea99b8e39', '58', null, null, null, null, null, null, null, null, null, null, '5', 's4', '3', '22号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('62cc63b91872478aa815ab2ae76e5a40', '184d9d479daa4951b057301ea99b8e39', '119', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '23号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('63236e582d904d9493e12ada60b1b38d', '184d9d479daa4951b057301ea99b8e39', '117', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('67e19c914d914016a7b7f8dd4fb7514b', '184d9d479daa4951b057301ea99b8e39', '42', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('6df22a3af1a74926997f5c9848387aa1', 'a12ef2a8720b4825b22eccd02e950c83', '17', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('6e868ced14d04486b8fc0d32fcdb3f7c', 'a12ef2a8720b4825b22eccd02e950c83', '28', null, null, null, null, null, null, null, null, null, null, '5', 's4', '3', '22号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('6f1e4a4a4fa14b4a9062d7ab38d9a046', '184d9d479daa4951b057301ea99b8e39', '113', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '55号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('6fdee54313fd48ca9d7a43ee648fcda7', '184d9d479daa4951b057301ea99b8e39', '118', null, null, null, null, null, null, null, null, null, null, '5', 's4', '3', '22号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('716ede474a8c45b6bdc393f1a1954b63', '184d9d479daa4951b057301ea99b8e39', '63', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '9号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('71fc7e3f39424d0f90550f792f1a1af6', '184d9d479daa4951b057301ea99b8e39', '46', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('73052f54d9524cb79e7ffe8564f0a39b', '184d9d479daa4951b057301ea99b8e39', '45', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('751b4dcd91f04e308e7839175de56661', '184d9d479daa4951b057301ea99b8e39', '54', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('760c2c3812df40de859e74e40098a49d', '184d9d479daa4951b057301ea99b8e39', '81', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('7655699852674f8eae861fe40269a378', '184d9d479daa4951b057301ea99b8e39', '97', null, null, null, null, null, null, null, null, null, null, '5', 's3', '3', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('774a6f2262364d03bb31e519dffb3959', '184d9d479daa4951b057301ea99b8e39', '72', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('779a81e7cdeb4b5d953279ca486d4dff', '184d9d479daa4951b057301ea99b8e39', '73', null, null, null, null, null, null, null, null, null, null, '5', 's3', '5', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('786dcace5caf4919b53c30aca42ccd0a', '184d9d479daa4951b057301ea99b8e39', '84', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('79159cbc1af94d1a897f3a8edf3340d8', '184d9d479daa4951b057301ea99b8e39', '20', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('79daee7e330e4252bde1905fcbcf3eb8', '184d9d479daa4951b057301ea99b8e39', '33', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '9号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('7af368a1b6a344a887875bd6e58fa722', '184d9d479daa4951b057301ea99b8e39', '101', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('7c40078ec5ab4e619722b9a5a9513af3', '184d9d479daa4951b057301ea99b8e39', '64', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('7d7e708d76ea4fddb89c1982d39a046a', 'a12ef2a8720b4825b22eccd02e950c83', '3', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '9号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('8194b576c7b14f1683025ac3e112e3d0', '184d9d479daa4951b057301ea99b8e39', '100', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('8316dd9cf74b47cbb7ae2c220a813468', 'a12ef2a8720b4825b22eccd02e950c83', '14', null, null, null, null, null, null, null, null, null, null, '5', 's5', '4', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('835bc11d1a9c42a5a0f9407defaa7f76', '184d9d479daa4951b057301ea99b8e39', '86', null, null, null, null, null, null, null, null, null, null, '5', 's1', '3', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('85264c70d2cf4bcc962af101377ca635', 'a12ef2a8720b4825b22eccd02e950c83', '18', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '5号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('894a103078ce49a79071e8acf90186fd', 'a12ef2a8720b4825b22eccd02e950c83', '5', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('89e8fa75f1f24970955d6702276fccbc', '184d9d479daa4951b057301ea99b8e39', '16', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('89f312f8fec346b0bfd73296e391ea76', '184d9d479daa4951b057301ea99b8e39', '36', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('8a87b8bb7d3c4731805348a4010119cc', '184d9d479daa4951b057301ea99b8e39', '94', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('8cc5ba2196484b7fab262914e4347f40', '184d9d479daa4951b057301ea99b8e39', '38', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('8cf300dfe859407497de0093386bcc48', '184d9d479daa4951b057301ea99b8e39', '66', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('8ddc08fd23ce4a1e837be420b7edfb29', '184d9d479daa4951b057301ea99b8e39', '19', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('90ef5bc133fe49c09fc9fb4207906884', '184d9d479daa4951b057301ea99b8e39', '90', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('93bda8d61042449993f695481cc614aa', '184d9d479daa4951b057301ea99b8e39', '12', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('9510320c68c34dcf8415deff5a15584d', '184d9d479daa4951b057301ea99b8e39', '8', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('96b7e4b7cd0d4341b4adf01072319f08', '184d9d479daa4951b057301ea99b8e39', '71', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('98a787269c0d41b981783c676be0f11f', '184d9d479daa4951b057301ea99b8e39', '68', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('9df08476e4d745689e2d17cb7e38e1e6', '184d9d479daa4951b057301ea99b8e39', '52', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('9e08b7f8f96e40d68d5712ff8960ad15', 'a12ef2a8720b4825b22eccd02e950c83', '23', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '55号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('9e8fb4265e8f4e0191aa7b2f53d5288b', '184d9d479daa4951b057301ea99b8e39', '74', null, null, null, null, null, null, null, null, null, null, '5', 's5', '4', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('9ec1738be8f0441fac83be0c783dcc99', '184d9d479daa4951b057301ea99b8e39', '25', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('9ee16d437f2448e8a04c0055444efd53', 'a12ef2a8720b4825b22eccd02e950c83', '4', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('9f1a96dcb4084fafa46004046036dc0e', '184d9d479daa4951b057301ea99b8e39', '106', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('9fa8a877b5fb44e698087f52203f15df', 'a12ef2a8720b4825b22eccd02e950c83', '1', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('a016a40bd1ac4684a0ff089c3775c8bd', '184d9d479daa4951b057301ea99b8e39', '75', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('a0b116f829e74c509e5da3a5a53324c7', '184d9d479daa4951b057301ea99b8e39', '89', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '23号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('a298f90c49f0472b8edb084e7dc01e6d', '184d9d479daa4951b057301ea99b8e39', '41', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('a436ab7dfc544148a2fb64bf8c298402', '184d9d479daa4951b057301ea99b8e39', '96', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('a536b6b317c04ae48f534cbe3cdd687d', '184d9d479daa4951b057301ea99b8e39', '18', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '5号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('a5ae5dc12e52419ca98a4398a5ea19f2', 'a12ef2a8720b4825b22eccd02e950c83', '25', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('a688f89901914875be9cd9a923cee86d', '184d9d479daa4951b057301ea99b8e39', '114', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('a6a006a3687e4d679ba5ef061c706a0a', 'a12ef2a8720b4825b22eccd02e950c83', '2', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('a883747dd29e4978971ab111160fedd3', 'a12ef2a8720b4825b22eccd02e950c83', '9', null, null, null, null, null, null, null, null, null, null, '5', 's1', '5', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('ace1965f9b4b4b2195a8f8eb277ec65f', '184d9d479daa4951b057301ea99b8e39', '2', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('ad3473b300ac4972adc194b3c75fc738', '184d9d479daa4951b057301ea99b8e39', '60', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('af09d8d170164fd7920b808f2cd803e8', '184d9d479daa4951b057301ea99b8e39', '107', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('b094970561564ae8a29a9048a5611984', 'b789c1c2276a495786b79fcffeb940ad', '2', '2016-05-26 00:00:00', '12', '23', '43', '32', '12', '32', '21', '43', null, '5', 's1', '1', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('b22a633f92ab4e90bad57a199cef075d', '184d9d479daa4951b057301ea99b8e39', '31', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('b55133ef2d064db2a5f1298f1568a6b3', 'b789c1c2276a495786b79fcffeb940ad', '3', '2016-05-25 00:00:00', '23', '12', '23', '1', '23', '23', '3', '1', null, '5', 's1', '1', '9号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('b5816276e2284bbfb7176169f58d6d60', 'a12ef2a8720b4825b22eccd02e950c83', '6', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('b78f93b0f6d148eeaa22bfe0eb126319', '184d9d479daa4951b057301ea99b8e39', '7', null, null, null, null, null, null, null, null, null, null, '5', 's3', '3', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('b7cbc8dbb40e41e6b67aaee3eaa6f4f7', 'a12ef2a8720b4825b22eccd02e950c83', '8', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('ba15cd0ed22e4f99945ac2dfa260b0fb', '184d9d479daa4951b057301ea99b8e39', '93', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '9号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('ba1bfd2f5a03497cad0726d058ed845b', '184d9d479daa4951b057301ea99b8e39', '105', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('ba5474213c1447f9a95629b46f7e12f9', '184d9d479daa4951b057301ea99b8e39', '112', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('be016a32daa747d5927567baf777b579', '184d9d479daa4951b057301ea99b8e39', '77', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('bfa61770ea614bc99b7cbcadfefd7974', '184d9d479daa4951b057301ea99b8e39', '67', null, null, null, null, null, null, null, null, null, null, '5', 's3', '3', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('bfbac82c36b948ea889e7627658ffdd8', '184d9d479daa4951b057301ea99b8e39', '35', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('c00da920b777499eb17e064a0dd9e3b6', 'a12ef2a8720b4825b22eccd02e950c83', '15', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('c13a8368121044d4ba354bacb410b5c6', '184d9d479daa4951b057301ea99b8e39', '65', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('c3d9bbbae6444cabbdc1ed4d2f850c7e', 'a12ef2a8720b4825b22eccd02e950c83', '30', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('c4bdb71584b541959da2326d084745e1', '184d9d479daa4951b057301ea99b8e39', '110', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('c82499b256764c38802a7b615a881bff', '184d9d479daa4951b057301ea99b8e39', '48', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '5号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('cca05d7581844615b90aad16592d3a31', '184d9d479daa4951b057301ea99b8e39', '69', null, null, null, null, null, null, null, null, null, null, '5', 's1', '5', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('cf37a870458d4f499571cdcade6800b5', '184d9d479daa4951b057301ea99b8e39', '91', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('cfba67eec4ef4924ac5bd4d77a2ff4ca', '184d9d479daa4951b057301ea99b8e39', '14', null, null, null, null, null, null, null, null, null, null, '5', 's5', '4', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('cfbdcf1fde7d4ab2be56eca8ab91479e', '184d9d479daa4951b057301ea99b8e39', '29', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '23号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('d009098890054bb7bb62f74409d43e7a', '184d9d479daa4951b057301ea99b8e39', '43', null, null, null, null, null, null, null, null, null, null, '5', 's3', '5', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('d0481be6026f494182d74249b3f26b32', 'a12ef2a8720b4825b22eccd02e950c83', '22', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('d142c0262060465fa77eefa6b467ca82', '184d9d479daa4951b057301ea99b8e39', '88', null, null, null, null, null, null, null, null, null, null, '5', 's4', '3', '22号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('d531b9acb23440ab8d4badef067b25c8', '184d9d479daa4951b057301ea99b8e39', '82', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('d64b2c5d44644830bc0e17ca3cef9e78', '184d9d479daa4951b057301ea99b8e39', '47', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('d6e1ef8628014239a1d4990fc1e5e222', '184d9d479daa4951b057301ea99b8e39', '109', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('da93af4782aa4a71b30cb10620d4e292', 'b789c1c2276a495786b79fcffeb940ad', '1', '2016-05-24 00:00:00', '32', '12', '32', '12', '12', '32', '32', '12', null, '5', 's2', '1', '7号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('e6f339dab45943108d9514bb99a2fafa', '184d9d479daa4951b057301ea99b8e39', '49', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('e8587499d134400597e37f65e6797912', 'a12ef2a8720b4825b22eccd02e950c83', '21', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('e945dfc8b0284a1b8a684b596e3781c2', '184d9d479daa4951b057301ea99b8e39', '78', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '5号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('ed76477ac325437880c465d0f265f0e2', '184d9d479daa4951b057301ea99b8e39', '56', null, null, null, null, null, null, null, null, null, null, '5', 's1', '3', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('ef0b66d5321f403baab54d29a08999dc', '184d9d479daa4951b057301ea99b8e39', '17', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('f0a3982e3bb54c9db78ff6fcd015744d', '184d9d479daa4951b057301ea99b8e39', '57', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '2号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('f0f23b55178a4c57ae9cb9e6c080cb38', '184d9d479daa4951b057301ea99b8e39', '98', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('f2e579fc0c6f4228b0531c6642ca31a6', '184d9d479daa4951b057301ea99b8e39', '3', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '9号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('f401c8d015be45868bd9a966c9c0e362', '184d9d479daa4951b057301ea99b8e39', '103', null, null, null, null, null, null, null, null, null, null, '5', 's3', '5', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('f4d71dccc71a419fb775bca47fb60b04', '184d9d479daa4951b057301ea99b8e39', '102', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '6号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('f4dc9cca664e45719bf3c15a41ea9d49', '184d9d479daa4951b057301ea99b8e39', '51', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '3号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('f8ce3ca6eede489894b86133422b3359', '184d9d479daa4951b057301ea99b8e39', '39', null, null, null, null, null, null, null, null, null, null, '5', 's1', '5', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('fb3690ff22cd4dc4b916e7fb2660f46e', 'a12ef2a8720b4825b22eccd02e950c83', '7', null, null, null, null, null, null, null, null, null, null, '5', 's3', '3', '8号图纸', null, null);
INSERT INTO `cus_hpmanager` VALUES ('fe078c77ebc8472491808f18244c8be2', '184d9d479daa4951b057301ea99b8e39', '5', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null);

-- ----------------------------
-- Table structure for info_plan
-- ----------------------------
DROP TABLE IF EXISTS `info_plan`;
CREATE TABLE `info_plan` (
  `id` varchar(64) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `levelNo` int(10) DEFAULT NULL,
  `orderNo` int(10) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_plan
-- ----------------------------
INSERT INTO `info_plan` VALUES ('1', '方案1', null, null, '数字1', '1');
INSERT INTO `info_plan` VALUES ('1254549db02a4ffc9b907b7dc05b7955', '5级二期', '5', '2', 'as', '0');
INSERT INTO `info_plan` VALUES ('4', '4级一期方案', '2', '1', '4级一期方案', '0');
INSERT INTO `info_plan` VALUES ('5', '5级一期方案', '5', '1', '5级一期方案', '0');
INSERT INTO `info_plan` VALUES ('500eb43a595943bfb0daaa73479ed157', '方案3', null, null, '阿道夫', '1');
INSERT INTO `info_plan` VALUES ('6', '6级一期方案', '6', '1', '6级一期方案', '0');
INSERT INTO `info_plan` VALUES ('746a9752fbf641e7b27190f4dbca4fcb', '方案2', null, null, '阿斯蒂芬', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

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
INSERT INTO `info_planinfo` VALUES ('30', '4', 's2', '2', '5号图纸', '1');
INSERT INTO `info_planinfo` VALUES ('31', '4', 's1', '2', '2', '2');
INSERT INTO `info_planinfo` VALUES ('32', '5', 's1', '2', '8号图纸', '4');
INSERT INTO `info_planinfo` VALUES ('33', '5', 's1', '1', '8号图纸', '5');
INSERT INTO `info_planinfo` VALUES ('34', '5', 's2', '2', '8号图纸', '6');
INSERT INTO `info_planinfo` VALUES ('35', '5', 's3', '3', '8号图纸', '7');
INSERT INTO `info_planinfo` VALUES ('36', '5', 's2', '4', '8号图纸', '8');
INSERT INTO `info_planinfo` VALUES ('37', '5', 's1', '5', '8号图纸', '9');
INSERT INTO `info_planinfo` VALUES ('38', '5', 's2', '6', '8号图纸', '10');
INSERT INTO `info_planinfo` VALUES ('40', '5', 's3', '5', '6号图纸', '13');
INSERT INTO `info_planinfo` VALUES ('41', '5', 's2', '3', '6号图纸', '12');
INSERT INTO `info_planinfo` VALUES ('42', '5', 's1', '2', '6号图纸', '11');
INSERT INTO `info_planinfo` VALUES ('43', '5', 's2', '2', '6号图纸', '16');
INSERT INTO `info_planinfo` VALUES ('44', '5', 's2', '1', '3号图纸', '15');
INSERT INTO `info_planinfo` VALUES ('45', '5', 's5', '4', '3号图纸', '14');
INSERT INTO `info_planinfo` VALUES ('49', '5', 's2', '2', '2号图纸', '17');
INSERT INTO `info_planinfo` VALUES ('50', '5', 's1', '2', '5号图纸', '18');
INSERT INTO `info_planinfo` VALUES ('51', '5', 's2', '1', '3号图纸', '19');
INSERT INTO `info_planinfo` VALUES ('52', '5', 's3', '2', '7号图纸', '20');
INSERT INTO `info_planinfo` VALUES ('53', '5', 's1', '2', '3号图纸', '21');
INSERT INTO `info_planinfo` VALUES ('54', '5', 's2', '3', '2号图纸', '22');
INSERT INTO `info_planinfo` VALUES ('55', '5', 's3', '2', '55号图纸', '23');
INSERT INTO `info_planinfo` VALUES ('56', '5', 's2', '1', '6号图纸', '24');
INSERT INTO `info_planinfo` VALUES ('57', '5', 's2', '2', '7号图纸', '25');
INSERT INTO `info_planinfo` VALUES ('58', '5', 's1', '3', '3号图纸', '26');
INSERT INTO `info_planinfo` VALUES ('59', '5', 's1', '2', '2号图纸', '27');
INSERT INTO `info_planinfo` VALUES ('60', '5', 's4', '3', '22号图纸', '28');
INSERT INTO `info_planinfo` VALUES ('61', '5', 's2', '4', '23号图纸', '29');
INSERT INTO `info_planinfo` VALUES ('62', '5', 's2', '6', '2号图纸', '30');
INSERT INTO `info_planinfo` VALUES ('63', '1254549db02a4ffc9b907b7dc05b7955', 's2', '2', '23', '1');

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
INSERT INTO `sys_menu` VALUES ('9', '统计', '1', '#', 'Y', '0', null, null);

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
INSERT INTO `sys_menu_role` VALUES ('10', '584eaadeb5d947bfb76a523b029e13cb');
INSERT INTO `sys_menu_role` VALUES ('11', '584eaadeb5d947bfb76a523b029e13cb');
INSERT INTO `sys_menu_role` VALUES ('12', '584eaadeb5d947bfb76a523b029e13cb');
INSERT INTO `sys_menu_role` VALUES ('13', '584eaadeb5d947bfb76a523b029e13cb');

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
INSERT INTO `sys_role` VALUES ('584eaadeb5d947bfb76a523b029e13cb', 'new_jiameng', '新加盟商', '123', '0', '1', '2016-05-25 14:55:54', '1', '2016-05-25 14:55:54');
INSERT INTO `sys_role` VALUES ('a4e9a2cf56fc4cbbafa74f312fec23e4', 'jiamengC', '加盟C', '123', '1', '1', '2016-05-10 15:49:58', '1', '2016-05-10 15:49:58');
INSERT INTO `sys_role` VALUES ('dd79e14c2c7b4261ba18f03c7c4ab8a2', 'jiamengB', '加盟商B', '二级', '1', null, '2016-04-04 23:10:56', null, '2016-04-04 23:10:56');

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
INSERT INTO `sys_user` VALUES ('1', 'admin', '3e4b95dce793847cdc100142c9e835b9af2759877fcd06d1d1f100dc', '管理员', '15032831553', '11@qq.com', null, '0', '1', '1', '2016-03-17 20:15:26', null, '2016-05-26 10:19:11', '0', '2016-03-29');
INSERT INTO `sys_user` VALUES ('2', 'zhangyu', 'c5d61427200aca060709b90aed27a14b36f1877e622c5c0592865e91', '加盟abc', '15032850523', '22@qq.com', null, '0', '1', '1', '2016-03-01 13:32:08', '1', '2016-05-25 16:47:31', '0', '2017-03-27');
INSERT INTO `sys_user` VALUES ('3', 'zhangying123', '1caae8b0fe63380363b79062433faa6e3046cd8cc6cf740dbdfe6ab0', '加盟C1', '15032831536', '133@qq.com', null, '1', '1', '1', '2016-03-24 12:48:01', '1', '2016-04-26 14:36:57', '0', '2018-03-27');
INSERT INTO `sys_user` VALUES ('57a61b6d1a0148239b1c5ea55b4346f3', 'benz', 'b7349aafbbcb24a5552dbd0d32c83649b9d5bd3436f843b955635671', '新增Item1', '15032831553', '123@qq.com', null, '0', '1', null, '2016-03-30 16:48:40', null, '2016-03-30 16:48:40', '0', null);
INSERT INTO `sys_user` VALUES ('7c5f5acfeeab4f1fbcc2afc671ded1d9', 'qingyuan', '3aac2affbe6c082dc479bf7dbd7e2e4b076a2892db5f18ac028eb6a9', '青园账号', '15032831552', 'asd@qq.com', null, '0', '9f44ea18e2864ea59a89dd748e2b7de3', '1', '2016-05-25 14:46:17', '1', '2016-05-25 16:51:01', '0', null);

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
INSERT INTO `sys_user_role` VALUES ('57a61b6d1a0148239b1c5ea55b4346f3', '2');
INSERT INTO `sys_user_role` VALUES ('3', '1');
INSERT INTO `sys_user_role` VALUES ('2', '584eaadeb5d947bfb76a523b029e13cb');
INSERT INTO `sys_user_role` VALUES ('7c5f5acfeeab4f1fbcc2afc671ded1d9', '584eaadeb5d947bfb76a523b029e13cb');
INSERT INTO `sys_user_role` VALUES ('1', '1');
