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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
                          `ID` int NOT NULL AUTO_INCREMENT,
                          `USER_NAME` varchar(45) NOT NULL,
                          `PASSWORD` varchar(45) NOT NULL,
                          PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
                          `ID` int NOT NULL AUTO_INCREMENT,
                          `MOVIE_NAME` varchar(45) NOT NULL,
                          `ACTOR_NAME` varchar(45) NOT NULL,
                          `DIRECTOR_NAME` varchar(45) NOT NULL,
                          `IMDBSCORE` varchar(45) NOT NULL,
                          `TYPE` varchar(45) NOT NULL,
                          PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'YAŞLI ADAM VE DENİZ','ERNEST HEMINGWAY','115','ROMAN'),(2,'YALNIZ EFE','ÖMER SEYFETTİN','127','KURGU'),(3,'VATAN YAHUT SİLİSTRE','NAMIK KEMAL','80','KURGU'),(4,'ÜÇ SİLAHŞÖRLER','ALEXANDRE DUMAS','80','TARİH'),(5,'TOM SAWYER','MARK TWAIN','128','ROMAN'),(6,'ŞERMİN','TEVFİK FİKRET','79','ŞİİR'),(7,'80 GÜNDE DEVRİ ALEM','JULES VERNE','80','MACERA'),(8,'ROBİN HOOD','HOWARD PYLE','80','ROMAN'),(9,'POLLYANNA','ELEANOR H. PORTER','128','ROMAN'),(10,'PİNOKYO','C. COLLODI','142','ROMAN'),(11,'PETER PAN','J.M. BARRIE','144','MACERA'),(12,'ÖMER\'İN ÇOÇUKLUĞU','MUALLİM NACİ','62','KURGU'),(13,'OLIVER TWIST','CHARLES DICKENS','96','ROMAN'),(14,'MUTLU PRENS','OSCAR WILDE','96','MASAL'),(15,'GULIVER\'İN GEZİLERİ','JONATTAN SWIFT','94','ROMAN'),(16,'HEIDI','JOHANNA SPYRI','128','ROMAN'),(17,'DEFİNE ADASI','ROBERT L. STEVENSON','120','MACERA'),(18,'DEDE KORKUT MASALLARI','DEDE KORKUT','111','MASAL'),(19,'ALTIN IŞIK','ZİYA GÖKALP','63','ÖYKÜ'),(20,'ANDERSEN MASALLARI','ANDERSEN','72','MASAL'),(23,'ÇALI KUŞU','H.EDİP ADIVAR','406','KURGU'),(24,'GENİŞ ZAMANLAR','AYŞE KULİN','114','HİKAYE'),(25,'YAPRAK DÖKÜMÜ','R.NURİ GÜNTEKİN','134','ROMAN'),(26,'İNTİBAH','NAMIK KEMAL','176','ROMAN'),(28,'DON KİŞOT','CERVANTES','320','KURGU'),(29,'VADİDEKİ ZAMBAK','BALZAK','366','KURGU'),(30,'SEMERKANT','AMİN MAALOUF','318','ROMAN'),(31,'İKİ ŞEHRİN HİKAYESİ','CHARLES DİCKENS','399','HİKAYE'),(32,'KUMARBAZ','DOSTOYEVSKI','160','ROMAN'),(33,'ÖLÜCANLAR','GOGOL','319','ROMAN'),(34,'ANA','GORKİ','344','ROMAN'),(36,'NOTRE DAME’İN KAMBURU','VİCTOR HUGO','408','ROMAN'),(38,'SOKRATES’İN SAVUNMASI','PLATON','129','FELSEFE'),(39,'BABALAR VE OĞULLAR','TURGENYEV','287','ROMAN'),(40,'CİMRİ','MOLİERE','120','DRAMA'),(41,'DİRİLİŞ','TOLSTOY','284','ROMAN'),(42,'SAVAŞ VE BARIŞ II','TOLSTOY','768','TARİH'),(44,'MOR SALKIMLI EV','H.EDİP ADIVAR','301','GEZİ'),(45,'KILIÇ YARASI GİBİ','H.EDİP ADIVAR','344','TARİH'),(46,'SİNEKLİ BAKKAL','H.EDİP ADIVAR','455','ROMAN'),(47,'İÇİMİZDE BİR YER','AHMET ALTAN','158','ROMAN'),(48,'ATEŞTEN GÖMLEK','H.EDİP ADIVAR','221','KURGU'),(49,'HANDAN','H.EDİP ADIVAR','216','KURGU'),(50,'SARI ZEYBEK','CAN DÜNDAR','140','BİYOGRAFİ'),(51,'YARİM HAZİRAN','CAN DÜNDAR','155','ROMAN'),(53,'MURTAZA','ORHAN KEMAL','356','ROMAN'),(54,'RUH ADAM','HÜSEYİN NİHAL ATSIZ','320','KURGU'),(55,'ŞEKER PORTAKALI','JOSÉ MAURO DE VASCONCELOS','184','ROMAN'),(56,'KORKU','STEFAN ZWEİG','80','HİKAYE'),(57,'AŞK','ELİF ŞAFAK','420','AŞK'),(58,'SATRANÇ','STEFAN ZWEİG','83','HİKAYE'),(59,'ARABA SEVDASI','RECAİZADE MAHMUT EKREM','311','ROMAN'),(60,'İÇİMİZDEKİ ŞEYTAN','SABAHATTİN ALİ','255','ROMAN'),(61,'ALTINCI KOĞUŞ','ANTON ÇEHOV','68','HİKAYE'),(62,'UZUN HİKÂYE','MUSTAFA KUTLU','115','HİKAYE'),(64,'ÜÇ SİLAHŞÖR','ALEXANDRE DUMAS','755','ROMAN'),(65,'BEYAZ KALE','ORHAN PAMUK','152','ROMAN'),(66,'TENEKE','YAŞAR KEMAL','158','ROMAN'),(67,'FALAKA','ÖMER SEYFETTİN','160','HİKAYE'),(68,'YEŞİL YOL','STEPHEN KİNG','400','ROMAN'),(69,'ZAR ADAM','LUKE RHİNEHART','464','ROMAN'),(70,'TAHT OYUNLARI','GEORGE R. R. MARTİN','847','ROMAN'),(71,'MÜPTEZELLER','EMRAH SERBES','163','ROMAN'),(72,'SHERLOCK HOLMES - DÖRTLERİN İMZASI','ARTHUR CONAN DOYLE','208','POLİSİYE'),(73,'HACI MURAT','LEV NİKOLAYEVİÇ TOLSTOY','165','ROMAN'),(74,'KENDİNİ ARAYAN ADAM','HALİT ERTUĞRUL','112','ROMAN'),(75,'ÖLÜME FISILDAYAN ADAM','BÜŞRA YILMAZ','424','AŞK'),(76,'BOZKURTLAR','HÜSEYİN NİHAL ATSIZ','525','ROMAN'),(77,'GRİNİN ELLİ TONU','E. L. JAMES','576','AŞK'),(78,'DELİ KURT','HÜSEYİN NİHAL ATSIZ','240','ROMAN'),(79,'AŞK-I MEMNU','HALİD ZİYA UŞAKLIGİL','400','AŞK'),(80,'KOKU','PATRİCK SÜSKİND','264','ROMAN'),(82,'NUTUK','MUSTAFA KEMAL ATATÜRK','688','BİYOGRAFİ'),(83,'GAZAP ÜZÜMLERİ','JOHN STEİNBECK','556','ROMAN'),(84,'HAMLET','WİLLİAM SHAKESPEARE','188','TİYATRO'),(85,'DEĞİRMEN','SABAHATTİN ALİ','140','HİKAYE'),(86,'BİR ÖMÜR NASIL YAŞANIR?','İLBER ORTAYLI','288','SÖYLEŞİ-RÖPORTAJ'),(87,'ROMEO VE JULİET','WİLLİAM SHAKESPEARE','133','TİYATRO'),(88,'YABAN','YAKUP KADRİ KARAOSMANOĞLU','214','ROMAN'),(89,'İNSANCIKLAR','FYODOR MİHAYLOVİÇ DOSTOYEVSKİ','184','ROMAN'),(90,'FATİH HARBİYE','PEYAMİ SAFA','138','ROMAN'),(92,'DA VİNCİ ŞİFRESİ','DAN BROWN','495','ROMAN'),(93,'TUTUNAMAYANLAR','OĞUZ ATAY','724','ROMAN'),(94,'AYLAK ADAM','YUSUF ATILGAN','192','ROMAN'),(95,'BEYAZ DİŞ','JACK LONDON','258','ROMAN'),(96,'SİNEKLERİN TANRISI','WİLLİAM GOLDİNG','261','ROMAN'),(97,'OTOMATİK PORTAKAL','ANTHONY BURGESS','172','BİLİM-KURGU'),(98,'FAHRENHEİT 451','RAY BRADBURY','208','BİLİM-KURGU'),(99,'SOL AYAĞIM','CHRİSTY BROWN','192','BİYOGRAFİ'),(100,'SEFİLLER','VİCTOR HUGO','1724','ROMAN'),(101,'OLASILIKSIZ','ADAM FAWER','494','BİLİM-KURGU'),(102,'SUÇ VE CEZA','FYODOR MİHAYLOVİÇ DOSTOYEVSKİ','687','ROMAN'),(135,'SİMYACI','PAULO COELHO','166','ROMAN'),(137,'KAR KOKUSU','AHMET ÜMİT ','288','KURGU'),(140,'HUZUR','AHMET HAMDİ TANPINAR','390','ROMAN');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowmovie`
--

DROP TABLE IF EXISTS `borrowmovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowmovie` (
                               `ID` int NOT NULL AUTO_INCREMENT,
                               `MOVIE_NAME` varchar(45) NOT NULL,
                               `ACTOR_NAME` varchar(45) NOT NULL,
                               `DIRECTOR_NAME` varchar(45) NOT NULL,
                               `IMDBSCORE` varchar(45) NOT NULL,
                               `TYPE` varchar(45) NOT NULL,
                               `USER_NAME` varchar(45) NOT NULL,
                               PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
                         `ID` int NOT NULL AUTO_INCREMENT,
                         `NAME` varchar(45) NOT NULL,
                         `SURNAME` varchar(45) NOT NULL,
                         `USERNAME` varchar(45) NOT NULL,
                         `PASSWORD` varchar(45) NOT NULL,
                         PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

