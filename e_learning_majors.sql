-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: e_learning
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `majors`
--

DROP TABLE IF EXISTS `majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `majors` (
  `major_id` int NOT NULL,
  `dept_id` int NOT NULL,
  `major_name` varchar(255) NOT NULL,
  PRIMARY KEY (`major_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `majors_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majors`
--

LOCK TABLES `majors` WRITE;
/*!40000 ALTER TABLE `majors` DISABLE KEYS */;
INSERT INTO `majors` VALUES (0,0,'Computer Engineering'),(1,0,'Information Science'),(2,0,'Information Technology'),(3,0,'Software Engineering'),(4,1,'Electrical Engineering'),(5,2,'Aerospace Engineering'),(6,2,'Mechanical Engineering'),(7,2,'Mining Engineering'),(8,2,'Structural Engineering'),(9,3,'Animal Science'),(10,3,'Biochemistry'),(11,3,'Biology'),(12,3,'Biomedical Engineering'),(13,3,'Genetics'),(14,3,'Microbiology'),(15,3,'Neuroscience'),(16,3,'Pharmaceutical Sciences'),(17,3,'Pharmacology'),(18,4,'Chemical Engineering'),(19,4,'Chemistry'),(20,4,'Organic Chemistry'),(21,5,'Applied Physics'),(22,5,'Engineering Physics'),(23,5,'Physics'),(24,6,'Psychology'),(25,7,'Applied Mathematics'),(26,7,'Mathematics'),(27,8,'Statistics'),(28,9,'Agricultural Economics'),(29,9,'Economics'),(30,9,'International Business'),(31,9,'Sustainability'),(32,9,'Taxation'),(33,10,'Finance'),(34,11,'Marketing'),(35,12,'Business Administration'),(36,12,'Hospitality Management'),(37,12,'Human Resources'),(38,12,'Industrial Engineering'),(39,12,'Management'),(40,12,'Supply Chain Management'),(41,12,'Systems Engineering'),(42,13,'International Studies'),(43,13,'Political Science'),(44,14,'Classical Studies'),(45,14,'History'),(46,14,'Religious Studies'),(47,15,'English'),(48,15,'Writing'),(49,16,'Philosophy'),(50,17,'Anthropology'),(51,17,'Sociology'),(52,17,'Women\'s Studies'),(53,18,'Art History'),(54,19,'Theater'),(55,20,'Film Studies'),(56,20,'Digital Media'),(57,20,'Video Game Design'),(58,21,'Music'),(59,22,'Architecture'),(60,22,'Landscape Architecture'),(61,22,'Urban Planning'),(62,23,'Agricultural Science'),(63,23,'Earth Science'),(64,23,'Environmental Science'),(65,23,'Natural Resource Management'),(66,23,'Oceanography'),(67,23,'Wildlife Management'),(68,24,'Communication'),(69,24,'Journalism'),(70,24,'Library Science'),(71,25,'Early Childhood Education'),(72,25,'Education'),(73,25,'Teaching English as a Second Language'),(74,26,'Dental Hygiene'),(75,26,'Nursing'),(76,26,'Occupational Therapy'),(77,26,'Respiratory Therapy'),(78,27,'Public Health'),(79,28,'Criminal Justice'),(80,28,'Law');
/*!40000 ALTER TABLE `majors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-07 14:10:50
