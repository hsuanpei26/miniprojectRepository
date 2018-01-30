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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add member',7,'add_member'),(20,'Can change member',7,'change_member'),(21,'Can delete member',7,'delete_member');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$y3Aeiivll1Qu$oZEYRM3DBzIYz4qpvcW762RDno4+E6OxjdYmXAvhtlY=','2018-01-24 01:20:29.253840',1,'hsuanpei26','','','hsuanpei26@gmail.com',1,1,'2018-01-24 01:19:53.946933');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime(6) DEFAULT NULL,
  `menuname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` int(11) DEFAULT NULL,
  `mname` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'2018-01-24 15:35:16.000000','煎蛋烤吐司玉米蛋餅薯餅大杯熱美式咖啡(內用1桌)',100,'Eric'),(2,'2018-01-24 17:47:01.000000','煎蛋烤吐司鮪魚蛋烤吐司大蝦蛋烤吐司(外帶)',110,'Eric'),(3,'2018-01-25 09:02:45.000000','培根蛋烤吐司玉米蛋餅薯餅熱狗大杯冰美式咖啡(外帶)',125,'Eric'),(4,'2018-01-25 15:51:02.000000','培根蛋炒飯黑胡椒蛋鐵板麵蘿蔔糕大杯冰奶茶(內用2桌)',160,'Alice');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `custermer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`custermer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'member','member'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useremail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userbirth` date NOT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Eric','aa1260','hsuanpei26@gmail.com','1988-06-26','0983010908'),(2,'Alice','a081434','Alice@gmail.com','1991-08-14','(02)2738-7456');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `kind` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unitprice` int(11) DEFAULT NULL,
  `manufacturer` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'烤吐司類','煎蛋烤吐司',20,'鴻裕'),(2,'烤吐司類','起司蛋烤吐司',30,'風華'),(3,'烤吐司類','火腿蛋烤吐司',30,'華達士'),(4,'烤吐司類','培根蛋烤吐司',30,'華達士'),(5,'烤吐司類','肉鬆蛋烤吐司',30,'華達士'),(6,'烤吐司類','肉排蛋烤吐司',30,'台品'),(7,'烤吐司類','鮪魚蛋烤吐司',35,'華達士'),(8,'烤吐司類','豬排蛋烤吐司',40,'華達士'),(9,'烤吐司類','香雞蛋烤吐司',40,'台品'),(10,'烤吐司類','鮮蝦蛋烤吐司',40,'風華'),(11,'烤吐司類','花枝蛋烤吐司',40,'華達士'),(12,'烤吐司類','大蝦蛋烤吐司',55,'風華'),(13,'烤吐司類','肉排蛋烤總匯',55,'台品'),(14,'烤吐司類','肉鬆蛋烤總匯',55,'華達士'),(15,'烤吐司類','鮪魚蛋烤總匯',55,'華達士'),(16,'烤吐司類','蔬菜蛋烤總匯',55,'無'),(17,'烤吐司類','奶油烤吐司',15,'震響'),(18,'烤吐司類','椰香烤吐司',15,'風華'),(19,'烤吐司類','花生烤吐司',15,'風華'),(20,'烤吐司類','香蒜烤吐司',15,'震響'),(21,'烤吐司類','草莓烤吐司',15,'風華'),(22,'烤吐司類','巧克力烤吐司',15,'風華'),(23,'烤吐司類','奶油烤厚片',20,'震響'),(24,'烤吐司類','椰香烤厚片',20,'風華'),(25,'烤吐司類','花生烤厚片',20,'風華'),(26,'烤吐司類','香蒜烤厚片',20,'震響'),(27,'烤吐司類','草莓烤厚片',20,'風華'),(28,'烤吐司類','巧克力烤厚片',20,'風華'),(29,'蛋餅類','原味蛋餅',20,'華達士'),(30,'蛋餅類','蔬菜蛋餅',30,'無'),(31,'蛋餅類','玉米蛋餅',35,'震響'),(32,'蛋餅類','起司蛋餅',30,'風華'),(33,'蛋餅類','火腿蛋餅',30,'華達士'),(34,'蛋餅類','培根蛋餅',30,'華達士'),(35,'蛋餅類','肉鬆蛋餅',30,'華達士'),(36,'蛋餅類','鮪魚蛋餅',35,'華達士'),(37,'蛋餅類','燻雞蛋餅',40,'華達士'),(38,'蛋餅類','豬排蛋餅',40,'華達士'),(39,'蛋餅類','火腿起司蛋餅',40,'華達士'),(40,'蛋餅類','培根起司蛋餅',40,'華達士'),(41,'蛋餅類','蔬菜玉米蛋餅',45,'震響'),(42,'鐵板麵類','蘑菇蛋鐵板麵',45,'億家香'),(43,'鐵板麵類','黑胡椒蛋鐵板麵',45,'億家香'),(44,'漢堡類','火腿蛋漢堡',35,'華達士'),(45,'漢堡類','培根蛋漢堡',35,'華達士'),(46,'漢堡類','肉排蛋漢堡',35,'台品'),(47,'漢堡類','鮪魚蛋漢堡',35,'華達士'),(48,'漢堡類','豬排蛋漢堡',40,'華達士'),(49,'漢堡類','鮮蝦蛋漢堡',40,'風華'),(50,'漢堡類','花枝蛋漢堡',40,'華達士'),(51,'漢堡類','大蝦蛋漢堡',55,'風華'),(52,'漢堡類','香雞蛋漢堡',40,'台品'),(53,'漢堡類','燻雞蛋漢堡',40,'華達士'),(54,'漢堡類','雞排蛋漢堡',55,'億家香'),(55,'漢堡類','雞腿蛋漢堡',55,'華達士'),(56,'漢堡類','檸檬雞柳蛋漢堡',55,'風華'),(57,'加點類','蛋',10,'鴻裕'),(58,'加點類','起司',10,'風華'),(59,'加點類','火腿',10,'華達士'),(60,'加點類','培根',15,'華達士'),(61,'加點類','薯餅',15,'風華'),(62,'加點類','熱狗',15,'億家香'),(63,'加點類','薯條',25,'風華'),(64,'加點類','豬排',25,'華達士'),(65,'加點類','煎餃',30,'億家香'),(66,'加點類','蘿蔔糕',30,'億家香'),(67,'加點類','蔥抓餅',25,'華達士'),(68,'加點類','營養早餐',25,'華達士億家香風華'),(69,'加點類','麥克雞塊',35,'華達士'),(70,'加點類','無骨雞排',40,'億家香'),(71,'加點類','勁辣雞腿排',40,'華達士'),(72,'加點類','檸檬雞柳條',20,'風華'),(73,'加點類','法式蜂蜜吐司',35,'無'),(74,'飲料類','紅茶',15,'品皇'),(75,'飲料類','奶茶',15,'品皇'),(76,'飲料類','檸檬汁',15,'震響'),(77,'飲料類','柳橙汁',15,'億家香'),(78,'飲料類','蔓越莓汁',15,'無'),(79,'飲料類','百香果汁',15,'無'),(80,'飲料類','檸檬紅茶',15,'震響'),(81,'飲料類','美式咖啡',20,'華達士'),(82,'飲料類','鮮奶茶',25,'億家香'),(83,'飲料類','豆漿',20,'億家香'),(84,'飲料類','薏仁漿',20,'億家香'),(85,'飲料類','牛奶',25,'億家香'),(86,'炒飯類','火腿蛋炒飯',60,'華達士'),(87,'炒飯類','培根蛋炒飯',60,'華達士'),(88,'炒飯類','燻雞蛋炒飯',65,'華達士'),(89,'炒飯類','菲力嫩汁雞排蛋炒飯',75,'億家香'),(90,'炒飯類','勁辣雞腿排蛋炒飯',75,'華達士'),(91,'炒飯類','豬排蛋炒飯',75,'華達士'),(92,'炒飯類','大蝦蛋炒飯',75,'風華'),(93,'炒麵類','火腿蛋炒麵',60,'華達士'),(94,'炒麵類','培根蛋炒麵',60,'華達士'),(95,'炒麵類','燻雞蛋炒麵',65,'華達士'),(96,'炒麵類','菲力嫩汁雞排蛋炒麵',75,'億家香'),(97,'炒麵類','勁辣雞腿排蛋炒麵',75,'華達士'),(98,'炒麵類','豬排蛋炒麵',75,'華達士'),(99,'炒麵類','大蝦蛋炒麵',75,'風華'),(100,'套餐類','1號餐_火腿蛋烤吐司',40,'華達士'),(101,'套餐類','2號餐_肉排蛋漢堡',45,'無'),(102,'套餐類','3號餐_雞柳條+烤薄片',50,'風華'),(103,'套餐類','4號餐_營養早餐+薯餅',55,'華達士億家香風華'),(104,'套餐類','5號餐_火腿起司蛋餅',55,'華達士'),(105,'套餐類','6號餐_香雞蛋漢堡',60,'台品'),(106,'客製化','不加蛋',-5,'無'),(107,'客製化','不加醬料',0,'無'),(108,'客製化','不加沙拉',0,'無'),(109,'客製化','不加蔬菜',0,'無'),(110,'客製化','去冰',0,'無'),(111,'客製化','中杯',5,'無'),(112,'客製化','中杯(鮮奶製品)',10,'無'),(113,'客製化','大杯',10,'無'),(114,'客製化','大杯(鮮奶製品)',10,'無'),(115,'客製化','冰',0,'無'),(116,'客製化','溫',0,'無'),(117,'客製化','熱',0,'無'),(118,'客製化','(外帶)',0,'無'),(119,'客製化','(內用1桌)',0,'無'),(120,'客製化','(內用2桌)',0,'無'),(121,'客製化','(內用3桌)',0,'無'),(122,'客製化','(內用4桌)',0,'無'),(123,'客製化','(內用5桌)',0,'無');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-30 11:59:36
