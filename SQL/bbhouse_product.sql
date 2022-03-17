CREATE DATABASE  IF NOT EXISTS `bbhouse` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bbhouse`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: bbhouse
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pro_id` int NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(250) DEFAULT NULL,
  `pro_details` longtext,
  `pro_status` int NOT NULL DEFAULT '0',
  `pro_price` int DEFAULT NULL,
  `pro_count` int DEFAULT NULL,
  `pro_box_count` int DEFAULT NULL,
  `pro_created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `pro_modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `pro_cat_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`pro_id`),
  KEY `pro_cat_id_idx` (`pro_cat_id`),
  CONSTRAINT `pro_cat_id` FOREIGN KEY (`pro_cat_id`) REFERENCES `category` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'/ashu/Don\'t wake me up/','/ashu/Don\'t wake me up/',0,NULL,NULL,NULL,'2022-03-17 09:51:43','2022-03-17 09:51:43',7),(3,'/ashu/foodie/','/ashu/foodie/',0,NULL,NULL,NULL,'2022-03-17 09:53:36','2022-03-17 09:53:36',21),(4,'/ashu/Gangnam/','/ashu/Gangnam/',0,NULL,NULL,NULL,'2022-03-17 09:53:37','2022-03-17 09:53:37',22),(5,'/ashu/HikingCamping/','/ashu/HikingCamping/',0,NULL,NULL,NULL,'2022-03-17 09:53:37','2022-03-17 09:53:37',8),(6,'/ashu/holiday/Bonnaroo/Bonnaroo-On/','/ashu/holiday/Bonnaroo/Bonnaroo-On/',0,NULL,NULL,NULL,'2022-03-17 09:53:37','2022-03-17 09:53:37',138),(7,'/ashu/holiday/Bonnaroo/wedding&post-Bonnaroo/','/ashu/holiday/Bonnaroo/wedding&post-Bonnaroo/',0,NULL,NULL,NULL,'2022-03-17 09:53:38','2022-03-17 09:53:38',137),(8,'/ashu/holiday/Busan/food/','/ashu/holiday/Busan/food/',0,NULL,NULL,NULL,'2022-03-17 09:53:38','2022-03-17 09:53:38',140),(9,'/ashu/holiday/Busan/museum DANAWA/','/ashu/holiday/Busan/museum DANAWA/',0,NULL,NULL,NULL,'2022-03-17 09:53:39','2022-03-17 09:53:39',139),(10,'/ashu/Itaewon/','/ashu/Itaewon/',0,NULL,NULL,NULL,'2022-03-17 09:53:41','2022-03-17 09:53:41',20),(11,'/ashu/Jong-ro/','/ashu/Jong-ro/',0,NULL,NULL,NULL,'2022-03-17 09:53:41','2022-03-17 09:53:41',23),(12,'/ashu/myself/','/ashu/myself/',0,NULL,NULL,NULL,'2022-03-17 09:53:41','2022-03-17 09:53:41',14),(13,'/ashu/nephews/다같이/','/ashu/nephews/다같이/',0,NULL,NULL,NULL,'2022-03-17 09:53:42','2022-03-17 09:53:42',87),(14,'/ashu/nephews/승민/아장아장승민/','/ashu/nephews/승민/아장아장승민/',0,NULL,NULL,NULL,'2022-03-17 09:53:42','2022-03-17 09:53:42',157),(15,'/ashu/nephews/예원/','/ashu/nephews/예원/',0,NULL,NULL,NULL,'2022-03-17 09:53:43','2022-03-17 09:53:43',90),(16,'/ashu/pals/pals/','/ashu/pals/pals/',0,NULL,NULL,NULL,'2022-03-17 09:53:43','2022-03-17 09:53:43',91),(17,'/ashu/pals/경진&현주/','/ashu/pals/경진&현주/',0,NULL,NULL,NULL,'2022-03-17 09:53:44','2022-03-17 09:53:44',92),(18,'/ashu/pals/귀남&은숙/','/ashu/pals/귀남&은숙/',0,NULL,NULL,NULL,'2022-03-17 09:53:45','2022-03-17 09:53:45',93),(19,'/ashu/pals/귀희&류아/','/ashu/pals/귀희&류아/',0,NULL,NULL,NULL,'2022-03-17 09:53:46','2022-03-17 09:53:46',94),(20,'/ashu/pals/세영/','/ashu/pals/세영/',0,NULL,NULL,NULL,'2022-03-17 09:53:47','2022-03-17 09:53:47',95),(21,'/ashu/pals/은비/','/ashu/pals/은비/',0,NULL,NULL,NULL,'2022-03-17 09:53:48','2022-03-17 09:53:48',96),(22,'/ashu/pals/인환/','/ashu/pals/인환/',0,NULL,NULL,NULL,'2022-03-17 09:53:48','2022-03-17 09:53:48',97),(23,'/ashu/pals/혜은&미숙\'s fam/','/ashu/pals/혜은&미숙\'s fam/',0,NULL,NULL,NULL,'2022-03-17 09:53:50','2022-03-17 09:53:50',98),(24,'/ashu/Post-marrige/','/ashu/Post-marrige/',0,NULL,NULL,NULL,'2022-03-17 09:53:51','2022-03-17 09:53:51',10),(25,'/ashu/pregnant Ashu/','/ashu/pregnant Ashu/',0,NULL,NULL,NULL,'2022-03-17 09:53:51','2022-03-17 09:53:51',15),(26,'/ashu/selfie/','/ashu/selfie/',0,NULL,NULL,NULL,'2022-03-17 09:53:51','2022-03-17 09:53:51',18),(27,'/ashu/trip/','/ashu/trip/',0,NULL,NULL,NULL,'2022-03-17 09:53:51','2022-03-17 09:53:51',25),(28,'/ashu/uk/docs/','/ashu/uk/docs/',0,NULL,NULL,NULL,'2022-03-17 09:53:52','2022-03-17 09:53:52',64),(29,'/ashu/uk/etc/','/ashu/uk/etc/',0,NULL,NULL,NULL,'2022-03-17 09:53:53','2022-03-17 09:53:53',65),(30,'/ashu/uk/food/','/ashu/uk/food/',0,NULL,NULL,NULL,'2022-03-17 09:53:54','2022-03-17 09:53:54',66),(31,'/ashu/uk/Herrogate/','/ashu/uk/Herrogate/',0,NULL,NULL,NULL,'2022-03-17 09:53:55','2022-03-17 09:53:55',67),(32,'/ashu/uk/Ibiza/','/ashu/uk/Ibiza/',0,NULL,NULL,NULL,'2022-03-17 09:53:55','2022-03-17 09:53:55',68),(33,'/ashu/UK Ashu/perhaps special day/','/ashu/UK Ashu/perhaps special day/',0,NULL,NULL,NULL,'2022-03-17 09:53:55','2022-03-17 09:53:55',86),(34,'/Casey/CanadaFam/mom&dad/','/Casey/CanadaFam/mom&dad/',0,NULL,NULL,NULL,'2022-03-17 09:53:56','2022-03-17 09:53:56',100),(35,'/Casey/film star/','/Casey/film star/',0,NULL,NULL,NULL,'2022-03-17 09:53:56','2022-03-17 09:53:56',37),(36,'/Casey/part1/','/Casey/part1/',0,NULL,NULL,NULL,'2022-03-17 09:53:56','2022-03-17 09:53:56',27),(37,'/Casey/part2/','/Casey/part2/',0,NULL,NULL,NULL,'2022-03-17 09:53:57','2022-03-17 09:53:57',28),(38,'/Casey/part3/','/Casey/part3/',0,NULL,NULL,NULL,'2022-03-17 09:53:57','2022-03-17 09:53:57',29),(39,'/Casey/part4/','/Casey/part4/',0,NULL,NULL,NULL,'2022-03-17 09:53:57','2022-03-17 09:53:57',30),(40,'/Casey/part5/','/Casey/part5/',0,NULL,NULL,NULL,'2022-03-17 09:53:57','2022-03-17 09:53:57',31),(41,'/Casey/part6/','/Casey/part6/',0,NULL,NULL,NULL,'2022-03-17 09:53:58','2022-03-17 09:53:58',32),(42,'/Casey/part7/','/Casey/part7/',0,NULL,NULL,NULL,'2022-03-17 09:53:58','2022-03-17 09:53:58',33),(43,'/Casey/this is the way you make a dough/','/Casey/this is the way you make a dough/',0,NULL,NULL,NULL,'2022-03-17 09:53:58','2022-03-17 09:53:58',34),(44,'/Casey/Young Casey/','/Casey/Young Casey/',0,NULL,NULL,NULL,'2022-03-17 09:53:58','2022-03-17 09:53:58',35),(45,'/events/Christmas/','/events/Christmas/',0,NULL,NULL,NULL,'2022-03-17 09:53:59','2022-03-17 09:53:59',39),(46,'/events/food/here&there/','/events/food/here&there/',0,NULL,NULL,NULL,'2022-03-17 09:53:59','2022-03-17 09:53:59',105),(47,'/events/food/homecook/','/events/food/homecook/',0,NULL,NULL,NULL,'2022-03-17 09:53:59','2022-03-17 09:53:59',106),(48,'/events/food/을지감성/','/events/food/을지감성/',0,NULL,NULL,NULL,'2022-03-17 09:53:59','2022-03-17 09:53:59',108),(49,'/events/New Year/','/events/New Year/',0,NULL,NULL,NULL,'2022-03-17 09:54:00','2022-03-17 09:54:00',41),(50,'/Lami/1st Bday/','/Lami/1st Bday/',0,NULL,NULL,NULL,'2022-03-17 09:54:00','2022-03-17 09:54:00',43),(51,'/Lami/Daddy drinks because you cry/','/Lami/Daddy drinks because you cry/',0,NULL,NULL,NULL,'2022-03-17 09:54:01','2022-03-17 09:54:01',44),(52,'/Lami/Daycare/2021.10/','/Lami/Daycare/2021.10/',0,NULL,NULL,NULL,'2022-03-17 09:54:01','2022-03-17 09:54:01',119),(53,'/Lami/Daycare/2021.11/','/Lami/Daycare/2021.11/',0,NULL,NULL,NULL,'2022-03-17 09:54:02','2022-03-17 09:54:02',120),(54,'/Lami/Daycare/2021.12/','/Lami/Daycare/2021.12/',0,NULL,NULL,NULL,'2022-03-17 09:54:03','2022-03-17 09:54:03',121),(55,'/Lami/Daycare/2021.3/','/Lami/Daycare/2021.3/',0,NULL,NULL,NULL,'2022-03-17 09:54:04','2022-03-17 09:54:04',112),(56,'/Lami/Daycare/2021.4/','/Lami/Daycare/2021.4/',0,NULL,NULL,NULL,'2022-03-17 09:54:05','2022-03-17 09:54:05',113),(57,'/Lami/Daycare/2021.5/','/Lami/Daycare/2021.5/',0,NULL,NULL,NULL,'2022-03-17 09:54:05','2022-03-17 09:54:05',114),(58,'/Lami/Daycare/2021.6/','/Lami/Daycare/2021.6/',0,NULL,NULL,NULL,'2022-03-17 09:54:06','2022-03-17 09:54:06',115),(59,'/Lami/Daycare/2021.7/','/Lami/Daycare/2021.7/',0,NULL,NULL,NULL,'2022-03-17 09:54:07','2022-03-17 09:54:07',116),(60,'/Lami/Daycare/2021.8/','/Lami/Daycare/2021.8/',0,NULL,NULL,NULL,'2022-03-17 09:54:07','2022-03-17 09:54:07',117),(61,'/Lami/Daycare/2021.9/','/Lami/Daycare/2021.9/',0,NULL,NULL,NULL,'2022-03-17 09:54:08','2022-03-17 09:54:08',118),(62,'/Lami/Daycare/2022.1/','/Lami/Daycare/2022.1/',0,NULL,NULL,NULL,'2022-03-17 09:54:08','2022-03-17 09:54:08',122),(63,'/Lami/Daycare/2022.2/','/Lami/Daycare/2022.2/',0,NULL,NULL,NULL,'2022-03-17 09:54:10','2022-03-17 09:54:10',123),(64,'/Lami/Daycare/baby boss meeting/','/Lami/Daycare/baby boss meeting/',0,NULL,NULL,NULL,'2022-03-17 09:54:11','2022-03-17 09:54:11',124),(65,'/Lami/funny you/','/Lami/funny you/',0,NULL,NULL,NULL,'2022-03-17 09:54:11','2022-03-17 09:54:11',58),(66,'/Lami/Lami loves bath/','/Lami/Lami loves bath/',0,NULL,NULL,NULL,'2022-03-17 09:54:11','2022-03-17 09:54:11',45),(67,'/Lami/when she became a toddler/','/Lami/when she became a toddler/',0,NULL,NULL,NULL,'2022-03-17 09:54:12','2022-03-17 09:54:12',56),(68,'/Lami/when she could crawl/','/Lami/when she could crawl/',0,NULL,NULL,NULL,'2022-03-17 09:54:13','2022-03-17 09:54:13',61),(69,'/Lami/when she could sit down/','/Lami/when she could sit down/',0,NULL,NULL,NULL,'2022-03-17 09:54:13','2022-03-17 09:54:13',52),(70,'/Lami/when she was tiny/','/Lami/when she was tiny/',0,NULL,NULL,NULL,'2022-03-17 09:54:14','2022-03-17 09:54:14',62),(71,'/Lami/with cousins/','/Lami/with cousins/',0,NULL,NULL,NULL,'2022-03-17 09:54:15','2022-03-17 09:54:15',53),(72,'/Lami/옹알이&유모차/','/Lami/옹알이&유모차/',0,NULL,NULL,NULL,'2022-03-17 09:54:16','2022-03-17 09:54:16',63),(73,'/UsFam/','/UsFam/',0,NULL,NULL,NULL,'2022-03-17 09:54:16','2022-03-17 09:54:16',2),(74,'/UsFam/withCasey/Camping1/','/UsFam/withCasey/Camping1/',0,NULL,NULL,NULL,'2022-03-17 09:54:17','2022-03-17 09:54:17',109),(75,'/UsFam/withCasey/Camping2/','/UsFam/withCasey/Camping2/',0,NULL,NULL,NULL,'2022-03-17 09:54:17','2022-03-17 09:54:17',110),(76,'/UsFam/withCasey/You&I/','/UsFam/withCasey/You&I/',0,NULL,NULL,NULL,'2022-03-17 09:54:17','2022-03-17 09:54:17',111);
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

-- Dump completed on 2022-03-17 11:58:01
