-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

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
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'default_image.png',1527,'image/png','public/images/eaGL4aVhCkpUqtyVwTmRrubH6ryztR2zrgiN20EE.png','2018-10-05 10:49:57','2018-10-05 10:49:57'),(2,'pexels-photo.jpg',4348,'image/jpeg','public/images/boWGqr9V4a73N9aYy94PBh6DoapIV2SjQv1ymLBZ.jpeg','2018-10-05 14:00:51','2018-10-05 14:00:51'),(3,'wallpaper_51.jpg',2954,'image/jpeg','public/images/5MSdjNaiYfrPZs4EZydjJebhU0ANHS4SUWNzZF7p.jpeg','2018-10-08 04:32:53','2018-10-08 04:32:53'),(4,'wallpaper_51.jpg',2954,'image/jpeg','public/images/9mgZhCppytQTHDqIMYFcRZoUGQBLepCKjprMoqhj.jpeg','2018-10-08 04:37:07','2018-10-08 04:37:07'),(5,'wallpaper_51.jpg',2954,'image/jpeg','public/images/9H9KSe01kNeLwPuievPKt72s76KQdk2wTgfPACkn.jpeg','2018-10-08 04:40:28','2018-10-08 04:40:28'),(6,'wallpaper_51.jpg',2954,'image/jpeg','public/images/tQlkPB9LquOs4VevOuZy2xN82e2e9xOCTEM7HMBX.jpeg','2018-10-08 04:43:44','2018-10-08 04:43:44'),(7,'wallpaper_51.jpg',2954,'image/jpeg','public/images/AZUEjl4vcJJ35rw9dCXHUFpZSzGIFA3kBHlOAI36.jpeg','2018-10-08 04:46:08','2018-10-08 04:46:08'),(8,'wallpaper_51.jpg',2954,'image/jpeg','public/images/ANVySzEXePDs3LZFJytxJaKbLed2DX3zGCovDqlf.jpeg','2018-10-08 04:47:16','2018-10-08 04:47:16'),(9,'wallpaper_51.jpg',2954,'image/jpeg','public/images/xF8lrU0lC33oCnUCvZraQBLf9VRWzBCAgSzTwoSn.jpeg','2018-10-08 07:25:50','2018-10-08 07:25:50'),(10,'wallpaper_51.jpg',2954,'image/jpeg','public/images/ksHu6Xam6l09mYBA9Gc2PqbfSRqf6RkIVLuDsFKp.jpeg','2018-10-08 07:25:51','2018-10-08 07:25:51'),(11,'wallpaper_51.jpg',2954,'image/jpeg','public/images/gIcjxnmGVhNXlTsXZ8GH7rdMtL6BRWFSy6Kic8yE.jpeg','2018-10-08 07:25:54','2018-10-08 07:25:54'),(12,'wallpaper_51.jpg',2954,'image/jpeg','public/images/Z4JKYdDPj1DhjkYHMFpe8erxzbbD7r5nS5kRuue9.jpeg','2018-10-08 07:25:56','2018-10-08 07:25:56'),(13,'wallpaper_51.jpg',2954,'image/jpeg','public/images/zKaZ6jZzMKKAIRhweMinToGZxNhtSjt5ncVsDocM.jpeg','2018-10-08 07:25:56','2018-10-08 07:25:56'),(14,'wallpaper_51.jpg',2954,'image/jpeg','public/images/HmgwbwPO9NFGNBB4ILJXaXmquR7ts1syAFQPirZd.jpeg','2018-10-08 07:25:56','2018-10-08 07:25:56'),(15,'wallpaper_51.jpg',2954,'image/jpeg','public/images/lseaVG0L6C0RdcotriyrnryqvCBSS6xKy5xNrM4z.jpeg','2018-10-08 07:43:43','2018-10-08 07:43:43'),(16,'wallpaper_51.jpg',2954,'image/jpeg','public/images/QmfmcpKRZVkItmG0dZimVygrLEkJmE4ABw7YFAvK.jpeg','2018-10-08 07:43:44','2018-10-08 07:43:44'),(17,'wallpaper_51.jpg',2954,'image/jpeg','public/images/yurcJGe8BHgyOzI7KHuOAumJg29GevvK9vJP7l1y.jpeg','2018-10-08 07:49:01','2018-10-08 07:49:01'),(18,'wallpaper_51.jpg',2954,'image/jpeg','public/images/g15CwPQlnGHcxHUPphpTXXl8kY2kPgj1zl3ZeAxj.jpeg','2018-10-08 07:49:07','2018-10-08 07:49:07'),(19,'pexels-photo.jpg',4348,'image/jpeg','public/images/BDlgogLaqsTS5tF5BFrqTup7fryoVmEMmXbxxpFc.jpeg','2018-10-08 08:44:31','2018-10-08 08:44:31'),(20,'pexels-photo.jpg',4348,'image/jpeg','public/images/CUYDvYLb7DmzYQSC1l4ecZd4ccxOfZk0ewcb3lEg.jpeg','2018-10-08 08:46:22','2018-10-08 08:46:22'),(21,'pexels-photo.jpg',4348,'image/jpeg','public/images/EnH0VJL5mfyr5M3im0Jr0aszJTEWXVCfdeN4zLea.jpeg','2018-10-08 08:48:15','2018-10-08 08:48:15');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_book`
--

DROP TABLE IF EXISTS `guest_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(8192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_data` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_book`
--

LOCK TABLES `guest_book` WRITE;
/*!40000 ALTER TABLE `guest_book` DISABLE KEYS */;
INSERT INTO `guest_book` VALUES (1,'rdfvc','janis','janis5986@inbox.lv','www.asd.lv','::1','\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"',1,'2018-10-05 10:49:58','2018-10-05 10:49:58'),(2,'This is my message to world','Jānis','janis5986@inbox.lv','www.dasds.lv','::1','\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"',2,'2018-10-05 14:00:51','2018-10-05 14:00:51'),(3,'tygjn','asdk','info@ms-idi.eu','www.fgbdf.lv','::1','\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"',3,'2018-10-08 04:32:53','2018-10-08 04:32:53'),(4,'fjgnbcv','asdzxc','savcx@inbox.lv','www.pasd.lv','::1','\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"',6,'2018-10-08 04:43:44','2018-10-08 04:43:44'),(5,'opulis','ilmārs','sdas@inbox.lv','www.plaa.lv','::1','\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"',7,'2018-10-08 04:46:09','2018-10-08 04:46:09'),(6,'hfg','noimage','puiss@inbox.vl','www.das.lv','::1','\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"',NULL,'2018-10-08 05:26:31','2018-10-08 05:26:31'),(7,'sfdgvbmn','Jānis','asdas@inbox.lv','www.dasd.lv','::1','\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"',9,'2018-10-08 07:25:50','2018-10-08 07:25:50'),(8,'sdfxcv','Kasd','info@ms-idi.eu','http://asd.vl','::1','\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"',19,'2018-10-08 08:44:31','2018-10-08 08:44:31'),(9,'dfbcvb','Jānis','asd@inbox.lv','http://asd.lv','::1','\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"',20,'2018-10-08 08:46:22','2018-10-08 08:46:22'),(10,'sdfv','janis','dasd@inbox.lv','http://asd.lv','::1','\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/69.0.3497.100 Safari\\/537.36\"',21,'2018-10-08 08:48:15','2018-10-08 08:48:15');
/*!40000 ALTER TABLE `guest_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (23,'2018_10_01_081833_create_guest_book_table',1),(24,'2018_10_03_072533_create_files_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-08 15:15:32
