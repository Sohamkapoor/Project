CREATE DATABASE  IF NOT EXISTS `gas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gas`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: gas
-- ------------------------------------------------------
-- Server version	5.6.12-log

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
-- Table structure for table `new_customer`
--

DROP TABLE IF EXISTS `new_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salutation` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `fathername` varchar(30) NOT NULL,
  `mothername` varchar(30) NOT NULL,
  `spousename` varchar(30) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `telephone` varchar(12) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bankname` varchar(30) DEFAULT NULL,
  `bankaddress` varchar(100) DEFAULT NULL,
  `ifsc` varchar(20) DEFAULT NULL,
  `accno` varchar(20) DEFAULT NULL,
  `idsubmitted` varchar(100) NOT NULL,
  `idnumber` varchar(100) NOT NULL,
  `purchase` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_customer`
--

LOCK TABLES `new_customer` WRITE;
/*!40000 ALTER TABLE `new_customer` DISABLE KEYS */;
INSERT INTO `new_customer` VALUES (1,'Mr','bk','09/02/1992','mathe','gvj',NULL,'13-B-Kala Bagh','305001',NULL,'8754539556','',NULL,NULL,NULL,NULL,'adharcard','123456789','yes'),(2,'Mr','soham','09','fa','ma','','13-b-kala bagh','305001','','8754539556','','','','','','adhar','123456789','yes'),(3,'Mr','soham  kapoor','09/02/1992','mahendra kapoor','ritu kapoor','','','305001','','8754539556','','','','','',' adhar',' 123456     ','no'),(4,'Mr','anmol  mehra','29/01/1992','anil','neeru','','','305001','','8754539556','','','','','',' adhar',' 12345','no'),(5,'Mr','anmol  mehra','29/01/1992','anil','neeru','','','305001','','8754539556','','','','','',' adhar',' 1236547899874563','no'),(6,'Mr','jn  ka','29/01/1992','ha','ja','','','305001','','8754539556','','','','','',' adhar',' 1236547899874563','yes'),(7,'Mr','anmol  df','29/01/1992','ha','neeru','','','305001','','8754539556','','','','','',' adhar',' 1236547899874563','no'),(8,'Mr','a  c','29/01/1992','ha','ja','','','305001','','8754539556','','','','','',' adhar',' 1236547899874563','yes'),(9,'Mr','a  c','29/01/1992','ha','ja','','','305001','','8754539556','','','','','',' adhar',' 1236547899874563','yes'),(10,'Mr','a  c','29/01/1992','Mahendra Kapoor','neeru','','','305001','','8754539556','','','','','',' adhar',' 1236547899874563','yes');
/*!40000 ALTER TABLE `new_customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-20 12:45:01
