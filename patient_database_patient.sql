-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: patient_database
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `P_ID` int NOT NULL,
  `A_ID` int NOT NULL,
  `Pr_ID` int NOT NULL,
  `D_ID` int NOT NULL,
  `DO_ID` int NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Insurance` int NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Phone` varchar(12) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `SSN` varchar(11) NOT NULL,
  `MedicalHistory` varchar(100) NOT NULL,
  PRIMARY KEY (`P_ID`),
  UNIQUE KEY `P_ID_UNIQUE` (`P_ID`),
  UNIQUE KEY `A_ID_UNIQUE` (`A_ID`),
  UNIQUE KEY `FirstName_UNIQUE` (`FirstName`),
  UNIQUE KEY `LastName_UNIQUE` (`LastName`),
  UNIQUE KEY `Pr_ID_UNIQUE` (`Pr_ID`),
  UNIQUE KEY `DO_ID_UNIQUE` (`DO_ID`),
  UNIQUE KEY `Insurance_UNIQUE` (`Insurance`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `SSN_UNIQUE` (`SSN`),
  KEY `patient_ibfk_3` (`D_ID`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `patient_address` (`A_ID`),
  CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`Pr_ID`) REFERENCES `patient_procedure` (`Pr_ID`),
  CONSTRAINT `patient_ibfk_3` FOREIGN KEY (`D_ID`) REFERENCES `doctor` (`D_ID`),
  CONSTRAINT `patient_ibfk_4` FOREIGN KEY (`DO_ID`) REFERENCES `dental_office` (`DO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,1,3,5,3,'Layla','Mardini',1111111,'8/1/2002','female','111-111-1111','laylamardini@gmail.com','111-11-1111','No medical history'),(2,2,4,2,5,'Mary','Maisa',2222222,'8/5/1997','female','222-222-2222','marymaisa@gmail.com','222-22-2222','Diabetes Patient'),(3,3,2,2,2,'Sam','Philip',3333333,'6/4/1992','male','333-333-3333','samphilip@gmail.com','333-33-3333','No Medical History'),(4,4,5,3,1,'Alexandre','Smith',4444444,'1/22/1971','male','444-444-4444','alexandresmith@gmail.com','444-44-4444',' Due to his age he has a shorten of breath and he is asmatic'),(5,5,1,3,4,'Andria','Mark',5555555,'5/2/2003',NULL,'555-555-5555','andriamark@gmail.com','555-55-5555','No Medical History');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-04 23:34:42
