CREATE DATABASE  IF NOT EXISTS `myphotos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `myphotos`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 143.198.56.44    Database: myphotos
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
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(8) NOT NULL,
  `title` varchar(45) NOT NULL,
  `filePath` varchar(100) NOT NULL,
  `filePathThumb` varchar(100) NOT NULL,
  `uploadedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_files_users_idx` (`user_id`),
  KEY `idx_title` (`title`),
  CONSTRAINT `fk_files_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'62654023','Team Avatar','public\\62654023\\files\\615b583e-b854-4807-b7ad-cb21e2baafd3.jpg','public\\62654023\\files\\thumbnail615b583e-b854-4807-b7ad-cb21e2baafd3.jpg','2021-10-13 10:29:28','2021-10-13 10:34:58'),(5,'62654023','Anng y Toph 2','public\\62654023\\files\\09f8ee96-2a87-449b-a53b-9d8b8bfa7d16.jpeg','public\\62654023\\files\\thumbnail09f8ee96-2a87-449b-a53b-9d8b8bfa7d16.jpeg','2021-10-13 10:39:36','2021-10-13 10:39:36'),(8,'62654023','Anng y Toph ','public\\62654023\\files\\fdb71db9-b507-449f-84fe-1fc8ef05e4be.jpg','public\\62654023\\files\\thumbnailfdb71db9-b507-449f-84fe-1fc8ef05e4be.jpg','2021-10-13 10:49:06','2021-10-13 10:49:06'),(15,'62654023','zuko and me','public\\62654023\\files\\e17fc05b-89b7-495f-9c56-60c67960adac.jpg','public\\62654023\\files\\thumbnaile17fc05b-89b7-495f-9c56-60c67960adac.jpg','2021-10-20 14:04:40','2021-10-20 14:04:40'),(16,'62654023','above Appa','public\\62654023\\files\\2b7965d8-6913-4f76-ac25-008903f16947.png','public\\62654023\\files\\thumbnail2b7965d8-6913-4f76-ac25-008903f16947.png','2021-10-20 14:05:08','2021-10-20 14:05:08'),(17,'62654023','map','public\\62654023\\files\\40a21297-e181-4986-af93-7c5293c38b6f.jpg','public\\62654023\\files\\thumbnail40a21297-e181-4986-af93-7c5293c38b6f.jpg','2021-10-20 14:05:17','2021-10-20 14:05:17'),(18,'62654023','Aang and Katara','public\\62654023\\files\\bd6c6340-e4bc-4414-8e27-af2dc53e6c03.jpg','public\\62654023\\files\\thumbnailbd6c6340-e4bc-4414-8e27-af2dc53e6c03.jpg','2021-10-20 14:05:34','2021-10-20 14:05:34'),(19,'62654023','Appa 2','public\\62654023\\files\\b608c79f-be79-49ad-ae0a-dcacc3366515.png','public\\62654023\\files\\thumbnailb608c79f-be79-49ad-ae0a-dcacc3366515.png','2021-10-20 14:06:04','2021-10-20 14:06:04'),(20,'62654023','In fire Nation','public\\62654023\\files\\110a01d2-f629-4711-923f-80794421c1d0.jpg','public\\62654023\\files\\thumbnail110a01d2-f629-4711-923f-80794421c1d0.jpg','2021-10-20 14:06:14','2021-10-20 14:06:14'),(21,'62654023','Champion','public\\62654023\\files\\9b2640ac-ddb5-44be-b78a-c9d75ff50570.jpg','public\\62654023\\files\\thumbnail9b2640ac-ddb5-44be-b78a-c9d75ff50570.jpg','2021-10-20 14:06:23','2021-10-20 14:06:23'),(22,'62654023','me','public\\62654023\\files\\643c4a49-47e4-462f-b5c5-5cc680119b7b.png','public\\62654023\\files\\thumbnail643c4a49-47e4-462f-b5c5-5cc680119b7b.png','2021-10-20 14:06:37','2021-10-20 14:06:37'),(24,'62654023','document','public\\62654023\\files\\671961ad-8c85-46d1-98ac-c3f6aa302505.pdf','public/default/default_doc.svg','2021-10-20 17:04:20','2021-10-20 17:04:20');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-03 18:04:39
