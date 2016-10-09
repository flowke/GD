-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: hyny
-- ------------------------------------------------------
-- Server version	5.7.12

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'1','iUOoOdMAl7FsB1Kig37hmg=='),(2,'3','NjjgOp1OACitB8VC4USUuA==');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'马蹄粉'),(2,'牛肉'),(3,'果蔬'),(4,'鸡肉'),(5,'香米'),(6,'葛根粉');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indent`
--

DROP TABLE IF EXISTS `indent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL COMMENT '总价',
  `amount` int(11) DEFAULT NULL COMMENT '商品总数',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态(1未处理/2已处理)',
  `systime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '下单时间',
  `user_id` int(11) DEFAULT NULL COMMENT '下单用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indent`
--

LOCK TABLES `indent` WRITE;
/*!40000 ALTER TABLE `indent` DISABLE KEYS */;
INSERT INTO `indent` VALUES (11,36,3,2,'2016-04-22 13:16:37',1),(12,42,4,1,'2016-04-22 16:11:34',1),(13,12,1,1,'2016-04-23 02:13:21',5),(14,57,6,1,'2016-04-23 14:40:10',7),(15,12,2,1,'2016-05-11 11:01:39',1);
/*!40000 ALTER TABLE `indent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL COMMENT '购买时价格',
  `amount` int(11) DEFAULT NULL COMMENT '数量',
  `indent_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,96.51,1,1,16),(2,566.98,1,1,17),(3,6899.99,1,2,1),(4,8161.61,1,2,2),(5,79.99,1,3,12),(6,96.51,1,3,16),(7,96.51,7,4,16),(8,98.54,2,5,15),(9,98.54,64,6,15),(10,98.54,3,7,15),(11,98.54,5,8,15),(12,350.88,9,8,4),(13,60,1,9,33),(14,26,12,10,36),(15,9,4,10,24),(16,6,1,10,28),(17,12,3,11,37),(18,12,2,12,37),(19,9,2,12,24),(20,12,1,13,37),(21,9,5,14,24),(22,12,1,14,20),(23,6,2,15,23);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `price` float DEFAULT NULL COMMENT '价格',
  `intro` varchar(255) DEFAULT NULL COMMENT '介绍',
  `category_id` int(11) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (18,'生菜','picture/16051100007.jpg',4,'生态有机',3),(20,'笋子','picture/16051147046.png',12,'绿色健康',3),(21,'茄子','picture/16051126670.png',5,'绿色健康',3),(22,'辣椒','picture/16051117408.png',5,'绿色健康',3),(23,'姜','picture/16051159000.png',6,'绿色健康',3),(24,'香菜','picture/16051149886.png',9,'绿色健康',3),(25,'白菜','picture/16051142898.png',5,'绿色健康',3),(26,'大蒜','picture/16051134471.png',10,'绿色健康',3),(27,'黄瓜','picture/16051112636.png',4,'绿色健康',3),(28,'番茄','picture/16051103982.png',6,'绿色健康',3),(29,'卷心菜','picture/16051148161.png',9,'绿色健康',3),(30,'红萝卜','picture/16051139516.png',8,'绿色健康',3),(31,'袋装葛根粉','picture/16051130561.jpg',28,'纯天然',6),(32,'抽装葛根粉','picture/16051117332.jpg',115,'纯天然',6),(33,'香米','picture/16051102627.jpg',60,'无污染',5),(34,'香米','picture/16051153247.jpg',3.3,'无污染',5),(35,'马蹄粉','picture/16051130690.jpg',26,'纯天然',1),(36,'马蹄粉','picture/16051112645.jpg',26,'纯天然',1),(37,'香橙','picture/16051100154.png',12,'绿色健康',3),(39,'牛肉','picture/16051147775.jpg',38,'生态有机',2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_new`
--

DROP TABLE IF EXISTS `product_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_new`
--

LOCK TABLES `product_new` WRITE;
/*!40000 ALTER TABLE `product_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sale`
--

DROP TABLE IF EXISTS `product_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `discount` tinyint(4) DEFAULT '100' COMMENT '折扣(x%)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sale`
--

LOCK TABLES `product_sale` WRITE;
/*!40000 ALTER TABLE `product_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_show`
--

DROP TABLE IF EXISTS `product_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `showtext` varchar(255) DEFAULT NULL COMMENT '展示图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_show`
--

LOCK TABLES `product_show` WRITE;
/*!40000 ALTER TABLE `product_show` DISABLE KEYS */;
INSERT INTO `product_show` VALUES (9,18,''),(10,23,''),(11,26,''),(12,21,''),(13,22,''),(14,37,''),(15,28,''),(16,24,'');
/*!40000 ALTER TABLE `product_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1','iUOoOdMAl7FsB1Kig37hmg==','12312341234','北京北京北京'),(2,'2','PtOuzQiwKH0OG5RE4CMWzQ==','',''),(3,'3','NjjgOp1OACitB8VC4USUuA==',NULL,''),(4,'flowke','iUOoOdMAl7FsB1Kig37hmg==','辽宁','18011111111'),(5,'5','02a1tlHsEtht3kgi24sRlA==','5','5'),(6,'34','an4Pm/WSv+O+lqPNl2w/cA==','',''),(7,'aaa','iUOoOdMAl7FsB1Kig37hmg==','北京','18012345678');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-11 19:08:38
