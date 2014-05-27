CREATE DATABASE  IF NOT EXISTS `trainerdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `trainerdb`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: trainerdb
-- ------------------------------------------------------
-- Server version	5.6.17

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
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('aity','computer');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'NIKE'),(2,'ADIDAS'),(3,'REEBOK'),(4,'UMBRO');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Jeannie','Ammadedon','yenrowo@gmail.com','computer','07778955893','67 sandy lane','Bromley','United Kingdom'),(5,'Itoro','Udoh','aitycool@yahoo.com','cool','07778955893','46 dhelock lane','london','United Kingdom'),(6,'Paul','Udoh','paulo2excel@yahoo.com','paulo','07035527179','34 Canons park','Bradford','United Kingdom');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` decimal(6,2) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `confirmation_number` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_customer_order_customer1_idx` (`customer_id`),
  CONSTRAINT `fk_customer_order_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` VALUES (1,106.24,'2014-04-21 19:55:49',40268350,1),(2,336.29,'2014-04-22 11:03:15',83811122,1),(3,125.43,'2014-04-23 09:11:18',602117997,5),(4,125.43,'2014-04-23 09:13:51',122670565,5),(5,125.43,'2014-04-23 09:15:21',53927849,5),(6,125.43,'2014-04-23 09:15:27',288452868,5),(7,125.43,'2014-04-23 09:20:09',575912259,5),(8,125.43,'2014-04-23 09:23:25',913333122,5),(9,125.43,'2014-04-23 09:29:24',427687139,5),(10,125.43,'2014-04-23 09:33:43',824740529,5),(11,125.43,'2014-04-23 09:34:46',337315089,5),(12,125.43,'2014-04-23 09:36:07',512136760,5),(13,125.43,'2014-04-23 09:36:13',763864125,5),(14,125.43,'2014-04-23 09:36:27',846702447,5),(15,125.43,'2014-04-23 09:38:27',232280843,5),(16,125.43,'2014-04-23 09:38:47',110829893,5),(17,125.43,'2014-04-23 09:39:43',846880155,5),(18,125.43,'2014-04-23 09:41:42',414774750,5),(19,125.43,'2014-04-23 09:42:24',95915082,5),(20,125.43,'2014-04-23 09:46:15',950401470,5),(21,125.43,'2014-04-23 09:47:39',377006611,5),(22,125.43,'2014-04-23 09:48:37',915396865,5),(23,125.43,'2014-04-23 09:49:26',301670631,5),(24,125.43,'2014-04-23 09:52:00',896593488,5),(25,125.43,'2014-04-23 09:52:26',682628462,5),(26,125.43,'2014-04-23 09:56:32',729184126,5),(27,125.43,'2014-04-23 10:01:08',254996031,5),(28,125.43,'2014-04-23 10:02:01',390659413,5),(29,125.43,'2014-04-23 10:17:13',68174169,5),(30,125.43,'2014-04-23 10:17:24',63208498,5),(31,125.43,'2014-04-23 10:20:55',787617215,5),(32,125.43,'2014-04-23 10:23:19',638904742,5),(33,125.43,'2014-04-23 10:26:11',833513325,5),(34,125.43,'2014-04-23 10:26:57',654984836,5),(35,125.43,'2014-04-23 10:42:55',708306089,5),(36,125.43,'2014-04-23 10:43:29',545984642,5),(37,125.43,'2014-04-23 10:44:42',40014831,5),(38,125.43,'2014-04-23 10:45:23',957975211,5),(39,125.43,'2014-04-23 10:46:04',188153565,5),(40,125.43,'2014-04-23 10:46:34',365366667,5),(41,125.43,'2014-04-23 10:49:54',758089816,5),(42,125.43,'2014-04-23 11:44:15',844477398,5),(43,302.21,'2014-04-25 00:33:21',763469052,5),(44,216.32,'2014-05-01 00:41:27',72225830,5),(45,125.43,'2014-05-01 00:54:09',971909644,5),(46,216.32,'2014-05-06 10:49:49',313021373,5),(47,106.24,'2014-05-11 09:23:26',987974612,5),(48,110.54,'2014-05-11 09:27:49',694490496,5),(49,125.43,'2014-05-11 09:43:14',385229248,5),(50,106.24,'2014-05-12 12:57:38',493703337,5);
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordered_product`
--

DROP TABLE IF EXISTS `ordered_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordered_product` (
  `customer_order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `quantity` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`customer_order_id`,`product_id`),
  KEY `fk_customer_order_has_product_product1_idx` (`product_id`),
  KEY `fk_customer_order_has_product_customer_order1_idx` (`customer_order_id`),
  CONSTRAINT `fk_ordered_product_customer_order` FOREIGN KEY (`customer_order_id`) REFERENCES `customer_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordered_product_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordered_product`
--

LOCK TABLES `ordered_product` WRITE;
/*!40000 ALTER TABLE `ordered_product` DISABLE KEYS */;
INSERT INTO `ordered_product` VALUES (1,9,1),(2,3,1),(2,14,2),(3,8,1),(4,8,1),(5,8,1),(6,8,1),(7,8,1),(8,8,1),(9,8,1),(10,8,1),(11,8,1),(12,8,1),(13,8,1),(14,8,1),(15,8,1),(16,8,1),(17,8,1),(18,8,1),(19,8,1),(20,8,1),(21,8,1),(22,8,1),(23,8,1),(24,8,1),(25,8,1),(26,8,1),(27,8,1),(28,8,1),(29,8,1),(30,8,1),(31,8,1),(32,8,1),(33,8,1),(34,8,1),(35,8,1),(36,8,1),(37,8,1),(38,8,1),(39,8,1),(40,8,1),(41,8,1),(42,8,1),(43,8,1),(43,12,1),(43,15,1),(44,2,3),(45,8,1),(46,2,3),(47,9,1),(48,12,1),(49,8,1),(50,9,1);
/*!40000 ALTER TABLE `ordered_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `description` tinytext,
  `quantity_available` tinyint(4) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_category_idx` (`category_id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Adidas Beckenbaur',76.00,'Adiddas Product',12,'2014-04-16 17:51:28',2),(2,'Adidas Climax Cool Chill',65.44,'Adiddas Product',7,'2014-04-16 09:36:57',2),(3,'Adidas Gazelle',105.43,'Adiddas Product',11,'2014-04-16 09:36:57',2),(4,'Adidas Lin Redy 4',86.24,'Adiddas Product',5,'2014-04-16 09:36:57',2),(5,'Adidas Marathon',35.99,'Adiddas Product',10,'2014-04-16 09:36:57',2),(6,'Adidas Scorpio',90.54,'Adiddas Product',9,'2014-04-16 09:37:14',2),(7,'Nike Air Max Preview',65.44,'Nike Product',7,'2014-04-16 09:44:48',1),(8,'Nike Air Max Skyline',105.43,'Nike Product',11,'2014-04-16 09:44:48',1),(9,'Nike HyperDunk',86.24,'Nike Product',5,'2014-04-16 09:44:48',1),(10,'Nike Shox Turbo IX',35.99,'Nike Product',10,'2014-04-16 09:44:48',1),(11,'Nike Zoom Hyperfuse',90.54,'Nike Product',9,'2014-04-16 09:44:48',1),(12,'Nike Thumb',90.54,'Nike Product',9,'2014-04-16 09:44:48',1),(13,'Reebok Workout',65.44,'Reebok Product',7,'2014-04-16 10:07:23',3),(14,'Reebok Aubergine',105.43,'Reebok Product',11,'2014-04-16 09:52:48',3),(15,'Reebok Ultralite',86.24,'Reebok Product',5,'2014-04-16 09:52:48',3),(16,'Reebok Exofit',35.99,'Reebok Product',10,'2014-04-16 09:52:48',3),(17,'Reebok Pastel',90.54,'Reebok Product',9,'2014-04-16 09:52:48',3),(18,'Reebok Retro',90.54,'Reebok Product',11,'2014-04-16 09:52:48',3),(19,'Umbro Denstone',65.44,'Umbro Product',7,'2014-04-16 10:00:44',4),(20,'Umbro Diamond',105.43,'Umbro Product',11,'2014-04-16 10:00:44',4),(21,'Umbro Hue',86.24,'Umbro Product',5,'2014-04-16 10:00:44',4),(22,'Umbro Sodry',35.99,'Umbro Product',10,'2014-04-16 10:00:44',4),(23,'Umbro Stadio',90.54,'Umbro Product',9,'2014-04-16 10:00:44',4),(24,'Umbro Velcro',90.54,'Umbro Product',11,'2014-04-16 10:00:44',4),(25,'Nike Air Safari',88.54,'Nike Product',4,'2014-05-12 20:41:45',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-22 23:50:59
