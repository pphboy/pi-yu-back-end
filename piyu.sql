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

 Date: 29/01/2021 20:25:24
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
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `login_record` VALUES (18, 10006, '0:0:0:0:0:0:0:1', '2021-01-27 10:01:05');
INSERT INTO `login_record` VALUES (19, 10006, '0:0:0:0:0:0:0:1', '2021-01-27 10:23:34');
INSERT INTO `login_record` VALUES (20, 10006, '0:0:0:0:0:0:0:1', '2021-01-27 10:24:05');
INSERT INTO `login_record` VALUES (21, 10006, '0:0:0:0:0:0:0:1', '2021-01-27 10:41:16');
INSERT INTO `login_record` VALUES (22, 10006, '0:0:0:0:0:0:0:1', '2021-01-27 11:45:54');
INSERT INTO `login_record` VALUES (23, 10007, '0:0:0:0:0:0:0:1', '2021-01-28 19:41:33');
INSERT INTO `login_record` VALUES (24, 10006, '0:0:0:0:0:0:0:1', '2021-01-28 19:58:50');
INSERT INTO `login_record` VALUES (25, 10006, '0:0:0:0:0:0:0:1', '2021-01-28 20:10:48');
INSERT INTO `login_record` VALUES (26, 10007, '0:0:0:0:0:0:0:1', '2021-01-28 20:19:17');
INSERT INTO `login_record` VALUES (27, 10007, '0:0:0:0:0:0:0:1', '2021-01-28 20:23:42');
INSERT INTO `login_record` VALUES (28, 10006, '0:0:0:0:0:0:0:1', '2021-01-28 20:37:16');
INSERT INTO `login_record` VALUES (29, 10006, '0:0:0:0:0:0:0:1', '2021-01-28 20:39:37');
INSERT INTO `login_record` VALUES (30, 10007, '0:0:0:0:0:0:0:1', '2021-01-29 16:57:14');
INSERT INTO `login_record` VALUES (31, 10006, '0:0:0:0:0:0:0:1', '2021-01-29 16:59:28');
INSERT INTO `login_record` VALUES (32, 10006, '0:0:0:0:0:0:0:1', '2021-01-29 17:01:24');
INSERT INTO `login_record` VALUES (33, 10006, '0:0:0:0:0:0:0:1', '2021-01-29 17:03:19');
INSERT INTO `login_record` VALUES (34, 10006, '0:0:0:0:0:0:0:1', '2021-01-29 17:04:15');
INSERT INTO `login_record` VALUES (35, 10006, '0:0:0:0:0:0:0:1', '2021-01-29 17:05:39');
INSERT INTO `login_record` VALUES (36, 10006, '0:0:0:0:0:0:0:1', '2021-01-29 17:07:48');

-- ----------------------------
-- Table structure for pi_product
-- ----------------------------
DROP TABLE IF EXISTS `pi_product`;
CREATE TABLE `pi_product`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '发布者的id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `class_id` int(11) NOT NULL COMMENT '皮物分类id',
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货地址',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `status` tinyint(1) NOT NULL COMMENT '封禁状态 发表时须通过审核',
  `down_shelf` tinyint(1) NULL DEFAULT NULL COMMENT '下架',
  `sold_status` tinyint(1) NULL DEFAULT NULL COMMENT '已售状态',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `freight` decimal(10, 2) NULL DEFAULT NULL COMMENT '运费',
  `trade_status` tinyint(1) NULL DEFAULT NULL COMMENT '是否是交易中 为true为交易中，为false处于交易中',
  `down_date` datetime(0) NULL DEFAULT NULL COMMENT '下架时间',
  `trade_date` datetime(0) NULL DEFAULT NULL COMMENT '已售的时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `class_id`(`class_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pi_product
-- ----------------------------
INSERT INTO `pi_product` VALUES ('1', 10006, '标题', 1, 1000.00, '湖南', '内容', 0, 0, 0, '2021-01-26 10:47:30', 100.00, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('2', 10006, 'TITLE', 1, 9999.00, '湖北', 'TEST', 0, 1, 0, '2021-01-26 10:59:52', 100.00, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('6', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-28 11:54:06', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('5', 10006, '测试', 1, 123.00, '测试测试测试测试', '测试\n\n测试测试测试测试测试测试测试测试测试测试测试\n\n测试\n\n测试测试测试测试测试测试测试测试测试测试测试\n\n测试\n\n测试测试测试测试测试测试测试测试测试测试测试\n\n测试\n\n测试测试测试测试测试测试测试测试测试测试测试\n', 0, 0, 0, '2021-01-28 11:52:35', 123.00, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('7', 10006, '西施一个', 1, 99.99, '唐朝发货', '* [ ] 写点什么？\n* [ ] 没有老婆\n* [ ] 单身DOG\n\n* go go go 🚀️ 🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️🚀️\n', 0, 0, 0, '2021-01-28 12:13:37', 99.44, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('8', 10006, '随便写点什么', 2, NULL, NULL, '随便写点什么\n\n随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么随便写点什么\n', 0, 0, 0, '2021-01-28 14:56:16', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('9', 10006, '123', 1, 123.00, '123', 'fasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdffasdf\n\n\n![神王1.jpg](http://localhost:81/img/2021-01-29/202101291117479a26009acbbc4bf8a3c69da3097afccd.jpg)\n  ', 0, 0, 0, '2021-01-29 11:17:49', 123.00, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('71', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:56', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('70', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:56', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('68', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:55', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('69', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:55', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('67', 10006, '测试1', 1, 900.00, '测试测试测试测试1', '🚀️\n\n#### 我写了图片1\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:55', 99.99, NULL, NULL, NULL, '2021-01-29 20:06:39');
INSERT INTO `pi_product` VALUES ('66', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:55', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('65', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:55', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('63', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:54', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('64', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:54', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('62', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:54', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('61', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:53', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('59', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:53', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('60', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:53', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('58', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:53', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('57', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:53', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('55', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:52', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('56', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:52', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('54', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:52', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('53', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:51', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('51', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:51', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('52', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![8848.jpg](http://localhost:81/img/2021-01-28/202101281153272c97ed1405604d32a56371fb294f57fd.jpg)\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 15:36:51', 99.99, NULL, NULL, NULL, NULL);
INSERT INTO `pi_product` VALUES ('72', 10006, 'product测试', 4, 188.00, 'product测试123', '# 皮皮豪是五笔玩家皮皮豪是五笔玩家1\n\n皮皮豪是五笔玩家\n\n皮皮豪是五笔玩家\n\n皮皮豪是五笔玩家\n\n![红牛.jpg](http://localhost:81/img/2021-01-29/20210129193117a2bd56feed554ea6ac8aef6469c0fe32.jpg)\n', 0, 0, 0, '2021-01-29 19:31:19', 188.00, NULL, NULL, NULL, '2021-01-29 20:22:03');
INSERT INTO `pi_product` VALUES ('73', 10006, '测试', 1, 1000.00, '测试测试测试测试', '#### 我写了图片\n\n你能看见吗后台\n\n![神王.jpg](http://localhost:81/img/2021-01-29/20210129201212cce955f273014cebb9f26d6409577d5c.jpg)\n\n![神王1.jpg](http://localhost:81/img/2021-01-28/2021012811532724152e943381445cabf5f70533b5b282.jpg)\n![神王.jpg](http://localhost:81/img/2021-01-28/2021012811532728130797ce1c43adb93e82a29e52fbee.jpg)\n![直播.png](http://localhost:81/img/2021-01-28/20210128115327089c94fce10445c18568aeb84c9418f7.png)\n', 0, 0, 0, '2021-01-29 19:57:15', 99.99, NULL, NULL, NULL, '2021-01-29 20:12:22');
INSERT INTO `pi_product` VALUES ('6d0e0264e3674a1c', 10006, '随便写点什么东西了', 2, 1.00, '湖南', '# 湖南帅小伙写代码\n\n![直播.png](http://localhost:81/img/2021-01-29/202101292023056aa4cb85179f4367aae171b3a2d02f03.png)\n', 0, 0, 0, '2021-01-29 20:23:19', 1.00, NULL, NULL, NULL, '2021-01-29 20:24:13');

-- ----------------------------
-- Table structure for pi_product_class
-- ----------------------------
DROP TABLE IF EXISTS `pi_product_class`;
CREATE TABLE `pi_product_class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pi_product_class
-- ----------------------------
INSERT INTO `pi_product_class` VALUES (1, '数码', '2021-01-26 10:45:36');
INSERT INTO `pi_product_class` VALUES (2, '技术', '2021-01-26 10:45:47');
INSERT INTO `pi_product_class` VALUES (3, '艺术', '2021-01-26 10:45:56');
INSERT INTO `pi_product_class` VALUES (4, '五笔', '2021-01-26 10:46:32');

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
) ENGINE = MyISAM AUTO_INCREMENT = 10008 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '用户名', ' 秘密', '2021-01-20 21:01:27', 1, '地址', '简介', '盐', '2021-01-07 22:09:41', '2021-01-08 21:01:45', '头像', 1, '222@qq.com', NULL);
INSERT INTO `user` VALUES (2, '用户名', ' 密码', NULL, NULL, NULL, NULL, '盐', '2021-01-16 10:51:24', NULL, '', NULL, '222@qq.com', NULL);
INSERT INTO `user` VALUES (10006, 'pipihao', 'ffabbd4e922295aba5adf7677ad3893d1d73f7a8', '2021-01-26 08:29:26', 1, '湖南省', '没有什么想说的~1', '8814d459a4db41f591c8', '2021-01-19 14:16:06', NULL, 'http://localhost:81/img/2021-01-28/20210128163815295598afdd6d49ff905bf7cb8bdc3595.jpg', 0, '87095894@qq.com', '123123');
INSERT INTO `user` VALUES (10007, 'test123', '1d473787a653819bc8b99e6d749f683f386152b9', NULL, 0, NULL, NULL, '6371aa8029ab40288cc2', '2021-01-28 19:37:46', NULL, 'http://localhost:81/img/2021-01-28/20210128203429959e640b4586482fa42f81ba6c163162.jpg', 0, 'test123@q.com', NULL);

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
INSERT INTO `wallet` VALUES (10006, 1000.00, '2021-01-28 19:03:53', '2021-01-28 19:03:56', 100.00, 100.00);
INSERT INTO `wallet` VALUES (10007, 0.00, '2021-01-28 19:37:46', '2021-01-28 19:37:46', 0.00, 0.00);

SET FOREIGN_KEY_CHECKS = 1;
