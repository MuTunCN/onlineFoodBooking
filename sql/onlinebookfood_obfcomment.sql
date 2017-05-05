-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinebookfood
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `obfcomment`
--

DROP TABLE IF EXISTS `obfcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obfcomment` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_u_id` int(11) DEFAULT NULL COMMENT '用户外键',
  `co_o_id` int(11) DEFAULT NULL COMMENT '订单外键',
  `co_content` varchar(100) DEFAULT '' COMMENT '评论内容',
  `co_date` varchar(50) DEFAULT '' COMMENT '日期',
  `co_point` int(11) DEFAULT '0' COMMENT '评价分数',
  PRIMARY KEY (`co_id`),
  KEY `co_u_id` (`co_u_id`),
  KEY `co_o_id` (`co_o_id`),
  CONSTRAINT `obfcomment_ibfk_2` FOREIGN KEY (`co_o_id`) REFERENCES `obforder` (`o_id`),
  CONSTRAINT `obfcomment_ibfk_3` FOREIGN KEY (`co_u_id`) REFERENCES `obfuser` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obfcomment`
--

LOCK TABLES `obfcomment` WRITE;
/*!40000 ALTER TABLE `obfcomment` DISABLE KEYS */;
INSERT INTO `obfcomment` VALUES (3,3,10,'不错','2016年10月2日18时46分',5),(4,3,11,'太贵了 又太咸','2016年10月2日19时34分',1),(5,3,12,'还不错','2016年10月4日14时54分',4),(6,10,13,'一般般','2016年10月5日10时39分',3);
/*!40000 ALTER TABLE `obfcomment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-31 13:26:05
