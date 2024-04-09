-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: finalproject
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `filmsactors`
--

DROP TABLE IF EXISTS `filmsactors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmsactors` (
  `FilmID` int NOT NULL,
  `ActorID` int NOT NULL,
  `Role` varchar(50) NOT NULL,
  PRIMARY KEY (`FilmID`,`ActorID`),
  KEY `ActorID` (`ActorID`),
  CONSTRAINT `filmsactors_ibfk_1` FOREIGN KEY (`FilmID`) REFERENCES `films` (`FilmID`),
  CONSTRAINT `filmsactors_ibfk_2` FOREIGN KEY (`ActorID`) REFERENCES `actors` (`ActorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmsactors`
--

LOCK TABLES `filmsactors` WRITE;
/*!40000 ALTER TABLE `filmsactors` DISABLE KEYS */;
INSERT INTO `filmsactors` VALUES (1,1,'Andy Dufresne'),(1,2,'Ellis Boyd \"Red\" Redding'),(2,3,'Vito Corleone'),(2,4,'Michael Corleone'),(3,5,'Bruce Wayne / Batman'),(3,6,'Joker'),(4,3,'Vito Corleone'),(4,4,'Michael Corleone'),(5,4,'Vincent Vega'),(5,7,'Jules Winnfield'),(6,2,'Itzhak Stern'),(6,9,'Oskar Schindler'),(7,8,'Frodo Baggins'),(7,10,'Aragorn'),(8,4,'Narrator'),(8,8,'Tyler Durden'),(9,8,'Lt. Dan Taylor'),(9,11,'Forrest Gump'),(10,12,'Dominick \"Dom\" Cobb');
/*!40000 ALTER TABLE `filmsactors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-13  9:39:14
