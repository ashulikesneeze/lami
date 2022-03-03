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
-- Table structure for table `middle_category`
--

DROP TABLE IF EXISTS `middle_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `middle_category` (
  `mid_cat_id` int NOT NULL AUTO_INCREMENT,
  `mid_cat_name` varchar(100) NOT NULL,
  `mid_ma_cat_id` int NOT NULL,
  `mid_count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid_cat_id`),
  KEY `FK_main_category_TO_middle_category_1` (`mid_ma_cat_id`),
  CONSTRAINT `FK_main_category_TO_middle_category_1` FOREIGN KEY (`mid_ma_cat_id`) REFERENCES `main_category` (`ma_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `middle_category`
--

LOCK TABLES `middle_category` WRITE;
/*!40000 ALTER TABLE `middle_category` DISABLE KEYS */;
INSERT INTO `middle_category` VALUES (1,'Don\'t wake me up',3,0),(2,'HikingCamping',3,0),(3,'Mommy-life',3,0),(4,'Post-marrige',3,0),(5,'UK',3,6),(6,'Family',3,0),(7,'Holiday',3,0),(8,'Myself',3,0),(9,'pregnant Ashu',3,0),(10,'UK Ashu',3,0),(11,'my pet 찡구',3,0),(12,'selfie',3,0),(13,'nephews',3,0),(14,'Itaewon',3,0),(15,'foodie',3,0),(16,'Gangnam',3,0),(17,'Jong-ro',3,0),(18,'pals',3,0),(19,'trip',3,0),(21,'CanadaFam',4,0),(22,'part1',4,0),(23,'part2',4,0),(24,'part3',4,0),(25,'part4',4,0),(26,'part5',4,0),(27,'part6',4,0),(28,'part7',4,0),(29,'this is the way you make a dough',4,0),(30,'young Casey',4,0),(31,'casey with pals',4,0),(32,'film star',4,0),(33,'tough guy ',4,0),(34,'Christmas',1,0),(35,'food',1,0),(36,'New Year',1,0),(40,'withCasey',2,0),(41,'1st Bday',5,0),(42,'Daddy drinks because you cry',5,0),(43,'Lami loves bath',5,0),(44,'musician Lami',5,0),(45,'approx 3 to 6 months',5,0),(46,'Daycare',5,0),(47,'Lami with Daddy',5,0),(48,'piglet LAmi oink',5,0),(49,'videos',5,0),(50,'when she could sit down',5,0),(51,'with cousins',5,0),(52,'with sis&bro',5,0),(53,'when she was born 2020.6.18',5,0),(54,'when she became a toddler',5,0),(55,'on a baby walker',5,0),(56,'funny you',5,0),(57,'Lami with mommy',5,0),(58,'play play play',5,0),(59,'when she could crawl',5,0),(60,'when she was tiny',5,0),(61,'옹알이&유모차',5,0);
/*!40000 ALTER TABLE `middle_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-03 15:25:50
