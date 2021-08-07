-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
                          `ID` int NOT NULL AUTO_INCREMENT,
                          `USER_NAME` varchar(45) NOT NULL,
                          `PASSWORD` varchar(45) NOT NULL,
                          PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','123456');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
                          `ID` int NOT NULL AUTO_INCREMENT,
                          `MOVIE_NAME` varchar(45) NOT NULL,
                          `ACTOR_NAME` varchar(45) NOT NULL,
                          `DIRECTOR_NAME` varchar(45) NOT NULL,
                          `IMDBSCORE` varchar(45) NOT NULL,
                          `TYPE` varchar(45) NOT NULL,
                          PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Esaretin Bedeli', 'Tim Robbins, Morgan Freeman, William Sadler', 'Frank Darabont', '9,3', 'Dram'),
                            (2,'Kara Şövalye', 'Christian Bale, Heath Ledger, Aaron Eckhart', 'Christopher Nolan', '9', 'Aksiyon'),
                            (3,'Baba', 'Brad Pitt, Edward Norton, Meat Loaf', 'Francis Ford Coppola', '9,2', 'Suç'),
                            (4,'Dövüş Kulübü', 'Tim Robbins, Morgan Freeman, William Sadler', 'David Fincher', '8,8', 'Dram'),
                            (5,'Yüzüklerin Efendisi: Kralın Dönüşü', 'Elijah Wood, Viggo Mortensen, Ian McKellen', ' Peter Jackson', '8,9', 'Macera'),
                            (6,'Yüzüklerin Efendisi: Yüzük Kardeşliği ', 'Elijah Wood, Ian McKellen, Orlando Bloom', 'Peter Jackson', '8,8', 'Macera'),
                            (7,'Başlangıç', 'Leonardo DiCaprio, Elliot Page, Ken Watanabe', 'Christopher Nolan', '8,8', 'Aksiyon'),
                            (8,'Forrest Gump', 'Tom Hanks, Robin Wright, Gary Sinise', 'Robert Zemeckis ', '8,8', 'Dram'),
                            (9,'Yıldızlararası', 'Matthew McConaughey, Anne Hathaway, Jessica Chastain', 'Christopher Nolan', '8,6', 'Bilimkurgu'),
                            (10,'Prestij', 'Christian Bale, Hugh Jackman, Scarlett Johansson', 'Christopher Nolan', '8,5', 'Bilimkurgu'),
                            (11,'Yıldız Savaşları: İmparator', 'Mark Hamill, Harrison Ford, Carrie Fisher', 'Irvin Kershner', '8,7', 'Fantastik'),
                            (12,'Matrix', 'Keanu Reeves, Laurence Fishburne, Hugo Weaving', 'Lana Wachowski', '8,7', 'Bilimkurgu'),
                            (13,'Kuzuların Sessizliği', ' Jodie Foster, Anthony Hopkins, Kasi Lemmons', 'Jonathan Demme', '8,6', 'Suç'),
                            (14,'Piyanist', 'Adrien Brody, Thomas Kretschmann, Emilia Fox', 'Roman Polanski', '8,5', 'Dram'),
                            (15,'Harry Potter ve Ölüm Yadigârları', 'Daniel Radcliffe, Emma Watson, Rupert Grint', 'David Yates', '8,1', 'Fantastik'),
                            (16,'Karayıp Korsanları: Siyah inci nin Laneti', 'Johnny Depp, Geoffrey Rush, Orlando Bloom', 'Gore Verbinski', '8', 'Macera'),
                            (17,'Yenilmezler', 'Robert Downey Jr., Chris Evans, Scarlett Johansson', 'Joss Whedon', '8', 'Bilimkurgu'),
                            (18,'Truman Show', 'Jim Carrey, Ed Harris, Laura Linney', 'Peter Weir', '8,1', 'Komedi'),
                            (19,'Yukarı Bak', 'Edward Asner, Jordan Nagai, John Ratzenberger', 'Pete Docter', '8,2', 'Komedi'),
                            (20,'Hobbit: Beklenmedik Yolculuk', 'Martin Freeman, Ian McKellen, Richard Armitage', 'Peter Jackson', '8', 'Fantastik');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowmovie`
--

DROP TABLE IF EXISTS `borrowmovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `borrowmovie` (
                               `ID` int NOT NULL AUTO_INCREMENT,
                               `MOVIE_NAME` varchar(45) NOT NULL,
                               `ACTOR_NAME` varchar(45) NOT NULL,
                               `DIRECTOR_NAME` varchar(45) NOT NULL,
                               `IMDBSCORE` varchar(45) NOT NULL,
                               `TYPE` varchar(45) NOT NULL,
                               `USER_NAME` varchar(45) NOT NULL,
                               PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowmovie`
--

LOCK TABLES `borrowmovie` WRITE;
/*!40000 ALTER TABLE `borrowmovie` DISABLE KEYS */;
/*!40000 ALTER TABLE `borrowmovie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `users` (
                         `ID` int NOT NULL AUTO_INCREMENT,
                         `NAME` varchar(45) NOT NULL,
                         `SURNAME` varchar(45) NOT NULL,
                         `USERNAME` varchar(45) NOT NULL,
                         `PASSWORD` varchar(45) NOT NULL,
                         PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ADMIN','ADMIN','Admin','123456');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-29 10:43:57actor

