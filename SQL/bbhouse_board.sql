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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `qa_id` int NOT NULL AUTO_INCREMENT,
  `qa_title` varchar(100) NOT NULL,
  `qa_contents` longtext,
  `qa_del` varchar(1) DEFAULT NULL,
  `qa_del_date` datetime DEFAULT NULL,
  `qa_type` varchar(10) NOT NULL DEFAULT 'qna',
  `qa_created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `qa_modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `qa_secret_yn` varchar(1) NOT NULL DEFAULT 'n',
  `qa_me_id` varchar(20) NOT NULL,
  `qa_pro_id` int DEFAULT NULL,
  `qa_ori_id` int DEFAULT NULL,
  PRIMARY KEY (`qa_id`),
  KEY `FK_member_TO_Q&A_1` (`qa_me_id`),
  KEY `FK_product_TO_Q&A_1` (`qa_pro_id`),
  CONSTRAINT `FK_member_TO_Q&A_1` FOREIGN KEY (`qa_me_id`) REFERENCES `member` (`me_id`),
  CONSTRAINT `FK_product_TO_Q&A_1` FOREIGN KEY (`qa_pro_id`) REFERENCES `product` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'배송안내','<p>산간/제주지역</p>','Y','2022-02-23 16:29:46','general','2022-02-23 12:36:48','2022-02-23 16:13:15','n','ashu12',NULL,1),(2,'배송안내','<p>배송지연</p>','N',NULL,'general','2022-02-23 16:30:26','2022-02-23 16:30:26','n','ashu12',NULL,2),(3,'123','<p>123</p>','Y','2022-02-23 17:40:59','general','2022-02-23 16:39:05','2022-02-23 16:39:05','n','ashu12',NULL,3),(4,'22','<p>22</p>','N',NULL,'general','2022-02-23 16:40:40','2022-02-23 16:40:40','n','ashu12',NULL,4),(5,'hh','<p>...</p>','N',NULL,'general','2022-02-23 16:42:33','2022-02-23 17:23:55','n','ashu12',NULL,5),(6,'nn','','Y','2022-02-23 17:22:16','general','2022-02-23 16:45:27','2022-02-23 17:03:36','n','ashu12',NULL,6),(7,'아 어렵다','','N',NULL,'general','2022-02-23 17:32:47','2022-02-23 17:36:16','n','ashu12',NULL,7),(8,'우짤꼬 ','<p><br></p>','N',NULL,'general','2022-02-23 17:41:28','2022-02-23 17:41:28','n','ashu12',NULL,8),(9,'홧팅','','N',NULL,'general','2022-02-23 17:41:43','2022-02-23 17:41:43','n','ashu12',NULL,9);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
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
