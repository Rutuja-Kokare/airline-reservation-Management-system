2CREATE DATABASE  IF NOT EXISTS `airdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `airdb`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: airdb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminlogin` (
  `UserName` varchar(30) NOT NULL,
  `Password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogin`
--

LOCK TABLES `adminlogin` WRITE;
/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` VALUES ('admin@gmail.com','admin');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FeedbackDateTime` datetime DEFAULT NULL,
  `EmailID` varchar(45) DEFAULT NULL,
  `FeedbackText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'2024-01-20 12:27:46','rajesh@gmail.com','Most of Products are available in your showcase and more cheaper. Thanks for good service.'),(2,'2024-01-21 11:01:17','ganesh@gmail.com','Good service and Good brands');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `FlightNo` varchar(30) NOT NULL,
  `FlightName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FlightNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES ('F-123',' Indian AirJetways'),('F-124','Indian Air Jetways'),('F-345','England Air Jetways');
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flightschedules`
--

DROP TABLE IF EXISTS `flightschedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flightschedules` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `SDate` date DEFAULT NULL,
  `FlightType` varchar(45) DEFAULT NULL,
  `Flight` varchar(45) DEFAULT NULL,
  `From1` varchar(45) DEFAULT NULL,
  `To1` varchar(45) DEFAULT NULL,
  `Departure` varchar(45) DEFAULT NULL,
  `ETA` varchar(45) DEFAULT NULL,
  `Return1` varchar(45) DEFAULT NULL,
  `EFare` decimal(10,2) DEFAULT NULL,
  `BFare` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flightschedules`
--

LOCK TABLES `flightschedules` WRITE;
/*!40000 ALTER TABLE `flightschedules` DISABLE KEYS */;
INSERT INTO `flightschedules` VALUES (1,'2024-02-25',NULL,'MH11/1234','1','2','10:00','11:00','50',30.00,NULL),(2,'2024-02-25',NULL,'MH11/1234','1','3','10:00','11:00','50',60.00,NULL),(3,'2024-02-29','Round Trip','F-123','7','1','08:17','14:17','06:18',60000.00,80000.00);
/*!40000 ALTER TABLE `flightschedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `LocationName` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'America'),(2,'Bankok'),(3,'Chennai'),(4,'Delhi'),(5,'France'),(6,'London'),(7,'Mumbai'),(8,'Pune');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `RefNo` int NOT NULL AUTO_INCREMENT,
  `SDate` date DEFAULT NULL,
  `Flight` varchar(45) DEFAULT NULL,
  `From1` varchar(45) DEFAULT NULL,
  `To1` varchar(45) DEFAULT NULL,
  `Departure` varchar(45) DEFAULT NULL,
  `ETA` varchar(45) DEFAULT NULL,
  `FareType` varchar(45) DEFAULT NULL,
  `PassengerName` varchar(45) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `EmailID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RefNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,'2024-02-29','F-123','7','1','08:17','14:17','Economy','as',1,60000.00,'Paid','rajesh@gmail.com');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `scheduleview`
--

DROP TABLE IF EXISTS `scheduleview`;
/*!50001 DROP VIEW IF EXISTS `scheduleview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `scheduleview` AS SELECT 
 1 AS `Id`,
 1 AS `SDate`,
 1 AS `FlightType`,
 1 AS `Flight`,
 1 AS `FlightName`,
 1 AS `Source`,
 1 AS `Destination`,
 1 AS `Departure`,
 1 AS `ETA`,
 1 AS `Return1`,
 1 AS `EFare`,
 1 AS `BFare`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signup` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EmailID` varchar(45) DEFAULT NULL,
  `MobileNo` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES (1,'rajesh@gmail.com','9858967898','rajesh'),(2,'ganesh@gmail.com','8964567894','ganesh'),(3,'ajay@gmail.com','8957854785','ajay'),(4,'ramesh@gmail.com','5864587858','ramesh');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `scheduleview`
--

/*!50001 DROP VIEW IF EXISTS `scheduleview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `scheduleview` AS select `a`.`Id` AS `Id`,`a`.`SDate` AS `SDate`,`a`.`FlightType` AS `FlightType`,`a`.`Flight` AS `Flight`,`b`.`FlightName` AS `FlightName`,`c`.`LocationName` AS `Source`,`d`.`LocationName` AS `Destination`,`a`.`Departure` AS `Departure`,`a`.`ETA` AS `ETA`,`a`.`Return1` AS `Return1`,`a`.`EFare` AS `EFare`,`a`.`BFare` AS `BFare` from (((`flightschedules` `a` join `flight` `b` on((`a`.`Flight` = `b`.`FlightNo`))) join `locations` `c` on((`a`.`From1` = `c`.`Id`))) join `locations` `d` on((`a`.`To1` = `d`.`Id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-26  8:59:17
