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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `cat_ori_num` int NOT NULL DEFAULT '0',
  `cat_depth` int NOT NULL DEFAULT '1',
  `cat_path` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'events',0,1,'/events'),(2,'UsFam',0,1,'/UsFam'),(3,'Ashu',0,1,'/Ashu'),(4,'Casey',0,1,'/Casey'),(5,'Lami',0,1,'/Lami'),(6,'Ryker',0,1,'/Ryker'),(7,'Don\'t wake me up',3,2,'/Ashu/Don\'t wake me up'),(8,'HikingCamping',3,2,'/Ashu/HikingCamping'),(9,'Mommy-life',3,2,'/Ashu/Mommy-life'),(10,'Post-marrige',3,2,'/Ashu/Post-marrige'),(11,'UK',3,2,'/Ashu/UK'),(12,'Family',3,2,'/Ashu/Family'),(13,'Holiday',3,2,'/Ashu/Holiday'),(14,'Myself',3,2,'/Ashu/Myself'),(15,'pregnant Ashu',3,2,'/Ashu/pregnant Ashu'),(16,'UK Ashu',3,2,'/Ashu/UK Ashu'),(17,'my pet 찡구',3,2,'/Ashu/my pet 찡구'),(18,'selfie',3,2,'/Ashu/selfie'),(19,'nephews',3,2,'/Ashu/nephews'),(20,'Itaewon',3,2,'/Ashu/Itaewon'),(21,'foodie',3,2,'/Ashu/foodie'),(22,'Gangnam',3,2,'/Ashu/Gangnam'),(23,'Jong-ro',3,2,'/Ashu/Jong-ro'),(24,'pals',3,2,'/Ashu/pals'),(25,'trip',3,2,'/Ashu/trip'),(26,'CanadaFam',4,2,'/Casey/CanadaFam'),(27,'part1',4,2,'/Casey/part1'),(28,'part2',4,2,'/Casey/part2'),(29,'part3',4,2,'/Casey/part3'),(30,'part4',4,2,'/Casey/part4'),(31,'part5',4,2,'/Casey/part5'),(32,'part6',4,2,'/Casey/part6'),(33,'part7',4,2,'/Casey/part7'),(34,'this is the way you make a dough',4,2,'/Casey/this is the way you make a dough'),(35,'young Casey',4,2,'/Casey/young Casey'),(36,'casey with pals',4,2,'/Casey/casey with pals'),(37,'film star',4,2,'/Casey/film star'),(38,'tough guy ',4,2,'/Casey/tough guy '),(39,'Christmas',1,2,'/events/Christmas'),(40,'food',1,2,'/events/food'),(41,'New Year',1,2,'/events/New Year'),(42,'withCasey',2,2,'/UsFam/withCasey'),(43,'1st Bday',5,2,'/Lami/1st Bday'),(44,'Daddy drinks because you cry',5,2,'/Lami/Daddy drinks because you cry'),(45,'Lami loves bath',5,2,'/Lami/Lami loves bath'),(46,'musician Lami',5,2,'/Lami/musician Lami'),(47,'approx 3 to 6 months',5,2,'/Lami/approx 3 to 6 months'),(48,'Daycare',5,2,'/Lami/Daycare'),(49,'Lami with Daddy',5,2,'/Lami/Lami with Daddy'),(50,'piglet LAmi oink',5,2,'/Lami/piglet LAmi oink'),(51,'videos',5,2,'/Lami/videos'),(52,'when she could sit down',5,2,'/Lami/when she could sit down'),(53,'with cousins',5,2,'/Lami/with cousins'),(54,'with sis&bro',5,2,'/Lami/with sis&bro'),(55,'when she was born 2020.6.18',5,2,'/Lami/when she was born 2020.6.18'),(56,'when she became a toddler',5,2,'/Lami/when she became a toddler'),(57,'on a baby walker',5,2,'/Lami/on a baby walker'),(58,'funny you',5,2,'/Lami/funny you'),(59,'Lami with mommy',5,2,'/Lami/Lami with mommy'),(60,'play play play',5,2,'/Lami/play play play'),(61,'when she could crawl',5,2,'/Lami/when she could crawl'),(62,'when she was tiny',5,2,'/Lami/when she was tiny'),(63,'옹알이&유모차',5,2,'/Lami/옹알이&유모차'),(64,'Docs',11,3,'/Ashu/UK/Docs'),(65,'etc',11,3,'/Ashu/UK/etc'),(66,'food',11,3,'/Ashu/UK/food'),(67,'Herrogate',11,3,'/Ashu/UK/Herrogate'),(68,'Ibiza',11,3,'/Ashu/UK/Ibiza'),(69,'Pharmacy',11,3,'/Ashu/UK/Pharmacy'),(70,'Bdays',12,3,'/Ashu/Family/Bdays'),(71,'Daddy\'s 70th Bday',12,3,'/Ashu/Family/Daddy\'s 70th Bday'),(72,'Japen',12,3,'/Ashu/Family/Japen'),(73,'Manchester Paris',12,3,'/Ashu/Family/Manchester Paris'),(74,'나들이',12,3,'/Ashu/Family/나들이'),(75,'어린이대공원',12,3,'/Ashu/Family/어린이대공원'),(76,'장자못공원',12,3,'/Ashu/Family/장자못공원'),(77,'집콕',12,3,'/Ashu/Family/집콕'),(78,'Bonnaroo',13,3,'/Ashu/Holiday/Bonnaroo'),(79,'Busan',13,3,'/Ashu/Holiday/Busan'),(80,'camp with 귀희',13,3,'/Ashu/Holiday/camp with 귀희'),(81,'Canada with Casey',13,3,'/Ashu/Holiday/Canada with Casey'),(82,'Thai with Casey',13,3,'/Ashu/Holiday/Thai with Casey'),(83,'THai with Eva',13,3,'/Ashu/Holiday/THai with Eva'),(84,'with Daddy',13,3,'/Ashu/Holiday/with Daddy'),(85,'normal day',16,3,'/Ashu/UK Ashu/normal day'),(86,'perhaps special day',16,3,'/Ashu/UK Ashu/perhaps special day'),(87,'다같이',19,3,'/Ashu/nephews/다같이'),(88,'성민 ',19,3,'/Ashu/nephews/성민 '),(89,'승민',19,3,'/Ashu/nephews/승민'),(90,'예원',19,3,'/Ashu/nephews/예원'),(91,'pals',24,3,'/Ashu/pals/pals'),(92,'경진&현주',24,3,'/Ashu/pals/경진&현주'),(93,'귀남&은숙',24,3,'/Ashu/pals/귀남&은숙'),(94,'귀희&류아',24,3,'/Ashu/pals/귀희&류아'),(95,'세영',24,3,'/Ashu/pals/세영'),(96,'은비',24,3,'/Ashu/pals/은비'),(97,'인환',24,3,'/Ashu/pals/인환'),(98,'혜은&미숙\'s fam',24,3,'/Ashu/pals/혜은&미숙\'s fam'),(99,'bros',26,3,'/Casey/CanadaFam/bros'),(100,'mom&dad',26,3,'/Casey/CanadaFam/mom&dad'),(101,'nephews&niece',26,3,'/Casey/CanadaFam/nephews&niece'),(102,'G4',36,3,'/Casey/casey with pals/G4'),(103,'others',36,3,'/Casey/casey with pals/others'),(104,'Woody&Clint',36,3,'/Casey/casey with pals/Woody&Clint'),(105,'here&there',40,3,'/events/food/here&there'),(106,'homecook',40,3,'/events/food/homecook'),(107,'Spain Club&sushi,Thai',40,3,'/events/food/Spain Club&sushi,Thai'),(108,'을지감성',40,3,'/events/food/을지감성'),(109,'Camping1',42,3,'/UsFam/withCasey/Camping1'),(110,'Camping2',42,3,'/UsFam/withCasey/Camping2'),(111,'You&I',42,3,'/UsFam/withCasey/You&I'),(112,'2021.3',48,3,'/Lami/Daycare/2021.3'),(113,'2021.4',48,3,'/Lami/Daycare/2021.4'),(114,'2021.5',48,3,'/Lami/Daycare/2021.5'),(115,'2021.6',48,3,'/Lami/Daycare/2021.6'),(116,'2021.7',48,3,'/Lami/Daycare/2021.7'),(117,'2021.8',48,3,'/Lami/Daycare/2021.8'),(118,'2021.9',48,3,'/Lami/Daycare/2021.9'),(119,'2021.10',48,3,'/Lami/Daycare/2021.10'),(120,'2021.11',48,3,'/Lami/Daycare/2021.11'),(121,'2021.12',48,3,'/Lami/Daycare/2021.12'),(122,'2022.1',48,3,'/Lami/Daycare/2022.1'),(123,'2022.2',48,3,'/Lami/Daycare/2022.2'),(124,'baby boss meeting',48,3,'/Lami/Daycare/baby boss meeting'),(125,'hiking',49,3,'/Lami/Lami with Daddy/hiking'),(126,'home-part1',49,3,'/Lami/Lami with Daddy/home-part1'),(127,'home-part2',49,3,'/Lami/Lami with Daddy/home-part2'),(128,'home-part3',49,3,'/Lami/Lami with Daddy/home-part3'),(129,'home-part4',49,3,'/Lami/Lami with Daddy/home-part4'),(130,'아빠와 나들이',49,3,'/Lami/Lami with Daddy/아빠와 나들이'),(131,'take1',59,3,'/Lami/Lami with mommy/take1'),(132,'take2',59,3,'/Lami/Lami with mommy/take2'),(133,'take3',59,3,'/Lami/Lami with mommy/take3'),(134,'take4',59,3,'/Lami/Lami with mommy/take4'),(135,'Pharmacy Ball',69,4,'/Ashu/UK/Pharmacy/Pharmacy Ball'),(136,'party',69,4,'/Ashu/UK/Pharmacy/party'),(137,'wedding&post-Bonnaroo',78,4,'/Ashu/Holiday/Bonnaroo/wedding&post-Bonnaroo'),(138,'Bonnaroo-On',78,4,'/Ashu/Holiday/Bonnaroo/Bonnaroo-On'),(139,'museum DANAWA',79,4,'/Ashu/Holiday/Busan/museum DANAWA'),(140,'food',79,4,'/Ashu/Holiday/Busan/food'),(141,'Railay Beach',82,4,'/Ashu/Holiday/Thai with Casey/Railay Beach'),(142,'Phuket',82,4,'/Ashu/Holiday/Thai with Casey/Phuket'),(143,'Phi Phi Island',82,4,'/Ashu/Holiday/Thai with Casey/Phi Phi Island'),(144,'Krabi',82,4,'/Ashu/Holiday/Thai with Casey/Krabi'),(145,'Avata Hotel',82,4,'/Ashu/Holiday/Thai with Casey/Avata Hotel'),(146,'scenery',83,4,'/Ashu/Holiday/THai with Eva/scenery'),(147,'Krabi Beach',83,4,'/Ashu/Holiday/THai with Eva/Krabi Beach'),(148,'food & massage',83,4,'/Ashu/Holiday/THai with Eva/food & massage'),(149,'boat tour',83,4,'/Ashu/Holiday/THai with Eva/boat tour'),(150,'Bangkok',83,4,'/Ashu/Holiday/THai with Eva/Bangkok'),(151,'Vietnam',84,4,'/Ashu/Holiday/with Daddy/Vietnam'),(152,'cambodia-Siem Reap',84,4,'/Ashu/Holiday/with Daddy/cambodia-Siem Reap'),(153,'성민저초딩',88,4,'/Ashu/nephews/성민 /성민저초딩'),(154,'성민유치원',88,4,'/Ashu/nephews/성민 /성민유치원'),(155,'성민아장아장',88,4,'/Ashu/nephews/성민 /성민아장아장'),(156,'성민아가아가',88,4,'/Ashu/nephews/성민 /성민아가아가'),(157,'아장아장승민',89,4,'/Ashu/nephews/승민/아장아장승민'),(158,'베뷔승민',89,4,'/Ashu/nephews/승민/베뷔승민'),(159,'Angkor Wat',135,5,'/Ashu/UK/Pharmacy/Pharmacy Ball/Angkor Wat'),(160,'temple',136,5,'/Ashu/UK/Pharmacy/party/temple'),(161,'Danang',136,5,'/Ashu/UK/Pharmacy/party/Danang'),(162,'boat trip',136,5,'/Ashu/UK/Pharmacy/party/boat trip');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-17  9:39:57
