-- MySQL dump 10.13  Distrib 8.0.29, for macos12.2 (x86_64)
--
-- Host: localhost    Database: TheStateLibrary
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Accounts`
--

DROP TABLE IF EXISTS `Accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Accounts` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `usernamee` varchar(50) NOT NULL,
  `Passwordd` varchar(20) NOT NULL,
  `Rolee` enum('Admin','Employee','Member') NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `usernamee` (`usernamee`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts`
--

LOCK TABLES `Accounts` WRITE;
/*!40000 ALTER TABLE `Accounts` DISABLE KEYS */;
INSERT INTO `Accounts` VALUES (1,'ahmedauday99@localhost','A19285346','Admin'),(2,'mohammedAli@localhost','Ahnedhhd','Employee'),(3,'mahmmodMwfaq@localhost','D7689','Employee'),(4,'ibrahimAfandi@localhost','F1990','Employee'),(5,'ahmedRaed@localhost','V1990837','Employee'),(6,'kararHaider@localhost','V1bnm435','Employee'),(7,'mustafaHafad@localhost','V199nmS37','Employee'),(8,'yousefHojazi@localhost','V1086Yh','Employee'),(9,'mohammedMus22@localhost','Ftrbn56v','Member'),(10,'hussenAli@localhost','C32897','Member'),(11,'usama22@localhost','C332897','Member');
/*!40000 ALTER TABLE `Accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Accountslogs_insert` AFTER INSERT ON `accounts` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Accounts_logs
    set

  _Actions = 'Insert',
    New_usernamee = new.usernamee,
    New_Passwordd =new.Passwordd,
    New_Rolee = new.Rolee,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;

    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Accountslogs_update` AFTER UPDATE ON `accounts` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Accounts_logs
    set

  _Actions = 'Update',
    New_usernamee = new.usernamee,
    New_Passwordd =new.Passwordd,
    New_Rolee = new.Rolee,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;

    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Accountslogs_delete` AFTER DELETE ON `accounts` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Accounts_logs
    set

  _Actions = 'DELETE',
    New_usernamee = OLD.usernamee,
    New_Passwordd =OLD.Passwordd,
    New_Rolee = OLD.Rolee,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;

    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Accounts_logs`
--

DROP TABLE IF EXISTS `Accounts_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Accounts_logs` (
  `New_ID` int NOT NULL AUTO_INCREMENT,
  `_Actions` varchar(250) DEFAULT NULL,
  `New_usernamee` varchar(50) DEFAULT NULL,
  `New_Passwordd` varchar(20) DEFAULT NULL,
  `New_Rolee` enum('Admin','Employee','Member') DEFAULT NULL,
  `logs_cdate` date DEFAULT NULL,
  `logs_ctime` time DEFAULT NULL,
  `log_ByUser` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`New_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts_logs`
--

LOCK TABLES `Accounts_logs` WRITE;
/*!40000 ALTER TABLE `Accounts_logs` DISABLE KEYS */;
INSERT INTO `Accounts_logs` VALUES (1,'Insert','ahmedauday99@localhost','A19285346','Admin','2022-05-20','21:05:19','root@localhost'),(2,'Insert','mohammedAli@localhost','Ahnedhhd','Employee','2022-05-20','21:05:19','root@localhost'),(3,'Insert','mahmmodMwfaq@localhost','D7689','Employee','2022-05-20','21:05:19','root@localhost'),(4,'Insert','ibrahimAfandi@localhost','F1990','Employee','2022-05-20','21:05:19','root@localhost'),(5,'Insert','ahmedRaed@localhost','V1990837','Employee','2022-05-20','21:05:19','root@localhost'),(6,'Insert','kararHaider@localhost','V1bnm435','Employee','2022-05-20','21:05:19','root@localhost'),(7,'Insert','mustafaHafad@localhost','V199nmS37','Employee','2022-05-20','21:05:19','root@localhost'),(8,'Insert','yousefHojazi@localhost','V1086Yh','Employee','2022-05-20','21:05:19','root@localhost'),(9,'Insert','mohammedMus22@localhost','Ftrbn56v','Member','2022-05-20','21:05:19','root@localhost'),(10,'Insert','hussenAli@localhost','C32897','Member','2022-05-20','21:05:19','root@localhost'),(11,'Insert','usama22@localhost','C332897','Member','2022-05-20','21:05:19','root@localhost');
/*!40000 ALTER TABLE `Accounts_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Authors`
--

DROP TABLE IF EXISTS `Authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Authors` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `Fname` varchar(150) NOT NULL,
  `Lname` varchar(150) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Nationality` varchar(150) NOT NULL,
  `DateOfBirth` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Authors`
--

LOCK TABLES `Authors` WRITE;
/*!40000 ALTER TABLE `Authors` DISABLE KEYS */;
INSERT INTO `Authors` VALUES (1,'James','Patterson','Male','USA',1974),(2,'David','Baldacci','Male','USA',1960),(3,'Nora','Roberts','Female','USA',1950),(4,'John','Sandford','Male','USA',1944),(5,'LEE','Child','Male','UK',1954),(6,'Janet','Evanovich','Female','US',1943),(7,'Julia','Quinn','Female','US',1970);
/*!40000 ALTER TABLE `Authors` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Authorslogs_insert` AFTER INSERT ON `authors` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Authors_logs
    set

      _Actions = 'Insert',
      New_Fname =new.Fname ,
       New_Lname =new.Lname ,
       New_Gender =new.Gender,
       New_Nationality =new.Nationality ,
       New_DateOfBirth =new.DateOfBirth,
       logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;

    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Authorslogs_update` AFTER UPDATE ON `authors` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Authors_logs
    set

      _Actions = 'Update',
      New_Fname =new.Fname ,
       New_Lname =new.Lname ,
       New_Gender =new.Gender,
       New_Nationality =new.Nationality ,
       New_DateOfBirth =new.DateOfBirth,
       logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;

    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Authorslogs_delete` AFTER DELETE ON `authors` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Authors_logs
    set

      _Actions = 'DELETE',
      New_Fname =OLD.Fname ,
       New_Lname =OLD.Lname ,
       New_Gender =OLD.Gender,
       New_Nationality =OLD.Nationality ,
       New_DateOfBirth =OLD.DateOfBirth,
       logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;

    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Authors_logs`
--

DROP TABLE IF EXISTS `Authors_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Authors_logs` (
  `New_ID` int NOT NULL AUTO_INCREMENT,
  `_Actions` varchar(250) DEFAULT NULL,
  `New_Fname` varchar(150) DEFAULT NULL,
  `New_Lname` varchar(150) DEFAULT NULL,
  `New_Gender` enum('Male','Female') DEFAULT NULL,
  `New_Nationality` varchar(150) DEFAULT NULL,
  `New_DateOfBirth` int DEFAULT NULL,
  `logs_cdate` date DEFAULT NULL,
  `logs_ctime` time DEFAULT NULL,
  `log_ByUser` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`New_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Authors_logs`
--

LOCK TABLES `Authors_logs` WRITE;
/*!40000 ALTER TABLE `Authors_logs` DISABLE KEYS */;
INSERT INTO `Authors_logs` VALUES (1,'Insert','James','Patterson','Male','USA',1974,'2022-05-20','21:05:19','root@localhost'),(2,'Insert','David','Baldacci','Male','USA',1960,'2022-05-20','21:05:19','root@localhost'),(3,'Insert','Nora','Roberts','Female','USA',1950,'2022-05-20','21:05:19','root@localhost'),(4,'Insert','John','Sandford','Male','USA',1944,'2022-05-20','21:05:19','root@localhost'),(5,'Insert','LEE','Child','Male','UK',1954,'2022-05-20','21:05:19','root@localhost'),(6,'Insert','Janet','Evanovich','Female','US',1943,'2022-05-20','21:05:19','root@localhost'),(7,'Insert','Julia','Quinn','Female','US',1970,'2022-05-20','21:05:19','root@localhost');
/*!40000 ALTER TABLE `Authors_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `authorsbooks`
--

DROP TABLE IF EXISTS `authorsbooks`;
/*!50001 DROP VIEW IF EXISTS `authorsbooks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `authorsbooks` AS SELECT 
 1 AS `AuthorsName`,
 1 AS `Gender`,
 1 AS `Nationality`,
 1 AS `DateOfBirth`,
 1 AS `Title`,
 1 AS `Category`,
 1 AS `CoverType`,
 1 AS `NoOfPage`,
 1 AS `SalesRank`,
 1 AS `BookPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Books` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `AuthorID` int NOT NULL,
  `Title` varchar(250) NOT NULL,
  `Category` enum('Action and Adventure','History','Detective and Mystery','Fantasy','Horror','Romance','Sci-Fi','Thrillers') NOT NULL,
  `CoverType` enum('Hard Cover','PaperBack') NOT NULL,
  `BookPrice` decimal(5,2) NOT NULL,
  `NoOfPage` int NOT NULL,
  `SalesRank` int NOT NULL,
  `ISBN` char(10) NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`),
  KEY `AuthorName` (`AuthorID`),
  CONSTRAINT `AuthorName` FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
INSERT INTO `Books` VALUES (1,1,'The Runaway','Romance','Hard Cover',65.00,750,1,'8cd2ce7114',30),(2,2,'The 6:20 Man','Action and Adventure','Hard Cover',33.00,350,4,'dd492b32dc',20),(3,3,'Heard Of The Game','Romance','Hard Cover',40.00,500,6,'764bf24a9d',30),(4,4,'The Investigator','Detective and Mystery','Hard Cover',32.00,300,10,'985f19c5d4',10),(5,5,'How To Write a mystery','Detective and Mystery','Hard Cover',34.00,200,13,'7f79a22727',5),(6,6,'The Recovery Agent','Fantasy','Hard Cover',30.00,340,10,'7469108f63',10),(7,7,'The Bridgerton','Romance','Hard Cover',44.00,430,5,'554757dff6',10);
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bookslog_insert` AFTER INSERT ON `books` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Books_logs
    set


      _Actions='insert',
      New_AuthorID = new.AuthorID  ,
      New_Title=new.Title ,
      New_Category =new.Category ,
      New_CoverType =new.CoverType ,
      New_BookPrice =new.BookPrice,
      New_NoOfPage =new.NoOfPage  ,
      New_SalesRank =new.SalesRank ,
      New_ISBN  =new.ISBN ,
      New_Quantity =new.Quantity ,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bookslog_update` AFTER UPDATE ON `books` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Books_logs
    set


      _Actions='Update',
      New_AuthorID = new.AuthorID  ,
      New_Title=new.Title ,
      New_Category =new.Category ,
      New_CoverType =new.CoverType ,
      New_BookPrice =new.BookPrice,
      New_NoOfPage =new.NoOfPage  ,
      New_SalesRank =new.SalesRank ,
      New_ISBN  =new.ISBN ,
      New_Quantity =new.Quantity ,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bookslog_delete` AFTER DELETE ON `books` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Books_logs
    set


      _Actions='DELETE',
      New_AuthorID = OLD.AuthorID  ,
      New_Title=OLD.Title ,
      New_Category =OLD.Category ,
      New_CoverType =OLD.CoverType ,
      New_BookPrice =OLD.BookPrice,
      New_NoOfPage =OLD.NoOfPage  ,
      New_SalesRank =OLD.SalesRank ,
      New_ISBN  =OLD.ISBN ,
      New_Quantity =OLD.Quantity ,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Books_logs`
--

DROP TABLE IF EXISTS `Books_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Books_logs` (
  `New_BID` int NOT NULL AUTO_INCREMENT,
  `_Actions` varchar(250) DEFAULT NULL,
  `New_AuthorID` int DEFAULT NULL,
  `New_Title` varchar(250) DEFAULT NULL,
  `New_Category` enum('Action and Adventure','History','Detective and Mystery','Fantasy','Horror','Romance','Sci-Fi','Thrillers') DEFAULT NULL,
  `New_CoverType` enum('Hard Cover','PaperBack') DEFAULT NULL,
  `New_BookPrice` decimal(5,2) DEFAULT NULL,
  `New_NoOfPage` int DEFAULT NULL,
  `New_SalesRank` int DEFAULT NULL,
  `New_ISBN` binary(16) DEFAULT NULL,
  `New_Quantity` int DEFAULT NULL,
  `logs_cdate` date DEFAULT NULL,
  `logs_ctime` time DEFAULT NULL,
  `log_ByUser` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`New_BID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books_logs`
--

LOCK TABLES `Books_logs` WRITE;
/*!40000 ALTER TABLE `Books_logs` DISABLE KEYS */;
INSERT INTO `Books_logs` VALUES (1,'insert',1,'The Runaway','Romance','Hard Cover',65.00,750,1,_binary '8cd2ce7114\0\0\0\0\0\0',30,'2022-05-20','21:05:19','root@localhost'),(2,'insert',2,'The 6:20 Man','Action and Adventure','Hard Cover',33.00,350,4,_binary 'dd492b32dc\0\0\0\0\0\0',20,'2022-05-20','21:05:19','root@localhost'),(3,'insert',3,'Heard Of The Game','Romance','Hard Cover',40.00,500,6,_binary '764bf24a9d\0\0\0\0\0\0',30,'2022-05-20','21:05:19','root@localhost'),(4,'insert',4,'The Investigator','Detective and Mystery','Hard Cover',32.00,300,10,_binary '985f19c5d4\0\0\0\0\0\0',10,'2022-05-20','21:05:19','root@localhost'),(5,'insert',5,'How To Write a mystery','Detective and Mystery','Hard Cover',34.00,200,13,_binary '7f79a22727\0\0\0\0\0\0',5,'2022-05-20','21:05:19','root@localhost'),(6,'insert',6,'The Recovery Agent','Fantasy','Hard Cover',30.00,340,10,_binary '7469108f63\0\0\0\0\0\0',10,'2022-05-20','21:05:19','root@localhost'),(7,'insert',7,'The Bridgerton','Romance','Hard Cover',44.00,430,5,_binary '554757dff6\0\0\0\0\0\0',10,'2022-05-20','21:05:19','root@localhost');
/*!40000 ALTER TABLE `Books_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BorrowedBooks`
--

DROP TABLE IF EXISTS `BorrowedBooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BorrowedBooks` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `CustomerID` int NOT NULL,
  `BookID` int NOT NULL,
  `BorrowDate` datetime NOT NULL,
  `ReturnDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Booksss` (`BookID`),
  KEY `BorrowedBookCustomer` (`CustomerID`),
  CONSTRAINT `Booksss` FOREIGN KEY (`BookID`) REFERENCES `Books` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `BorrowedBookCustomer` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BorrowedBooks`
--

LOCK TABLES `BorrowedBooks` WRITE;
/*!40000 ALTER TABLE `BorrowedBooks` DISABLE KEYS */;
INSERT INTO `BorrowedBooks` VALUES (1,1,1,'2022-04-10 12:45:56','2022-04-20 12:45:56'),(2,2,2,'2022-05-10 10:40:20','2022-05-15 12:45:56'),(3,3,6,'2022-05-15 02:40:20','2022-05-20 03:40:20'),(4,4,5,'2022-05-20 11:40:20','2022-05-30 11:40:20');
/*!40000 ALTER TABLE `BorrowedBooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `BorrowedBookslogs_insert` AFTER INSERT ON `borrowedbooks` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into BorrowedBooks_logs
    set


      _Actions='insert',
      New_BookID_log =new.BookID ,
      New_BorrowDate =new.BorrowDate ,
      New_ReturnDate =new.ReturnDate,

      New_custID=new.CustomerID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `QuantityUpdate` AFTER INSERT ON `borrowedbooks` FOR EACH ROW BEGIN
UPDATE Books
SET Books.Quantity = books.Quantity - 1
WHERE Books.ID = New.BookID;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `BorrowedBookslogs_update` AFTER UPDATE ON `borrowedbooks` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into BorrowedBooks_logs
    set


      _Actions='Update',
      New_BookID_log =new.BookID ,
      New_BorrowDate =new.BorrowDate ,
      New_ReturnDate =new.ReturnDate,

      New_custID=new.CustomerID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `BorrowedBookslogs_delete` AFTER DELETE ON `borrowedbooks` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into BorrowedBooks_logs
    set


      _Actions='DELETE',
      New_BookID_log =OLD.BookID ,
      New_BorrowDate =OLD.BorrowDate ,
      New_ReturnDate =OLD.ReturnDate,

      New_custID=OLD.CustomerID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `BorrowedBooks_logs`
--

DROP TABLE IF EXISTS `BorrowedBooks_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BorrowedBooks_logs` (
  `New_BBID` int NOT NULL AUTO_INCREMENT,
  `_Actions` varchar(250) DEFAULT NULL,
  `New_BookID_log` int DEFAULT NULL,
  `New_custID` int DEFAULT NULL,
  `New_BorrowDate` datetime DEFAULT NULL,
  `New_ReturnDate` datetime DEFAULT NULL,
  `logs_cdate` date DEFAULT NULL,
  `logs_ctime` time DEFAULT NULL,
  `log_ByUser` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`New_BBID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BorrowedBooks_logs`
--

LOCK TABLES `BorrowedBooks_logs` WRITE;
/*!40000 ALTER TABLE `BorrowedBooks_logs` DISABLE KEYS */;
INSERT INTO `BorrowedBooks_logs` VALUES (1,'insert',1,1,'2022-04-10 12:45:56','2022-04-20 12:45:56','2022-05-20','21:05:19','root@localhost'),(2,'insert',2,2,'2022-05-10 10:40:20','2022-05-15 12:45:56','2022-05-20','21:05:19','root@localhost'),(3,'insert',6,3,'2022-05-15 02:40:20','2022-05-20 03:40:20','2022-05-20','21:05:19','root@localhost'),(4,'insert',5,4,'2022-05-20 11:40:20','2022-05-30 11:40:20','2022-05-20','21:05:19','root@localhost');
/*!40000 ALTER TABLE `BorrowedBooks_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customerborrowedbooks`
--

DROP TABLE IF EXISTS `customerborrowedbooks`;
/*!50001 DROP VIEW IF EXISTS `customerborrowedbooks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customerborrowedbooks` AS SELECT 
 1 AS `CustomerName`,
 1 AS `Gender`,
 1 AS `PhoneNumber`,
 1 AS `Addresses`,
 1 AS `DateOfBirth`,
 1 AS `BorrowDate`,
 1 AS `ReturnDate`,
 1 AS `IsDamage`,
 1 AS `DamageDate`,
 1 AS `Issues`,
 1 AS `EstimatedDamageValue`,
 1 AS `borrowPricee`,
 1 AS `Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `Fname` varchar(150) NOT NULL,
  `Mname` varchar(150) NOT NULL,
  `Lname` varchar(150) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `PhoneNumber` bigint NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Addresses` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'Ali','Ahmed','Lenani','Male',832798479,'2000-05-10','dream city 614'),(2,'Tariq','Shama','Edan','Male',84798479,'1990-05-10','mamostayan floria 22 A54'),(3,'Yousef','Ali','alatbi','Male',666698479,'1988-05-10','Azadi lkj.RD loca A455'),(4,'Ali','Ahmed','Lenani','Male',832798479,'2002-05-10','Hewa A32');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Customers_logs_insert` AFTER INSERT ON `customers` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Customers_logs
    set
      _Actions='insert',

     New_Fname =new.Fname ,
      New_Mname=new.Mname ,
       New_Lname =new.Lname ,
       New_Gender =new.Gender ,
       New_PhoneNumber=new.PhoneNumber ,
       New_DateOfBirth =new.DateOfBirth,
       New_Addresses = new.Addresses,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Customers_logs_update` AFTER UPDATE ON `customers` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Customers_logs
    set
      _Actions='Update',

     New_Fname =new.Fname ,
      New_Mname=new.Mname ,
       New_Lname =new.Lname ,
       New_Gender =new.Gender ,
       New_PhoneNumber=new.PhoneNumber ,
       New_DateOfBirth =new.DateOfBirth,
       New_Addresses = new.Addresses,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Customers_logs_delete` AFTER DELETE ON `customers` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Customers_logs
    set
      _Actions='DELETE',

     New_Fname =OLD.Fname ,
      New_Mname=OLD.Mname ,
       New_Lname =OLD.Lname ,
       New_Gender =OLD.Gender ,
       New_PhoneNumber=OLD.PhoneNumber ,
       New_DateOfBirth =OLD.DateOfBirth,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Customers_logs`
--

DROP TABLE IF EXISTS `Customers_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers_logs` (
  `New_ID` int NOT NULL AUTO_INCREMENT,
  `_Actions` varchar(250) DEFAULT NULL,
  `New_Fname` varchar(150) DEFAULT NULL,
  `New_Mname` varchar(150) DEFAULT NULL,
  `New_Lname` varchar(150) DEFAULT NULL,
  `New_Gender` enum('Male','Female') DEFAULT NULL,
  `New_PhoneNumber` bigint DEFAULT NULL,
  `New_DateOfBirth` date DEFAULT NULL,
  `New_Addresses` varchar(250) DEFAULT NULL,
  `logs_cdate` date DEFAULT NULL,
  `logs_ctime` time DEFAULT NULL,
  `log_ByUser` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`New_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers_logs`
--

LOCK TABLES `Customers_logs` WRITE;
/*!40000 ALTER TABLE `Customers_logs` DISABLE KEYS */;
INSERT INTO `Customers_logs` VALUES (1,'insert','Ali','Ahmed','Lenani','Male',832798479,'2000-05-10','dream city 614','2022-05-20','21:05:19','root@localhost'),(2,'insert','Tariq','Shama','Edan','Male',84798479,'1990-05-10','mamostayan floria 22 A54','2022-05-20','21:05:19','root@localhost'),(3,'insert','Yousef','Ali','alatbi','Male',666698479,'1988-05-10','Azadi lkj.RD loca A455','2022-05-20','21:05:19','root@localhost'),(4,'insert','Ali','Ahmed','Lenani','Male',832798479,'2002-05-10','Hewa A32','2022-05-20','21:05:19','root@localhost');
/*!40000 ALTER TABLE `Customers_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `damagedbooks`
--

DROP TABLE IF EXISTS `damagedbooks`;
/*!50001 DROP VIEW IF EXISTS `damagedbooks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `damagedbooks` AS SELECT 
 1 AS `CustomerName`,
 1 AS `PhoneNumber`,
 1 AS `Addresses`,
 1 AS `DateOfBirth`,
 1 AS `Gender`,
 1 AS `BorrowDate`,
 1 AS `ReturnDate`,
 1 AS `Title`,
 1 AS `ISBN`,
 1 AS `IsDamage`,
 1 AS `DamageDate`,
 1 AS `Issues`,
 1 AS `EstimatedDamageValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `Fname` varchar(150) NOT NULL,
  `Mname` varchar(150) NOT NULL,
  `Lname` varchar(150) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `PhoneNumber` bigint NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Postion` enum('librarians','Library Technicians','Library Directors','Library Managers','accounting') DEFAULT NULL,
  `EuserAccountID` int NOT NULL,
  `Salary` decimal(6,2) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EuserAccountID` (`EuserAccountID`),
  CONSTRAINT `EmployeeUserAccount` FOREIGN KEY (`EuserAccountID`) REFERENCES `Accounts` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'Mohammed','Ali','Tariq','Male',89990890908,'1990-12-01','librarians',2,1500.00),(2,'Mahmood','Mwafaq','Fakhri','Male',8999777708,'1990-03-04','Library Directors',3,1500.00),(3,'Ibrahim','Dler','Khalil','Male',8999770988,'1992-04-05','Library Technicians',4,1000.00),(4,'Ahmed','Raed','Shakier','Male',89998777708,'1990-09-09','accounting',5,1000.00),(5,'Karar','Haider','Ghadban','Male',8994327708,'1991-09-15','Library Technicians',6,1400.00),(6,'Mustafa','Hafad','Ali','Male',899764708,'1979-02-06','Library Technicians',7,1600.00),(7,'Yousef','Alaa','Hojazi','Male',899909708,'1995-03-10','Library Technicians',8,1800.00);
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `dateCheck` BEFORE INSERT ON `employees` FOR EACH ROW BEGIN
IF NEW.DateOfBirth > '2003-01-01' THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'too young to be employee!';
END IF;
End */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Employeeslogs_insert` AFTER INSERT ON `employees` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Employees_logs
    set
      _Actions='insert',

     New_Fname =new.Fname ,
      New_Mname=new.Mname ,
       New_Lname =new.Lname ,
       New_Gender =new.Gender ,
       New_PhoneNumber=new.PhoneNumber ,
       New_DateOfBirth =new.DateOfBirth,
       New_Postion = new.Postion,
       New_EuserAccountID = new.EuserAccountID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Employeeslogs_update` AFTER UPDATE ON `employees` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Employees_logs
    set
      _Actions='Update',

     New_Fname =new.Fname ,
      New_Mname=new.Mname ,
       New_Lname =new.Lname ,
       New_Gender =new.Gender ,
       New_PhoneNumber=new.PhoneNumber ,
       New_DateOfBirth =new.DateOfBirth,
       New_Postion = new.Postion,
       New_EuserAccountID = new.EuserAccountID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Employeeslogs_delete` AFTER DELETE ON `employees` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Employees_logs
    set
      _Actions='DELETE',

     New_Fname =OLD.Fname ,
      New_Mname=OLD.Mname ,
       New_Lname =OLD.Lname ,
       New_Gender =OLD.Gender ,
       New_PhoneNumber=OLD.PhoneNumber ,
       New_DateOfBirth =OLD.DateOfBirth,
       New_Postion = OLD.Postion,
       New_EuserAccountID = OLD.EuserAccountID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Employees_logs`
--

DROP TABLE IF EXISTS `Employees_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees_logs` (
  `New_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `_Actions` varchar(250) DEFAULT NULL,
  `New_Fname` varchar(150) DEFAULT NULL,
  `New_Mname` varchar(150) DEFAULT NULL,
  `New_Lname` varchar(150) DEFAULT NULL,
  `New_Gender` enum('Male','Female') DEFAULT NULL,
  `New_PhoneNumber` bigint DEFAULT NULL,
  `New_DateOfBirth` date DEFAULT NULL,
  `New_Postion` enum('librarians','Library Technicians','Library Directors','Library Managers','accounting') DEFAULT NULL,
  `New_EuserAccountID` int DEFAULT NULL,
  `New_Salary` decimal(6,2) DEFAULT NULL,
  `logs_cdate` date DEFAULT NULL,
  `logs_ctime` time DEFAULT NULL,
  `log_ByUser` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`New_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees_logs`
--

LOCK TABLES `Employees_logs` WRITE;
/*!40000 ALTER TABLE `Employees_logs` DISABLE KEYS */;
INSERT INTO `Employees_logs` VALUES (1,'insert','Mohammed','Ali','Tariq','Male',89990890908,'1990-12-01','librarians',2,NULL,'2022-05-20','21:05:19','root@localhost'),(2,'insert','Mahmood','Mwafaq','Fakhri','Male',8999777708,'1990-03-04','Library Directors',3,NULL,'2022-05-20','21:05:19','root@localhost'),(3,'insert','Ibrahim','Dler','Khalil','Male',8999770988,'1992-04-05','Library Technicians',4,NULL,'2022-05-20','21:05:19','root@localhost'),(4,'insert','Ahmed','Raed','Shakier','Male',89998777708,'1990-09-09','accounting',5,NULL,'2022-05-20','21:05:19','root@localhost'),(5,'insert','Karar','Haider','Ghadban','Male',8994327708,'1991-09-15','Library Technicians',6,NULL,'2022-05-20','21:05:19','root@localhost'),(6,'insert','Mustafa','Hafad','Ali','Male',899764708,'1979-02-06','Library Technicians',7,NULL,'2022-05-20','21:05:19','root@localhost'),(7,'insert','Yousef','Alaa','Hojazi','Male',899909708,'1995-03-10','Library Technicians',8,NULL,'2022-05-20','21:05:19','root@localhost');
/*!40000 ALTER TABLE `Employees_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employeess`
--

DROP TABLE IF EXISTS `employeess`;
/*!50001 DROP VIEW IF EXISTS `employeess`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeess` AS SELECT 
 1 AS `EmployeeName`,
 1 AS `usernamee`,
 1 AS `Rolee`,
 1 AS `gender`,
 1 AS `phonenumber`,
 1 AS `dateofbirth`,
 1 AS `postion`,
 1 AS `Salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Members`
--

DROP TABLE IF EXISTS `Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Members` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `Fname` varchar(150) NOT NULL,
  `Mname` varchar(150) NOT NULL,
  `Lname` varchar(150) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `PhoneNumber` bigint NOT NULL,
  `Age` int NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Address` varchar(250) NOT NULL,
  `StudyLine` enum('None Student','Bachelor','Master','PHD','Student') NOT NULL,
  `MuserAccountID` int NOT NULL,
  `MembershipTypeID` int NOT NULL,
  `MembershipStart` datetime NOT NULL,
  `MembershipEnd` datetime NOT NULL,
  `ReportID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `MuserAccountID` (`MuserAccountID`),
  UNIQUE KEY `ReportID` (`ReportID`),
  KEY `MembershipSubscription` (`MembershipTypeID`),
  CONSTRAINT `MembershipSubscription` FOREIGN KEY (`MembershipTypeID`) REFERENCES `MembershipTypes` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MembersReports` FOREIGN KEY (`ReportID`) REFERENCES `Reports` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MemberUserAccount` FOREIGN KEY (`MuserAccountID`) REFERENCES `Accounts` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CHKPersonAge` CHECK ((`Age` >= 17))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Members`
--

LOCK TABLES `Members` WRITE;
/*!40000 ALTER TABLE `Members` DISABLE KEYS */;
INSERT INTO `Members` VALUES (1,'Hussen','Ali','Alatbi','Male',71236783628,19,'2000-05-10','hewa','Student',10,1,'2022-05-01 12:45:56','2023-05-01 12:45:56',NULL),(2,'Mohammed','Mustafa','Mohammed','Male',74746783628,21,'2002-06-10','Andazaran','Student',9,2,'2022-04-01 12:45:56','2022-10-01 12:45:56',NULL),(3,'Usama','Sardar','Mohammed','Male',747645783628,20,'2000-09-10','baktiari','Student',11,3,'2022-05-01 12:45:56','2022-06-01 12:45:56',1);
/*!40000 ALTER TABLE `Members` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `dateCheckerStart` BEFORE INSERT ON `members` FOR EACH ROW BEGIN
IF NEW.MembershipStart < sysdate() THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid date start for members!';
END IF;
End */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Memberslogs_insert` AFTER INSERT ON `members` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Members_logs
    set
      _Actions='insert',

     New_Fname =new.Fname ,
      New_Mname=new.Mname ,
       New_Lname =new.Lname ,
       New_Gender =new.Gender ,
       New_PhoneNumber=new.PhoneNumber ,
       New_DateOfBirth =new.DateOfBirth,
       New_Age =new.Age,
       New_Address =new.Address,
       New_StudyLine = new.StudyLine,
       New_MuserAccountID = new.MuserAccountID,
       New_MembershipTypeID = new.MembershipTypeID,
       New_MembershipStart=new.MembershipStart  ,
     New_MembershipEnd=new.MembershipEnd,
       New_ReportID_logs=new.ReportID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Memberslogs_update` AFTER UPDATE ON `members` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Members_logs
    set
      _Actions='Update',

     New_Fname =new.Fname ,
      New_Mname=new.Mname ,
       New_Lname =new.Lname ,
       New_Gender =new.Gender ,
       New_PhoneNumber=new.PhoneNumber ,
       New_DateOfBirth =new.DateOfBirth,
       New_Age =new.Age,
       New_Address =new.Address,
       New_StudyLine = new.StudyLine,
       New_MuserAccountID = new.MuserAccountID,
       New_MembershipTypeID = new.MembershipTypeID,
       New_MembershipStart=new.MembershipStart  ,
     New_MembershipEnd=new.MembershipEnd,
       New_ReportID_logs=new.ReportID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Memberslogs_delete` AFTER DELETE ON `members` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Members_logs
    set
      _Actions='DELETE',

     New_Fname =OLD.Fname ,
      New_Mname=OLD.Mname ,
       New_Lname =OLD.Lname ,
       New_Gender =OLD.Gender ,
       New_PhoneNumber=OLD.PhoneNumber ,
       New_DateOfBirth =OLD.DateOfBirth,
       New_Age =OLD.Age,
       New_Address =OLD.Address,
       New_StudyLine = OLD.StudyLine,
       New_MuserAccountID = OLD.MuserAccountID,
       New_MembershipTypeID = OLD.MembershipTypeID,
        New_MembershipStart=OLD.MembershipStart  ,
     New_MembershipEnd=OLD.MembershipEnd,
       New_ReportID_logs=OLD.ReportID,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Members_logs`
--

DROP TABLE IF EXISTS `Members_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Members_logs` (
  `New_ID` int NOT NULL AUTO_INCREMENT,
  `_Actions` varchar(250) DEFAULT NULL,
  `New_Fname` varchar(150) DEFAULT NULL,
  `New_Mname` varchar(150) DEFAULT NULL,
  `New_Lname` varchar(150) DEFAULT NULL,
  `New_Gender` enum('Male','Female') DEFAULT NULL,
  `New_PhoneNumber` bigint DEFAULT NULL,
  `New_Age` int DEFAULT NULL,
  `New_DateOfBirth` date DEFAULT NULL,
  `New_Address` varchar(250) DEFAULT NULL,
  `New_StudyLine` enum('None Student','Bachelor','Master','PHD','Student') DEFAULT NULL,
  `New_MuserAccountID` int DEFAULT NULL,
  `New_MembershipTypeID` int DEFAULT NULL,
  `New_ReportID_logs` int DEFAULT NULL,
  `New_MembershipStart` datetime DEFAULT NULL,
  `New_MembershipEnd` datetime DEFAULT NULL,
  `logs_cdate` date DEFAULT NULL,
  `logs_ctime` time DEFAULT NULL,
  `log_ByUser` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`New_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Members_logs`
--

LOCK TABLES `Members_logs` WRITE;
/*!40000 ALTER TABLE `Members_logs` DISABLE KEYS */;
INSERT INTO `Members_logs` VALUES (1,'insert','Hussen','Ali','Alatbi','Male',71236783628,19,'2000-05-10','hewa','Student',10,1,NULL,'2022-05-01 12:45:56','2023-05-01 12:45:56','2022-05-20','21:05:19','root@localhost'),(2,'insert','Mohammed','Mustafa','Mohammed','Male',74746783628,21,'2002-06-10','Andazaran','Student',9,2,NULL,'2022-04-01 12:45:56','2022-10-01 12:45:56','2022-05-20','21:05:19','root@localhost'),(3,'insert','Usama','Sardar','Mohammed','Male',747645783628,20,'2000-09-10','baktiari','Student',11,3,1,'2022-05-01 12:45:56','2022-06-01 12:45:56','2022-05-20','21:05:19','root@localhost');
/*!40000 ALTER TABLE `Members_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `membersdata`
--

DROP TABLE IF EXISTS `membersdata`;
/*!50001 DROP VIEW IF EXISTS `membersdata`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `membersdata` AS SELECT 
 1 AS `MembersNames`,
 1 AS `PhoneNumber`,
 1 AS `Gender`,
 1 AS `Age`,
 1 AS `checkAge(mm.Age)`,
 1 AS `DateOfBirth`,
 1 AS `Address`,
 1 AS `StudyLine`,
 1 AS `Subscriptions`,
 1 AS `MembershipStart`,
 1 AS `MemberSince`,
 1 AS `Status`,
 1 AS `MembershipEnd`,
 1 AS `Price`,
 1 AS `usernamee`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `MembershipTypes`
--

DROP TABLE IF EXISTS `MembershipTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MembershipTypes` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `Subscription` enum('Monthly','6 Month','12 Month') NOT NULL,
  `Price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MembershipTypes`
--

LOCK TABLES `MembershipTypes` WRITE;
/*!40000 ALTER TABLE `MembershipTypes` DISABLE KEYS */;
INSERT INTO `MembershipTypes` VALUES (1,'12 Month',100.00),(2,'6 Month',75.00),(3,'Monthly',50.00);
/*!40000 ALTER TABLE `MembershipTypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `MembershipTypeslogs_insert` AFTER INSERT ON `membershiptypes` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into MembershipTypes_logs
    set
      _Actions='insert',

     New_Subscription =new.Subscription,
     New_Price=new.Price,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `MembershipTypeslogs_update` AFTER UPDATE ON `membershiptypes` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into MembershipTypes_logs
    set
      _Actions='Update',

     New_Subscription =new.Subscription,
     New_Price=new.Price,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `MembershipTypeslogs_delete` AFTER DELETE ON `membershiptypes` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into MembershipTypes_logs
    set
      _Actions='DELETE',

     New_Subscription =OLD.Subscription,
     New_Price=OLD.Price,

     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `MembershipTypes_logs`
--

DROP TABLE IF EXISTS `MembershipTypes_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MembershipTypes_logs` (
  `New_ID` int NOT NULL AUTO_INCREMENT,
  `_Actions` varchar(250) DEFAULT NULL,
  `New_Subscription` enum('Monthly','6 Month','12 Month') DEFAULT NULL,
  `New_Price` decimal(5,2) DEFAULT NULL,
  `logs_cdate` date DEFAULT NULL,
  `logs_ctime` time DEFAULT NULL,
  `log_ByUser` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`New_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MembershipTypes_logs`
--

LOCK TABLES `MembershipTypes_logs` WRITE;
/*!40000 ALTER TABLE `MembershipTypes_logs` DISABLE KEYS */;
INSERT INTO `MembershipTypes_logs` VALUES (1,'insert','12 Month',100.00,'2022-05-20','21:05:19','root@localhost'),(2,'insert','6 Month',75.00,'2022-05-20','21:05:19','root@localhost'),(3,'insert','Monthly',50.00,'2022-05-20','21:05:19','root@localhost');
/*!40000 ALTER TABLE `MembershipTypes_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nonereturnedbooks`
--

DROP TABLE IF EXISTS `nonereturnedbooks`;
/*!50001 DROP VIEW IF EXISTS `nonereturnedbooks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nonereturnedbooks` AS SELECT 
 1 AS `CustomerName`,
 1 AS `Gender`,
 1 AS `PhoneNumber`,
 1 AS `Addresses`,
 1 AS `DateOfBirth`,
 1 AS `BorrowDate`,
 1 AS `ReturnDate`,
 1 AS `IsDamage`,
 1 AS `DamageDate`,
 1 AS `Issues`,
 1 AS `EstimatedDamageValue`,
 1 AS `borrowPricee`,
 1 AS `Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Reports`
--

DROP TABLE IF EXISTS `Reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reports` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `BorrowedBookID` int NOT NULL,
  `IsDamage` tinyint(1) NOT NULL,
  `DamageDate` date NOT NULL,
  `Issues` varchar(200) NOT NULL,
  `EstimatedDamageValue` double(5,2) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `BorrowedBookID` (`BorrowedBookID`),
  CONSTRAINT `DamageReport` FOREIGN KEY (`BorrowedBookID`) REFERENCES `BorrowedBooks` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reports`
--

LOCK TABLES `Reports` WRITE;
/*!40000 ALTER TABLE `Reports` DISABLE KEYS */;
INSERT INTO `Reports` VALUES (1,1,1,'2022-05-20','Water damage',10.00),(2,2,1,'2022-05-30','Missing Page',20.00),(3,3,0,'2022-05-30','nothing',0.00),(4,4,0,'2022-05-30','nothing',0.00);
/*!40000 ALTER TABLE `Reports` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Reportslogs_insert` AFTER INSERT ON `reports` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Reports_logs
    set
      _Actions='insert',

     new_borrowedBookID=new.BorrowedBookID,
     New_IsDamage =new.IsDamage,
     New_DamageDate =new.DamageDate,
     New_Issues =new.Issues,
     New_EstimatedDamageValue =new.EstimatedDamageValue,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Reportslogs_update` AFTER UPDATE ON `reports` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Reports_logs
    set
      _Actions='Update',

     new_borrowedBookID=new.BorrowedBookID,
     New_IsDamage =new.IsDamage,
     New_DamageDate =new.DamageDate,
     New_Issues =new.Issues,
     New_EstimatedDamageValue =new.EstimatedDamageValue,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Reportslogs_delete` AFTER DELETE ON `reports` FOR EACH ROW begin
        DECLARE vUser varchar(50);
        select user() into vUser;
    insert into Reports_logs
    set
      _Actions='DELETE',

     new_borrowedBookID=OLD.BorrowedBookID,
     New_IsDamage =OLD.IsDamage,
     New_DamageDate =OLD.DamageDate,
     New_Issues =OLD.Issues,
     New_EstimatedDamageValue =OLD.EstimatedDamageValue,
     logs_cdate =current_date(),
    logs_ctime =current_time(),
    log_ByUser=vUser;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Reports_logs`
--

DROP TABLE IF EXISTS `Reports_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reports_logs` (
  `New_ID` int NOT NULL AUTO_INCREMENT,
  `_Actions` varchar(250) DEFAULT NULL,
  `new_borrowedBookID` int DEFAULT NULL,
  `New_IsDamage` tinyint(1) DEFAULT NULL,
  `New_DamageDate` date DEFAULT NULL,
  `New_Issues` varchar(200) DEFAULT NULL,
  `New_EstimatedDamageValue` decimal(5,2) DEFAULT NULL,
  `logs_cdate` date DEFAULT NULL,
  `logs_ctime` time DEFAULT NULL,
  `log_ByUser` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`New_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reports_logs`
--

LOCK TABLES `Reports_logs` WRITE;
/*!40000 ALTER TABLE `Reports_logs` DISABLE KEYS */;
INSERT INTO `Reports_logs` VALUES (1,'insert',1,1,'2022-05-20','Water damage',10.00,'2022-05-20','21:05:19','root@localhost'),(2,'insert',2,1,'2022-05-30','Missing Page',20.00,'2022-05-20','21:05:19','root@localhost'),(3,'insert',3,0,'2022-05-30','nothing',0.00,'2022-05-20','21:05:19','root@localhost'),(4,'insert',4,0,'2022-05-30','nothing',0.00,'2022-05-20','21:05:19','root@localhost');
/*!40000 ALTER TABLE `Reports_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `authorsbooks`
--

/*!50001 DROP VIEW IF EXISTS `authorsbooks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `authorsbooks` AS select concat_ws(' ',`authors`.`Fname`,`authors`.`Lname`) AS `AuthorsName`,`authors`.`Gender` AS `Gender`,`authors`.`Nationality` AS `Nationality`,`authors`.`DateOfBirth` AS `DateOfBirth`,`books`.`Title` AS `Title`,`books`.`Category` AS `Category`,`books`.`CoverType` AS `CoverType`,`books`.`NoOfPage` AS `NoOfPage`,`books`.`SalesRank` AS `SalesRank`,`books`.`BookPrice` AS `BookPrice` from (`books` join `authors` on((`books`.`AuthorID` = `authors`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customerborrowedbooks`
--

/*!50001 DROP VIEW IF EXISTS `customerborrowedbooks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerborrowedbooks` AS select concat(`C`.`Fname`,' ',`C`.`Mname`,' ',`C`.`Lname`) AS `CustomerName`,`C`.`Gender` AS `Gender`,`C`.`PhoneNumber` AS `PhoneNumber`,`C`.`Addresses` AS `Addresses`,`C`.`DateOfBirth` AS `DateOfBirth`,`borrowedbooks`.`BorrowDate` AS `BorrowDate`,`borrowedbooks`.`ReturnDate` AS `ReturnDate`,`R`.`IsDamage` AS `IsDamage`,`R`.`DamageDate` AS `DamageDate`,`R`.`Issues` AS `Issues`,`R`.`EstimatedDamageValue` AS `EstimatedDamageValue`,(`B`.`BookPrice` / 2) AS `borrowPricee`,((`B`.`BookPrice` / 2) + `R`.`EstimatedDamageValue`) AS `Total` from (((`borrowedbooks` join `customers` `C` on((`borrowedbooks`.`CustomerID` = `C`.`ID`))) join `reports` `R` on((`borrowedbooks`.`ID` = `R`.`BorrowedBookID`))) join `books` `B` on((`borrowedbooks`.`BookID` = `B`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `damagedbooks`
--

/*!50001 DROP VIEW IF EXISTS `damagedbooks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `damagedbooks` AS select concat(`C`.`Fname`,' ',`C`.`Mname`,' ',`C`.`Lname`) AS `CustomerName`,`C`.`PhoneNumber` AS `PhoneNumber`,`C`.`Addresses` AS `Addresses`,`C`.`DateOfBirth` AS `DateOfBirth`,`C`.`Gender` AS `Gender`,`BB`.`BorrowDate` AS `BorrowDate`,`BB`.`ReturnDate` AS `ReturnDate`,`B`.`Title` AS `Title`,`B`.`ISBN` AS `ISBN`,`R`.`IsDamage` AS `IsDamage`,`R`.`DamageDate` AS `DamageDate`,`R`.`Issues` AS `Issues`,`R`.`EstimatedDamageValue` AS `EstimatedDamageValue` from (((`borrowedbooks` `BB` join `books` `B` on((`BB`.`BookID` = `B`.`ID`))) join `customers` `C` on((`BB`.`CustomerID` = `C`.`ID`))) join `reports` `R` on((`BB`.`ID` = `R`.`BorrowedBookID`))) where (`R`.`IsDamage` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeess`
--

/*!50001 DROP VIEW IF EXISTS `employeess`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeess` AS select concat_ws(' ',`employees`.`Fname`,`employees`.`Mname`,`employees`.`Lname`) AS `EmployeeName`,`A`.`usernamee` AS `usernamee`,`A`.`Rolee` AS `Rolee`,`employees`.`Gender` AS `gender`,`employees`.`PhoneNumber` AS `phonenumber`,`employees`.`DateOfBirth` AS `dateofbirth`,`employees`.`Postion` AS `postion`,`employees`.`Salary` AS `Salary` from (`employees` join `accounts` `A` on((`employees`.`EuserAccountID` = `A`.`ID`))) order by `employees`.`Salary` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `membersdata`
--

/*!50001 DROP VIEW IF EXISTS `membersdata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `membersdata` AS select concat_ws(' ',`mm`.`Fname`,`mm`.`Mname`,`mm`.`Lname`) AS `MembersNames`,`mm`.`PhoneNumber` AS `PhoneNumber`,`mm`.`Gender` AS `Gender`,`mm`.`Age` AS `Age`,`checkAge`(`mm`.`Age`) AS `checkAge(mm.Age)`,`mm`.`DateOfBirth` AS `DateOfBirth`,`mm`.`Address` AS `Address`,`mm`.`StudyLine` AS `StudyLine`,concat(`memberLevel`(`MT`.`Price`),' ',`MT`.`Subscription`,' ',`MT`.`Price`) AS `Subscriptions`,`mm`.`MembershipStart` AS `MembershipStart`,`getMonths`(`mm`.`MembershipStart`) AS `MemberSince`,if((`mm`.`MembershipEnd` = sysdate()),'Expired','Not Expired') AS `Status`,`mm`.`MembershipEnd` AS `MembershipEnd`,`MT`.`Price` AS `Price`,`A`.`usernamee` AS `usernamee` from (((`members` `mm` join `membershiptypes` `MT` on((`mm`.`MembershipTypeID` = `MT`.`ID`))) join `accounts` `A` on((`mm`.`MuserAccountID` = `A`.`ID`))) left join `reports` `r1r` on((`mm`.`ReportID` = `r1r`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nonereturnedbooks`
--

/*!50001 DROP VIEW IF EXISTS `nonereturnedbooks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nonereturnedbooks` AS select `customerborrowedbooks`.`CustomerName` AS `CustomerName`,`customerborrowedbooks`.`Gender` AS `Gender`,`customerborrowedbooks`.`PhoneNumber` AS `PhoneNumber`,`customerborrowedbooks`.`Addresses` AS `Addresses`,`customerborrowedbooks`.`DateOfBirth` AS `DateOfBirth`,`customerborrowedbooks`.`BorrowDate` AS `BorrowDate`,`customerborrowedbooks`.`ReturnDate` AS `ReturnDate`,`customerborrowedbooks`.`IsDamage` AS `IsDamage`,`customerborrowedbooks`.`DamageDate` AS `DamageDate`,`customerborrowedbooks`.`Issues` AS `Issues`,`customerborrowedbooks`.`EstimatedDamageValue` AS `EstimatedDamageValue`,`customerborrowedbooks`.`borrowPricee` AS `borrowPricee`,`customerborrowedbooks`.`Total` AS `Total` from `customerborrowedbooks` where (`customerborrowedbooks`.`ReturnDate` is null) */;
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

-- Dump completed on 2022-05-20 21:08:28
