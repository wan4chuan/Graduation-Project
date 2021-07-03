/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.7
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : jspsqwl

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 03/07/2021 16:46:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `password` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `creattime` date DEFAULT NULL,
  `flag` int(4) DEFAULT NULL,
  `isuse` int(4) DEFAULT NULL,
  `logintimes` int(4) DEFAULT NULL,
  `quanxian` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-07', 1, 1, 23, '1');
INSERT INTO `admin` VALUES (2, 'admin2', 'c84258e9c39059a89ab77d846ddab909', '2021-05-07', 2, 1, 0, '111');

-- ----------------------------
-- Table structure for adminlog
-- ----------------------------
DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE `adminlog`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `password` varchar(300) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `logintime` date DEFAULT NULL,
  `loginip` varchar(30) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `useros` varchar(34) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `ok` varchar(34) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adminlog
-- ----------------------------
INSERT INTO `adminlog` VALUES (1, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-09', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (2, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-09', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (3, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-09', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (4, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-09', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (5, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-09', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (6, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-09', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (7, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-09', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (8, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-09', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (9, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-10', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (10, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-11', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (11, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-12', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (74, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-17', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (75, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-17', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (76, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-17', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (77, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-17', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (78, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-17', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (79, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-17', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (80, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-17', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (81, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-29', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (82, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-05-29', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (83, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-06-07', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (84, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-06-07', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (85, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', '2021-06-07', 'Mozilla/5.0 (Windows NT 10.0', '0:0:0:0:0:0:0:1', 'true');

-- ----------------------------
-- Table structure for affiche
-- ----------------------------
DROP TABLE IF EXISTS `affiche`;
CREATE TABLE `affiche`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `content` varchar(300) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `addtime` varchar(40) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `adder` varchar(30) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `ifhide` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of affiche
-- ----------------------------
INSERT INTO `affiche` VALUES (1, '欢迎光临社区网络服务系统！', '<br /><br />感谢您的支持！本社区刚刚成立，有什么问题请联系管理员，谢谢！！<br />', '2021-05-08 10:55:25', 'admin', 1);
INSERT INTO `affiche` VALUES (2, '重要提醒！！', '现在是新冠肺炎疫情期间，出入小区需要进行体温检查，并要求带好口罩，如有不便，敬请谅解，让我们同心协力共度难关，感谢配合。<br />', '2021-05-08 10:58:25', 'admin', 1);

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `url` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `intro` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci,
  `member` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `addtime` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `flag` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES (1, 'jdbc驱动', '/upload_file/video/1208521744044SQLServer2000-JDBC驱动程序.rar', '<p align=\"center\"><img height=\"588\" width=\"784\" alt=\"\" src=\"/Sqwl/UserFiles/Image/ju.jpg\" /></p>', 'xiaoqiang', '2021-05-09 20:29:03', '已审核');
INSERT INTO `files` VALUES (2, 'afdafsafsf', '/upload_file/video/12085234596311.rar', '<p>fdsafdfsaf</p>', 'xiaoqiang', '2021-05-10 20:57:39', '已审核');

-- ----------------------------
-- Table structure for guestbook
-- ----------------------------
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `pic` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `qq` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `weburl` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `blogurl` varchar(40) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `expressions` varchar(40) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `content` varchar(40) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `addtime` varchar(40) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `ip` varchar(40) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `replay` int(4) DEFAULT NULL,
  `ifhide` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guestbook
-- ----------------------------
INSERT INTO `guestbook` VALUES (1, '游客', 'images/nobody.gif', '', '', '', '', 'images/face/1.gif', '这个社区有没有漂亮妹妹啊', '2021-05-08 18:41:42', '127.0.0.1', 1, 1);
INSERT INTO `guestbook` VALUES (2, '游客', 'images/nobody.gif', '', '', '', '', 'images/face/1.gif', '原来毕业设计也可以做成这样啊', '2021-05-08 18:42:00', '127.0.0.1', 1, 1);
INSERT INTO `guestbook` VALUES (3, '游客', 'images/nobody.gif', '', '', '', '', 'images/face/1.gif', '猴哥到此一游', '2021-05-08 18:44:48', '127.0.0.1', 1, 1);
INSERT INTO `guestbook` VALUES (4, '游客', 'images/nobody.gif', '', '', '', '', 'images/face/1.gif', '今天天气真好', '2021-05-08 18:45:06', '127.0.0.1', 1, 1);
INSERT INTO `guestbook` VALUES (5, '游客', 'images/nobody.gif', '', '', '', '', 'images/face/1.gif', '今天天气真好', '2021-05-08 18:45:56', '127.0.0.1', 1, 1);
INSERT INTO `guestbook` VALUES (6, '游客', 'images/nobody.gif', '', '', '', '', 'images/face/1.gif', '答辩好紧张啊', '2021-06-07 12:40:26', '0:0:0:0:0:0:0:1', 0, 1);
INSERT INTO `guestbook` VALUES (7, '游客', 'images/nobody.gif', '', '', '', '', 'images/face/1.gif', '紧张', '2021-06-07 12:43:05', '0:0:0:0:0:0:0:1', 1, 1);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `type` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `regtime` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `ifuse` int(4) DEFAULT NULL,
  `logintimes` int(4) DEFAULT NULL,
  `lasttime` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `lastip` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (1, 'xiaoqiang', '96e79218965eb72c92a549dd5a330112', 'person', '2021-05-11 19:06:55', 1, 12, '2021-05-18 20:57:21', '127.0.0.1');
INSERT INTO `member` VALUES (2, 'wan43', 'e3873df7ee6ed5b147ed8f5b13de2043', 'person', '2021-05-12 16:20:08', 1, 5, '2021-06-07 12:48:13', '0:0:0:0:0:0:0:1');
INSERT INTO `member` VALUES (3, 'xiaoming', '124bd1296bec0d9d93c7b52a71ad8d5b', 'person', '2021-05-12 17:01:32', 1, 1, '2021-05-18 17:01:45', '127.0.0.1');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `pic` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `content` mediumtext CHARACTER SET gb2312 COLLATE gb2312_chinese_ci,
  `addtime` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `adder` varchar(40) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `ifhide` int(4) DEFAULT NULL,
  `visit` int(4) DEFAULT NULL,
  `up` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '防疫不能“好了伤疤忘了疼”', '无', '<p>　　原标题：4天29例感染者，防疫不能“好了伤疤忘了疼”</p>\r\n<p>　　新华社北京5月17日电(记者徐扬、张逸飞)5月17日,新华每日电讯发表题为《4天29例感染者，防疫不能“好了伤疤忘了疼”》的评论。</p>\r\n<p cms-style=\"font-L\">　　16日深夜，辽宁省新冠肺炎疫情防控总指挥部办公室通报，营口市鲅鱼圈区近日发生聚集性新冠肺炎疫情，经有关部门和卫健执法机构调查，查明存在首诊责任不落实、监管履职不力等问题，辽宁省卫生健康委党组副书记、副主任宋良伟等多人被问责。</p>\r\n<p cms-style=\"font-L\">　　严肃问责，有理有据。据此前官方发布的信息，5月13日在安徽省合肥市确诊的病人，5月3日曾出现发热症状，并在辽宁营口市鲅鱼圈区某诊所就医，但诊所仍没有按照规定上报情况。最终，“针尖大的窟窿”变成了防疫漏洞，目前已导致多人确诊。</p>\r\n<p cms-style=\"font-L\">　　有网民说，这是典型的“好了伤疤忘了疼”。最近的情形，与5个多月前沈阳的情况何其相似。去年12月，沈阳疫情中确诊的首个病例，也曾多次到医疗机构就诊，但有的医疗机构并未落实首诊责任，错过了及早发现疫情苗头、切断传播链条的机会。</p>\r\n<div class=\"img_wrapper\"><img id=\"0\" style=\"max-width: 640px;\" src=\"//n.sinaimg.cn/sinakd2021517s/414/w550h2264/20210517/a232-kqhwhri5633910.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n<p cms-style=\"font-L\">　　过去一年多的抗疫经验充分证明，落实“早发现、早报告、早隔离、早治疗”，首诊是关键一环。作为常态化疫情防控机制的哨点，村卫生室、个体诊所、药店等首诊责任点是疫情出现时启动各级安防措施的第一道开关。一旦处在链条前端的哨点有所松懈或麻痹大意，错过阻击疫情扩散的第一时机，处在链条下游的溯源、流调、医疗救治等环节的工作量都将以几何数量增加。</p>\r\n<p cms-style=\"font-L\">　　问责不是终点，痛定思痛、亡羊补牢才是关键。此次散发疫情4天已有29人感染，如果辽宁营口、安徽六安的相关诊所严格落实“四早”，相关监管部门强化监督检查，疫情蔓延的可能性会大大减少。疫情尚未彻底结束，希望各地和有关部门深刻吸取教训，认真排查，堵住疫情防控的漏洞，再也不要出现“好了伤疤忘了疼”的事情了。</p>\r\n								\r\n				<div class=\"wap_special\" data-sudaclick=\"content_relativetopics_p\">\r\n        <div class=\"tlt\">点击进入专题：</div>\r\n	<a href=\"https://news.sina.cn/zt_d/feiyan1231\" target=\"_blank\">新型冠状病毒肺炎疫情</a>	<a href=\"https://news.sina.cn/zt_d/ahyq\" target=\"_blank\">安徽本土疫情再起</a></div>\r\n  \r\n				\r\n				\r\n<p class=\"show_author\">责任编辑：刘德宾 </p>', '2021-05-17 17:21:21', 'admin', 1, 1, 0);
INSERT INTO `news` VALUES (2, '安徽省六安、合肥中风险地区增加到7个', '无', '<p>　　原标题：安徽省六安、合肥中风险地区增加到7个，全国中高风险地区名单汇总来了！</p>\r\n<p cms-style=\"font-L\">　　截至17日中午13时，安徽六安市和合肥市中风险地区增加到7个，分别是金安区浙东商贸城、裕安区百川名庭小区、裕安区恒大御景湾小区3期、裕安区固镇镇财富大街大艮头小区、金安区梧桐嘉苑小区、金安区清水河畔小区1期，肥西县上派镇卫星社区金云国际商住楼。</p>\r\n<p cms-style=\"font-L\">　　六安市已管控网格数（小区、单位、楼栋）34个、管控网格人数26418人，核酸检测结果均为阴性。</p>\r\n<p cms-style=\"font-L\">　　合肥市已管控网格数1个、管控网格人数125人，核酸检测结果均为阴性。</p>\r\n<div class=\"img_wrapper\"><img id=\"0\" src=\"//n.sinaimg.cn/news/crawl/723/w550h173/20210517/3663-kqhwhri5802458.png\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n\r\n<p cms-style=\"font-L\">　　两市严格按照“城市社区精准布控到小区、小区精准布控到楼栋、楼栋精准布控到家庭”的要求，以最精准、最有效的网格单元织密织牢管控体系。此外，还积极妥善处理好封闭范围内居民的生产生活，通过楼长代买、商家无接触配送方式，确保居民生活不受大的影响；通过远程办公、空中课堂等方式，减少疫情防控对居民工作、生活的影响；协调好职工与各用人单位间的关系，做好封闭范围内群众健康管理和等政策宣传工作。</p>\r\n<div class=\"img_wrapper\"><img id=\"1\" src=\"//n.sinaimg.cn/news/crawl/581/w550h1631/20210517/63c2-kqhwhri5802564.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n<p cms-style=\"font-L\">　　（原标题：安徽省六安市和合肥市中风险地区增加到7个）</p>\r\n<p cms-style=\"font-L\">　　来源：@安徽发布</p>\r\n<p cms-style=\"font-L\">　　　</p>\r\n								\r\n				<div class=\"wap_special\" data-sudaclick=\"content_relativetopics_p\">\r\n        <div class=\"tlt\">点击进入专题：</div>\r\n	<a href=\"https://news.sina.cn/zt_d/feiyan1231\" target=\"_blank\">新型冠状病毒肺炎疫情</a>	<a href=\"https://news.sina.cn/zt_d/ahyq\" target=\"_blank\">安徽本土疫情再起</a></div><p class=\"show_author\">责任编辑：刘德宾 </p>', '2021-05-17 17:55:00', 'admin', 1, 6, 0);
INSERT INTO `news` VALUES (3, '印度等国新冠难民涌向美边境 ', '无', '<p>　　原标题：印度等国新冠难民涌向美边境 美媒：政府还未准备好应对</p>\r\n<div class=\"img_wrapper\"><img src=\"//n.sinaimg.cn/spider2021517/107/w1024h683/20210517/1bf3-kqhwhri5936205.jpg\" alt=\"4月21日，美国亚利桑那州，在这里每天有超过1000名来自于印度等国家的非法移民涌入。\" data-link=\"\"><span class=\"img_descr\">4月21日，美国亚利桑那州，在这里每天有超过1000名来自于印度等国家的非法移民涌入。</span></div>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\">海外网5月17日电</font> 美媒报道称，美国政府正继续努力应对西南边境沿线数量众多的移民。但是在过去的几个月中，该国边境移民中出现新情况，即来自印度等地逃离新冠疫情大流行的难民，而美国政府还没有准备好应对大范围的此类移民浪潮。</p>\r\n<p cms-style=\"font-L\">　　据《纽约时报》16日报道，这些移民潮中来自遥远国家的人越来越多，在这些国家中，新冠病毒已经造成了不可想象的疾病和死亡，经济和生计也大大减少。如果说以前在这样的国家中生存是一个挑战，那么现在几乎变得不可能了。根据最近发布的官方数据，4月在边境遇到的所有家庭中有30％来自中美洲国家以外的国家，而上一轮在2019年4月仅为7.5％。</p>\r\n<p cms-style=\"font-L\">　　报道指出，这些移民从印度和亚洲其他地方出发，踏上环球之旅。一些人报告说他们在家乡乘公共汽车去一个大城市，如印度的孟买，在那里他们登上飞往迪拜的飞机，然后通过莫斯科、巴黎和马德里进行中转，最后飞到墨西哥城。在那里，他们开始了为期两天的公共汽车之旅，最后到达墨西哥-美国边界。</p>\r\n<p cms-style=\"font-L\">　　报道称，许多移民因其本国的经济困难而被迫到美国边境，现在因新冠肺炎大流行扩大了这一移民群体。对许多到达边境的移民以及边境巡逻官员、庇护所经营者和移民学者进行的采访表明，这些新冠难民已造成移民管理工作的崩溃。对此，美媒担忧，大多数移民被释放后会等待长达数年的移民听证会；如果他们未能赢得庇护，无论如何，许多人可能最终会留下来，这将使数百万非法移民滞留美国。<font cms-style=\"font-L\">（海外网 侯兴川）</font></p>\r\n<p cms-style=\"font-L\">　　&nbsp;</p>\r\n								\r\n				<div class=\"wap_special\" data-sudaclick=\"content_relativetopics_p\">\r\n        <div class=\"tlt\">点击进入专题：</div>\r\n	<a href=\"https://news.sina.cn/zt_d/feiyan0226\" target=\"_blank\">全球多国爆发新冠肺炎疫情</a></div>\r\n  \r\n				\r\n				\r\n<p class=\"show_author\">责任编辑：刘德宾 </p>', '2021-05-17 18:17:17', 'admin', 1, 1, 0);
INSERT INTO `news` VALUES (4, '又一里程碑！习近平热情点赞', '无', '<p>　　原标题：学习进行时丨又一里程碑！总书记热情点赞</p>\r\n<p cms-style=\"font-L\">　　【学习进行时】<font cms-style=\"font-L\">5月15日，我国首次火星探测任务着陆火星取得成功。习近平总书记致贺电，向首次火星探测任务指挥部并参加任务的全体同志致以热烈的祝贺和诚挚的问候。新华社《学习进行时》原创品牌栏目“讲习所”今天推出文章，为您解读。</font></p>\r\n<p cms-style=\"font-L\">　　2021年5月15日，火星上首次留下中国人的印迹。</p>\r\n<p cms-style=\"font-L\">　　7时18分，天问一号探测器成功着陆于火星乌托邦平原南部预选着陆区，我国首次火星探测任务着陆火星取得成功。习近平总书记第一时间发来贺电，为首次火星探测任务指挥部并参加任务的全体同志点赞。</p>\r\n<p cms-style=\"font-L\">　　贺电全文300余字，正所谓“纸短情长”，字里行间满含着豪情。</p>\r\n<div class=\"img_wrapper\"><img src=\"//n.sinaimg.cn/news/transform/640/w550h890/20210517/0e33-kqhwhri5922848.jpg\" alt=\"\" data-link=\"\"><span class=\"img_descr\"></span></div>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold color240\">一是为着陆火星的壮举点赞</font></font></p>\r\n<p cms-style=\"font-L\">　　天问一号探测器成功着陆火星，是我国首次实现地外行星着陆，使我国成为第二个成功着陆火星的国家。这一刻，我国星际探测实现了从地月系到行星际的跨越，航天事业发展取得了又一具有里程碑意义的进展。</p>\r\n<p cms-style=\"font-L\">　　不到半年前，2020年12月，探月工程嫦娥五号任务取得圆满成功，首次实现了我国地外天体采样返回。习近平同样第一时间发来贺电，表示同志们的卓越功勋，祖国和人民将永远铭记。</p>\r\n<p cms-style=\"font-L\">　　航天梦连着中国梦，空间技术水平是一个国家科技实力的重要标志，也是一个国家经济实力、综合国力、国防实力的重要标志。</p>\r\n<p cms-style=\"font-L\">　　党的十八大以来，从载人航天到卫星通信、火箭技术，航天事业连战连捷，彰显了不同凡响的中国风采。习近平多次接见航天工作者，或以贺电、贺信等各种方式祝贺、勉励他们，对航天事业的高度重视，溢于言表。</p>\r\n<p cms-style=\"font-L\">　　习近平强调，载人航天事业的成就，充分展示了伟大的中国道路、中国精神、中国力量，坚定了全国各族人民实现中华民族伟大复兴的中国梦的决心和信心。</p>\r\n<p cms-style=\"font-L\">　　最近一段时间，习近平多次讲过一句话：“不断增强做中国人的志气、骨气、底气”，这句话我们今天感受更深。</p>\r\n<div class=\"img_wrapper\"><img src=\"//n.sinaimg.cn/news/transform/116/w550h366/20210517/5053-kqhwhri5923686.jpg\" alt=\"火星探测器着陆火星表面模拟图（5月15日摄）。新华社记者 金立旺 摄\" data-link=\"\"><span class=\"img_descr\">火星探测器着陆火星表面模拟图（5月15日摄）。新华社记者 金立旺 摄</span></div>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold color240\">二是为勇于挑战、追求卓越的精神点赞</font></font></p>\r\n<p cms-style=\"font-L\">　　天问一号探测器着陆火星，凝聚着我国航天人无数的汗水、泪水。</p>\r\n<p cms-style=\"font-L\">　　我国首次火星探测任务于2016年立项，计划通过一次任务实现火星环绕、着陆和巡视探测。没有勇于挑战、追求卓越的精气神是完成不了这样的雄心壮志的。</p>\r\n<p cms-style=\"font-L\">　　天问一号着陆火星后，任务总设计师张荣桥泪流满面。“祝融号”火星车传回遥测信号后，飞控中心内航天人激动高呼“火星，你好”！这些感动亿万网民的画面，背后的艰辛毋庸多言。</p>\r\n<p cms-style=\"font-L\">　　数十年来，我们党培养了一代代特别能吃苦、特别能战斗、特别能攻关、特别能奉献的航天人才队伍，铸就了“两弹一星”精神、载人航天精神、探月精神、新时代北斗精神等一系列航天精神。其中的一个共同点，就是“勇于挑战、追求卓越”。</p>\r\n<p cms-style=\"font-L\">　　习近平曾说过，人类在浩瀚的宇宙面前是渺小的，但人类的探索精神是伟大的。</p>\r\n<p cms-style=\"font-L\">　　广大航天工作者坚定的理想信念、高昂的爱国热情、强烈的责任担当、良好的精神风貌，不仅是我国航天领域不断向上攀登的保证，也是一切事业发展都需要的宝贵精神财富。</p>\r\n<div class=\"img_wrapper\"><img src=\"//n.sinaimg.cn/news/transform/109/w550h359/20210517/27d6-kqhwhri5924346.jpg\" alt=\"5月15日，航天科研人员在北京航天飞行控制中心指挥大厅庆祝我国首次火星探测任务着陆火星成功。新华社记者 金立旺 摄\" data-link=\"\"><span class=\"img_descr\">　　5月15日，航天科研人员在北京航天飞行控制中心指挥大厅庆祝我国首次火星探测任务着陆火星成功。新华社记者 金立旺 摄</span></div>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold color240\">三是为科技自立自强的品质点赞</font></font></p>\r\n<p cms-style=\"font-L\">　　习近平在贺电中勉励同志们坚持科技自立自强，精心推进行星探测等航天重大工程，加快建设航天强国。</p>\r\n<p cms-style=\"font-L\">　　中国航天自力更生、艰苦奋斗精神代代传承。从50多年前“东方红一号”卫星发射成功以来，中国人创造了一个又一个令全国各族人民自豪的非凡成就，彰显了中华民族自强不息的伟大精神。这次火星探测任务是我国科技自立自强的又一生动写照。</p>\r\n<p cms-style=\"font-L\">　　当前，我国正在构建新发展格局。新发展格局最本质的特征是实现高水平的自立自强。其中，科技自立自强成为决定我国生存和发展的基础能力。</p>\r\n<p cms-style=\"font-L\">　　正如习近平所言，星空浩瀚无比，探索永无止境，只有不断创新，中华民族才能更好走向未来。天问一号探测器成功着陆火星，极大鼓舞了中国人民的创新信念和信心，将为全社会创新创造提供强大动力。</p>\r\n								\r\n				  \r\n				\r\n				\r\n<p class=\"show_author\">责任编辑：刘德宾 </p>', '2021-05-17 18:21:56', 'admin', 1, 2, 0);
INSERT INTO `news` VALUES (5, '湖北丹江口：“这里的水可直接饮用”', '无', '<p>　　原标题：湖北丹江口：“这里的水可直接饮用”</p>\r\n<p cms-style=\"font-L color210\">　　<font cms-style=\"font-L\">5月13-14日，习近平总书记察看南水北调中线陶岔渠首枢纽工程运行情况，乘船考察丹江口水库，并在河南省南阳市主持召开了南水北调后续工程高质量发展座谈会。习近平说，南水北调工程是重大战略性基础性设施，功在当代，利在千秋。实践证明，党中央关于南水北调工程的决策完全是正确的。</font></p>\r\n<p cms-style=\"font-L color210\">　　<font cms-style=\"font-L\">湖北是南水北调中线工程的核心水源区，丹江口大坝是南水北调中线龙头工程。历时60多年论证、建成并已见效的南水北调工程，是人类有史以来最大规模的调水工程，是中国共产党为民族谋复兴、为人民谋幸福的一座世纪丰碑。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\"><font cms-style=\"font-L\">监测数据显示，丹江口库区水质一直保持在二类水以上，符合国家直接饮用水标准。</font><font cms-style=\"font-L\">2015年，丹江口水源地获评首批“中国好水”。</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">“这里的水可直接饮用。”丹江口大坝上游，中国环境监测总站胡家岭水质自动监测站内，值守的工程师柳根自豪地说。</font></p>\r\n<div class=\"img_wrapper\"><img id=\"1\" style=\"max-width: 640px;\" src=\"//n.sinaimg.cn/sinakd2021517s/223/w654h369/20210517/cccd-kqhwhri4855839.png\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">南水北调，成败在水质，持续靠生态。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">为保水质，十堰近5年来投入超过百亿元。</font></p>\r\n<p cms-style=\"font-L color210\">　　<font cms-style=\"font-L strong-Bold color210\">净里子</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">累计处置6万多吨危险废物，安全无事故；投入18亿元，对神定河、泗河、剑河等5条河流进行大规模整治。</font></p>\r\n<p cms-style=\"font-L color210\">　　<font cms-style=\"font-L strong-Bold color210\">穿绿衣</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">投资12亿元，对1516个村庄开展环境综合整治，“垃圾靠风刮，污水靠蒸发”的场景一去不返；</font></p>\r\n<p cms-style=\"font-L color210\">　　<font cms-style=\"font-L strong-Bold color210\">建体制</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">全面推行河长制，由十堰市委、市政府主要负责人任河长；</font></p>\r\n<p cms-style=\"font-L color210\">　　<font cms-style=\"font-L strong-Bold color210\">创模式</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">率先在全国推行环境污染第三方治理模式，北京排水集团、深港产学研集团等国内知名生态环保企业及专家200多人，融入十堰各个领域的污染治理日常工作中；在全球污水处理传统及创新的30余种工艺中，十堰采用了20多种。</font></p>\r\n<p cms-style=\"font-L color210\">　　<font cms-style=\"font-L strong-Bold color210\">严执法</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">在全省率先出台环境保护“一票否决”，已先后对2个单位实施“一票否决”，对15个县区及市直部门实施“一票否决”预警或约谈，对22个市直单位下达突出环境问题整改督办通知。</font></p>\r\n<div class=\"img_wrapper\"><img id=\"2\" style=\"max-width: 640px;\" src=\"//n.sinaimg.cn/sinakd2021517s/200/w640h360/20210517/8705-kqhwhri4855936.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">十堰市生态环境局相关负责人表示，全市67%的区域被划入水源涵养区生态保护红线区和生物多样性保护红线区，生态红线内面积达到15768平方公里，全省第一，“对我们来说，治污工作无禁区，水质改善无止境。”</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">来源：湖北日报</font></p>\r\n<!--article_adlist[<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">来源：湖北日报</font><font cms-style=\"font-L\"></font></p>]article_adlist-->\r\n<p>　　&nbsp;</p>\r\n<!--article_adlist[<p cms-style=\"font-L align-right\">　　<font cms-style=\"font-L align-right\"><font cms-style=\"font-L strong-Bold align-right\"><font cms-style=\"font-L strong-Bold align-right\">一库清水永续北送↓↓↓</font></font></font></p>]article_adlist-->\r\n								\r\n				  \r\n				\r\n				\r\n<p class=\"show_author\">责任编辑：刘德宾 </p>', '2021-05-17 19:00:00', 'admin', 1, 2, 0);
INSERT INTO `news` VALUES (6, '刚刚！安徽最新疫情通报！', '无', '<p>　　原标题：刚刚！安徽最新疫情通报！透露肥西2名确诊病例状况！</p>\r\n<p>　　来源：新安晚报</p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">刚刚，安徽省新冠肺炎疫情防控应急综合指挥部办公室召开第三场新闻发布会通报：自2021年5月13日发现疫情，截至17日12时，我省六安市、合肥市累计报告确诊病例7例、无症状感染者7例，其中六安市确诊病例5例、无症状感染者7例，合肥市确诊病例2例。</font></p>\r\n<div class=\"img_wrapper\"><img id=\"1\" src=\"//n.sinaimg.cn/news/crawl/19/w550h269/20210517/4443-kqhwhri5777911.png\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">截至17日中午13时，<font cms-style=\"font-L strong-Bold\">六安市核酸采样</font></font><font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\">1064107</font></font><font cms-style=\"font-L\"><font cms-style=\"font-L strong-Bold\">人份，已出结果</font></font><font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\">1064107</font></font><font cms-style=\"font-L\"><font cms-style=\"font-L strong-Bold\">人份，除报告的确诊病例和无症状感染者外，其他</font></font><font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\">均为阴性</font></font><font cms-style=\"font-L\"><font cms-style=\"font-L strong-Bold\">。</font><font cms-style=\"font-L strong-Bold\">合肥市核酸采样</font></font><font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\">189817</font></font><font cms-style=\"font-L\"><font cms-style=\"font-L strong-Bold\">人份，已出结果</font></font><font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\">189783</font></font><font cms-style=\"font-L\"><font cms-style=\"font-L strong-Bold\">人份，除报告的确诊病例和少数新采样(34人)结果待出外，</font></font><font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\">均为阴性</font></font><font cms-style=\"font-L\"><font cms-style=\"font-L strong-Bold\">。</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\"><font cms-style=\"font-L strong-Bold color330\">截至17日中午13时，六安市和合肥市中风险地区增加到7个，分别是金安区浙东商贸城、裕安区百川名庭小区、裕安区恒大御景湾小区3期、裕安区固镇镇财富大街大艮头小区、金安区梧桐嘉苑小区、金安区清水河畔小区1期，肥西县上派镇卫星社区金云国际商住楼。</font></font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold\">六安市已管控网格数(小区、单位、楼栋)</font></font><font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\"><font cms-style=\"font-L strong-Bold color330\">34个</font></font></font><font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold\">、管控网格人数</font></font><font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\"><font cms-style=\"font-L strong-Bold color330\">26418人</font></font></font><font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold\">，核酸检测结果均为</font></font><font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\"><font cms-style=\"font-L strong-Bold color330\">阴性</font></font></font><font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold\">。合肥市已管控网格数</font></font><font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\"><font cms-style=\"font-L strong-Bold color330\">1个</font></font></font><font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold\">、管控网格人数</font></font><font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\"><font cms-style=\"font-L strong-Bold color330\">125人</font></font></font><font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold\">，核酸检测结果均为</font></font><font cms-style=\"font-L color330\"><font cms-style=\"font-L strong-Bold color330\"><font cms-style=\"font-L strong-Bold color330\">阴性</font></font></font><font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold\">。</font></font><font cms-style=\"font-L\">两市严格按照“城市社区精准布控到小区、小区精准布控到楼栋、楼栋精准布控到家庭”的要求，以最精准、最有效的网格单元织密织牢管控体系。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">此外，我省还积极妥善处理好封闭范围内居民的生产生活，通过楼长代买、商家无接触配送方式，确保居民生活不受大的影响；通过远程办公、空中课堂等方式，减少疫情防控对居民工作、生活的影响；协调好职工与各用人单位间的关系，做好封闭范围内群众健康管理和等政策宣传工作。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold color210\">合肥：两名确诊病例健康状况持续好转</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">合肥市委常委、常务副市长王文松介绍，目前两名确诊病例均为省外来肥人员，暂未发现本地确诊病例和疑似病例。<font cms-style=\"font-L strong-Bold\">两名患者健康状况持续好转，力争早日康复出院。</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold color210\">在肥密接者、次密接者1439人全部集中隔离医学观察</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">合肥市委常委、常务副市长王文松介绍，合肥市精准流调、应查尽查快查，成立15支专班，综合运用人工手段和现代科技，日夜不停开展流调，<font cms-style=\"font-L strong-Bold\">在肥密接者、次密接者1439人全部集中隔离医学观察，核酸检测结果均为阴性。</font>全面采样、范围能大则大，组织174支、370人的核酸采样队伍，其他保障服务人员1500多人，全力开展核酸检测。目前正根据流调结果，逐步由“里三层”向“外三层”精准拓展。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold color210\">合肥：对“五一”以来有市外相关地区旅居史和相关地区来肥人员接触史的，进行全面摸排筛查并进行核酸检测</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">合肥市委常委、常务副市长王文松介绍，合肥科学划定、精准管控风险等级区域，对仅有肥西1个中风险地区实施严格的封闭管理。加强全市30家发热门诊及106个基层发热哨点诊室闭环管理，要求各类基层医疗机构落实首诊负责制，100%落实核酸检测；明确所有药房线上线下出售退烧等药物实名登记，并及时上传信息。坚持人物同防，对全市1921家冷链企业，以及进口物品生产经营企业，持续开展风险排查和备案管理，暂未检出阳性样本。</font><font cms-style=\"font-L\">深挖风险点，</font><font cms-style=\"font-L strong-Bold\">已部署对“五一”以来有市外相关地区旅居史和相关地区来肥人员接触史的，进行全面摸排筛查并进行核酸检测。</font><font cms-style=\"font-L\">从严落实八项防控措施。</font><font cms-style=\"font-L\">根据省里统一要求，为坚决阻断疫情传播，从严管控相关人员聚集，明确暂停中风险地区大规模聚集活动，同时取消或延期举办“四个大型展会”。</font><font cms-style=\"font-L\">对人社、教育、财政等近期拟举办的社会化考试延期或调整地点。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L color210\"><font cms-style=\"font-L strong-Bold color210\">安徽：核酸检测做到“当日检、当日出”</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L color210\"><font cms-style=\"font-L strong-Bold color210\">坚决查处疫情防控工作履职不力、失职渎职等问题</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">5月17日下午，安徽省新冠肺炎疫情防控应急综合指挥部办公室召开第三场新闻发布会，省疫防办通报了我省当前的防控重点。据介绍，今天下午，省疫情防控应急指挥部刚刚召开了全省疫情防控工作调度会议，省委主要负责同志对当前全省疫情防控工作作出了部署。我们将认真贯彻落实会议各项工作部署，决不松动、决不手软，从严从快筑牢“六道防线”，力争在一个潜伏期内防住疫情，坚决打赢疫情防控这场硬仗。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold color210\">筑牢疫情防控的思想防线</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">从心怀“国之大者”的全局高度，深刻认识疫情防控的长期性复杂性，始终绷紧思想之弦，坚决防止麻痹大意，把困难估计得更充分，把措施安排得更周密，把责任落实得更到位，以统筹疫情防控和经济社会发展实际成效迎接建党100周年。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold color210\">核酸检测做到“当日检、当日出”</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">筑牢阻断疫情的严密防线。</font><font cms-style=\"font-L\">抓好流调溯源，尽可能在24小时内完成病例和无症状感染者的个案调查，确保不疏忽、不遗漏。</font><font cms-style=\"font-L\">抓好核酸检测，及时扩大覆盖面、拓展包围圈，做到“当日检、当日出”。</font><font cms-style=\"font-L\">抓好隔离管理，严格执行“单人单间”隔离、“1+7+14+21”健康管理、“三天一查”等措施。</font><font cms-style=\"font-L\">抓好医疗救治，强化一人一策，坚持中西医结合、多学科协同，努力让患者早日治愈出院。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold color210\">严格首诊负责制和可疑病例闭环管理</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">我省将筑牢疫情监测的源头防线。</font><font cms-style=\"font-L\">严格首诊负责制和可疑病例闭环管理，对全省医疗机构疫情防控规定执行情况进行全面排查整治，对落实不到位、隐患突出的关闭整顿，对问题严重及造成不良影响的严肃问责。</font><font cms-style=\"font-L\">抓好院感防控制度落实，坚决守住“院内&nbsp;零感染、院感零容忍”的底线。</font><font cms-style=\"font-L\">严格疫情发现报告制度，确保在规定时限内及时、全面、准确报告疫情。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold color210\">强化对境外域外人员的防控</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">筑牢外防输入的前沿防线。</font><font cms-style=\"font-L\">强化对境外域外人员的防控，从严落实健康码查验、社区跟踪、核酸检测等措施，确保防控关口前移。</font><font cms-style=\"font-L\">强化进口物品防控，对口岸查验、交通运输、批发零售等关键环节持续做好风险排查，物品、环境和接触人员监测。</font><font cms-style=\"font-L\">强化重点环节防控，加强相关人员等人群健康监测。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold color210\">加强疫苗精准分配和动态调配</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">筑牢疫情防控的群体免疫防线。</font><font cms-style=\"font-L\">坚持应接尽接，做好疫苗供应保障，加强精准分配和动态调配，不断提高接种覆盖率。</font><font cms-style=\"font-L\">坚持梯次推进，按周计划、按日调度，保障接种质量和效果。</font><font cms-style=\"font-L\">坚持突出重点，切实做好重点人群接种工作。</font><font cms-style=\"font-L\">坚持保障安全，强化疫苗全流程管控，避免人员聚集和交叉往返。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold\"><font cms-style=\"font-L strong-Bold color210\">坚决查处疫情防控工作履职不力、失职渎职等问题</font></font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">筑牢联防联控、群防群控的责任防线。</font><font cms-style=\"font-L\">昨天，六安市对裕安区有关单位和个人违反首诊负责制进行了严肃处理。</font><font cms-style=\"font-L\">各地疫情防控工作领导小组、指挥部将在国务院联防联控机制和防控专家工作组的有力指导下，始终保持激活和高效运转状态，坚决查处疫情防控工作履职不力、失职渎职等问题，坚决反对形式主义官僚主义，坚定有力、毫不懈怠做好各项工作。</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L strong-Bold color210\">新安晚报&nbsp;安徽网&nbsp;大皖新闻记者&nbsp;陈牧&nbsp;叶晓&nbsp;张楠</font></p>\r\n<p cms-style=\"font-L\">　　<font cms-style=\"font-L\">来源：新安晚报、安徽网、大皖新闻</font></p>\r\n								\r\n				<div class=\"wap_special\" data-sudaclick=\"content_relativetopics_p\">\r\n        <div class=\"tlt\">点击进入专题：</div>\r\n	<a href=\"https://news.sina.cn/zt_d/ahyq\" target=\"_blank\">安徽本土疫情再起</a>	<a href=\"https://news.sina.cn/zt_d/feiyan1231\" target=\"_blank\">新型冠状病毒肺炎疫情</a></div>\r\n  \r\n				\r\n				\r\n<p class=\"show_author\">责任编辑：刘德宾 </p>', '2021-05-17 19:30:30', 'admin', 1, 0, 0);
INSERT INTO `news` VALUES (7, '市值管理，还是操纵市场？', '无', '<p>　　原标题：【社论】市值管理，还是操纵市场？</p>\r\n<div class=\"img_wrapper\"><img id=\"0\" style=\"max-width: 640px;\" src=\"//n.sinaimg.cn/sinakd2021517s/50/w600h250/20210517/da74-kqhwhri5573697.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n<p>　　前“私募冠军”叶飞最近公开喊话中源家居，称自己曾通过中间人参与该公司的市值管理，事后遭遇“赖账”。叶飞还表示要陆续曝光存在此类行为的18家上市公司。目前，证监会已经宣布对相关账户涉嫌操纵中源家居等股票价格立案调查。</p>\r\n<p cms-style=\"font-L\">　　叶飞的举证，使上市公司的“市值管理”乱象再度引发投资者及公众热议。市值管理，本是上市公司综合运用多种科学、合规的价值经营方式，以达到公司价值创造最大化、价值实现最优化的一种战略管理行为。</p>\r\n<p cms-style=\"font-L\">　　然而，当前不少上市公司的“市值管理”却严重异化，或是制造业绩、业务重组等虚假信息，误导投资者；或通过内幕交易，人为制造业绩股价暴涨假象，从而诱导投资者跟进，高位套现获取暴利。此类行为严重损害了投资者权益，也对股市生态造成破坏。</p>\r\n<p cms-style=\"font-L\">　　此类所谓“市值管理”，涉及上市公司、股东方、中间人等多个环节，内外勾结，手法隐蔽，正成为新的“割韭菜”手段。此外，近年来部分中介机构、股市“大V”违反专业操守，通过所谓业绩预期分析等方式，鼓吹企业诱人前景，更令投资者防不胜防。</p>\r\n<p cms-style=\"font-L\">　　随着新证券法的实施，监管层对于股市市场操纵行为加大了问责力度。就在近期，江丽芬、景华因操纵市场而遭重罚，其中景华因涉嫌操纵“仁东控股”，被处以500万元罚款的行政处罚。此次证监会的调查，如能证明涉事上市公司确有操纵股市的行为，相信当事公司不可能逃脱严惩。</p>\r\n<p cms-style=\"font-L\">　　但也要看到一个令人担忧的问题，那就是如果此次不是因为窝里斗，“分赃不均”，被叶飞公开举报，“市值管理”乱象何时才能浮出水面？总之，打击以“市值管理”之名行股市操纵之实的违法行为，不能光靠个别人的举报，而必须仰赖于制度保障。</p>\r\n<p cms-style=\"font-L\">　　当务之急，是解决以往偏重于行政处罚的局限、违法成本偏低等问题，通过加大司法追责和经济赔偿力度，让违法操纵者以及相关参与者承担更多的民事、刑事责任，形成更具威慑力的事前防范、事后惩戒机制。</p>\r\n<p cms-style=\"font-L\">　　另一方面，监管层不妨大胆探索“吹哨人”制度，从而鼓励内部人举报的积极性，由此挖掘更多线索，形成对违法操纵股市行为的精准打击。</p>\r\n<p cms-style=\"font-L\">　　外有执法力度的加强，内有“吹哨人”的监督，双管齐下，标本兼治，方能推动市值管理回归正轨，真正形成对市场操纵行为的有力震慑，有力保护普通投资者的利益。</p>\r\n<!--article_adlist[<p cms-style=\"font-L\">　　(本文来自澎湃新闻，更多原创资讯请下载“澎湃新闻”APP)</p>]article_adlist-->\r\n								\r\n				<div class=\"wap_special\" data-sudaclick=\"content_relativetopics_p\">\r\n        <div class=\"tlt\">点击进入专题：</div>\r\n	<a href=\"https://news.sina.cn/zt_d/yfsj\" target=\"_blank\">私募大佬“讨债”风暴</a></div>\r\n  \r\n				\r\n				\r\n<p class=\"show_author\">责任编辑：刘德宾 </p>', '2021-05-17 19:40:40', 'admin', 1, 0, 0);
INSERT INTO `news` VALUES (8, '天问落火！听习近平航天强国之音', '无', '<p>　　原标题：联播+丨天问落火！听总书记航天强国之音</p>\r\n<p>　　“天问一号探测器着陆火星，迈出了我国星际探测征程的重要一步，实现了从地月系到行星际的跨越，在火星上首次留下中国人的印迹，这是我国航天事业发展的又一具有里程碑意义的进展。”5月15日，习近平代表党中央、国务院和中央军委致电祝贺我国首次火星探测任务天问一号探测器成功着陆火星。</p>\r\n<p cms-style=\"font-L\">　　党的十八大以来，习近平总书记多次就我国航天事业发展发表重要讲话、作出重要指示批示，为航天事业发展指明了前进方向。</p>\r\n<p cms-style=\"font-L\">　　央视网《联播+》特梳理习近平总书记相关论述，与您一同学习。</p>\r\n<div class=\"img_wrapper\"><img id=\"0\" style=\"max-width: 640px;\" src=\"//n.sinaimg.cn/spider2021516/218/w750h1068/20210516/cf36-kpzzqna7140744.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n<div class=\"img_wrapper\"><img id=\"1\" style=\"max-width: 640px;\" src=\"//n.sinaimg.cn/spider2021516/743/w750h793/20210516/9481-kpzzqna7107302.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n<div class=\"img_wrapper\"><img id=\"2\" style=\"max-width: 640px;\" src=\"//n.sinaimg.cn/spider2021516/45/w750h895/20210516/5d11-kpzzqna7140848.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n								\r\n				  \r\n				\r\n				\r\n<p class=\"show_author\">责任编辑：刘德宾 </p>', '2021-05-17 19:50:50', 'admin', 1, 0, 0);
INSERT INTO `news` VALUES (9, '王毅谈当前巴以局势', '无', '<h1>王毅谈当前巴以局势：停火止暴是当务之急</h1>\r\n        <div class=\"content clearfix\">\r\n          <div class=\"LeftTool\" id=\"LeftTool\"></div>\r\n          <!--内容-->\r\n          <div class=\"content-article\">\r\n            <!--导语-->\r\n            <p class=\"one-p\">来源：外交部网站</p>\r\n            <p class=\"one-p\"><img class=\"content-picture\" src=\"//inews.gtimg.com/newsapp_bt/0/13533601999/1000\">\r\n            </p>\r\n            <p class=\"one-p\">2021年5月16日，国务委员兼外长王毅主持联合国安理会巴以冲突问题紧急公开会。</p>\r\n            <p class=\"one-p\">王毅表示，武力带不来和平安宁，暴力只会播撒更多仇恨的种子。中方强烈谴责针对平民的暴力行径，再次敦促冲突双方立即停止军事和敌对行动，停止采取包括空袭、地面进攻、发射火箭弹等恶化局势的行动。以色列尤其要保持克制，切实遵守联合国有关决议，停止拆除巴勒斯坦民众房屋，停止驱逐巴勒斯坦民众，停止扩建定居点，制止针对穆斯林的暴力、威胁和挑衅，维护和尊重耶路撒冷宗教圣地的历史现状。巴勒斯坦方面也要避免采取可能导致局势进一步升级的举措，避免伤害平民，共同推动紧张局势缓解降温。</p>\r\n            <div id=\"Status\"></div>\r\n          </div>\r\n        </div>', '2021-05-17 20:10:20', 'admin', 1, 0, 0);
INSERT INTO `news` VALUES (10, '卫龙：撕不掉垃圾食品标签', '无', ' <p>　　小小的辣条，不仅让刘卫平完成从草根到富豪的逆袭，也让公众首次见识到辣条竟如此赚钱。</p>\r\n<p>　　5月12日，卫龙美味全球控股有限公司在向联交所递交的招股书中提及，2020年，公司销售辣条收入接近27亿元，毛利率接近38%。</p>\r\n<p>　　顶着“垃圾食品”的标签，辣条长期不被资本喜欢，可就在卫龙递表之前，资本蜂拥而至突击入股。在资本眼里突然这么香，一方面来自于辣条赚钱能力强，另一方面则是看好卫龙的成长预期。</p>\r\n<p>　　辣条产品进入门槛较低，随着这个赛道上的竞争者越来越多，已对公司辣条形成威胁。作为细分赛道龙头，卫龙奔赴港股募资，借此巩固市场地位、拓展新品类和渠道下沉，才是此次奔赴港股的真正目的。</p>\r\n<p>　　资本上瘾辣条</p>\r\n<p>　　资本的嗅觉从来不存在盲区，以前校门口让小朋友们上瘾的辣条，如今成为它们竞相追逐的目标。</p>\r\n<p>　　今年3月底，CPE源峰（中信产业基金）、高瓴、腾讯、云峰基金、红杉中国等机构购买卫龙新发行的1.22亿股普通股，每股成本4.4836美元，总融资规模5.49亿美元，对价已在4月1日交割。</p>\r\n<p>　　据卫龙招股书，上市前，CPE源峰、高瓴、腾讯、云峰基金、红杉中国、Duckling Fund，L.P、厚生投资、海松资本分别持有公司股权比例为2.32%、1.17%、0.64%、0.64%、0.29%、0.29%、0.29%和0.21%。刘卫平、刘福平家族合计持股92.17%。</p>\r\n<p>　　斑马消费梳理发现，腾讯和云峰基金此前对食品项目投资不多。过去几年里，腾讯仅投资过和府捞面、喜茶。启信宝显示，深圳市腾讯信息技术有限公司持有和府捞面12.02%股权，为第三大股东。云峰基金投资过奈雪的茶、嘉禾一品和简爱酸奶。</p>\r\n<div class=\"img_wrapper\"><img id=\"3\" src=\"//n.sinaimg.cn/finance/crawl/162/w550h412/20210517/67dc-kpzzqna8437120.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n<p>　　令资本不惜下血本跑步进场，一方面是卫龙20年来在辣味休闲食品市场形成的龙头地位，另一方面辣条赚钱能力着实羡煞旁人。</p>\r\n<p>　　调味面制品（主要是大、小辣条产品）是公司重要收入来源。2018年-2020年，调味面制品收入分别为21.62亿元、24.75亿元和26.90亿元，分别占比公司收入的78.6%、73.1%和65.3%；同期，该品类毛利率分别为34.4%、37.2%和37.6%。</p>\r\n<p>　　有了调味面制品的拉动，2018年-2020年，公司实现整体收入分别为27.52亿元、33.85亿元和41.20亿元，年复合增长率22.4%，远超中国休闲食品行业同期4.1%的年复合增长率。同期，公司年内利润分别为4.76亿元、6.58亿元和8.19亿元，净利润率分别为17.3%、19.4%和19.9%，远超中国休闲食品行业10%的平均净利润率（2020年）。</p>\r\n<p>　　卫龙之所以赚钱，与销售费用支出较低有关。2020年，公司分销及销售开支3.71亿元，仅为公司总收入的9%。同年，<span id=stock_sz002557><a href=https://finance.sina.com.cn/realstock/company/sz002557/nc.shtml class=\"keyword\" target=_blank data-sudaclick=\"content_marketkeywords_p\">洽洽食品</a></span><span id=quote_sz002557></span>、<span id=stock_sz300783><a href=https://finance.sina.com.cn/realstock/company/sz300783/nc.shtml class=\"keyword\" target=_blank data-sudaclick=\"content_marketkeywords_p\">三只松鼠</a></span><span id=quote_sz300783></span>、<span id=stock_sz002847><a href=https://finance.sina.com.cn/realstock/company/sz002847/nc.shtml class=\"keyword\" target=_blank data-sudaclick=\"content_marketkeywords_p\">盐津铺子</a></span><span id=quote_sz002847></span>、<span id=stock_sz002991><a href=https://finance.sina.com.cn/realstock/company/sz002991/nc.shtml class=\"keyword\" target=_blank data-sudaclick=\"content_marketkeywords_p\">甘源食品</a></span><span id=quote_sz002991></span>等公司销售费率在9.76%至25%的区间。</p>\r\n<p>　　除此之外，公司57万个以上零售终端约7成位于低线城市，是公司报告期业绩增长及未来的关键。</p>\r\n<p>　　据弗若斯特沙利文报告，2020年辣味休闲食品在低线城市销售额占整体的63.3%，未来5年低线城市的年复合增长率将达到11.8%，高于一、二线城市的6.9%、8.1%。</p>\r\n<p>　　越卖越贵的面制品</p>\r\n<p>　　招股书显示，2018年-2020年，公司调味面制品年销量分别为1.56亿千克、1.73亿千克和1.80亿千克，销售均价分别为13.9元/千克、14.3元/千克和15.0元/千克。量价齐升，推动公司业绩不断增长。</p>\r\n<p>　　上述同期，公司的豆制品及其他产品年销售从2018年的0.13亿千克降至2020年的0.10亿千克，销售均价从22.4元/千克增至25.8元/千克。</p>\r\n<p>　　斑马消费梳理发现，在公司三大品类中，蔬菜制品是唯一销售均价略降的产品类别，2018年-2020年，销售均价从28.9元/千克微跌至28.1元/千克，但年销量从0.10亿千克增至0.42亿千克，毛利率从36.7%增至39.3%。</p>\r\n<p>　　蔬菜制品销售销售收入规模从上述同期的2.98亿元升至11.68亿元，占公司收入比重从10.8%升至28.3%，成为报告期内增长最快的品类。</p>\r\n<div class=\"img_wrapper\"><img id=\"5\" src=\"//n.sinaimg.cn/finance/crawl/117/w550h367/20210517/48b6-kpzzqna8437328.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n<p>　　除了提价，公司在经销商管理方面手腕强势，渠道网络建设策略激进，加速更新和淘汰。2018年-2020年，分别新增经销商1297家、1297家和1490家，各年终止合作经销商分别为430家、554家和2132家。</p>\r\n<p>　　公司采取先款后货方式与经销商合作，通过经销商触达各级市场，也通过业绩表现反向甄选优质经销商。截至2020年末，公司经销商数量为1950家。</p>\r\n<p>　　通过对经销商的把控，公司来自线下经销商收入比重保持平稳，2018年-2020年，分别为91.6%、92.6%和90.7%。</p>\r\n<p>　　撕不掉的“垃圾食品”标签</p>\r\n<p>　　从20年前校门口透明塑料袋装的辣条，到如今苹果风包装大行于世，辣条重盐重油的不健康形象，始终挥之不去。</p>\r\n<p>　　卫龙没有少在这方面耗费人力物力财力。</p>\r\n<p>　　10年前，公司请来明星赵薇加持，后力邀杨幂代言，与张全蛋等网红的现场直播更是不断，这一套连环动作执行下来，卫龙的知名度打开，品牌产品的干净卫生得到认可，但“垃圾食品”的标签始终无法撕掉。</p>\r\n<div class=\"img_wrapper\"><img id=\"7\" src=\"//n.sinaimg.cn/finance/crawl/143/w550h393/20210517/000d-kpzzqna8437387.jpg\" alt=\"\"><span class=\"img_descr\"></span></div>\r\n<p>　　据媒体报道，长期以来，辣条中防腐剂、菌落总数、色素等成为打而不绝的行业难题。2015年至2017年年中，国内百家辣条生产企业195批次辣条登上食药监局黑名单。2019年央视3.15晚会上，辣条行业乱象再曝光，辣条食品安全和健康问题再度受到业内外关注。</p>\r\n<p>　　更严重的是，公司所产辣条产品一度被地方主管部门认定为不合格产品。</p>\r\n<p>　　2018年，卫龙和湖北省食药监部门发生激烈交锋。按照河南地方标准生产的辣条，在湖北市场抽查中，添加了国家标准中明令禁止不得使用的山梨酸及其钾盐、脱氢乙酸及其钠盐两种添加剂。</p>\r\n<p>　　辣条中食品添加剂问题，各地一直存在争议，地方标准和国家标准打架的情况时有发生。</p>\r\n<p>　　公司在招股书中解释，此前，辣条产品在国内不同省份被分入不同食品类别，导致公司辣条产品部分批次被若干省份食药监部门声称与相关标准不一。直到2019年，国家明确将辣条分类为调味面制品，才减少类似事件发生。</p>', '2021-05-17 20:15:15', 'admin', 1, 2, 0);
INSERT INTO `news` VALUES (11, '百年党史天天读', '无', '<a href=\"http://www.dswxyjy.org.cn/GB/434461/434466/434705/index.html\">百年党史天天读</a>', '2021-05-17 20:20:15', 'admin', 0, 3, 0);

-- ----------------------------
-- Table structure for pmember
-- ----------------------------
DROP TABLE IF EXISTS `pmember`;
CREATE TABLE `pmember`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mid` int(4) DEFAULT NULL,
  `realname` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `bir` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `sheng` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `city` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `telphone` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `question` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `answer` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pmember
-- ----------------------------
INSERT INTO `pmember` VALUES (1, 1, '王晓强', 'm', '2008-04-17', '甘肃', '天水', '13899998888', 'no@163.com', 'xiao', 'qiang');
INSERT INTO `pmember` VALUES (2, 2, '??', 'f', '2016-07-03', '???', '????', '15547281455', '1490170181@qq.com', 'qq', 'aa');
INSERT INTO `pmember` VALUES (3, 3, '??', 'f', '2016-07-24', '??', '??', '1335845210', 'aa@qq.com', '11', '22');

-- ----------------------------
-- Table structure for replay
-- ----------------------------
DROP TABLE IF EXISTS `replay`;
CREATE TABLE `replay`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mid` int(4) DEFAULT NULL,
  `replay` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `replayer` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `replaytime` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of replay
-- ----------------------------
INSERT INTO `replay` VALUES (1, 1, '有，自己来找吧，给你一顿大电炮', 'admin', '2021-05-08 18:43:39');
INSERT INTO `replay` VALUES (2, 2, '当然可以 无所不能', 'admin', '2021-05-08 18:43:50');
INSERT INTO `replay` VALUES (3, 4, '是啊 真好', 'admin', '2021-05-08 18:45:24');
INSERT INTO `replay` VALUES (4, 3, '给你来个五指山', 'admin', '2021-05-08 18:45:47');
INSERT INTO `replay` VALUES (5, 5, '是啊', 'admin', '2021-05-29 09:08:40');
INSERT INTO `replay` VALUES (6, 7, '稳住，别慌！', 'admin', '2021-06-07 12:43:50');

-- ----------------------------
-- Table structure for system
-- ----------------------------
DROP TABLE IF EXISTS `system`;
CREATE TABLE `system`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `url` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `keyword` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `description` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `state` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `reasons` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `dir` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `record` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `copyright` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system
-- ----------------------------
INSERT INTO `system` VALUES (1, '锦绣小区门户网站', 'http://localhost:8080/Sqwl', '锦绣小区门户网站', '锦绣小区门户网站', 'admin@163.com', 'open', '锦绣小区门户网站', 'admin', '锦绣小区门户网站', '锦绣小区门户网站  &copy  版权所有  侵权必究');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `picurl` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `chandi` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `daoyan` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `yanyuan` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `pianchang` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `url` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `content` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci,
  `adder` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  `addtime` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, '地球超人', '/upload_file/video/12089206932814.jpg', '美国', '美国', '超人', '120', 'video/1.AVI', '<p>的</p>', 'admin', '2021-05-09 11:18:13');
INSERT INTO `video` VALUES (2, 'WNV对站3D战队CS视频', '/upload_file/video/12089207873285.jpg', '中国', '老谋子', 'sakula，TK，aqi，mikk', '120', 'video/1.AVI', '<p>的</p>', 'admin', '2021-05-09 11:19:47');
INSERT INTO `video` VALUES (3, '樱桃小丸子', '/upload_file/video/12089209019066.jpg', '日本', '鬼子', '小丸子', '120', 'video/1.AVI', '<p>的</p>', 'admin', '2021-05-09 11:21:41');
INSERT INTO `video` VALUES (4, '金刚葫芦娃', '/upload_file/video/12089211205007.jpg', '中国', '老谋子', '葫芦7兄弟', '120', 'video/1.AVI', '<p>爱的</p>', 'admin', '2021-05-09 11:25:20');
INSERT INTO `video` VALUES (5, '恐龙特级克赛号', '/upload_file/video/12089236781878.jpg', '日本', '鬼子', '鬼子', '120', 'video/1.AVI', '<p>的</p>', 'admin', '2021-05-09 12:07:58');
INSERT INTO `video` VALUES (6, '三毛流浪记', '/upload_file/video/12089237400469.jpg', '中国', '老谋子', '三毛', '120', 'video/1.AVI', '<p>地方</p>', 'admin', '2021-05-09 12:09:00');
INSERT INTO `video` VALUES (7, '变形金刚', '/upload_file/video/120892379368712.jpg', '地球', '金刚', '金刚', '120', 'video/1.AVI', '<p>阿斯顿</p>', 'admin', '2021-05-09 12:09:53');
INSERT INTO `video` VALUES (8, '大力水手', '/upload_file/video/120892394587511.jpg', '英国', '爱迪生', '爱迪生', '120', 'video/1.AVI', '<p>大大的</p>', 'admin', '2021-05-09 12:12:25');
INSERT INTO `video` VALUES (9, '兔八哥', '/upload_file/video/120892400790613.jpg', '美国', '大鼻子', '大鼻子', '120', 'video/1.AVI', '<p>弟弟</p>', 'admin', '2021-05-09 12:13:27');
INSERT INTO `video` VALUES (10, '鼹鼠的故事', '/upload_file/video/120892419046814.jpg', '地球', '地球', '耗子', '120', 'video/1.AVI', '<p>点点滴滴</p>', 'admin', '2021-05-09 12:16:30');
INSERT INTO `video` VALUES (11, '唐老鸭和米老鼠', '/upload_file/video/120892428665615.jpg', '外国', '外国', '鸭子和耗子', '120', 'video/1.AVI', '<p>的</p>', 'admin', '2021-05-09 12:18:06');
INSERT INTO `video` VALUES (12, '舒克和贝塔', '/upload_file/video/12089245574068.jpg', '中国', '老谋子', '舒克和贝塔', '120', 'video/1.AVI', '<p>东三幅</p>', 'admin', '2021-05-09 12:22:37');
INSERT INTO `video` VALUES (13, '忍者神龟', '/upload_file/video/12089246074846.jpg', '日本', '鬼子', '王八', '120', 'video/1.AVI', '<p>撒旦法</p>', 'admin', '2021-05-09 12:23:27');
INSERT INTO `video` VALUES (14, '奥特曼', '/upload_file/video/12089246297344.jpg', '日本', '鬼子', '王八', '120', 'video/1.AVI', '<p>安抚</p>', 'admin', '2021-05-09 12:23:49');
INSERT INTO `video` VALUES (15, '北斗神拳', '/upload_file/video/120892503382813.jpg', '地球', '地球', '地球', '120', 'video/1.AVI', '', 'admin', '2021-05-09 12:30:23');
INSERT INTO `video` VALUES (16, '蓝精灵', '/upload_file/video/12089250644069.jpg', '地球', '地球', '地球', '120', 'video/1.AVI', '', 'admin', '2021-05-09 12:31:03');
INSERT INTO `video` VALUES (17, '红高粱', '/upload_file/video/12089250892817.jpg', '中国', '老谋子', '老谋子', '120', 'video/1.AVI', '', 'admin', '2021-05-09 12:31:28');
INSERT INTO `video` VALUES (18, '满城尽带黄金甲', '/upload_file/video/12089251168752.jpg', '中国', '老谋子', '老谋子', '120', 'video/1.AVI', '', 'admin', '2021-05-09 12:31:56');
INSERT INTO `video` VALUES (19, '有话好好说', '/upload_file/video/120892515110912.jpg', '中国', '老谋子', '老谋子', '120', 'video/1.AVI', '', 'admin', '2021-05-09 12:32:31');
INSERT INTO `video` VALUES (20, '啄木鸟', '/upload_file/video/12089251909536.jpg', '美国', '大鼻子', '大鼻子', '120', 'video/1.AVI', '', 'admin', '2021-05-09 12:33:09');
INSERT INTO `video` VALUES (21, '乡村爱情', '/upload_file/video/12089252482505.jpg', '铁岭', '老赵', '老赵', '120', 'video/1.AVI', '', 'admin', '2021-05-09 12:34:08');

SET FOREIGN_KEY_CHECKS = 1;
