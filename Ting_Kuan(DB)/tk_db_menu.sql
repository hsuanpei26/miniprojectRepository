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

-- Dump completed on 2018-01-25 16:21:18