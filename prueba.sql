-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: prueba
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Apellidos` varchar(255) NOT NULL,
  `Edad` int NOT NULL,
  `Genero` char(1) DEFAULT NULL,
  `Usuario` varchar(255) NOT NULL,
  `Contrasena` varchar(255) NOT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Creado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Actualizado` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Activo` char(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'Manuel','Fernández Marquez',20,'M','manuelfm1@gmail.com','12345','2001-11-22','2022-10-10 23:46:08','2022-10-21 16:41:46','N'),(2,'Manuel','Fernández',20,'M','manuelfm@gmail.com','contra','2001-08-22','2022-10-19 23:54:28','2022-10-19 18:54:28','S'),(3,'Leonardo','Cuellar',21,'M','leofctm@gmail.com','contra','2001-02-16','2022-10-21 21:18:29','2022-10-23 17:58:04','S'),(4,'Veronica','Díaz',21,'F','Vero12@gmail.com','VDS124f','2003-12-08','2022-10-23 23:23:47','2022-10-23 18:26:21','S'),(5,'Juan','Escobar',20,'M','JuanE@gmail.com','EJasxf','2002-11-08','2022-10-23 23:23:48','2022-10-23 18:28:43','S'),(6,'Roberto','Perez',20,'M','Robers2@gmail.com','232dszw','2002-10-12','2022-10-23 23:23:48','2022-10-23 18:33:40','S'),(7,'Ricardo','Aguilar',20,'M','Richari232@gmail.com','23ds2w','2002-12-12','2022-10-23 23:23:48','2022-10-23 18:34:38','S'),(8,'Carla','Reus',21,'F','CarlaP243@gmail.com','CarlP2323','2001-07-24','2022-10-23 23:23:48','2022-10-24 18:51:33','S'),(9,'Diego','Tejada',19,'M','diego254@gmail.com','dieg6fs63','2002-02-16','2022-10-23 22:50:32','2022-10-23 18:18:30','S'),(10,'Jesus','Morales',18,'M','jesusM@gmail.com','js124f','2003-07-13','2022-10-23 23:24:52','2022-10-23 18:24:52','S'),(11,'Gladys','Miguel',21,'F','gladys@gmail.com','1ddew212','2001-10-17','2022-10-25 23:25:48','2022-10-27 12:16:09','N'),(12,'Misael','Villar',21,'M','MisaV@gmail.com','$2a$10$YEh/Tf.CNgRQUhNdB391PONgfgPvCv9/T7WFFc97ZsnnqQw7bxnOG','2001-01-24','2022-10-27 17:31:02','2022-11-06 18:31:44','N'),(13,'Raul','Navarrete',21,'M','NAVA@gmail.com','$2a$10$pKC745UEZxd.x1H1B.U.NeMSjS7FY3YHDq4ZPgpHbyhqquDnPm.Fa','2001-11-10','2022-10-31 20:33:26','2022-10-31 14:33:26','S'),(14,'Jose','Antonio',22,'M','JoseAn@gmail.com','$2a$10$sGj9zwTIoS7/Ixwa23IUKeF8LmbARrugFaRP388O2wyPbo8ukKftq','2000-11-10','2022-11-07 00:55:53','2022-11-06 19:03:04','S'),(15,'Luis','Antonio',22,'M','LuisAnto@gmail.com','$2a$10$ZvGtiEDW77JE7NNAMOwGo.1aZgQTbTilAci9XA3e/QWi5WgEYx9Ba','2000-11-10','2022-11-07 00:55:58','2022-11-06 19:04:31','S'),(16,'Carla','Paredes',21,'F','CarlaP243@gmail.com','$2a$10$pkSO8lg67s1hrwjR9HUlFu9WRgn9089T54aqlG4bcOTsoQPsKgVLS','2001-07-24','2022-11-07 00:56:00','2022-11-06 19:14:00','S'),(17,'Carla','Paredes',21,'F','Carla2@gmail.com','$2a$10$enbWy/fYvr7q1F0w7/.UbOM/3T90SuixCHjeFvWKjlkDcrxaDV8iS','2001-07-24','2022-11-07 01:15:10','2022-11-06 19:15:10','S'),(18,'Roberto2','Perez',20,'M','Robers23@gmail.com','$2a$10$z7Xmca0EpRSFSaJI0j0KRu/u/hkMc/2QwybF7P2p0hnwng4g84dFO','2002-10-12','2022-11-18 01:46:05','2022-11-17 19:46:05','S'),(19,'','',0,'','','','2001-01-01','2022-09-09 19:08:18','2022-09-09 14:08:18',''),(20,'Manuel','Fernández Marquez',20,'M','manuelfm1@gmail.com','12345','2000-01-01','2022-09-09 19:00:56','2022-09-09 14:00:56','N'),(21,'Manuel','Fernández Marquez',20,'M','manuelfm1@gmail.com','12345','2000-01-01','2022-09-09 19:01:00','2022-09-09 14:01:00','N'),(22,'Manuel','Fernández Marquez',20,'M','manuelfm2@gmail.com','$2a$10$LiY9Uz/3/RuYbBv9v6kCheDEwDaL8inpdXWFoWVIfTu5JrTKua0bO','2000-01-01','2022-09-09 19:04:37','2022-09-09 14:04:37','N'),(23,'Manuel','Fernández Marquez',24,'M','manuelf13m2@gmail.com','$2a$10$V7tHqc1/m7rBFmKrmdYbTOLmvrttcLyHj.BP.avu3ckbauBluHfD.','2000-01-01','2022-09-09 18:58:09','2022-12-12 10:15:52','N');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 10:18:45
