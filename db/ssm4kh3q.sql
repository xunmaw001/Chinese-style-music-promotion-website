/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : ssm4kh3q

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2020-12-31 10:24:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chat`
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889975615 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1', '2020-12-25 16:25:03', '1', '1', '提问1', '回复1', '1');
INSERT INTO `chat` VALUES ('2', '2020-12-25 16:25:03', '2', '2', '提问2', '回复2', '2');
INSERT INTO `chat` VALUES ('3', '2020-12-25 16:25:03', '3', '3', '提问3', '回复3', '3');
INSERT INTO `chat` VALUES ('4', '2020-12-25 16:25:03', '4', '4', '提问4', '回复4', '4');
INSERT INTO `chat` VALUES ('5', '2020-12-25 16:25:03', '5', '5', '提问5', '回复5', '5');
INSERT INTO `chat` VALUES ('6', '2020-12-25 16:25:03', '6', '6', '提问6', '回复6', '6');
INSERT INTO `chat` VALUES ('1608889808469', '2020-12-25 17:50:07', '1608889636452', null, '管理员你好啊', null, '0');
INSERT INTO `chat` VALUES ('1608889955386', '2020-12-25 17:52:34', '1608889636452', '1', null, '好啊 有什么可以帮你的', '0');
INSERT INTO `chat` VALUES ('1608889975614', '2020-12-25 17:52:54', '1608889636452', null, '我想听音乐', null, '1');

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/ssm4kh3q/upload/picture1.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/ssm4kh3q/upload/picture2.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/ssm4kh3q/upload/picture3.jpg');
INSERT INTO `config` VALUES ('4', 'picture4', 'http://localhost:8080/ssm4kh3q/upload/picture4.jpg');
INSERT INTO `config` VALUES ('5', 'picture5', 'http://localhost:8080/ssm4kh3q/upload/picture5.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for `dingdanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanxinxi`;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `geming` varchar(200) DEFAULT NULL COMMENT '歌名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889774572 DEFAULT CHARSET=utf8 COMMENT='订单信息';

-- ----------------------------
-- Records of dingdanxinxi
-- ----------------------------
INSERT INTO `dingdanxinxi` VALUES ('1', '2020-12-25 16:25:03', '订单编号1', '歌名1', '类型1', '价格1', '2020-12-25', '用户名1', '姓名1', '未支付');
INSERT INTO `dingdanxinxi` VALUES ('2', '2020-12-25 16:25:03', '订单编号2', '歌名2', '类型2', '价格2', '2020-12-25', '用户名2', '姓名2', '未支付');
INSERT INTO `dingdanxinxi` VALUES ('3', '2020-12-25 16:25:03', '订单编号3', '歌名3', '类型3', '价格3', '2020-12-25', '用户名3', '姓名3', '未支付');
INSERT INTO `dingdanxinxi` VALUES ('4', '2020-12-25 16:25:03', '订单编号4', '歌名4', '类型4', '价格4', '2020-12-25', '用户名4', '姓名4', '未支付');
INSERT INTO `dingdanxinxi` VALUES ('5', '2020-12-25 16:25:03', '订单编号5', '歌名5', '类型5', '价格5', '2020-12-25', '用户名5', '姓名5', '未支付');
INSERT INTO `dingdanxinxi` VALUES ('6', '2020-12-25 16:25:03', '订单编号6', '歌名6', '类型6', '价格6', '2020-12-25', '用户名6', '姓名6', '未支付');
INSERT INTO `dingdanxinxi` VALUES ('1608887954646', '2020-12-25 17:19:14', '202012251719769144565', '歌名1', '类型1', '1', '2020-11-29', '001', '李明', '已支付');
INSERT INTO `dingdanxinxi` VALUES ('1608889774571', '2020-12-25 17:49:34', '2020122517493135617944', '齐天大圣', '流行音乐', '25', '2020-11-29', '1', '刘倩', '已支付');

-- ----------------------------
-- Table structure for `discussgequxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `discussgequxinxi`;
CREATE TABLE `discussgequxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889699360 DEFAULT CHARSET=utf8 COMMENT='歌曲信息评论表';

-- ----------------------------
-- Records of discussgequxinxi
-- ----------------------------
INSERT INTO `discussgequxinxi` VALUES ('1', '2020-12-25 16:25:03', '1', '1', '评论内容1', '回复内容1');
INSERT INTO `discussgequxinxi` VALUES ('2', '2020-12-25 16:25:03', '2', '2', '评论内容2', '回复内容2');
INSERT INTO `discussgequxinxi` VALUES ('3', '2020-12-25 16:25:03', '3', '3', '评论内容3', '回复内容3');
INSERT INTO `discussgequxinxi` VALUES ('4', '2020-12-25 16:25:03', '4', '4', '评论内容4', '回复内容4');
INSERT INTO `discussgequxinxi` VALUES ('5', '2020-12-25 16:25:03', '5', '5', '评论内容5', '回复内容5');
INSERT INTO `discussgequxinxi` VALUES ('6', '2020-12-25 16:25:03', '6', '6', '评论内容6', '回复内容6');
INSERT INTO `discussgequxinxi` VALUES ('1608889699359', '2020-12-25 17:48:19', '1', '1608889636452', '非常好听的歌', null);

-- ----------------------------
-- Table structure for `discussshipinzhuanqu`
-- ----------------------------
DROP TABLE IF EXISTS `discussshipinzhuanqu`;
CREATE TABLE `discussshipinzhuanqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889762480 DEFAULT CHARSET=utf8 COMMENT='视频专区评论表';

-- ----------------------------
-- Records of discussshipinzhuanqu
-- ----------------------------
INSERT INTO `discussshipinzhuanqu` VALUES ('1', '2020-12-25 16:25:03', '1', '1', '评论内容1', '回复内容1');
INSERT INTO `discussshipinzhuanqu` VALUES ('2', '2020-12-25 16:25:03', '2', '2', '评论内容2', '回复内容2');
INSERT INTO `discussshipinzhuanqu` VALUES ('3', '2020-12-25 16:25:03', '3', '3', '评论内容3', '回复内容3');
INSERT INTO `discussshipinzhuanqu` VALUES ('4', '2020-12-25 16:25:03', '4', '4', '评论内容4', '回复内容4');
INSERT INTO `discussshipinzhuanqu` VALUES ('5', '2020-12-25 16:25:03', '5', '5', '评论内容5', '回复内容5');
INSERT INTO `discussshipinzhuanqu` VALUES ('6', '2020-12-25 16:25:03', '6', '6', '评论内容6', '回复内容6');
INSERT INTO `discussshipinzhuanqu` VALUES ('1608889762479', '2020-12-25 17:49:22', '1', '1608889636452', '121212', null);

-- ----------------------------
-- Table structure for `discussxiquxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `discussxiquxinxi`;
CREATE TABLE `discussxiquxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889735532 DEFAULT CHARSET=utf8 COMMENT='戏曲信息评论表';

-- ----------------------------
-- Records of discussxiquxinxi
-- ----------------------------
INSERT INTO `discussxiquxinxi` VALUES ('1', '2020-12-25 16:25:03', '1', '1', '评论内容1', '回复内容1');
INSERT INTO `discussxiquxinxi` VALUES ('2', '2020-12-25 16:25:03', '2', '2', '评论内容2', '回复内容2');
INSERT INTO `discussxiquxinxi` VALUES ('3', '2020-12-25 16:25:03', '3', '3', '评论内容3', '回复内容3');
INSERT INTO `discussxiquxinxi` VALUES ('4', '2020-12-25 16:25:03', '4', '4', '评论内容4', '回复内容4');
INSERT INTO `discussxiquxinxi` VALUES ('5', '2020-12-25 16:25:03', '5', '5', '评论内容5', '回复内容5');
INSERT INTO `discussxiquxinxi` VALUES ('6', '2020-12-25 16:25:03', '6', '6', '评论内容6', '回复内容6');
INSERT INTO `discussxiquxinxi` VALUES ('1608889735531', '2020-12-25 17:48:55', '1608889460229', '1608889636452', '1212', null);

-- ----------------------------
-- Table structure for `forum`
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889796969 DEFAULT CHARSET=utf8 COMMENT='论坛表';

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('2', '2020-12-25 16:25:03', '帖子标题2', '帖子内容2', '2', '2', '用户名2', '开放');
INSERT INTO `forum` VALUES ('3', '2020-12-25 16:25:03', '帖子标题3', '帖子内容3', '3', '3', '用户名3', '开放');
INSERT INTO `forum` VALUES ('4', '2020-12-25 16:25:03', '帖子标题4', '帖子内容4', '4', '4', '用户名4', '开放');
INSERT INTO `forum` VALUES ('5', '2020-12-25 16:25:03', '帖子标题5', '帖子内容5', '5', '5', '用户名5', '开放');
INSERT INTO `forum` VALUES ('6', '2020-12-25 16:25:03', '帖子标题6', '帖子内容6', '6', '6', '用户名6', '开放');
INSERT INTO `forum` VALUES ('1608887975480', '2020-12-25 17:19:35', '11111', '<p>212112</p>', '0', '1608886782610', '001', '开放');
INSERT INTO `forum` VALUES ('1608889790068', '2020-12-25 17:49:49', '22222', '<p>122122121</p>', '0', '1608889636452', '1', '开放');
INSERT INTO `forum` VALUES ('1608889796968', '2020-12-25 17:49:56', null, '21212222', '1608887975480', '1608889636452', '1', null);

-- ----------------------------
-- Table structure for `fufeiyinle`
-- ----------------------------
DROP TABLE IF EXISTS `fufeiyinle`;
CREATE TABLE `fufeiyinle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `geming` varchar(200) NOT NULL COMMENT '歌名',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhuanji` varchar(200) DEFAULT NULL COMMENT '专辑',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='付费音乐';

-- ----------------------------
-- Records of fufeiyinle
-- ----------------------------
INSERT INTO `fufeiyinle` VALUES ('1', '2020-12-25 16:25:03', '齐天大圣', '华晨宇', '流行音乐', 'http://localhost:8080/ssm4kh3q/upload/fufeiyinle_fengmian1.jpg', '悟空', '25', '2020-11-29');
INSERT INTO `fufeiyinle` VALUES ('2', '2020-12-25 16:25:03', '歌名2', '歌手2', '类型2', 'http://localhost:8080/ssm4kh3q/upload/fufeiyinle_fengmian2.jpg', '专辑2', '2', '2020-12-25');
INSERT INTO `fufeiyinle` VALUES ('3', '2020-12-25 16:25:03', '歌名3', '歌手3', '类型3', 'http://localhost:8080/ssm4kh3q/upload/fufeiyinle_fengmian3.jpg', '专辑3', '3', '2020-12-25');
INSERT INTO `fufeiyinle` VALUES ('4', '2020-12-25 16:25:03', '歌名4', '歌手4', '类型4', 'http://localhost:8080/ssm4kh3q/upload/fufeiyinle_fengmian4.jpg', '专辑4', '4', '2020-12-25');
INSERT INTO `fufeiyinle` VALUES ('5', '2020-12-25 16:25:03', '歌名5', '歌手5', '类型5', 'http://localhost:8080/ssm4kh3q/upload/fufeiyinle_fengmian5.jpg', '专辑5', '5', '2020-12-25');
INSERT INTO `fufeiyinle` VALUES ('6', '2020-12-25 16:25:03', '歌名6', '歌手6', '类型6', 'http://localhost:8080/ssm4kh3q/upload/fufeiyinle_fengmian6.jpg', '专辑6', '6', '2020-12-25');

-- ----------------------------
-- Table structure for `gequxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `gequxinxi`;
CREATE TABLE `gequxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `geming` varchar(200) NOT NULL COMMENT '歌名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `leqileixing` varchar(200) DEFAULT NULL COMMENT '乐器类型',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `zhuanji` varchar(200) DEFAULT NULL COMMENT '专辑',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `geci` longtext COMMENT '歌词',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `shiting` varchar(200) DEFAULT NULL COMMENT '试听',
  `shijian` varchar(200) DEFAULT NULL COMMENT '时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889389266 DEFAULT CHARSET=utf8 COMMENT='歌曲信息';

-- ----------------------------
-- Records of gequxinxi
-- ----------------------------
INSERT INTO `gequxinxi` VALUES ('1', '2020-12-25 16:25:03', '七里香', '流行音乐', '钢琴', '周杰伦', '七里香', 'http://localhost:8080/ssm4kh3q/upload/gequxinxi_fengmian1.jpg', '1221211212', '2020-11-29', 'http://localhost:8080/ssm4kh3q/upload/1608887556202.mp4', '4:35', '2020-12-25 17:48:21', '5');
INSERT INTO `gequxinxi` VALUES ('2', '2020-12-25 16:25:03', '歌名2', '类型2', '乐器类型2', '歌手2', '专辑2', 'http://localhost:8080/ssm4kh3q/upload/gequxinxi_fengmian2.jpg', '歌词2', '2020-12-25', '', '时间2', '2020-12-25 16:25:03', '2');
INSERT INTO `gequxinxi` VALUES ('3', '2020-12-25 16:25:03', '歌名3', '类型3', '乐器类型3', '歌手3', '专辑3', 'http://localhost:8080/ssm4kh3q/upload/gequxinxi_fengmian3.jpg', '歌词3', '2020-12-25', '', '时间3', '2020-12-25 16:25:03', '3');
INSERT INTO `gequxinxi` VALUES ('4', '2020-12-25 16:25:03', '歌名4', '类型4', '乐器类型4', '歌手4', '专辑4', 'http://localhost:8080/ssm4kh3q/upload/gequxinxi_fengmian4.jpg', '歌词4', '2020-12-25', '', '时间4', '2020-12-25 16:25:03', '4');
INSERT INTO `gequxinxi` VALUES ('6', '2020-12-25 16:25:03', '歌名6', '类型6', '乐器类型6', '歌手6', '专辑6', 'http://localhost:8080/ssm4kh3q/upload/gequxinxi_fengmian6.jpg', '歌词6', '2020-12-25', '', '时间6', '2020-12-25 17:19:04', '7');
INSERT INTO `gequxinxi` VALUES ('1608889389265', '2020-12-25 17:43:08', '美人鱼', '钢琴曲', '钢琴', '林俊杰', '美人鱼', 'http://localhost:8080/ssm4kh3q/upload/1608889338217.jpg', '这里可以复制一些歌词', '2020-11-29', 'http://localhost:8080/ssm4kh3q/upload/1608889374386.mp3', '4:35', '2020-12-25 17:53:13', '4');

-- ----------------------------
-- Table structure for `leixingxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `leixingxinxi`;
CREATE TABLE `leixingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889298373 DEFAULT CHARSET=utf8 COMMENT='类型信息';

-- ----------------------------
-- Records of leixingxinxi
-- ----------------------------
INSERT INTO `leixingxinxi` VALUES ('1608887437231', '2020-12-25 17:10:36', '流行音乐');
INSERT INTO `leixingxinxi` VALUES ('1608887443967', '2020-12-25 17:10:43', '古筝');
INSERT INTO `leixingxinxi` VALUES ('1608887473859', '2020-12-25 17:11:13', '古典音乐');
INSERT INTO `leixingxinxi` VALUES ('1608887480607', '2020-12-25 17:11:20', '钢琴曲');
INSERT INTO `leixingxinxi` VALUES ('1608889298372', '2020-12-25 17:41:37', 'DJ');

-- ----------------------------
-- Table structure for `leqileixing`
-- ----------------------------
DROP TABLE IF EXISTS `leqileixing`;
CREATE TABLE `leqileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leqileixing` varchar(200) NOT NULL COMMENT '乐器类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889322428 DEFAULT CHARSET=utf8 COMMENT='乐器类型';

-- ----------------------------
-- Records of leqileixing
-- ----------------------------
INSERT INTO `leqileixing` VALUES ('1608887488264', '2020-12-25 17:11:28', '钢琴');
INSERT INTO `leqileixing` VALUES ('1608887493510', '2020-12-25 17:11:32', '古筝');
INSERT INTO `leqileixing` VALUES ('1608887513467', '2020-12-25 17:11:52', '风琴');
INSERT INTO `leqileixing` VALUES ('1608889322427', '2020-12-25 17:42:01', '鼓');

-- ----------------------------
-- Table structure for `shipinzhuanqu`
-- ----------------------------
DROP TABLE IF EXISTS `shipinzhuanqu`;
CREATE TABLE `shipinzhuanqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) NOT NULL COMMENT '视频名称',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `zuoci` varchar(200) DEFAULT NULL COMMENT '作词',
  `zuoqu` varchar(200) DEFAULT NULL COMMENT '作曲',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `jianshu` longtext COMMENT '简述',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='视频专区';

-- ----------------------------
-- Records of shipinzhuanqu
-- ----------------------------
INSERT INTO `shipinzhuanqu` VALUES ('1', '2020-12-25 16:25:03', '视频名称1', '歌手1', '作词1', '作曲1', 'http://localhost:8080/ssm4kh3q/upload/shipinzhuanqu_fengmian1.jpg', 'http://localhost:8080/ssm4kh3q/upload/1608886895864.mp4', '12112', '2020-11-29');
INSERT INTO `shipinzhuanqu` VALUES ('2', '2020-12-25 16:25:03', '说好不变', 'JJ', '方文山', '周杰伦', 'http://localhost:8080/ssm4kh3q/upload/shipinzhuanqu_fengmian2.jpg', 'http://localhost:8080/ssm4kh3q/upload/1608889507536.mp4', '非常好的mv', '2020-11-29');
INSERT INTO `shipinzhuanqu` VALUES ('3', '2020-12-25 16:25:03', '视频名称3', '歌手3', '作词3', '作曲3', 'http://localhost:8080/ssm4kh3q/upload/shipinzhuanqu_fengmian3.jpg', '', '简述3', '2020-12-25');
INSERT INTO `shipinzhuanqu` VALUES ('4', '2020-12-25 16:25:03', '视频名称4', '歌手4', '作词4', '作曲4', 'http://localhost:8080/ssm4kh3q/upload/shipinzhuanqu_fengmian4.jpg', '', '简述4', '2020-12-25');
INSERT INTO `shipinzhuanqu` VALUES ('5', '2020-12-25 16:25:03', '视频名称5', '歌手5', '作词5', '作曲5', 'http://localhost:8080/ssm4kh3q/upload/shipinzhuanqu_fengmian5.jpg', '', '简述5', '2020-12-25');
INSERT INTO `shipinzhuanqu` VALUES ('6', '2020-12-25 16:25:03', '视频名称6', '歌手6', '作词6', '作曲6', 'http://localhost:8080/ssm4kh3q/upload/shipinzhuanqu_fengmian6.jpg', '', '简述6', '2020-12-25');

-- ----------------------------
-- Table structure for `storeup`
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889746283 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1608887940238', '2020-12-25 17:18:59', '1608886782610', '1', 'shipinzhuanqu', '视频名称1', 'http://localhost:8080/ssm4kh3q/upload/shipinzhuanqu_fengmian1.jpg');
INSERT INTO `storeup` VALUES ('1608889685849', '2020-12-25 17:48:04', '1608889636452', '1', 'gequxinxi', '七里香', 'http://localhost:8080/ssm4kh3q/upload/gequxinxi_fengmian1.jpg');
INSERT INTO `storeup` VALUES ('1608889729500', '2020-12-25 17:48:49', '1608889636452', '1608889460229', 'xiquxinxi', '新贵妃醉酒', 'http://localhost:8080/ssm4kh3q/upload/1608889423640.jpg');
INSERT INTO `storeup` VALUES ('1608889746282', '2020-12-25 17:49:05', '1608889636452', '1', 'shipinzhuanqu', '视频名称1', 'http://localhost:8080/ssm4kh3q/upload/shipinzhuanqu_fengmian1.jpg');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1608886782610', '001', 'yonghu', '用户', 'w3a622639a6lrgn4iq5vkgdoosgutxhj', '2020-12-25 16:59:47', '2020-12-25 18:51:47');
INSERT INTO `token` VALUES ('2', '1', 'abo', 'users', '管理员', 'kz5ryo643vavm5lytts93ekouw909s7a', '2020-12-25 17:00:20', '2020-12-31 11:21:37');
INSERT INTO `token` VALUES ('3', '1608889636452', '1', 'yonghu', '用户', '9kc9mq4uc4zkngpbubx79tmzb2ipy0ln', '2020-12-25 17:47:21', '2020-12-25 18:52:44');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2020-12-25 16:25:03');

-- ----------------------------
-- Table structure for `xiquxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `xiquxinxi`;
CREATE TABLE `xiquxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `geming` varchar(200) NOT NULL COMMENT '歌名',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `leqileixing` varchar(200) NOT NULL COMMENT '乐器类型',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `geci` longtext COMMENT '歌词',
  `shijian` varchar(200) DEFAULT NULL COMMENT '时间',
  `shiting` varchar(200) DEFAULT NULL COMMENT '试听',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889460230 DEFAULT CHARSET=utf8 COMMENT='戏曲信息';

-- ----------------------------
-- Records of xiquxinxi
-- ----------------------------
INSERT INTO `xiquxinxi` VALUES ('1', '2020-12-25 16:25:03', '歌名1', '类型1', '乐器类型1', '歌手1', 'http://localhost:8080/ssm4kh3q/upload/1608887584613.jpg', '歌词1', '时间1', '', '2020-12-25');
INSERT INTO `xiquxinxi` VALUES ('2', '2020-12-25 16:25:03', '歌名2', '类型2', '乐器类型2', '歌手2', 'http://localhost:8080/ssm4kh3q/upload/1608887595048.jpg', '歌词2', '时间2', '', '2020-12-25');
INSERT INTO `xiquxinxi` VALUES ('3', '2020-12-25 16:25:03', '歌名3', '类型3', '乐器类型3', '歌手3', 'http://localhost:8080/ssm4kh3q/upload/1608887615668.jpg', '歌词3', '时间3', '', '2020-12-25');
INSERT INTO `xiquxinxi` VALUES ('4', '2020-12-25 16:25:03', '歌名4', '类型4', '乐器类型4', '歌手4', 'http://localhost:8080/ssm4kh3q/upload/1608887629322.jpg', '歌词4', '时间4', '', '2020-12-25');
INSERT INTO `xiquxinxi` VALUES ('5', '2020-12-25 16:25:03', '歌名5', '类型5', '古筝', '歌手5', 'http://localhost:8080/ssm4kh3q/upload/1608887637658.jpg', '歌词5', '时间5', '', '2020-12-25');
INSERT INTO `xiquxinxi` VALUES ('1608889460229', '2020-12-25 17:44:19', '新贵妃醉酒', '古典音乐', '风琴', '李玉刚', 'http://localhost:8080/ssm4kh3q/upload/1608889423640.jpg', '这里可以写一些歌词', '4:05', 'http://localhost:8080/ssm4kh3q/upload/1608889449906.mp3', '2020-11-29');

-- ----------------------------
-- Table structure for `yinlewenjian`
-- ----------------------------
DROP TABLE IF EXISTS `yinlewenjian`;
CREATE TABLE `yinlewenjian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `geming` varchar(200) DEFAULT NULL COMMENT '歌名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yinlewenjian` varchar(200) DEFAULT NULL COMMENT '音乐文件',
  `fasongriqi` date DEFAULT NULL COMMENT '发送日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889859300 DEFAULT CHARSET=utf8 COMMENT='音乐文件';

-- ----------------------------
-- Records of yinlewenjian
-- ----------------------------
INSERT INTO `yinlewenjian` VALUES ('1', '2020-12-25 16:25:03', '订单编号1', '歌名1', '类型1', '用户名1', '姓名1', '', '2020-12-25');
INSERT INTO `yinlewenjian` VALUES ('2', '2020-12-25 16:25:03', '订单编号2', '歌名2', '类型2', '用户名2', '姓名2', '', '2020-12-25');
INSERT INTO `yinlewenjian` VALUES ('3', '2020-12-25 16:25:03', '订单编号3', '歌名3', '类型3', '用户名3', '姓名3', '', '2020-12-25');
INSERT INTO `yinlewenjian` VALUES ('4', '2020-12-25 16:25:03', '订单编号4', '歌名4', '类型4', '用户名4', '姓名4', '', '2020-12-25');
INSERT INTO `yinlewenjian` VALUES ('5', '2020-12-25 16:25:03', '订单编号5', '歌名5', '类型5', '用户名5', '姓名5', '', '2020-12-25');
INSERT INTO `yinlewenjian` VALUES ('6', '2020-12-25 16:25:03', '订单编号6', '歌名6', '类型6', '用户名6', '姓名6', '', '2020-12-25');
INSERT INTO `yinlewenjian` VALUES ('1608888029637', '2020-12-25 17:20:29', '202012251719769144565', '歌名1', '类型1', '001', '李明', 'http://localhost:8080/ssm4kh3q/upload/1608888027458.doc', '2020-11-29');
INSERT INTO `yinlewenjian` VALUES ('1608889859299', '2020-12-25 17:50:58', '2020122517493135617944', '齐天大圣', '流行音乐', '1', '刘倩', 'http://localhost:8080/ssm4kh3q/upload/1608889856150.doc', '2020-11-29');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1608889636453 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '2020-12-25 16:25:03', '用户1', '123456', '姓名1', '男', 'http://localhost:8080/ssm4kh3q/upload/yonghu_touxiang1.jpg', '440300199101010001', '13823888881');
INSERT INTO `yonghu` VALUES ('2', '2020-12-25 16:25:03', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/ssm4kh3q/upload/yonghu_touxiang2.jpg', '440300199202020002', '13823888882');
INSERT INTO `yonghu` VALUES ('3', '2020-12-25 16:25:03', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/ssm4kh3q/upload/yonghu_touxiang3.jpg', '440300199303030003', '13823888883');
INSERT INTO `yonghu` VALUES ('4', '2020-12-25 16:25:03', '用户4', '123456', '姓名4', '男', 'http://localhost:8080/ssm4kh3q/upload/yonghu_touxiang4.jpg', '440300199404040004', '13823888884');
INSERT INTO `yonghu` VALUES ('5', '2020-12-25 16:25:03', '用户5', '123456', '姓名5', '男', 'http://localhost:8080/ssm4kh3q/upload/yonghu_touxiang5.jpg', '440300199505050005', '13823888885');
INSERT INTO `yonghu` VALUES ('6', '2020-12-25 16:25:03', '用户6', '123456', '姓名6', '男', 'http://localhost:8080/ssm4kh3q/upload/yonghu_touxiang6.jpg', '440300199606060006', '13823888886');
INSERT INTO `yonghu` VALUES ('1608886782610', '2020-12-25 16:59:42', '001', '001', '李明', '', '', '', '');
INSERT INTO `yonghu` VALUES ('1608889636452', '2020-12-25 17:47:16', '1', '1', '刘倩', '女', 'http://localhost:8080/ssm4kh3q/upload/1608889656839.png', '441214121412141214', '15214121412');
