/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50619
Source Host           : localhost:3306
Source Database       : xjsy20161230

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2017-06-11 14:26:10
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
  `naked_eye_sight_l` varchar(64) DEFAULT NULL COMMENT '左裸眼视力',
  `naked_eye_sight_r` varchar(64) DEFAULT NULL COMMENT '右裸眼视力',
  `recover_eye_sight_l` varchar(64) DEFAULT NULL,
  `recover_eye_sight_r` varchar(64) DEFAULT NULL,
  `eyeglass_sight_l` varchar(64) DEFAULT NULL,
  `eyeglass_sight_r` varchar(64) DEFAULT NULL,
  `eyeglassesR` varchar(64) DEFAULT NULL COMMENT '带镜视力',
  `eyeglassesL` varchar(64) DEFAULT NULL,
  `dadEyeSightR` varchar(64) DEFAULT NULL,
  `dadEyeSightL` varchar(64) DEFAULT NULL,
  `mumEyeSightR` varchar(64) DEFAULT NULL,
  `mumEyeSightL` varchar(64) DEFAULT NULL,
  `eyeType` varchar(1) DEFAULT NULL COMMENT '近视/远视/散光 1  弱势  2',
  `business` varchar(64) DEFAULT NULL,
  `school` varchar(64) DEFAULT NULL,
  `defin_l` varchar(64) DEFAULT NULL COMMENT '清晰度',
  `defin_r` varchar(64) DEFAULT NULL,
  `hasdisease` varchar(255) DEFAULT NULL,
  `eye_control` varchar(255) DEFAULT NULL COMMENT '调节力',
  `eye_strengh` varchar(255) DEFAULT NULL COMMENT '眼肌所承受强度',
  `status` varchar(64) DEFAULT '' COMMENT '治疗状态 1活跃 0流失',
  `cid` varchar(32) DEFAULT NULL COMMENT '客户编号',
  `plan` varchar(64) DEFAULT NULL COMMENT '方案',
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
INSERT INTO `cus_customer` VALUES ('112b08c6faa04d65a5878a4bc8e35016', '测试2', '0', '2000-02-07', '15032831553', '32', '32', '23', '32', '32', '32', '23', '12', null, null, null, null, null, null, null, '1', '阿斯顿', '32', '32', '32', '32', '32', '1', null, '7945e7b652d648b9aed86b8cff44df63', '1', '1', '2017-02-07 19:50:52', '1', '2017-04-30 14:36:29', null, '0');
INSERT INTO `cus_customer` VALUES ('14acf216023640668c16f28f40986012', '测试1', '0', '2002-01-31', '15032831553', '12', '12', '12', '12', '12', '12', '12', '12', null, null, null, null, null, null, null, '1', '武学校', '12', '12', '12', '12', '12', '1', null, '6', '1', '1', '2017-01-31 15:20:14', '1', '2017-01-31 15:14:16', null, '0');
INSERT INTO `cus_customer` VALUES ('157963dd9f8a48c4b9b5ab3fd9d6eb07', '冯静远', '0', '1999-07-15', '13315150652', '无', '半年', '0.25（1）0.25+2', '0.3（1）0.3+1', '1.0-', '1.0', '-1.75DS', '-1.75DS', null, null, null, null, null, null, null, '1', '草场街小学4年级', '0.6', '0.6', '无', '6', '6', '1', null, '6', '1', '1', '2016-07-15 08:05:35', '1', '2016-08-11 16:57:35', null, '0');
INSERT INTO `cus_customer` VALUES ('184d9d479daa4951b057301ea99b8e39', '宋佳沐', '1', '2010-03-01', '18603178103', '无', '一年半', '0.3+2', '0.3+2', '0.5', '0.5', '+1.50+2.00*90', '+1.50+2.00*90', null, null, null, null, null, null, null, '1', '东风西路学前班', '0.5', '0.5', '无', '6', '6', '1', null, '6', '1', '1', '2016-05-03 15:48:24', '1', '2016-08-14 10:58:44', null, '0');
INSERT INTO `cus_customer` VALUES ('1f1dc4cf8e294c5293b81c828238b614', '付俊杰', '1', '2009-12-21', '18032285357', 'WU', '1.5年', '0.5', '0.8', '0.8-', '1.0-', '+1.25DS-2.50DC', '+0.75DS-1.00DC', null, null, null, null, null, null, null, '1', '东风小学', '0.8', '0.8', 'WU', '6', '6', '1', null, '6', '1', '1', '2016-12-21 20:11:02', '1', '2016-12-29 18:48:54', null, '0');
INSERT INTO `cus_customer` VALUES ('29999bdfe94446a89fe0d1a764e05603', '三系', '0', '2000-05-10', '15032831553', '啊四大皆空', '45', '21', '45', '1', '452', '23', '23', '2', '21', '1', '2', '2', '3', '2', '1', 'bmw', '1', '21', '4', '2', '1', '1', null, '2ef834da83b5423bb7a0824f78ff311c', '1', '1', '2017-05-29 21:33:28', '1', '2017-06-05 21:22:47', null, '0');
INSERT INTO `cus_customer` VALUES ('3424bf3069a84207a05543ed0fb25b22', '凯迪', '0', '1999-05-07', '15032831554', '12', '12', '2', '1', '23', '32', '32', '12', '12', '45', '65', '45', '123', '285', '2', '1', '185', '45', '12', '53', '78', '98', '1', null, '7945e7b652d648b9aed86b8cff44df63', '1', '1', '2017-05-07 19:40:58', '1', '2017-05-07 19:41:18', null, '0');
INSERT INTO `cus_customer` VALUES ('4b1cf64dfc6046a586b31cea2b6a2584', '张子卓', '0', '2006-01-22', '15032831554', 'WU', '2', '0.25+2', '0.2(1)0.2+1', '1.0', '1.0', '-3.25DS', '-3.75DS', null, null, null, null, null, null, '', '1', '维明路小学5年级', '22', '12', 'WU', '6', '6', '1', null, '6', '1', '1', '2016-05-26 15:10:29', '1', '2016-12-29 18:59:52', null, '0');
INSERT INTO `cus_customer` VALUES ('530d6bc51bd94bef9bc88442dd69a277', '柳家茵', '1', '2008-01-11', '18633817092', 'WU', '两年', '0.4(1)0.5+3', '0.5(1)0.5+2', '1.0-', '1.0-', '-0.50-0.75*15', '-0.50DS-0.50*165', null, null, null, null, null, null, '', '1', '维明路小学', '0.5(2)0.5+3', '0.4(1)0.5+4', 'WU', '6', '6', '1', null, null, '1', '1', '2016-08-11 08:44:33', '1', '2016-08-11 15:59:18', null, '0');
INSERT INTO `cus_customer` VALUES ('5e98bfdb325c40c6b4628b51125ac953', '年度', '1', '1998-04-16', '15032831556', '23', '23', '1', '23', '23', '23', '2', '23', '32', '32', '23', '23', '23', '23', '1', '1', '阿萨德吉林省', '23', '23', '大师法撒旦法', '23', '23', '1', null, null, '0', '1', '2017-04-30 14:32:00', '1', '2017-04-30 14:32:16', null, '0');
INSERT INTO `cus_customer` VALUES ('91319767cc08408190fb317d04e52f7c', '程怡凡', '1', '2009-11-09', '13931896459', '无', '无', '0.3', '0.4', '1.0', '1.0', '&mdash;0.75DS', '&mdash;0.50DS', null, null, null, null, null, null, '', '1', '中山路小学二年级', '0.6', '0.5', '无', '6', '6', '1', null, '6', '1', '1', '2016-11-09 22:14:52', '1', '2016-12-29 19:30:29', null, '0');
INSERT INTO `cus_customer` VALUES ('a12ef2a8720b4825b22eccd02e950c83', '张丽', '1', '2000-05-26', '15032831554', '上海', '12', '212', '32', '32', '21', '2', '1', null, null, null, null, null, null, '', '1', '家里蹲', '23', '23', '无', '5', '2', '1', null, '6', '1', '1', '2016-05-26 14:59:13', '1', '2016-11-09 22:07:02', null, '0');
INSERT INTO `cus_customer` VALUES ('b045771bc1c04aad8ab005a8591f5bdf', '张颖', '1', '2007-07-15', '13931168370', '石家庄', '无', '0.6+5', '0.6+3', '1.0', '1.0', '-0.75', '-0.75', null, null, null, null, null, null, '', '1', '东风西路小学', '1.0', '1.0', '无', '6', '6', '1', null, '6', '1', '1', '2016-07-15 19:30:42', '1', '2016-11-09 22:09:28', null, '0');
INSERT INTO `cus_customer` VALUES ('b789c1c2276a495786b79fcffeb940ad', '新增Item1', '1', '2009-05-04', '15032831554', '范甘迪', '12', '21', '23', '23', '123', '1', '2', null, null, null, null, null, null, '', '1', '十五中', '123', '32', '文身断发', '12', '3', '1', null, '6', '1', '1', '2016-05-04 16:36:26', '1', '2016-12-21 17:50:14', null, '0');
INSERT INTO `cus_customer` VALUES ('cc05ccd416c24d1bbcda8cf598a060df', '测试3', '1', '1998-02-07', '15032831553', '12', '12', '12', '12', '12', '12', '12', '12', '12', '12', '12', '12', '12', '12', '1', '1', '请问', '12', '12', '12', '12', '12', '1', null, null, '0', '1', '2017-02-07 19:58:56', '1', '2017-02-07 19:58:56', null, '0');
INSERT INTO `cus_customer` VALUES ('ddddf46791c5416e851e77bb89594d6c', '测试问题5', '0', '2001-01-31', '15032831553', '12', '12', '0.2(2)0.25', '0.3(1)0.3+2', '12', '12', '-1.50DS-1.00DC*175', '-2.50DS-0.75DC*180', '44', '44', '44', '44', '44', '44', '2', '1', '趣味额', '12', '12', '12', '12', '12', '1', null, null, '0', '1', '2017-01-31 15:16:08', '1', '2017-02-26 18:13:53', null, '0');
INSERT INTO `cus_customer` VALUES ('df77e4db968341f4859256a63dbac117', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, '1', null, '2ef834da83b5423bb7a0824f78ff311c', '1', '1', '2017-05-07 08:25:54', '1', '2017-05-07 07:59:08', null, '0');
INSERT INTO `cus_customer` VALUES ('e32d028d470c4b8aaeda60b830fc245d', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, '1', null, '2ef834da83b5423bb7a0824f78ff311c', '1', '1', '2017-05-07 19:19:45', '1', '2017-05-07 19:25:02', null, '0');
INSERT INTO `cus_customer` VALUES ('fa9fa72f146f437cb6399d14a50f3b26', 'lirui', '1', '2008-06-21', '15032852145', '地方', '23', '12', '32', '1', '32', '32', '12', null, null, null, null, null, null, '', '9f44ea18e2864ea59a89dd748e2b7de3', '实验二中', '23', '12', '饿1', '12', '23', '1', null, '6', '1', '7c5f5acfeeab4f1fbcc2afc671ded1d9', '2016-06-21 16:38:09', '1', '2016-11-09 22:12:09', null, '0');

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
  `paper` varchar(200) DEFAULT NULL,
  `optometryL` varchar(32) DEFAULT NULL COMMENT '验光',
  `optometryR` varchar(32) DEFAULT NULL COMMENT '验光',
  `isEnd` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_INFOCUSTOMER_ID` (`customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cus_hpmanager
-- ----------------------------
INSERT INTO `cus_hpmanager` VALUES ('0018a08572f3457d9018690d649da1be', '112b08c6faa04d65a5878a4bc8e35016', '29', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0086cb4057ed4b7cad95befdaa8a01c9', 'e32d028d470c4b8aaeda60b830fc245d', '7', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('00abc7c5f7fb4cc79ceb780835fceb59', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '13', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('011d081df6da433ab061c6dd42ce480c', '184d9d479daa4951b057301ea99b8e39', '62', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0125de2e9a6d42f4ba19b0e136b16bd2', '4b1cf64dfc6046a586b31cea2b6a2584', '39', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('012ce251706a4e4a83225893a2998e3a', '184d9d479daa4951b057301ea99b8e39', '59', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '23号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0159e50692894bd5a6b8603d2d04efa7', '1f1dc4cf8e294c5293b81c828238b614', '85', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('015f3f0e0db34b4ba046b0d3b5ab754c', 'fa9fa72f146f437cb6399d14a50f3b26', '55', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('01b479437b0c48ef86fe85ac1707c0d7', '1f1dc4cf8e294c5293b81c828238b614', '14', null, null, null, null, null, null, null, null, null, null, '5', 's5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('024156bab240495097347b1f8c521359', 'a12ef2a8720b4825b22eccd02e950c83', '13', null, null, null, null, null, null, null, null, null, null, '5', 's3', '5', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('02b4ee164d1b44b4aba8a988751247d2', '184d9d479daa4951b057301ea99b8e39', '4', '2016-07-05 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y3', '1', '10号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('02e8333ef5f94e25a92595e92ef073d2', '530d6bc51bd94bef9bc88442dd69a277', '14', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('02f5f5aab38348038e609fcbb90d5633', '3424bf3069a84207a05543ed0fb25b22', '1', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('02f981e346d74ea2893ecc778baec1e8', 'df77e4db968341f4859256a63dbac117', '51', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0344a216011b4326a3b964a24b333223', '530d6bc51bd94bef9bc88442dd69a277', '22', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('03585698e91944a9be43982f49e6ee33', 'b789c1c2276a495786b79fcffeb940ad', '28', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0367aa4229534687bccb4391e707332e', '1f1dc4cf8e294c5293b81c828238b614', '107', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0381ed6f3abf49a2b92410b413151ec1', 'df77e4db968341f4859256a63dbac117', '56', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('03b44f36723f4768ad7c2c47d40915de', '184d9d479daa4951b057301ea99b8e39', '133', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('03c730a197e148ec8de8d949d705e190', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '48', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('04660f44ca244f3d9c81153548a8b0eb', '184d9d479daa4951b057301ea99b8e39', '53', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '55号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('04785d2eb4004a43929779875717010c', '1f1dc4cf8e294c5293b81c828238b614', '57', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0482f25c81424671bb5afe8c715e75cd', 'fa9fa72f146f437cb6399d14a50f3b26', '13', null, null, null, null, null, null, null, null, null, null, '5', 's3', '5', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('04c39e2ce0854636adc2e4cad7073e14', '29999bdfe94446a89fe0d1a764e05603', '35', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('04e25df4e7364c2fa1496ad20c53c06a', '85773d4072cb4e7bb706916945f5b445', '47', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's6', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('04e6ced92f334eaebfde9903deb10bb3', '184d9d479daa4951b057301ea99b8e39', '87', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0506a297b0c148f78c20ff4275a318ac', 'e32d028d470c4b8aaeda60b830fc245d', '41', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('05153db672024eb59d18794b98f56f57', '85773d4072cb4e7bb706916945f5b445', '7', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0588c76e8d534e6d99f1c3a3fc5a574f', 'b045771bc1c04aad8ab005a8591f5bdf', '39', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('05a669b9a62b48009bb94ae172e4a82b', '530d6bc51bd94bef9bc88442dd69a277', '28', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('05b1808369f94d45a768d406104cff8a', 'fa9fa72f146f437cb6399d14a50f3b26', '59', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('05f968304d9a41228234acf2c1a184ca', 'a12ef2a8720b4825b22eccd02e950c83', '39', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('072bebca29864ae38ff3d25816356b7a', '4b1cf64dfc6046a586b31cea2b6a2584', '74', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('073c42e1382349b5bda1f168952bfce1', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '17', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('077f578039db41d4bae2d1a0bc9d2052', '1f1dc4cf8e294c5293b81c828238b614', '55', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('07f8d29ae4334e809be3d60961d63a79', 'b045771bc1c04aad8ab005a8591f5bdf', '48', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('08067348c24b4d548e092f36a16fc489', 'a12ef2a8720b4825b22eccd02e950c83', '52', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0814e94695104d98b17ac4ee2b916208', 'a12ef2a8720b4825b22eccd02e950c83', '20', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('081e28a7016d48079597f4f770016694', 'b045771bc1c04aad8ab005a8591f5bdf', '19', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('08244125c9504efa88418cbdac05be19', '85773d4072cb4e7bb706916945f5b445', '18', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('084c3c2ef26b435cb26c0bb655cbe3a9', '29999bdfe94446a89fe0d1a764e05603', '57', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('086b1889cba44bf4b1d1c7c0766634b8', '14acf216023640668c16f28f40986012', '21', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('08e25cc64bdb4bd192b3ca12d789b7c9', 'fa9fa72f146f437cb6399d14a50f3b26', '15', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('093657db7c7d4a868bbc46f9779edbb1', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '54', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('096b2b7d53914fccb45876cf28b7ce54', '530d6bc51bd94bef9bc88442dd69a277', '16', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('09b3b6796b7d43c58b0c51808f1ebe2d', '4b1cf64dfc6046a586b31cea2b6a2584', '64', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0a1cebcefea44cd2968d5c64dc4ad3a5', 'b045771bc1c04aad8ab005a8591f5bdf', '42', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0a21c7f38ff648ebb77953e9a9fdcb36', '91319767cc08408190fb317d04e52f7c', '12', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0a36c606032f4187841ea43cc8b8f28a', '1f1dc4cf8e294c5293b81c828238b614', '75', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0a5026a87de14834a66e172bfb374792', 'e32d028d470c4b8aaeda60b830fc245d', '58', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0a5efbc09971439d893c1b36bf187524', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '52', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0a5f5ac0ad494f9d86fa1b8eb592aed8', '530d6bc51bd94bef9bc88442dd69a277', '9', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0b06c9d163bc41198aaed6fb60f21fad', '4b1cf64dfc6046a586b31cea2b6a2584', '69', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0b23d03e0872473d841e0dbf7c80446a', '91319767cc08408190fb317d04e52f7c', '22', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0b37508dccca45e0b1178ccab0e0ff96', 'e32d028d470c4b8aaeda60b830fc245d', '40', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0b8b0000885b44658ca6c30d62df72c8', '4b1cf64dfc6046a586b31cea2b6a2584', '85', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0bddc87aca2143ba946b96a53c100875', 'e32d028d470c4b8aaeda60b830fc245d', '24', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0c64e52ffa524040af3fdabe00a30e04', 'e32d028d470c4b8aaeda60b830fc245d', '59', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0c7c6572e2f5484bba30fef6b3f1c2b9', '184d9d479daa4951b057301ea99b8e39', '83', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '55号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0c85d44791e74302a1064044017ab713', '85773d4072cb4e7bb706916945f5b445', '8', null, null, null, null, null, null, null, null, null, null, '6', 's5', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0d0761215f50469584af58491cf15e9e', '4b1cf64dfc6046a586b31cea2b6a2584', '16', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0d121df6529941f1b1b9976847292cd7', '29999bdfe94446a89fe0d1a764e05603', '43', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0d3181e1942446b4a84bcb6596632627', '3424bf3069a84207a05543ed0fb25b22', '2', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0ed651104dad44acad50aabf2d67b5ee', '29999bdfe94446a89fe0d1a764e05603', '14', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0ef108fd866c4e4890b30446f5936b8d', '14acf216023640668c16f28f40986012', '29', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0f0d2f8c03924596b66b629ea7c83b50', '184d9d479daa4951b057301ea99b8e39', '10', '2016-07-23 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y2', '1', '10号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0f3a5f9b4cd14297b9019a400be30623', '91319767cc08408190fb317d04e52f7c', '10', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0fa36f7239114ac887996fd5f7b78f13', '3424bf3069a84207a05543ed0fb25b22', '14', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0fc91144777442e09a0ce128cb6c19a5', '1f1dc4cf8e294c5293b81c828238b614', '47', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('0fd102169b744c2ca4e74d6042e55dd2', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '24', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('10006d53cba64d8a9ed55a798d43f98b', 'a12ef2a8720b4825b22eccd02e950c83', '45', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('106660ec0b724bd4b590765ecd952834', 'b789c1c2276a495786b79fcffeb940ad', '26', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('109b5c993b6a41d79182611c0ffbfe2a', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '27', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('10e570cbdaff48c3aa670b3fa64db43f', '184d9d479daa4951b057301ea99b8e39', '15', '2016-08-16 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y2', '1', '11号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('10ff1999403643a5bcde983732606a61', 'df77e4db968341f4859256a63dbac117', '6', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('111b73107de447c096b7fb3c5ab0cb2f', 'e32d028d470c4b8aaeda60b830fc245d', '25', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('113bac76523b4aaab654eaf0ac8f7422', 'b045771bc1c04aad8ab005a8591f5bdf', '33', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('11d74df0d8aa4bd2878abf18320ece6a', '85773d4072cb4e7bb706916945f5b445', '35', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1205203b2a79470a97d3bf9b704e2506', '3424bf3069a84207a05543ed0fb25b22', '46', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('123f72095a0f4327b1b4d088da26941a', '29999bdfe94446a89fe0d1a764e05603', '56', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1343f2dc495e4358bf0178d9455b950e', '91319767cc08408190fb317d04e52f7c', '23', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('135a093e917347ed87a0a8e5207a9aa0', '91319767cc08408190fb317d04e52f7c', '6', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1360c4358fb74423b1058cf30f324ecd', '184d9d479daa4951b057301ea99b8e39', '24', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('13d1d2a2aa5a42d9a360e0fb4e27b1e6', '530d6bc51bd94bef9bc88442dd69a277', '6', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('13e26cc4993247d6818cc2caf82e2b2c', '1f1dc4cf8e294c5293b81c828238b614', '116', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1430094755ab470f81d0b27a07e6259b', '530d6bc51bd94bef9bc88442dd69a277', '4', '2016-08-10 00:00:00', '', '', '', '', '', '', '', '', null, '6', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('14397843772f4e998fa5317440d5cf10', '91319767cc08408190fb317d04e52f7c', '83', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('14708a73bc1542679ccbcababe44314f', '14acf216023640668c16f28f40986012', '12', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('15004aed19cc448a90df138b0d1b37a9', '91319767cc08408190fb317d04e52f7c', '9', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('151151fb887448fda5c756f2d41bfbf0', 'fa9fa72f146f437cb6399d14a50f3b26', '40', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('151f37b19e5a4ff9a0e1715fa8fa15c4', '91319767cc08408190fb317d04e52f7c', '46', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1576d5e1f4634200b83ad340fc3e4421', '29999bdfe94446a89fe0d1a764e05603', '38', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('15dbdca8507044aabc7bd48f3d874ba4', '85773d4072cb4e7bb706916945f5b445', '54', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('15e2ef207aac46c69e101b25f6bf1ba5', '3424bf3069a84207a05543ed0fb25b22', '26', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('16730ba17d5a47858217af6ab6646121', '1f1dc4cf8e294c5293b81c828238b614', '49', null, null, null, null, null, null, null, null, null, null, '5', 's6', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('16f92b3b1cb84135b35c21af91e97c6a', '184d9d479daa4951b057301ea99b8e39', '61', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('16fa19833678433dab0ae96b58c5ff91', 'e32d028d470c4b8aaeda60b830fc245d', '48', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1712885454ce4b31bba08c85be855880', '112b08c6faa04d65a5878a4bc8e35016', '26', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('17b59b1d9a0d41c2866efbc3f4e4b6f7', '3424bf3069a84207a05543ed0fb25b22', '43', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('17c73b64e3044d518d0003387c1aefe5', 'df77e4db968341f4859256a63dbac117', '44', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('17fbac58493144f5bba8d648aa51cfde', '4b1cf64dfc6046a586b31cea2b6a2584', '3', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1833c33005904d539df327790b87e3cd', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '60', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('18a4a1015b0a4bb0a7564267d8073df5', '91319767cc08408190fb317d04e52f7c', '74', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('18d8eef9dcac4978a0695ffc5816fe79', '1f1dc4cf8e294c5293b81c828238b614', '24', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('190e34c655184a358e0b29baef6c3251', '112b08c6faa04d65a5878a4bc8e35016', '16', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('194794d05f424d8487c329104a034d81', '3424bf3069a84207a05543ed0fb25b22', '52', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('19747c90bbc54fd19868f3368764dfc5', 'fa9fa72f146f437cb6399d14a50f3b26', '50', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('19ad630ec2c7462abe2e4f46e46f40e8', 'b045771bc1c04aad8ab005a8591f5bdf', '45', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('19c64e6443034aefb116f820cee1d5e1', '184d9d479daa4951b057301ea99b8e39', '136', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('19f137a9788b4b9d83bfefc5ac7275fc', '4b1cf64dfc6046a586b31cea2b6a2584', '28', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1a408b180a4f4eee9c058b4d9524ae89', '85773d4072cb4e7bb706916945f5b445', '4', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1a860be04bc441089b71d25ae1513c9c', '91319767cc08408190fb317d04e52f7c', '31', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1ae30465c89c434fa93e05502ed1be7a', '1f1dc4cf8e294c5293b81c828238b614', '59', null, null, null, null, null, null, null, null, null, null, '5', 's5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1af1edb904ca4bc5a845a3d919c71fbd', '29999bdfe94446a89fe0d1a764e05603', '12', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1afa53038d6c40f48708458cfdd300d0', 'df77e4db968341f4859256a63dbac117', '14', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1ce0fd29f3584f468697dc05589dfaa6', '1f1dc4cf8e294c5293b81c828238b614', '92', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1cf19381baab4fca8906a1b71cc4c4dc', '184d9d479daa4951b057301ea99b8e39', '32', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1cf8e51b6e2a4cda83f7290b35b1083e', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '3', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1db4118e27eb4fcd9d66da617c3671ce', '1f1dc4cf8e294c5293b81c828238b614', '16', null, null, null, null, null, null, null, null, null, null, '5', 's5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1db4ad82a1a046399746064de410a0a9', '4b1cf64dfc6046a586b31cea2b6a2584', '26', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1dc67870a6f14dd6849b89bcc529a520', 'fa9fa72f146f437cb6399d14a50f3b26', '21', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1dde71c90c4842c59edb1bdba7d67f38', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '16', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1de0b7a14d31444d9ff4d2952d1cb8e6', '3424bf3069a84207a05543ed0fb25b22', '25', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1df11c315e50482596552f4a4a30568c', '4b1cf64dfc6046a586b31cea2b6a2584', '89', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1dfc4fcac10c4d1382963ea752da6210', 'df77e4db968341f4859256a63dbac117', '20', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1e06a52543b54591b00849ddfaeb46ac', '91319767cc08408190fb317d04e52f7c', '44', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1e71803a97724c2c84ea346de1cd1969', '91319767cc08408190fb317d04e52f7c', '2', '2016-12-22 00:00:00', '0.2(1)0.25(1)0.3(1)0.4(2)0.5(2)', '0.4(1)', '0.5+1', '0.5+3', '0.6(2)0.6+4', '0.6(2)0.6+3', '03(1)0.5(2)0.6(1)0.6+2', '0.5（2）0.6+3', null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1ea92407ac5c42fa9491ee482ca51b84', 'e32d028d470c4b8aaeda60b830fc245d', '46', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1f8c28d13e70428481a3c9d335dcdf26', '184d9d479daa4951b057301ea99b8e39', '122', null, null, null, null, null, null, null, null, null, null, '6', 's5', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1f9b043ff3cc447a877baaf487dea005', '1f1dc4cf8e294c5293b81c828238b614', '8', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1fab396b2989499481722e55b7b76bb0', '91319767cc08408190fb317d04e52f7c', '26', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1fbd22f8819c4d1098fed070bf1f1954', '1f1dc4cf8e294c5293b81c828238b614', '63', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('1fe0bfebaaf8436c8f3ec99efd4a1891', '1f1dc4cf8e294c5293b81c828238b614', '82', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('200b900a61ad4d67b0be3da89a285b14', 'b045771bc1c04aad8ab005a8591f5bdf', '30', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('207053a27621446e8a0a569766b6ace6', 'fa9fa72f146f437cb6399d14a50f3b26', '58', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('208f1ea05fcc478a8bbc198ced4c547a', 'fa9fa72f146f437cb6399d14a50f3b26', '16', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('20d0531a46a9440d9db43c4b61fede2d', '29999bdfe94446a89fe0d1a764e05603', '58', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('211f84559e644f47b84cd1c70dfd08d0', 'b045771bc1c04aad8ab005a8591f5bdf', '38', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('213676c51daf47c9894990ada15fa1d2', '184d9d479daa4951b057301ea99b8e39', '95', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('213c912382fc4024b19b57578dc6054e', '184d9d479daa4951b057301ea99b8e39', '111', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('214b0447fcbc466c826c197ad9df5afa', 'b045771bc1c04aad8ab005a8591f5bdf', '49', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('21e9778bde0846adbfe798d749a8add2', '91319767cc08408190fb317d04e52f7c', '64', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('221d9a2214104c948f6a82688cb3ec9c', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '51', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('223d485df8c94ab8b737d93af8bb2101', 'a12ef2a8720b4825b22eccd02e950c83', '19', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2256d3e9d0d84d3b88ceef3297777a68', '14acf216023640668c16f28f40986012', '9', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2315f3f18f6c4247abd35e79c7655519', '184d9d479daa4951b057301ea99b8e39', '104', null, null, null, null, null, null, null, null, null, null, '5', 's5', '4', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2345ed23ea7c46b0a2a0b7a57bf7c465', 'e32d028d470c4b8aaeda60b830fc245d', '15', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2370c9fe1a594288b9fb247477e674e9', '184d9d479daa4951b057301ea99b8e39', '116', null, null, null, null, null, null, null, null, null, null, '5', 's1', '3', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('238211617abe4847b5c289bfd92dc5a6', 'a12ef2a8720b4825b22eccd02e950c83', '56', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('239df8dec4ab410aae3eac683120e7e3', '3424bf3069a84207a05543ed0fb25b22', '33', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('23ac48608a7f4e17933e318b876e2583', '530d6bc51bd94bef9bc88442dd69a277', '3', '2016-07-17 00:00:00', '0.5+4', '0.5+5', '0.5+4', '0.5+5', '0.8+4', '0.8+5', '0.6(1)0.8(2)0.8+5', '0.8(3)0.8+4', null, '6', 's1', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('23d1c0c7e9bf40a09ff04ec2f3bd4927', 'df77e4db968341f4859256a63dbac117', '5', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('23f0f6f4496947378651a22aff26fa63', '184d9d479daa4951b057301ea99b8e39', '142', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('244b9f3e29bd4854821e266fb15232c7', '91319767cc08408190fb317d04e52f7c', '86', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('248a19527e2841c8ac4cfc0f04491b6e', '91319767cc08408190fb317d04e52f7c', '76', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('24b16c20cb2c43cf9cdd67a3c8c33102', 'b045771bc1c04aad8ab005a8591f5bdf', '12', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('24c7817de3ff4dd4ae7ee377a675e70a', 'fa9fa72f146f437cb6399d14a50f3b26', '60', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('24cefaf347974405b6399c6f4da2dc6d', '85773d4072cb4e7bb706916945f5b445', '51', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('24f0c57d7a5f4746bbf93a6b5a2305a3', '29999bdfe94446a89fe0d1a764e05603', '48', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2560637fc95e4711820a531289db40f6', 'b045771bc1c04aad8ab005a8591f5bdf', '58', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('25ae65db70f848b99a060fb46964380d', 'b045771bc1c04aad8ab005a8591f5bdf', '54', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('25df8975452a497aade2d6be1b584505', '112b08c6faa04d65a5878a4bc8e35016', '27', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('265dadf1b9c844c4bc79c44dc6a624c1', '3424bf3069a84207a05543ed0fb25b22', '23', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('26ff7e14942743ddb75ae7ea89b96a17', '4b1cf64dfc6046a586b31cea2b6a2584', '32', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('270d5a4912ce44f3bf5d79db58bd819f', '4b1cf64dfc6046a586b31cea2b6a2584', '9', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2741b19c8736470ea93a194f29143419', 'b789c1c2276a495786b79fcffeb940ad', '23', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('275626b58b484899a30ac0d5e06a9be3', '4b1cf64dfc6046a586b31cea2b6a2584', '20', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2798a547b09145c995756716d61dfb19', '4b1cf64dfc6046a586b31cea2b6a2584', '30', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('27ad14921760491c83f18e7583ae265a', 'a12ef2a8720b4825b22eccd02e950c83', '43', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('27e2410fea3340a68ece6d2369982389', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '26', null, null, null, null, null, null, null, null, null, null, '6', 'S10', '2', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2828c335e96f4529bcf08a7291a05718', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '37', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('293ba9ef595e4a7e8f08f9b554c5f135', '14acf216023640668c16f28f40986012', '20', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('294605f58d474ed3b5b048decd977719', '1f1dc4cf8e294c5293b81c828238b614', '30', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '13', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('2949b68e5d7143bfba871c634fc22446', '29999bdfe94446a89fe0d1a764e05603', '29', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('297b36bb492e4e0a9afb7989588d7e3a', 'b045771bc1c04aad8ab005a8591f5bdf', '59', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('29b2b0dbb6cf4fd9ac8be4a1b8aa75c3', '530d6bc51bd94bef9bc88442dd69a277', '21', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('29bd197bc1e14e3582d09bf3223b5c9a', '1f1dc4cf8e294c5293b81c828238b614', '1', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('29c44647831b4bb2b97a9cb34a3e174c', '14acf216023640668c16f28f40986012', '6', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('29e69d10ff474b9bacc1a13c7b28934e', '184d9d479daa4951b057301ea99b8e39', '128', null, null, null, null, null, null, null, null, null, null, '6', 's5', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2a1ab5eeea894a57a92ba9c4ac50769c', '184d9d479daa4951b057301ea99b8e39', '131', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2aeffa917c024f27af93075b18fd4b03', 'b789c1c2276a495786b79fcffeb940ad', '27', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2b379bdaa59644fa87bfcbd452a01358', 'b789c1c2276a495786b79fcffeb940ad', '12', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2b70dc99e49445ebad8aa42d2a9ee631', '14acf216023640668c16f28f40986012', '18', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2b885c9958824461aeb951737b054cbb', '184d9d479daa4951b057301ea99b8e39', '13', '2016-08-11 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y4', '1', '11号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2b8af48728c7413a98dd34ee10003437', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '14', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2b9d96364f2d4adebf6620f721608b81', '4b1cf64dfc6046a586b31cea2b6a2584', '8', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2ba37ea2b8464aa19ae6fc333366a1e6', '3424bf3069a84207a05543ed0fb25b22', '20', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2c64a178dd3547a89e60d1298613c375', 'b045771bc1c04aad8ab005a8591f5bdf', '3', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2c750a93c1dd437c839af3a7f4e3221c', 'df77e4db968341f4859256a63dbac117', '27', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2c7b394d0d794a6692c42ad2105cefea', '29999bdfe94446a89fe0d1a764e05603', '10', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2cfebd4d865f4387ab2ac1770f80fee1', '1f1dc4cf8e294c5293b81c828238b614', '83', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2d12773acbe846cba4e088db891c7114', 'e32d028d470c4b8aaeda60b830fc245d', '37', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2d69941ade144f6cb961ad5d170322da', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '34', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2d8bc3ef0ceb4161a5ba0a854c1495a0', '184d9d479daa4951b057301ea99b8e39', '85', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2dfc4b79aaa340df8fd025e9bbfa041d', '4b1cf64dfc6046a586b31cea2b6a2584', '91', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2e080147496f4b6c8c7840e00b24dc52', 'b045771bc1c04aad8ab005a8591f5bdf', '37', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2e26d63126c44543a5b8b9d6b986e775', '184d9d479daa4951b057301ea99b8e39', '28', null, null, null, null, null, null, null, null, null, null, '5', 's4', '3', '22号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2e6a4c0192ed42b0876c247ad13ade69', '91319767cc08408190fb317d04e52f7c', '29', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2e7153b9c958433e8922db93c994de4c', '85773d4072cb4e7bb706916945f5b445', '43', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's6', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2e85580c5ed041caa495ba2c8de70483', '184d9d479daa4951b057301ea99b8e39', '121', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2e88a44bb84a457fa5100a91ce1f9856', '91319767cc08408190fb317d04e52f7c', '88', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2e938e41bdb44ac0bd6bfe162a44613a', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '9', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2ee0ab7c3a6b403f91e01b5cecc32383', 'b789c1c2276a495786b79fcffeb940ad', '22', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2f33831c90674fb2b3e593a1e5d9897f', '184d9d479daa4951b057301ea99b8e39', '30', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '2号图纸', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('2f509e8c33764a31bfcbb670bf2d92f3', '1f1dc4cf8e294c5293b81c828238b614', '44', null, null, null, null, null, null, null, null, null, null, '5', 's5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2f83202ab9a04817a559807467e3a2ad', '1f1dc4cf8e294c5293b81c828238b614', '109', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('2fb5af904d6f401fa979c2298dd2895a', 'df77e4db968341f4859256a63dbac117', '42', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3021bbca42c64eb2aa9d4ef11b72f0ce', 'a12ef2a8720b4825b22eccd02e950c83', '47', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('30420b53e39545dc9380158df0138607', '91319767cc08408190fb317d04e52f7c', '53', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('30b9c94ad8814d828f1fb0e80289cbe2', 'b789c1c2276a495786b79fcffeb940ad', '21', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('30cd18f6870f43199389d2eb2e825b26', '4b1cf64dfc6046a586b31cea2b6a2584', '62', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('31629c03ee064b029b5f1c7b4157b204', 'a12ef2a8720b4825b22eccd02e950c83', '38', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('31ac3a553ddd42a19b833df1a3833756', '91319767cc08408190fb317d04e52f7c', '36', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('31d76400b7944dd1be7f26439b7f0fe5', '91319767cc08408190fb317d04e52f7c', '67', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3200f901291242b0b78e1611a83d8956', '184d9d479daa4951b057301ea99b8e39', '70', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3246205df106494a8b077f1244fcacb0', '184d9d479daa4951b057301ea99b8e39', '92', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('329117ddd9d5452e9160942f6b8dd999', '1f1dc4cf8e294c5293b81c828238b614', '117', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('32a647e0cfa245dcbd1a7909cca96c8b', '530d6bc51bd94bef9bc88442dd69a277', '15', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3330d068377c41e684472f2141723abc', '4b1cf64dfc6046a586b31cea2b6a2584', '19', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('33a5c02b47994e0da45a5b948f275894', '184d9d479daa4951b057301ea99b8e39', '123', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('33a78cbde1a847babc5d9e04e3efcc03', '1f1dc4cf8e294c5293b81c828238b614', '74', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('33b4d04dba77470399b5c38adcbb3c59', '184d9d479daa4951b057301ea99b8e39', '76', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('33d958a2f50c43d8a129f85ea03306e2', '184d9d479daa4951b057301ea99b8e39', '9', '2016-07-21 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y3', '1', '10号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3428aa215a734b86a4ec534619f00fc7', 'e32d028d470c4b8aaeda60b830fc245d', '51', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('343c49a919654a9da07064ee16235fe3', '91319767cc08408190fb317d04e52f7c', '4', '2016-12-27 00:00:00', '0.15(1)0.4(1)', '0.4(1)0.5(3)', '0.4+2', '0.5+3', '0.6+2', '0.4(1)0.6(1)0.6+2', '0.5(1)0.5+2', '0.4(1)0.5(2)0.5+1', null, '6', 's1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('34798b6a48954ef5b8796eca07863bb7', '91319767cc08408190fb317d04e52f7c', '75', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3483338a16ad4afe844b9a6ad4e702bd', '184d9d479daa4951b057301ea99b8e39', '44', null, null, null, null, null, null, null, null, null, null, '5', 's5', '4', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('34d8701e5a98447088af2603824cd26f', '184d9d479daa4951b057301ea99b8e39', '34', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('350ae9efad3344f79083677d61ece36c', '184d9d479daa4951b057301ea99b8e39', '6', '2016-12-09 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y1', '1', '10号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3528dca9b2f84940a828ba065b6d7bf0', 'a12ef2a8720b4825b22eccd02e950c83', '31', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('35566cde32ac4ed195174b99eb02d830', '4b1cf64dfc6046a586b31cea2b6a2584', '87', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3592676f33c54ea58036501f11aba8b6', '184d9d479daa4951b057301ea99b8e39', '144', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('35a9bdc17e604cac9ea14960c4f42a50', 'b045771bc1c04aad8ab005a8591f5bdf', '35', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('35db139ce19b4699900a0841b2995786', '91319767cc08408190fb317d04e52f7c', '33', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3657a931bafb4bb8bac1fb467885fa56', '91319767cc08408190fb317d04e52f7c', '70', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('366b543e7f054277b9ea782bdceec549', 'fa9fa72f146f437cb6399d14a50f3b26', '11', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('36be441ffffa442e8d1444216ed688ae', '1f1dc4cf8e294c5293b81c828238b614', '56', null, null, null, null, null, null, null, null, null, null, '5', 's5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('36cfabf4e4c14322929789b60fc1e1f7', '85773d4072cb4e7bb706916945f5b445', '10', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('36ec63097c5d42a3adb7cf3b4aaa6745', 'b789c1c2276a495786b79fcffeb940ad', '16', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('370199079b924144a938ff4303d4cae1', 'b045771bc1c04aad8ab005a8591f5bdf', '4', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3710dfe569304a23bd1e9f4460b680f4', 'a12ef2a8720b4825b22eccd02e950c83', '49', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('376c720752984c73ba58ca8f399c9aa3', 'b045771bc1c04aad8ab005a8591f5bdf', '36', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3783e779318648aab38a6d9e8678cfd1', 'df77e4db968341f4859256a63dbac117', '16', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('37a39d60cc32411384d6cb453c34f8fd', '1f1dc4cf8e294c5293b81c828238b614', '45', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('37d3201607e84f3e893356c196fc8f97', 'fa9fa72f146f437cb6399d14a50f3b26', '24', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('380ed07dbca64d429b4c3503f9ea2932', '530d6bc51bd94bef9bc88442dd69a277', '27', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('382f1b70290d4c3492a96f1c35c815c5', '1f1dc4cf8e294c5293b81c828238b614', '65', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('38473b01fa954a2b9158eb4f80ed827f', 'e32d028d470c4b8aaeda60b830fc245d', '1', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('38c7a47311ca4d20acd8d2cd035ec952', 'b789c1c2276a495786b79fcffeb940ad', '7', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('38e4bae08ecb45d0b996d3d1ba5d85ed', 'fa9fa72f146f437cb6399d14a50f3b26', '17', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('38f5cf9c747b40f097473cd87f92ba6a', 'fa9fa72f146f437cb6399d14a50f3b26', '54', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3933f96e741744e584a0a178407f74d2', '1f1dc4cf8e294c5293b81c828238b614', '102', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('396c726239904fcaa734b01dba1db095', '85773d4072cb4e7bb706916945f5b445', '60', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's2', '1', '15', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('3978d79766b043b6b6eac12dc0e77a50', '1f1dc4cf8e294c5293b81c828238b614', '40', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('398d500ca0e94757b8169b09fb4e8c79', 'a12ef2a8720b4825b22eccd02e950c83', '12', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3a0111846c124ef594de544f4dc8649d', '85773d4072cb4e7bb706916945f5b445', '44', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3adc102151094ce280aa7709b41508b3', '112b08c6faa04d65a5878a4bc8e35016', '25', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3b2b589fc5d84f40b672a0472c05f4b7', '3424bf3069a84207a05543ed0fb25b22', '45', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3b806f5728d442c9bd67a159292a84b6', '184d9d479daa4951b057301ea99b8e39', '27', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3bcf7608012144a4901fa75b5aa1b9ce', '91319767cc08408190fb317d04e52f7c', '18', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3bee5f8ede98430a9bbb9ad85a938714', '112b08c6faa04d65a5878a4bc8e35016', '10', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3c593f4ec00048c098545aa90196214a', 'fa9fa72f146f437cb6399d14a50f3b26', '49', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3c620fbfed0c443186ec6c0f7de5334d', 'fa9fa72f146f437cb6399d14a50f3b26', '1', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3d017f4288bd440e8921e0a8710e7880', 'a12ef2a8720b4825b22eccd02e950c83', '59', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3d661e101a914d5dae311abf8573a0f4', '184d9d479daa4951b057301ea99b8e39', '55', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3dc5d94401bf423583088bb83489b3ca', '184d9d479daa4951b057301ea99b8e39', '130', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3dca0922eb1e4b17ae08f8b3b4e83c8f', 'a12ef2a8720b4825b22eccd02e950c83', '24', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3df607f0ae874abb96d7910952416a02', '184d9d479daa4951b057301ea99b8e39', '80', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3e3f48a441414e4cbc9e51ff90ada034', '1f1dc4cf8e294c5293b81c828238b614', '79', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3e5e89d0c5bb46678cd48048a3b8b889', '3424bf3069a84207a05543ed0fb25b22', '50', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3ea957989c0d441693a243595a77ea48', '4b1cf64dfc6046a586b31cea2b6a2584', '72', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3efcb0364b394d46993dc4c845f86925', '3424bf3069a84207a05543ed0fb25b22', '5', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3f08850b74924e019f73c241766744c1', '184d9d479daa4951b057301ea99b8e39', '37', null, null, null, null, null, null, null, null, null, null, '5', 's3', '3', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3f4324d3c2114b0999cb852f1728b0a4', '14acf216023640668c16f28f40986012', '24', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3f65fdd3ce2e4a54903d06e8fd19f7a9', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '4', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3f76ee1a47dc4a6e85f649fab8516c5b', '530d6bc51bd94bef9bc88442dd69a277', '25', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3f9b26aa8fec4069a408d0b42e68e05e', '4b1cf64dfc6046a586b31cea2b6a2584', '40', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('3fdcb3ebd12e466bb8a087ae1985afaf', '184d9d479daa4951b057301ea99b8e39', '50', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('402640c1978e4732a88ff4a4c61d4db6', '91319767cc08408190fb317d04e52f7c', '78', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('406d5333b7e7465bb7ac55b3d96527fb', 'fa9fa72f146f437cb6399d14a50f3b26', '27', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('40902b1367f94f5e8a76e370e37b0f25', '85773d4072cb4e7bb706916945f5b445', '12', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('417670c3d7bc4253873e0c9b90df2a8f', '4b1cf64dfc6046a586b31cea2b6a2584', '27', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('41f555ce522447beaec36105c1a34d9c', '184d9d479daa4951b057301ea99b8e39', '22', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('425748fba88e4c4889ca5d5fc91c8efb', '112b08c6faa04d65a5878a4bc8e35016', '19', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('425ab3112f2b409992362e4da04727dd', 'e32d028d470c4b8aaeda60b830fc245d', '45', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('428de18c58e441178d407b41ae667c1f', 'e32d028d470c4b8aaeda60b830fc245d', '49', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('429e28f46e054d49940ed2fcda9d6faa', '4b1cf64dfc6046a586b31cea2b6a2584', '36', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('435ff846ab5745129b7cc9b8f5032432', 'df77e4db968341f4859256a63dbac117', '40', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('43f25da91eac458c84cb9560a1b395aa', 'df77e4db968341f4859256a63dbac117', '24', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('444f13a87e1d4216a7a9f8d9e9568104', '184d9d479daa4951b057301ea99b8e39', '11', '2016-08-07 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y3', '1', '11号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('448016cda3a7469a8ed4e5ba055bfb75', '91319767cc08408190fb317d04e52f7c', '3', '2016-12-25 00:00:00', null, null, null, null, '0.6(2)0.6+2', '0.6(2)0.6+3', '0.4(1)0.5(3)0.6(4)0.6+2', '0.4(1)0.5(2)0.5+1', null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('452ba311032d44d68917f9ec3a63ffbd', 'b045771bc1c04aad8ab005a8591f5bdf', '6', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('458ab6d0936042978b9ce2876455b8cc', 'df77e4db968341f4859256a63dbac117', '18', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('45f143276c944f3ab921839dac4f07d3', 'df77e4db968341f4859256a63dbac117', '48', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4620e570f9174893bcb20dd38e0d8c2f', '184d9d479daa4951b057301ea99b8e39', '134', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4643a7bdba704f20bef74ca288fd6f8a', '112b08c6faa04d65a5878a4bc8e35016', '17', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('467ef56e74f640ebaceaf7c7f49966d1', 'e32d028d470c4b8aaeda60b830fc245d', '2', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('468fd732e0dc44a6ae9295fefa22e935', '184d9d479daa4951b057301ea99b8e39', '120', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '2号图纸', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('46e373ec7b0b4174a0b259a3ad074038', '112b08c6faa04d65a5878a4bc8e35016', '22', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4757b94196a34d3490aa19cb2e842785', 'b045771bc1c04aad8ab005a8591f5bdf', '1', '2016-07-15 00:00:00', '0.8+4', '0.4（1）0.5（1）0.6（2）', '0.8+4', '0.6+6', '1.0+3', '1.0+5', '1.0+4', '0.5（1）0.6（2）0.8+2', null, '6', 's4', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4767bdb3e9c04e2aa2ee4d36992d9ba7', '4b1cf64dfc6046a586b31cea2b6a2584', '13', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('476f902319b3401985b8c288149d09ee', 'df77e4db968341f4859256a63dbac117', '12', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('47a8768dd03544baacd7dcd9c5bec1b6', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '28', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('47b46452b3aa41d4aec71aee72833585', '29999bdfe94446a89fe0d1a764e05603', '23', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('47d09d0f7cf7408182e98b17468e6bed', '184d9d479daa4951b057301ea99b8e39', '1', '2016-06-30 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y2', '1', '9号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('47dc3c2df1d64723820877a19eb1186d', '91319767cc08408190fb317d04e52f7c', '49', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('48312d4c33a24670bbfaf0ee9eea0207', 'e32d028d470c4b8aaeda60b830fc245d', '21', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4875796a65f84d5f8a3e91bf2797364b', '4b1cf64dfc6046a586b31cea2b6a2584', '22', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('489b4e858970403da6173a36528f747b', 'fa9fa72f146f437cb6399d14a50f3b26', '12', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('48e01a8c31984fe894fda71caadfa643', '3424bf3069a84207a05543ed0fb25b22', '12', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('48e2f91b28ca4b9e8174dfd27aac6eb6', 'fa9fa72f146f437cb6399d14a50f3b26', '5', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('48e61d6be3914922a225bb0ef8fdcd6d', '85773d4072cb4e7bb706916945f5b445', '2', null, null, null, null, null, null, null, null, null, null, '6', 's5', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('49082df1c3b14d01809d97915c49bfac', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '18', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('499f9db2318a4b20b6ed8b67a487595b', 'a12ef2a8720b4825b22eccd02e950c83', '26', null, null, null, null, null, null, null, null, null, null, '5', 's1', '3', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('49aa8b192e4b45a69e626de4b322b0dd', '14acf216023640668c16f28f40986012', '1', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('49da0c846dfa4132af980488850a332b', '1f1dc4cf8e294c5293b81c828238b614', '10', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4a041dfb9c054d6a891f8fa316daaaa7', 'fa9fa72f146f437cb6399d14a50f3b26', '10', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4a20c13a6b5c453ca214bc3824d1ce16', 'a12ef2a8720b4825b22eccd02e950c83', '36', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4a82f9bd04044752babffa8f38f25aee', '4b1cf64dfc6046a586b31cea2b6a2584', '60', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('4a883692fd5d4653b3d585286cb7bab4', '29999bdfe94446a89fe0d1a764e05603', '36', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4ab3c7f606ce4c82b4b0a14048ecd112', '4b1cf64dfc6046a586b31cea2b6a2584', '84', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4ad39b3ff70249619ba94bbed685831e', 'b045771bc1c04aad8ab005a8591f5bdf', '22', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4aee677a7c4843c2a78b6c1ed64e5c92', '184d9d479daa4951b057301ea99b8e39', '99', null, null, null, null, null, null, null, null, null, null, '5', 's1', '5', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4b0b2b0c2ad8425f8178183ae6f755c8', 'fa9fa72f146f437cb6399d14a50f3b26', '37', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4b14e8fc77b14acf9a598fa41a8959a0', '91319767cc08408190fb317d04e52f7c', '50', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4b5ec7e998a446528a7bfab06990d9ba', '4b1cf64dfc6046a586b31cea2b6a2584', '73', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4b89797ac2f64b45a3bb6ec4be16d305', '530d6bc51bd94bef9bc88442dd69a277', '24', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4b8d6f95b6d041a28c450ff9f898fa63', '91319767cc08408190fb317d04e52f7c', '42', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4c104586313446c9a1ef6e2ae376ab0c', 'b045771bc1c04aad8ab005a8591f5bdf', '44', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4c1f94c705e54b989ab432ca2bb1dc1f', 'df77e4db968341f4859256a63dbac117', '36', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4c25054045974d91aa2c20e47806ad7d', 'a12ef2a8720b4825b22eccd02e950c83', '11', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4c81657e3d324320a212b3a9b8dcb4cb', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '21', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4ca384ff1c5640a6826117722ae41593', '85773d4072cb4e7bb706916945f5b445', '14', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4cb4d54828ba432697acdddce30f03ef', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '5', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4d091e6937a64f3fb062729f50152035', 'fa9fa72f146f437cb6399d14a50f3b26', '42', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4d177e38e0704cdd8f9d8a7c5ecb9f7f', '1f1dc4cf8e294c5293b81c828238b614', '113', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4d21276018ec44cbaec7bd965e5defc1', 'fa9fa72f146f437cb6399d14a50f3b26', '19', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4d256f32fd354ba29045358a2f3d261e', '4b1cf64dfc6046a586b31cea2b6a2584', '63', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4d38dfb089064a7c83754a9321952675', '4b1cf64dfc6046a586b31cea2b6a2584', '10', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4d4726178b70446cb49b3571c612e209', 'b789c1c2276a495786b79fcffeb940ad', '9', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4dd09df0631940fd9fe6b88fb777b662', '91319767cc08408190fb317d04e52f7c', '28', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4ea5c33415b3400aa417108f522966f6', '184d9d479daa4951b057301ea99b8e39', '137', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4ea9cb3fd7a54e62a10ca1c87fa664d3', 'a12ef2a8720b4825b22eccd02e950c83', '35', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4eb87ce095404a6ab70a8141d5a27949', '85773d4072cb4e7bb706916945f5b445', '52', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's6', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4ed7e48fdcf34322ac90d92c5a988713', '1f1dc4cf8e294c5293b81c828238b614', '62', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4efc60fd634d48969389e4ec8a0b3b76', '1f1dc4cf8e294c5293b81c828238b614', '106', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4eff607d22454f16a20286c2b9992595', '112b08c6faa04d65a5878a4bc8e35016', '8', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4f2b140ef6cf45e1815d5555b350263f', '112b08c6faa04d65a5878a4bc8e35016', '6', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4f3603061c1c471ab454089a3ea834bb', '14acf216023640668c16f28f40986012', '23', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('4fd5e25cb4804ef891bf3dcea167118b', '184d9d479daa4951b057301ea99b8e39', '115', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5050873ccfb24d4f9fef08e5367eb683', 'b789c1c2276a495786b79fcffeb940ad', '18', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('505edeb30b744906bef03963dffccfa9', '3424bf3069a84207a05543ed0fb25b22', '31', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('506bbb0b05ac4095b9060fb77a608ddd', '29999bdfe94446a89fe0d1a764e05603', '34', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('507cf7dc82a342eeadc90acbc148af84', '184d9d479daa4951b057301ea99b8e39', '40', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('507ed28033ba4b29836f560d1af9ec12', '3424bf3069a84207a05543ed0fb25b22', '48', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('50e15c09c2774a92a984285b35875d17', '85773d4072cb4e7bb706916945f5b445', '9', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('511cc4b85dd74c6f8c82fd2d392677c8', 'a12ef2a8720b4825b22eccd02e950c83', '29', '2016-06-16 00:00:00', '12', '23', '12', '32', '32', '34', '32', '12', null, '5', 's2', '4', '23号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('515d90aee15f4e268e224404015c6465', '184d9d479daa4951b057301ea99b8e39', '79', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5194c63544424482a4e34ac6590b0e7c', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '57', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('51b2d4464f2644738327f401a3d66467', 'a12ef2a8720b4825b22eccd02e950c83', '10', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5229a4805cdc4659a9dea59874a7e5f3', '4b1cf64dfc6046a586b31cea2b6a2584', '92', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5264c5fbe7a64b79bc0f8037af7c1cb7', 'a12ef2a8720b4825b22eccd02e950c83', '42', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('527483c7225743f7a17f38b67bcbbf97', '3424bf3069a84207a05543ed0fb25b22', '41', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('52977857ff0343b5beda3ef60cdcc69b', '29999bdfe94446a89fe0d1a764e05603', '55', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('52985617ad2940169dc9f2d559813453', 'e32d028d470c4b8aaeda60b830fc245d', '44', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('529a414f3fe64d1ebd0066f8d8bd7dfd', '29999bdfe94446a89fe0d1a764e05603', '21', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5301593efc234adeb9de19b023ccab41', '85773d4072cb4e7bb706916945f5b445', '25', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('53403184220345c5932f9facc05b1fb1', '91319767cc08408190fb317d04e52f7c', '13', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5343ac1c9ec54554ae1cfad789ef6a94', '91319767cc08408190fb317d04e52f7c', '5', '2016-12-29 00:00:00', '0.4(1)', '0.4(1)0.5(3)', '0.4+2', '0.5+3', '0.6(1)0.6+4', '0.5+5', '0.4（1）0.5（2）0.6（4））0.6+1', '0.4(1)0.5(3）0.5+2', null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('536748846daa4f4ab6d52c2aedfc1a88', '4b1cf64dfc6046a586b31cea2b6a2584', '29', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5369574c7c9e4f2998cbc03e674e3a8b', '4b1cf64dfc6046a586b31cea2b6a2584', '57', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('53b29b5eb9704960bda1c8ea73802fa7', '530d6bc51bd94bef9bc88442dd69a277', '23', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('53bcedd631ef4c0d857ec400d9a997aa', 'a12ef2a8720b4825b22eccd02e950c83', '16', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('53d1b67ecfed484d9ff127d992f781fd', '1f1dc4cf8e294c5293b81c828238b614', '90', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('54557d108e1b4c6baea58e75651e334a', 'e32d028d470c4b8aaeda60b830fc245d', '33', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('54c0b7611d554edd845f7aaca98a0040', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '39', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('54e9b275626449469ef4dd3921127e8b', '91319767cc08408190fb317d04e52f7c', '87', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('550be67210bd4e219dba5d35da98ea59', '1f1dc4cf8e294c5293b81c828238b614', '77', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('553111d0ca42480d911b39d87899b022', '91319767cc08408190fb317d04e52f7c', '79', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('55906d4ba5d94c2da409588898e41156', 'b045771bc1c04aad8ab005a8591f5bdf', '7', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('55b3cdb62f6b4d3eb7ab3237454f6fc2', '1f1dc4cf8e294c5293b81c828238b614', '6', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('55fc7696155c4225b4e3e083bb1ce57d', 'a12ef2a8720b4825b22eccd02e950c83', '27', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('561108594316420ba6ee4ba1009f1086', 'b789c1c2276a495786b79fcffeb940ad', '24', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('562160a7e52b48fb9da52dcbfeb56bcb', '184d9d479daa4951b057301ea99b8e39', '23', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '55号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('562f52cd79624e499f2c6ec49f3f1c34', '4b1cf64dfc6046a586b31cea2b6a2584', '59', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('56eba8dbbcc744c49d80b3f3d83a3e69', 'df77e4db968341f4859256a63dbac117', '32', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('56f992eb6866465597dda4302e91d7e5', 'fa9fa72f146f437cb6399d14a50f3b26', '26', null, null, null, null, null, null, null, null, null, null, '5', 's1', '3', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('577f2f5fb66841f782c1da9b1f72ca28', '3424bf3069a84207a05543ed0fb25b22', '56', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('578ca996db2c413584486c609eba59f1', '1f1dc4cf8e294c5293b81c828238b614', '103', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('580a88717e3b47d594fff6b3ae2043e4', '91319767cc08408190fb317d04e52f7c', '80', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('582fce0ee05649b0b49c5f4a4994ddca', '4b1cf64dfc6046a586b31cea2b6a2584', '35', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5878fe0b29a94c618b59818708cd77ac', '85773d4072cb4e7bb706916945f5b445', '49', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('58d29fc97f854c94b6c801363972977a', '4b1cf64dfc6046a586b31cea2b6a2584', '88', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('598179febea4453781192b0b8a2e6619', '4b1cf64dfc6046a586b31cea2b6a2584', '15', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('59b34855c520444a8fffd9acfa462222', 'df77e4db968341f4859256a63dbac117', '52', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5a179ae350204397b4994c0fb95ebf41', '14acf216023640668c16f28f40986012', '2', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5a56533f26384c66ba94db577a985dec', 'e32d028d470c4b8aaeda60b830fc245d', '20', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5a7ebfee476047c88f1b5deeec01a141', 'a12ef2a8720b4825b22eccd02e950c83', '48', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5aaa3bf9f06249c180b0f4b62d7b1fa1', '3424bf3069a84207a05543ed0fb25b22', '24', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5b65ede9b8f34fe0829bd340ab8a8ef7', 'e32d028d470c4b8aaeda60b830fc245d', '34', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5b7418e36c5d42478c684773d57cb745', '184d9d479daa4951b057301ea99b8e39', '21', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5b9d2766b687468e9155bf678e1697c4', 'b789c1c2276a495786b79fcffeb940ad', '5', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5bbc7ed81f2a4e278f96ba5ee8538215', 'b045771bc1c04aad8ab005a8591f5bdf', '15', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5be55bd1e09640a5aeac742493244286', '184d9d479daa4951b057301ea99b8e39', '108', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '5号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5c011d2c8f4b4d0f9a61bd801ed24bd9', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '43', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5c155ab700744a9fa8606514aeae5f9b', '184d9d479daa4951b057301ea99b8e39', '26', null, null, null, null, null, null, null, null, null, null, '5', 's1', '3', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5c2fa6eefb3c4b02bfa6be05920af522', 'fa9fa72f146f437cb6399d14a50f3b26', '30', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '2号图纸', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('5c36d1fb794a400c975e1a7c05075c5d', '1f1dc4cf8e294c5293b81c828238b614', '25', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5c40e7120bcc4c4380f8391f6b99ff25', '1f1dc4cf8e294c5293b81c828238b614', '111', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5c603bb4a5f74df68c0e1072242cb6f3', 'fa9fa72f146f437cb6399d14a50f3b26', '4', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5c642054829a4ef2b5ac729c35c6f274', '85773d4072cb4e7bb706916945f5b445', '34', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5ccb322070e54e8d8d8dbdf8cac5e0fa', '1f1dc4cf8e294c5293b81c828238b614', '42', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5ccee1b0f5e347d984e6f7effffec332', '1f1dc4cf8e294c5293b81c828238b614', '72', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5ce596bed9ed40a0a5429444e2d6e1ef', 'df77e4db968341f4859256a63dbac117', '4', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5d21b727f4d042d5a2ceeeaacb64a80c', '3424bf3069a84207a05543ed0fb25b22', '7', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5d59c3db9a5f4147bb5dbdd641930b52', '112b08c6faa04d65a5878a4bc8e35016', '11', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5dc28b9b4c2d47f092c5a5077982563e', '91319767cc08408190fb317d04e52f7c', '7', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5e8a6252a1e346ea9d42c541f9b785cd', '184d9d479daa4951b057301ea99b8e39', '58', null, null, null, null, null, null, null, null, null, null, '5', 's4', '3', '22号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5ee34918edd94071bbe00578310be607', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '15', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5f05a84e740b4a5eb2e3d3bcaaf9d00a', 'b789c1c2276a495786b79fcffeb940ad', '30', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('5f3b639f4d0c49958691c321dc8c56fd', 'df77e4db968341f4859256a63dbac117', '60', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('5f8db67109604c02b0e270fa56ca124f', '29999bdfe94446a89fe0d1a764e05603', '26', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('5f9c1d8de576455da6c5a10de06a171d', 'df77e4db968341f4859256a63dbac117', '3', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('60b022302c324856907669f4d190079b', 'fa9fa72f146f437cb6399d14a50f3b26', '39', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('60c5e3ba2de94668a43af4dcce7be597', '184d9d479daa4951b057301ea99b8e39', '148', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('60d6ac2025174f3086d46017286c5938', '1f1dc4cf8e294c5293b81c828238b614', '53', null, null, null, null, null, null, null, null, null, null, '5', 's7', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('610a30c08dab466ab050de639e2225b7', 'df77e4db968341f4859256a63dbac117', '43', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('610b5d0b16ed41d3bbfbdd20fca02129', '85773d4072cb4e7bb706916945f5b445', '13', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('615a2d8933e5490d9f8c7a005f2e30c5', 'e32d028d470c4b8aaeda60b830fc245d', '35', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('617f1c3a4562432a8dd8e537aeaddde1', 'fa9fa72f146f437cb6399d14a50f3b26', '33', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('61e2add60e294596950f19cc6501a1f7', '29999bdfe94446a89fe0d1a764e05603', '51', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('61fc1774f10b47639b681603a8899b5b', '1f1dc4cf8e294c5293b81c828238b614', '38', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('620b1937caa04283a6fa058e3fc1bc99', '3424bf3069a84207a05543ed0fb25b22', '19', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('623203943b4e4ecfb22ae03c213edd8a', '91319767cc08408190fb317d04e52f7c', '21', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('62b418c8c2144f0aa0b12ac90687b7a3', '91319767cc08408190fb317d04e52f7c', '1', '2016-12-21 00:00:00', '0.25(1)0.3(1)0.4（2）0.5（2）', '0.4(1)0.5(2)', '0.5+4', '0.5+2', '0.4（1）0.5（1）0.6（2）0.6+5', '0.6（2）0.6+3', '0.5(1)0.6(3)0.6+2', '0.6（4）0.6+2', null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('62b7a716f2ed49cdbd82e8577f7554cb', '4b1cf64dfc6046a586b31cea2b6a2584', '78', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('62cc63b91872478aa815ab2ae76e5a40', '184d9d479daa4951b057301ea99b8e39', '119', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '23号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('630dfc38e1d34d7f805806a9ce3be64e', 'b045771bc1c04aad8ab005a8591f5bdf', '11', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('63236e582d904d9493e12ada60b1b38d', '184d9d479daa4951b057301ea99b8e39', '117', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('634c156703854048a289218da9fc1bbf', '1f1dc4cf8e294c5293b81c828238b614', '84', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6361487356ec40fbb2ac45458028e88f', 'fa9fa72f146f437cb6399d14a50f3b26', '3', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '9号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('63b392d62a1c45ad99a39cd7c3f0087e', '1f1dc4cf8e294c5293b81c828238b614', '89', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('64a9e7a841d24a449aeba7b5f35f1a34', '3424bf3069a84207a05543ed0fb25b22', '21', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('64aa7b4d7b59493b81296a633756b580', '85773d4072cb4e7bb706916945f5b445', '24', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('64b05ee5243d47b4a4e023b6c3b69433', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '7', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('64b350332dde4d1085128f473294b6b5', '1f1dc4cf8e294c5293b81c828238b614', '96', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('64d9892e4d314558b1b88b3c5ead5887', '29999bdfe94446a89fe0d1a764e05603', '17', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('64e39389eec648f790488da8b11327e3', '85773d4072cb4e7bb706916945f5b445', '42', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('65a2370d60da439fa6ed070c70e6232c', 'fa9fa72f146f437cb6399d14a50f3b26', '2', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('65d1e6edf12b4b1eaee880ddf4e04ca4', 'a12ef2a8720b4825b22eccd02e950c83', '32', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6618ae1ec9794ff99c3ba90c8eace0e3', '85773d4072cb4e7bb706916945f5b445', '23', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6672da9080d9425e8d507df9f1592c46', 'df77e4db968341f4859256a63dbac117', '54', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6680b25e0ccf41b38107a0d90e0dbc10', '85773d4072cb4e7bb706916945f5b445', '30', '2016-12-14 00:00:00', '0.1', '0.3', '0.1', '0.1', '0.1', '0.1', '0.1', '0.1', null, '6', 'S2', '1', '12', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('670cde5e671d4d5888e6d41e9e34f350', '4b1cf64dfc6046a586b31cea2b6a2584', '2', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('67991cfefe164068a67912fc7824f68e', '85773d4072cb4e7bb706916945f5b445', '20', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('67c5b6cb37614f1dad9c0b69a2df26e8', '29999bdfe94446a89fe0d1a764e05603', '8', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('67e18029c64b45f1807a7be0a2c5309a', '14acf216023640668c16f28f40986012', '7', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('67e19c914d914016a7b7f8dd4fb7514b', '184d9d479daa4951b057301ea99b8e39', '42', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('68092ebd065c47cca8a1f7cab8494d0e', '1f1dc4cf8e294c5293b81c828238b614', '118', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('684cc2bcc6a84db282cd10bd4d31bf31', '1f1dc4cf8e294c5293b81c828238b614', '48', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('68853ba9555e42a8b235d05dcf55f0f3', '29999bdfe94446a89fe0d1a764e05603', '31', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('68db121a66684f16b77e9fc403bade21', '85773d4072cb4e7bb706916945f5b445', '57', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's6', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('696f310531d04ba79fa605e4ff0ae949', '4b1cf64dfc6046a586b31cea2b6a2584', '75', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('69a69a8e6913408aaec87e60aca14351', '4b1cf64dfc6046a586b31cea2b6a2584', '33', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6a023b9acb454cfea6f4f5c47f9f7542', '112b08c6faa04d65a5878a4bc8e35016', '9', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6a60c8c3deaf455d886b15cce95778d4', '14acf216023640668c16f28f40986012', '22', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6a81b372897840df8564d34993c91875', '14acf216023640668c16f28f40986012', '17', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6a91af07ed254652b3f0d3557457955c', '29999bdfe94446a89fe0d1a764e05603', '54', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6aec6b25fc4846d68cebcb7e0c2fdd18', '14acf216023640668c16f28f40986012', '8', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6b3775d78ee34a79b47dcc33f70c1876', '184d9d479daa4951b057301ea99b8e39', '141', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6b77a94ddf0e4e21ae7f57646ec91571', '4b1cf64dfc6046a586b31cea2b6a2584', '77', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6d0239b90a0f46b4a1e9985d4a15af37', '530d6bc51bd94bef9bc88442dd69a277', '10', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6d555e13a49742dfae2d9e750262967c', '1f1dc4cf8e294c5293b81c828238b614', '21', null, null, null, null, null, null, null, null, null, null, '5', 's5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6d61ed351daa4bacb844a6461f068d85', '1f1dc4cf8e294c5293b81c828238b614', '19', null, null, null, null, null, null, null, null, null, null, '5', 's6', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6df22a3af1a74926997f5c9848387aa1', 'a12ef2a8720b4825b22eccd02e950c83', '17', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6e47c743fe334617a825c6262a8dfc5b', '91319767cc08408190fb317d04e52f7c', '35', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6e868ced14d04486b8fc0d32fcdb3f7c', 'a12ef2a8720b4825b22eccd02e950c83', '28', null, null, null, null, null, null, null, null, null, null, '5', 's4', '3', '22号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6eb6ef84c71a4d8192a6bbb2f61f9f9c', '4b1cf64dfc6046a586b31cea2b6a2584', '24', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6ec60304883a4814a7b9840714459d65', '3424bf3069a84207a05543ed0fb25b22', '54', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6eeefdb23feb4fcf8da0defb3f1a1323', 'b045771bc1c04aad8ab005a8591f5bdf', '23', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6f01f3f385f54da9a4835a12743399d0', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '1', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6f1e4a4a4fa14b4a9062d7ab38d9a046', '184d9d479daa4951b057301ea99b8e39', '113', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '55号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6f7cc75c8878482b9fc8e4de3f9b3451', 'a12ef2a8720b4825b22eccd02e950c83', '40', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6fb44734196444d2a0eef54ad08074dc', '4b1cf64dfc6046a586b31cea2b6a2584', '42', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6fdee54313fd48ca9d7a43ee648fcda7', '184d9d479daa4951b057301ea99b8e39', '118', null, null, null, null, null, null, null, null, null, null, '5', 's4', '3', '22号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('6fe15b7590cd4d979457adc85334a9f6', '4b1cf64dfc6046a586b31cea2b6a2584', '5', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('701af5e139c648818e2362b0f4282b9c', '91319767cc08408190fb317d04e52f7c', '14', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('70600b5fb82747c1846ac47ce8698b59', '91319767cc08408190fb317d04e52f7c', '17', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('70d9fbf34ae145b0a4bb720d8549cbf2', '14acf216023640668c16f28f40986012', '5', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7128fe9c03d846f4813492869d2fac24', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '6', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7163a6f2f1c74bdca7bdd47b92a821f1', '91319767cc08408190fb317d04e52f7c', '41', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('716ede474a8c45b6bdc393f1a1954b63', '184d9d479daa4951b057301ea99b8e39', '63', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '9号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('71acdd5d70e14417a355a07c0d18bca3', '530d6bc51bd94bef9bc88442dd69a277', '19', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('71fc7e3f39424d0f90550f792f1a1af6', '184d9d479daa4951b057301ea99b8e39', '46', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7237f5096c1b4c9fbe9d9de2edfe75d0', 'df77e4db968341f4859256a63dbac117', '29', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('728e685d84444c93805670740503ecb8', '29999bdfe94446a89fe0d1a764e05603', '30', '2017-06-15 00:00:00', '4', '2', '2', '2', '2', '3', '2', '2', null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '14', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('72df7d4ebcae435ebea1c546cfef5640', '184d9d479daa4951b057301ea99b8e39', '126', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('72ecf6692f5a4abc9485fe31f4ad21a6', '29999bdfe94446a89fe0d1a764e05603', '2', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('73052f54d9524cb79e7ffe8564f0a39b', '184d9d479daa4951b057301ea99b8e39', '45', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7312bbf67a56421e8f6feec83acaa53d', '1f1dc4cf8e294c5293b81c828238b614', '86', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('73415c8be910435a8644e9d8a8462e67', '3424bf3069a84207a05543ed0fb25b22', '60', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('73b3993c2ccb4d409af792e740f34dfe', 'df77e4db968341f4859256a63dbac117', '15', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('73d5198e09d1446288cf917b38315131', '1f1dc4cf8e294c5293b81c828238b614', '98', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('73e37346b02344d79f59362781f79886', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '55', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('73e49dfa33014b9197932d0924cf74de', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '29', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('73ed56cf8c964654a334087905861ffe', '91319767cc08408190fb317d04e52f7c', '59', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('74181294f5564477879a5bfc00110636', '29999bdfe94446a89fe0d1a764e05603', '33', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('741a6f118fac48599a9a111e04355dbd', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '30', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('74218ba0033b4a68b365c5a03bb8935e', '1f1dc4cf8e294c5293b81c828238b614', '88', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('747c5b37428e4e76ac55b8e33626db1c', '184d9d479daa4951b057301ea99b8e39', '149', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('74b38d01e460468ab2c0416c53ec3e3f', 'e32d028d470c4b8aaeda60b830fc245d', '8', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('750a654ba3bb41a69f2171ec97213ae2', 'df77e4db968341f4859256a63dbac117', '13', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('751b4dcd91f04e308e7839175de56661', '184d9d479daa4951b057301ea99b8e39', '54', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('754af1a67af144b39de83999bd03325a', '1f1dc4cf8e294c5293b81c828238b614', '81', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('755964b3a17344d98d9848e8873bb6b7', 'a12ef2a8720b4825b22eccd02e950c83', '58', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7597d590c747436db52463e26c327e68', 'df77e4db968341f4859256a63dbac117', '41', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('759f158811914228a6fd50d12816ce88', '85773d4072cb4e7bb706916945f5b445', '45', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's5', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('75cdf81425004662b308b8b9d16bf9f8', 'fa9fa72f146f437cb6399d14a50f3b26', '51', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('75d10d0c99574140a09fa6dccd8053eb', 'fa9fa72f146f437cb6399d14a50f3b26', '31', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('75e4fd3deb1746c79dd22313e739346c', 'e32d028d470c4b8aaeda60b830fc245d', '60', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('760c2c3812df40de859e74e40098a49d', '184d9d479daa4951b057301ea99b8e39', '81', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('763b1c41b1e24ac29efcb49945bdce36', 'fa9fa72f146f437cb6399d14a50f3b26', '56', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7654c36e67474cb18d1a839301be47da', 'df77e4db968341f4859256a63dbac117', '57', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7655699852674f8eae861fe40269a378', '184d9d479daa4951b057301ea99b8e39', '97', null, null, null, null, null, null, null, null, null, null, '5', 's3', '3', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7665e56988464eae93b96ae214fb0416', 'e32d028d470c4b8aaeda60b830fc245d', '54', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('766c9f7b7a2b42a392a9f197b55802f4', '184d9d479daa4951b057301ea99b8e39', '138', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7697b32364f34794ba27a6e848e22327', '4b1cf64dfc6046a586b31cea2b6a2584', '51', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('76aa0f13e9934c859e6f8d5f9e1e26dd', '4b1cf64dfc6046a586b31cea2b6a2584', '50', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('76f62de56faa487c9f8af7e25ecb38db', '3424bf3069a84207a05543ed0fb25b22', '39', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7730360b215a45c1b65601fd757ea0fb', '3424bf3069a84207a05543ed0fb25b22', '30', '2017-05-09 00:00:00', '3', '2', '23', '2', '23', '23', '23', '23', null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '14', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('774a6f2262364d03bb31e519dffb3959', '184d9d479daa4951b057301ea99b8e39', '72', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('774e9a3752a44581a7c54cac2f8973a4', '29999bdfe94446a89fe0d1a764e05603', '46', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('779a81e7cdeb4b5d953279ca486d4dff', '184d9d479daa4951b057301ea99b8e39', '73', null, null, null, null, null, null, null, null, null, null, '5', 's3', '5', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('779e3fb5e14f46f9bac5a2962a50ce9b', 'b789c1c2276a495786b79fcffeb940ad', '17', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('77a9bd063f25419a9b0aa88a247b1f8d', '4b1cf64dfc6046a586b31cea2b6a2584', '48', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('786dcace5caf4919b53c30aca42ccd0a', '184d9d479daa4951b057301ea99b8e39', '84', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('78b5b03109ba4b38b461b32e8d815618', '3424bf3069a84207a05543ed0fb25b22', '16', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('78cfece13c7b4176b74da6c2f7af4d5e', 'b789c1c2276a495786b79fcffeb940ad', '15', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('791094f2525942309ee3b8c310facd4a', '184d9d479daa4951b057301ea99b8e39', '129', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('79159cbc1af94d1a897f3a8edf3340d8', '184d9d479daa4951b057301ea99b8e39', '20', '2016-09-08 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y3', '1', '11号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('79daee7e330e4252bde1905fcbcf3eb8', '184d9d479daa4951b057301ea99b8e39', '33', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '9号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('79fbcdc669d04daeb37bbe9a82f0019f', '85773d4072cb4e7bb706916945f5b445', '19', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7a1f6f9a341145b09b2e50d5b1c41f71', '29999bdfe94446a89fe0d1a764e05603', '16', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7ae268df1b47443cb6c9cf356ec442e1', 'df77e4db968341f4859256a63dbac117', '47', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7ae97650f3cb4a628480c0c7f6bfb614', 'df77e4db968341f4859256a63dbac117', '39', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7aebdfd89a604a6b8aa5d0b07d135ec5', '3424bf3069a84207a05543ed0fb25b22', '34', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7af368a1b6a344a887875bd6e58fa722', '184d9d479daa4951b057301ea99b8e39', '101', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7b9f44c96fa64b69bb072368854953f9', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '22', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7bf5a97cf49a4386866e3dc22fc408c9', '14acf216023640668c16f28f40986012', '28', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7c008be096f2488ab3fa17c8b9ddb6ee', '530d6bc51bd94bef9bc88442dd69a277', '20', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7c40078ec5ab4e619722b9a5a9513af3', '184d9d479daa4951b057301ea99b8e39', '64', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7c57e6e124184d5d9a19f71339814dc4', 'fa9fa72f146f437cb6399d14a50f3b26', '28', null, null, null, null, null, null, null, null, null, null, '5', 's4', '3', '22号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7c62e5293c864f929a0ed22e4751b8ec', '14acf216023640668c16f28f40986012', '26', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7c63fc3dd25a491ebf6b7c50a1f43e8b', '85773d4072cb4e7bb706916945f5b445', '28', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7d18a3786f8545efb2013956f3240b3d', '85773d4072cb4e7bb706916945f5b445', '46', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7d3a23785ca94494b91853b6df29a9c2', 'fa9fa72f146f437cb6399d14a50f3b26', '41', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7d52d7b247d54eb09a4a2cc820dca076', '1f1dc4cf8e294c5293b81c828238b614', '4', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7d7e708d76ea4fddb89c1982d39a046a', 'a12ef2a8720b4825b22eccd02e950c83', '3', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '9号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7da7b74e7d754bc0b453623d784cc19f', '530d6bc51bd94bef9bc88442dd69a277', '13', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7ed809edf58744eb805bea730d961815', '3424bf3069a84207a05543ed0fb25b22', '3', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7f0d7950f3fb46579c65a5e3fd74c1ff', 'fa9fa72f146f437cb6399d14a50f3b26', '22', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7f63d7d6d9ce4975b733bb5d7c7190f6', '4b1cf64dfc6046a586b31cea2b6a2584', '79', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7f8a1f4d2a704e2babd3c4ae6ea33a43', '91319767cc08408190fb317d04e52f7c', '90', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '14', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('7faae15f9c724a6281d40f50b93811fa', 'df77e4db968341f4859256a63dbac117', '50', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7fb2ef37e7bb4a2c95e495a9aae9794a', 'df77e4db968341f4859256a63dbac117', '38', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7fca42cfe3214ea184b5ebe2d8513558', '3424bf3069a84207a05543ed0fb25b22', '51', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7fca93a51f8345c2b8c0113677e63fbd', '1f1dc4cf8e294c5293b81c828238b614', '119', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7fed18f9b73f4c7d9a13a8ef434fa55f', '85773d4072cb4e7bb706916945f5b445', '40', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('7ff3d6c89caf493a91b6e5a3959c92eb', 'e32d028d470c4b8aaeda60b830fc245d', '56', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('80563b57d04b473490095d0919ebfe56', '85773d4072cb4e7bb706916945f5b445', '32', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('80d1aa5aefcf409ba2ae132a0294274e', '3424bf3069a84207a05543ed0fb25b22', '42', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('813f8892b94f495d8eb3f24533686dfa', '3424bf3069a84207a05543ed0fb25b22', '9', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('81402771415241c2bdbd8d02afd88e2d', '1f1dc4cf8e294c5293b81c828238b614', '110', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('815b02dd4e9843a7a22045a8205c5eb5', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '45', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8171caea311744a29caafb61f163ce81', '112b08c6faa04d65a5878a4bc8e35016', '23', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8194b576c7b14f1683025ac3e112e3d0', '184d9d479daa4951b057301ea99b8e39', '100', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('81f8e11e7806460aaefbf3eebafeafe1', 'b045771bc1c04aad8ab005a8591f5bdf', '46', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8287c3600bc94462b731c8f3c98326a9', 'fa9fa72f146f437cb6399d14a50f3b26', '47', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8316dd9cf74b47cbb7ae2c220a813468', 'a12ef2a8720b4825b22eccd02e950c83', '14', null, null, null, null, null, null, null, null, null, null, '5', 's5', '4', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('833459042227432b9b03d6fe223c4253', 'df77e4db968341f4859256a63dbac117', '8', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('835bc11d1a9c42a5a0f9407defaa7f76', '184d9d479daa4951b057301ea99b8e39', '86', null, null, null, null, null, null, null, null, null, null, '5', 's1', '3', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('83997e600bb54076b195de5ec6cd90a6', 'b045771bc1c04aad8ab005a8591f5bdf', '17', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('83e903798f604793ba68d8a49c37a6fb', '1f1dc4cf8e294c5293b81c828238b614', '23', null, null, null, null, null, null, null, null, null, null, '5', 's7', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('83f197b4b9f0448d9778ee733aa74dd6', '85773d4072cb4e7bb706916945f5b445', '50', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's5', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('845a2c747201463c9ba3a699bd3795de', 'df77e4db968341f4859256a63dbac117', '25', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('84c1ccf298164562ba63df9ff089f827', '112b08c6faa04d65a5878a4bc8e35016', '30', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '14', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('84f9f6c3acac45319f8078809e4006cc', '14acf216023640668c16f28f40986012', '3', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8500dc89e7a04c569d8d9f12aafa850b', '4b1cf64dfc6046a586b31cea2b6a2584', '83', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('85264c70d2cf4bcc962af101377ca635', 'a12ef2a8720b4825b22eccd02e950c83', '18', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '5号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('854bed03274c450a80c04faf7406331b', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '20', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('856ee8d84a6c488b914fde629930e08f', '530d6bc51bd94bef9bc88442dd69a277', '12', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('85f39d60dc764530affc8d627c274325', '14acf216023640668c16f28f40986012', '16', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('86094d5ebc014b5e86ac6992fb0bffbf', 'fa9fa72f146f437cb6399d14a50f3b26', '14', null, null, null, null, null, null, null, null, null, null, '5', 's5', '4', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('868041ee67cb42cc81583bd2636c9f1b', '1f1dc4cf8e294c5293b81c828238b614', '68', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('86c9566de98948daaffbac659ae4b43f', 'fa9fa72f146f437cb6399d14a50f3b26', '57', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('86ce4f8296ac4a8ebb370ceee6711e57', '29999bdfe94446a89fe0d1a764e05603', '44', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8816158eca3d45f6886a41cb201d769c', 'fa9fa72f146f437cb6399d14a50f3b26', '34', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8835896477f84ebf8048a22577016ad5', 'b045771bc1c04aad8ab005a8591f5bdf', '27', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('884420b9f56344118de935f3eae410f2', '530d6bc51bd94bef9bc88442dd69a277', '26', null, null, null, null, null, null, null, null, null, null, '6', 'S10', '2', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('894a103078ce49a79071e8acf90186fd', 'a12ef2a8720b4825b22eccd02e950c83', '5', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('89bb88f9b1514ff096d13bc9f24840f4', 'a12ef2a8720b4825b22eccd02e950c83', '50', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('89dc738011874f9ea99e3d4463558f11', '1f1dc4cf8e294c5293b81c828238b614', '69', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('89e8fa75f1f24970955d6702276fccbc', '184d9d479daa4951b057301ea99b8e39', '16', '2016-08-30 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y4', '1', '10号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('89f312f8fec346b0bfd73296e391ea76', '184d9d479daa4951b057301ea99b8e39', '36', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8a06fc621a7f4bae82ffa7af660890bf', 'df77e4db968341f4859256a63dbac117', '28', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8a08a04f676047f6a64216cb786760a4', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '35', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8a1e7a9e668744979a35a7e2316ccc27', '1f1dc4cf8e294c5293b81c828238b614', '97', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8a1edf5f001e449ea436d145b374e486', 'df77e4db968341f4859256a63dbac117', '1', '2017-05-18 00:00:00', '23', '23', '23', '23', '23', '23', '23', '23', null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8a38691079784d7aabd9de7e41414db1', '184d9d479daa4951b057301ea99b8e39', '140', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8a716b6ae71e45fc93c02995cbf41774', 'e32d028d470c4b8aaeda60b830fc245d', '18', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8a87b8bb7d3c4731805348a4010119cc', '184d9d479daa4951b057301ea99b8e39', '94', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8b0590816ac64598b94fb6b1bfd82f6a', 'df77e4db968341f4859256a63dbac117', '9', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8b6dd969bc3a4391881c1773b5b52037', '112b08c6faa04d65a5878a4bc8e35016', '12', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8b8311b8cd2e4cf485f1ba3bfad6e155', '85773d4072cb4e7bb706916945f5b445', '56', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8bcf461f61ee4cb496fb97c0b6fe694c', 'fa9fa72f146f437cb6399d14a50f3b26', '25', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8beb69c4230f4241ae34d1d4e62438a8', 'e32d028d470c4b8aaeda60b830fc245d', '5', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8c02526c37c9415e910de68792afe82a', '530d6bc51bd94bef9bc88442dd69a277', '2', '2016-07-14 00:00:00', '0.5(2)', '0.5(1)', '0.5+3', '0.5+5', '0.5(1)0.6(2)0.6+4 	', '0.6(1)0.6+5', '0.6(2)0.6+4', '0.6(1)0.8(3)1.0(4)1.0+5', null, '6', 's5', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8ca60bdadce4407bb504498941306636', 'b045771bc1c04aad8ab005a8591f5bdf', '41', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8cc5ba2196484b7fab262914e4347f40', '184d9d479daa4951b057301ea99b8e39', '38', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8cc7f31875e842e496708bce09e854c0', 'b045771bc1c04aad8ab005a8591f5bdf', '16', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8ce31d91a7ac44a399a18a1493074239', '3424bf3069a84207a05543ed0fb25b22', '53', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8cf300dfe859407497de0093386bcc48', '184d9d479daa4951b057301ea99b8e39', '66', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8cffff4fbee0477e9030cdaf8943ccb1', '91319767cc08408190fb317d04e52f7c', '15', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8d13dfc4970b433795a9edd51f90b1be', '4b1cf64dfc6046a586b31cea2b6a2584', '6', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8d4be126e5284dbd8f90c5e7ddc89b4c', '3424bf3069a84207a05543ed0fb25b22', '37', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8d64ba37919e4db68fbe9d44ffcf76f9', '91319767cc08408190fb317d04e52f7c', '85', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8d7770cf530c49d69b42e36a77ee3341', 'e32d028d470c4b8aaeda60b830fc245d', '55', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8dacdc4382cd4377ab5ccd17eb454109', '1f1dc4cf8e294c5293b81c828238b614', '67', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8dc1156c01684084b66a05b28befcd19', '14acf216023640668c16f28f40986012', '25', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8ddc08fd23ce4a1e837be420b7edfb29', '184d9d479daa4951b057301ea99b8e39', '19', '2016-09-06 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y4', '1', '10号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8ee802dff3264b888c59a6098e05ec4e', '85773d4072cb4e7bb706916945f5b445', '3', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8f0f2112d5494a2fa2dbeca1f8138a24', 'b045771bc1c04aad8ab005a8591f5bdf', '26', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8f856617aa7d443a925649878074a5cc', '29999bdfe94446a89fe0d1a764e05603', '39', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8f8c0df32cb346b5b513f625769794f7', '4b1cf64dfc6046a586b31cea2b6a2584', '4', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8f93195a312543e2acc5bb948c70f533', '3424bf3069a84207a05543ed0fb25b22', '38', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8fa51b079a34475bb3907e5dbcd9d333', 'e32d028d470c4b8aaeda60b830fc245d', '9', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8fd0a60b47804fc8b3304511f305f7dc', 'e32d028d470c4b8aaeda60b830fc245d', '17', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8fdc6eeb83414f18b2d33a47ed050b01', '112b08c6faa04d65a5878a4bc8e35016', '18', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('8fef2a55976b4761989bbadbc6687053', '91319767cc08408190fb317d04e52f7c', '71', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('902fd69132984c1aa3a269344cc961c4', 'b045771bc1c04aad8ab005a8591f5bdf', '13', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9031d150e4b242388a464602baa9455c', 'e32d028d470c4b8aaeda60b830fc245d', '32', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('90ef5bc133fe49c09fc9fb4207906884', '184d9d479daa4951b057301ea99b8e39', '90', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '2号图纸', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('912c8fb10cc747fbaca6596e22f5a086', '29999bdfe94446a89fe0d1a764e05603', '13', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('91e5378df4d04bacb2e0479e7474e2bf', 'b789c1c2276a495786b79fcffeb940ad', '33', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('928076ae094d447e84a4072935287b3a', 'fa9fa72f146f437cb6399d14a50f3b26', '29', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '23号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('935fb9bbc1114ec08feb59fe2b832e68', '1f1dc4cf8e294c5293b81c828238b614', '80', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('936b964ac9bb4a49bb54660995d8eff2', '91319767cc08408190fb317d04e52f7c', '45', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('93aa53939dcf498fa29f2bf02d5a2e06', 'b045771bc1c04aad8ab005a8591f5bdf', '31', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('93bda8d61042449993f695481cc614aa', '184d9d479daa4951b057301ea99b8e39', '12', '2016-08-09 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y3', '1', '10号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('93f2d1795ec84759a104fa835f8a92f6', '91319767cc08408190fb317d04e52f7c', '72', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('946029bc45a1427eaa4a2b3a8c747e50', '4b1cf64dfc6046a586b31cea2b6a2584', '11', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('948133d4fa084606a748045d022821b1', '91319767cc08408190fb317d04e52f7c', '60', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '14', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('94aaad07ac224bbaa69fdd5b1664c46d', 'fa9fa72f146f437cb6399d14a50f3b26', '45', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9510320c68c34dcf8415deff5a15584d', '184d9d479daa4951b057301ea99b8e39', '8', '2016-07-16 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y1', '1', '10号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('958a74cb89c247deb715e88338bfbcb7', '14acf216023640668c16f28f40986012', '15', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('96064342215c4b44adf5c84f4dfe0ed5', '4b1cf64dfc6046a586b31cea2b6a2584', '58', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('96ad13666e094b0bb3fbe151773dba94', '3424bf3069a84207a05543ed0fb25b22', '32', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('96b7e4b7cd0d4341b4adf01072319f08', '184d9d479daa4951b057301ea99b8e39', '71', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('96cebecdd90e448f9277e0e402c311c6', 'a12ef2a8720b4825b22eccd02e950c83', '33', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9711590d93a34bcea3c2063cc968095a', '4b1cf64dfc6046a586b31cea2b6a2584', '31', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('973be5bcb3454221bac6fb060d1e0a3e', 'a12ef2a8720b4825b22eccd02e950c83', '37', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('97f987f2b85949c1922a4dbc81e4d3fa', '91319767cc08408190fb317d04e52f7c', '68', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('986fc21d84e547e7be16725c177ceded', '91319767cc08408190fb317d04e52f7c', '77', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('987a6c7922ba4c0d958318577de63a26', '4b1cf64dfc6046a586b31cea2b6a2584', '1', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '1号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('98a787269c0d41b981783c676be0f11f', '184d9d479daa4951b057301ea99b8e39', '68', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('98fb9899931d4c359c09a49f9bf406fa', '4b1cf64dfc6046a586b31cea2b6a2584', '18', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('99762c7db0b542cfaec071fe15c3f147', '91319767cc08408190fb317d04e52f7c', '30', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('9a01cbd0cc2c4057ba2e821d0628d99e', 'a12ef2a8720b4825b22eccd02e950c83', '55', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9a884d0bacaa4d229ddef8115ebe90ef', '3424bf3069a84207a05543ed0fb25b22', '55', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9a8aff92c1c145deba0884c42e0559bd', '4b1cf64dfc6046a586b31cea2b6a2584', '52', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9b4458d80f8c4a43806fac31958e676b', '29999bdfe94446a89fe0d1a764e05603', '19', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9b55515fa4b148d99c6e07f8281fe97a', 'b045771bc1c04aad8ab005a8591f5bdf', '60', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('9b915f11918444678f557f5b8b4ea15d', '184d9d479daa4951b057301ea99b8e39', '143', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9c1766377b434f31a2ae8ffb5af9dc27', 'b789c1c2276a495786b79fcffeb940ad', '4', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9c2b7de8b355403199828cd6dde851c7', '4b1cf64dfc6046a586b31cea2b6a2584', '25', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9c4aefeb9ed64e61b039edf2225b25ad', '1f1dc4cf8e294c5293b81c828238b614', '66', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9c52019f2c5c44a5a9b5a0240e0d8c30', 'df77e4db968341f4859256a63dbac117', '19', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9c56f74ebcfb4fd88b1623e5ae7c906c', '85773d4072cb4e7bb706916945f5b445', '26', '2016-10-30 00:00:00', null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9df08476e4d745689e2d17cb7e38e1e6', '184d9d479daa4951b057301ea99b8e39', '52', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9e08b7f8f96e40d68d5712ff8960ad15', 'a12ef2a8720b4825b22eccd02e950c83', '23', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '55号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9e666487052748f981097c1b1d0b39f8', 'fa9fa72f146f437cb6399d14a50f3b26', '38', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9e8fb4265e8f4e0191aa7b2f53d5288b', '184d9d479daa4951b057301ea99b8e39', '74', null, null, null, null, null, null, null, null, null, null, '5', 's5', '4', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9eb8f63bd5d14bf4973a45802ee172e0', '1f1dc4cf8e294c5293b81c828238b614', '71', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9ec1738be8f0441fac83be0c783dcc99', '184d9d479daa4951b057301ea99b8e39', '25', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9ee16d437f2448e8a04c0055444efd53', 'a12ef2a8720b4825b22eccd02e950c83', '4', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9f127825744544edbedbfde55c434651', '3424bf3069a84207a05543ed0fb25b22', '4', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9f1a96dcb4084fafa46004046036dc0e', '184d9d479daa4951b057301ea99b8e39', '106', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9f451ebf90cb47299c348c4bf1628360', '91319767cc08408190fb317d04e52f7c', '51', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9fa8a877b5fb44e698087f52203f15df', 'a12ef2a8720b4825b22eccd02e950c83', '1', '2016-06-20 00:00:00', '12', '23', '123', '3', '23', '12', '12', '32', null, '5', 's2', '1', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9fae322f78954d93810a4cc9a9fc1d19', '1f1dc4cf8e294c5293b81c828238b614', '5', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9fe599081cbc40fdb46f33fd62ac312d', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '33', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('9ffac0504973403289714e2d6653798c', 'b045771bc1c04aad8ab005a8591f5bdf', '32', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a016a40bd1ac4684a0ff089c3775c8bd', '184d9d479daa4951b057301ea99b8e39', '75', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a048bd568c46491a83f79ac67c58503e', 'df77e4db968341f4859256a63dbac117', '2', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a08082bf3e5d4ad78dd4e5fbc6d9d981', '14acf216023640668c16f28f40986012', '19', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a0b116f829e74c509e5da3a5a53324c7', '184d9d479daa4951b057301ea99b8e39', '89', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '23号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a0c17a599de547dfa8be5dc7a23fba3d', '112b08c6faa04d65a5878a4bc8e35016', '15', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a1081357837849cd8e36e2400dd8701e', '3424bf3069a84207a05543ed0fb25b22', '13', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a11d6da04b6d4f09b74c743ba2c7f4ca', 'b045771bc1c04aad8ab005a8591f5bdf', '5', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a1490e25e99e41c99eb1a41b4d901356', 'b045771bc1c04aad8ab005a8591f5bdf', '50', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a16b03914845453993225c8423095ebd', '29999bdfe94446a89fe0d1a764e05603', '28', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a1918028e0a7431d87d32b9bb63a8402', '4b1cf64dfc6046a586b31cea2b6a2584', '45', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a1adbae0751e44239e1d941d90a27f54', '1f1dc4cf8e294c5293b81c828238b614', '52', null, null, null, null, null, null, null, null, null, null, '5', 's6', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a1e69481359d45579cbec27cb5384f35', '29999bdfe94446a89fe0d1a764e05603', '24', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a1e844944d8f432aa9a8cafbd3a93f7b', 'e32d028d470c4b8aaeda60b830fc245d', '39', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a2149ba286994a9bb4b01dc36580c3eb', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '44', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a2154c11678944a8ac9d642c6eb00fca', 'e32d028d470c4b8aaeda60b830fc245d', '12', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a274845520c84de3ae1a8d20e63d8299', '1f1dc4cf8e294c5293b81c828238b614', '39', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a298f90c49f0472b8edb084e7dc01e6d', '184d9d479daa4951b057301ea99b8e39', '41', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a33f254df2d440669a13d3ea061904a4', '1f1dc4cf8e294c5293b81c828238b614', '17', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a367ad5e4f734980933ab45466ad5250', '14acf216023640668c16f28f40986012', '13', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a3999e7cdd754c98afbb9fbedfdba5b3', 'fa9fa72f146f437cb6399d14a50f3b26', '46', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a4027c903b1141e09fae6b1df6ed7117', '29999bdfe94446a89fe0d1a764e05603', '49', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a4075b19cec24a8a8b299b0a772b354c', '4b1cf64dfc6046a586b31cea2b6a2584', '7', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a436ab7dfc544148a2fb64bf8c298402', '184d9d479daa4951b057301ea99b8e39', '96', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a441e5199bb04661976a92c0176cea8b', '85773d4072cb4e7bb706916945f5b445', '33', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a475906b3e804cdb9eecb3d78d90b059', 'a12ef2a8720b4825b22eccd02e950c83', '57', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a536b6b317c04ae48f534cbe3cdd687d', '184d9d479daa4951b057301ea99b8e39', '18', '2016-09-04 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y3', '1', '11号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a5ae5dc12e52419ca98a4398a5ea19f2', 'a12ef2a8720b4825b22eccd02e950c83', '25', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a5c8f5a482214b9797cf80c579e1c148', 'e32d028d470c4b8aaeda60b830fc245d', '10', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a6178fbaf6654227a6f4f7a4ed624cbd', '85773d4072cb4e7bb706916945f5b445', '36', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's2', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a62879887de447baa7bc67734a1ffeb4', '29999bdfe94446a89fe0d1a764e05603', '40', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a688f89901914875be9cd9a923cee86d', '184d9d479daa4951b057301ea99b8e39', '114', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a698fc81428549f49beca5ea7f01b165', '1f1dc4cf8e294c5293b81c828238b614', '76', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a6a006a3687e4d679ba5ef061c706a0a', 'a12ef2a8720b4825b22eccd02e950c83', '2', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a6da35547b214ae298230a8e59456e8c', '91319767cc08408190fb317d04e52f7c', '56', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a6e4ae9b1f534b6ea71e2219990c473c', 'fa9fa72f146f437cb6399d14a50f3b26', '44', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a7176ff32884480b89250162938b3370', '1f1dc4cf8e294c5293b81c828238b614', '18', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a7461943f19a4b969bb0946ec37d1b8f', '1f1dc4cf8e294c5293b81c828238b614', '41', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a7689cdea4504b59a203f038b6b28b8d', '29999bdfe94446a89fe0d1a764e05603', '41', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a7b9ef04f2594a62bab01020c9893fa4', 'fa9fa72f146f437cb6399d14a50f3b26', '48', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a851bd0968944135905985d00e4fd749', '1f1dc4cf8e294c5293b81c828238b614', '27', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a85eaa8288df4cb3a3076ea7d658242e', '29999bdfe94446a89fe0d1a764e05603', '27', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a86969ba230e48d8b86acad59d9212d0', 'b045771bc1c04aad8ab005a8591f5bdf', '52', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a883747dd29e4978971ab111160fedd3', 'a12ef2a8720b4825b22eccd02e950c83', '9', null, null, null, null, null, null, null, null, null, null, '5', 's1', '5', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a88ae88c6b794a4e80a7a72b5adb9121', '112b08c6faa04d65a5878a4bc8e35016', '21', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a8d5f02dfaef4fdea45a8e14961165e5', '91319767cc08408190fb317d04e52f7c', '57', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a8e09875d7124354aafe5fcf07a813d1', 'a12ef2a8720b4825b22eccd02e950c83', '60', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('a967c8eafd8e4225b6f630f55f8bdac1', '29999bdfe94446a89fe0d1a764e05603', '4', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a9c3e4f8898e46359ba5743eeb39f500', '1f1dc4cf8e294c5293b81c828238b614', '28', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('a9febac727924f199cdeb5910adc75dc', '4b1cf64dfc6046a586b31cea2b6a2584', '21', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('aa0af67826ed4870b33f3fdf09cb0f6f', '1f1dc4cf8e294c5293b81c828238b614', '87', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('aa30b7df4c5f4948920256b2f65432e6', '85773d4072cb4e7bb706916945f5b445', '1', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('aaa3387ee9b546af94832faab4e5b3db', 'b789c1c2276a495786b79fcffeb940ad', '13', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('aaa5530fe8b74972869b0ff3c322e3e6', 'df77e4db968341f4859256a63dbac117', '7', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ab0ec06d7bf941b788ef1be0fe45f7e8', '29999bdfe94446a89fe0d1a764e05603', '7', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ab0fd4a1718e4e7b9d7e83c01eeed85d', '4b1cf64dfc6046a586b31cea2b6a2584', '47', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('abb38d845b1344a3a1142b82013efe2b', 'b789c1c2276a495786b79fcffeb940ad', '20', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('abd431984194457f90bbf4f004b7b2c0', '1f1dc4cf8e294c5293b81c828238b614', '64', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ac056e03f2204857aaa9ba90fac01d07', '85773d4072cb4e7bb706916945f5b445', '48', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's7', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ac72eb68f2734976becf012ab78bd875', 'b045771bc1c04aad8ab005a8591f5bdf', '43', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('acab8b92ceb7495794ae855012b5f75b', '530d6bc51bd94bef9bc88442dd69a277', '11', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('acdede16fcc64b0e91baffa925f322f3', '85773d4072cb4e7bb706916945f5b445', '29', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ace1965f9b4b4b2195a8f8eb277ec65f', '184d9d479daa4951b057301ea99b8e39', '2', '2016-07-01 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y4', '1', '9号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('acf796807c064b65907d9c986eb29068', 'fa9fa72f146f437cb6399d14a50f3b26', '20', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ad3473b300ac4972adc194b3c75fc738', '184d9d479daa4951b057301ea99b8e39', '60', null, null, null, null, null, null, null, null, null, null, '5', 's2', '6', '2号图纸', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('ad35ca80e64746e282306cecf65fef6e', '14acf216023640668c16f28f40986012', '4', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ad4c9792e1a84242a6c0e5ce96dd148d', 'b045771bc1c04aad8ab005a8591f5bdf', '29', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ad792859857c46e1996eb4708dbdd5b5', '1f1dc4cf8e294c5293b81c828238b614', '43', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ad7d90168d8b41d58ec3d645f6cf6335', '1f1dc4cf8e294c5293b81c828238b614', '9', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ad9980dd55be46849341f5f6db0f178c', '112b08c6faa04d65a5878a4bc8e35016', '1', '2017-05-23 00:00:00', '8', '9', '5', '67', '4', '2', '3', '2', null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '3', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ada7f816eb634bc09b1ff41c43abf4bc', '85773d4072cb4e7bb706916945f5b445', '31', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('add9a0e0cd304056832add3951b06134', '85773d4072cb4e7bb706916945f5b445', '6', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ade9069d356a424789ecd052fb9dd220', '1f1dc4cf8e294c5293b81c828238b614', '108', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ae2f6b99c57f41d69de6fe502c221d01', '91319767cc08408190fb317d04e52f7c', '43', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ae5897feecc14692804040be211e553d', 'e32d028d470c4b8aaeda60b830fc245d', '13', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ae7bdfa4c1664489b7d457f447efc41c', '112b08c6faa04d65a5878a4bc8e35016', '2', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('aeb1ae8fe4ec4c1bb2e9a261f3cd7465', '3424bf3069a84207a05543ed0fb25b22', '49', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('aee5c14f64384ee18bf8871320b88487', 'fa9fa72f146f437cb6399d14a50f3b26', '35', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('af09d8d170164fd7920b808f2cd803e8', '184d9d479daa4951b057301ea99b8e39', '107', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('af1832a5c33147398d3e58f79ea186fc', '91319767cc08408190fb317d04e52f7c', '52', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('af4343364cff467b9fa148af7bb92dce', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '46', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('af7612d1ecf841e88411dc561b58d773', 'df77e4db968341f4859256a63dbac117', '59', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('af7879918987424f94aac72d4ac71c82', 'b045771bc1c04aad8ab005a8591f5bdf', '25', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('afa45ac51a594348b68ca7d6960f4194', '4b1cf64dfc6046a586b31cea2b6a2584', '82', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('afaefad8ca5f41ceb8a6e42848864654', 'b789c1c2276a495786b79fcffeb940ad', '14', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b03abc9a12924d40a189da843a425225', '85773d4072cb4e7bb706916945f5b445', '22', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b03d8ce3516d4fd7bbfbe7dfb2288eab', '4b1cf64dfc6046a586b31cea2b6a2584', '49', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b042ada1063f47f0ab06389e4d032e26', '14acf216023640668c16f28f40986012', '30', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '14', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('b079c322a56c4693b3486803c2ea619b', 'e32d028d470c4b8aaeda60b830fc245d', '11', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b094970561564ae8a29a9048a5611984', 'b789c1c2276a495786b79fcffeb940ad', '2', '2016-05-26 00:00:00', '12', '23', '43', '32', '12', '32', '21', '43', null, '5', 's1', '1', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b17d604d7667455ea13cf1366fce03fb', '29999bdfe94446a89fe0d1a764e05603', '60', '2017-06-07 00:00:00', '2', '2', '2', '2', '3', '2', '2', '2', null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('b1a694921b884f3581f0b1fae6d1dd7c', '1f1dc4cf8e294c5293b81c828238b614', '36', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b1b5fae946904cb3a8217daf2ad29ad2', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '49', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b1eeef47b3c14138b3fa947be73e1535', '1f1dc4cf8e294c5293b81c828238b614', '15', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b1f63a36d4194e98858a5a61cc9530e5', 'e32d028d470c4b8aaeda60b830fc245d', '31', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b20f5b84eb0d41e1bbfb17730bab9d37', 'fa9fa72f146f437cb6399d14a50f3b26', '8', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b22a633f92ab4e90bad57a199cef075d', '184d9d479daa4951b057301ea99b8e39', '31', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b26c1bf2df6f4825a6cc65b8666dd84a', '4b1cf64dfc6046a586b31cea2b6a2584', '76', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b2c0369eead947f290725856a9da8b15', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '8', null, null, null, null, null, null, null, null, null, null, '6', 's5', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b382eecc82194ff7b9f1c0a15210ee2d', '112b08c6faa04d65a5878a4bc8e35016', '28', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b3a7016003514257a5fd5faade14d2c1', '3424bf3069a84207a05543ed0fb25b22', '15', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b3f7eb858f3c4734abcdaac088553716', 'b045771bc1c04aad8ab005a8591f5bdf', '18', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b3ffb0fe6af7409f87a7ee62fc1e8251', '91319767cc08408190fb317d04e52f7c', '62', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b411218cade04621af98d1b707b00647', '14acf216023640668c16f28f40986012', '10', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b41d303f8a9348cb9cd22308359ed98d', '29999bdfe94446a89fe0d1a764e05603', '42', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b43c86c45be44363a29edec6a19d7248', '184d9d479daa4951b057301ea99b8e39', '132', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b4ab25f03ed842e7b2bd1ff54332cba3', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '59', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b4b0becd8daf45d38deb9702a670564b', '1f1dc4cf8e294c5293b81c828238b614', '105', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b4ccd2f9fa114c1487ba3cfbcb2238c3', '85773d4072cb4e7bb706916945f5b445', '39', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b4f4e88ae1bb4150bfd1026aeb7dd9d4', '4b1cf64dfc6046a586b31cea2b6a2584', '44', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b53f67aaa9f84db9aa74f837e0854fc6', '1f1dc4cf8e294c5293b81c828238b614', '29', null, null, null, null, null, null, null, null, null, null, '5', 's5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b55133ef2d064db2a5f1298f1568a6b3', 'b789c1c2276a495786b79fcffeb940ad', '3', '2016-05-25 00:00:00', '23', '12', '23', '1', '23', '23', '3', '1', null, '5', 's1', '1', '9号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b5816276e2284bbfb7176169f58d6d60', 'a12ef2a8720b4825b22eccd02e950c83', '6', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b587df4c1ad24b7eba498d4ead59473a', '91319767cc08408190fb317d04e52f7c', '16', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b5953d1349354629834a06e1b7762880', '4b1cf64dfc6046a586b31cea2b6a2584', '65', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b5be6032ee664535be92036298644423', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '47', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b5d6fce5c5a14faaa13e8ef43a908cb3', '29999bdfe94446a89fe0d1a764e05603', '53', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b616457ca5b24291a5fa5747fed67819', '4b1cf64dfc6046a586b31cea2b6a2584', '41', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b624187ea21548d3bdd0bbc1707c0ca7', '85773d4072cb4e7bb706916945f5b445', '38', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b64437c5923c4ead88919fba478f9fb9', '112b08c6faa04d65a5878a4bc8e35016', '3', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b66afa4f861449cf9d247174dba3579f', '4b1cf64dfc6046a586b31cea2b6a2584', '17', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b6810f6594d14298815a356ab37a7b86', '4b1cf64dfc6046a586b31cea2b6a2584', '37', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b68787b175d94a39a05244675edf9cd7', '112b08c6faa04d65a5878a4bc8e35016', '13', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b6c14f3411324f008e7238174f55d4e2', '85773d4072cb4e7bb706916945f5b445', '55', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's5', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b708324c312245b28b947248657785a3', 'e32d028d470c4b8aaeda60b830fc245d', '28', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b72fd23b41a94ab6ae9493c5c0cc0d47', '85773d4072cb4e7bb706916945f5b445', '17', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b74323c49159472a899e0253d1e128c4', '29999bdfe94446a89fe0d1a764e05603', '47', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b74af642cfa24c3a8b78faac260434fc', 'b045771bc1c04aad8ab005a8591f5bdf', '34', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b75ddca2b8534fc9b38ef542f2ecf2cd', '91319767cc08408190fb317d04e52f7c', '84', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b78f93b0f6d148eeaa22bfe0eb126319', '184d9d479daa4951b057301ea99b8e39', '7', '2016-07-12 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y2', '1', '10号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b79cfcc7db9c42e1bf3c83c0d6af0f8b', '85773d4072cb4e7bb706916945f5b445', '27', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b7c7e9809e604322b82dcee7adcb5a0c', 'b045771bc1c04aad8ab005a8591f5bdf', '9', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b7cbc8dbb40e41e6b67aaee3eaa6f4f7', 'a12ef2a8720b4825b22eccd02e950c83', '8', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b882a7e97d374acfa3069965a2e97ac9', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '11', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b8b7df92629a47b7af1d755b938196ae', '4b1cf64dfc6046a586b31cea2b6a2584', '80', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b8bae1615a81444cab5ea6e611a80f46', '1f1dc4cf8e294c5293b81c828238b614', '61', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b8dc891c75fe4b258e60eaac501fa510', '184d9d479daa4951b057301ea99b8e39', '147', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b96093e154154ea3b7a3b6d656a47fdf', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '2', null, null, null, null, null, null, null, null, null, null, '6', 's5', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b9dee685f4614dd0b476b8463407421a', 'b045771bc1c04aad8ab005a8591f5bdf', '51', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('b9f96d7acc194f75bf1340166bb4697c', '85773d4072cb4e7bb706916945f5b445', '16', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ba15cd0ed22e4f99945ac2dfa260b0fb', '184d9d479daa4951b057301ea99b8e39', '93', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '9号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ba1bfd2f5a03497cad0726d058ed845b', '184d9d479daa4951b057301ea99b8e39', '105', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ba5474213c1447f9a95629b46f7e12f9', '184d9d479daa4951b057301ea99b8e39', '112', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bb4ebd4460884729886e19b46c1c5e72', '29999bdfe94446a89fe0d1a764e05603', '22', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bb5e30a13cec455cb9354945777dce4f', '1f1dc4cf8e294c5293b81c828238b614', '46', null, null, null, null, null, null, null, null, null, null, '5', 's5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bbbc249d69654e18a5435ff327894f0e', '1f1dc4cf8e294c5293b81c828238b614', '3', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bcbe8b7a34d141b4b8fc0a2a81ba5f7a', '14acf216023640668c16f28f40986012', '27', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bcf11f2d693744589653c02a109a8d92', 'b045771bc1c04aad8ab005a8591f5bdf', '21', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bcf2dbd3a8834b838a1416afd4179da4', 'b045771bc1c04aad8ab005a8591f5bdf', '47', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bd3a4f8180eb4d08a6b51b8d306a5f09', 'df77e4db968341f4859256a63dbac117', '30', '2017-05-10 00:00:00', '23', '23', '23', '23', '23', '23', '23', '23', null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '14', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('bda5206915be4b1a87803693f420f9b9', 'e32d028d470c4b8aaeda60b830fc245d', '29', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('be016a32daa747d5927567baf777b579', '184d9d479daa4951b057301ea99b8e39', '77', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('be4f2c2e82e149009cc94d78ab9ddc28', '91319767cc08408190fb317d04e52f7c', '47', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('be523594eae142179bef7e9a1f4973fc', '14acf216023640668c16f28f40986012', '11', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bea52dd78ef349f9b320cff5549d202f', 'fa9fa72f146f437cb6399d14a50f3b26', '18', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '5号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('beb2094e0ee8486aa7e9817198bf0cb2', 'b045771bc1c04aad8ab005a8591f5bdf', '28', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bef675439e5446aa8e1d82c30ae827e4', '3424bf3069a84207a05543ed0fb25b22', '18', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bf2bef65137c405ab908ad2a9d4210f7', '1f1dc4cf8e294c5293b81c828238b614', '31', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bf53477359a747f584b593d5c9479824', '4b1cf64dfc6046a586b31cea2b6a2584', '12', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bfa61770ea614bc99b7cbcadfefd7974', '184d9d479daa4951b057301ea99b8e39', '67', null, null, null, null, null, null, null, null, null, null, '5', 's3', '3', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bfac06d3940440ba86641c781f41427b', '29999bdfe94446a89fe0d1a764e05603', '9', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('bfbac82c36b948ea889e7627658ffdd8', '184d9d479daa4951b057301ea99b8e39', '35', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c00da920b777499eb17e064a0dd9e3b6', 'a12ef2a8720b4825b22eccd02e950c83', '15', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c015103796844c7da1d0b8a070ac2f4f', '530d6bc51bd94bef9bc88442dd69a277', '5', '2016-08-11 00:00:00', '', '', '', '', '', '', '', '', null, '6', 's3', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c0614c7b434f4d60bb16c9255258dbcf', 'fa9fa72f146f437cb6399d14a50f3b26', '7', null, null, null, null, null, null, null, null, null, null, '5', 's3', '3', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c07baad3f7304eb48e9a2d3b083ee168', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '36', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c092ebeeca2540e0ad4e7ef39de7520c', '1f1dc4cf8e294c5293b81c828238b614', '93', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c111e6a5d0a44346977d2284d962d5f0', '1f1dc4cf8e294c5293b81c828238b614', '58', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c13a8368121044d4ba354bacb410b5c6', '184d9d479daa4951b057301ea99b8e39', '65', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c140348e6d1945bcb1fa03c7aa61e57c', '4b1cf64dfc6046a586b31cea2b6a2584', '23', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c16a08f8d7054d228875aea2a809ad83', '85773d4072cb4e7bb706916945f5b445', '15', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c2476dd64aa44e40b79b75fc1053f4de', 'b045771bc1c04aad8ab005a8591f5bdf', '10', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c28415e5e63141549f81472a8b4ee207', '1f1dc4cf8e294c5293b81c828238b614', '32', null, null, null, null, null, null, null, null, null, null, '5', 's5', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c2c4999258924ebb8bbfb3f62a0cecb3', '29999bdfe94446a89fe0d1a764e05603', '20', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c319c6f729254c6f9dadf2cb66f2d981', 'a12ef2a8720b4825b22eccd02e950c83', '54', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c3595fafa2a14e13976eee7b59fa9660', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '32', null, null, null, null, null, null, null, null, null, null, '6', 's5', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c3732b9517184cbfb27270a1896e95a5', '29999bdfe94446a89fe0d1a764e05603', '45', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c3d9bbbae6444cabbdc1ed4d2f850c7e', 'a12ef2a8720b4825b22eccd02e950c83', '30', '2016-06-21 00:00:00', '12', '23', '234', '53', '12', '321', '3', '2', null, '5', 's2', '6', '2号图纸', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('c4248277fbaa454290b78d574601fd59', 'b789c1c2276a495786b79fcffeb940ad', '25', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c42eed81a55b4227b993fb547d79abee', 'fa9fa72f146f437cb6399d14a50f3b26', '9', null, null, null, null, null, null, null, null, null, null, '5', 's1', '5', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c445ba8258fc40908032387239501c2a', '112b08c6faa04d65a5878a4bc8e35016', '5', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c45490ea95654275a862530b4ea54070', 'a12ef2a8720b4825b22eccd02e950c83', '46', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c4bdb71584b541959da2326d084745e1', '184d9d479daa4951b057301ea99b8e39', '110', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c52ef615babb40198503ec0584d02f56', 'e32d028d470c4b8aaeda60b830fc245d', '38', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c5447a3546fa459698c7b8c230f8030b', 'df77e4db968341f4859256a63dbac117', '10', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c589969464ff4cc487c9c03f69c2fa8e', 'df77e4db968341f4859256a63dbac117', '58', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c607f77dea7d441ea5b2da09d12c1f3e', '85773d4072cb4e7bb706916945f5b445', '37', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c68fa477433740d394b2b07d9a41a13e', '3424bf3069a84207a05543ed0fb25b22', '36', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c6f23051d712429288c557175f243d70', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '53', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c72312bc40ed43b295e713aa0034fdbf', 'df77e4db968341f4859256a63dbac117', '11', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c7315e35910b4027b068e49885267d3d', '1f1dc4cf8e294c5293b81c828238b614', '100', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c795542786bc478d94480ab4c68fcdd9', '1f1dc4cf8e294c5293b81c828238b614', '70', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c7a0bb0cf59f4c5b856912ef5a637783', 'df77e4db968341f4859256a63dbac117', '17', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c7d38b9b4f6c469f82cc6a02261f20f8', 'e32d028d470c4b8aaeda60b830fc245d', '30', '2017-05-16 00:00:00', '23', '23', '2', '3', '2', '2', '2', '3', null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '14', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('c82499b256764c38802a7b615a881bff', '184d9d479daa4951b057301ea99b8e39', '48', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '5号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c85b4bd2237547a880b5a8ee40725ce2', '4b1cf64dfc6046a586b31cea2b6a2584', '53', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c87427ee25694d488df2c9a26b7aafcb', 'e32d028d470c4b8aaeda60b830fc245d', '50', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c8934d32f4f54007b5f9ed27f378f940', 'b045771bc1c04aad8ab005a8591f5bdf', '40', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c92d1bf2b9264fb2802f6fc06426962f', '3424bf3069a84207a05543ed0fb25b22', '6', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('c9ff0509f7974bfc81641701fe9c4308', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '12', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ca0eb7cba92646609391c6ef32b71901', '91319767cc08408190fb317d04e52f7c', '48', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ca15fa01027e4afcafa0d9a4f7c6dbd1', '85773d4072cb4e7bb706916945f5b445', '53', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's8', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ca1b8d384ab744bd80cf080a5798a3da', '1f1dc4cf8e294c5293b81c828238b614', '104', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ca1d9d65000c4e5892eea68716186f60', 'df77e4db968341f4859256a63dbac117', '31', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ca51e4cb9405434e98630d52199dfa17', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '19', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cb01c0bd3e9b41e89545b84a668acf8f', '3424bf3069a84207a05543ed0fb25b22', '58', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cb0de68d089f4478a7b36c27119aecc6', '4b1cf64dfc6046a586b31cea2b6a2584', '67', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cbce21323ccb4f9cb8a462161a5b1a02', 'df77e4db968341f4859256a63dbac117', '46', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cbee4e74357545d6ad57f82a6facf070', 'df77e4db968341f4859256a63dbac117', '26', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cc131d6109614b04bb315d07ddb3baed', '530d6bc51bd94bef9bc88442dd69a277', '8', null, null, null, null, null, null, null, null, null, null, '6', 's5', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cc76be5884c443cabadc389d572025c7', '3424bf3069a84207a05543ed0fb25b22', '29', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cca05d7581844615b90aad16592d3a31', '184d9d479daa4951b057301ea99b8e39', '69', null, null, null, null, null, null, null, null, null, null, '5', 's1', '5', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cca2ab27d948406580c0035d74680eb2', '4b1cf64dfc6046a586b31cea2b6a2584', '71', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cd37d15ce32e4f0d92372c4a5bef26d9', 'b789c1c2276a495786b79fcffeb940ad', '19', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cd909634b58144cfa0397dd1d52a0de3', '1f1dc4cf8e294c5293b81c828238b614', '91', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cdfa651f95ec4272abf5c03c825db8ba', '29999bdfe94446a89fe0d1a764e05603', '1', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cdff0d1f7d48430da03860bf7800d6ff', '4b1cf64dfc6046a586b31cea2b6a2584', '61', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ce0225491e2a4318859e4326d875025a', 'e32d028d470c4b8aaeda60b830fc245d', '57', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ce0bc68541854eaebf11e7ec0dd5aca9', '1f1dc4cf8e294c5293b81c828238b614', '50', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ce24cfab8bab43ff9b9fb7b706026cdb', 'e32d028d470c4b8aaeda60b830fc245d', '26', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ce2f9f0886514f39982598bc0394269b', '3424bf3069a84207a05543ed0fb25b22', '28', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ce4ccd559f424060955a9b4fbb0a3729', '85773d4072cb4e7bb706916945f5b445', '59', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ce85d1eed75a479d9f45e536d730ae5d', 'b789c1c2276a495786b79fcffeb940ad', '32', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ce86a49d7626461a9f4abe07f5f22567', '91319767cc08408190fb317d04e52f7c', '19', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ced7b6ca7630443b9a807fabb351306a', 'df77e4db968341f4859256a63dbac117', '45', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cf37a870458d4f499571cdcade6800b5', '184d9d479daa4951b057301ea99b8e39', '91', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cf70de82486d4ecabb84e7b7e9ace545', '1f1dc4cf8e294c5293b81c828238b614', '11', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cf95df26f67549619c8cbffe30ca4185', '91319767cc08408190fb317d04e52f7c', '82', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cfba67eec4ef4924ac5bd4d77a2ff4ca', '184d9d479daa4951b057301ea99b8e39', '14', '2016-08-14 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y2', '1', '10号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('cfbdcf1fde7d4ab2be56eca8ab91479e', '184d9d479daa4951b057301ea99b8e39', '29', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '23号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d009098890054bb7bb62f74409d43e7a', '184d9d479daa4951b057301ea99b8e39', '43', null, null, null, null, null, null, null, null, null, null, '5', 's3', '5', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d02476fddebc4a11876ffdb03c07ed77', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '40', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d0321ef7db0d4a9eb93c18a315d77adf', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '23', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d0481be6026f494182d74249b3f26b32', 'a12ef2a8720b4825b22eccd02e950c83', '22', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d0a14bbb633746d994d0c80b91499751', 'b045771bc1c04aad8ab005a8591f5bdf', '53', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d0c6666c870546f4bfa0a5915ffb6c0b', '29999bdfe94446a89fe0d1a764e05603', '50', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d0c9822c88ca4842880edbcabe696219', '4b1cf64dfc6046a586b31cea2b6a2584', '43', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d0e4d3a1b98345eea9ae0382d217b5c8', 'df77e4db968341f4859256a63dbac117', '23', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d142c0262060465fa77eefa6b467ca82', '184d9d479daa4951b057301ea99b8e39', '88', null, null, null, null, null, null, null, null, null, null, '5', 's4', '3', '22号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d14d0bd904594a9f9467658858e0b8cd', '91319767cc08408190fb317d04e52f7c', '20', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d1607c1abf2e41e99879a5a1be44c695', 'e32d028d470c4b8aaeda60b830fc245d', '36', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d18870ea41054f669a615f9bf46471ab', 'e32d028d470c4b8aaeda60b830fc245d', '53', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d1a8ee128eaf4eabb7ba3a3e801737ab', '1f1dc4cf8e294c5293b81c828238b614', '114', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d1be53dab406427cb6be1f1114cd7c1f', '1f1dc4cf8e294c5293b81c828238b614', '33', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d1d251a6f2064aab82a94b36a235b103', '530d6bc51bd94bef9bc88442dd69a277', '29', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d1dc5e012da14504834834fda80b640e', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '25', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d2282ca7ce5f444092d203c7b16825a6', '1f1dc4cf8e294c5293b81c828238b614', '34', null, null, null, null, null, null, null, null, null, null, '5', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d2d50ffddb474943bf648fb14d456134', 'e32d028d470c4b8aaeda60b830fc245d', '16', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d316ac3c94d64872942d950eed793443', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '56', null, null, null, null, null, null, null, null, null, null, '6', 'S10', '2', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d36009a974764a5ea0da21f67fb0a290', '1f1dc4cf8e294c5293b81c828238b614', '13', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d37db6bb060d4e0bb388a9201ac078d2', '29999bdfe94446a89fe0d1a764e05603', '59', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d37f32de367f43b38113c1f4479db7ce', '29999bdfe94446a89fe0d1a764e05603', '3', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d3e75a9d791043e48b8866d6e944cb75', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '41', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d43654b312d1450390a84a1a6a6a2c63', '1f1dc4cf8e294c5293b81c828238b614', '22', null, null, null, null, null, null, null, null, null, null, '5', 's6', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d437b7e9c12b4601a1dc739e2d9ea951', 'b789c1c2276a495786b79fcffeb940ad', '8', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d492058f2a5d4434a8543a4b69b80889', '3424bf3069a84207a05543ed0fb25b22', '27', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d4f0e99257374068b3c134cbb9f368e9', 'df77e4db968341f4859256a63dbac117', '37', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d531b9acb23440ab8d4badef067b25c8', '184d9d479daa4951b057301ea99b8e39', '82', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d5da51dd76ed45b3aeb607f3032fe78a', 'a12ef2a8720b4825b22eccd02e950c83', '53', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d64b2c5d44644830bc0e17ca3cef9e78', '184d9d479daa4951b057301ea99b8e39', '47', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d64fcc8541264db2977e3d839a78a282', '29999bdfe94446a89fe0d1a764e05603', '25', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d69ae0f745ea4cb48a906c491935f6c7', '1f1dc4cf8e294c5293b81c828238b614', '101', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d69cbf36fdb945ea861ed6267d6dc014', 'df77e4db968341f4859256a63dbac117', '33', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d6d763aff72044fe9620ae704b23027b', 'b789c1c2276a495786b79fcffeb940ad', '10', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d6e1ef8628014239a1d4990fc1e5e222', '184d9d479daa4951b057301ea99b8e39', '109', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d73528366c2f47e3ab627bce924e22c9', '91319767cc08408190fb317d04e52f7c', '32', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d7ce0e6aab1946069b4348cd67d7d159', '4b1cf64dfc6046a586b31cea2b6a2584', '14', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d7d239a6a7fd4d519110ad6073627b3b', '1f1dc4cf8e294c5293b81c828238b614', '94', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d7f2c3d363214bfeae87ce870e57e599', 'b789c1c2276a495786b79fcffeb940ad', '29', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d80000dd21214e908eb3275cecb6eb8a', '530d6bc51bd94bef9bc88442dd69a277', '1', '2016-07-13 00:00:00', '0.5+3', '0.3(1)0.5(2)0.5(2)', '0.5+3', '0.5+2', '0.6+4', '0.6+4', '0.6(2)0.6+5 	', '0.8(2)0.8+7', null, '6', 's3', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d8b39a26f3b943e8ae703466b225d4dc', '1f1dc4cf8e294c5293b81c828238b614', '20', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d8e3472c043f46989f277ce2ea61da9d', '3424bf3069a84207a05543ed0fb25b22', '35', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d8f1638446aa4d969519559d2cddd574', '1f1dc4cf8e294c5293b81c828238b614', '112', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d95d0931f88a452ab2184def14ec4fe8', 'e32d028d470c4b8aaeda60b830fc245d', '14', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d98dfddd0f9f4a15bed42d1ab4129ac1', 'a12ef2a8720b4825b22eccd02e950c83', '44', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d9953c69f1064a5b8fa724f7282c884b', '184d9d479daa4951b057301ea99b8e39', '145', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d9a37d1ac990403392c4e150d67eb54a', 'b045771bc1c04aad8ab005a8591f5bdf', '14', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('d9f98915234b43d89e01f35c464a55ba', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '10', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('da22606b75d0477c910e882c40eeaf12', 'df77e4db968341f4859256a63dbac117', '55', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('da65449303b04775807cba7751df78ed', '4b1cf64dfc6046a586b31cea2b6a2584', '46', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('da93af4782aa4a71b30cb10620d4e292', 'b789c1c2276a495786b79fcffeb940ad', '1', '2016-05-24 00:00:00', '32', '12', '32', '12', '12', '32', '32', '12', null, '5', 's2', '1', '7号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('db0c1eda9b2a4db2be299377b21d0147', '91319767cc08408190fb317d04e52f7c', '24', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('db264e6634f54461a2931168d90dd3e3', 'e32d028d470c4b8aaeda60b830fc245d', '4', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('db98f46a5c8d48d88e212985b060cc1a', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '42', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('dc8b5ead32eb40baa1300d2df890075c', '91319767cc08408190fb317d04e52f7c', '11', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('dd471db8c0344c3089e6cbeb378f68b1', '91319767cc08408190fb317d04e52f7c', '65', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('dd9f8f576c914d5f8d3b253f637e4358', '112b08c6faa04d65a5878a4bc8e35016', '4', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('dda6b7c13dc5448e949cee4ff318055e', '29999bdfe94446a89fe0d1a764e05603', '32', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('dda7f6cdca0d4af4980c76c434a90d2b', '530d6bc51bd94bef9bc88442dd69a277', '17', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('de3383f7ae5548d786a6496caf333516', '91319767cc08408190fb317d04e52f7c', '89', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('de6f1677d56b40399c82bb7bb0264b96', 'b045771bc1c04aad8ab005a8591f5bdf', '24', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('de705c99205345929fab1dcf6af51b52', '1f1dc4cf8e294c5293b81c828238b614', '115', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('de818d7c8def420394ea4d7b74900f90', '85773d4072cb4e7bb706916945f5b445', '11', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('dedc5eda90ea424c8675f1277aa1967c', '112b08c6faa04d65a5878a4bc8e35016', '14', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('df62210a3da547a0b27f29d156de830a', '112b08c6faa04d65a5878a4bc8e35016', '7', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e04e200d8624472e9353f9b8639a97ca', '184d9d479daa4951b057301ea99b8e39', '124', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e0a6926d78694fa4a2322d2b7263bb59', '85773d4072cb4e7bb706916945f5b445', '21', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e0a72b372be74222a1a951fca1294a9c', '184d9d479daa4951b057301ea99b8e39', '127', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e1c2e1fbaf064ed6bb8fad5a8bcb0fc7', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '31', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e256a48cce2b4506804412421bc329bd', 'e32d028d470c4b8aaeda60b830fc245d', '3', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e25c6b578a64403da295e19066f3335a', 'fa9fa72f146f437cb6399d14a50f3b26', '23', null, null, null, null, null, null, null, null, null, null, '5', 's3', '2', '55号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e2c099cec2c5427cb19a4ed904dac8d5', '91319767cc08408190fb317d04e52f7c', '58', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e2f3baf92ac84a40a9d862057d9a21b7', '112b08c6faa04d65a5878a4bc8e35016', '20', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e396afdec7b44b09a3b3a0bce499171e', 'b045771bc1c04aad8ab005a8591f5bdf', '2', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e44bde77d1e648188b22234ad01bb0ef', '3424bf3069a84207a05543ed0fb25b22', '44', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e46c98578c974ac4ab9988dc6e2d5401', 'df77e4db968341f4859256a63dbac117', '49', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e487362388a44c6c8c895eee5d020d9a', '1f1dc4cf8e294c5293b81c828238b614', '120', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '14', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('e4bd557f9ec24e27acef5064ea5e65ad', 'b045771bc1c04aad8ab005a8591f5bdf', '55', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e4cd16c275114e129cad8182d4b1f2d0', 'b045771bc1c04aad8ab005a8591f5bdf', '57', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e51a32fe13ff418e94da0648f8caaa90', '3424bf3069a84207a05543ed0fb25b22', '47', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e52c22c36420400d9a67d64d073fcddd', '91319767cc08408190fb317d04e52f7c', '40', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e53ff7c5609d4581b74d3e5602fbdf28', 'a12ef2a8720b4825b22eccd02e950c83', '41', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e57f67e3dc8a45aa8701b432e440439e', '1f1dc4cf8e294c5293b81c828238b614', '7', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e59dea76a0b34eee8de391035831ede3', 'b789c1c2276a495786b79fcffeb940ad', '6', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e626db4b1e9f44b5b13fe5f48c0d0a37', '91319767cc08408190fb317d04e52f7c', '27', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e662ef0f9b804f12b98b219337d04db4', 'e32d028d470c4b8aaeda60b830fc245d', '52', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e6c7fa4b3d5444818fedefe739864ec3', '3424bf3069a84207a05543ed0fb25b22', '59', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e6f339dab45943108d9514bb99a2fafa', '184d9d479daa4951b057301ea99b8e39', '49', null, null, null, null, null, null, null, null, null, null, '5', 's2', '1', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e7507967b62d4535b2ac272e4b33cc86', 'e32d028d470c4b8aaeda60b830fc245d', '6', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e774d1759bf341889c973346f8860000', 'df77e4db968341f4859256a63dbac117', '22', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e79971e3e9ad4448a96a6629170410c9', 'e32d028d470c4b8aaeda60b830fc245d', '27', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e7e2582e821f4d65848f9cfdae2dcad6', 'e32d028d470c4b8aaeda60b830fc245d', '22', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e85799c790c8480ba2099ae3cf6f7732', '29999bdfe94446a89fe0d1a764e05603', '5', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e8587499d134400597e37f65e6797912', 'a12ef2a8720b4825b22eccd02e950c83', '21', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e8876dc38e1947b48d58811b647ad63a', 'fa9fa72f146f437cb6399d14a50f3b26', '53', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e92e13ee1c5c4e87a99281f2fc499cab', 'b045771bc1c04aad8ab005a8591f5bdf', '20', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e92f66f3673248db8b355c98ade4a924', '530d6bc51bd94bef9bc88442dd69a277', '7', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e930e9ee80334485a1549d123dc5d3d2', '4b1cf64dfc6046a586b31cea2b6a2584', '38', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e945dfc8b0284a1b8a684b596e3781c2', '184d9d479daa4951b057301ea99b8e39', '78', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '5号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('e99da65ca8c748969f0501b6351d39d7', '1f1dc4cf8e294c5293b81c828238b614', '60', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '13', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('e9fbefb21ca24aa4a91284092bc883d8', '91319767cc08408190fb317d04e52f7c', '38', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ea375b50a4224f71a40612359ab591ef', '4b1cf64dfc6046a586b31cea2b6a2584', '34', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ea3e7cea99ce40768d95d51c04dcec56', '184d9d479daa4951b057301ea99b8e39', '150', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('ea759f48f2e641f080752ce84e3850fb', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '38', null, null, null, null, null, null, null, null, null, null, '6', 's5', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ea93dcae3a1544759a4bd56f339d6157', '1f1dc4cf8e294c5293b81c828238b614', '95', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('eac8e6c0fd884f20b4974df5e584734c', 'b045771bc1c04aad8ab005a8591f5bdf', '8', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('eadc1feef2ac44d380f84e087607c885', '91319767cc08408190fb317d04e52f7c', '66', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('eaf9cbc30f844d77b4f6942c05f98a9a', '29999bdfe94446a89fe0d1a764e05603', '37', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('eb1652b59c574cd9a6402b352eefad8f', '3424bf3069a84207a05543ed0fb25b22', '22', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('eb44d42c0fe4411283b806881abfb053', 'fa9fa72f146f437cb6399d14a50f3b26', '43', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('eb62e57084e643cba13e91616feded7c', '184d9d479daa4951b057301ea99b8e39', '125', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('eb8a4b1e9c0c438b9e7d1500d722a39f', 'fa9fa72f146f437cb6399d14a50f3b26', '52', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ec0ec940912d4719b186ed8f29e8a86b', '91319767cc08408190fb317d04e52f7c', '81', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ec28961e6c794371a594e6dde1841c11', '184d9d479daa4951b057301ea99b8e39', '139', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ec31bbc163874a66b880f163a7d67c03', '91319767cc08408190fb317d04e52f7c', '73', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ec7ac41af10c4c868c14844308363ba7', '85773d4072cb4e7bb706916945f5b445', '41', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ed76477ac325437880c465d0f265f0e2', '184d9d479daa4951b057301ea99b8e39', '56', null, null, null, null, null, null, null, null, null, null, '5', 's1', '3', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ed88a9ee2bfb405c921881ee895c299a', '91319767cc08408190fb317d04e52f7c', '37', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ed88bdae40184e7fad1853816939e5b9', 'e32d028d470c4b8aaeda60b830fc245d', '19', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ed9d4f2220ea4e1c9f55a90257e5c154', '91319767cc08408190fb317d04e52f7c', '34', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('edb5942ec45a473d9537064eee6676fe', 'e32d028d470c4b8aaeda60b830fc245d', '47', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('edfc4a409b5f4810abe4ff769d9d2de3', 'fa9fa72f146f437cb6399d14a50f3b26', '32', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ef0a0b6a2cc34a8fbdfe08d38ed4d902', 'b789c1c2276a495786b79fcffeb940ad', '11', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ef0b66d5321f403baab54d29a08999dc', '184d9d479daa4951b057301ea99b8e39', '17', '2016-09-01 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y3', '1', '11号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ef63fa8471434aa3acb43fae8be23878', '4b1cf64dfc6046a586b31cea2b6a2584', '86', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ef82b02503064904ae66c9e1e0f6d38c', '91319767cc08408190fb317d04e52f7c', '25', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('efbd0a461c0144b4bb522c0b4a016321', 'a12ef2a8720b4825b22eccd02e950c83', '51', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f0149454a1db4a8c98ba81c2348b3416', '112b08c6faa04d65a5878a4bc8e35016', '24', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f0159a1b84ce4de18752dfb8a2e60e08', '3424bf3069a84207a05543ed0fb25b22', '17', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f02578c3ab0f4c1785e907aac92dc3d9', 'df77e4db968341f4859256a63dbac117', '35', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f02dda8b3df5405fbd352c9072b07758', '4b1cf64dfc6046a586b31cea2b6a2584', '55', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f05af4f6dfd241e69471161ad9dcee91', '1f1dc4cf8e294c5293b81c828238b614', '12', null, null, null, null, null, null, null, null, null, null, '5', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f08ba719fb05497582b4d3ae826e75d1', '184d9d479daa4951b057301ea99b8e39', '135', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f098ff3408ff41c5a445161bf313b6e7', '1f1dc4cf8e294c5293b81c828238b614', '2', null, null, null, null, null, null, null, null, null, null, '5', 's5', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f0a3982e3bb54c9db78ff6fcd015744d', '184d9d479daa4951b057301ea99b8e39', '57', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '2号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f0b29159cc0e43a3b65d2cb3c8586b35', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '50', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f0f23b55178a4c57ae9cb9e6c080cb38', '184d9d479daa4951b057301ea99b8e39', '98', null, null, null, null, null, null, null, null, null, null, '5', 's2', '4', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f1562faa55944eeaafb2a4360c28335d', 'b045771bc1c04aad8ab005a8591f5bdf', '56', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f1a11833b87e4b439699199be28fa978', '29999bdfe94446a89fe0d1a764e05603', '18', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f1bc237ea33440eda526484e5eea8b6d', '1f1dc4cf8e294c5293b81c828238b614', '73', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f1bddc1f9f9c4c45b3ae9bf3bbfd164e', '157963dd9f8a48c4b9b5ab3fd9d6eb07', '58', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f1f6ee821d11472383da6255e64c6cf3', '91319767cc08408190fb317d04e52f7c', '63', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f1fc9155cd244b2c8134ef5edc8ed691', '4b1cf64dfc6046a586b31cea2b6a2584', '90', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('f24dd23128a445afb50446febed12d51', '4b1cf64dfc6046a586b31cea2b6a2584', '66', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f2b4705faed0439aa2ec11548268b4f1', '91319767cc08408190fb317d04e52f7c', '54', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f2e579fc0c6f4228b0531c6642ca31a6', '184d9d479daa4951b057301ea99b8e39', '3', '2016-07-03 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y2', '1', '9号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f2f4c7404ce848ceab9114efb8d3e43c', '29999bdfe94446a89fe0d1a764e05603', '11', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f312a2ed96bc48579e5d38df3daf5bf6', '4b1cf64dfc6046a586b31cea2b6a2584', '93', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f3203479ae804d508e868ea04ccf56a7', 'b789c1c2276a495786b79fcffeb940ad', '31', null, null, null, null, null, null, null, null, null, null, '6', 'S4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f3f7de56218d4aa8a590c8bf2d0f4646', '85773d4072cb4e7bb706916945f5b445', '5', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '9', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f401c8d015be45868bd9a966c9c0e362', '184d9d479daa4951b057301ea99b8e39', '103', null, null, null, null, null, null, null, null, null, null, '5', 's3', '5', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f4d71dccc71a419fb775bca47fb60b04', '184d9d479daa4951b057301ea99b8e39', '102', null, null, null, null, null, null, null, null, null, null, '5', 's2', '3', '6号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f4dc9cca664e45719bf3c15a41ea9d49', '184d9d479daa4951b057301ea99b8e39', '51', null, null, null, null, null, null, null, null, null, null, '5', 's1', '2', '3号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f5088506193c469dbe53beb4a65aca82', '1f1dc4cf8e294c5293b81c828238b614', '51', null, null, null, null, null, null, null, null, null, null, '5', 's5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f5146a740a9e4cd78fe819ac92229c26', '91319767cc08408190fb317d04e52f7c', '55', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f544235b6ade444fbcab1414861b81f9', '29999bdfe94446a89fe0d1a764e05603', '15', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y5', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f5ae83390bad4eab91020ba881f47f3e', '184d9d479daa4951b057301ea99b8e39', '146', null, null, null, null, null, null, null, null, null, null, '6', 'S10', '2', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f6016af6c30b4848b7089a4cd49ec1f3', '530d6bc51bd94bef9bc88442dd69a277', '18', null, null, null, null, null, null, null, null, null, null, '6', 'S6', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f62e82fbd5464d088742928f33ebe7de', '4b1cf64dfc6046a586b31cea2b6a2584', '54', null, null, null, null, null, null, null, null, null, null, '6', 'S2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f63ae6ae611942adb5e911dac46618a0', '14acf216023640668c16f28f40986012', '14', null, null, null, null, null, null, null, null, null, null, '6', 'S1', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f6604599ce7441f9bc21fbec31e18651', '29999bdfe94446a89fe0d1a764e05603', '52', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f6709ae38f414771bda8672bad638a36', '1f1dc4cf8e294c5293b81c828238b614', '26', null, null, null, null, null, null, null, null, null, null, '5', 's5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f6900a6c39714c9aabc8abe00a636549', '1f1dc4cf8e294c5293b81c828238b614', '78', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f6d5ccaa1a764689bc8cffe54c327a17', 'fa9fa72f146f437cb6399d14a50f3b26', '6', null, null, null, null, null, null, null, null, null, null, '5', 's2', '2', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f89bfa311fb74d7485d3ce9d39eb0c3e', '29999bdfe94446a89fe0d1a764e05603', '6', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f89df0394e2345aa802653b49c78eed3', '4b1cf64dfc6046a586b31cea2b6a2584', '68', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f8bacc14527b49deb79b9f06a4bd7791', '1f1dc4cf8e294c5293b81c828238b614', '37', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f8ce3ca6eede489894b86133422b3359', '184d9d479daa4951b057301ea99b8e39', '39', null, null, null, null, null, null, null, null, null, null, '5', 's1', '5', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f8d123f832a34b62b78169a429ac53cb', 'e32d028d470c4b8aaeda60b830fc245d', '23', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('f8ed8b8d27594a33b84543c4d67f29a0', 'e32d028d470c4b8aaeda60b830fc245d', '42', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fa4e50307e684291849812eeb60937e9', '91319767cc08408190fb317d04e52f7c', '69', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fab5facaf1814af39b0dcd65ff930b7e', '91319767cc08408190fb317d04e52f7c', '8', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fb011de918f04c548e6e9c5808965d2b', '3424bf3069a84207a05543ed0fb25b22', '11', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fb09e3d69e9f46c1861eed395daa423b', '530d6bc51bd94bef9bc88442dd69a277', '30', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '12', null, null, '1');
INSERT INTO `cus_hpmanager` VALUES ('fb0e6b759130435c9126cdc18d61988d', 'a12ef2a8720b4825b22eccd02e950c83', '34', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fb0e7545a1614032978be07fcf3a332f', '3424bf3069a84207a05543ed0fb25b22', '57', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fb0f2322b0554148ab54afc829af1ad2', 'fa9fa72f146f437cb6399d14a50f3b26', '36', null, null, null, null, null, null, null, null, null, null, '6', 's2', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fb3690ff22cd4dc4b916e7fb2660f46e', 'a12ef2a8720b4825b22eccd02e950c83', '7', null, null, null, null, null, null, null, null, null, null, '5', 's3', '3', '8号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fb8173c5f63247799e18861f249494c1', '85773d4072cb4e7bb706916945f5b445', '58', null, null, null, null, null, null, null, null, null, null, 'fd4fac3d250145f28897dadbb01f07dc', 's3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fb9320cb162a4a579e80d0719b0fb105', '3424bf3069a84207a05543ed0fb25b22', '40', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '14', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fb962d9c33b7475abd8117139c9addc5', '1f1dc4cf8e294c5293b81c828238b614', '99', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fc0c63f7161b4e5c983e330d0ea9426e', 'e32d028d470c4b8aaeda60b830fc245d', '43', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fc721c05874345b6acb77092303034a5', '4b1cf64dfc6046a586b31cea2b6a2584', '70', null, null, null, null, null, null, null, null, null, null, '6', 's3', '1', '11', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fcace819d6dd4a56bc50743f012005d5', '3424bf3069a84207a05543ed0fb25b22', '8', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fcb0ceee72fc4fcbbd0d9545167b0ec9', '91319767cc08408190fb317d04e52f7c', '61', null, null, null, null, null, null, null, null, null, null, '6', 's1', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fd7cffd2371c4cc78fead7fadcea8ff1', '1f1dc4cf8e294c5293b81c828238b614', '35', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '10', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fde266437b554a31aa6d4267ce73a118', '91319767cc08408190fb317d04e52f7c', '39', null, null, null, null, null, null, null, null, null, null, '6', 's4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fe078c77ebc8472491808f18244c8be2', '184d9d479daa4951b057301ea99b8e39', '5', '2016-07-07 00:00:00', null, null, null, null, null, null, null, null, null, '5', 'y2', '1', '9号图纸', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fe4767d81f38409291a358fbad361c5a', '1f1dc4cf8e294c5293b81c828238b614', '54', null, null, null, null, null, null, null, null, null, null, '5', 's3', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fe5e3630415c432690a4a79de062d43b', '4b1cf64dfc6046a586b31cea2b6a2584', '81', null, null, null, null, null, null, null, null, null, null, '6', 'S3', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('fee52e2697874519b0e48fa7cd10b4e2', '3424bf3069a84207a05543ed0fb25b22', '10', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '12', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ff482adb6ff3451ba992b5b6a3b95951', '4b1cf64dfc6046a586b31cea2b6a2584', '56', null, null, null, null, null, null, null, null, null, null, '6', 'S5', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ff92bd338f3246d3acdf95e871f3e223', 'df77e4db968341f4859256a63dbac117', '53', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ff9e7fd92281444480b85b6bc6ceaee3', 'df77e4db968341f4859256a63dbac117', '21', null, null, null, null, null, null, null, null, null, null, '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', null, null, '0');
INSERT INTO `cus_hpmanager` VALUES ('ffb95b6cebb148bc8795e05992199788', 'df77e4db968341f4859256a63dbac117', '34', null, null, null, null, null, null, null, null, null, null, '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', null, null, '0');

-- ----------------------------
-- Table structure for info_plan
-- ----------------------------
DROP TABLE IF EXISTS `info_plan`;
CREATE TABLE `info_plan` (
  `id` varchar(64) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `levelNo` int(10) DEFAULT NULL,
  `orderNo` int(10) DEFAULT NULL,
  `eyeType` varchar(1) DEFAULT NULL COMMENT '近视/远视/散光 1  弱势  2',
  `remarks` varchar(200) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_plan
-- ----------------------------
INSERT INTO `info_plan` VALUES ('06b85d046b5244b4a85060902124a016', '5级三期', '5', '3', '1', '眼肌耐受力一般', '1');
INSERT INTO `info_plan` VALUES ('1254549db02a4ffc9b907b7dc05b7955', '5级二期方案', '5', '5', '1', '眼肌耐受力一般', '0');
INSERT INTO `info_plan` VALUES ('2ef834da83b5423bb7a0824f78ff311c', '6级弱视二期', '6', '2', '2', '弱视眼肌耐受力较低', '0');
INSERT INTO `info_plan` VALUES ('4', '4级一期方案', '2', '1', '1', '4级一期方案', '1');
INSERT INTO `info_plan` VALUES ('6', '6级一期方案', '6', '1', '1', '眼肌较弱，对比敏感度低', '0');
INSERT INTO `info_plan` VALUES ('697c4cbc3d4b4c3891b134c2de3c1f13', '就系一起', '9', '3', '2', '五', '0');
INSERT INTO `info_plan` VALUES ('7544fcf1ded64630a0b39a7889783490', '5级三期方案', '5', '3', '1', '眼肌耐受力一般', '0');
INSERT INTO `info_plan` VALUES ('7945e7b652d648b9aed86b8cff44df63', '6级弱视一期', '6', '1', '2', '弱视眼肌耐受力较低', '0');
INSERT INTO `info_plan` VALUES ('86323e29ba9048989492907fc24368aa', '弱视预防方案', '6', '0', '2', '增强视功能', '0');
INSERT INTO `info_plan` VALUES ('c01e9ade509b4a96a2fce85981ff47ef', '6级三期方案', '6', '3', '1', '眼肌较弱对比敏感度低', '0');
INSERT INTO `info_plan` VALUES ('fd4fac3d250145f28897dadbb01f07dc', '6级二期方案', '6', '2', '1', '眼肌较弱，对比敏感度低', '0');

-- ----------------------------
-- Table structure for info_planinfo
-- ----------------------------
DROP TABLE IF EXISTS `info_planinfo`;
CREATE TABLE `info_planinfo` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `planid` varchar(64) NOT NULL,
  `code` varchar(10) NOT NULL,
  `times` varchar(10) DEFAULT NULL,
  `paper` varchar(200) DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

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
INSERT INTO `info_planinfo` VALUES ('24', '5', 's3', '1', '9', '1');
INSERT INTO `info_planinfo` VALUES ('25', '5', 's5', '1', '10', '2');
INSERT INTO `info_planinfo` VALUES ('26', '5', 's2', '1', '10', '3');
INSERT INTO `info_planinfo` VALUES ('27', '6', 's1', '1', '10', '1');
INSERT INTO `info_planinfo` VALUES ('28', '6', 's3', '1', '10', '2');
INSERT INTO `info_planinfo` VALUES ('29', '6', 's2', '1', '11', '3');
INSERT INTO `info_planinfo` VALUES ('30', '4', 'S3', '1', '8', '1');
INSERT INTO `info_planinfo` VALUES ('31', '4', 'S5', '1', '9', '2');
INSERT INTO `info_planinfo` VALUES ('32', '5', 's1', '1', '10', '4');
INSERT INTO `info_planinfo` VALUES ('33', '5', 's3', '1', '11', '5');
INSERT INTO `info_planinfo` VALUES ('34', '5', 's2', '1', '11', '6');
INSERT INTO `info_planinfo` VALUES ('35', '5', 's3', '1', '11', '7');
INSERT INTO `info_planinfo` VALUES ('36', '5', 's4', '1', '11', '8');
INSERT INTO `info_planinfo` VALUES ('37', '5', 's2', '1', '12', '9');
INSERT INTO `info_planinfo` VALUES ('38', '5', 's3', '1', '11', '10');
INSERT INTO `info_planinfo` VALUES ('40', '5', 's3', '1', '12', '13');
INSERT INTO `info_planinfo` VALUES ('41', '5', 's4', '1', '12', '12');
INSERT INTO `info_planinfo` VALUES ('42', '5', 's2', '1', '12', '11');
INSERT INTO `info_planinfo` VALUES ('43', '5', 's5', '1', '12', '16');
INSERT INTO `info_planinfo` VALUES ('44', '5', 's4', '1', '12', '15');
INSERT INTO `info_planinfo` VALUES ('45', '5', 's5', '1', '12', '14');
INSERT INTO `info_planinfo` VALUES ('49', '5', 's3', '1', '12', '17');
INSERT INTO `info_planinfo` VALUES ('50', '5', 's4', '1', '12', '18');
INSERT INTO `info_planinfo` VALUES ('51', '5', 's6', '1', '12', '19');
INSERT INTO `info_planinfo` VALUES ('52', '5', 's4', '1', '12', '20');
INSERT INTO `info_planinfo` VALUES ('53', '5', 's5', '1', '13', '21');
INSERT INTO `info_planinfo` VALUES ('54', '5', 's6', '1', '12', '22');
INSERT INTO `info_planinfo` VALUES ('55', '5', 's7', '1', '13', '23');
INSERT INTO `info_planinfo` VALUES ('56', '5', 's3', '1', '13', '24');
INSERT INTO `info_planinfo` VALUES ('57', '5', 's4', '1', '13', '25');
INSERT INTO `info_planinfo` VALUES ('58', '5', 's5', '1', '13', '26');
INSERT INTO `info_planinfo` VALUES ('59', '5', 's3', '1', '13', '27');
INSERT INTO `info_planinfo` VALUES ('60', '5', 's4', '1', '13', '28');
INSERT INTO `info_planinfo` VALUES ('61', '5', 's5', '1', '13', '29');
INSERT INTO `info_planinfo` VALUES ('62', '5', 's3', '1', '13', '30');
INSERT INTO `info_planinfo` VALUES ('64', '4', 'S2', '1', '8', '3');
INSERT INTO `info_planinfo` VALUES ('65', '4', 'S1', '1', '9', '4');
INSERT INTO `info_planinfo` VALUES ('66', '4', 'S1', '1', '9', '5');
INSERT INTO `info_planinfo` VALUES ('67', '4', 'S2', '1', '9', '6');
INSERT INTO `info_planinfo` VALUES ('68', '4', 'S3', '1', '9', '7');
INSERT INTO `info_planinfo` VALUES ('69', '4', 'S4', '1', '10', '8');
INSERT INTO `info_planinfo` VALUES ('70', '4', 'S2', '1', '9', '9');
INSERT INTO `info_planinfo` VALUES ('71', '4', 'S3', '1', '10', '10');
INSERT INTO `info_planinfo` VALUES ('72', '4', 'S2', '1', '10', '11');
INSERT INTO `info_planinfo` VALUES ('73', '4', 'S4', '1', '10', '12');
INSERT INTO `info_planinfo` VALUES ('74', '4', 'S3', '1', '10', '13');
INSERT INTO `info_planinfo` VALUES ('75', '4', 'S5', '1', '10', '14');
INSERT INTO `info_planinfo` VALUES ('76', '4', 'S4', '1', '9', '15');
INSERT INTO `info_planinfo` VALUES ('77', '4', 'S3', '1', '10', '16');
INSERT INTO `info_planinfo` VALUES ('78', '4', 'S4', '1', '10', '17');
INSERT INTO `info_planinfo` VALUES ('79', '4', 'S6', '1', '10', '18');
INSERT INTO `info_planinfo` VALUES ('80', '4', 'S4', '1', '10', '19');
INSERT INTO `info_planinfo` VALUES ('81', '4', 'S5', '1', '10', '20');
INSERT INTO `info_planinfo` VALUES ('82', '6', 's1', '1', '11', '4');
INSERT INTO `info_planinfo` VALUES ('83', '6', 's3', '1', '11', '5');
INSERT INTO `info_planinfo` VALUES ('84', '6', 's2', '1', '11', '6');
INSERT INTO `info_planinfo` VALUES ('85', '6', 's3', '1', '12', '7');
INSERT INTO `info_planinfo` VALUES ('86', '6', 's2', '1', '12', '8');
INSERT INTO `info_planinfo` VALUES ('87', '6', 's4', '1', '12', '9');
INSERT INTO `info_planinfo` VALUES ('88', '6', 'S3', '1', '12', '10');
INSERT INTO `info_planinfo` VALUES ('89', '6', 'S2', '1', '12', '11');
INSERT INTO `info_planinfo` VALUES ('90', '6', 'S3', '1', '12', '12');
INSERT INTO `info_planinfo` VALUES ('91', '6', 'S4', '1', '12', '13');
INSERT INTO `info_planinfo` VALUES ('92', '6', 'S1', '1', '12', '14');
INSERT INTO `info_planinfo` VALUES ('93', '6', 'S2', '1', '13', '15');
INSERT INTO `info_planinfo` VALUES ('94', '6', 'S3', '1', '13', '16');
INSERT INTO `info_planinfo` VALUES ('95', '6', 'S4', '1', '13', '17');
INSERT INTO `info_planinfo` VALUES ('96', '6', 'S3', '1', '13', '18');
INSERT INTO `info_planinfo` VALUES ('97', '6', 'S5', '1', '13', '19');
INSERT INTO `info_planinfo` VALUES ('98', '6', 'S4', '1', '13', '20');
INSERT INTO `info_planinfo` VALUES ('99', '6', 'S2', '1', '13', '21');
INSERT INTO `info_planinfo` VALUES ('100', '6', 'S3', '1', '13', '22');
INSERT INTO `info_planinfo` VALUES ('101', '6', 'S5', '1', '13', '23');
INSERT INTO `info_planinfo` VALUES ('102', '6', 'S2', '1', '14', '24');
INSERT INTO `info_planinfo` VALUES ('103', '6', 'S5', '1', '14', '25');
INSERT INTO `info_planinfo` VALUES ('104', '6', 'S3', '1', '14', '26');
INSERT INTO `info_planinfo` VALUES ('105', '6', 'S3', '1', '14', '27');
INSERT INTO `info_planinfo` VALUES ('106', '6', 'S4', '1', '14', '28');
INSERT INTO `info_planinfo` VALUES ('107', '6', 'S3', '1', '14', '29');
INSERT INTO `info_planinfo` VALUES ('108', '6', 'S5', '1', '14', '30');
INSERT INTO `info_planinfo` VALUES ('109', 'fd4fac3d250145f28897dadbb01f07dc', 's3', '1', '13', '1');
INSERT INTO `info_planinfo` VALUES ('110', 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '14', '2');
INSERT INTO `info_planinfo` VALUES ('111', 'fd4fac3d250145f28897dadbb01f07dc', 's3', '1', '14', '3');
INSERT INTO `info_planinfo` VALUES ('112', 'fd4fac3d250145f28897dadbb01f07dc', 's5', '1', '14', '4');
INSERT INTO `info_planinfo` VALUES ('113', 'fd4fac3d250145f28897dadbb01f07dc', 's6', '1', '14', '5');
INSERT INTO `info_planinfo` VALUES ('114', 'fd4fac3d250145f28897dadbb01f07dc', 's2', '1', '14', '6');
INSERT INTO `info_planinfo` VALUES ('115', 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '14', '7');
INSERT INTO `info_planinfo` VALUES ('116', 'fd4fac3d250145f28897dadbb01f07dc', 's5', '1', '14', '8');
INSERT INTO `info_planinfo` VALUES ('117', 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '14', '9');
INSERT INTO `info_planinfo` VALUES ('118', 'fd4fac3d250145f28897dadbb01f07dc', 's3', '1', '14', '10');
INSERT INTO `info_planinfo` VALUES ('119', 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '14', '11');
INSERT INTO `info_planinfo` VALUES ('120', 'fd4fac3d250145f28897dadbb01f07dc', 's5', '1', '14', '12');
INSERT INTO `info_planinfo` VALUES ('121', 'fd4fac3d250145f28897dadbb01f07dc', 's6', '1', '15', '13');
INSERT INTO `info_planinfo` VALUES ('122', 'fd4fac3d250145f28897dadbb01f07dc', 's5', '1', '15', '15');
INSERT INTO `info_planinfo` VALUES ('123', 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '14', '16');
INSERT INTO `info_planinfo` VALUES ('124', 'fd4fac3d250145f28897dadbb01f07dc', 's7', '1', '15', '18');
INSERT INTO `info_planinfo` VALUES ('125', 'fd4fac3d250145f28897dadbb01f07dc', 's6', '1', '15', '27');
INSERT INTO `info_planinfo` VALUES ('126', 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '15', '24');
INSERT INTO `info_planinfo` VALUES ('127', 'fd4fac3d250145f28897dadbb01f07dc', 's3', '1', '15', '26');
INSERT INTO `info_planinfo` VALUES ('128', 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '14', '21');
INSERT INTO `info_planinfo` VALUES ('129', 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '15', '29');
INSERT INTO `info_planinfo` VALUES ('130', 'fd4fac3d250145f28897dadbb01f07dc', 's3', '1', '15', '14');
INSERT INTO `info_planinfo` VALUES ('131', 'fd4fac3d250145f28897dadbb01f07dc', 's5', '1', '15', '20');
INSERT INTO `info_planinfo` VALUES ('132', 'fd4fac3d250145f28897dadbb01f07dc', 's6', '1', '15', '17');
INSERT INTO `info_planinfo` VALUES ('136', 'fd4fac3d250145f28897dadbb01f07dc', 's5', '1', '15', '25');
INSERT INTO `info_planinfo` VALUES ('137', 'fd4fac3d250145f28897dadbb01f07dc', 's2', '1', '15', '30');
INSERT INTO `info_planinfo` VALUES ('138', 'fd4fac3d250145f28897dadbb01f07dc', 's6', '1', '15', '22');
INSERT INTO `info_planinfo` VALUES ('139', 'fd4fac3d250145f28897dadbb01f07dc', 's4', '1', '15', '19');
INSERT INTO `info_planinfo` VALUES ('141', 'fd4fac3d250145f28897dadbb01f07dc', 's8', '1', '15', '23');
INSERT INTO `info_planinfo` VALUES ('144', 'fd4fac3d250145f28897dadbb01f07dc', 's3', '1', '15', '28');
INSERT INTO `info_planinfo` VALUES ('147', '', 's1', '1', '11', '1');
INSERT INTO `info_planinfo` VALUES ('148', '', 's4', '1', '12', '2');
INSERT INTO `info_planinfo` VALUES ('149', '', 's2', '1', '12', '3');
INSERT INTO `info_planinfo` VALUES ('150', '', 's3', '1', '12', '4');
INSERT INTO `info_planinfo` VALUES ('151', '', 's4', '1', '12', '5');
INSERT INTO `info_planinfo` VALUES ('152', '', 's6', '1', '12', '6');
INSERT INTO `info_planinfo` VALUES ('153', '', 's7', '1', '12', '7');
INSERT INTO `info_planinfo` VALUES ('154', '', 's8', '1', '11', '8');
INSERT INTO `info_planinfo` VALUES ('155', '', 's4', '1', '12', '9');
INSERT INTO `info_planinfo` VALUES ('156', '', 's3', '1', '12', '10');
INSERT INTO `info_planinfo` VALUES ('157', '', 's3', '1', '12', '11');
INSERT INTO `info_planinfo` VALUES ('158', '', 's5', '1', '12', '12');
INSERT INTO `info_planinfo` VALUES ('159', '', 's4', '1', '12', '13');
INSERT INTO `info_planinfo` VALUES ('160', '', 's6', '1', '12', '14');
INSERT INTO `info_planinfo` VALUES ('161', '', 's10', '2', '13', '15');
INSERT INTO `info_planinfo` VALUES ('162', '', 's7', '1', '12', '16');
INSERT INTO `info_planinfo` VALUES ('163', '', 's5', '1', '12', '17');
INSERT INTO `info_planinfo` VALUES ('164', '', 's2', '1', '12', '18');
INSERT INTO `info_planinfo` VALUES ('165', '', 's11', '2', '13', '19');
INSERT INTO `info_planinfo` VALUES ('166', '', 's5', '1', '12', '20');
INSERT INTO `info_planinfo` VALUES ('167', '', 's6', '1', '12', '21');
INSERT INTO `info_planinfo` VALUES ('168', '', 's4', '1', '12', '22');
INSERT INTO `info_planinfo` VALUES ('169', '', 's12', '2', '13', '23');
INSERT INTO `info_planinfo` VALUES ('170', '', 's7', '1', '12', '24');
INSERT INTO `info_planinfo` VALUES ('171', '', 's8', '1', '12', '25');
INSERT INTO `info_planinfo` VALUES ('172', '', 's6', '1', '12', '26');
INSERT INTO `info_planinfo` VALUES ('173', '', 's11', '2', '13', '27');
INSERT INTO `info_planinfo` VALUES ('174', '', 's3', '1', '12', '28');
INSERT INTO `info_planinfo` VALUES ('175', '', 's4', '1', '12', '29');
INSERT INTO `info_planinfo` VALUES ('176', '', 's12', '2', '13', '30');
INSERT INTO `info_planinfo` VALUES ('177', '', 's1', '1', '11', '1');
INSERT INTO `info_planinfo` VALUES ('178', '', 's4', '1', '12', '2');
INSERT INTO `info_planinfo` VALUES ('179', '', 's2', '1', '12', '3');
INSERT INTO `info_planinfo` VALUES ('180', '', 's3', '1', '12', '4');
INSERT INTO `info_planinfo` VALUES ('181', '', 's4', '1', '12', '5');
INSERT INTO `info_planinfo` VALUES ('182', '', 's6', '1', '12', '6');
INSERT INTO `info_planinfo` VALUES ('183', '', 's8', '1', '11', '8');
INSERT INTO `info_planinfo` VALUES ('184', '', 's7', '1', '12', '7');
INSERT INTO `info_planinfo` VALUES ('185', '', 's4', '1', '12', '9');
INSERT INTO `info_planinfo` VALUES ('186', '', 's3', '1', '12', '10');
INSERT INTO `info_planinfo` VALUES ('187', '', 's1', '1', '11', '1');
INSERT INTO `info_planinfo` VALUES ('188', '', 's4', '1', '12', '2');
INSERT INTO `info_planinfo` VALUES ('189', '', 's2', '1', '12', '3');
INSERT INTO `info_planinfo` VALUES ('190', '', 's3', '1', '12', '4');
INSERT INTO `info_planinfo` VALUES ('191', '', 's4', '1', '12', '5');
INSERT INTO `info_planinfo` VALUES ('192', '', 's6', '1', '12', '6');
INSERT INTO `info_planinfo` VALUES ('193', '', 's7', '1', '12', '7');
INSERT INTO `info_planinfo` VALUES ('194', '', 's8', '1', '11', '8');
INSERT INTO `info_planinfo` VALUES ('195', '', 's4', '1', '12', '9');
INSERT INTO `info_planinfo` VALUES ('196', '', 's3', '1', '12', '10');
INSERT INTO `info_planinfo` VALUES ('197', 'c01e9ade509b4a96a2fce85981ff47ef', 's1', '1', '15', '1');
INSERT INTO `info_planinfo` VALUES ('198', 'c01e9ade509b4a96a2fce85981ff47ef', 's4', '1', '15', '2');
INSERT INTO `info_planinfo` VALUES ('199', 'c01e9ade509b4a96a2fce85981ff47ef', 's2', '1', '15', '3');
INSERT INTO `info_planinfo` VALUES ('200', 'c01e9ade509b4a96a2fce85981ff47ef', 's3', '1', '15', '4');
INSERT INTO `info_planinfo` VALUES ('201', 'c01e9ade509b4a96a2fce85981ff47ef', 's4', '1', '16', '5');
INSERT INTO `info_planinfo` VALUES ('202', 'c01e9ade509b4a96a2fce85981ff47ef', 's6', '1', '16', '6');
INSERT INTO `info_planinfo` VALUES ('203', 'c01e9ade509b4a96a2fce85981ff47ef', 's7', '1', '15', '7');
INSERT INTO `info_planinfo` VALUES ('204', 'c01e9ade509b4a96a2fce85981ff47ef', 's8', '1', '16', '8');
INSERT INTO `info_planinfo` VALUES ('205', 'c01e9ade509b4a96a2fce85981ff47ef', 's4', '1', '16', '9');
INSERT INTO `info_planinfo` VALUES ('206', 'c01e9ade509b4a96a2fce85981ff47ef', 's3', '1', '16', '10');
INSERT INTO `info_planinfo` VALUES ('207', 'c01e9ade509b4a96a2fce85981ff47ef', 's3', '1', '16', '11');
INSERT INTO `info_planinfo` VALUES ('208', 'c01e9ade509b4a96a2fce85981ff47ef', 's5', '1', '16', '12');
INSERT INTO `info_planinfo` VALUES ('209', 'c01e9ade509b4a96a2fce85981ff47ef', 's4', '1', '16', '13');
INSERT INTO `info_planinfo` VALUES ('210', 'c01e9ade509b4a96a2fce85981ff47ef', 's6', '1', '16', '14');
INSERT INTO `info_planinfo` VALUES ('211', 'c01e9ade509b4a96a2fce85981ff47ef', 's5', '2', '16', '15');
INSERT INTO `info_planinfo` VALUES ('212', 'c01e9ade509b4a96a2fce85981ff47ef', 's7', '1', '16', '16');
INSERT INTO `info_planinfo` VALUES ('213', 'c01e9ade509b4a96a2fce85981ff47ef', 's5', '1', '16', '17');
INSERT INTO `info_planinfo` VALUES ('214', 'c01e9ade509b4a96a2fce85981ff47ef', 's2', '1', '16', '18');
INSERT INTO `info_planinfo` VALUES ('215', 'c01e9ade509b4a96a2fce85981ff47ef', 's4', '2', '16', '19');
INSERT INTO `info_planinfo` VALUES ('216', 'c01e9ade509b4a96a2fce85981ff47ef', 's5', '1', '16', '20');
INSERT INTO `info_planinfo` VALUES ('217', 'c01e9ade509b4a96a2fce85981ff47ef', 's6', '1', '16', '21');
INSERT INTO `info_planinfo` VALUES ('218', 'c01e9ade509b4a96a2fce85981ff47ef', 's4', '1', '16', '22');
INSERT INTO `info_planinfo` VALUES ('219', 'c01e9ade509b4a96a2fce85981ff47ef', 's12', '2', '16', '23');
INSERT INTO `info_planinfo` VALUES ('220', 'c01e9ade509b4a96a2fce85981ff47ef', 's7', '1', '16', '24');
INSERT INTO `info_planinfo` VALUES ('221', 'c01e9ade509b4a96a2fce85981ff47ef', 's8', '1', '16', '25');
INSERT INTO `info_planinfo` VALUES ('222', 'c01e9ade509b4a96a2fce85981ff47ef', 's6', '1', '16', '26');
INSERT INTO `info_planinfo` VALUES ('223', 'c01e9ade509b4a96a2fce85981ff47ef', 's11', '2', '16', '27');
INSERT INTO `info_planinfo` VALUES ('224', 'c01e9ade509b4a96a2fce85981ff47ef', 's3', '1', '16', '28');
INSERT INTO `info_planinfo` VALUES ('225', 'c01e9ade509b4a96a2fce85981ff47ef', 's4', '1', '16', '29');
INSERT INTO `info_planinfo` VALUES ('226', 'c01e9ade509b4a96a2fce85981ff47ef', 's12', '2', '16', '30');
INSERT INTO `info_planinfo` VALUES ('227', '1254549db02a4ffc9b907b7dc05b7955', 's5', '1', '13', '2');
INSERT INTO `info_planinfo` VALUES ('228', '1254549db02a4ffc9b907b7dc05b7955', 's4', '1', '13', '3');
INSERT INTO `info_planinfo` VALUES ('229', '1254549db02a4ffc9b907b7dc05b7955', 's6', '1', '13', '4');
INSERT INTO `info_planinfo` VALUES ('230', '1254549db02a4ffc9b907b7dc05b7955', 's5', '1', '13', '5');
INSERT INTO `info_planinfo` VALUES ('231', '1254549db02a4ffc9b907b7dc05b7955', 's3', '1', '14', '6');
INSERT INTO `info_planinfo` VALUES ('232', '1254549db02a4ffc9b907b7dc05b7955', 's4', '1', '14', '7');
INSERT INTO `info_planinfo` VALUES ('233', '1254549db02a4ffc9b907b7dc05b7955', 's5', '1', '13', '8');
INSERT INTO `info_planinfo` VALUES ('234', '1254549db02a4ffc9b907b7dc05b7955', 's6', '1', '14', '9');
INSERT INTO `info_planinfo` VALUES ('235', '1254549db02a4ffc9b907b7dc05b7955', 's7', '1', '14', '10');
INSERT INTO `info_planinfo` VALUES ('236', '1254549db02a4ffc9b907b7dc05b7955', 's6', '1', '14', '11');
INSERT INTO `info_planinfo` VALUES ('237', '1254549db02a4ffc9b907b7dc05b7955', 's5', '1', '14', '12');
INSERT INTO `info_planinfo` VALUES ('238', '1254549db02a4ffc9b907b7dc05b7955', 's6', '1', '14', '13');
INSERT INTO `info_planinfo` VALUES ('239', '1254549db02a4ffc9b907b7dc05b7955', 's7', '1', '14', '14');
INSERT INTO `info_planinfo` VALUES ('240', '1254549db02a4ffc9b907b7dc05b7955', 's6', '1', '14', '15');
INSERT INTO `info_planinfo` VALUES ('241', '1254549db02a4ffc9b907b7dc05b7955', 's2', '1', '14', '16');
INSERT INTO `info_planinfo` VALUES ('242', '1254549db02a4ffc9b907b7dc05b7955', 's5', '1', '14', '17');
INSERT INTO `info_planinfo` VALUES ('243', '1254549db02a4ffc9b907b7dc05b7955', 's3', '1', '14', '18');
INSERT INTO `info_planinfo` VALUES ('244', '1254549db02a4ffc9b907b7dc05b7955', 's6', '1', '14', '19');
INSERT INTO `info_planinfo` VALUES ('245', '1254549db02a4ffc9b907b7dc05b7955', 's4', '1', '14', '20');
INSERT INTO `info_planinfo` VALUES ('246', '1254549db02a4ffc9b907b7dc05b7955', 's7', '1', '15', '21');
INSERT INTO `info_planinfo` VALUES ('247', '1254549db02a4ffc9b907b7dc05b7955', 's3', '1', '15', '22');
INSERT INTO `info_planinfo` VALUES ('248', '1254549db02a4ffc9b907b7dc05b7955', 's2', '1', '15', '23');
INSERT INTO `info_planinfo` VALUES ('249', '1254549db02a4ffc9b907b7dc05b7955', 's5', '1', '14', '24');
INSERT INTO `info_planinfo` VALUES ('250', '1254549db02a4ffc9b907b7dc05b7955', 's6', '1', '15', '25');
INSERT INTO `info_planinfo` VALUES ('251', '1254549db02a4ffc9b907b7dc05b7955', 's5', '1', '15', '26');
INSERT INTO `info_planinfo` VALUES ('252', '1254549db02a4ffc9b907b7dc05b7955', 's4', '1', '15', '27');
INSERT INTO `info_planinfo` VALUES ('253', '1254549db02a4ffc9b907b7dc05b7955', 's5', '1', '15', '28');
INSERT INTO `info_planinfo` VALUES ('254', '1254549db02a4ffc9b907b7dc05b7955', 's6', '1', '15', '29');
INSERT INTO `info_planinfo` VALUES ('255', '1254549db02a4ffc9b907b7dc05b7955', 's7', '1', '15', '30');
INSERT INTO `info_planinfo` VALUES ('256', '', 's3', '1', '12', '1');
INSERT INTO `info_planinfo` VALUES ('257', '', 's2', '1', '11', '2');
INSERT INTO `info_planinfo` VALUES ('258', '', 's3', '1', '12', '3');
INSERT INTO `info_planinfo` VALUES ('259', '', 's4', '1', '12', '4');
INSERT INTO `info_planinfo` VALUES ('260', '', 's3', '1', '11', '5');
INSERT INTO `info_planinfo` VALUES ('261', '', 's5', '1', '12', '6');
INSERT INTO `info_planinfo` VALUES ('262', '', 's6', '1', '12', '7');
INSERT INTO `info_planinfo` VALUES ('263', '', 's5', '1', '11', '8');
INSERT INTO `info_planinfo` VALUES ('264', '', 's4', '1', '12', '4');
INSERT INTO `info_planinfo` VALUES ('265', '', 's4', '1', '12', '9');
INSERT INTO `info_planinfo` VALUES ('266', '', 's2', '1', '12', '10');
INSERT INTO `info_planinfo` VALUES ('267', '', 's4', '1', '12', '9');
INSERT INTO `info_planinfo` VALUES ('268', '', 's2', '1', '12', '10');
INSERT INTO `info_planinfo` VALUES ('269', '', 's3', '1', '12', '11');
INSERT INTO `info_planinfo` VALUES ('270', '', 's4', '1', '11', '12');
INSERT INTO `info_planinfo` VALUES ('271', '', 's7', '1', '12', '13');
INSERT INTO `info_planinfo` VALUES ('272', '', 's6', '1', '12', '14');
INSERT INTO `info_planinfo` VALUES ('273', '', 's5', '1', '12', '15');
INSERT INTO `info_planinfo` VALUES ('274', '', 's4', '1', '11', '16');
INSERT INTO `info_planinfo` VALUES ('275', '', 's6', '1', '12', '17');
INSERT INTO `info_planinfo` VALUES ('276', '', 's7', '1', '12', '18');
INSERT INTO `info_planinfo` VALUES ('277', '', 's4', '1', '12', '19');
INSERT INTO `info_planinfo` VALUES ('278', '', 's3', '1', '12', '20');
INSERT INTO `info_planinfo` VALUES ('279', '', 's5', '1', '11', '21');
INSERT INTO `info_planinfo` VALUES ('280', '', 's4', '1', '12', '22');
INSERT INTO `info_planinfo` VALUES ('281', '', 's7', '1', '12', '23');
INSERT INTO `info_planinfo` VALUES ('282', '', 's8', '1', '12', '24');
INSERT INTO `info_planinfo` VALUES ('283', '', 's6', '1', '12', '25');
INSERT INTO `info_planinfo` VALUES ('284', '', 's5', '1', '11', '26');
INSERT INTO `info_planinfo` VALUES ('285', '', 's4', '1', '12', '27');
INSERT INTO `info_planinfo` VALUES ('286', '', 's3', '1', '12', '28');
INSERT INTO `info_planinfo` VALUES ('287', '', 's2', '1', '12', '29');
INSERT INTO `info_planinfo` VALUES ('288', '', 's3', '1', '12', '30');
INSERT INTO `info_planinfo` VALUES ('289', '', 's3', '1', '12', '30');
INSERT INTO `info_planinfo` VALUES ('290', '', 's3', '1', '12', '30');
INSERT INTO `info_planinfo` VALUES ('291', '', 's3', '1', '12', '1');
INSERT INTO `info_planinfo` VALUES ('292', '', 's2', '1', '11', '2');
INSERT INTO `info_planinfo` VALUES ('293', '', 's3', '1', '12', '1');
INSERT INTO `info_planinfo` VALUES ('294', '', 's3', '1', '12', '1');
INSERT INTO `info_planinfo` VALUES ('295', '', 's3', '1', '12', '3');
INSERT INTO `info_planinfo` VALUES ('296', '', 's4', '1', '12', '4');
INSERT INTO `info_planinfo` VALUES ('297', '', 's3', '1', '11', '5');
INSERT INTO `info_planinfo` VALUES ('298', '', 's5', '1', '12', '6');
INSERT INTO `info_planinfo` VALUES ('299', '', 's6', '1', '12', '7');
INSERT INTO `info_planinfo` VALUES ('300', '', 's5', '1', '11', '8');
INSERT INTO `info_planinfo` VALUES ('301', '', 's5', '1', '11', '8');
INSERT INTO `info_planinfo` VALUES ('302', '', 's4', '1', '12', '9');
INSERT INTO `info_planinfo` VALUES ('303', '', 's2', '1', '12', '10');
INSERT INTO `info_planinfo` VALUES ('304', '', 's3', '1', '12', '1');
INSERT INTO `info_planinfo` VALUES ('305', '', 's2', '1', '11', '2');
INSERT INTO `info_planinfo` VALUES ('306', '', 's3', '1', '12', '3');
INSERT INTO `info_planinfo` VALUES ('307', '', 's3', '1', '12', '3');
INSERT INTO `info_planinfo` VALUES ('308', '', 's4', '1', '12', '4');
INSERT INTO `info_planinfo` VALUES ('309', '', 's3', '1', '11', '5');
INSERT INTO `info_planinfo` VALUES ('310', '', 's5', '1', '12', '6');
INSERT INTO `info_planinfo` VALUES ('311', '', 's6', '1', '12', '7');
INSERT INTO `info_planinfo` VALUES ('312', '', 's5', '1', '11', '8');
INSERT INTO `info_planinfo` VALUES ('313', '', 's4', '1', '12', '9');
INSERT INTO `info_planinfo` VALUES ('314', '', 's2', '1', '12', '10');
INSERT INTO `info_planinfo` VALUES ('315', '', 's3', '1', '12', '11');
INSERT INTO `info_planinfo` VALUES ('316', '', 's4', '1', '11', '12');
INSERT INTO `info_planinfo` VALUES ('317', '', 's7', '1', '12', '13');
INSERT INTO `info_planinfo` VALUES ('318', '', 's6', '1', '12', '14');
INSERT INTO `info_planinfo` VALUES ('319', '', 's6', '1', '12', '14');
INSERT INTO `info_planinfo` VALUES ('320', '', 's5', '1', '12', '15');
INSERT INTO `info_planinfo` VALUES ('321', '', 's4', '1', '11', '16');
INSERT INTO `info_planinfo` VALUES ('322', '', 's6', '1', '12', '17');
INSERT INTO `info_planinfo` VALUES ('323', '', 's7', '1', '12', '18');
INSERT INTO `info_planinfo` VALUES ('324', '', 's4', '1', '12', '19');
INSERT INTO `info_planinfo` VALUES ('325', '', 's3', '1', '12', '20');
INSERT INTO `info_planinfo` VALUES ('326', '', 's5', '1', '11', '21');
INSERT INTO `info_planinfo` VALUES ('327', '', 's5', '1', '11', '21');
INSERT INTO `info_planinfo` VALUES ('328', '', 's4', '1', '12', '22');
INSERT INTO `info_planinfo` VALUES ('329', '', 's7', '1', '12', '23');
INSERT INTO `info_planinfo` VALUES ('330', '', 's8', '1', '12', '24');
INSERT INTO `info_planinfo` VALUES ('331', '', 's6', '1', '12', '25');
INSERT INTO `info_planinfo` VALUES ('332', '', 's5', '1', '11', '26');
INSERT INTO `info_planinfo` VALUES ('333', '', 's4', '1', '12', '27');
INSERT INTO `info_planinfo` VALUES ('334', '', 's3', '1', '12', '28');
INSERT INTO `info_planinfo` VALUES ('335', '', 's2', '1', '12', '29');
INSERT INTO `info_planinfo` VALUES ('336', '', 's3', '1', '12', '30');
INSERT INTO `info_planinfo` VALUES ('337', '7544fcf1ded64630a0b39a7889783490', 's3', '1', '15', '1');
INSERT INTO `info_planinfo` VALUES ('338', '7544fcf1ded64630a0b39a7889783490', 's2', '1', '15', '2');
INSERT INTO `info_planinfo` VALUES ('340', '7544fcf1ded64630a0b39a7889783490', 's3', '1', '15', '3');
INSERT INTO `info_planinfo` VALUES ('341', '7544fcf1ded64630a0b39a7889783490', 's4', '1', '15', '4');
INSERT INTO `info_planinfo` VALUES ('342', '7544fcf1ded64630a0b39a7889783490', 's3', '1', '15', '5');
INSERT INTO `info_planinfo` VALUES ('343', '7544fcf1ded64630a0b39a7889783490', 's5', '1', '15', '6');
INSERT INTO `info_planinfo` VALUES ('344', '7544fcf1ded64630a0b39a7889783490', 's6', '1', '15', '7');
INSERT INTO `info_planinfo` VALUES ('345', '7544fcf1ded64630a0b39a7889783490', 's5', '1', '16', '8');
INSERT INTO `info_planinfo` VALUES ('346', '7544fcf1ded64630a0b39a7889783490', 's4', '1', '15', '9');
INSERT INTO `info_planinfo` VALUES ('347', '7544fcf1ded64630a0b39a7889783490', 's2', '1', '16', '10');
INSERT INTO `info_planinfo` VALUES ('348', '7544fcf1ded64630a0b39a7889783490', 's3', '1', '16', '11');
INSERT INTO `info_planinfo` VALUES ('349', '7544fcf1ded64630a0b39a7889783490', 's4', '1', '16', '12');
INSERT INTO `info_planinfo` VALUES ('351', '7544fcf1ded64630a0b39a7889783490', 's7', '1', '15', '13');
INSERT INTO `info_planinfo` VALUES ('352', '7544fcf1ded64630a0b39a7889783490', 's6', '1', '16', '14');
INSERT INTO `info_planinfo` VALUES ('353', '7544fcf1ded64630a0b39a7889783490', 's5', '1', '16', '15');
INSERT INTO `info_planinfo` VALUES ('354', '7544fcf1ded64630a0b39a7889783490', 's4', '1', '16', '16');
INSERT INTO `info_planinfo` VALUES ('355', '7544fcf1ded64630a0b39a7889783490', 's6', '1', '16', '17');
INSERT INTO `info_planinfo` VALUES ('356', '7544fcf1ded64630a0b39a7889783490', 's7', '1', '16', '18');
INSERT INTO `info_planinfo` VALUES ('357', '7544fcf1ded64630a0b39a7889783490', 's4', '1', '15', '19');
INSERT INTO `info_planinfo` VALUES ('358', '7544fcf1ded64630a0b39a7889783490', 's3', '1', '16', '20');
INSERT INTO `info_planinfo` VALUES ('359', '7544fcf1ded64630a0b39a7889783490', 's5', '1', '16', '21');
INSERT INTO `info_planinfo` VALUES ('360', '7544fcf1ded64630a0b39a7889783490', 's4', '1', '16', '22');
INSERT INTO `info_planinfo` VALUES ('361', '7544fcf1ded64630a0b39a7889783490', 's7', '1', '16', '23');
INSERT INTO `info_planinfo` VALUES ('362', '7544fcf1ded64630a0b39a7889783490', 's8', '1', '16', '24');
INSERT INTO `info_planinfo` VALUES ('363', '7544fcf1ded64630a0b39a7889783490', 's6', '1', '16', '25');
INSERT INTO `info_planinfo` VALUES ('364', '7544fcf1ded64630a0b39a7889783490', 's5', '1', '16', '26');
INSERT INTO `info_planinfo` VALUES ('365', '7544fcf1ded64630a0b39a7889783490', 's4', '1', '16', '27');
INSERT INTO `info_planinfo` VALUES ('366', '7544fcf1ded64630a0b39a7889783490', 's3', '1', '16', '28');
INSERT INTO `info_planinfo` VALUES ('367', '7544fcf1ded64630a0b39a7889783490', 's2', '1', '16', '29');
INSERT INTO `info_planinfo` VALUES ('368', '7544fcf1ded64630a0b39a7889783490', 's3', '1', '16', '30');
INSERT INTO `info_planinfo` VALUES ('369', '', 'Y3', '1', '9', '1');
INSERT INTO `info_planinfo` VALUES ('370', '', 'Y4', '1', '9', '2');
INSERT INTO `info_planinfo` VALUES ('371', '', 'Y2', '1', '9', '3');
INSERT INTO `info_planinfo` VALUES ('372', '', 'Y2', '1', '9', '3');
INSERT INTO `info_planinfo` VALUES ('373', '', 'Y4', '1', '10', '4');
INSERT INTO `info_planinfo` VALUES ('374', '', 'Y2', '1', '9', '5');
INSERT INTO `info_planinfo` VALUES ('375', '', 'Y3', '1', '10', '6');
INSERT INTO `info_planinfo` VALUES ('376', '', 'Y4', '1', '10', '7');
INSERT INTO `info_planinfo` VALUES ('377', '', 'Y2', '1', '10', '8');
INSERT INTO `info_planinfo` VALUES ('378', '', 'Y3', '1', '11', '9');
INSERT INTO `info_planinfo` VALUES ('379', '', 'Y2', '1', '10', '10');
INSERT INTO `info_planinfo` VALUES ('380', '', 'Y5', '1', '11', '11');
INSERT INTO `info_planinfo` VALUES ('381', '', 'Y4', '1', '10', '12');
INSERT INTO `info_planinfo` VALUES ('382', '', 'Y3', '1', '11', '13');
INSERT INTO `info_planinfo` VALUES ('383', '', 'Y2', '1', '11', '14');
INSERT INTO `info_planinfo` VALUES ('384', '', 'Y2', '1', '10', '15');
INSERT INTO `info_planinfo` VALUES ('385', '', 'Y4', '1', '11', '16');
INSERT INTO `info_planinfo` VALUES ('386', '', 'Y3', '1', '11', '17');
INSERT INTO `info_planinfo` VALUES ('387', '', 'Y5', '1', '11', '18');
INSERT INTO `info_planinfo` VALUES ('388', '', 'Y2', '1', '10', '19');
INSERT INTO `info_planinfo` VALUES ('389', '', 'Y3', '1', '11', '20');
INSERT INTO `info_planinfo` VALUES ('390', '', 'Y4', '1', '11', '21');
INSERT INTO `info_planinfo` VALUES ('391', '', 'Y5', '1', '11', '22');
INSERT INTO `info_planinfo` VALUES ('392', '', 'Y6', '1', '11', '23');
INSERT INTO `info_planinfo` VALUES ('393', '', 'Y4', '1', '10', '24');
INSERT INTO `info_planinfo` VALUES ('394', '', 'Y4', '1', '11', '25');
INSERT INTO `info_planinfo` VALUES ('395', '', 'Y3', '1', '11', '26');
INSERT INTO `info_planinfo` VALUES ('396', '', 'Y5', '1', '11', '27');
INSERT INTO `info_planinfo` VALUES ('397', '', 'Y4', '1', '11', '28');
INSERT INTO `info_planinfo` VALUES ('398', '', 'Y5', '1', '11', '29');
INSERT INTO `info_planinfo` VALUES ('399', '', 'Y3', '1', '10', '30');
INSERT INTO `info_planinfo` VALUES ('400', '', 'y4', '1', '11', '1');
INSERT INTO `info_planinfo` VALUES ('401', '', 'y5', '1', '11', '2');
INSERT INTO `info_planinfo` VALUES ('402', '', 'y6', '1', '11', '3');
INSERT INTO `info_planinfo` VALUES ('403', '', 'y3', '1', '11', '4');
INSERT INTO `info_planinfo` VALUES ('404', '', 'y6', '1', '11', '5');
INSERT INTO `info_planinfo` VALUES ('405', '', 'y3', '1', '12', '6');
INSERT INTO `info_planinfo` VALUES ('406', '', 'y5', '1', '11', '7');
INSERT INTO `info_planinfo` VALUES ('407', '', 'y4', '1', '11', '8');
INSERT INTO `info_planinfo` VALUES ('408', '', 'y6', '1', '12', '9');
INSERT INTO `info_planinfo` VALUES ('409', '', 'y2', '1', '11', '10');
INSERT INTO `info_planinfo` VALUES ('410', '', 'Y5', '1', '12', '1');
INSERT INTO `info_planinfo` VALUES ('411', '', 'Y3', '1', '11', '2');
INSERT INTO `info_planinfo` VALUES ('412', '', 'Y4', '1', '12', '3');
INSERT INTO `info_planinfo` VALUES ('413', '', 'Y2', '1', '12', '4');
INSERT INTO `info_planinfo` VALUES ('414', '', 'Y4', '1', '12', '5');
INSERT INTO `info_planinfo` VALUES ('415', '', 'Y5', '1', '12', '6');
INSERT INTO `info_planinfo` VALUES ('416', '', 'Y3', '1', '12', '7');
INSERT INTO `info_planinfo` VALUES ('417', '', 'Y6', '1', '11', '8');
INSERT INTO `info_planinfo` VALUES ('418', '', 'Y3', '1', '12', '9');
INSERT INTO `info_planinfo` VALUES ('419', '', 'Y4', '1', '12', '10');
INSERT INTO `info_planinfo` VALUES ('420', '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '13', '1');
INSERT INTO `info_planinfo` VALUES ('421', '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', '2');
INSERT INTO `info_planinfo` VALUES ('422', '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', '3');
INSERT INTO `info_planinfo` VALUES ('423', '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', '4');
INSERT INTO `info_planinfo` VALUES ('424', '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', '5');
INSERT INTO `info_planinfo` VALUES ('425', '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', '6');
INSERT INTO `info_planinfo` VALUES ('426', '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', '7');
INSERT INTO `info_planinfo` VALUES ('427', '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '14', '8');
INSERT INTO `info_planinfo` VALUES ('428', '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '14', '9');
INSERT INTO `info_planinfo` VALUES ('429', '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '14', '10');
INSERT INTO `info_planinfo` VALUES ('430', '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '14', '11');
INSERT INTO `info_planinfo` VALUES ('431', '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '14', '12');
INSERT INTO `info_planinfo` VALUES ('432', '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', '13');
INSERT INTO `info_planinfo` VALUES ('433', '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', '14');
INSERT INTO `info_planinfo` VALUES ('434', '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', '15');
INSERT INTO `info_planinfo` VALUES ('435', '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', '16');
INSERT INTO `info_planinfo` VALUES ('436', '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', '17');
INSERT INTO `info_planinfo` VALUES ('437', '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', '18');
INSERT INTO `info_planinfo` VALUES ('438', '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', '19');
INSERT INTO `info_planinfo` VALUES ('439', '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', '20');
INSERT INTO `info_planinfo` VALUES ('440', '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '14', '21');
INSERT INTO `info_planinfo` VALUES ('441', '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', '22');
INSERT INTO `info_planinfo` VALUES ('442', '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', '23');
INSERT INTO `info_planinfo` VALUES ('443', '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', '24');
INSERT INTO `info_planinfo` VALUES ('445', '2ef834da83b5423bb7a0824f78ff311c', 'Y3', '1', '15', '25');
INSERT INTO `info_planinfo` VALUES ('446', '2ef834da83b5423bb7a0824f78ff311c', 'Y2', '1', '15', '26');
INSERT INTO `info_planinfo` VALUES ('447', '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', '27');
INSERT INTO `info_planinfo` VALUES ('448', '2ef834da83b5423bb7a0824f78ff311c', 'Y6', '1', '15', '28');
INSERT INTO `info_planinfo` VALUES ('449', '2ef834da83b5423bb7a0824f78ff311c', 'Y4', '1', '15', '29');
INSERT INTO `info_planinfo` VALUES ('450', '2ef834da83b5423bb7a0824f78ff311c', 'Y5', '1', '15', '30');
INSERT INTO `info_planinfo` VALUES ('451', '86323e29ba9048989492907fc24368aa', 'S1', '1', '13', '1');
INSERT INTO `info_planinfo` VALUES ('452', '86323e29ba9048989492907fc24368aa', 'Y1', '1', '14', '2');
INSERT INTO `info_planinfo` VALUES ('453', '86323e29ba9048989492907fc24368aa', 'S2', '1', '14', '3');
INSERT INTO `info_planinfo` VALUES ('454', '86323e29ba9048989492907fc24368aa', 'Y2', '1', '14', '4');
INSERT INTO `info_planinfo` VALUES ('457', '86323e29ba9048989492907fc24368aa', 'S3', '1', '14', '5');
INSERT INTO `info_planinfo` VALUES ('458', '86323e29ba9048989492907fc24368aa', 'Y2', '1', '14', '6');
INSERT INTO `info_planinfo` VALUES ('461', '86323e29ba9048989492907fc24368aa', 'S4', '1', '14', '7');
INSERT INTO `info_planinfo` VALUES ('463', '86323e29ba9048989492907fc24368aa', 'Y2', '1', '14', '8');
INSERT INTO `info_planinfo` VALUES ('480', '86323e29ba9048989492907fc24368aa', 'S2', '1', '14', '9');
INSERT INTO `info_planinfo` VALUES ('481', '86323e29ba9048989492907fc24368aa', 'Y1', '1', '14', '10');
INSERT INTO `info_planinfo` VALUES ('483', '86323e29ba9048989492907fc24368aa', 'S2', '1', '14', '11');
INSERT INTO `info_planinfo` VALUES ('484', '86323e29ba9048989492907fc24368aa', 'Y2', '1', '14', '12');
INSERT INTO `info_planinfo` VALUES ('485', '86323e29ba9048989492907fc24368aa', 'S3', '1', '15', '13');
INSERT INTO `info_planinfo` VALUES ('486', '86323e29ba9048989492907fc24368aa', 'Y3', '1', '15', '14');
INSERT INTO `info_planinfo` VALUES ('487', '86323e29ba9048989492907fc24368aa', 'S3', '1', '15', '15');
INSERT INTO `info_planinfo` VALUES ('489', '86323e29ba9048989492907fc24368aa', 'Y2', '1', '14', '16');
INSERT INTO `info_planinfo` VALUES ('490', '86323e29ba9048989492907fc24368aa', 'S3', '1', '15', '17');
INSERT INTO `info_planinfo` VALUES ('491', '86323e29ba9048989492907fc24368aa', 'Y1', '1', '15', '18');
INSERT INTO `info_planinfo` VALUES ('492', '86323e29ba9048989492907fc24368aa', 'S4', '1', '15', '19');
INSERT INTO `info_planinfo` VALUES ('493', '86323e29ba9048989492907fc24368aa', 'Y2', '1', '15', '20');
INSERT INTO `info_planinfo` VALUES ('494', '86323e29ba9048989492907fc24368aa', 'S2', '1', '14', '21');
INSERT INTO `info_planinfo` VALUES ('495', '86323e29ba9048989492907fc24368aa', 'Y2', '1', '15', '22');
INSERT INTO `info_planinfo` VALUES ('497', '86323e29ba9048989492907fc24368aa', 'S3', '1', '15', '23');
INSERT INTO `info_planinfo` VALUES ('499', '86323e29ba9048989492907fc24368aa', 'Y1', '1', '15', '24');
INSERT INTO `info_planinfo` VALUES ('500', '86323e29ba9048989492907fc24368aa', 'S2', '1', '15', '25');
INSERT INTO `info_planinfo` VALUES ('501', '86323e29ba9048989492907fc24368aa', 'Y2', '1', '15', '26');
INSERT INTO `info_planinfo` VALUES ('503', '86323e29ba9048989492907fc24368aa', 'S1', '1', '15', '27');
INSERT INTO `info_planinfo` VALUES ('504', '86323e29ba9048989492907fc24368aa', 'Y1', '1', '15', '28');
INSERT INTO `info_planinfo` VALUES ('505', '86323e29ba9048989492907fc24368aa', 'S2', '1', '15', '29');
INSERT INTO `info_planinfo` VALUES ('506', '86323e29ba9048989492907fc24368aa', 'Y2', '1', '15', '30');
INSERT INTO `info_planinfo` VALUES ('507', '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '10', '1');
INSERT INTO `info_planinfo` VALUES ('508', '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '10', '2');
INSERT INTO `info_planinfo` VALUES ('509', '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '10', '3');
INSERT INTO `info_planinfo` VALUES ('510', '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '11', '4');
INSERT INTO `info_planinfo` VALUES ('511', '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '11', '5');
INSERT INTO `info_planinfo` VALUES ('512', '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '11', '6');
INSERT INTO `info_planinfo` VALUES ('513', '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '11', '7');
INSERT INTO `info_planinfo` VALUES ('514', '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', '8');
INSERT INTO `info_planinfo` VALUES ('515', '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '12', '9');
INSERT INTO `info_planinfo` VALUES ('516', '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '12', '10');
INSERT INTO `info_planinfo` VALUES ('517', '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', '11');
INSERT INTO `info_planinfo` VALUES ('518', '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '12', '12');
INSERT INTO `info_planinfo` VALUES ('519', '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '12', '13');
INSERT INTO `info_planinfo` VALUES ('520', '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '12', '14');
INSERT INTO `info_planinfo` VALUES ('521', '7945e7b652d648b9aed86b8cff44df63', 'y5', '1', '12', '15');
INSERT INTO `info_planinfo` VALUES ('522', '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', '16');
INSERT INTO `info_planinfo` VALUES ('523', '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '13', '17');
INSERT INTO `info_planinfo` VALUES ('524', '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '13', '18');
INSERT INTO `info_planinfo` VALUES ('525', '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '13', '19');
INSERT INTO `info_planinfo` VALUES ('526', '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '13', '20');
INSERT INTO `info_planinfo` VALUES ('528', '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', '21');
INSERT INTO `info_planinfo` VALUES ('529', '7945e7b652d648b9aed86b8cff44df63', 'y1', '1', '13', '22');
INSERT INTO `info_planinfo` VALUES ('530', '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '13', '23');
INSERT INTO `info_planinfo` VALUES ('531', '7945e7b652d648b9aed86b8cff44df63', 'y5', '1', '13', '24');
INSERT INTO `info_planinfo` VALUES ('532', '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '13', '25');
INSERT INTO `info_planinfo` VALUES ('533', '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '14', '26');
INSERT INTO `info_planinfo` VALUES ('534', '7945e7b652d648b9aed86b8cff44df63', 'y2', '1', '13', '27');
INSERT INTO `info_planinfo` VALUES ('535', '7945e7b652d648b9aed86b8cff44df63', 'y3', '1', '14', '28');
INSERT INTO `info_planinfo` VALUES ('536', '7945e7b652d648b9aed86b8cff44df63', 'y4', '1', '14', '29');
INSERT INTO `info_planinfo` VALUES ('537', '7945e7b652d648b9aed86b8cff44df63', 'y6', '1', '14', '30');
INSERT INTO `info_planinfo` VALUES ('538', '1254549db02a4ffc9b907b7dc05b7955', 's3', '1', '12', '1');
INSERT INTO `info_planinfo` VALUES ('540', '', '1', '1', '1', '1');
INSERT INTO `info_planinfo` VALUES ('541', '', '1', '1', '1', '1');
INSERT INTO `info_planinfo` VALUES ('542', '697c4cbc3d4b4c3891b134c2de3c1f13', '2', '2', '22', '2');
INSERT INTO `info_planinfo` VALUES ('543', '697c4cbc3d4b4c3891b134c2de3c1f13', '3', '3', '3', '3');
INSERT INTO `info_planinfo` VALUES ('544', '697c4cbc3d4b4c3891b134c2de3c1f13', '4', '4', '4', '4');
INSERT INTO `info_planinfo` VALUES ('545', '697c4cbc3d4b4c3891b134c2de3c1f13', '5', '5', '5', '5');

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
INSERT INTO `sys_business` VALUES ('1', '石家庄总店', '2', '裕华区翟营南大街神兴大厦518', '李梅青', '13930107170', '11@qqc.com', '0');
INSERT INTO `sys_business` VALUES ('198237dd247241c5bd50c51281aa3211', '加盟商B', '2', 'asd', 'def', '15032831554', 'qwe@qq.com', '1');
INSERT INTO `sys_business` VALUES ('3be98b3969d74022a0d65afff06dadb9', '北新街店', '2', '北新街与市庄路交口', '张颖', '13931168370', '2946604972@qq.com', '0');
INSERT INTO `sys_business` VALUES ('75c1ca28b5bf488b9841077de4d31591', '石家庄总店2', '3', '青园街220', 'asd', '15032831553', '11@qqc.com', '1');
INSERT INTO `sys_business` VALUES ('9f44ea18e2864ea59a89dd748e2b7de3', '石家庄中华店', '2', '中华南大街保龙仓超市', '张静', '15131136279', '11@qqc.com', '0');
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
INSERT INTO `sys_menu` VALUES ('11', '治疗期', '10', '/cus/1', 'Y', '0', 'cus_1', null);
INSERT INTO `sys_menu` VALUES ('12', '保健期', '10', '/cus/2', 'Y', '0', 'cus_2', null);
INSERT INTO `sys_menu` VALUES ('13', '试用期', '10', '/cus/0', 'Y', '0', 'cus_3', null);
INSERT INTO `sys_menu` VALUES ('2', '系统管理', '1', '#', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('3', '用户管理', '2', '/sys/user', 'Y', '0', 'user', null);
INSERT INTO `sys_menu` VALUES ('4', '角色管理', '2', '/sys/role', 'Y', '0', 'role', null);
INSERT INTO `sys_menu` VALUES ('5', '菜单管理', '2', '/sys/menu/list', 'Y', '0', 'menu_list', 'sys:menu:list');
INSERT INTO `sys_menu` VALUES ('6', '加盟管理', '1', '#', 'Y', '0', null, null);
INSERT INTO `sys_menu` VALUES ('7', '加盟商信息', '6', '/info/business', 'Y', '0', 'business', 'info:business:list');
INSERT INTO `sys_menu` VALUES ('8', '方案管理', '6', '/info/plan', 'Y', '0', 'plan', 'info:plan:list');
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
INSERT INTO `sys_role` VALUES ('2', 'jiameng', '加盟商', '加盟商', '1', '1', '2016-03-23 15:14:24', '1', '2016-03-23 15:14:26');
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
INSERT INTO `sys_user` VALUES ('1', 'admin', '1d72ae591cdfa8f256636a08b38cf51b2e2ed4e18dc09f4c4b14db87', '管理员', '15032831553', '11@qq.com', null, '0', '1', '1', '2016-03-17 20:15:26', null, '2017-05-07 07:43:51', '0', '2016-03-29');
INSERT INTO `sys_user` VALUES ('187f6412dd8f4d3ab8aebf6522bcebe0', null, '66269d101f88755ad39fc7c1d0cb47a5251b24a5582bc883b5170147', null, null, null, null, '0', null, null, '2017-05-07 07:45:27', null, '2017-05-07 07:45:27', '1', null);
INSERT INTO `sys_user` VALUES ('2', 'zhangyu', 'c5d61427200aca060709b90aed27a14b36f1877e622c5c0592865e91', '加盟abc', '15032850523', '22@qq.com', null, '0', '1', '1', '2016-03-01 13:32:08', '1', '2016-05-25 16:47:31', '0', '2017-03-27');
INSERT INTO `sys_user` VALUES ('3', 'zhangying123', '1caae8b0fe63380363b79062433faa6e3046cd8cc6cf740dbdfe6ab0', '加盟C1', '15032831536', '133@qq.com', null, '1', '1', '1', '2016-03-24 12:48:01', '1', '2016-04-26 14:36:57', '0', '2018-03-27');
INSERT INTO `sys_user` VALUES ('57a61b6d1a0148239b1c5ea55b4346f3', 'benz', 'b7349aafbbcb24a5552dbd0d32c83649b9d5bd3436f843b955635671', '新增Item1', '15032831553', '123@qq.com', null, '0', '1', null, '2016-03-30 16:48:40', null, '2016-03-30 16:48:40', '0', null);
INSERT INTO `sys_user` VALUES ('7c5f5acfeeab4f1fbcc2afc671ded1d9', 'qingyuan', '3aac2affbe6c082dc479bf7dbd7e2e4b076a2892db5f18ac028eb6a9', '青园账号', '15032831552', 'asd@qq.com', null, '0', '9f44ea18e2864ea59a89dd748e2b7de3', '1', '2016-05-25 14:46:17', '1', '2016-05-25 16:51:01', '0', null);
INSERT INTO `sys_user` VALUES ('af4a78d23da24ae39100d91d8673d066', null, 'eb4e9d80710d8033f74fc2e5ab8df0e4b12e2c505b393bab5c10ffe4', null, null, null, null, '0', null, null, '2017-05-07 07:45:37', null, '2017-05-07 07:45:37', '1', null);

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
