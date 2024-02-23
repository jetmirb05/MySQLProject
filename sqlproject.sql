-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurantmanagement
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(55) NOT NULL,
  `Description` varchar(55) NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Mengjesi','Ushqime te lehta'),(2,'Dreka','Ushqime energjetike me plot protein'),(3,'Darka','Ushqim i lehte me vitamina'),(4,'Embelsira','Pas hajes');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorymenuitems`
--

DROP TABLE IF EXISTS `categorymenuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorymenuitems` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CategoryID` int NOT NULL,
  `MenuItemID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `MenuItemID` (`MenuItemID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `categorymenuitems_ibfk_1` FOREIGN KEY (`MenuItemID`) REFERENCES `menuitems` (`MenuItemID`),
  CONSTRAINT `categorymenuitems_ibfk_2` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorymenuitems`
--

LOCK TABLES `categorymenuitems` WRITE;
/*!40000 ALTER TABLE `categorymenuitems` DISABLE KEYS */;
INSERT INTO `categorymenuitems` VALUES (1,2,1),(2,2,2),(3,3,1);
/*!40000 ALTER TABLE `categorymenuitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(55) NOT NULL,
  `ContactInfo` varchar(55) NOT NULL,
  `Address` text,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Leotrim','072000555','Kumanove'),(2,'Jetmir','071935444','Shkup'),(3,'Amar','071954610','Shkup'),(4,'Besir','070362182','Shkup');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(55) NOT NULL,
  `Role` varchar(55) NOT NULL,
  `ContactInfo` varchar(55) NOT NULL,
  `HireDate` varchar(55) NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Jetmir','Kamarier','071935444','01/24/2022'),(2,'Ardrin','Shef','071005003','11/15/2020'),(3,'Jasin','Menaxher','071000111','08/31/2023'),(4,'Hani','Kamarier','071111000','09/12/2022');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `InventoryID` int NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(55) NOT NULL,
  `Quantity` int NOT NULL,
  `Unit` varchar(55) NOT NULL,
  `MenuItemID` int NOT NULL,
  PRIMARY KEY (`InventoryID`),
  KEY `MenuItemID` (`MenuItemID`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`MenuItemID`) REFERENCES `menuitems` (`MenuItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (5,'Hamburger',10,'copa',1),(6,'Sallate',15,'copa',2),(7,'Coca Cola',8,'copa',3),(8,'Sallate',15,'copa',2);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitems`
--

DROP TABLE IF EXISTS `menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuitems` (
  `MenuItemID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(55) NOT NULL,
  `Description` text NOT NULL,
  `Price` decimal(3,0) NOT NULL,
  PRIMARY KEY (`MenuItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitems`
--

LOCK TABLES `menuitems` WRITE;
/*!40000 ALTER TABLE `menuitems` DISABLE KEYS */;
INSERT INTO `menuitems` VALUES (1,'Hamburger','Me patate te skuqura',190),(2,'Sallate','Pule',240),(3,'Coca Cola','Pije e gazuar',70);
/*!40000 ALTER TABLE `menuitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderDate` datetime DEFAULT NULL,
  `TotalPrice` decimal(3,0) NOT NULL,
  `Status` varchar(55) NOT NULL,
  `CustomerID` int NOT NULL,
  `EmployeeID` int NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (5,'2021-01-04 00:00:00',500,'completed',1,1),(6,'2020-03-10 00:00:00',880,'unpaid',2,3),(7,'2023-09-08 00:00:00',750,'completed',1,2),(8,'2021-01-04 00:00:00',900,'completed',3,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordersmenuitems`
--

DROP TABLE IF EXISTS `ordersmenuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordersmenuitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `MenuItemID` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `OrderID` (`OrderID`),
  KEY `MenuItemID` (`MenuItemID`),
  CONSTRAINT `ordersmenuitems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `ordersmenuitems_ibfk_2` FOREIGN KEY (`MenuItemID`) REFERENCES `menuitems` (`MenuItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordersmenuitems`
--

LOCK TABLES `ordersmenuitems` WRITE;
/*!40000 ALTER TABLE `ordersmenuitems` DISABLE KEYS */;
INSERT INTO `ordersmenuitems` VALUES (5,5,2),(6,6,2),(7,7,3),(8,5,3);
/*!40000 ALTER TABLE `ordersmenuitems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 10:19:56
