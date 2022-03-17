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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `me_id` varchar(20) NOT NULL,
  `me_pw` varchar(250) NOT NULL,
  `me_name` varchar(50) NOT NULL,
  `me_gender` varchar(6) DEFAULT NULL,
  `me_birth` date DEFAULT NULL,
  `me_address` varchar(100) DEFAULT NULL,
  `me_phone` varchar(13) DEFAULT NULL,
  `me_email` varchar(100) NOT NULL,
  `me_authority` varchar(10) NOT NULL DEFAULT 'member',
  `me_created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `me_modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `me_active_inactive` int NOT NULL DEFAULT '0',
  `me_session_id` varchar(45) DEFAULT NULL,
  `me_session_limit` datetime DEFAULT NULL,
  `me_sub_address` varchar(50) DEFAULT NULL,
  `me_postcode` int DEFAULT NULL,
  `me_last_visit` datetime DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `me_id_UNIQUE` (`me_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('ashu12','$2a$10$84wFh1k.RZaciSaGPODD3.CdsDTOblD0tdSl7HYEcjUG9GshmQ5Lu','ashu lee','여성','1981-01-27','충북 청주시 서원구 신성화로 8','010-5688-6275','ashu12@daum.net','member','2022-02-18 11:47:13','2022-02-18 11:47:13',0,NULL,NULL,'306-601',28639,'2022-02-18 11:47:13'),('Lami21','$2a$10$1/gF7qk37WdKf7uZCblJOeZ3VNhip35SFBl6UhuC6L.y8kGnTM5EW','Lami Hyma','여성','2020-06-18','충북 청주시 서원구 성화동 616 306-601 306-601 306-601 306-601','010-5688-6275','ashu12@daum.net','member','2022-03-02 11:26:48','2022-03-02 11:26:48',0,NULL,NULL,'306-601',28639,'2022-03-02 11:26:48');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-17  9:39:58
