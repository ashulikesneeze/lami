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
-- Table structure for table `small_category`
--

DROP TABLE IF EXISTS `small_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `small_category` (
  `sm_cat_id` int NOT NULL AUTO_INCREMENT,
  `sm_cat_name` varchar(100) DEFAULT NULL,
  `sm_mid_cat_id` int DEFAULT NULL,
  `sm_count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`sm_cat_id`),
  KEY `FK_middle_category_TO_small_category_1` (`sm_mid_cat_id`),
  CONSTRAINT `FK_middle_category_TO_small_category_1` FOREIGN KEY (`sm_mid_cat_id`) REFERENCES `middle_category` (`mid_cat_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `small_category`
--

LOCK TABLES `small_category` WRITE;
/*!40000 ALTER TABLE `small_category` DISABLE KEYS */;
INSERT INTO `small_category` VALUES (1,'Docs',5,0),(2,'etc',5,0),(3,'food',5,0),(4,'Herrogate',5,0),(5,'Ibiza',5,0),(6,'Pharmacy',5,2),(7,'Bdays',6,0),(8,'Daddy\'s 70th Bday',6,0),(9,'Japen',6,0),(10,'Manchester Paris',6,0),(11,'나들이',6,0),(12,'어린이대공원',6,0),(13,'장자못공원',6,0),(14,'집콕',6,0),(15,'Bonnaroo',7,2),(16,'Busan',7,2),(17,'camp with 귀희',7,0),(18,'Canada with Casey',7,0),(19,'Thai with Casey',7,5),(20,'THai with Eva',7,5),(21,'with Daddy',7,2),(22,'normal day',10,0),(23,'perhaps special day',10,0),(24,'다같이',13,0),(25,'성민 ',13,4),(26,'승민',13,2),(27,'예원',13,0),(28,'pals',18,0),(29,'경진&현주',18,0),(30,'귀남&은숙',18,0),(31,'귀희&류아',18,0),(32,'세영',18,0),(33,'은비',18,0),(34,'인환',18,0),(35,'혜은&미숙\'s fam',18,0),(36,'bros',20,0),(37,'mom&dad',20,0),(38,'nephews&niece',20,0),(39,'G4',30,0),(40,'others',30,0),(41,'Woody&Clint',30,0),(42,'here&there',34,0),(43,'homecook',34,0),(44,'Spain Club&sushi,Thai',34,0),(45,'을지감성',34,0),(46,'Camping1',36,0),(47,'Camping2',36,0),(48,'You&I',36,0),(49,'2021.3',42,0),(50,'2021.4',42,0),(51,'2021.5',42,0),(52,'2021.6',42,0),(53,'2021.7',42,0),(54,'2021.8',42,0),(55,'2021.9',42,0),(56,'2021.10',42,0),(57,'2021.11',42,0),(58,'2021.12',42,0),(59,'2022.1',42,0),(60,'2022.2',42,0),(61,'baby boss meeting',42,0),(62,'hiking',43,0),(63,'home-part1',43,0),(64,'home-part2',43,0),(65,'home-part3',43,0),(66,'home-part4',43,0),(67,'아빠와 나들이',43,0),(68,'take1',53,0),(69,'take2',53,0),(70,'take3',53,0),(71,'take4',53,0);
/*!40000 ALTER TABLE `small_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-17 11:58:03
