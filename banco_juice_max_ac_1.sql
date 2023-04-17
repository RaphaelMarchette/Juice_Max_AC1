CREATE DATABASE  IF NOT EXISTS `bd_juice_max` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `bd_juice_max`;
-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_juice_max
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

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
-- Table structure for table `select_acrescimos`
--

DROP TABLE IF EXISTS `select_acrescimos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `select_acrescimos` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `valor` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_acrescimos`
--

LOCK TABLES `select_acrescimos` WRITE;
/*!40000 ALTER TABLE `select_acrescimos` DISABLE KEYS */;
INSERT INTO `select_acrescimos` VALUES (1,'mel','2.50');
/*!40000 ALTER TABLE `select_acrescimos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_preferencias`
--

DROP TABLE IF EXISTS `select_preferencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `select_preferencias` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_preferencias`
--

LOCK TABLES `select_preferencias` WRITE;
/*!40000 ALTER TABLE `select_preferencias` DISABLE KEYS */;
INSERT INTO `select_preferencias` VALUES (1,'Gelo e Açucar'),(2,'Sem Açucar / Sem Gelo'),(3,'Só Gelo / sem Açucar'),(4,'Sem Gelo / Com Açucar');
/*!40000 ALTER TABLE `select_preferencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_sucos`
--

DROP TABLE IF EXISTS `select_sucos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `select_sucos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_sucos`
--

LOCK TABLES `select_sucos` WRITE;
/*!40000 ALTER TABLE `select_sucos` DISABLE KEYS */;
INSERT INTO `select_sucos` VALUES (1,'Acerola',17,5.50),(2,'Banana',10,4.50),(3,'Laranja',15,2.50),(4,'Maracuja',12,9.80),(5,'Melancia',20,15.30),(6,'Abacaxi com Limão',20,12.00),(7,'Melão com pessego e Limão',20,10.00),(8,'Couve Hortelã e Laranja',20,9.00),(9,'Xodó do Nordeste',20,8.00),(10,'Frutas Vermelhas',20,7.00),(11,'Abacaxi com Coco',20,6.00),(12,'Coco com Morango',20,5.00),(13,'Maracuja com Morango',20,4.00),(14,'Uva Duplo',20,3.00),(15,'Manga',20,2.00),(16,'Tamarindo com Morango e Laranja',20,14.99);
/*!40000 ALTER TABLE `select_sucos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_acrescimo`
--

DROP TABLE IF EXISTS `view_acrescimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_acrescimo` (
  `id` int(11) NOT NULL,
  `id_fk` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `valor` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_acrescimo`
--

LOCK TABLES `view_acrescimo` WRITE;
/*!40000 ALTER TABLE `view_acrescimo` DISABLE KEYS */;
/*!40000 ALTER TABLE `view_acrescimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_pedido`
--

DROP TABLE IF EXISTS `view_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_fk` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `valor` varchar(45) NOT NULL,
  `preferencia` varchar(45) NOT NULL,
  `acrescimo` varchar(45) NOT NULL,
  `valor_acrescimo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_pedido`
--

LOCK TABLES `view_pedido` WRITE;
/*!40000 ALTER TABLE `view_pedido` DISABLE KEYS */;
INSERT INTO `view_pedido` VALUES (78,'4','Maracuja','9.80','Gelo e Açucar','mel','2.50');
/*!40000 ALTER TABLE `view_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_preferencia`
--

DROP TABLE IF EXISTS `view_preferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_preferencia` (
  `id` int(11) NOT NULL,
  `id_fk` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_preferencia`
--

LOCK TABLES `view_preferencia` WRITE;
/*!40000 ALTER TABLE `view_preferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `view_preferencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_suco`
--

DROP TABLE IF EXISTS `view_suco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_suco` (
  `id` int(11) NOT NULL,
  `id_fk` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `valor` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_suco`
--

LOCK TABLES `view_suco` WRITE;
/*!40000 ALTER TABLE `view_suco` DISABLE KEYS */;
/*!40000 ALTER TABLE `view_suco` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-16 12:15:58
