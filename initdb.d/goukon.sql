-- MySQL dump 10.13  Distrib 8.0.17, for Linux (x86_64)
--
-- Host: localhost    Database: goukon
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'2019-09-20 05:55:19','test','test'),(1,'2019-09-20 05:55:46','test','はじめまして!');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `event_date` date NOT NULL,
  `age_group` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `area` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `max_people` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `entertainer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (16,'催眠術体験合コン!','2019-09-19','20~25','東京','4人','5000円','催眠術師','新体験の合コンに是非ご参加ください!'),(17,'漫談家合コン!','2019-09-19','20~25','東京','4人','5000円','漫談家','漫談家と合コンしませんか？'),(19,'a','2019-09-21','35~40','名古屋','8人','10000円','マジシャン','aaa'),(20,'テスト合コン','2019-09-19','20~25','東京','4人','5000円','催眠術師','test'),(21,'1111','2019-09-19','20~25','大阪','4人','5000円','催眠術師','1'),(22,'情報科合コン','2019-09-19','20~25','東京','8人','10000円','催眠術師','情報科限定合コン!　好きなOSについて語りましょう!');
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `sex` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `age` int(10) DEFAULT NULL,
  `tel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (10,'ex@ssss','qwq','ここここ','男',22,'32-2222-2222','                                  頑張ります                                \r\n                                '),(11,'ex@ssss','qwq','ここここ','男',22,'32-2222-2222','                                  頑張ります                                \r\n                                '),(13,'ex@ssss','qwq','ここここ','男',22,'32-2222-2222','                                  頑張ります                                \r\n                                '),(15,'ex@ssss','qwq','ここここ','男',22,'32-2222-2222','                                  頑張ります                                \r\n                                '),(16,'ex@ssss','qwq','ここここ？','男',22,'32-2222-2222','頑張ります                                \r\n                                '),(17,'ex@ssss','qwq','ここここ','男',22,'32-2222-2222','                                  頑張ります                                \r\n                                '),(18,'exam@e.com','test','aiu','女',20,'0000000000','n                                \r\n                                '),(19,'hoge@yahoo.com','hoge','hoge','女',20,'12-3456-7890','                                  わいわい\r\n                                '),(21,'texample@example.cpm','test','test','男',20,'00-0000-0000','test                                '),(22,'s-ishikawa@ceres-inc.jp','111111','111111','男',11,'03-3333-3333','                                '),(23,'11@11','111111','111111','男',11,'03-3333-3333','                                '),(24,'aaa@aaa','aaa','aaa','男',20,'00-0000-000','aaa                                '),(25,'os@os.com','$2y$10$fIErsdDJTVlOW9VFiOZgQeagMByXS9DPFM2VbeQsWhlef1HLVCYJC','test','女',20,'03-1234-5678','                            \r\n\r\n                        '),(26,'aaa@example.com','$2y$10$AcxutfEhLic8nxOFfn9ccuERIu2Gl9u0fLcCHMsWFQugUGSK6cTWO','aaa','男',20,'0501234567','合コンが好きです!'),(27,'foae@gmail.com','$2y$10$G.9SzvxpLir1HtlUpsyUJupCuDtf7A542lrYvy/3jM.tLVUW/OBSi','faw','男',29,'010-2020-1020','                                fa');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-20 10:02:10
