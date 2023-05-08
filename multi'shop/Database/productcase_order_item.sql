-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: productcase
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `order_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_idx` (`product_id`),
  KEY `order_idx` (`order_id`),
  CONSTRAINT `order` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (70,'SP1672283991',12000,4,'OD1673229190'),(71,'SP1672283994',14000,3,'OD1673229190'),(72,'SP1672826208',19000,1,'OD1673229190'),(73,'SP1672283994',14000,1,'OD1673229228'),(74,'SP1672296358',16000,3,'OD1673229228'),(75,'SP1672296358',16000,1,'OD1673229995'),(76,'SP1672283994',14000,1,'OD1673230073'),(77,'SP1672296358',16000,2,'OD1673230360'),(78,'SP1672296358',16000,2,'OD1673230490'),(79,'SP1672296358',16000,2,'OD1673230536'),(80,'SP1672296358',16000,1,'OD1673230578'),(81,'SP1672296358',16000,1,'OD1673230877'),(82,'SP1672296358',16000,1,'OD1673231673'),(83,'SP1672371970',18000,2,'OD1673231673'),(84,'SP1672296358',16000,1,'OD1673232002'),(85,'SP1672296358',16000,1,'OD1673232089'),(86,'SP1672283991',12000,1,'OD1673233685'),(87,'SP1672283994',14000,1,'OD1673247115'),(88,'SP1672283991',12000,1,'OD1673247115'),(89,'SP1672296358',16000,1,'OD1673247115'),(90,'SP1672371970',18000,1,'OD1673247115'),(91,'SP1672372211',20000,1,'OD1673247115'),(92,'SP1672826208',19000,1,'OD1673247115'),(93,'SP1672826208',19000,2,'OD1673315705'),(94,'SP1672283994',14000,2,'OD1673315705'),(95,'SP1672296358',16000,2,'OD1673315705'),(96,'SP1672283994',14000,1,'OD1673318223'),(97,'SP1672283991',12000,2,'OD1673318581'),(98,'SP1672283994',14000,2,'OD1673318581'),(99,'SP1672283994',14000,1,'OD1673362642'),(100,'SP1672296358',16000,1,'OD1673362642'),(101,'SP1672283991',12000,2,'OD1673362756'),(102,'SP1672283994',14000,2,'OD1673362756'),(103,'SP1672283994',14000,6,'OD1673363243'),(104,'SP1672371970',18000,1,'OD1673363243'),(105,'SP1672826208',19000,1,'OD1673363243'),(106,'SP1672372211',20000,1,'OD1673363243'),(107,'SP1672371970',18000,6,'OD1673399720'),(108,'SP1672283994',14000,1,'OD1673399720'),(109,'SP1672372211',20000,1,'OD1673399720'),(110,'SP1672826208',19000,1,'OD1673399720'),(111,'SP1672296358',16000,2,'OD1673406756'),(112,'SP1672371970',18000,2,'OD1673406756'),(113,'SP1672296358',16000,2,'OD1673413377'),(114,'SP1672371970',18000,1,'OD1673413377'),(115,'SP1672283994',14000,1,'OD1673413377'),(116,'SP1672283991',12000,1,'OD1673413377'),(117,'SP1672283991',12000,5,'OD1673420089'),(118,'SP1672283994',14000,2,'OD1673420089'),(119,'SP1672296358',500,2,'OD1673516333'),(120,'SP1672283994',400,3,'OD1673516333'),(121,'SP1672283991',450,2,'OD1673516333'),(122,'SP1672826208',350,1,'OD1673516333'),(123,'SP1672296358',500,1,'OD1673516434'),(124,'SP1672371970',550,1,'OD1673516434'),(125,'SP1672296358',500,2,'OD1673572976'),(126,'SP1672283994',400,2,'OD1673572976'),(127,'SP1672371970',550,3,'OD1673572976'),(128,'SP1672283991',450,3,'OD1673572976'),(129,'SP1672283994',400,3,'OD1673751410'),(130,'SP1672296358',500,2,'OD1673751410'),(131,'SP1672283991',450,2,'OD1673751410'),(132,'SP1672283994',400,1,'OD1673761130'),(133,'SP1672296358',500,4,'OD1673783781'),(134,'SP1672283991',450,3,'OD1673852097'),(135,'SP1672372211',600,1,'OD1673852097'),(136,'SP1672826208',350,1,'OD1673852097'),(137,'SP1672296358',500,2,'OD1673853181'),(138,'SP1672371970',550,2,'OD1673853181'),(139,'SP1672296358',500,1,'OD1673853283'),(140,'SP1672371970',550,2,'OD1673853283'),(141,'SP1672283994',400,2,'OD1673853283'),(142,'SP1672296358',500,2,'OD1673879675'),(143,'SP1672283994',400,3,'OD1673879675'),(144,'SP1672283991',450,3,'OD1673879675'),(145,'SP1672283994',400,2,'OD1673922391'),(146,'SP1672296358',500,1,'OD1673922391'),(147,'SP1672371970',550,1,'OD1673922391'),(148,'SP1672283994',400,1,'OD1673922590'),(149,'SP1672296358',500,2,'OD1673922590'),(150,'SP1672371970',550,1,'OD1673922590');
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17 10:00:44