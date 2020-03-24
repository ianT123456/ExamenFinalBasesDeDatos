-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemaacademico
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id_persona` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `CI` int NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Monica','Cadena',4683790,'2012-02-02 00:00:00'),(2,'Juan Carlos','Jordan',4691928,'2012-02-02 00:00:00'),(3,'Rene','Sosa',4329149,'2012-02-02 00:00:00'),(4,'Agatha','da Silva',4838973,'2012-03-05 00:00:00'),(5,'Natalie','Olmos',5983729,'2012-03-09 00:00:00'),(6,'Erwin','Choqueticlla',4838313,'2012-04-10 00:00:00'),(7,'Gabriela','Vega',5923083,'2012-06-10 00:00:00'),(8,'Alexis','Marechal',5389379,'2014-06-05 00:00:00'),(9,'Jose','Gil',3092732,'2014-10-10 00:00:00'),(10,'Jorge','Zarate',4839131,'2017-10-09 00:00:00'),(11,'Ricardo','Tejerina',7823213,'2019-01-01 00:00:00'),(12,'Natalia','Bilbao',7232954,'2019-01-01 00:00:00'),(13,'Ignacio','Valencia',7083103,'2019-02-01 00:00:00'),(14,'Joel','Jarro',8382392,'2019-10-01 00:00:00'),(15,'Santiago','Vargas',7390114,'2019-02-02 00:00:00'),(16,'Iuvitza','Apaza',6103451,'2019-02-03 00:00:00'),(17,'Nicol','Arce',3106791,'2019-02-03 00:00:00'),(18,'Andre','Quispe',4304567,'2019-02-09 00:00:00'),(19,'Luis','Andrade',7109823,'2019-02-10 00:00:00'),(20,'Fabian','Morales',3209841,'2019-02-04 00:00:00'),(21,'Diana','Ayllon',4109851,'2019-02-05 00:00:00'),(22,'Pedro','Pedregal',3209842,'2019-02-03 00:00:00'),(23,'Lizbeth','Lizarazu',7109881,'2019-02-09 00:00:00'),(24,'Dioinicia','Lopez',5467896,'2019-02-01 00:00:00'),(25,'Jeff','Meyers',6767687,'2019-04-01 00:00:00');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 19:55:39
