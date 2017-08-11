/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : film

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2017-08-10 01:48:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '570384231@qq.com', '13143197552');

-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `carId` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `filmId` int(32) NOT NULL,
  `count` int(12) NOT NULL,
  PRIMARY KEY (`carId`),
  KEY `fk_userId` (`userId`),
  KEY `fk_fimId` (`filmId`),
  CONSTRAINT `fk_fimId` FOREIGN KEY (`filmId`) REFERENCES `film` (`filmId`),
  CONSTRAINT `fk_userId` FOREIGN KEY (`userId`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('3', '4', '1263591481', '8');

-- ----------------------------
-- Table structure for `discuss`
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss` (
  `discussId` int(12) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '评论的内容',
  `discussTime` varchar(25) NOT NULL DEFAULT '' COMMENT '评论的时间',
  `discussName` varchar(20) NOT NULL DEFAULT '' COMMENT '评论的用户名',
  `discussFloat` int(50) NOT NULL COMMENT '评论的楼层',
  `film_id` int(50) NOT NULL,
  PRIMARY KEY (`discussId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discuss
-- ----------------------------
INSERT INTO `discuss` VALUES ('12', '我不信的', '2017-08-05 01:32:23', 'hello', '-1370610422', '1161273645');

-- ----------------------------
-- Table structure for `film`
-- ----------------------------
DROP TABLE IF EXISTS `film`;
CREATE TABLE `film` (
  `filmId` int(255) NOT NULL AUTO_INCREMENT,
  `actor` varchar(255) NOT NULL,
  `contry` varchar(25) NOT NULL,
  `createtime` varchar(11) NOT NULL,
  `director` varchar(25) NOT NULL,
  `img` varchar(255) NOT NULL,
  `introduction` text NOT NULL,
  `name` varchar(25) NOT NULL,
  `point` double(11,1) NOT NULL,
  `time` varchar(25) NOT NULL,
  `price` double(11,1) NOT NULL,
  PRIMARY KEY (`filmId`)
) ENGINE=InnoDB AUTO_INCREMENT=1971921351 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO `film` VALUES ('1161273645', '马克·沃尔伯格 ，安东尼·霍普金斯，劳拉·哈德克，伊莎贝拉·莫奈，乔什·杜哈明，杰洛·卡迈克尔', '美国', '2017-06-21', '迈克尔·贝', '0d86aba0228e4a6f90ad3dced1fb8e33.jpg', '《变形金刚5》是一部有剧情的《变形金刚》，延续传统这部里汽车人们又有了新的背景故事，梅林亚瑟兰斯洛特的胜利来源于变形金刚的帮助，他们从他那得到了一个权杖，可以控制巨龙。而1600年后，这个权杖成为了关键。', '变形金刚5', '4.3', '149分钟', '20.5');
INSERT INTO `film` VALUES ('1263591481', '休·杰克曼，帕特里克·斯图尔特，达芙妮·基恩，波伊德·霍布鲁克', '美国', '2017-03-03', '西蒙·金伯格', '4d231e0e809949d3afb152e2432d6017.png', '2029年，世界上的变种人几乎被消灭殆尽，X战警已经解散。身心疲惫的暮狼罗根自愈因子逐渐消失，整天饮酒度日，并靠当司机生活，他在墨西哥边境隐居照顾着饱受病痛折磨的查尔斯·泽维尔。某天，一位陌生女子让罗根去载一个叫劳拉·金尼的女孩去加拿大边境，一开始罗根拒绝了，但查尔斯·泽维尔一直在等着这个女孩的出现，因为劳拉·金尼拥有超强的战斗力，而且在许多方面都很像金刚狼。她被一个强大公司雇佣兵的捕杀，因为她的DNA里有着连接罗根的秘密，由此一场无休止的追捕开始。', '金刚狼3：殊死一战', '8.2', '137分钟', '35.0');
INSERT INTO `film` VALUES ('1267212155', '詹姆斯·弗兰科，汤姆·费尔顿，芙蕾达·平托，布莱恩·考克斯', '美国', '2011-08-05', 'Peter Chernin', 'e2ea2633a22d41159aa45fdfaf5544b9.jpg', '《猩球崛起》是科幻片《人猿星球》的前传，由鲁伯特·瓦耶特执导，詹姆斯·弗兰科，汤姆·费尔顿，芙蕾达·平托，布莱恩·考克斯等主演。剧情主要讲述人猿进化为高级智慧生物、进而攻占地球之前的种种际遇，主题是带有警世性质的——人类疯狂的野心所产生的恶果。影片获得了第39届安妮奖最佳真人电影角色动画奖等奖项，同时获得了奥斯卡最佳特效奖提名，但很遗憾，并没有获奖。', '猩球崛起', '5.5', '105分钟', '40.0');
INSERT INTO `film` VALUES ('1270935757', '汤姆·赫兰德，小罗伯特·唐尼，迈克尔·基顿，玛丽莎·托梅', '美国', '2017-07-07', '乔·沃茨', '1e71511fb35343f8aa59c419dfc02b21.jpg', '影片讲述了年轻的蜘蛛侠彼得·帕克（汤姆·赫兰德饰），在钢铁侠的帮助下与终极大反派秃鹰进行斗争的故事。在经历了《美国队长3：内战》中与复仇者联盟成员惊心动魄的对战后，彼得回到和梅阿姨共同居住的家，并受到新导师托尼·斯塔克（小罗伯特·唐尼饰）的暗中关注。彼得试图回归正常的日常生活，然而却经常被“企图证明自己不仅仅是一位友好邻居蜘蛛侠”的想法扰乱心绪，直到影片中的全新反派秃鹰（迈克尔·基顿饰）的出现，对彼得来说重要的一切都开始受到威胁。', '蜘蛛侠：英雄归来', '9.8', '133分钟', '60.0');
INSERT INTO `film` VALUES ('1593286942', '瑞恩·波特，斯科特·埃德希特，T·J·米勒，杰米·钟，小达蒙·威亚斯，珍妮塞丝·罗德里格兹，斯坦·李', '美国', '2014-11-7', '唐·霍尔，克里斯·威廉姆斯', 'b530ad98-6dc1-4543-b0bc-eb312e298362.jpg', '《超能陆战队》（Big Hero 6）是迪士尼与漫威联合出品的第一部动画电影，取材于由Steven T. Seagle和Duncan Rouleau在1998年开始连载的以日本为背景的动作科幻类漫画。影片由唐·霍尔及克里斯·威廉姆斯联袂执导，瑞恩·波特、斯科特·埃德希特、T·J·米勒主演配音，于2014年11月7日以3D形式在北美上映。中国国内公映版于2015年2月28日在内地上映。《超能陆战队》主要讲述充气机器人大白与天才少年小宏联手菜鸟小伙伴组建超能战队，共同打击犯罪阴谋的故事。', '超能陆战队', '7.2', '108分钟', '20.0');
INSERT INTO `film` VALUES ('1593287210', '小罗伯特·唐尼，克里斯·埃文斯[5]  ，克里斯·海姆斯沃斯，斯嘉丽·约翰逊，杰瑞米·雷纳，马克·鲁法洛，塞缪尔·杰克逊，克拉克·格雷格，乔什·布洛林，汤姆·希德勒斯顿', '美国', '2018-05-04', '安东尼·罗素、乔·罗素', '2e1fa31b-73ab-4ec4-904a-6588b1240836.png', '《复仇者联盟3：无限战争》是复仇者联盟系列电影的第三部，是漫威电影宇宙的第十九部电影，本片将与《银河护卫队2》剧情连接  ，本片将会集齐所有漫威电影宇宙的超级英雄进行对抗灭霸，上演一场史无前例的拯救宇宙大战。漫威电影有史以来最强反派：灭霸登场。', '复仇者联盟3：无限战争', '5.0', '145分钟', '35.0');
INSERT INTO `film` VALUES ('1971921241', '杰克·吉伦哈尔，丽贝卡·弗格森，瑞安·雷诺兹', '美国', '2017-06-16', '雷德利·斯科特', 'da40cb6d-1533-4807-9193-ef8a53377189.jpg', '影片的时间线设定在《普罗米修斯》故事结束的10年之后。载有移民的飞船“契约号”深空航行时遭遇变故，偶然降落到了工程师的星球上，并找到了“普罗米修斯”号的幸存者生化人大卫，同时等待他们的还有可怕的异形怪物。这个看似天堂的星球实际上是一个万劫不复的地狱。', '异形：契约', '8.2', '116分钟', '32.8');
INSERT INTO `film` VALUES ('1971921350', '史蒂夫·卡瑞尔，克里斯汀·韦格，崔·帕克，达娜·盖伊，皮艾尔·柯芬，米兰达·卡斯格拉夫，妮芙·沙瑞尔', '美国', '2017-07-07', '\n凯尔·巴尔达', 'b4b67027-623e-4ebf-b49e-8cdd91b2efcb.jpg', '《神偷奶爸3》（Despicable Me 3）是由环球影业及照明娱乐公司联合制作的3D动画电影，由凯尔·巴尔达、皮艾尔·柯芬联合执导，史蒂夫·卡瑞尔、克里斯汀·韦格、崔·帕克等主要配音。该片讲述了格鲁因一次行动失利被反坏蛋联盟开除后，意外得知自己有个孪生兄弟，在亲兄弟德鲁的劝说下，重新开始坏蛋生涯的故事。该片于2017年6月30日在美国上映，2017年7月7日在中国内地上映。', '神偷奶爸3', '8.6', '90分钟', '20.8');

-- ----------------------------
-- Table structure for `film_type`
-- ----------------------------
DROP TABLE IF EXISTS `film_type`;
CREATE TABLE `film_type` (
  `film_id` int(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`film_id`,`type_id`),
  KEY `FK_ketikf1eu7guswx6mndkcv741` (`type_id`),
  KEY `FK_hicjdbdsem0lct8tu0kh2ipsf` (`film_id`),
  CONSTRAINT `FK_hicjdbdsem0lct8tu0kh2ipsf` FOREIGN KEY (`film_id`) REFERENCES `film` (`filmId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ketikf1eu7guswx6mndkcv741` FOREIGN KEY (`type_id`) REFERENCES `types` (`typeId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of film_type
-- ----------------------------
INSERT INTO `film_type` VALUES ('1593286942', '1');
INSERT INTO `film_type` VALUES ('1971921350', '1');
INSERT INTO `film_type` VALUES ('1161273645', '3');
INSERT INTO `film_type` VALUES ('1263591481', '3');
INSERT INTO `film_type` VALUES ('1270935757', '3');
INSERT INTO `film_type` VALUES ('1593286942', '3');
INSERT INTO `film_type` VALUES ('1593287210', '3');
INSERT INTO `film_type` VALUES ('1971921241', '3');
INSERT INTO `film_type` VALUES ('1971921241', '5');
INSERT INTO `film_type` VALUES ('1593286942', '6');
INSERT INTO `film_type` VALUES ('1971921350', '6');
INSERT INTO `film_type` VALUES ('1161273645', '7');
INSERT INTO `film_type` VALUES ('1263591481', '7');
INSERT INTO `film_type` VALUES ('1267212155', '7');
INSERT INTO `film_type` VALUES ('1270935757', '7');
INSERT INTO `film_type` VALUES ('1593286942', '7');
INSERT INTO `film_type` VALUES ('1593287210', '7');
INSERT INTO `film_type` VALUES ('1161273645', '8');

-- ----------------------------
-- Table structure for `orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `orderDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`orderDetailId`),
  KEY `film_id` (`film_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`filmId`),
  CONSTRAINT `orderdetail_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `order_` (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('1', '1161273645', '2', '20');
INSERT INTO `orderdetail` VALUES ('2', '1263591481', '2', '50');
INSERT INTO `orderdetail` VALUES ('3', '1270935757', '1', '20');
INSERT INTO `orderdetail` VALUES ('4', '1267212155', '1', '55');
INSERT INTO `orderdetail` VALUES ('8', '1593287210', '5', '3');
INSERT INTO `orderdetail` VALUES ('9', '1263591481', '5', '2');
INSERT INTO `orderdetail` VALUES ('12', '1263591481', '7', '2');
INSERT INTO `orderdetail` VALUES ('13', '1593287210', '7', '1');
INSERT INTO `orderdetail` VALUES ('14', '1593287210', '8', '5');

-- ----------------------------
-- Table structure for `order_`
-- ----------------------------
DROP TABLE IF EXISTS `order_`;
CREATE TABLE `order_` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `createdTime` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` varchar(5) NOT NULL,
  `money` double(10,1) NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `fk_userOrder` (`userId`),
  CONSTRAINT `fk_userOrder` FOREIGN KEY (`userId`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_
-- ----------------------------
INSERT INTO `order_` VALUES ('1', '2017-02-26', '2', '已购买', '200.0');
INSERT INTO `order_` VALUES ('2', '2017-06-69', '2', '已付款', '500.2');
INSERT INTO `order_` VALUES ('3', '207522', '5', '未付款', '200.5');
INSERT INTO `order_` VALUES ('5', '2017-07-30 11:56:19', '2', '未付款', '70.0');
INSERT INTO `order_` VALUES ('7', '2017-07-30 12:59:43', '2', '未付款', '105.0');
INSERT INTO `order_` VALUES ('8', '2017-08-08 15:47:49', '8', '已购买', '175.0');

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `replyId` int(12) NOT NULL AUTO_INCREMENT,
  `replyTo` varchar(25) NOT NULL DEFAULT '' COMMENT '对谁回复',
  `replyContent` varchar(200) NOT NULL DEFAULT '' COMMENT '回复的内容',
  `replyTime` varchar(25) NOT NULL DEFAULT '' COMMENT '回复的时间',
  `replyUser` varchar(25) NOT NULL DEFAULT '' COMMENT '回复的用户名',
  `replyFloat` int(50) NOT NULL COMMENT '回复的楼层',
  `film_id` int(50) NOT NULL,
  PRIMARY KEY (`replyId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------

-- ----------------------------
-- Table structure for `types`
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(25) NOT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES ('1', '喜剧');
INSERT INTO `types` VALUES ('2', '爱情');
INSERT INTO `types` VALUES ('3', '动作');
INSERT INTO `types` VALUES ('4', '悬疑');
INSERT INTO `types` VALUES ('5', '惊悚');
INSERT INTO `types` VALUES ('6', '动画');
INSERT INTO `types` VALUES ('7', '科幻');
INSERT INTO `types` VALUES ('8', '战争');
INSERT INTO `types` VALUES ('9', '青春');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(25) DEFAULT NULL,
  `name` varchar(25) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `password` varchar(36) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '57038455@qq.com', '12345', null, '123456');
INSERT INTO `user` VALUES ('2', '570384321@qq.com', 'hello6', '13143155555', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES ('4', '909663202@qq.com', 'hello5', null, 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES ('5', null, 'hello2', '13143197556', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES ('6', null, 'hello3', '13143197535', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES ('7', null, 'hello1', '13143197553', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES ('8', null, 'hello', '13143197552', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for `user_film`
-- ----------------------------
DROP TABLE IF EXISTS `user_film`;
CREATE TABLE `user_film` (
  `film_id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  PRIMARY KEY (`film_id`,`user_id`),
  KEY `FK_96ipd7bo136wrt3cgswxeluy7` (`film_id`),
  KEY `FK_9c87epndyhj0v0ilndn7ts2sn` (`user_id`),
  CONSTRAINT `FK_96ipd7bo136wrt3cgswxeluy7` FOREIGN KEY (`film_id`) REFERENCES `film` (`filmId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_9c87epndyhj0v0ilndn7ts2sn` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_film
-- ----------------------------
INSERT INTO `user_film` VALUES ('1263591481', '2');
INSERT INTO `user_film` VALUES ('1593287210', '1');
INSERT INTO `user_film` VALUES ('1593287210', '2');
