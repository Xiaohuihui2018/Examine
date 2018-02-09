/*
Navicat MySQL Data Transfer

Source Server         : My
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : zsh

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-02-09 17:38:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `city` varchar(255) DEFAULT NULL,
  `ad1` varchar(255) DEFAULT NULL,
  `ad2` varchar(255) DEFAULT NULL,
  `ad3` varchar(255) DEFAULT NULL,
  `ad4` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('北京', '北京·朝阳区旗舰店 体验中心', '北京市西城区新街口南大街61号', '周一至周日 9:30-20:00', '咨询电话 15117991700', 'img/beijing.jpg');
INSERT INTO `city` VALUES ('深圳', '广东·深圳总部', '广东省深圳市南山区创业路中兴工业城9栋601', '周一至周日 9:30-20:00', '', 'img/shenzhen.jpg');
INSERT INTO `city` VALUES ('天津', '天津·天津分店 体验中心', '天津市和平区南京路诚基中心3-2-3905', '周一至周日 9:30-20:00', '咨询电话 13212055648', 'img/tianjin.jpg');
INSERT INTO `city` VALUES ('成都', '四川·成都锦江区春熙路分店 体验中心', '成都市锦江区春熙路小科甲巷1号第一城A座9楼2室（伊势丹和伊藤洋华堂背后)', '周一至周日 9:30-20:00', '咨询电话 18081059929', 'img/chengdu.jpg');
INSERT INTO `city` VALUES ('温州', '浙江·温州市旗舰店 体验中心', '浙江省温州市人民中路环球大厦807室', '周一至周日 9:30-20:00', '咨询电话 13957766656', 'img/zhejiang.jpg');
INSERT INTO `city` VALUES ('江苏', '江苏·南京南站分店 体验中心', '江苏省南京雨花区明发商业广场4栋404室', '周一至周日 9:30-20:00', '咨询电话 13705150120', 'img/jiangsu.jpg');
INSERT INTO `city` VALUES ('福建', '福建·福州分店 体验中心', '福州市仓山区金辉天鹅8号楼605店（乐购旁）', '周一至周日 9:30-20:00', '咨询电话 13305016641', 'img/fujian.jpg');
INSERT INTO `city` VALUES ('海南', '海南·海口分店 体验中心', '海南省海口市海秀18号鑫源温泉大酒店20层', '周一至周日 9:30-20:00', '咨询电话 13337600086', 'img/hainan.jpg');
INSERT INTO `city` VALUES ('重庆', '重庆·沙坪坝分店体验中心', '重庆市沙坪坝三峡广场王府井B座6-4（入口王府井国美旁）', '周一至周日 9:30-20:00', '咨询电话 13708393217', 'img/chongqin.jpg');
INSERT INTO `city` VALUES ('河北', '河北·秦皇岛茂业分店体验中心', '河北省秦皇岛市海港区文化路39号茂业百货金都大厦15层1522室', '周一至周日 9:30-20:00', '咨询电话 13833524801', 'img/hebei.jpg');
INSERT INTO `city` VALUES ('江西', '江西·南昌旗舰店体验中心', '江西省南昌市中山路地王广场写字楼8-H（中山路洪客隆楼上）', '周一至周日 9:30-20:00', '咨询电话 18679167500', 'img/jiangxi.jpg');

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gN` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `op` varchar(255) NOT NULL,
  `np` varchar(255) NOT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL,
  `img6` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('1', 'g1', 'main1', '玫瑰人生 群镶浪漫 玫瑰花开', '43543', '34556', '../img/gp1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('2', 'g2', 'main1', '缘徊 扭臂优雅 时尚感性', '4355', '3455', '../img/gp6.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('3', 'g3', 'main1', 'MERRY ME 经典六爪 缠丝情迷', '3455', '2344', '../img/gp5.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('4', 'g4', 'main1', '花眸 闪耀眼眸尽显女人味', '45654', '43566', '../img/gp1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('5', 'g5', 'main1', 'TRUELOVE 镂空交叉 拥抱温暖', '2344', '3243', '../img/gp4.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('6', 'g1', 'main2', 'JUST YOU 5421的承诺 1240的甜蜜', '4664', '3435', '../img/gp6.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('7', 'g2', 'main2', '爱侣 执子之手 与子同行', '55677', '6577', '../img/gp1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp1.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('8', 'g3', 'main2', 'Forever 低调简约 纯粹爱意', '5666', '4353', '../img/gp3.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('9', 'g4', 'main2', '爱的交织 交缠的命运 相知相守', '84645', '76678', '../img/gp6.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('10', 'g5', 'main2', '同心缘 男女同款 心心相印', '5456', '5544', '../img/gp1.jpg', '../img/gp6.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('11', 'g1', 'main3', '深爱 群镶奢华 爱意蓬勃', '4566', '3455', '../img/gp5.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('12', 'g2', 'main3', '凝望 红碧玺点缀 凝望幸福', '87678', '7657', '../img/gp1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('13', 'g3', 'main3', '提亚的优雅 优雅曲线 群镶性感', '4355', '3435', '../img/limg1.jpg', '../img/gp2.jpg', '../img/gp4.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('14', 'g4', 'main3', '依夕 单颗碧玺 璀璨夺目', '75677', '45645', '../img/gp1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('15', 'g5', 'main3', '欲放 花型元素 时尚店面设计', '4566', '3455', '../img/gp1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('16', 'g1', 'main4', '典耀 经典闪耀 繁华盛世', '3455', '3455', '../img/gp4.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('17', 'g2', 'main4', '满月 美钻晶莹 珍珠眩目', '5466', '4553', '../img/gp1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('18', 'g3', 'main4', '月韵 东方韵味 月色撩人', '4566', '3455', '../img/gp6.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp6.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('19', 'g4', 'main4', '星意 深邃悠远 璀璨心意', '2000', '1122', '../img/gp1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('20', 'g5', 'main4', '星月 抽象奢华设计 珠光闪耀', '1999', '798', '../img/gp2.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('21', 'g1', 'main5', '吉祥福袋 招财进宝 福寿绵长', '4566', '342', '../img/gp5.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('22', 'g2', 'main5', '长命锁 长命百岁 福气临门', '456', '233', '../img/gp1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('23', 'g3', 'main5', '同心锁 锁住恋人的心', '7657', '2342', '../img/gp1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('24', 'g4', 'main5', '星意 深邃悠远 璀璨心意', '43543', '34554', '../img/gp5.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('25', 'g5', 'main5', '浪漫满屋 OUR LOVE HOME', '4666', '4366', '../img/gp1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('26', '', '', '玫瑰人生 群镶浪漫 玫瑰花开', '43543', '34556', '../img/limg1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('27', '', '', '缘徊 扭臂优雅 时尚感性', '4355', '3455', '../img/limg2.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('28', '', '', 'MERRY ME 经典六爪 缠丝情迷', '3455', '2344', '../img/limg3.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('29', '', '', '花眸 闪耀眼眸尽显女人味', '45654', '43566', '../img/limg4.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('30', '', '', 'TRUELOVE 镂空交叉 拥抱温暖', '2344', '3243', '../img/limg5.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('31', '', '', 'JUST YOU 5421的承诺 1240的甜蜜', '4664', '3435', '../img/limg6.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('32', '', '', '爱侣 执子之手 与子同行', '55677', '6577', '../img/limg7.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp1.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('33', '', '', 'Forever 低调简约 纯粹爱意', '5666', '4353', '../img/limg8.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('34', '', '', '爱的交织 交缠的命运 相知相守', '84645', '76678', '../img/limg9.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('35', '', '', '同心缘 男女同款 心心相印', '5456', '5544', '../img/limg10.jpg', '../img/gp6.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('36', '', '', '深爱 群镶奢华 爱意蓬勃', '4566', '3455', '../img/limg11.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('37', '', '', '凝望 红碧玺点缀 凝望幸福', '87678', '7657', '../img/limg12.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('38', '', '', '提亚的优雅 优雅曲线 群镶性感', '4355', '3435', '../img/limg13.jpg', '../img/gp2.jpg', '../img/gp4.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('39', '', '', '依夕 单颗碧玺 璀璨夺目', '75677', '45645', '../img/limg14.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('40', '', '', '欲放 花型元素 时尚店面设计', '4566', '3455', '../img/limg15.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('41', '', '', '典耀 经典闪耀 繁华盛世', '3455', '3455', '../img/limg16.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('42', '', '', '满月 美钻晶莹 珍珠眩目', '5466', '4553', '../img/limg17.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('43', '', '', '月韵 东方韵味 月色撩人', '4566', '3455', '../img/limg18.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp6.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('44', '', '', '星意 深邃悠远 璀璨心意', '2000', '1122', '../img/limg1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('45', '', '', '星月 抽象奢华设计 珠光闪耀', '1999', '798', '../img/limg2.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('46', '', '', '吉祥福袋 招财进宝 福寿绵长', '4566', '342', '../img/limg3.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('47', '', '', '长命锁 长命百岁 福气临门', '456', '233', '../img/limg4.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('48', '', '', '同心锁 锁住恋人的心', '7657', '2342', '../img/limg5.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('49', '', '', '星意 深邃悠远 璀璨心意', '43543', '34554', '../img/limg6.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('50', '', '', '浪漫满屋 OUR LOVE HOME', '4666', '4366', '../img/limg7.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('51', '', '', '玫瑰人生 群镶浪漫 玫瑰花开', '43543', '34556', '../img/limg8.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('52', '', '', '缘徊 扭臂优雅 时尚感性', '4355', '3455', '../img/limg9.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('53', '', '', 'MERRY ME 经典六爪 缠丝情迷', '3455', '2344', '../img/limg10.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('54', '', '', '花眸 闪耀眼眸尽显女人味', '45654', '43566', '../img/limg11.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('55', '', '', 'TRUELOVE 镂空交叉 拥抱温暖', '2344', '3243', '../img/limg12.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('56', '', '', 'JUST YOU 5421的承诺 1240的甜蜜', '4664', '3435', '../img/limg13.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('57', '', '', '爱侣 执子之手 与子同行', '55677', '6577', '../img/limg14.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp1.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('58', '', '', 'Forever 低调简约 纯粹爱意', '5666', '4353', '../img/limg15.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('59', '', '', '爱的交织 交缠的命运 相知相守', '84645', '76678', '../img/limg16.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('60', '', '', '同心缘 男女同款 心心相印', '5456', '5544', '../img/limg17.jpg', '../img/gp6.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('61', '', '', '深爱 群镶奢华 爱意蓬勃', '4566', '3455', '../img/limg18.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('62', '', '', '凝望 红碧玺点缀 凝望幸福', '87678', '7657', '../img/limg1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('63', '', '', '提亚的优雅 优雅曲线 群镶性感', '4355', '3435', '../img/limg2.jpg', '../img/gp2.jpg', '../img/gp4.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('64', '', '', '依夕 单颗碧玺 璀璨夺目', '75677', '45645', '../img/limg3.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('65', '', '', '欲放 花型元素 时尚店面设计', '4566', '3455', '../img/limg4.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('66', '', '', '典耀 经典闪耀 繁华盛世', '3455', '3455', '../img/limg5.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('67', '', '', '满月 美钻晶莹 珍珠眩目', '5466', '4553', '../img/limg6.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('68', '', '', '月韵 东方韵味 月色撩人', '4566', '3455', '../img/limg7.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp6.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('69', '', '', '星意 深邃悠远 璀璨心意', '2000', '1122', '../img/limg8.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('70', '', '', '星月 抽象奢华设计 珠光闪耀', '1999', '798', '../img/limg9.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('71', '', '', '吉祥福袋 招财进宝 福寿绵长', '4566', '342', '../img/limg10.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('72', '', '', '长命锁 长命百岁 福气临门', '456', '233', '../img/limg11.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('73', '', '', '同心锁 锁住恋人的心', '7657', '2342', '../img/limg12.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('74', '', '', '星意 深邃悠远 璀璨心意', '43543', '34554', '../img/limg13.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('75', '', '', '浪漫满屋 OUR LOVE HOME', '4666', '4366', '../img/limg14.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('76', '', '', '玫瑰人生 群镶浪漫 玫瑰花开', '43543', '34556', '../img/limg15.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('77', '', '', '缘徊 扭臂优雅 时尚感性', '4355', '3455', '../img/limg16.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('78', '', '', 'MERRY ME 经典六爪 缠丝情迷', '3455', '2344', '../img/limg17.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('79', '', '', '花眸 闪耀眼眸尽显女人味', '45654', '43566', '../img/limg18.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('80', '', '', 'TRUELOVE 镂空交叉 拥抱温暖', '2344', '3243', '../img/limg1.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('81', '', '', 'JUST YOU 5421的承诺 1240的甜蜜', '4664', '3435', '../img/limg2.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('82', '', '', '爱侣 执子之手 与子同行', '55677', '6577', '../img/limg3.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp1.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('83', '', '', 'Forever 低调简约 纯粹爱意', '5666', '4353', '../img/limg4.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('84', '', '', '爱的交织 交缠的命运 相知相守', '84645', '76678', '../img/limg5.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('85', '', '', '同心缘 男女同款 心心相印', '5456', '5544', '../img/limg6.jpg', '../img/gp6.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('86', '', '', '深爱 群镶奢华 爱意蓬勃', '4566', '3455', '../img/limg7.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('87', '', '', '凝望 红碧玺点缀 凝望幸福', '87678', '7657', '../img/limg8.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('88', '', '', '提亚的优雅 优雅曲线 群镶性感', '4355', '3435', '../img/limg9.jpg', '../img/gp2.jpg', '../img/gp4.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('89', '', '', '依夕 单颗碧玺 璀璨夺目', '75677', '45645', '../img/limg10.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('90', '', '', '欲放 花型元素 时尚店面设计', '4566', '3455', '../img/limg11.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('91', '', '', '典耀 经典闪耀 繁华盛世', '3455', '3455', '../img/limg12.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('92', '', '', '满月 美钻晶莹 珍珠眩目', '5466', '4553', '../img/limg13.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('93', '', '', '月韵 东方韵味 月色撩人', '4566', '3455', '../img/limg14.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp6.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('94', '', '', '星意 深邃悠远 璀璨心意', '2000', '1122', '../img/limg15.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('95', '', '', '星月 抽象奢华设计 珠光闪耀', '1999', '798', '../img/limg16.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('96', '', '', '吉祥福袋 招财进宝 福寿绵长', '4566', '342', '../img/limg17.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('97', '', '', '长命锁 长命百岁 福气临门', '456', '233', '../img/limg18.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('98', '', '', '同心锁 锁住恋人的心', '7657', '2342', '../img/limg5.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('99', '', '', '星意 深邃悠远 璀璨心意', '43543', '34554', '../img/limg6.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');
INSERT INTO `goodslist` VALUES ('100', '', '', '浪漫满屋 OUR LOVE HOME', '4666', '4366', '../img/limg7.jpg', '../img/gp2.jpg', '../img/gp3.jpg', '../img/gp4.jpg', '../img/gp5.jpg', '../img/gp6.jpg');

-- ----------------------------
-- Table structure for index
-- ----------------------------
DROP TABLE IF EXISTS `index`;
CREATE TABLE `index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主模块id',
  `model` varchar(255) CHARACTER SET latin1 NOT NULL,
  `more` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT '更多内容入口',
  `show_img` varchar(255) CHARACTER SET latin1 NOT NULL,
  `g1` varchar(255) CHARACTER SET latin1 NOT NULL,
  `g2` varchar(255) CHARACTER SET latin1 NOT NULL,
  `g3` varchar(255) CHARACTER SET latin1 NOT NULL,
  `g4` varchar(255) CHARACTER SET latin1 NOT NULL,
  `g5` varchar(255) CHARACTER SET latin1 NOT NULL,
  `g2name` varchar(255) NOT NULL,
  `g2nPrice` decimal(10,2) NOT NULL,
  `g2oPrice` decimal(10,2) NOT NULL,
  `g3name` varchar(255) NOT NULL,
  `g3nPrice` decimal(10,2) NOT NULL,
  `g3oPrice` decimal(10,2) NOT NULL,
  `g4name` varchar(255) NOT NULL,
  `g4nPrice` decimal(10,2) NOT NULL,
  `g4oPrice` decimal(10,2) NOT NULL,
  `g5name` varchar(255) NOT NULL DEFAULT '',
  `g5nPrice` decimal(10,2) NOT NULL,
  `g5oPrice` decimal(10,2) NOT NULL,
  `g1nPrice` decimal(10,2) NOT NULL,
  `g1name` varchar(255) NOT NULL,
  `g1oPrice` decimal(65,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index
-- ----------------------------
INSERT INTO `index` VALUES ('9', 'main1', 'img/more1.png', 'img/show_img1.png', 'img/m1_1.jpg', 'img/m1_2.jpg', 'img/m1_3.jpg', 'img/m1_4.jpg', 'img/m1_5.jpg', '缘徊 扭臂优雅 时尚感性', '45335.99', '66666.88', 'MERRY ME 经典六爪 缠丝情迷', '5656.99', '7777.79', '花眸 闪耀眼眸尽显女人味', '64566.99', '77788.99', 'TRUELOVE 镂空交叉 拥抱温暖', '12999.00', '23657.89', '5676.60', '玫瑰人生 群镶浪漫 玫瑰花开', '66666.77');
INSERT INTO `index` VALUES ('10', 'main2', 'img/more2.png', 'img/show_img2.png', 'img/m2_1.jpg', 'img/m2_2.jpg', 'img/m2_3.jpg', 'img/m2_4.jpg', 'img/m2_5.jpg', '爱侣 执子之手 与子同行', '5411.00', '6764.00', 'Forever 低调简约 纯粹爱意', '4387.00', '5483.00', '爱的交织 交缠的命运 相知相守', '4057.00', '5071.00', '同心缘 男女同款 心心相印', '3642.00', '4551.00', '4494.00', 'JUST YOU 5421的承诺 1240的甜蜜', '5618.00');
INSERT INTO `index` VALUES ('11', 'main3', 'img/more3.png', 'img/show_img3.png', 'img/m3_1.jpg', 'img/m3_2.jpg', 'img/m3_3.jpg', 'img/m3_4.jpg', 'img/m3_5.jpg', '凝望 红碧玺点缀 凝望幸福', '4656.00', '7676.00', '提亚的优雅 优雅曲线 群镶性感', '6456.00', '6666.00', '依夕 单颗碧玺 璀璨夺目', '45645.00', '65646.00', '欲放 花型元素 时尚店面设计', '5644.00', '6666.00', '6456.00', '深爱 群镶奢华 爱意蓬勃', '7774.00');
INSERT INTO `index` VALUES ('12', 'main4', 'img/more4.png', 'img/show_img4.png', 'img/m4_1.jpg', 'img/m4_2.jpg', 'img/m4_3.jpg', 'img/m4_4.jpg', 'img/m4_5.jpg', '满月 美钻晶莹 珍珠眩目', '3453.00', '6634.00', '月韵 东方韵味 月色撩人', '3455.00', '6644.00', '星意 深邃悠远 璀璨心意', '34576.00', '56456.00', '星月 抽象奢华设计 珠光闪耀', '4566.00', '6575.00', '4564.00', '典耀 经典闪耀 繁华盛世', '6999.00');
INSERT INTO `index` VALUES ('13', 'main5', 'img/more5.png', 'img/show_img5.png', 'img/m5_1.jpg', 'img/m5_2.jpg', 'img/m5_3.jpg', 'img/m5_4.jpg', 'img/m5_5.jpg', '长命锁 长命百岁 福气临门', '3455.00', '6644.00', '同心锁 锁住恋人的心', '43543.00', '65464.00', '同心钥 通往恋人心底的钥匙', '3455.00', '4564.00', '浪漫满屋 OUR LOVE HOME', '2344.00', '3643.00', '3455.00', '吉祥福袋 招财进宝 福寿绵长', '4564.00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PhoneNum` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('32', '18344171631', '93b6d31a30a31fa23689075e04b104d0', '2018-02-07 13:45:39');
INSERT INTO `user` VALUES ('34', '13030194725', 'cfacc4965b83b15630228e1abc00de87', '2018-02-07 14:12:03');
INSERT INTO `user` VALUES ('31', '18444181814', 'd855bc1a51a89a48b5086407eeae2743', '2018-02-07 12:03:18');
INSERT INTO `user` VALUES ('1', '18344171632', '503c32505927da967cdff8f13043aa9f', '2018-02-07 11:49:33');
INSERT INTO `user` VALUES ('2', '13144098908', '93b6d31a30a31fa23689075e04b104d0', '2018-02-07 11:49:38');
INSERT INTO `user` VALUES ('3', '18344171636', '93b6d31a30a31fa23689075e04b104d0', '2018-02-07 11:49:54');
INSERT INTO `user` VALUES ('33', '10000000000', '45d47c28cc2ada741ef5798cf8812306', '2018-02-07 13:58:06');
INSERT INTO `user` VALUES ('35', '18344171633', '93b6d31a30a31fa23689075e04b104d0', '2018-02-09 17:32:35');
SET FOREIGN_KEY_CHECKS=1;
