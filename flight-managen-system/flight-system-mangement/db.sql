CREATE DATABASE  IF NOT EXISTS `tbs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tbs`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: tbs
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `booking_table`
--

DROP TABLE IF EXISTS `booking_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_table` (
  `p_name` varchar(40) NOT NULL,
  `f_num` varchar(45) NOT NULL,
  `p_gender` varchar(45) NOT NULL,
  `p_age` varchar(45) NOT NULL,
  `p_code` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_table`
--

LOCK TABLES `booking_table` WRITE;
/*!40000 ALTER TABLE `booking_table` DISABLE KEYS */;
INSERT INTO `booking_table` VALUES ('kishore','11142','male','22','H2Y91V'),('kishore','69469','male','22','9QYJZ9'),('kishore kumar','69469','male','22','R3EZ2C'),('kishore','11142','male','22','JU2D80'),('kishore','11142','male','22','3578D0'),('kumar','11142','male','22','EP0DLO'),('kish','11142','male','22','W3HEYS'),('kish','11142','male','22','QZ2PCN'),('kish','11142','male','22','D1K8RR'),('kish','11142','male','22','67HHNT'),('kishore','11142','male','22','X3WN0N'),('kishore','11142','male','22','LAUBLJ'),('kishore','11142','male','22','8MF6LO'),('kishore','11142','male','22','EHAKJM'),('kishore','11142','male','22','QX1YPV'),('kishore','11142','male','22','3ZUR1K'),('kishore','55897','male','22','GX6KBO'),('kishore','55897','male','22','0WBWK1'),('kishore','55897','male','22','IW2NMD'),('kishore','11142','male','22','4H6XDA'),('kishore','11142','male','22','E129FI'),('kishore','11142','male','22','SRFVE6'),('kishore','55897','male','22','9CXBJN'),('kishore','11142','male','22','HFGND3'),('kishore','11142','male','22','QWNEJJ'),('kishore','11142','male','22','T0QVB8'),('kishore','11142','male','22','AMMR55'),('dharshini','11142','female','22','PVPU8O'),('kisho','11142','male','22','G6QFCF'),('sdc','11142','male','22','1PDC1K'),('ewd','11142','male','22','8TWS7P'),('kishore','25897','male','22','J91Q6G'),('kumar','25897','male','22','BT917M'),('dharshini','25897','male','22','YI9SCC'),('kishore','11142','male','22','XEHL15'),('kumar','11142','male','22','TRM1I6'),('kishore','11142','male','22','N9KS8F'),('kuame','11142','male','22','VIWM68'),('kishore','11142','male','22','CD66RD'),('ds','5163','male','22','AKVQEY'),('ds','5163','male','2','7MM1RT'),('kishore','11142','male','22','S0ATSB'),('kumar','11142','male','212','IYQ58A'),('kishore','11142','male','333','DZEI29'),('kishore','98758','male','22','U8KQL5'),('jaya bharathi','98758','female','20','V5R584');
/*!40000 ALTER TABLE `booking_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_table`
--

DROP TABLE IF EXISTS `flight_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_table` (
  `flight_id` int NOT NULL,
  `source` varchar(45) NOT NULL,
  `destination` varchar(45) NOT NULL,
  `departure` varchar(45) NOT NULL,
  `arrival` varchar(45) NOT NULL,
  `price_eco` varchar(45) NOT NULL,
  `price_bus` varchar(45) NOT NULL,
  `price_fc` varchar(45) NOT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_table`
--

LOCK TABLES `flight_table` WRITE;
/*!40000 ALTER TABLE `flight_table` DISABLE KEYS */;
INSERT INTO `flight_table` VALUES (5142,'chennai','mumbai','16:10','17:05','2,215','12,065','19,000'),(5143,'chennai','mumbai','20:20','21:25','2,598','08,965','19,000'),(5148,'chennai','mumbai','19:21','21:40','2,390','10,452','19,000'),(5154,'chennai','mumbai','22:50','23:45','2,530','11,465','19,000'),(5163,'chennai','mumbai','16:21','17:40','2,059','11,985','19,000'),(5179,'chennai','mumbai','10:51','11:50','2,632','11,456','19,000'),(5217,'chennai','mumbai','18:21','19:55','2,230','12,632','19,000'),(5469,'chennai','mumbai','01:15','02:15','2,230','09,065','19,000'),(6861,'mumbai','chennai','10:21','11:11','2,502','10,960','19,000'),(6868,'mumbai','chennai','19:50','20:45','2,316','09,652','19,000'),(6874,'mumbai','chennai','17:45','18:10','2,562','11,023','19,000'),(6891,'mumbai','chennai','23:21','22:35','2,456','13,321','19,000'),(6892,'mumbai','chennai','00:10','02:46','2,487','10,526','19,000'),(6893,'mumbai','chennai','02:30','04:50','2,357','11,485','19,000'),(6894,'mumbai','chennai','13:25','07:16','2,412','08,987','19,000'),(6897,'mumbai','chennai','16:05','15:50','2,254','12,231','19,000'),(11142,'hyderabad','chennai','16:10','17:05','2,215','12,065','20,000'),(11143,'hyderabad','chennai','20:20','21:25','2,598','08,965','20,000'),(11148,'hyderabad','chennai','19:21','21:40','2,390','10,452','20,000'),(11154,'hyderabad','chennai','22:50','23:45','2,530','11,465','20,000'),(11163,'hyderabad','chennai','16:21','17:40','2,059','11,985','20,000'),(11179,'hyderabad','chennai','10:51','11:50','2,632','11,456','20,000'),(11217,'hyderabad','chennai','18:21','19:55','2,230','12,632','20,000'),(11469,'hyderabad','chennai','01:15','02:15','2,230','09,065','20,000'),(11861,'chennai','hyderabad','10:21','11:11','2,502','10,960','20,000'),(11868,'chennai','hyderabad','19:50','20:45','2,316','09,652','20,000'),(11874,'chennai','hyderabad','17:45','18:10','2,562','11,023','20,000'),(11891,'chennai','hyderabad','23:21','22:35','2,456','13,321','20,000'),(11892,'chennai','hyderabad','00:10','02:46','2,487','10,526','20,000'),(11893,'chennai','hyderabad','02:30','04:50','2,357','11,485','20,000'),(11894,'chennai','hyderabad','13:25','07:16','2,412','08,987','20,000'),(11897,'chennai','hyderabad','16:05','15:50','2,254','12,231','20,000'),(25861,'Indore','chennai','09:21','11:11','5,702','11,960','20,000'),(25868,'Indore','chennai','18:50','20:45','4,916','11,652','20,000'),(25874,'Indore','chennai','13:45','15:10','4,762','12,023','20,000'),(25891,'Indore','chennai','00:21','02:15','5,456','12,321','20,000'),(25892,'Indore','chennai','01:00','03:36','4,987','13,526','20,000'),(25893,'Indore','chennai','02:39','04:10','5,357','11,485','20,000'),(25894,'Indore','chennai','15:25','07:16','4,812','13,987','20,000'),(25897,'Indore','chennai','13:05','15:50','5,254','12,231','20,000'),(32142,'chennai','Indore','14:10','16:05','5,215','11,065','20,000'),(32143,'chennai','Indore','16:20','18:25','5,099','12,965','20,000'),(32146,'chennai','Indore','00:21','02:10','4,930','13,065','20,000'),(32147,'chennai','Indore','08:21','10:10','5,230','12,632','20,000'),(32148,'chennai','Indore','14:21','16:10','4,890','12,452','20,000'),(32154,'chennai','Indore','20:50','22:45','5,530','11,465','20,000'),(32167,'chennai','Indore','00:21','01:10','3,930','10,900','18,900'),(32179,'chennai','Indore','00:51','02:10','4,632','13,456','20,000'),(52100,'bhopal','chennai','16:21','18:10','5,059','11,985','20,000'),(52142,'bhopal','chennai','14:10','16:05','5,215','11,065','20,000'),(52143,'bhopal','chennai','16:20','18:25','5,099','12,965','20,000'),(52146,'bhopal','chennai','00:21','02:10','4,930','13,065','20,000'),(52147,'bhopal','chennai','08:21','10:10','5,230','12,632','20,000'),(52148,'bhopal','chennai','14:21','16:10','4,890','12,452','20,000'),(52154,'bhopal','chennai','20:50','22:45','5,530','11,465','20,000'),(52179,'bhopal','chennai','00:51','02:10','4,632','13,456','20,000'),(55861,'chennai','bhopal','09:21','11:11','5,702','11,960','20,000'),(55868,'chennai','bhopal','18:50','20:45','4,916','11,652','20,000'),(55874,'chennai','bhopal','13:45','15:10','4,762','12,023','20,000'),(55891,'chennai','bhopal','00:21','02:15','5,456','12,321','20,000'),(55892,'chennai','bhopal','01:00','03:36','4,987','13,526','20,000'),(55893,'chennai','bhopal','02:39','04:10','5,357','11,485','20,000'),(55894,'chennai','bhopal','15:25','07:16','4,812','13,987','20,000'),(55897,'chennai','bhopal','13:05','15:50','5,254','12,231','20,000'),(69142,'chennai','delhi','14:10','17:05','5,215','15,065','29,985'),(69143,'chennai','delhi','18:20','21:25','5,698','14,965','30,025'),(69148,'chennai','delhi','19:21','22:10','4,890','15,452','30,102'),(69154,'chennai','delhi','20:50','23:45','5,530','14,465','29,762'),(69163,'chennai','delhi','16:21','19:10','5,059','15,985','29,998'),(69179,'chennai','delhi','10:51','12:10','4,632','15,456','29,863'),(69217,'chennai','delhi','18:21','21:10','5,230','14,632','30,096'),(69469,'chennai','delhi','00:21','02:10','4,930','14,065','29,921'),(69861,'delhi','chennai','08:21','11:11','5,702','15,960','29,999'),(69868,'delhi','chennai','19:50','20:45','4,916','15,652','30,198'),(69874,'delhi','chennai','15:45','18:10','4,762','15,023','30,196'),(69891,'delhi','chennai','23:21','02:15','5,456','15,321','30,089'),(69892,'delhi','chennai','00:10','03:36','4,987','15,526','30,000'),(69893,'delhi','chennai','01:39','04:10','5,357','14,485','29,800'),(69894,'delhi','chennai','14:25','07:16','4,812','14,987','29,762'),(69897,'delhi','chennai','14:05','15:50','5,254','14,231','29,896'),(85633,'bangaluru','chennai','15:20','16:25','2,099','12,412','19,968'),(85634,'bangaluru','chennai','16:20','17:25','2,099','10,965','18,754'),(85638,'bangaluru','chennai','13:10','14:05','3,215','12,412','18,402'),(85639,'bangaluru','chennai','14:10','15:05','3,215','11,065','19,065'),(85685,'bangaluru','chennai','18:50','19:45','3,530','12,412','19,300'),(85689,'bangaluru','chennai','20:50','21:45','3,530','11,465','19,465'),(85696,'bangaluru','chennai','21:00','22:00','3,930','12,412','15,412'),(85699,'bangaluru','chennai','00:21','01:10','3,930','10,900','18,900'),(98745,'chennai','bangaluru','18:10','23:00','2,098','13,512','19,968'),(98746,'chennai','bangaluru','06:50','07:55','2,099','12,402','18,402'),(98747,'chennai','bangaluru','21:15','22:15','2,099','12,300','19,300'),(98748,'chennai','bangaluru','22:00','23:00','2,098','14,412','15,412'),(98755,'chennai','bangaluru','16:20','17:25','2,099','10,965','18,754'),(98756,'chennai','bangaluru','14:10','15:05','3,215','11,065','19,065'),(98757,'chennai','bangaluru','20:50','21:45','3,530','11,465','19,465'),(98758,'chennai','bangaluru','00:21','01:10','3,930','10,900','18,900');
/*!40000 ALTER TABLE `flight_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `register_chk_1` CHECK ((`age` >= 18))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,'kishore','kishore@gmail.com',21);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_table` (
  `uid` bigint NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(45) NOT NULL,
  `con_password` varchar(55) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid_UNIQUE` (`uid`),
  UNIQUE KEY `con_password_UNIQUE` (`con_password`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES (2236,'..','synm2gmail.com','..','..'),(4345,'ram','ramkumar@gmail.com','ram123','ram123'),(5851,'33','33','33','33'),(6386,'mmm','sum@gmail.com','mmm','mmm'),(6664,'kishore','kishore@gmail.com','kish123','kish123'),(7323,'bavani','bavaniWganil.com','bavani321','bavani321'),(7757,'kishore','kishore@gamil.com','kishore321','kishore321');
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-06 11:37:55
