-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: game
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_id` varchar(50) NOT NULL,
  `player1` varchar(50) NOT NULL,
  `player2` varchar(50) NOT NULL,
  `player1Score` int NOT NULL DEFAULT '0',
  `player2Score` int NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_id` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'abx_xys_akbka-akakvm','mLucasteme','meme',1,5,'2023-11-26 22:28:08'),(2,'abx_xys_akbvvvka-akakvm','meme','vava',1,5,'2023-11-26 22:28:19'),(3,'90fbf3f0-9d45-48c0-87bc-afe9ebacc5ec','73fb7a0b19','15013c86e2',1,0,'2023-11-27 01:10:55'),(4,'f97c2b0e-7e54-4236-9092-53fa14c68b83','46dbc2d10e','62f6ec196a',1,0,'2023-11-27 23:54:12'),(5,'2ea71a7b-7952-40e5-bc8f-de25a448808c','user1080','datvu',1,1,'2023-12-01 11:09:58'),(6,'fa3710ed-4d26-4ed7-905f-18ec870b0839','user1080','datvu',2,0,'2023-12-01 11:11:09'),(7,'81e40c34-844b-4f72-a9c3-828aa642736b','8def6ba390','datvu',1,0,'2023-12-01 11:13:08'),(8,'51aa6376-94d6-4655-b90c-adebebd609d0','8def6ba390','user1080',1,0,'2023-12-01 11:13:10'),(9,'d8fba0d2-81a8-4ff4-b3de-c6a028d81702','8def6ba390','user1080',1,0,'2023-12-01 11:13:30'),(10,'36148cdc-ae48-40a0-b57d-903ea4afbad0','datvu','user1080',2,0,'2023-12-01 11:15:44'),(11,'fae61db1-a03e-4a79-9d32-04b97b4c5064','user1080','datvu',1,1,'2023-12-01 14:36:58'),(12,'e765bbaf-41a5-4ca4-9f87-f85d9c481414','user1080','datvu',1,0,'2023-12-01 14:37:17'),(13,'902f9b73-bc57-4f51-83fd-a6ee51f60e24','user1080','datvu',1,0,'2023-12-01 14:43:33'),(14,'9e014b3d-e675-4a59-ad25-bec05604bcdf','user1080','datvu',1,0,'2023-12-01 14:50:57'),(15,'b48a6310-8235-47fb-8dda-63efd2a13f58','user1080','datvu',2,0,'2023-12-01 14:53:21'),(16,'8bc3336f-98f6-473a-89f6-d02b98d0ce86','datvu','user1080',1,1,'2023-12-01 16:37:15'),(17,'ee6edc16-6e71-4dbf-b867-1333fcd825a8','STM32-001','datvu',1,0,'2023-12-01 17:04:05'),(18,'6a570559-9658-4a0b-9ffc-d02c3f727786','STM32-001','datvu',1,0,'2023-12-01 17:11:22'),(19,'30bf139c-a1a7-41ce-b356-c5e38e4ab0c2','STM32-001','datvu',1,0,'2023-12-01 17:23:08'),(20,'1862eba8-a157-42a1-9252-9613420d138e','user1080','datvu',1,0,'2023-12-02 15:27:18'),(21,'f8d4085e-f603-4160-89fe-2a2d1e93db7e','user1080','datvu',1,0,'2023-12-02 15:28:39'),(22,'ea88d351-c37b-4882-9896-4016311e9b2b','user1080','datvu',0,1,'2023-12-02 15:29:02');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','password','admin@gmail.com'),(2,'user1','password','user1@gmail.com'),(3,'catlead','catlead','12345676'),(6,'akSchams','12345676','admakn@gmail.com'),(9,'meme','12345676','meme@gmail.com'),(10,'user1080','user1080','user1080@gmail.com'),(11,'dacvungam','dacvungam','dacvu@gmail.com'),(12,'datvu','datvu','datvu@gmail.com');
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

-- Dump completed on 2023-12-02 21:26:13
