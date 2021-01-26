/*
 Navicat Premium Data Transfer

 Source Server         : PiYu
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : piyu

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 26/01/2021 10:20:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for follows
-- ----------------------------
DROP TABLE IF EXISTS `follows`;
CREATE TABLE `follows`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '被关注者的id',
  `f_user_id` int(11) NOT NULL COMMENT '粉丝的id',
  `follow_time` datetime(0) NOT NULL COMMENT '关注的时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `f_user_id`(`f_user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of follows
-- ----------------------------

-- ----------------------------
-- Table structure for footprint
-- ----------------------------
DROP TABLE IF EXISTS `footprint`;
CREATE TABLE `footprint`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pi_product_id` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of footprint
-- ----------------------------

-- ----------------------------
-- Table structure for login_record
-- ----------------------------
DROP TABLE IF EXISTS `login_record`;
CREATE TABLE `login_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_record
-- ----------------------------
INSERT INTO `login_record` VALUES (1, 10000, '100.0.0.0', '2021-01-14 15:10:42');
INSERT INTO `login_record` VALUES (2, 10000, '0.0.0.0', '2021-01-18 16:00:29');
INSERT INTO `login_record` VALUES (3, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 14:16:11');
INSERT INTO `login_record` VALUES (4, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 14:20:47');
INSERT INTO `login_record` VALUES (5, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 14:21:50');
INSERT INTO `login_record` VALUES (6, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 14:22:30');
INSERT INTO `login_record` VALUES (7, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 14:22:44');
INSERT INTO `login_record` VALUES (8, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 14:24:46');
INSERT INTO `login_record` VALUES (9, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 14:40:58');
INSERT INTO `login_record` VALUES (10, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 15:09:42');
INSERT INTO `login_record` VALUES (11, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 15:10:33');
INSERT INTO `login_record` VALUES (12, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 15:12:34');
INSERT INTO `login_record` VALUES (13, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 15:25:42');
INSERT INTO `login_record` VALUES (14, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 15:26:11');
INSERT INTO `login_record` VALUES (15, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 15:27:10');
INSERT INTO `login_record` VALUES (16, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 15:29:10');
INSERT INTO `login_record` VALUES (17, 10006, '0:0:0:0:0:0:0:1', '2021-01-19 15:35:53');

-- ----------------------------
-- Table structure for pi_product
-- ----------------------------
DROP TABLE IF EXISTS `pi_product`;
CREATE TABLE `pi_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '发布者的id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_id` int(11) NOT NULL COMMENT '皮物分类id',
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货地址',
  `content` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章内容',
  `status` tinyint(1) NOT NULL COMMENT '封禁状态 发表时须通过审核',
  `down_shelf` tinyint(1) NULL DEFAULT NULL COMMENT '下架',
  `sold_status` tinyint(1) NULL DEFAULT NULL COMMENT '已售状态',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `freight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运费',
  `trade_status` tinyint(1) NULL DEFAULT NULL COMMENT '是否是交易中 为true为交易中，为false处于交易中',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `class_id`(`class_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pi_product
-- ----------------------------

-- ----------------------------
-- Table structure for pi_product_class
-- ----------------------------
DROP TABLE IF EXISTS `pi_product_class`;
CREATE TABLE `pi_product_class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pi_product_class
-- ----------------------------

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `test` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, '测试1', '测试1');
INSERT INTO `test` VALUES (2, '测试2', '测试2');

-- ----------------------------
-- Table structure for trading
-- ----------------------------
DROP TABLE IF EXISTS `trading`;
CREATE TABLE `trading`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '出钱的用户',
  `r_user_id` int(11) NOT NULL COMMENT '收钱的用户 ',
  `type` int(11) NOT NULL COMMENT '1.交易，2充值，3转账',
  `pi_product_id` int(11) NULL DEFAULT NULL COMMENT ' 皮物，没有为 null',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '是否支出 ，如果需要支付的时候，则直接设置成true，然后交易成功，如果订单取消，设置成false',
  `time` datetime(0) NOT NULL,
  `money` decimal(10, 2) NOT NULL COMMENT '金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of trading
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名，登录账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth_date` datetime(0) NULL DEFAULT NULL,
  `gender` tinyint(1) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '盐',
  `register_date` datetime(0) NOT NULL COMMENT '注册时间',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '上次登录时间',
  `head_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像',
  `active_status` tinyint(1) NULL DEFAULT NULL COMMENT '激活状态',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alipay_account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付宝账号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10007 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '昵称', '用户名', ' 秘密', '2021-01-20 21:01:27', 1, '地址', '简介', '盐', '2021-01-07 22:09:41', '2021-01-08 21:01:45', '头像', 1, '222@qq.com', NULL);
INSERT INTO `user` VALUES (2, NULL, '用户名', ' 密码', NULL, NULL, NULL, NULL, '盐', '2021-01-16 10:51:24', NULL, '', NULL, '222@qq.com', NULL);
INSERT INTO `user` VALUES (10006, NULL, 'pipihao', 'ffabbd4e922295aba5adf7677ad3893d1d73f7a8', NULL, NULL, NULL, NULL, '8814d459a4db41f591c8', '2021-01-19 14:16:06', NULL, '', 0, '87095894@qq.com', NULL);

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市',
  `county` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '县',
  `dailed_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细地址',
  `is_default` tinyint(4) NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_address
-- ----------------------------

-- ----------------------------
-- Table structure for wallet
-- ----------------------------
DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet`  (
  `user_id` int(11) NOT NULL,
  `balance` decimal(10, 2) NOT NULL COMMENT '余额',
  `first_date` datetime(0) NOT NULL COMMENT '创建时间',
  `last_trading_time` datetime(0) NOT NULL COMMENT '最后一次交易时间',
  `total_revenue` decimal(10, 2) NOT NULL COMMENT '收入总额',
  `total_expenditure` decimal(10, 2) NOT NULL COMMENT '支出总额',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of wallet
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
