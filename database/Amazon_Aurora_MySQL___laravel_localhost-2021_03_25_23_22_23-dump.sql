-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `auto_ids`
--

DROP TABLE IF EXISTS `auto_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auto_ids` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `enginner_id` int NOT NULL,
  `auto_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_ids`
--

LOCK TABLES `auto_ids` WRITE;
/*!40000 ALTER TABLE `auto_ids` DISABLE KEYS */;
INSERT INTO `auto_ids` VALUES (1,1,1,'2021-03-25 18:17:11','2021-03-25 18:17:12'),(2,2,1,'2021-03-25 18:17:13',NULL),(3,3,1,'2021-03-25 18:17:19','2021-03-25 18:17:14'),(4,1,2,'2021-03-25 18:17:19','2021-03-25 18:17:24'),(5,2,2,'2021-03-25 18:17:19','2021-03-25 18:17:24'),(6,3,3,'2021-03-25 18:17:19','2021-03-25 18:17:24'),(7,1,5,'2021-03-25 18:17:19','2021-03-25 18:17:24'),(8,2,4,'2021-03-25 18:17:19','2021-03-25 18:17:24'),(9,3,6,'2021-03-25 18:17:19','2021-03-25 18:17:24'),(10,1,7,'2021-03-25 18:17:19','2021-03-25 18:17:24'),(11,2,8,'2021-03-25 18:17:19','2021-03-25 18:17:24'),(12,3,9,'2021-03-25 18:17:19','2021-03-25 18:17:24');
/*!40000 ALTER TABLE `auto_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autos`
--

DROP TABLE IF EXISTS `autos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engineer_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autos`
--

LOCK TABLES `autos` WRITE;
/*!40000 ALTER TABLE `autos` DISABLE KEYS */;
INSERT INTO `autos` VALUES (1,'BMW x7',1,'2021-03-25 18:04:27','2021-03-25 18:04:33'),(2,'Mazda CX-9',2,'2021-03-25 18:04:28','2021-03-25 18:04:32'),(3,'Toyota Prado',3,'2021-03-25 18:04:28','2021-03-25 18:04:34'),(4,'Toyota LC200',4,'2021-03-25 18:04:29','2021-03-25 18:04:34'),(5,'Cadillac Escalade',5,'2021-03-25 18:04:29','2021-03-25 18:20:19'),(6,'BMW X5',1,'2021-03-25 18:20:21','2021-03-25 18:20:19'),(7,'BMW X3',2,'2021-03-25 18:20:21','2021-03-25 18:20:19'),(8,'Toyota RAV 4',3,'2021-03-25 18:20:21','2021-03-25 18:20:19'),(9,'Mazda CX-5',4,'2021-03-25 18:20:21','2021-03-25 18:20:19');
/*!40000 ALTER TABLE `autos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Alex',1,'2021-03-25 18:02:16','2021-03-25 18:02:22'),(2,'Robert',2,'2021-03-25 18:02:17','2021-03-25 18:02:23'),(3,'Bob',4,'2021-03-25 18:02:19','2021-03-25 18:02:24'),(4,'Veronica',3,'2021-03-25 18:02:20','2021-03-25 18:02:24'),(5,'Andre',5,'2021-03-25 18:02:21','2021-03-25 18:02:26');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engineers`
--

DROP TABLE IF EXISTS `engineers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engineers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engineers`
--

LOCK TABLES `engineers` WRITE;
/*!40000 ALTER TABLE `engineers` DISABLE KEYS */;
INSERT INTO `engineers` VALUES (1,'Betsy Underwood',1,'2021-03-25 18:09:17','2021-03-25 18:09:18'),(2,'Krista Coombes',2,'2021-03-25 18:09:20','2021-03-25 18:09:21'),(3,'Raheel Mendez',3,'2021-03-25 18:09:22','2021-03-25 18:09:23');
/*!40000 ALTER TABLE `engineers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (12,'2014_10_12_000000_create_users_table',1),(13,'2021_03_25_161210_create_engineers_table',1),(14,'2021_03_25_161221_create_autos_table',1),(15,'2021_03_25_161233_create_clients_table',1),(16,'2021_03_25_181149_create_auto_ids_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@admin.ru','$2y$10$Uj4WgJVbMzPNTYO.fRRszehexjnvwCir3uqa0AoYJXiBtOpX9JVOO','2021-03-25 12:18:10','2021-03-25 12:18:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-25 23:22:24
