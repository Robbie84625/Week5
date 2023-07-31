-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: website
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `follower_count` int unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'test2','test','test',0,'2023-07-31 18:17:53'),(2,'Lily','lily','lily',255,'2023-07-31 18:18:43'),(3,'Oliva','oliva','oliva',300,'2023-07-31 18:18:59'),(4,'Jenny','jenny','jenny',253,'2023-07-31 18:19:02'),(5,'test2','test','nick',178,'2023-07-31 18:19:10'),(6,'test2','test','test',298,'2023-07-31 18:19:20'),(7,'Jack','jack','jack',378,'2023-07-31 18:19:59'),(8,'Emma','emma','emma',275,'2023-07-31 18:21:08'),(9,'Nina','nina','nina',178,'2023-07-30 18:25:19');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint NOT NULL,
  `content` varchar(255) NOT NULL,
  `like_count` int unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,5,'兩邊都表現得太棒了',122,'2023-08-01 03:38:26'),(2,4,'該跟鍾培生打了',7,'2023-08-01 03:38:26'),(3,5,'鍾培生? 培根跟孫生=鐘培生?',2,'2023-08-01 03:38:26'),(4,3,'該跟阿糖打了 台港澳只能有一個培生',0,'2023-08-01 03:38:26'),(5,7,'該換你打了根哥',0,'2023-08-01 03:38:26'),(6,8,'一個根一個生，本是同根生',0,'2023-08-01 03:38:26'),(7,6,'要喝美強生 喝到胃洽升',0,'2023-08-01 03:38:26'),(8,6,'雖然沒信宗教，但孫生幫兩人禱告時很真誠，蠻感動的。',35,'2023-08-01 03:38:26'),(9,9,'感謝孫總賽前禱告 比賽更精彩',0,'2023-08-01 03:38:26'),(10,4,'李育昇跟東巴星對打看得比拳上還精彩',155,'2023-08-01 03:38:26'),(11,4,'差8公斤也可以打完6回合3分鐘',8,'2023-08-01 03:38:26'),(12,5,'原來孫生賽前有跟育昇,東巴星禱告',0,'2023-08-01 03:38:26'),(13,7,'拳下這場比賽就像wwe一樣需要劇情鋪陳',30,'2023-08-01 03:38:26'),(14,9,'感謝兩位給全國帶來這麼精采的比賽',0,'2023-08-01 03:38:26'),(15,1,'UFC蠻多這種的，格鬥、拳擊、摔角這些運動有了beef更加分',0,'2023-08-01 03:38:26'),(16,1,'一日為師終身為父 我很欣賞孫生的態度 因為我也是這樣',67,'2023-08-01 03:38:26'),(17,6,'孫生很念舊',1,'2023-08-01 03:38:26'),(18,7,'不討厭尼克星，尼克星自嘲能力也蠻強。',67,'2023-08-01 03:38:26'),(19,9,'一日師傅 終身師傅',5,'2023-08-01 03:38:26'),(20,3,'卡卡星還蠻好笑的阿，很會做效果，也蠻有風度的',20,'2023-08-01 03:38:26'),(21,8,'連最後單手伏地挺身都拷貝 太敬業',5,'2023-08-01 03:38:26'),(22,8,'超喜歡育昇，長得帥打拳又超強，直接被圈粉',7,'2023-08-01 03:38:26'),(23,3,'一拳下去 讓你痛不育昇',2,'2023-08-01 03:38:26'),(24,1,'這場比賽大家都是贏家',0,'2023-08-01 03:38:26');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-01  4:04:51
