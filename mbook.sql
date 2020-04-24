/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.7.29-log : Database - bookstore
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mbook` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mbook`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bid` int(10) NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `pirce` varchar(255) DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  `printer` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `store` int(10) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`bid`,`bname`,`detail`,`pirce`,`writer`,`printer`,`date`,`type`,`image`,`store`) values (10,'外科风云','正午阳光影业继《琅琊榜》《欢乐颂》后，又一热播医疗职场励志剧同名小说。直击中国医患矛盾的情感极致力作，温暖而明亮的职场励志小说。老干部靳东演绎的中国医疗精英。','78','朱朱','浙江文艺出版社','2017-05-01','治愈','16.jpg',0),(11,'追风筝的人','中文版，快乐大本营高圆圆感动推荐，奥巴马送给女儿的新年礼物。为你，千千万万遍！','17','[美]卡勒德·胡赛尼（Khaled Hosseini）','上海人民出版社','2006-05-01','治愈','12.jpg',96),(13,'解忧杂货店','《白夜行》后东野圭吾备受欢迎作品：不是推理小说，却更扣人心弦','27','(日)东野圭吾','南海出版公司','2014-05-01','小说','14.jpg',98),(14,'小王子','梅子涵主编，国际水准手绘插画，独一无二创意栏目：揭秘大师长成记和名著诞生记，分享同名影视动画衍生剧作，打造有趣有料、有颜有品的特色大师精选童话。','11','(法) 圣-埃克苏佩里','辽宁少年儿童出版社','2017-04-01','童话','15.jpg',97),(16,'阳明心学的力量','阳明心学在中国的当代商业实践,阳明教育研究院创始人白立新、奥康集团董事长王振滔、北京大学社会科学学部副主任文东茅教授等诸多企业家、教育家学习阳明心学、致良知的生动记录','35','北京知行合一阳明教育研究院','机械工业出版社','2017-04-01','治愈','17.jpg',99),(18,'丝绸之路：一部全新的世界史','关心国家战略，一带一路必读书','92','彼得.弗兰科潘 (Peter Frankopan)','浙江大学出版社','2016-08-17','历史','18.jpg',9),(19,'全球通史','从史前史到21世纪','87','斯塔夫里阿诺斯','北京大学出版社','2006-10-01','历史','19.jpg',48),(20,'史记','(精装全三册)','75','司马迁','岳麓书社','2011-07-01','历史','20.jpg',38),(21,'月亮和六便士','(译文经典.精）','30','毛姆','上海译文出版社','2015-03-10','小说','21.jpg',4),(22,'苏菲的世界','热售榜前50','23','乔斯坦.贾德','作家出版社','2007-07-07','小说','22.jpg',74),(23,'悲惨世界','销量遥遥领先','67','[法]维克多·雨果','作家出版社','2016-06-14','小说','23.jpg',1),(24,'海底两万里','（中小学新课标必读名著）','32','儒勒.凡尔纳','国际文化出版公司','2017-01-17','小说','24.jpg',98),(25,'钢铁是怎样炼成的','俄中直译全译本','29','奥斯特洛夫斯基 ','西安交通大学出版社','2016-11-11','小说','25.jpg',79),(26,'百年孤独','加西亚马尔克斯代表作','38','加西亚·马尔克斯','南海出版公司','2011-06-27','小说','26.jpg',66),(27,'了不起的盖茨比','【作家榜推荐】','26','菲茨杰拉德','浙江文艺出版社','2017-03-15','小说','27.jpg',43),(28,'三毛：撒哈拉的故事','满100减50','17','三毛','北京十月文艺出版社','2013-05-15','文学','28.jpg',97),(29,'鲁迅全集','（全20卷，纪念鲁迅先生逝世80周年！）','370','鲁迅','北京日报出版社（原同心出版社）','2014-10-15','文学','29.jpg',98),(30,'斯坦福极简经济学','（当当全国独家精装升级版）','37','[美]泰勒','湖南人民出版社','2016-08-01','经济','30.jpg',77),(31,'天才在左疯子在右','（完整版）','28','高铭','北京联合出版公司','2016-01-20','心理','31.jpg',85),(32,'社会心理学','（第11版）','111','（美） 戴维·迈尔斯','人民邮电出版社','2016-01-14','心理','32.jpg',48),(33,'与孤独为友','如何获得内心世界的轻松和愉悦','29','和田秀树','北京联合出版公司','2017-04-12','心理','33.jpg',47),(34,'摄影入门','拍出美照超简单','38','乔旭亮','化学工业出版社','2016-06-06','艺术','34.jpg',98),(35,'艺术的疗效','治愈了赵薇的书！——赵薇在来往上推荐的治愈系图书。','116','（英）德波顿','广西美术出版社','2014-07-12','艺术','35.jpg',99),(36,'胜者思维','危机领导战略，思维制胜之道，决策核心思考。','35','金一南','北京联合出版公司','2017-05-10','政治理论','36.jpg',98),(37,'学习关键词','社科值得看的好书','38','人民日报海外版“学习小组”','人民出版社','2016-11-21','政治理论','37.jpg',98),(38,'必然','尼古拉·尼葛洛庞帝互联网启蒙读物《数字化生存》20周年再版','50','凯文·凯利','电子工业出版社','2016-01-16','社会科学','38.jpg',99),(39,'晚学盲言','（全两册，第二版）','87','钱穆','生活.读书.新知三联书店','2014-03-11','社会科学','39.jpg',98),(40,'江村经济','销售榜前茅','29','费孝通','北京大学出版社','2016-07-08','社会科学','40.jpg',98),(41,'精通Python网络爬虫','资深专家，以实战为导向，讲透Python网络爬虫各项核心技术和主流框架，深度讲解网络爬虫的抓取技术与反爬攻关技巧','61','韦玮','机械工业出版社','2017-04-04','计算机','41.jpg',57),(42,'Android高级进阶','满50减10','84','顾浩鑫','电子工业出版社','2016-09-18','计算机','42.jpg',16),(43,'Python大战机器学习','数据科学家的第一个小目标','61','华校专，王正林','电子工业出版社','2017-02-16','计算机','43.jpg',86),(45,'你当像鸟飞往你的山','17岁前从未上过学的女孩，如何成为剑桥大学博士？我们要背叛多少曾经，才能找到真正的自我！《纽约时报》 等数十家媒体一致公推“年度图书”，作者获选《时代周刊》年度影响力人物！这本书比你听说的还要好！','59','塔拉 · 韦斯特弗','南海出版公司','2019-11-12','文学','28473192-1_b_3.jpg',98),(46,'5G社会：从“见字如面”到“万物互联”','每一代人都有属于他们的机遇。5G是中国的机遇，也是每个中国人的机遇。5G对于经济社会发展的推动作用是巨大的，它会带来无限的商业机会，重塑我国的产业结构，帮助企业完成流程优化和模式再造。谁能够顺应时代的步伐完成变革，谁就能够成为下一个十年的赢家。','58.90','翟尤','电子工业出版社','2019-11-12','计算机','5g.jpg',20),(47,'摄影的艺术','经典摄影教材 畅销美国35年的摄影书 由技入道 全面提升视觉审美素养 各艺术院校摄影设计等专业老师推荐','113.00','Bruce Barnbaum','人民邮电出版社','2020-02-04','艺术','syys.jpg',10);

/*Table structure for table `book_order` */

DROP TABLE IF EXISTS `book_order`;

CREATE TABLE `book_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `oname` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `book_order` */

insert  into `book_order`(`oid`,`date`,`oname`,`adress`,`status`,`uid`) values (16,'2020-04-12 10:13:25','Mike','安徽黄山','已发货',16),(17,'2020-04-18 11:01:43','Ken','上海市浦东新区','已发货',21),(18,'2020-04-20 15:36:54','Mary','安徽省黄山市屯溪区黎阳镇黄山学院26栋616','未发货',24),(19,'2020-04-21 16:27:27','Mike','江苏省南京市','未发货',22),(20,'2020-04-21 16:32:14','Mike','北京市朝阳区','未发货',22),(22,'2020-04-22 15:38:09','Mary','安徽省安庆市','未发货',24),(23,'2020-04-22 15:40:31','Mary','安徽省安庆市区','未发货',24),(24,'2020-04-22 15:44:51','Mary','江西省南昌市区','未发货',24),(25,'2020-04-22 15:47:48','Mary','山西省大同市','未发货',24),(26,'2020-04-22 15:49:01','Mary','西藏自治区','未发货',24),(27,'2020-04-22 15:53:45','Mike','福建省福州市','未发货',22),(28,'2020-04-22 15:57:09','Mike','湖北省武汉市区','已发货',22),(29,'2020-04-22 15:58:38','Mike','上海市闵行区','已签收',22),(30,'2020-04-24 17:20:27','Mike','海南省海口市','未发货',22),(31,'2020-04-24 17:22:58','Mike','陕西省咸阳市','未发货',22);

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `bid` (`bid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

insert  into `comment`(`cid`,`bid`,`uname`,`date`,`content`,`uid`) values (1,10,'L','2017-06-01 02:03','不错',NULL),(2,12,'L','2017-06-01 02:10','一般般',NULL);

/*Table structure for table `order_detail` */

DROP TABLE IF EXISTS `order_detail`;

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `book_num` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

/*Data for the table `order_detail` */

insert  into `order_detail`(`id`,`order_id`,`book_id`,`book_num`,`status`) values (62,16,13,1,'待评价'),(63,16,28,1,'待评价'),(64,16,16,1,'待评价'),(65,17,10,2,'待评价'),(66,17,16,1,'待评价'),(67,18,19,1,'待评价'),(68,18,43,1,'待评价'),(69,18,28,1,'待评价'),(70,19,11,2,'待评价'),(71,20,23,1,'待评价'),(73,22,31,1,'待评价'),(74,22,22,1,'待评价'),(75,23,31,1,'待评价'),(76,23,22,1,'待评价'),(77,24,31,1,'待评价'),(78,24,22,1,'待评价'),(79,24,20,1,'待评价'),(80,25,42,1,'待评价'),(81,25,39,1,'待评价'),(82,25,45,1,'待评价'),(83,25,11,1,'待评价'),(84,26,24,1,'待评价'),(85,27,37,1,'待评价'),(86,27,41,1,'待评价'),(87,27,27,1,'待评价'),(88,27,29,1,'待评价'),(89,27,34,1,'待评价'),(90,27,18,1,'待评价'),(91,27,30,1,'待评价'),(92,27,16,1,'待评价'),(93,27,40,1,'待评价'),(94,28,26,1,'待评价'),(95,28,36,1,'待评价'),(96,28,14,1,'待评价'),(97,28,43,1,'待评价'),(98,28,33,1,'待评价'),(99,29,23,1,'待评价'),(100,30,21,1,'待评价'),(101,31,26,1,'待评价'),(102,31,33,1,'待评价');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `uname` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '登录密码',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `adress` varchar(255) DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`uname`,`password`,`gender`,`phone`,`email`,`adress`) values (22,'Mike','4ab7205277f4e96ef9c42b4e7f76af45','男','17805591804','Mike@163.com','北京市海淀区上地四街'),(24,'Mary','b8132f2017da1ab8dcc927f99a0580e2','女','17805591623','Mary@163.com','重庆市江北区清江街道'),(25,'Ken','ken','男','17805591804','Ken@163.com','北京市海淀区上地四街');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
