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
-- Table structure for table `small2_category`
--

DROP TABLE IF EXISTS `small2_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `small2_category` (
  `sm2_cat_id` int NOT NULL AUTO_INCREMENT,
  `sm2_cat_name` varchar(100) DEFAULT NULL,
  `sm2_sm_cat_id` int DEFAULT NULL,
  `sm2_count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`sm2_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `small2_category`
--

LOCK TABLES `small2_category` WRITE;
/*!40000 ALTER TABLE `small2_category` DISABLE KEYS */;
INSERT INTO `small2_category` VALUES (1,'party',6,1),(2,'Pharmacy Ball',6,3),(3,'Bonnaroo-On',15,0),(4,'wedding&post-Bonnaroo',15,0),(5,'food',16,0),(6,'museum DANAWA',16,0),(7,'Avata Hotel',19,0),(8,'Krabi',19,0),(9,'Phi Phi Island',19,0),(10,'Phuket',19,0),(11,'Railay Beach',19,0),(12,'Bangkok',20,0),(13,'boat tour',20,0),(14,'food & massage',20,0),(15,'Krabi Beach',20,0),(16,'scenery',20,0),(17,'cambodia-Siem Reap',21,1),(18,'Vietnam',21,3),(19,'성민아가아가',25,0),(20,'성민아장아장',25,0),(21,'성민유치원',25,0),(22,'성민저초딩',25,0),(23,'베뷔승민',26,0),(24,'아장아장승민',26,0);
/*!40000 ALTER TABLE `small2_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-17 11:58:02
