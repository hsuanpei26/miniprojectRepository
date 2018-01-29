-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: tk_db
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-01-19 03:13:47.361291'),(2,'auth','0001_initial','2018-01-19 03:13:53.410294'),(3,'admin','0001_initial','2018-01-19 03:13:54.633410'),(4,'admin','0002_logentry_remove_auto_add','2018-01-19 03:13:54.655393'),(5,'contenttypes','0002_remove_content_type_name','2018-01-19 03:13:55.510817'),(6,'auth','0002_alter_permission_name_max_length','2018-01-19 03:13:56.050313'),(7,'auth','0003_alter_user_email_max_length','2018-01-19 03:13:56.219308'),(8,'auth','0004_alter_user_username_opts','2018-01-19 03:13:56.257288'),(9,'auth','0005_alter_user_last_login_null','2018-01-19 03:13:56.610731'),(10,'auth','0006_require_contenttypes_0002','2018-01-19 03:13:56.625901'),(11,'auth','0007_alter_validators_add_error_messages','2018-01-19 03:13:56.656971'),(12,'auth','0008_alter_user_username_max_length','2018-01-19 03:13:58.183518'),(13,'auth','0009_alter_user_last_name_max_length','2018-01-19 03:13:59.024497'),(14,'sessions','0001_initial','2018-01-19 03:13:59.521820'),(15,'member','0001_initial','2018-01-19 10:32:52.328077'),(16,'member','0002_member_address','2018-01-19 10:32:52.812451'),(17,'member','0003_remove_member_address','2018-01-19 10:32:53.234292'),(18,'member','0004_member_tel','2018-01-25 03:32:20.335180');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-25 16:21:18
