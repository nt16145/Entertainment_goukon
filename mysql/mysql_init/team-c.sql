CREATE DATABASE  IF NOT EXISTS `goukon` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `goukon`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: team-c
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (16,'催眠術体験合コン!','2019-09-19','20~25','東京','4人','5000円','催眠術師','新体験の合コンに是非ご参加ください!'),(17,'漫談家合コン!','2019-09-19','20~25','東京','4人','5000円','漫談家','漫談家と合コンしませんか？'),(19,'a','2019-09-21','35~40','名古屋','8人','10000円','マジシャン','aaa'),(20,'テスト合コン','2019-09-19','20~25','東京','4人','5000円','催眠術師','test'),(21,'1111','2019-09-19','20~25','大阪','4人','5000円','催眠術師','1');
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image_url` varchar(1024) DEFAULT NULL,
  `spec` text,
  `price` int(11) DEFAULT NULL,
  `detail` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'amazon echo show 5','https://dummyimage.com/320x240/ccc/fff.png&text=img1','これで9,980円は安い。Amazon Echo Show 5がとてもよい',9800,'5.5型ディスプレイを備えたAmazonのスマートディスプレイ/スピーカー「Echo Show 5」が発売される。5月29日より予約受付開始し、出荷開始予定は6月26日。声で操作できるスマートスピーカーにディスプレイもついて、情報表示や動画再生など様々なことが行なえる多機能な製品だが、価格も9,980円(税込)とリーズナブルだ。\n\n'),(2,'油をキレイに再利用できる活性炭カートリッジ（大）','https://dummyimage.com/320x240/ccc/fff.png&text=img1','油の片付け＆保存はおまかせ',1990,'●「油を繰り返しきれいに使える」と熱いご支持をいただいている「活性炭カートリッジ」\n●揚げ物をもっとラクに快適にしたい。と思っている方に使っていただきたい商品です\n\n●この約３cmの厚みをゆっくり濾過することによって劣化の原因となる食物カスを取り除いていきます\n●ゆっくり濾過する過程で中身の活性炭と脱酸剤の力で油のニオイ軽減、劣化対策に効果を発揮します\n\n【別売りのオイルポット専用の商品です】\n●専用のオイルポットも様々な機能やデザインを取り揃えております\n●お好みのポットと活性炭カートリッジで快適な揚げ物生活をお過ごしください\n※１個で２０～３０回使えるので経済的\n\n【バイヤー’S　VOICE】\n揚げ物を家ですることが好きではなかった私がこの商品に出会って家で揚げ物をするようになりました。油の処理、特に廃棄がとてもイヤでしたが、この商品を使うことで廃棄の回数が劇的に減り、「ちょっと揚げ物をしよう」の日が増えました。\nカートリッジは燃えるゴミでそのまま捨てられたりと、使い勝手も抜群。世の中にもいろいろ油用のフィルターはありますが、この商品はニオイ、色だけでなく、酸化のもととなる物質も吸着してくれる優れものです。\n安い買い物ではないですが、油を廃棄することを考えるとお得です！\n\n'),(3,'【長期保管】布団の宅配クリーニング','https://dummyimage.com/320x240/ccc/fff.png&text=img1','押入れでかさばるお布団、お預かりいたします！',17800,'●季節の変わり目にお布団を替えるのは本当に大変…\n●自宅で洗って乾燥させたり、クリーニングに持っていたり、大変ですよね\n●ベルメゾンの「ふとんクリーニングサービス」がそのお悩みを解消します\n●専門のクリーニング業者が真心を込めて１点ずつ丁寧に仕上げます\n●保管期間は最大９ヶ月で、次の替え時まで大切に保管いたします\n\n【ダニ防止加工もオススメ！】\n●クリーナー等ではダニを一時的に除去することはできても、すぐにまたダニの棲家になってしまいます\n●ダニ防止加工をすることでダニの侵入を防ぐことができるので効果的です\n●JISL１９２０繊維製品の防ダニ性試験方法（JIS規格適合試験）にてダニ忌避率９９．１％の証明されているので高品質！お子様にも安心な薬剤を使用しておりますので、是非お試しください\n'),(4,'しっかり仕様のソフトスリッパ','https://dummyimage.com/320x240/ccc/fff.png&text=img1','デザインよりどりみどりでロングセラー！',690,'●豊富なデザインバリエーションが大人気の商品です\n●中敷きにはしっかりとしたウレタン素材を使用\n●へたりにくくて丈夫なので長く使えます\n●裏面はパタパタ音がしにくいスエード調素材\n\n');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(512) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `sex` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `introduction` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (10,'ex@ssss','qwq','ここここ','男',22,'32-2222-2222','                                  頑張ります                                \r\n                                '),(11,'ex@ssss','qwq','ここここ','男',22,'32-2222-2222','                                  頑張ります                                \r\n                                '),(13,'ex@ssss','qwq','ここここ','男',22,'32-2222-2222','                                  頑張ります                                \r\n                                '),(15,'ex@ssss','qwq','ここここ','男',22,'32-2222-2222','                                  頑張ります                                \r\n                                '),(16,'ex@ssss','qwq','ここここ？','男',22,'32-2222-2222','頑張ります                                \r\n                                '),(17,'ex@ssss','qwq','ここここ','男',22,'32-2222-2222','                                  頑張ります                                \r\n                                '),(18,'exam@e.com','test','aiu','女',20,'0000000000','n                                \r\n                                '),(19,'hoge@yahoo.com','hoge','hoge','男',20,'12-3456-7890','わいわい'),(21,'texample@example.cpm','test','test','男',20,'00-0000-0000','test                                '),(22,'s-ishikawa@ceres-inc.jp','111111','111111','男',11,'03-3333-3333','                                '),(23,'11@11','111111','111111','男',11,'03-3333-3333','                                '),(24,'aaa@aaa','aaa','aaa','男',20,'00-0000-000','aaa                                ');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'team-c'
--

--
-- Dumping routines for database 'team-c'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-20 21:03:06
