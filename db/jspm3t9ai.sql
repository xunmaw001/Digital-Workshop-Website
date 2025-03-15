-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm3t9ai
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615949515121 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-17 02:46:16',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-17 02:46:16',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-17 02:46:16',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-17 02:46:16',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-17 02:46:16',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-17 02:46:16',6,'宇宙银河系月球1号','月某','13823888886','是'),(1615949515120,'2021-03-17 02:51:54',1615949459865,'浙江省台州市天台县石梁镇张板溪','李铭','15214121412','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'kechengxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615949543916 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615949691154 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2021-03-17 02:46:16',1,1,'提问1','回复1',1),(72,'2021-03-17 02:46:16',2,2,'提问2','回复2',2),(73,'2021-03-17 02:46:16',3,3,'提问3','回复3',3),(74,'2021-03-17 02:46:16',4,4,'提问4','回复4',4),(75,'2021-03-17 02:46:16',5,5,'提问5','回复5',5),(76,'2021-03-17 02:46:16',6,6,'提问6','回复6',6),(1615949691153,'2021-03-17 02:54:50',1615949459865,NULL,'‍我想问下。。。。\r\n','亲 有什么可以帮到您吗\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm3t9ai/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm3t9ai/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm3t9ai/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultuser`
--

DROP TABLE IF EXISTS `defaultuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defaultuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(200) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `picture` varchar(200) DEFAULT NULL COMMENT '照片',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='注册用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultuser`
--

LOCK TABLES `defaultuser` WRITE;
/*!40000 ALTER TABLE `defaultuser` DISABLE KEYS */;
INSERT INTO `defaultuser` VALUES (91,'2021-03-17 02:46:16','用户名1','123456','姓名1','男',1,'020-89819991','http://localhost:8080/jspm3t9ai/upload/defaultuser_picture1.jpg','773890001@qq.com',100),(92,'2021-03-17 02:46:16','用户名2','123456','姓名2','男',2,'020-89819992','http://localhost:8080/jspm3t9ai/upload/defaultuser_picture2.jpg','773890002@qq.com',100),(93,'2021-03-17 02:46:16','用户名3','123456','姓名3','男',3,'020-89819993','http://localhost:8080/jspm3t9ai/upload/defaultuser_picture3.jpg','773890003@qq.com',100),(94,'2021-03-17 02:46:16','用户名4','123456','姓名4','男',4,'020-89819994','http://localhost:8080/jspm3t9ai/upload/defaultuser_picture4.jpg','773890004@qq.com',100),(95,'2021-03-17 02:46:16','用户名5','123456','姓名5','男',5,'020-89819995','http://localhost:8080/jspm3t9ai/upload/defaultuser_picture5.jpg','773890005@qq.com',100),(96,'2021-03-17 02:46:16','用户名6','123456','姓名6','男',6,'020-89819996','http://localhost:8080/jspm3t9ai/upload/defaultuser_picture6.jpg','773890006@qq.com',100);
/*!40000 ALTER TABLE `defaultuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskechengxinxi`
--

DROP TABLE IF EXISTS `discusskechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskechengxinxi`
--

LOCK TABLES `discusskechengxinxi` WRITE;
/*!40000 ALTER TABLE `discusskechengxinxi` DISABLE KEYS */;
INSERT INTO `discusskechengxinxi` VALUES (141,'2021-03-17 02:46:16',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-17 02:46:16',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-17 02:46:16',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-17 02:46:16',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-17 02:46:16',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-17 02:46:16',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusskechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxuexiziliao`
--

DROP TABLE IF EXISTS `discussxuexiziliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxuexiziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615949570367 DEFAULT CHARSET=utf8 COMMENT='学习资料评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxuexiziliao`
--

LOCK TABLES `discussxuexiziliao` WRITE;
/*!40000 ALTER TABLE `discussxuexiziliao` DISABLE KEYS */;
INSERT INTO `discussxuexiziliao` VALUES (151,'2021-03-17 02:46:16',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-03-17 02:46:16',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-03-17 02:46:16',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-03-17 02:46:16',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-03-17 02:46:16',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-03-17 02:46:16',6,6,'用户名6','评论内容6','回复内容6'),(1615949570366,'2021-03-17 02:52:50',51,1615949459865,NULL,'感谢老师，让我学到了不少知识',NULL);
/*!40000 ALTER TABLE `discussxuexiziliao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1615949639132 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2021-03-17 02:46:16','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-03-17 02:46:16','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-03-17 02:46:16','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-03-17 02:46:16','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-03-17 02:46:16','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-03-17 02:46:16','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615949623951,'2021-03-17 02:53:43','121222121','<p>请输入内容学生也可以在这里发布信息进行交流1221</p>',0,1615949459865,'1','开放'),(1615949639131,'2021-03-17 02:53:58',NULL,'请输入评论1111111',1615949623951,1615949459865,'1',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengleixing`
--

DROP TABLE IF EXISTS `kechengleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengleixing`
--

LOCK TABLES `kechengleixing` WRITE;
/*!40000 ALTER TABLE `kechengleixing` DISABLE KEYS */;
INSERT INTO `kechengleixing` VALUES (31,'2021-03-17 02:46:16','英语'),(32,'2021-03-17 02:46:16','课程类型2'),(33,'2021-03-17 02:46:16','课程类型3'),(34,'2021-03-17 02:46:16','课程类型4'),(35,'2021-03-17 02:46:16','课程类型5'),(36,'2021-03-17 02:46:16','课程类型6');
/*!40000 ALTER TABLE `kechengleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shizhang` varchar(200) DEFAULT NULL COMMENT '时长',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (41,'2021-03-17 02:46:16','英语语法','英语','http://localhost:8080/jspm3t9ai/upload/1615949321066.jpg','150小时','<img src=\"http://localhost:8080/jspm3t9ai/upload/1615949337487.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm3t9ai/upload/1615949337487.jpg\">这里可以发布一些课程详细介绍，这里的内容都是用于测试的可以自行添加修改删除的课程详情1\r\n','2021-03-01 05:13:16',120),(42,'2021-03-17 02:46:16','课程名称2','课程类型2','http://localhost:8080/jspm3t9ai/upload/kechengxinxi_tupian2.jpg','时长2','课程详情2','2021-03-17 10:46:16',99.9),(43,'2021-03-17 02:46:16','课程名称3','课程类型3','http://localhost:8080/jspm3t9ai/upload/kechengxinxi_tupian3.jpg','时长3','课程详情3','2021-03-17 10:46:16',99.9),(44,'2021-03-17 02:46:16','课程名称4','课程类型4','http://localhost:8080/jspm3t9ai/upload/kechengxinxi_tupian4.jpg','时长4','课程详情4','2021-03-17 10:46:16',99.9),(45,'2021-03-17 02:46:16','课程名称5','课程类型5','http://localhost:8080/jspm3t9ai/upload/kechengxinxi_tupian5.jpg','时长5','课程详情5','2021-03-17 10:46:16',99.9),(46,'2021-03-17 02:46:16','课程名称6','课程类型6','http://localhost:8080/jspm3t9ai/upload/kechengxinxi_tupian6.jpg','时长6','课程详情6','2021-03-17 10:46:16',99.9);
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'kechengxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615949669361 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1615949651741,'2021-03-17 02:54:11','20213171054261646648','kechengxinxi',1615949459865,41,'英语语法','http://localhost:8080/jspm3t9ai/upload/1615949321066.jpg',3,120,120,559.8,360,1,'已完成','浙江省台州市天台县石梁镇张板溪'),(1615949652245,'2021-03-17 02:54:11','20213171054262482844','kechengxinxi',1615949459865,44,'课程名称4','http://localhost:8080/jspm3t9ai/upload/kechengxinxi_tupian4.jpg',2,99.9,99.9,559.8,199.8,1,'已支付','浙江省台州市天台县石梁镇张板溪'),(1615949669294,'2021-03-17 02:54:29','202131710542032542449','kechengxinxi',1615949459865,41,'英语语法','http://localhost:8080/jspm3t9ai/upload/1615949321066.jpg',4,120,120,679.8,480,1,'已支付','浙江省台州市天台县石梁镇张板溪'),(1615949669360,'2021-03-17 02:54:29','202131710542033485247','kechengxinxi',1615949459865,44,'课程名称4','http://localhost:8080/jspm3t9ai/upload/kechengxinxi_tupian4.jpg',2,99.9,99.9,679.8,199.8,1,'已退款','浙江省台州市天台县石梁镇张板溪');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615949548520 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615949536080,'2021-03-17 02:52:15',1615949459865,41,'kechengxinxi','英语语法','http://localhost:8080/jspm3t9ai/upload/1615949321066.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','a6zk8vguz4nrg43lmb3jd3euvkjpxkls','2021-03-17 02:47:26','2021-03-17 03:55:29'),(2,1615949459865,'1','xuesheng','学生','b5z5twz4ef50ctq26gvhvmbqbcpxyl8f','2021-03-17 02:51:07','2021-03-17 03:51:08'),(3,11,'001','xuesheng','学生','dsvi5x6gxvl9iuzhaqsmdnw1b020d1tg','2021-03-17 02:56:37','2021-03-17 03:56:37');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-17 02:46:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xitonggonggao`
--

DROP TABLE IF EXISTS `xitonggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xitonggonggao`
--

LOCK TABLES `xitonggonggao` WRITE;
/*!40000 ALTER TABLE `xitonggonggao` DISABLE KEYS */;
INSERT INTO `xitonggonggao` VALUES (21,'2021-03-17 02:46:16','公告信息','公告','http://localhost:8080/jspm3t9ai/upload/1615949269129.jpg','<img src=\"http://localhost:8080/jspm3t9ai/upload/1615949275330.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm3t9ai/upload/1615949275330.jpg\">这里可以发布一些公告内容，内容都是用于测试的公告内容1\r\n','2021-03-01'),(22,'2021-03-17 02:46:16','标题2','类型2','http://localhost:8080/jspm3t9ai/upload/xitonggonggao_tupian2.jpg','公告内容2','2021-03-17'),(23,'2021-03-17 02:46:16','标题3','类型3','http://localhost:8080/jspm3t9ai/upload/xitonggonggao_tupian3.jpg','公告内容3','2021-03-17'),(24,'2021-03-17 02:46:16','标题4','类型4','http://localhost:8080/jspm3t9ai/upload/xitonggonggao_tupian4.jpg','公告内容4','2021-03-17'),(25,'2021-03-17 02:46:16','标题5','类型5','http://localhost:8080/jspm3t9ai/upload/xitonggonggao_tupian5.jpg','公告内容5','2021-03-17'),(26,'2021-03-17 02:46:16','标题6','类型6','http://localhost:8080/jspm3t9ai/upload/xitonggonggao_tupian6.jpg','公告内容6','2021-03-17');
/*!40000 ALTER TABLE `xitonggonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615949459866 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-03-17 02:46:16','001','001','学生姓名1','男','http://localhost:8080/jspm3t9ai/upload/xuesheng_touxiang1.jpg','学院1','专业1','13823888881',100),(12,'2021-03-17 02:46:16','学生2','123456','学生姓名2','男','http://localhost:8080/jspm3t9ai/upload/xuesheng_touxiang2.jpg','学院2','专业2','13823888882',100),(13,'2021-03-17 02:46:16','学生3','123456','学生姓名3','男','http://localhost:8080/jspm3t9ai/upload/xuesheng_touxiang3.jpg','学院3','专业3','13823888883',100),(14,'2021-03-17 02:46:16','学生4','123456','学生姓名4','男','http://localhost:8080/jspm3t9ai/upload/xuesheng_touxiang4.jpg','学院4','专业4','13823888884',100),(15,'2021-03-17 02:46:16','学生5','123456','学生姓名5','男','http://localhost:8080/jspm3t9ai/upload/xuesheng_touxiang5.jpg','学院5','专业5','13823888885',100),(16,'2021-03-17 02:46:16','学生6','123456','学生姓名6','男','http://localhost:8080/jspm3t9ai/upload/xuesheng_touxiang6.jpg','学院6','专业6','13823888886',100),(1615949459865,'2021-03-17 02:50:59','1','1','李铭','男','http://localhost:8080/jspm3t9ai/upload/1615949481494.jpg','上海大学','计算机','15214121412',1998640);
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexibiji`
--

DROP TABLE IF EXISTS `xuexibiji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexibiji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `bijineirong` longtext COMMENT '笔记内容',
  `xuexiriqi` date DEFAULT NULL COMMENT '学习日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615949599162 DEFAULT CHARSET=utf8 COMMENT='学习笔记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexibiji`
--

LOCK TABLES `xuexibiji` WRITE;
/*!40000 ALTER TABLE `xuexibiji` DISABLE KEYS */;
INSERT INTO `xuexibiji` VALUES (61,'2021-03-17 02:46:16','名称1','课程名称1','笔记内容1','2021-03-17','学号1','学生姓名1'),(62,'2021-03-17 02:46:16','名称2','课程名称2','笔记内容2','2021-03-17','学号2','学生姓名2'),(63,'2021-03-17 02:46:16','名称3','课程名称3','笔记内容3','2021-03-17','学号3','学生姓名3'),(64,'2021-03-17 02:46:16','名称4','课程名称4','笔记内容4','2021-03-17','学号4','学生姓名4'),(65,'2021-03-17 02:46:16','名称5','课程名称5','笔记内容5','2021-03-17','学号5','学生姓名5'),(66,'2021-03-17 02:46:16','名称6','课程名称6','笔记内容6','2021-03-17','学号6','学生姓名6'),(1615949599161,'2021-03-17 02:53:18','语法学习','英语语法','<p>今天学习到哪里哪里了，又学会了什么什么</p>','2021-03-01','1','李铭');
/*!40000 ALTER TABLE `xuexibiji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiziliao`
--

DROP TABLE IF EXISTS `xuexiziliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kechengwenjian` varchar(200) DEFAULT NULL COMMENT '课程文件',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kechengxiangqing` longtext COMMENT '课程详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='学习资料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiziliao`
--

LOCK TABLES `xuexiziliao` WRITE;
/*!40000 ALTER TABLE `xuexiziliao` DISABLE KEYS */;
INSERT INTO `xuexiziliao` VALUES (51,'2021-03-17 02:46:16','英语语法','英语','http://localhost:8080/jspm3t9ai/upload/1615949373539.jpg','http://localhost:8080/jspm3t9ai/file/download?fileName=1615949379202.doc','http://localhost:8080/jspm3t9ai/upload/1615949386130.mp4','这里看发布一些详细信息课程详情1\r\n'),(52,'2021-03-17 02:46:16','课程名称2','课程类型2','http://localhost:8080/jspm3t9ai/upload/xuexiziliao_tupian2.jpg','','','课程详情2'),(53,'2021-03-17 02:46:16','课程名称3','课程类型3','http://localhost:8080/jspm3t9ai/upload/xuexiziliao_tupian3.jpg','','','课程详情3'),(54,'2021-03-17 02:46:16','课程名称4','课程类型4','http://localhost:8080/jspm3t9ai/upload/xuexiziliao_tupian4.jpg','','','课程详情4'),(55,'2021-03-17 02:46:16','课程名称5','课程类型5','http://localhost:8080/jspm3t9ai/upload/xuexiziliao_tupian5.jpg','','','课程详情5'),(56,'2021-03-17 02:46:16','课程名称6','课程类型6','http://localhost:8080/jspm3t9ai/upload/xuexiziliao_tupian6.jpg','','','课程详情6');
/*!40000 ALTER TABLE `xuexiziliao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-20 15:10:03
