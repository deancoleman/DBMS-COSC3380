-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: pos_system
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `Membership_Level` varchar(30) NOT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Account_Creation_Date` date DEFAULT NULL,
  `Member_Length` int DEFAULT NULL,
  `Account_End` date DEFAULT NULL,
  `Current_Discount_Points` int NOT NULL,
  `Discount_Points_Used` int NOT NULL,
  `Total_Accrued_Discount_Points` int NOT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Silver','555-4343','510 Main St','2020-10-05',3,'2025-12-01',37,6,74),(2,'Gold','555-1082','178 Main St','2021-09-12',1,'2025-10-16',5,45,51),(3,'Gold','555-0869','359 Main St','2021-08-12',3,'2025-06-15',42,39,95),(4,'Silver','555-2909','927 Main St','2022-04-20',0,'2025-12-18',65,19,1),(5,'Silver','555-3268','15 Main St','2020-04-14',2,'2025-11-15',7,37,73),(6,'Gold','555-6506','580 Main St','2022-11-11',0,'2025-04-17',36,46,89),(7,'Gold','555-0931','933 Main St','2021-03-05',0,'2025-08-11',57,2,79),(8,'Silver','555-9363','161 Main St','2022-12-27',2,'2025-07-07',6,40,121),(9,'Silver','555-7095','668 Main St','2020-08-26',0,'2025-10-03',52,18,39),(10,'Gold','555-2450','605 Main St','2020-11-21',3,'2025-06-12',22,38,28),(11,'Silver','555-6702','401 Main St','2020-01-01',3,'2025-12-25',51,32,100),(12,'Gold','555-0537','32 Main St','2022-12-29',4,'2025-07-01',78,22,128),(13,'Silver','555-1855','75 Main St','2022-06-18',4,'2025-12-07',3,17,98),(14,'Gold','555-2076','330 Main St','2020-02-06',0,'2025-10-08',32,15,93),(15,'Gold','555-8904','997 Main St','2020-12-14',2,'2025-01-15',40,44,40),(16,'Silver','555-5190','595 Main St','2021-04-07',1,'2025-05-08',77,41,122),(17,'Silver','555-5995','162 Main St','2020-01-14',2,'2025-11-05',49,47,40),(18,'Gold','555-6474','762 Main St','2022-08-13',0,'2025-10-05',57,28,26),(19,'Gold','555-2728','875 Main St','2021-09-10',0,'2025-04-12',81,10,96),(20,'Silver','555-9465','5 Main St','2020-07-22',4,'2025-01-04',31,26,104),(21,'Silver','555-4907','698 Main St','2020-01-29',0,'2025-01-26',26,4,106),(22,'Gold','555-1277','883 Main St','2020-02-14',2,'2025-08-14',45,19,94),(23,'Silver','555-9718','935 Main St','2022-04-20',0,'2025-11-04',12,4,10),(24,'Gold','555-2772','88 Main St','2021-11-01',3,'2025-02-19',29,2,59),(25,'Silver','555-9303','177 Main St','2020-04-15',4,'2025-06-14',40,34,38),(26,'Gold','555-2341','563 Main St','2020-05-07',4,'2025-02-07',84,46,14),(27,'Silver','555-2352','58 Main St','2021-10-02',3,'2025-12-31',73,35,43),(28,'Gold','555-8877','380 Main St','2020-09-23',0,'2025-08-17',91,35,118),(29,'Silver','555-8145','555 Main St','2021-01-03',0,'2025-01-22',25,4,109),(30,'Gold','555-6168','994 Main St','2020-05-20',3,'2025-11-19',45,31,116),(31,'Gold','555-6936','449 Main St','2020-07-05',2,'2025-12-27',44,12,138),(32,'Silver','555-6099','416 Main St','2020-10-03',0,'2025-04-22',49,27,39),(33,'Silver','555-5460','729 Main St','2020-01-13',4,'2025-04-24',94,39,17),(34,'Gold','555-6941','845 Main St','2020-06-14',1,'2025-08-14',44,19,85),(35,'Silver','555-8545','129 Main St','2020-03-31',0,'2025-11-17',30,45,98),(36,'Silver','555-7264','10 Main St','2022-08-16',1,'2025-02-03',42,43,8),(37,'Silver','555-1574','795 Main St','2021-07-13',0,'2025-04-18',97,48,141),(38,'Silver','555-2254','689 Main St','2022-04-30',4,'2025-09-24',21,45,129),(39,'Silver','555-4048','229 Main St','2022-10-17',4,'2025-01-25',41,43,15),(40,'Silver','555-2942','703 Main St','2021-11-27',0,'2025-06-09',97,29,147),(41,'Gold','555-8685','851 Main St','2021-12-17',3,'2025-08-11',90,34,110),(42,'Silver','555-8988','624 Main St','2021-04-17',1,'2025-02-08',68,5,71),(43,'Gold','555-8635','144 Main St','2020-05-27',1,'2025-10-18',25,45,113),(44,'Gold','555-0458','39 Main St','2020-03-08',0,'2025-10-07',25,49,27),(45,'Silver','555-1084','751 Main St','2021-04-23',4,'2025-04-30',85,15,144),(46,'Silver','555-5320','10 Main St','2021-05-17',1,'2025-12-07',88,30,62),(47,'Gold','555-9627','86 Main St','2021-08-20',2,'2025-09-12',8,15,52),(48,'Silver','555-9745','451 Main St','2021-01-05',1,'2025-08-26',25,16,128),(49,'Gold','555-9313','759 Main St','2020-01-10',3,'2025-10-12',61,36,118),(50,'Silver','555-4717','56 Main St','2022-08-06',0,'2025-03-19',57,10,56),(51,'Gold','555-0445','515 Main St','2021-05-05',3,'2025-02-07',44,46,50),(52,'Silver','555-3226','16 Main St','2020-05-05',2,'2025-04-08',76,1,127),(53,'Gold','555-2159','624 Main St','2021-06-04',2,'2025-02-01',92,18,11),(54,'Gold','555-1138','762 Main St','2021-06-05',0,'2025-01-10',86,11,85),(55,'Gold','555-0535','810 Main St','2022-09-06',0,'2025-07-04',41,28,89),(56,'Gold','555-5197','817 Main St','2021-08-06',1,'2025-06-11',58,29,34),(57,'Gold','555-1147','490 Main St','2020-04-28',0,'2025-01-11',93,29,20),(58,'Silver','555-1534','31 Main St','2022-02-01',1,'2025-11-09',11,0,101),(59,'Gold','555-8160','972 Main St','2021-04-03',0,'2025-08-11',52,40,66),(60,'Silver','555-7359','235 Main St','2022-11-26',0,'2025-10-13',50,8,49),(61,'Gold','555-7514','310 Main St','2020-11-24',2,'2025-12-09',99,7,115),(62,'Gold','555-6892','246 Main St','2020-06-29',0,'2025-12-06',39,8,97),(63,'Silver','555-8734','69 Main St','2022-03-08',2,'2025-12-24',59,2,62),(64,'Silver','555-5805','2 Main St','2020-10-22',1,'2025-11-26',48,35,21),(65,'Silver','555-3434','54 Main St','2020-09-20',0,'2025-06-27',30,4,75),(66,'Gold','555-8074','243 Main St','2022-05-23',1,'2025-11-20',66,33,55),(67,'Silver','555-9894','490 Main St','2021-06-17',4,'2025-05-11',89,20,49),(68,'Gold','555-2612','949 Main St','2022-11-28',4,'2025-02-02',44,46,55),(69,'Gold','555-1245','475 Main St','2020-01-10',3,'2025-01-15',36,35,61),(70,'Silver','555-5126','716 Main St','2020-02-21',0,'2025-04-14',16,47,44),(71,'Silver','555-1902','102 Main St','2022-10-30',2,'2025-03-19',84,28,43),(72,'Silver','555-9003','243 Main St','2021-07-21',4,'2025-09-28',12,20,94),(73,'Silver','555-8679','483 Main St','2022-06-10',3,'2025-08-27',40,4,30),(74,'Silver','555-2061','737 Main St','2020-03-21',0,'2025-07-19',27,37,130),(75,'Gold','555-0751','960 Main St','2021-09-28',0,'2025-05-14',76,36,49),(76,'Gold','555-3506','352 Main St','2022-02-17',2,'2025-05-10',28,18,142),(77,'Silver','555-4860','427 Main St','2022-01-15',0,'2025-07-25',44,27,65),(78,'Silver','555-2243','603 Main St','2021-01-17',4,'2025-08-14',28,29,11),(79,'Silver','555-8978','608 Main St','2021-01-21',4,'2025-08-17',32,36,104),(80,'Gold','555-3609','930 Main St','2021-09-20',0,'2025-08-30',7,20,122),(81,'Silver','555-7868','393 Main St','2021-10-26',4,'2025-06-13',67,1,20),(82,'Silver','555-5574','3 Main St','2021-01-14',3,'2025-07-27',68,34,66),(83,'Gold','555-2677','981 Main St','2020-04-30',3,'2025-09-09',63,4,80),(84,'Gold','555-5638','510 Main St','2022-08-04',3,'2025-05-11',41,49,107),(85,'Silver','555-8506','457 Main St','2022-03-21',1,'2025-05-27',3,49,125),(86,'Gold','555-5782','234 Main St','2021-04-23',2,'2025-02-07',6,1,146),(87,'Silver','555-9542','437 Main St','2020-12-25',1,'2025-08-23',23,11,74),(88,'Silver','555-2933','201 Main St','2020-05-19',0,'2025-10-11',78,30,96),(89,'Gold','555-1511','506 Main St','2020-03-30',4,'2025-03-12',30,46,118),(90,'Gold','555-2111','712 Main St','2022-10-17',2,'2025-10-24',49,2,112),(91,'Silver','555-7672','26 Main St','2022-06-29',0,'2025-11-22',22,22,82),(92,'Gold','555-4556','13 Main St','2022-02-06',2,'2025-03-18',66,34,62),(93,'Gold','555-9439','604 Main St','2020-07-28',0,'2025-02-21',28,48,8),(94,'Gold','555-4977','492 Main St','2022-11-28',1,'2025-12-14',64,17,126),(95,'Gold','555-2253','675 Main St','2022-02-08',2,'2025-04-27',13,36,42),(96,'Gold','555-0704','804 Main St','2022-06-12',3,'2025-11-15',36,11,4),(97,'Gold','555-2827','986 Main St','2020-04-05',2,'2025-02-10',12,15,26),(98,'Silver','555-2510','381 Main St','2020-06-17',3,'2025-09-02',46,16,34),(99,'Gold','555-1563','275 Main St','2022-09-21',3,'2025-11-04',7,41,141),(100,'Gold','555-2736','705 Main St','2022-02-18',2,'2025-01-25',1,43,43),(101,'Silver','555-3971','424 Main St','2022-10-17',1,'2025-02-15',47,49,83),(102,'Silver','555-3038','135 Main St','2022-04-17',2,'2025-10-22',76,20,117),(103,'Silver','555-0173','63 Main St','2020-10-15',0,'2025-11-05',84,35,149),(104,'Silver','555-3308','57 Main St','2020-11-19',1,'2025-08-23',29,26,122),(105,'Gold','555-9225','184 Main St','2020-06-19',1,'2025-08-31',64,10,19),(106,'Gold','555-7391','614 Main St','2022-07-27',2,'2025-08-19',83,13,133),(107,'Silver','555-4308','290 Main St','2020-06-25',4,'2025-03-10',13,6,35),(108,'Silver','555-2807','5 Main St','2020-07-22',4,'2025-01-04',30,25,87),(109,'Gold','555-3539','505 Main St','2021-05-24',4,'2025-08-30',87,19,50),(110,'Silver','555-5577','243 Main St','2021-08-20',4,'2025-05-09',76,38,82),(111,'Gold','555-5772','548 Main St','2020-01-15',2,'2025-01-22',3,0,140),(112,'Silver','555-4161','149 Main St','2021-06-28',0,'2025-09-14',39,43,23),(113,'Gold','555-4622','746 Main St','2021-01-20',2,'2025-07-12',8,41,140),(114,'Gold','555-0899','904 Main St','2020-10-08',2,'2025-01-30',68,10,140),(115,'Gold','555-6217','847 Main St','2021-02-15',1,'2025-07-21',75,5,46),(116,'Gold','555-0514','672 Main St','2020-08-19',0,'2025-07-22',65,31,28),(117,'Gold','555-7120','387 Main St','2022-05-27',4,'2025-10-26',56,17,9),(118,'Gold','555-1409','906 Main St','2020-05-03',4,'2025-11-14',82,25,15),(119,'Silver','555-5554','855 Main St','2021-11-05',2,'2025-09-13',96,36,115),(120,'Silver','555-9486','786 Main St','2020-04-07',0,'2025-02-26',51,6,15),(121,'Gold','555-2446','894 Main St','2022-03-23',0,'2025-11-21',37,10,145),(122,'Gold','555-9704','329 Main St','2022-03-19',3,'2025-04-18',37,48,108),(123,'Silver','555-3553','665 Main St','2020-10-18',1,'2025-11-10',29,45,97),(124,'Silver','555-7133','964 Main St','2022-01-24',2,'2025-08-31',68,22,24),(125,'Gold','555-9148','130 Main St','2022-09-21',0,'2025-01-08',65,10,17),(126,'Silver','555-2884','661 Main St','2021-05-01',1,'2025-11-07',54,7,21),(127,'Gold','555-8344','415 Main St','2021-09-22',3,'2025-06-07',26,0,42),(128,'Gold','555-0492','104 Main St','2021-02-15',2,'2025-09-13',79,44,9),(129,'Silver','555-0479','294 Main St','2020-12-28',3,'2025-11-08',96,12,51),(130,'Silver','555-8397','279 Main St','2022-08-21',2,'2025-03-02',14,12,117),(131,'Gold','555-5401','166 Main St','2020-08-19',2,'2025-03-02',14,10,98),(132,'Silver','555-2361','253 Main St','2021-09-04',0,'2025-07-05',42,30,119),(133,'Gold','555-3365','241 Main St','2020-08-05',1,'2025-09-30',92,18,14),(134,'Gold','555-5522','654 Main St','2021-11-08',0,'2025-10-14',54,17,18),(135,'Silver','555-5119','826 Main St','2021-10-17',2,'2025-10-09',31,13,65),(136,'Gold','555-4468','178 Main St','2021-08-25',1,'2025-06-08',51,14,133),(137,'Silver','555-1953','262 Main St','2022-03-07',4,'2025-01-20',73,24,43),(138,'Silver','555-9368','797 Main St','2020-07-16',2,'2025-01-01',47,19,70),(139,'Gold','555-6886','778 Main St','2022-06-30',4,'2025-08-16',64,16,112),(140,'Silver','555-4683','112 Main St','2020-06-21',2,'2025-10-13',56,22,87),(141,'Silver','555-0125','407 Main St','2020-01-02',3,'2025-12-01',22,19,39),(142,'Gold','555-9316','227 Main St','2021-01-10',0,'2025-02-16',54,18,23),(143,'Silver','555-9791','830 Main St','2020-08-27',3,'2025-05-07',93,31,45),(144,'Silver','555-3905','970 Main St','2022-01-18',2,'2025-06-22',84,40,73),(145,'Gold','555-7625','668 Main St','2020-03-02',1,'2025-03-18',22,24,117),(146,'Gold','555-8159','783 Main St','2021-06-04',0,'2025-09-10',39,44,34),(147,'Silver','555-8146','572 Main St','2021-04-08',1,'2025-09-15',33,29,135),(148,'Silver','555-0474','987 Main St','2022-05-26',0,'2025-10-10',76,26,46),(149,'Silver','555-9667','894 Main St','2021-09-22',0,'2025-03-29',61,18,4),(150,'Gold','555-9674','804 Main St','2020-05-15',1,'2025-08-25',62,9,16),(151,'Silver','555-4358','318 Main St','2020-11-12',2,'2025-07-26',36,6,80),(152,'Gold','555-9625','864 Main St','2021-04-25',2,'2025-09-02',56,39,40),(153,'Silver','555-1385','717 Main St','2020-07-12',3,'2025-02-11',38,28,107),(154,'Silver','555-2025','397 Main St','2021-02-22',3,'2025-06-07',1,39,130),(155,'Silver','555-3873','937 Main St','2021-08-01',4,'2025-07-20',26,34,97),(156,'Gold','555-9664','279 Main St','2021-06-30',3,'2025-10-15',96,23,72),(157,'Silver','555-4569','341 Main St','2021-01-04',3,'2025-04-23',54,39,52),(158,'Gold','555-8142','946 Main St','2020-11-17',3,'2025-03-31',35,0,4),(159,'Gold','555-4770','39 Main St','2022-04-18',3,'2025-04-05',15,0,85),(160,'Silver','555-3823','459 Main St','2020-06-18',1,'2025-07-02',32,6,101),(161,'Silver','555-9285','665 Main St','2021-08-18',3,'2025-12-25',73,37,81),(162,'Gold','555-6598','925 Main St','2021-12-13',2,'2025-06-04',69,9,134),(163,'Silver','555-8073','337 Main St','2020-10-17',1,'2025-10-10',92,15,118),(164,'Gold','555-6515','246 Main St','2020-10-29',3,'2025-05-23',2,47,99),(165,'Gold','555-4273','681 Main St','2020-05-21',3,'2025-08-12',26,23,87),(166,'Silver','555-7503','248 Main St','2022-12-24',1,'2025-02-17',97,25,89),(167,'Gold','555-5707','432 Main St','2021-05-11',4,'2025-06-23',47,47,43),(168,'Silver','555-1923','129 Main St','2020-03-20',4,'2025-08-25',32,34,65),(169,'Gold','555-3415','318 Main St','2021-09-14',4,'2025-09-20',94,28,4),(170,'Gold','555-0311','883 Main St','2020-12-27',4,'2025-12-26',94,37,139),(171,'Gold','555-1937','778 Main St','2020-12-09',1,'2025-03-24',42,22,141),(172,'Gold','555-1545','577 Main St','2021-04-10',1,'2025-09-11',28,17,136),(173,'Gold','555-6523','836 Main St','2020-09-09',3,'2025-07-03',59,23,81),(174,'Gold','555-9628','858 Main St','2021-03-24',2,'2025-02-14',19,30,70),(175,'Silver','555-2170','504 Main St','2022-08-15',4,'2025-08-29',72,32,6),(176,'Gold','555-3380','805 Main St','2020-01-21',3,'2025-04-26',56,43,96),(177,'Silver','555-1937','89 Main St','2022-08-08',0,'2025-10-01',54,22,93),(178,'Silver','555-9771','577 Main St','2022-11-14',0,'2025-05-27',84,1,84),(179,'Silver','555-1426','408 Main St','2021-11-08',4,'2025-06-19',73,13,27),(180,'Gold','555-8173','870 Main St','2022-09-18',4,'2025-11-07',51,1,87),(181,'Silver','555-4589','766 Main St','2021-05-17',4,'2025-08-06',99,9,144),(182,'Gold','555-2846','723 Main St','2022-04-20',3,'2025-01-06',8,18,89),(183,'Silver','555-6532','594 Main St','2020-01-16',1,'2025-05-23',9,15,35),(184,'Gold','555-6617','482 Main St','2021-04-15',3,'2025-03-20',96,10,16),(185,'Silver','555-3622','995 Main St','2022-09-05',2,'2025-09-20',15,30,82),(186,'Silver','555-1303','779 Main St','2021-07-10',1,'2025-06-26',81,30,94),(187,'Gold','555-6677','402 Main St','2020-01-13',4,'2025-03-15',46,36,34),(188,'Silver','555-2292','189 Main St','2020-10-12',3,'2025-11-22',25,28,21),(189,'Silver','555-4712','414 Main St','2021-12-27',0,'2025-05-12',59,45,106),(190,'Silver','555-1562','205 Main St','2021-09-05',0,'2025-03-31',67,31,15),(191,'Silver','555-9615','839 Main St','2020-12-11',0,'2025-05-03',50,27,26),(192,'Gold','555-8021','207 Main St','2021-11-25',2,'2025-11-03',55,11,80),(193,'Silver','555-2302','247 Main St','2021-08-22',4,'2025-05-03',68,21,19),(194,'Gold','555-2133','109 Main St','2022-09-23',1,'2025-05-14',17,37,41),(195,'Gold','555-6688','49 Main St','2020-09-21',0,'2025-07-27',66,30,14),(196,'Silver','555-9162','651 Main St','2021-07-12',2,'2025-06-11',42,40,118),(197,'Silver','555-1857','392 Main St','2021-03-19',4,'2025-01-07',55,35,127),(198,'Gold','555-2312','682 Main St','2022-03-03',2,'2025-09-02',64,10,16),(199,'Silver','555-2649','570 Main St','2020-03-08',2,'2025-10-15',15,21,98),(200,'Silver','555-9900','979 Main St','2022-10-15',3,'2025-10-04',66,2,37),(201,'Gold','555-7901','623 Main St','2022-03-31',4,'2025-02-18',3,39,121),(202,'Silver','555-0287','71 Main St','2020-10-24',0,'2025-11-28',10,39,102),(203,'Gold','555-0143','35 Main St','2020-05-29',2,'2025-06-19',59,29,25),(204,'Gold','555-8600','77 Main St','2022-06-04',4,'2025-08-18',71,33,35),(205,'Gold','555-1444','203 Main St','2021-10-02',1,'2025-10-25',13,11,113),(206,'Gold','555-2000','712 Main St','2022-11-26',3,'2025-08-05',86,27,22),(207,'Gold','555-0656','18 Main St','2022-09-07',2,'2025-06-05',86,1,82),(208,'Silver','555-7619','756 Main St','2021-06-29',1,'2025-08-13',40,9,104),(209,'Silver','555-6525','410 Main St','2020-04-18',1,'2025-01-05',27,16,125),(210,'Gold','555-4289','581 Main St','2021-11-14',1,'2025-01-03',90,25,130),(211,'Silver','555-3092','199 Main St','2020-03-16',3,'2025-07-11',38,18,96),(212,'Gold','555-7026','137 Main St','2021-09-24',2,'2025-08-27',83,10,83),(213,'Gold','555-1083','70 Main St','2020-01-31',4,'2025-07-24',1,18,127),(214,'Gold','555-0366','831 Main St','2020-02-28',3,'2025-09-10',15,33,139),(215,'Silver','555-2520','440 Main St','2021-05-05',4,'2025-03-29',45,26,46),(216,'Silver','555-8059','190 Main St','2021-08-11',0,'2025-12-19',47,24,2),(217,'Silver','555-0368','330 Main St','2021-08-19',3,'2025-01-05',87,16,7),(218,'Gold','555-0257','428 Main St','2020-03-12',0,'2025-01-06',95,35,109),(219,'Gold','555-2392','742 Main St','2020-01-01',3,'2025-11-06',92,4,101),(220,'Gold','555-5180','261 Main St','2022-04-04',4,'2025-08-25',29,26,113),(221,'Gold','555-6901','877 Main St','2020-12-17',4,'2025-11-19',51,45,7),(222,'Silver','555-3659','315 Main St','2021-06-10',2,'2025-11-03',83,32,110),(223,'Silver','555-5100','315 Main St','2020-02-26',1,'2025-05-22',0,44,58),(224,'Gold','555-3122','673 Main St','2021-04-18',0,'2025-05-30',62,45,95),(225,'Gold','555-5067','78 Main St','2022-08-12',0,'2025-01-02',65,12,45),(226,'Silver','555-8222','876 Main St','2022-10-04',4,'2025-02-01',52,18,35),(227,'Gold','555-7758','587 Main St','2021-11-01',1,'2025-08-29',39,49,110),(228,'Silver','555-5130','327 Main St','2020-04-19',2,'2025-04-14',86,24,129),(229,'Silver','555-6352','635 Main St','2020-10-26',2,'2025-06-22',98,25,95),(230,'Silver','555-1934','106 Main St','2022-11-09',2,'2025-05-11',46,12,123),(231,'Gold','555-5210','405 Main St','2021-05-23',0,'2025-02-20',37,23,28),(232,'Silver','555-2080','374 Main St','2020-09-30',0,'2025-11-13',96,11,35),(233,'Gold','555-7506','282 Main St','2020-06-24',4,'2025-04-16',58,3,87),(234,'Silver','555-8415','48 Main St','2022-02-22',2,'2025-01-11',83,5,149),(235,'Silver','555-4066','993 Main St','2022-04-03',3,'2025-08-18',81,9,81),(236,'Gold','555-9533','417 Main St','2020-09-06',4,'2025-09-30',8,7,82),(237,'Gold','555-7237','794 Main St','2022-05-29',3,'2025-10-01',85,0,77),(238,'Silver','555-1395','84 Main St','2020-01-03',3,'2025-10-15',66,47,111),(239,'Silver','555-1363','64 Main St','2022-09-28',1,'2025-02-26',63,36,103),(240,'Gold','555-3751','8 Main St','2022-09-30',2,'2025-01-14',51,23,117),(241,'Silver','555-2093','513 Main St','2022-10-28',0,'2025-01-07',58,43,92),(242,'Gold','555-4684','947 Main St','2021-01-04',4,'2025-03-10',41,26,57),(243,'Gold','555-5265','625 Main St','2021-08-27',4,'2025-09-29',7,7,73),(244,'Gold','555-6285','85 Main St','2021-08-14',2,'2025-08-11',71,36,78),(245,'Gold','555-5886','641 Main St','2021-05-03',1,'2025-03-04',95,12,54),(246,'Gold','555-3105','315 Main St','2021-12-07',1,'2025-06-17',45,46,33),(247,'Gold','555-1031','451 Main St','2022-11-07',1,'2025-02-21',50,5,0),(248,'Silver','555-5813','745 Main St','2022-12-15',3,'2025-07-04',45,36,51),(249,'Gold','555-4112','595 Main St','2022-03-28',4,'2025-06-26',58,23,91),(250,'Silver','555-3627','893 Main St','2021-02-25',1,'2025-01-16',49,17,44);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `Employee_ID` int NOT NULL AUTO_INCREMENT,
  `Shift` datetime DEFAULT NULL,
  `Length_of_Employment` int DEFAULT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (301,'2024-10-01 09:00:00',2,'Alice','Smith'),(302,'2024-10-01 10:00:00',3,'Bob','Johnson'),(303,'2024-10-01 11:00:00',1,'Charlie','Williams'),(304,'2024-10-01 12:00:00',5,'Diana','Brown'),(305,'2024-10-01 13:00:00',4,'Eve','Davis'),(306,'2024-10-01 14:00:00',2,'Frank','Miller'),(307,'2024-10-01 15:00:00',3,'Grace','Wilson'),(308,'2024-10-01 16:00:00',1,'Hank','Moore'),(309,'2024-10-01 17:00:00',6,'Ivy','Taylor'),(310,'2024-10-01 18:00:00',7,'Jack','Anderson');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Food_Item`
--

DROP TABLE IF EXISTS `Food_Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Food_Item` (
  `Item_ID` int NOT NULL,
  `Calories` int DEFAULT NULL,
  `Protein` decimal(10,2) DEFAULT NULL,
  `Sugar` decimal(10,2) DEFAULT NULL,
  `Total_Carbs` decimal(10,2) DEFAULT NULL,
  `Total_Fat` decimal(10,2) DEFAULT NULL,
  `Intro_Date` date DEFAULT NULL,
  `Discontinue_Date` date DEFAULT NULL,
  `Last_Updated_Date` date DEFAULT NULL,
  `Invoice_ID` int DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  PRIMARY KEY (`Item_ID`),
  KEY `food_item_vendorinvoice_id_foreign` (`Invoice_ID`),
  CONSTRAINT `food_item_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `Item` (`Item_ID`),
  CONSTRAINT `food_item_vendorinvoice_id_foreign` FOREIGN KEY (`Invoice_ID`) REFERENCES `VendorInvoice` (`Invoice_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Food_Item`
--

LOCK TABLES `Food_Item` WRITE;
/*!40000 ALTER TABLE `Food_Item` DISABLE KEYS */;
INSERT INTO `Food_Item` VALUES (101,200,3.50,20.00,28.00,10.00,'2024-01-01',NULL,'2024-01-15',1,'Vanilla'),(102,210,4.00,25.00,30.00,12.00,'2024-01-01',NULL,'2024-01-15',1,'Chocolate'),(103,190,3.00,18.00,25.00,9.00,'2024-01-01',NULL,'2024-01-15',2,'Strawberry'),(104,250,5.00,30.00,35.00,15.00,'2024-01-01',NULL,'2024-01-15',3,'Mint Chocolate Chip'),(105,180,2.50,15.00,22.00,8.00,'2024-01-01',NULL,'2024-01-15',3,'Cookies and Cream'),(106,230,4.50,28.00,32.00,13.00,'2024-01-01',NULL,'2024-01-15',1,'Pistachio'),(107,240,4.80,29.00,33.00,14.00,'2024-01-01',NULL,'2024-01-15',2,'Rocky Road'),(108,210,4.20,24.00,30.00,11.00,'2024-01-01',NULL,'2024-01-15',2,'Butter Pecan'),(109,190,3.60,21.00,26.00,10.00,'2024-01-01',NULL,'2024-01-15',3,'Coffee'),(110,200,3.90,23.00,28.00,10.00,'2024-01-01',NULL,'2024-01-15',1,'Salted Caramel'),(111,220,4.10,26.00,31.00,12.00,'2024-01-01',NULL,'2024-01-15',2,'Cookie Dough'),(112,50,0.50,10.00,12.00,3.00,'2024-01-15',NULL,'2024-01-20',3,'Chocolate Chips'),(113,60,0.00,14.00,15.00,4.00,'2024-01-15',NULL,'2024-01-20',2,'Sprinkles'),(114,80,0.20,18.00,20.00,5.00,'2024-01-15',NULL,'2024-01-20',1,'Caramel Sauce'),(115,100,1.00,12.00,16.00,6.00,'2024-01-15',NULL,'2024-01-20',3,'Crushed Oreos'),(116,70,0.00,19.00,22.00,5.00,'2024-01-15',NULL,'2024-01-20',2,'Gummy Bears'),(117,45,0.30,5.00,7.00,3.00,'2024-01-15',NULL,'2024-01-20',1,'Whipped Cream'),(118,90,4.00,2.00,5.00,7.00,'2024-01-15',NULL,'2024-01-20',3,'Chopped Peanuts'),(119,110,0.10,22.00,25.00,8.00,'2024-01-15',NULL,'2024-01-20',2,'Marshmallow Fluff'),(120,130,1.50,20.00,24.00,9.00,'2024-01-15',NULL,'2024-01-20',1,'Hot Fudge'),(121,55,1.00,8.00,10.00,3.00,'2024-01-15',NULL,'2024-01-20',3,'Graham Cracker Crumbs');
/*!40000 ALTER TABLE `Food_Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Item`
--

DROP TABLE IF EXISTS `Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Item` (
  `Item_ID` int NOT NULL AUTO_INCREMENT,
  `Item_Name` varchar(30) NOT NULL,
  `Unit_Price` decimal(10,2) NOT NULL,
  `Item_Type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Item_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Item`
--

LOCK TABLES `Item` WRITE;
/*!40000 ALTER TABLE `Item` DISABLE KEYS */;
INSERT INTO `Item` VALUES (101,'Vanilla',2.50,'flavor'),(102,'Chocolate',2.75,'flavor'),(103,'Strawberry',2.50,'flavor'),(104,'Mint Chocolate Chip',3.00,'flavor'),(105,'Cookies and Cream',2.80,'flavor'),(106,'Pistachio',3.20,'flavor'),(107,'Rocky Road',3.00,'flavor'),(108,'Butter Pecan',2.90,'flavor'),(109,'Coffee',2.60,'flavor'),(110,'Salted Caramel',3.10,'flavor'),(111,'Cookie Dough',3.25,'flavor'),(112,'Chocolate Chips',0.50,'topping'),(113,'Sprinkles',0.40,'topping'),(114,'Caramel Sauce',0.60,'topping'),(115,'Crushed Oreos',0.70,'topping'),(116,'Gummy Bears',0.60,'topping'),(117,'Whipped Cream',0.50,'topping'),(118,'Chopped Peanuts',0.60,'topping'),(119,'Marshmallow Fluff',0.70,'topping'),(120,'Hot Fudge',0.80,'topping'),(121,'Graham Cracker Crumbs',0.55,'topping'),(201,'Small Cup',0.10,'supplies'),(202,'Medium Cup',0.15,'supplies'),(203,'Large Cup',0.20,'supplies'),(204,'Small Cone',0.12,'supplies'),(205,'Medium Cone',0.18,'supplies'),(206,'Large Cone',0.25,'supplies'),(207,'Plastic Spoon',0.05,'supplies'),(208,'Napkin',0.02,'supplies'),(209,'Straw',0.03,'supplies'),(210,'Plastic Bowl',0.30,'supplies');
/*!40000 ALTER TABLE `Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `MonthlyFlavorSales`
--

DROP TABLE IF EXISTS `MonthlyFlavorSales`;
/*!50001 DROP VIEW IF EXISTS `MonthlyFlavorSales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MonthlyFlavorSales` AS SELECT 
 1 AS `FlavorName`,
 1 AS `Year`,
 1 AS `Month`,
 1 AS `TotalVolume`,
 1 AS `TotalRevenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MonthlyItemSales`
--

DROP TABLE IF EXISTS `MonthlyItemSales`;
/*!50001 DROP VIEW IF EXISTS `MonthlyItemSales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MonthlyItemSales` AS SELECT 
 1 AS `Item_Type`,
 1 AS `Item_Name`,
 1 AS `Year`,
 1 AS `Month`,
 1 AS `TotalVolume`,
 1 AS `TotalRevenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Promotions`
--

DROP TABLE IF EXISTS `Promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Promotions` (
  `Promotion_ID` int NOT NULL AUTO_INCREMENT,
  `Promotion_Type` varchar(30) NOT NULL,
  `Discount_Percentage` decimal(5,2) DEFAULT NULL,
  `Discount_Amount` decimal(3,2) DEFAULT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Points_Cost` int NOT NULL,
  `Item_ID` int NOT NULL,
  PRIMARY KEY (`Promotion_ID`),
  KEY `promotions_item_id_foreign` (`Item_ID`),
  CONSTRAINT `promotions_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `Item` (`Item_ID`),
  CONSTRAINT `chk_discount_percentage` CHECK ((`Discount_Percentage` <= 100.00))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promotions`
--

LOCK TABLES `Promotions` WRITE;
/*!40000 ALTER TABLE `Promotions` DISABLE KEYS */;
INSERT INTO `Promotions` VALUES (1,'Holiday Discount',10.00,NULL,'2024-12-20','2024-12-27','Christmas Holiday Special',0,101),(2,'Sports Event',15.00,NULL,'2024-02-05','2024-02-12','Super Bowl Special',0,102),(3,'Buy 1 Get 1 Free',100.00,NULL,'2024-07-01','2024-07-04','Independence Day BOGO',0,104),(4,'Back to School',5.00,NULL,'2024-08-15','2024-08-31','Back to School Discount',0,113),(5,'Summer Special',20.00,NULL,'2024-06-01','2024-08-31','Cool Down with Ice Cream',0,105),(6,'Valentine\'s Day',10.00,NULL,'2024-02-10','2024-02-15','Valentine\'s Day Sweet Deal',0,110),(7,'Loyalty Reward',10.00,NULL,'2024-01-01','2024-12-31','Gold Member Loyalty Discount',50,114),(8,'Teacher Appreciation',10.00,NULL,'2024-05-01','2024-05-07','Teacher Appreciation Week',0,115),(9,'Halloween Special',15.00,NULL,'2024-10-25','2024-11-01','Halloween Candy Topping Special',0,116),(10,'Weekend Deal',5.00,NULL,'2024-10-01','2024-10-31','October Weekend Special',0,203);
/*!40000 ALTER TABLE `Promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Retail_Price_History`
--

DROP TABLE IF EXISTS `Retail_Price_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Retail_Price_History` (
  `Price_History_ID` int NOT NULL AUTO_INCREMENT,
  `Item_ID` int NOT NULL,
  `Retail_Price` decimal(10,2) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date DEFAULT NULL,
  PRIMARY KEY (`Price_History_ID`),
  KEY `retail_price_history_item_id_foreign` (`Item_ID`),
  CONSTRAINT `retail_price_history_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `Item` (`Item_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Retail_Price_History`
--

LOCK TABLES `Retail_Price_History` WRITE;
/*!40000 ALTER TABLE `Retail_Price_History` DISABLE KEYS */;
INSERT INTO `Retail_Price_History` VALUES (1,101,2.30,'2019-10-01','2022-06-15'),(2,101,2.50,'2022-06-16','2024-10-18'),(3,102,2.50,'2019-10-01','2021-11-25'),(4,102,2.75,'2021-11-26','2024-10-18'),(5,103,2.40,'2019-10-01','2023-02-10'),(6,103,2.50,'2023-02-11','2024-10-18'),(7,104,2.80,'2019-10-01','2022-09-30'),(8,104,3.00,'2022-10-01','2024-10-18'),(9,105,2.60,'2019-10-01','2022-01-20'),(10,105,2.80,'2022-01-21','2024-10-18'),(11,106,3.00,'2019-10-01','2022-12-15'),(12,106,3.20,'2022-12-16','2024-10-18'),(13,107,2.90,'2019-10-01','2021-05-18'),(14,107,3.00,'2021-05-19','2024-10-18'),(15,108,2.70,'2019-10-01','2023-01-05'),(16,108,2.90,'2023-01-06','2024-10-18'),(17,109,2.40,'2019-10-01','2022-03-22'),(18,109,2.60,'2022-03-23','2024-10-18'),(19,110,2.80,'2019-10-01','2021-08-12'),(20,110,3.10,'2021-08-13','2024-10-18'),(21,111,3.00,'2019-10-01','2023-04-15'),(22,111,3.25,'2023-04-16','2024-10-18'),(23,112,0.45,'2019-10-01','2022-11-30'),(24,112,0.50,'2022-12-01','2024-10-18'),(25,113,0.35,'2019-10-01','2021-02-28'),(26,113,0.40,'2021-03-01','2024-10-18'),(27,114,0.55,'2019-10-01','2022-06-30'),(28,114,0.60,'2022-07-01','2024-10-18'),(29,115,0.60,'2019-10-01','2023-03-10'),(30,115,0.70,'2023-03-11','2024-10-18'),(31,116,0.55,'2019-10-01','2021-09-14'),(32,116,0.60,'2021-09-15','2024-10-18'),(33,117,0.45,'2019-10-01','2022-08-01'),(34,117,0.50,'2022-08-02','2024-10-18'),(35,118,0.50,'2019-10-01','2021-12-11'),(36,118,0.60,'2021-12-12','2024-10-18'),(37,119,0.65,'2019-10-01','2023-07-20'),(38,119,0.70,'2023-07-21','2024-10-18'),(39,120,0.75,'2019-10-01','2021-10-05'),(40,120,0.80,'2021-10-06','2024-10-18'),(41,121,0.50,'2019-10-01','2022-05-15'),(42,121,0.55,'2022-05-16','2024-10-18'),(43,201,0.08,'2019-10-01','2021-06-30'),(44,201,0.10,'2021-07-01','2024-10-18'),(45,202,0.10,'2019-10-01','2021-08-15'),(46,202,0.15,'2021-08-16','2024-10-18'),(47,203,0.15,'2019-10-01','2023-01-01'),(48,203,0.20,'2023-01-02','2024-10-18'),(49,204,0.10,'2019-10-01','2022-04-20'),(50,204,0.12,'2022-04-21','2024-10-18'),(51,205,0.15,'2019-10-01','2021-11-10'),(52,205,0.18,'2021-11-11','2024-10-18'),(53,206,0.20,'2019-10-01','2023-06-01'),(54,206,0.25,'2023-06-02','2024-10-18'),(55,207,0.04,'2019-10-01','2022-03-15'),(56,207,0.05,'2022-03-16','2024-10-18'),(57,208,0.01,'2019-10-01','2021-05-05'),(58,208,0.02,'2021-05-06','2024-10-18'),(59,209,0.02,'2019-10-01','2023-09-10'),(60,209,0.03,'2023-09-11','2024-10-18'),(61,210,0.25,'2019-10-01','2022-12-31'),(62,210,0.30,'2023-01-01','2024-10-18');
/*!40000 ALTER TABLE `Retail_Price_History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Returns`
--

DROP TABLE IF EXISTS `Returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Returns` (
  `Return_ID` int NOT NULL AUTO_INCREMENT,
  `Transaction_ID` int DEFAULT NULL,
  `Return_Type` varchar(30) NOT NULL,
  PRIMARY KEY (`Return_ID`),
  KEY `returns_transaction_id_foreign` (`Transaction_ID`),
  CONSTRAINT `returns_transaction_id_foreign` FOREIGN KEY (`Transaction_ID`) REFERENCES `Transaction` (`Transaction_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Returns`
--

LOCK TABLES `Returns` WRITE;
/*!40000 ALTER TABLE `Returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `Returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supplies_Item`
--

DROP TABLE IF EXISTS `Supplies_Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supplies_Item` (
  `Item_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Type_ID` int NOT NULL,
  `Size` varchar(10) DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Reorder_Trigger` int NOT NULL,
  `Quantity` int NOT NULL,
  `Invoice_ID` int DEFAULT NULL,
  PRIMARY KEY (`Item_ID`),
  KEY `supplies_item_vendorinvoice_id_foreign` (`Invoice_ID`),
  CONSTRAINT `supplies_item_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `Item` (`Item_ID`),
  CONSTRAINT `supplies_item_vendorinvoice_id_foreign` FOREIGN KEY (`Invoice_ID`) REFERENCES `VendorInvoice` (`Invoice_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplies_Item`
--

LOCK TABLES `Supplies_Item` WRITE;
/*!40000 ALTER TABLE `Supplies_Item` DISABLE KEYS */;
INSERT INTO `Supplies_Item` VALUES (201,'Small Cup',1,'S',0.10,50,100,1),(202,'Medium Cup',1,'M',0.15,50,100,1),(203,'Large Cup',1,'L',0.20,50,100,2),(204,'Small Cone',2,'S',0.12,50,100,3),(205,'Medium Cone',2,'M',0.18,50,100,3),(206,'Large Cone',2,'L',0.25,50,100,2),(207,'Plastic Spoon',3,NULL,0.05,100,500,1),(208,'Napkin',3,NULL,0.02,200,1000,1),(209,'Straw',3,NULL,0.03,150,500,2),(210,'Plastic Bowl',1,'M',0.30,50,100,3);
/*!40000 ALTER TABLE `Supplies_Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transaction` (
  `Transaction_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int DEFAULT NULL,
  `Employee_ID` int DEFAULT NULL,
  `Total_Price` decimal(10,2) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Payment_Type` varchar(30) DEFAULT NULL,
  `Promotion_ID` int DEFAULT NULL,
  `Discount_Percentage` bigint NOT NULL,
  `Discount_Amount` bigint NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  KEY `transaction_employee_id_foreign` (`Employee_ID`),
  KEY `transaction_promotion_id_foreign` (`Promotion_ID`),
  KEY `transaction_customer_id_foreign` (`Customer_ID`),
  CONSTRAINT `transaction_customer_id_foreign` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`Customer_ID`),
  CONSTRAINT `transaction_employee_id_foreign` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`),
  CONSTRAINT `transaction_promotion_id_foreign` FOREIGN KEY (`Promotion_ID`) REFERENCES `Promotions` (`Promotion_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES (1,147,310,17.22,'2024-10-18 00:00:00','Cash',8,1,1),(2,195,303,9.30,'2024-11-03 00:00:00','Cash',8,7,3),(3,44,309,3.30,'2024-10-08 00:00:00','Cash',8,18,3),(4,243,302,13.42,'2024-06-07 00:00:00','Cash',7,9,3),(5,131,309,11.60,'2024-06-17 00:00:00','Card',3,14,4),(6,60,306,7.10,'2024-01-03 00:00:00','Cash',4,1,1),(7,221,308,4.50,'2024-03-31 00:00:00','Card',10,19,5),(8,9,302,13.48,'2024-11-15 00:00:00','Card',9,3,1),(9,243,310,12.12,'2024-09-07 00:00:00','Card',4,11,5),(10,13,304,19.93,'2024-04-26 00:00:00','Card',8,3,3),(11,29,301,10.40,'2024-07-30 00:00:00','Card',10,6,5),(12,199,301,17.40,'2024-03-10 00:00:00','Card',8,15,3),(13,248,310,6.00,'2024-11-29 00:00:00','Cash',9,4,3),(14,34,301,6.50,'2024-03-05 00:00:00','Card',4,12,1),(15,77,309,14.56,'2024-04-10 00:00:00','Card',10,14,5),(16,164,304,11.35,'2024-08-20 00:00:00','Card',1,4,0),(17,124,304,16.20,'2024-06-26 00:00:00','Cash',10,9,3),(18,17,308,12.75,'2024-04-29 00:00:00','Cash',2,8,3),(19,43,308,6.15,'2024-10-15 00:00:00','Card',10,11,1),(20,82,310,15.90,'2024-06-13 00:00:00','Card',9,6,5),(21,244,310,16.50,'2024-03-02 00:00:00','Cash',7,2,2),(22,22,310,21.95,'2024-04-22 00:00:00','Card',1,5,2),(23,201,301,18.50,'2024-01-26 00:00:00','Card',9,18,4),(24,200,303,14.20,'2024-04-11 00:00:00','Cash',8,13,1),(25,89,310,4.90,'2024-09-06 00:00:00','Card',8,0,4),(26,50,304,9.18,'2024-05-26 00:00:00','Cash',3,17,4),(27,6,310,16.00,'2024-08-22 00:00:00','Card',1,15,4),(28,101,309,15.40,'2024-07-28 00:00:00','Cash',8,1,2),(29,99,310,10.70,'2024-04-12 00:00:00','Card',7,18,3),(30,222,309,1.52,'2024-04-11 00:00:00','Card',8,7,4),(31,216,310,7.40,'2024-01-08 00:00:00','Cash',3,5,4),(32,16,310,6.00,'2024-04-17 00:00:00','Card',10,17,3),(33,118,306,9.30,'2024-01-26 00:00:00','Card',8,16,4),(34,230,310,2.10,'2024-11-06 00:00:00','Cash',8,7,3),(35,180,310,4.75,'2024-02-06 00:00:00','Cash',9,14,2),(36,95,310,5.70,'2024-07-20 00:00:00','Cash',3,19,1),(37,83,309,14.94,'2024-05-15 00:00:00','Card',2,17,4),(38,67,301,6.45,'2024-01-02 00:00:00','Card',7,1,2),(39,232,304,3.12,'2024-04-11 00:00:00','Card',4,6,3),(40,199,303,8.16,'2024-06-29 00:00:00','Cash',8,3,3),(41,94,302,21.80,'2024-08-09 00:00:00','Card',7,8,2),(42,111,302,24.95,'2024-08-13 00:00:00','Card',5,10,2),(43,100,308,16.35,'2024-06-16 00:00:00','Card',6,18,4),(44,153,305,8.20,'2024-02-04 00:00:00','Card',1,1,2),(45,119,304,1.95,'2024-09-25 00:00:00','Card',8,0,4),(46,247,306,14.15,'2024-04-30 00:00:00','Card',8,17,1),(47,233,304,22.90,'2024-06-08 00:00:00','Card',3,17,3),(48,236,302,31.00,'2024-09-14 00:00:00','Cash',9,18,1),(49,243,305,13.00,'2024-07-20 00:00:00','Cash',8,1,5),(50,168,305,9.75,'2024-05-02 00:00:00','Cash',6,17,3),(51,133,308,3.82,'2024-04-22 00:00:00','Card',8,6,2),(52,139,309,18.30,'2024-11-05 00:00:00','Card',7,17,2),(53,43,308,10.86,'2024-03-09 00:00:00','Cash',8,8,0),(54,204,310,13.95,'2024-06-25 00:00:00','Card',4,13,2),(55,74,301,5.05,'2024-03-03 00:00:00','Cash',7,14,4),(56,68,307,21.40,'2024-07-01 00:00:00','Cash',6,13,4),(57,51,305,14.65,'2024-07-12 00:00:00','Card',2,17,5),(58,238,301,2.27,'2024-01-27 00:00:00','Card',3,4,2),(59,238,308,4.40,'2024-10-07 00:00:00','Card',7,18,3),(60,20,308,4.90,'2024-06-16 00:00:00','Cash',4,13,2),(61,144,310,15.65,'2024-11-18 00:00:00','Card',4,1,1),(62,130,302,3.51,'2024-06-05 00:00:00','Card',5,4,4),(63,205,304,3.25,'2024-05-10 00:00:00','Cash',3,12,1),(64,243,304,22.23,'2024-01-04 00:00:00','Card',7,9,2),(65,2,306,16.35,'2024-09-01 00:00:00','Cash',9,5,4),(66,59,307,4.75,'2024-10-21 00:00:00','Card',1,4,5),(67,40,309,16.55,'2024-10-12 00:00:00','Cash',1,9,0),(68,10,310,4.60,'2024-06-03 00:00:00','Cash',5,15,3),(69,222,305,18.22,'2024-11-21 00:00:00','Cash',8,6,2),(70,56,308,14.00,'2024-02-23 00:00:00','Cash',1,13,1),(71,237,302,36.25,'2024-02-10 00:00:00','Cash',4,5,1),(72,148,302,25.35,'2024-04-28 00:00:00','Card',9,1,4),(73,78,305,11.50,'2024-03-18 00:00:00','Cash',10,10,3),(74,137,309,4.05,'2024-05-21 00:00:00','Card',4,5,1),(75,165,305,10.50,'2024-02-07 00:00:00','Cash',3,8,1),(76,17,306,12.30,'2024-10-27 00:00:00','Card',9,4,3),(77,11,307,8.80,'2024-10-20 00:00:00','Cash',8,4,4),(78,109,307,16.35,'2024-05-16 00:00:00','Card',1,5,1),(79,158,303,10.80,'2024-05-30 00:00:00','Card',5,17,1),(80,121,308,10.20,'2024-04-13 00:00:00','Cash',1,13,2),(81,166,303,17.00,'2024-07-15 00:00:00','Card',10,2,4),(82,131,303,4.00,'2024-06-12 00:00:00','Cash',4,12,0),(83,121,303,14.83,'2024-11-16 00:00:00','Cash',6,4,1),(84,173,307,27.40,'2024-06-03 00:00:00','Cash',1,5,2),(85,78,303,3.21,'2024-06-20 00:00:00','Card',9,3,2),(86,66,303,12.80,'2024-10-22 00:00:00','Cash',1,12,5),(87,35,308,10.11,'2024-08-24 00:00:00','Card',9,2,5),(88,131,307,10.85,'2024-10-19 00:00:00','Card',3,19,1),(89,59,305,8.80,'2024-05-05 00:00:00','Cash',5,2,1),(90,157,306,12.40,'2024-12-19 00:00:00','Card',8,10,2),(91,109,310,25.50,'2024-10-21 00:00:00','Cash',6,13,4),(92,135,306,3.00,'2024-06-07 00:00:00','Cash',6,3,1),(93,216,305,9.45,'2024-08-22 00:00:00','Card',9,0,3),(94,163,307,22.48,'2024-11-12 00:00:00','Card',10,17,3),(95,81,309,15.00,'2024-01-19 00:00:00','Cash',3,6,5),(96,205,303,20.35,'2024-04-04 00:00:00','Card',1,12,5),(97,165,306,18.80,'2024-12-01 00:00:00','Card',3,16,2),(98,175,302,5.08,'2024-02-26 00:00:00','Card',5,10,2),(99,16,304,10.90,'2024-09-08 00:00:00','Cash',4,7,4),(100,202,307,16.85,'2024-07-15 00:00:00','Card',3,5,4),(101,213,301,6.13,'2024-05-26 00:00:00','Card',6,2,4),(102,15,307,20.10,'2024-08-08 00:00:00','Card',6,16,2),(103,34,308,31.95,'2024-08-02 00:00:00','Card',4,8,0),(104,210,301,4.30,'2024-08-08 00:00:00','Cash',7,15,0),(105,224,304,11.40,'2024-02-23 00:00:00','Card',7,10,3),(106,174,305,10.90,'2024-03-23 00:00:00','Cash',10,5,3),(107,135,307,8.85,'2024-12-24 00:00:00','Cash',10,2,4),(108,143,305,13.50,'2024-05-22 00:00:00','Card',10,16,2),(109,109,310,12.55,'2024-05-01 00:00:00','Card',4,16,5),(110,44,302,16.00,'2024-12-18 00:00:00','Card',4,13,2),(111,33,304,17.31,'2024-09-13 00:00:00','Cash',3,12,3),(112,40,310,3.80,'2024-01-18 00:00:00','Card',6,9,4),(113,179,301,7.24,'2024-07-18 00:00:00','Cash',9,9,3),(114,238,308,3.60,'2024-06-14 00:00:00','Cash',8,11,3),(115,89,309,1.84,'2024-04-22 00:00:00','Cash',9,4,3),(116,109,303,6.63,'2024-04-05 00:00:00','Cash',7,4,1),(117,103,305,14.20,'2024-04-24 00:00:00','Card',1,0,4),(118,9,308,17.15,'2024-03-29 00:00:00','Card',2,9,5),(119,52,303,4.25,'2024-03-14 00:00:00','Cash',7,9,3),(120,44,303,16.95,'2024-05-11 00:00:00','Cash',5,4,4),(121,172,309,14.86,'2024-06-20 00:00:00','Cash',7,1,2),(122,33,303,4.70,'2024-06-12 00:00:00','Cash',7,5,1),(123,62,307,4.10,'2024-01-07 00:00:00','Card',8,16,5),(124,87,309,4.75,'2024-09-18 00:00:00','Cash',3,17,3),(125,65,306,7.45,'2024-07-15 00:00:00','Card',2,0,4),(126,161,310,6.18,'2024-10-24 00:00:00','Cash',7,16,5),(127,64,305,12.80,'2024-05-26 00:00:00','Cash',5,5,5),(128,3,302,11.95,'2024-09-03 00:00:00','Card',3,16,2),(129,59,302,12.35,'2024-01-14 00:00:00','Card',7,14,3),(130,150,304,13.05,'2024-08-02 00:00:00','Cash',1,16,4),(131,204,306,11.30,'2024-05-21 00:00:00','Cash',7,0,1),(132,3,305,12.90,'2024-03-25 00:00:00','Card',6,2,0),(133,8,309,12.94,'2024-01-01 00:00:00','Cash',1,6,2),(134,191,308,18.95,'2024-02-20 00:00:00','Card',5,10,2),(135,6,302,5.00,'2024-09-15 00:00:00','Card',3,0,3),(136,193,302,3.38,'2024-02-12 00:00:00','Card',2,11,2),(137,57,301,5.00,'2024-09-21 00:00:00','Card',8,18,2),(138,120,301,14.36,'2024-06-08 00:00:00','Cash',1,2,2),(139,185,305,2.01,'2024-03-12 00:00:00','Cash',10,14,4),(140,225,301,14.60,'2024-11-20 00:00:00','Card',4,15,0),(141,208,301,15.15,'2024-10-20 00:00:00','Cash',2,18,1),(142,248,305,10.17,'2024-03-19 00:00:00','Cash',10,10,3),(143,163,304,19.40,'2024-06-18 00:00:00','Cash',9,11,1),(144,159,304,3.40,'2024-04-16 00:00:00','Card',4,4,5),(145,81,307,3.80,'2024-04-13 00:00:00','Card',7,2,3),(146,198,301,3.47,'2024-10-26 00:00:00','Cash',10,7,1),(147,217,307,14.60,'2024-04-27 00:00:00','Card',9,5,5),(148,15,304,16.00,'2024-02-19 00:00:00','Cash',8,5,1),(149,124,307,3.10,'2024-06-16 00:00:00','Card',7,5,3),(150,188,303,23.95,'2024-08-07 00:00:00','Cash',5,14,2),(151,153,301,3.56,'2024-11-08 00:00:00','Card',3,1,3),(152,151,304,3.60,'2024-09-26 00:00:00','Cash',3,13,4),(153,189,305,7.15,'2024-03-22 00:00:00','Card',10,9,2),(154,33,302,7.64,'2024-08-25 00:00:00','Card',9,8,2),(155,24,301,5.20,'2024-06-07 00:00:00','Card',5,3,2),(156,194,305,16.80,'2024-08-22 00:00:00','Cash',10,7,5),(157,192,309,14.43,'2024-08-26 00:00:00','Cash',6,12,2),(158,66,310,2.64,'2024-11-22 00:00:00','Card',1,8,0),(159,235,306,1.75,'2024-06-26 00:00:00','Card',6,12,3),(160,197,304,2.63,'2024-10-28 00:00:00','Cash',6,15,1),(161,222,307,6.10,'2024-09-16 00:00:00','Cash',4,0,5),(162,176,307,5.40,'2024-09-21 00:00:00','Cash',10,0,1),(163,37,301,3.16,'2024-04-25 00:00:00','Card',9,10,0),(164,205,309,24.35,'2024-09-15 00:00:00','Card',7,11,4),(165,211,302,17.75,'2024-10-10 00:00:00','Card',8,9,0),(166,229,304,17.15,'2024-10-26 00:00:00','Cash',6,19,1),(167,119,306,3.30,'2024-04-22 00:00:00','Cash',8,15,3),(168,85,302,4.85,'2024-08-06 00:00:00','Cash',4,17,2),(169,54,301,9.05,'2024-12-26 00:00:00','Card',8,6,2),(170,113,309,3.53,'2024-12-07 00:00:00','Card',6,13,4),(171,183,305,9.78,'2024-12-02 00:00:00','Cash',9,0,3),(172,113,308,12.10,'2024-03-10 00:00:00','Cash',1,0,4),(173,243,305,17.20,'2024-07-05 00:00:00','Cash',6,13,3),(174,96,309,13.60,'2024-08-08 00:00:00','Card',10,18,4),(175,26,302,4.10,'2024-02-29 00:00:00','Cash',6,6,4),(176,39,304,26.50,'2024-06-04 00:00:00','Card',4,17,2),(177,55,310,23.40,'2024-07-25 00:00:00','Card',9,7,2),(178,78,301,1.66,'2024-10-01 00:00:00','Card',7,13,2),(179,223,303,3.60,'2024-05-06 00:00:00','Card',3,15,1),(180,84,303,13.75,'2024-05-17 00:00:00','Cash',10,3,5),(181,42,301,4.41,'2024-01-31 00:00:00','Card',4,3,5),(182,242,302,12.45,'2024-10-10 00:00:00','Cash',9,1,5),(183,129,307,24.70,'2024-05-18 00:00:00','Cash',1,11,4),(184,222,303,24.40,'2024-04-28 00:00:00','Card',9,2,5),(185,99,302,6.45,'2024-05-28 00:00:00','Cash',9,0,3),(186,71,305,15.00,'2024-10-21 00:00:00','Cash',7,17,3),(187,1,305,17.40,'2024-04-25 00:00:00','Cash',2,4,3),(188,58,305,12.90,'2024-06-10 00:00:00','Cash',8,5,0),(189,58,302,3.90,'2024-12-08 00:00:00','Cash',9,19,2),(190,170,304,11.65,'2024-06-25 00:00:00','Card',7,7,4),(191,80,310,3.95,'2024-02-19 00:00:00','Cash',1,5,1),(192,139,310,5.90,'2024-09-14 00:00:00','Cash',9,9,4),(193,240,303,4.00,'2024-03-05 00:00:00','Cash',6,6,0),(194,111,310,11.30,'2024-09-23 00:00:00','Cash',2,9,4),(195,8,306,16.70,'2024-12-12 00:00:00','Cash',4,1,1),(196,38,310,4.70,'2024-04-01 00:00:00','Card',4,0,5),(197,199,301,11.50,'2024-03-24 00:00:00','Card',10,19,1),(198,211,308,19.00,'2024-10-23 00:00:00','Cash',7,3,4),(199,223,308,26.50,'2024-07-17 00:00:00','Cash',5,9,0),(200,19,301,7.45,'2024-06-09 00:00:00','Card',8,6,2),(201,214,302,9.40,'2024-11-09 00:00:00','Cash',9,15,1),(202,235,310,22.80,'2024-05-12 00:00:00','Card',2,13,5),(203,156,304,17.90,'2024-10-07 00:00:00','Card',3,12,2),(204,8,310,13.65,'2024-10-25 00:00:00','Card',9,11,2),(205,92,306,17.60,'2024-09-30 00:00:00','Card',3,0,2),(206,31,303,7.60,'2024-09-07 00:00:00','Cash',4,11,4),(207,123,309,13.14,'2024-03-24 00:00:00','Cash',4,1,2),(208,192,307,8.30,'2024-03-02 00:00:00','Cash',7,17,2),(209,157,308,19.05,'2024-12-28 00:00:00','Card',8,10,2),(210,107,310,4.30,'2024-10-24 00:00:00','Cash',3,13,4),(211,14,308,2.89,'2024-07-05 00:00:00','Cash',7,9,2),(212,225,301,3.50,'2024-08-13 00:00:00','Card',10,4,3),(213,235,301,9.45,'2024-11-20 00:00:00','Card',2,16,5),(214,25,308,11.15,'2024-03-10 00:00:00','Cash',3,12,2),(215,44,307,21.25,'2024-03-14 00:00:00','Cash',8,7,3),(216,9,303,9.27,'2024-02-29 00:00:00','Cash',8,1,0),(217,1,309,7.10,'2024-06-06 00:00:00','Card',3,8,2),(218,29,302,5.40,'2024-12-25 00:00:00','Cash',7,15,0),(219,195,309,22.05,'2024-04-29 00:00:00','Cash',9,2,5),(220,168,304,4.70,'2024-01-02 00:00:00','Card',8,4,4),(221,135,302,14.30,'2024-12-22 00:00:00','Card',4,12,1),(222,92,301,2.95,'2024-09-24 00:00:00','Cash',5,14,2),(223,150,310,17.72,'2024-07-28 00:00:00','Cash',5,15,1),(224,45,301,11.25,'2024-11-01 00:00:00','Cash',8,3,4),(225,161,307,12.75,'2024-03-30 00:00:00','Card',6,6,4),(226,43,304,19.50,'2024-11-20 00:00:00','Cash',5,12,4),(227,234,304,16.80,'2024-02-18 00:00:00','Card',2,8,3),(228,136,301,9.50,'2024-12-10 00:00:00','Card',9,16,3),(229,40,302,5.26,'2024-06-28 00:00:00','Cash',8,2,2),(230,68,304,16.00,'2024-08-02 00:00:00','Cash',1,14,2),(231,247,307,12.98,'2024-10-07 00:00:00','Card',7,19,4),(232,123,308,7.15,'2024-02-19 00:00:00','Cash',5,13,5),(233,242,309,4.12,'2024-08-13 00:00:00','Card',10,8,2),(234,109,302,4.25,'2024-05-18 00:00:00','Card',10,9,2),(235,208,308,12.59,'2024-08-05 00:00:00','Card',4,4,1),(236,249,306,1.15,'2024-03-18 00:00:00','Card',1,3,3),(237,58,306,4.95,'2024-04-16 00:00:00','Card',8,4,4),(238,112,308,22.42,'2024-03-05 00:00:00','Cash',5,0,4),(239,150,309,6.60,'2024-11-30 00:00:00','Card',2,5,5),(240,247,301,2.60,'2024-08-18 00:00:00','Cash',5,17,1),(241,44,304,1.70,'2024-11-22 00:00:00','Cash',5,15,1),(242,47,301,1.40,'2024-06-23 00:00:00','Cash',6,6,4),(243,26,301,14.40,'2024-06-30 00:00:00','Cash',6,18,5),(244,199,302,13.25,'2024-06-09 00:00:00','Cash',6,14,4),(245,45,303,4.84,'2024-11-06 00:00:00','Cash',5,3,3),(246,243,304,17.94,'2024-08-18 00:00:00','Card',1,5,1),(247,230,302,28.10,'2024-04-27 00:00:00','Cash',5,18,1),(248,122,308,10.78,'2024-03-24 00:00:00','Card',1,4,1),(249,30,301,5.45,'2024-12-23 00:00:00','Card',9,3,1),(250,96,304,13.60,'2024-06-22 00:00:00','Cash',7,14,3),(251,151,304,2.80,'2024-12-11 00:00:00','Card',8,8,5),(252,147,301,4.16,'2024-09-08 00:00:00','Cash',9,6,4),(253,68,309,7.58,'2024-07-15 00:00:00','Cash',7,14,3),(254,91,308,7.14,'2024-07-20 00:00:00','Cash',10,9,3),(255,15,308,4.14,'2024-06-22 00:00:00','Cash',10,6,5),(256,169,306,5.85,'2024-06-06 00:00:00','Card',1,4,0),(257,97,309,6.00,'2024-08-12 00:00:00','Cash',8,15,4),(258,49,309,15.15,'2024-02-10 00:00:00','Cash',8,14,1),(259,85,309,15.60,'2024-09-16 00:00:00','Cash',3,14,5),(260,159,303,10.46,'2024-06-11 00:00:00','Card',1,12,5),(261,225,307,3.83,'2024-05-21 00:00:00','Card',7,14,2),(262,58,308,6.00,'2024-12-12 00:00:00','Card',4,16,5),(263,130,307,18.10,'2024-01-27 00:00:00','Card',8,18,3),(264,170,309,4.82,'2024-03-02 00:00:00','Card',3,2,3),(265,38,307,20.15,'2024-08-31 00:00:00','Card',6,4,2),(266,110,310,13.34,'2024-03-18 00:00:00','Card',6,4,2),(267,158,308,2.92,'2024-09-09 00:00:00','Cash',2,6,1),(268,16,307,13.90,'2024-05-17 00:00:00','Cash',10,12,1),(269,144,301,8.80,'2024-08-18 00:00:00','Cash',10,0,2),(270,26,303,12.50,'2024-12-01 00:00:00','Cash',7,13,2),(271,111,308,17.43,'2024-08-25 00:00:00','Cash',7,1,2),(272,89,309,15.20,'2024-08-18 00:00:00','Cash',7,17,2),(273,76,304,8.32,'2024-12-13 00:00:00','Card',7,19,0),(274,89,307,7.03,'2024-12-11 00:00:00','Card',6,1,4),(275,222,310,3.46,'2024-01-26 00:00:00','Cash',1,15,4),(276,170,310,19.60,'2024-09-29 00:00:00','Card',3,8,2),(277,44,304,7.25,'2024-12-17 00:00:00','Card',8,6,2),(278,133,308,15.40,'2024-01-24 00:00:00','Cash',7,15,5),(279,131,307,12.50,'2024-01-07 00:00:00','Card',3,4,2),(280,236,308,15.70,'2024-01-29 00:00:00','Cash',5,18,1),(281,222,301,29.35,'2024-03-23 00:00:00','Cash',7,2,3),(282,172,307,8.80,'2024-12-14 00:00:00','Card',8,16,0),(283,177,304,25.80,'2024-12-12 00:00:00','Cash',6,0,2),(284,244,307,6.40,'2024-04-28 00:00:00','Card',5,15,2),(285,181,304,7.90,'2024-08-04 00:00:00','Card',9,18,0),(286,186,305,6.54,'2024-05-21 00:00:00','Cash',5,1,4),(287,28,310,14.15,'2024-08-11 00:00:00','Card',10,17,3),(288,188,308,1.10,'2024-08-23 00:00:00','Cash',8,8,5),(289,52,303,6.30,'2024-06-21 00:00:00','Card',3,3,1),(290,240,305,4.96,'2024-12-27 00:00:00','Card',6,7,1),(291,243,302,20.70,'2024-08-11 00:00:00','Card',4,17,2),(292,63,301,3.14,'2024-01-31 00:00:00','Cash',9,19,2),(293,204,301,5.25,'2024-05-02 00:00:00','Card',2,15,3),(294,70,309,6.35,'2024-08-05 00:00:00','Cash',1,5,0),(295,129,304,13.30,'2024-01-14 00:00:00','Card',2,1,0),(296,209,302,24.30,'2024-05-03 00:00:00','Cash',3,9,4),(297,9,301,2.60,'2024-02-22 00:00:00','Card',1,10,2),(298,120,302,9.55,'2024-03-13 00:00:00','Cash',10,19,0),(299,8,302,25.05,'2024-10-06 00:00:00','Card',3,7,2),(300,112,303,12.15,'2024-09-26 00:00:00','Cash',9,1,0),(301,200,310,11.54,'2024-08-29 00:00:00','Cash',2,6,1),(302,33,301,12.10,'2024-03-03 00:00:00','Card',3,4,2),(303,142,306,7.35,'2024-09-20 00:00:00','Cash',2,8,4),(304,139,305,22.10,'2024-03-31 00:00:00','Cash',4,17,2),(305,210,303,4.55,'2024-03-19 00:00:00','Card',8,14,1),(306,54,303,16.70,'2024-12-22 00:00:00','Card',1,7,4),(307,213,309,10.98,'2024-01-08 00:00:00','Card',8,12,1),(308,188,304,9.45,'2024-02-08 00:00:00','Cash',10,4,0),(309,127,305,4.20,'2024-05-25 00:00:00','Card',6,6,0),(310,74,304,23.10,'2024-12-08 00:00:00','Cash',9,1,0),(311,223,304,5.65,'2024-04-03 00:00:00','Cash',8,8,4),(312,250,305,6.30,'2024-09-30 00:00:00','Cash',3,1,3),(313,198,302,28.50,'2024-09-02 00:00:00','Card',8,7,4),(314,168,301,5.46,'2024-12-21 00:00:00','Cash',1,16,5),(315,4,304,13.90,'2024-10-12 00:00:00','Card',6,4,1),(316,191,310,9.55,'2024-11-27 00:00:00','Card',6,1,4),(317,153,308,16.80,'2024-10-23 00:00:00','Card',6,11,1),(318,194,310,10.80,'2024-04-04 00:00:00','Cash',10,17,2),(319,10,303,23.10,'2024-05-29 00:00:00','Card',8,13,1),(320,30,309,2.20,'2024-07-21 00:00:00','Card',7,2,4),(321,197,305,6.80,'2024-03-25 00:00:00','Cash',7,5,1),(322,63,307,19.00,'2024-03-29 00:00:00','Card',9,10,5),(323,73,306,8.20,'2024-05-17 00:00:00','Card',10,6,3),(324,92,309,14.04,'2024-07-26 00:00:00','Cash',1,13,1),(325,36,301,2.00,'2024-12-09 00:00:00','Cash',5,7,3),(326,42,309,17.30,'2024-10-23 00:00:00','Cash',10,9,2),(327,226,302,3.70,'2024-01-19 00:00:00','Card',5,13,4),(328,21,310,4.55,'2024-06-06 00:00:00','Cash',4,5,2),(329,202,301,2.53,'2024-09-02 00:00:00','Cash',1,2,2),(330,215,310,14.65,'2024-07-06 00:00:00','Cash',5,17,1),(331,26,301,1.78,'2024-04-09 00:00:00','Cash',5,0,4),(332,174,303,7.69,'2024-10-21 00:00:00','Card',3,16,3),(333,152,302,0.98,'2024-10-16 00:00:00','Cash',10,3,1),(334,38,304,14.30,'2024-04-20 00:00:00','Card',7,5,1),(335,97,303,5.75,'2024-05-07 00:00:00','Card',6,11,1),(336,140,301,8.00,'2024-10-05 00:00:00','Card',5,2,1),(337,74,301,9.20,'2024-10-10 00:00:00','Cash',9,5,4),(338,183,306,5.45,'2024-10-15 00:00:00','Card',2,8,3),(339,220,305,0.59,'2024-01-13 00:00:00','Cash',5,1,5),(340,179,306,14.26,'2024-11-27 00:00:00','Cash',2,8,4),(341,101,309,3.24,'2024-05-06 00:00:00','Card',1,16,4),(342,217,308,20.80,'2024-12-02 00:00:00','Card',6,6,4),(343,14,309,0.80,'2024-06-09 00:00:00','Card',5,14,1),(344,175,310,12.22,'2024-10-26 00:00:00','Card',9,14,5),(345,212,303,24.00,'2024-05-05 00:00:00','Card',5,13,0),(346,36,306,18.50,'2024-04-18 00:00:00','Cash',6,0,1),(347,116,305,15.80,'2024-05-16 00:00:00','Card',3,7,5),(348,182,308,21.95,'2024-05-21 00:00:00','Cash',8,10,2),(349,82,306,23.10,'2024-04-07 00:00:00','Card',6,14,5),(350,122,307,14.40,'2024-04-14 00:00:00','Card',5,14,1),(351,146,305,15.30,'2024-02-12 00:00:00','Cash',8,10,2),(352,3,302,1.50,'2024-05-31 00:00:00','Cash',9,17,5),(353,238,310,6.49,'2024-09-19 00:00:00','Cash',7,18,3),(354,4,304,11.50,'2024-07-28 00:00:00','Cash',4,11,4),(355,162,307,6.60,'2024-12-15 00:00:00','Cash',7,4,1),(356,155,304,10.95,'2024-08-18 00:00:00','Cash',2,16,3),(357,36,302,15.90,'2024-09-14 00:00:00','Cash',9,11,2),(358,129,302,6.04,'2024-08-01 00:00:00','Card',4,18,2),(359,148,306,9.20,'2024-07-28 00:00:00','Card',9,18,1),(360,248,306,7.16,'2024-05-05 00:00:00','Card',10,16,1),(361,229,308,17.00,'2024-02-01 00:00:00','Card',2,5,4),(362,244,307,11.80,'2024-10-07 00:00:00','Cash',2,5,0),(363,64,302,8.20,'2024-01-04 00:00:00','Card',7,19,5),(364,221,306,15.16,'2024-07-05 00:00:00','Cash',9,18,0),(365,123,303,7.49,'2024-08-29 00:00:00','Card',2,13,0),(366,92,306,9.35,'2024-05-18 00:00:00','Cash',10,8,2),(367,120,304,25.65,'2024-12-03 00:00:00','Cash',7,3,4),(368,103,308,27.90,'2024-04-27 00:00:00','Card',8,10,2),(369,146,306,0.28,'2024-03-06 00:00:00','Cash',2,13,5),(370,214,304,3.80,'2024-09-14 00:00:00','Cash',4,6,4),(371,204,308,7.60,'2024-07-15 00:00:00','Card',4,19,4),(372,242,306,15.30,'2024-09-30 00:00:00','Card',7,16,2),(373,36,307,1.68,'2024-03-20 00:00:00','Card',9,10,0),(374,168,303,3.10,'2024-09-30 00:00:00','Card',3,16,2),(375,102,309,1.82,'2024-02-14 00:00:00','Cash',5,16,3),(376,240,308,1.70,'2024-01-25 00:00:00','Card',6,12,2),(377,80,303,19.80,'2024-08-07 00:00:00','Cash',3,13,2),(378,113,309,12.20,'2024-01-30 00:00:00','Cash',3,6,4),(379,108,306,11.75,'2024-09-17 00:00:00','Card',1,12,5),(380,4,302,12.00,'2024-08-26 00:00:00','Card',9,15,2),(381,240,305,12.92,'2024-12-24 00:00:00','Cash',9,11,2),(382,185,303,20.25,'2024-05-22 00:00:00','Card',6,3,1),(383,204,303,5.40,'2024-09-04 00:00:00','Cash',10,7,1),(384,192,303,5.75,'2024-08-06 00:00:00','Card',9,3,1),(385,172,308,20.20,'2024-05-14 00:00:00','Cash',7,0,1),(386,91,310,24.10,'2024-05-27 00:00:00','Cash',2,10,1),(387,158,304,33.30,'2024-04-05 00:00:00','Cash',5,0,4),(388,40,303,10.40,'2024-12-06 00:00:00','Cash',6,6,0),(389,52,309,6.61,'2024-08-28 00:00:00','Card',5,2,2),(390,46,310,7.15,'2024-09-30 00:00:00','Card',5,1,5),(391,132,309,4.50,'2024-10-04 00:00:00','Cash',3,10,0),(392,184,305,20.80,'2024-04-21 00:00:00','Cash',6,9,4),(393,81,304,18.95,'2024-12-17 00:00:00','Cash',2,6,2),(394,250,308,16.53,'2024-10-30 00:00:00','Card',10,12,2),(395,230,305,4.00,'2024-02-25 00:00:00','Card',5,6,2),(396,201,310,11.45,'2024-05-01 00:00:00','Cash',6,16,2),(397,211,309,4.40,'2024-06-22 00:00:00','Card',7,4,1),(398,92,303,13.50,'2024-12-21 00:00:00','Cash',3,18,5),(399,21,305,27.05,'2024-12-14 00:00:00','Card',10,2,3),(400,4,301,24.50,'2024-01-15 00:00:00','Cash',3,14,0),(401,240,307,15.65,'2024-04-13 00:00:00','Cash',5,18,2),(402,222,305,10.20,'2024-10-13 00:00:00','Cash',8,17,5),(403,54,302,15.75,'2024-08-21 00:00:00','Cash',6,7,1),(404,152,307,3.55,'2024-02-24 00:00:00','Cash',5,12,4),(405,214,301,16.30,'2024-11-09 00:00:00','Card',7,15,4),(406,174,301,12.77,'2024-08-29 00:00:00','Cash',8,2,3),(407,108,305,3.60,'2024-03-17 00:00:00','Cash',1,4,0),(408,123,304,17.10,'2024-11-05 00:00:00','Card',2,11,2),(409,245,309,16.52,'2024-02-06 00:00:00','Card',9,12,4),(410,213,310,1.84,'2024-10-27 00:00:00','Cash',9,16,4),(411,123,301,18.65,'2024-07-28 00:00:00','Card',6,14,1),(412,77,303,12.95,'2024-12-21 00:00:00','Card',7,14,3),(413,47,310,13.10,'2024-01-14 00:00:00','Cash',7,1,2),(414,213,301,35.50,'2024-06-19 00:00:00','Cash',4,8,5),(415,152,302,9.30,'2024-02-25 00:00:00','Card',10,16,1),(416,175,308,18.30,'2024-06-02 00:00:00','Card',1,14,3),(417,104,305,1.16,'2024-05-12 00:00:00','Cash',6,17,3),(418,119,306,14.14,'2024-08-03 00:00:00','Cash',5,6,2),(419,217,303,4.35,'2024-04-23 00:00:00','Card',8,9,0),(420,31,304,27.90,'2024-12-10 00:00:00','Cash',2,5,4),(421,9,309,2.58,'2024-01-21 00:00:00','Cash',1,12,4),(422,96,304,10.68,'2024-07-30 00:00:00','Card',7,2,4),(423,155,307,2.64,'2024-04-16 00:00:00','Cash',6,12,2),(424,61,310,23.85,'2024-08-18 00:00:00','Card',7,18,3),(425,38,310,6.54,'2024-04-17 00:00:00','Cash',8,10,2),(426,49,309,2.30,'2024-04-07 00:00:00','Cash',3,4,1),(427,181,309,2.62,'2024-04-06 00:00:00','Cash',7,13,3),(428,161,306,24.00,'2024-06-18 00:00:00','Cash',5,17,4),(429,192,303,11.10,'2024-05-18 00:00:00','Cash',3,12,3),(430,28,308,10.40,'2024-12-05 00:00:00','Cash',3,8,1),(431,208,306,4.22,'2024-07-18 00:00:00','Card',9,6,5),(432,241,309,6.70,'2024-01-02 00:00:00','Cash',6,6,0),(433,42,308,16.20,'2024-01-14 00:00:00','Cash',10,8,2),(434,205,309,17.20,'2024-05-02 00:00:00','Cash',2,13,4),(435,86,302,17.40,'2024-02-21 00:00:00','Cash',8,3,3),(436,109,304,20.10,'2024-06-12 00:00:00','Card',3,2,5),(437,44,302,0.61,'2024-10-03 00:00:00','Card',5,18,1),(438,120,307,25.05,'2024-11-23 00:00:00','Card',9,16,2),(439,188,305,3.65,'2024-06-02 00:00:00','Cash',1,9,1),(440,91,304,17.95,'2024-09-26 00:00:00','Cash',8,7,3),(441,100,310,3.80,'2024-12-27 00:00:00','Card',7,6,4),(442,38,303,7.96,'2024-06-07 00:00:00','Card',9,11,1),(443,33,302,2.85,'2024-01-06 00:00:00','Cash',1,15,3),(444,122,308,14.70,'2024-06-17 00:00:00','Cash',10,18,4),(445,230,305,8.80,'2024-01-25 00:00:00','Card',7,12,1),(446,31,310,2.02,'2024-08-29 00:00:00','Card',8,12,4),(447,213,301,6.90,'2024-02-02 00:00:00','Card',4,4,0),(448,114,303,12.60,'2024-09-02 00:00:00','Cash',10,10,4),(449,126,301,7.56,'2024-11-21 00:00:00','Cash',4,13,2),(450,191,308,23.75,'2024-10-21 00:00:00','Card',7,0,5),(451,215,304,9.00,'2024-11-28 00:00:00','Card',2,15,2),(452,34,302,8.22,'2024-11-07 00:00:00','Card',7,13,2),(453,50,307,4.85,'2024-08-12 00:00:00','Card',8,19,3),(454,14,306,4.60,'2024-03-16 00:00:00','Cash',5,2,2),(455,64,304,14.20,'2024-10-16 00:00:00','Card',4,10,3),(456,116,305,4.30,'2024-05-29 00:00:00','Cash',6,6,0),(457,47,308,3.95,'2024-09-01 00:00:00','Cash',6,9,4),(458,21,303,5.27,'2024-05-02 00:00:00','Card',7,11,4),(459,143,303,1.16,'2024-03-17 00:00:00','Cash',7,8,1),(460,33,308,8.30,'2024-01-12 00:00:00','Card',7,2,3),(461,158,304,2.50,'2024-12-12 00:00:00','Cash',1,18,3),(462,22,308,7.90,'2024-08-11 00:00:00','Card',2,14,1),(463,221,308,2.95,'2024-09-30 00:00:00','Cash',3,2,4),(464,77,304,9.12,'2024-09-12 00:00:00','Cash',4,15,5),(465,72,307,5.00,'2024-12-29 00:00:00','Card',1,19,3),(466,70,305,10.55,'2024-12-22 00:00:00','Cash',4,11,4),(467,221,303,6.85,'2024-01-16 00:00:00','Card',7,11,5),(468,243,301,3.37,'2024-03-03 00:00:00','Cash',10,11,0),(469,66,303,3.80,'2024-07-19 00:00:00','Card',8,16,4),(470,178,301,14.70,'2024-11-13 00:00:00','Cash',3,6,4),(471,53,305,20.70,'2024-10-26 00:00:00','Card',1,17,0),(472,188,306,4.70,'2024-12-04 00:00:00','Cash',7,0,1),(473,153,307,7.40,'2024-12-12 00:00:00','Card',3,8,1),(474,41,310,15.07,'2024-04-11 00:00:00','Cash',5,17,1),(475,74,310,8.55,'2024-08-19 00:00:00','Cash',9,14,0),(476,55,309,4.90,'2024-02-20 00:00:00','Cash',7,3,4),(477,158,307,1.85,'2024-10-27 00:00:00','Cash',8,16,4),(478,60,310,10.10,'2024-08-08 00:00:00','Card',8,16,3),(479,207,302,5.80,'2024-07-18 00:00:00','Cash',8,8,4),(480,174,301,40.30,'2024-07-25 00:00:00','Card',10,9,3),(481,164,305,1.02,'2024-03-27 00:00:00','Card',8,5,0),(482,48,310,1.54,'2024-07-31 00:00:00','Card',8,9,1),(483,5,303,17.80,'2024-03-25 00:00:00','Cash',6,19,1),(484,18,308,9.60,'2024-02-16 00:00:00','Card',4,6,2),(485,183,307,2.60,'2024-10-31 00:00:00','Card',8,18,2),(486,223,305,3.40,'2024-12-23 00:00:00','Card',8,5,0),(487,109,301,4.80,'2024-09-10 00:00:00','Cash',2,17,0),(488,115,303,3.35,'2024-05-31 00:00:00','Card',8,17,0),(489,212,310,22.68,'2024-12-16 00:00:00','Card',5,0,0),(490,248,309,20.22,'2024-03-31 00:00:00','Cash',9,1,4),(491,142,306,8.60,'2024-02-20 00:00:00','Card',9,17,3),(492,203,310,31.00,'2024-08-28 00:00:00','Card',6,15,1),(493,90,304,13.20,'2024-11-14 00:00:00','Card',2,1,4),(494,5,306,9.80,'2024-03-25 00:00:00','Cash',7,0,0),(495,32,306,30.85,'2024-05-03 00:00:00','Cash',9,14,1),(496,106,308,25.50,'2024-10-30 00:00:00','Card',2,1,4),(497,185,304,10.70,'2024-04-24 00:00:00','Cash',10,5,2),(498,158,307,11.06,'2024-04-06 00:00:00','Card',1,3,4),(499,80,304,19.10,'2024-04-29 00:00:00','Card',3,9,2),(500,17,309,13.85,'2024-07-13 00:00:00','Card',6,19,0);
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction_Item`
--

DROP TABLE IF EXISTS `Transaction_Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transaction_Item` (
  `Transaction_ID` int NOT NULL,
  `Item_ID` int NOT NULL,
  `Quantity_Sold` int NOT NULL,
  PRIMARY KEY (`Transaction_ID`,`Item_ID`),
  KEY `transaction_item_item_id_foreign` (`Item_ID`),
  CONSTRAINT `transaction_item_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `Item` (`Item_ID`),
  CONSTRAINT `transaction_item_transaction_id_foreign` FOREIGN KEY (`Transaction_ID`) REFERENCES `Transaction` (`Transaction_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction_Item`
--

LOCK TABLES `Transaction_Item` WRITE;
/*!40000 ALTER TABLE `Transaction_Item` DISABLE KEYS */;
INSERT INTO `Transaction_Item` VALUES (1,105,2),(1,108,4),(1,208,1),(2,112,5),(2,119,4),(2,120,5),(3,102,1),(3,201,4),(3,202,1),(4,109,5),(4,204,3),(4,209,2),(5,107,3),(5,113,4),(5,117,2),(6,114,5),(6,119,5),(6,210,2),(7,105,1),(7,121,2),(7,210,2),(8,106,4),(8,208,4),(8,210,2),(9,106,3),(9,116,4),(9,204,1),(10,103,4),(10,111,3),(10,205,1),(11,109,3),(11,117,2),(11,120,2),(12,101,2),(12,104,4),(12,203,2),(13,116,10),(14,108,2),(14,201,7),(15,109,5),(15,117,3),(15,208,3),(16,101,2),(16,108,2),(16,121,1),(17,106,1),(17,109,5),(18,111,3),(18,113,3),(18,116,3),(19,116,5),(19,121,5),(19,203,2),(20,108,4),(20,112,5),(20,114,3),(21,107,3),(21,111,2),(21,203,5),(22,103,5),(22,110,2),(22,111,1),(23,104,5),(23,112,3),(23,117,4),(24,109,4),(24,116,4),(24,119,2),(25,121,8),(25,206,2),(26,105,3),(26,204,4),(26,210,1),(27,109,5),(27,116,3),(27,118,2),(28,104,4),(28,114,5),(28,203,2),(29,103,3),(29,115,4),(29,201,4),(30,117,1),(30,209,4),(30,210,3),(31,114,2),(31,118,5),(31,120,4),(32,107,1),(32,113,5),(32,203,5),(33,109,2),(33,115,5),(33,203,3),(34,113,3),(34,203,2),(34,206,2),(35,102,1),(35,112,4),(36,113,4),(36,114,1),(36,115,5),(37,107,4),(37,116,4),(37,205,3),(38,112,4),(38,120,5),(38,202,3),(39,101,1),(39,116,1),(39,208,1),(40,105,2),(40,117,5),(40,208,3),(41,105,4),(41,109,4),(41,203,1),(42,104,4),(42,111,3),(42,120,4),(43,107,5),(43,207,3),(43,210,4),(44,104,2),(44,206,4),(44,210,4),(45,116,2),(45,202,1),(45,204,5),(46,107,4),(46,113,5),(46,209,5),(47,108,2),(47,109,3),(47,110,3),(48,104,5),(48,107,5),(48,117,2),(49,106,2),(49,110,1),(49,115,5),(50,102,3),(50,201,5),(50,203,5),(51,119,1),(51,120,3),(51,205,4),(52,101,1),(52,105,1),(52,111,4),(53,103,3),(53,118,5),(53,204,3),(54,108,4),(54,121,2),(54,206,5),(55,105,1),(55,112,4),(55,207,5),(56,110,5),(56,115,5),(56,116,4),(57,111,4),(57,121,3),(58,113,5),(58,202,1),(58,209,4),(59,113,4),(59,118,4),(59,201,4),(60,115,5),(60,203,4),(60,210,2),(61,108,5),(61,202,1),(61,206,4),(62,107,1),(62,204,4),(62,209,1),(63,121,5),(63,207,4),(63,210,1),(64,106,5),(64,110,2),(64,209,1),(65,102,5),(65,112,4),(65,202,4),(66,117,5),(66,119,3),(66,202,1),(67,110,2),(67,111,3),(67,202,4),(68,118,5),(68,203,3),(68,206,4),(69,108,5),(69,118,5),(69,205,4),(70,103,4),(70,107,1),(70,206,4),(71,101,3),(71,103,5),(71,111,5),(72,108,5),(72,109,4),(72,202,3),(73,101,1),(73,105,3),(73,203,3),(74,112,4),(74,114,3),(74,207,5),(75,109,3),(75,116,4),(75,201,3),(76,104,3),(76,117,5),(76,203,4),(77,111,2),(77,116,3),(77,117,1),(78,102,5),(78,114,2),(78,119,2),(79,101,2),(79,102,2),(79,201,3),(80,110,3),(80,116,1),(80,202,2),(81,104,5),(81,113,3),(81,120,1),(82,113,7),(82,210,4),(83,111,4),(83,114,3),(83,209,1),(84,105,5),(84,109,5),(84,201,4),(85,114,4),(85,202,3),(85,205,2),(86,104,3),(86,120,4),(86,204,5),(87,111,3),(87,201,3),(87,209,2),(88,109,2),(88,120,5),(88,121,3),(89,101,3),(89,118,2),(89,201,1),(90,105,3),(90,113,3),(90,115,4),(91,101,5),(91,105,4),(91,118,3),(92,113,3),(92,118,3),(93,102,3),(93,121,2),(93,207,2),(94,104,4),(94,109,4),(94,208,4),(95,101,1),(95,109,4),(95,119,3),(96,105,2),(96,107,4),(96,121,5),(97,110,4),(97,114,4),(97,120,5),(98,112,3),(98,115,5),(98,208,4),(99,109,3),(99,117,5),(99,203,3),(100,111,5),(100,116,1),(101,119,3),(101,120,5),(101,209,1),(102,109,5),(102,111,2),(102,203,3),(103,102,3),(103,103,5),(103,105,4),(104,118,2),(104,119,1),(104,120,3),(105,105,3),(105,114,1),(105,118,4),(106,110,2),(106,113,3),(106,115,5),(107,102,3),(107,204,2),(107,205,2),(108,101,4),(108,109,1),(108,210,3),(109,104,4),(109,206,2),(109,207,1),(110,101,5),(110,112,1),(110,116,5),(111,102,1),(111,108,5),(111,208,3),(112,112,5),(112,113,1),(112,210,3),(113,106,2),(113,204,1),(113,205,4),(114,106,1),(114,207,5),(114,209,5),(115,118,2),(115,205,3),(115,208,5),(116,111,1),(116,120,4),(116,205,1),(117,110,2),(117,111,2),(117,210,5),(118,105,4),(118,120,4),(118,121,5),(119,112,1),(119,121,5),(119,206,4),(120,102,5),(120,113,1),(120,119,4),(121,111,4),(121,112,3),(121,205,2),(122,114,4),(122,115,2),(122,205,5),(123,105,1),(123,114,2),(123,207,2),(124,120,3),(124,121,4),(124,202,1),(125,111,1),(125,116,4),(125,118,3),(126,105,2),(126,206,2),(126,208,4),(127,110,4),(127,201,4),(128,111,3),(128,119,2),(128,203,4),(129,111,3),(129,116,1),(129,117,4),(130,102,1),(130,106,3),(130,119,1),(131,103,4),(131,119,1),(131,203,3),(132,106,2),(132,114,5),(132,115,5),(133,104,2),(133,106,2),(133,205,3),(134,102,5),(134,105,1),(134,120,3),(135,110,1),(135,115,2),(135,206,2),(136,115,3),(136,116,2),(136,208,4),(137,112,6),(137,117,4),(138,101,2),(138,104,3),(138,204,3),(139,117,3),(139,204,3),(139,209,5),(140,108,2),(140,109,3),(140,117,2),(141,108,4),(141,121,5),(141,203,4),(142,101,4),(142,207,3),(142,208,1),(143,104,4),(143,106,2),(143,206,4),(144,116,4),(144,119,1),(144,201,3),(145,115,4),(145,203,5),(146,108,1),(146,204,4),(146,209,3),(147,110,3),(147,115,4),(147,117,5),(148,103,5),(148,116,4),(148,121,2),(149,113,5),(149,117,2),(149,208,5),(150,102,5),(150,104,3),(150,113,3),(151,113,3),(151,117,4),(151,204,3),(152,105,1),(152,201,2),(152,203,3),(153,111,1),(153,115,5),(153,203,2),(154,111,2),(154,116,1),(154,205,3),(155,101,2),(155,203,1),(156,104,2),(156,106,3),(156,116,2),(157,110,4),(157,117,4),(157,209,1),(158,113,5),(158,116,1),(158,208,2),(159,119,2),(159,201,1),(159,206,1),(160,121,4),(160,203,2),(160,209,1),(161,104,1),(161,112,2),(161,115,3),(162,105,1),(162,112,1),(162,119,3),(163,114,5),(163,207,2),(163,209,2),(164,108,3),(164,110,5),(164,207,3),(165,102,5),(165,110,1),(165,205,5),(166,103,2),(166,111,3),(166,120,3),(167,118,1),(167,119,3),(167,210,2),(168,112,5),(168,119,3),(168,206,1),(169,101,3),(169,120,1),(169,202,5),(170,105,1),(170,121,1),(170,205,1),(171,106,3),(171,205,1),(172,107,3),(172,115,4),(172,201,3),(173,109,5),(173,112,2),(173,120,4),(174,105,2),(174,109,3),(174,201,2),(175,107,1),(175,117,1),(175,118,1),(176,103,5),(176,106,4),(176,118,2),(177,103,5),(177,109,4),(177,206,2),(178,203,5),(178,204,1),(178,205,3),(179,101,1),(179,205,5),(179,207,4),(180,102,3),(180,112,4),(180,119,5),(181,102,1),(181,113,4),(181,209,2),(182,104,4),(182,201,4),(182,207,1),(183,108,3),(183,111,4),(183,116,5),(184,101,1),(184,106,2),(184,110,5),(185,116,2),(185,120,5),(185,206,5),(186,101,1),(186,107,4),(186,206,2),(187,106,4),(187,118,1),(187,120,5),(188,105,3),(188,115,3),(188,120,3),(189,112,1),(189,113,1),(189,116,5),(190,103,2),(190,111,2),(190,207,3),(191,112,5),(191,202,3),(191,203,5),(192,112,5),(192,113,1),(192,118,5),(193,101,1),(193,119,2),(193,208,5),(194,108,3),(194,117,3),(194,121,2),(195,101,2),(195,110,3),(195,120,3),(196,115,1),(196,121,5),(196,206,5),(197,102,3),(197,116,5),(197,207,5),(198,108,1),(198,110,1),(198,111,4),(199,104,4),(199,109,2),(199,110,3),(200,111,1),(200,114,5),(200,116,2),(201,102,3),(201,112,2),(201,209,5),(202,103,8),(202,105,1),(203,101,5),(203,107,1),(203,120,3),(204,111,3),(204,112,3),(204,114,4),(205,104,4),(205,105,1),(205,119,4),(206,110,2),(206,113,1),(206,203,5),(207,107,4),(207,203,3),(207,205,3),(208,110,2),(208,112,3),(208,204,5),(209,102,5),(209,108,1),(209,114,4),(210,118,5),(210,203,2),(210,210,3),(211,114,3),(211,117,2),(211,209,3),(212,116,2),(212,118,2),(212,121,2),(213,107,3),(213,202,3),(214,102,1),(214,105,3),(215,107,5),(215,108,2),(215,202,3),(216,104,2),(216,111,1),(216,208,1),(217,105,1),(217,117,3),(217,119,4),(218,106,1),(218,113,1),(218,114,3),(219,102,5),(219,109,2),(219,110,1),(220,113,5),(220,117,3),(220,118,2),(221,102,5),(221,113,1),(221,209,5),(222,118,4),(222,201,4),(222,202,1),(223,108,5),(223,110,1),(223,204,1),(224,101,4),(224,206,5),(225,105,1),(225,111,3),(225,207,4),(226,102,6),(226,107,1),(227,104,5),(227,112,2),(227,113,2),(228,101,3),(228,112,4),(229,104,1),(229,121,4),(229,209,2),(230,106,4),(230,112,4),(230,113,3),(231,102,4),(231,112,3),(231,204,4),(232,111,1),(232,114,3),(232,115,3),(233,119,5),(233,201,5),(233,209,4),(234,104,1),(234,115,1),(234,121,1),(235,101,1),(235,103,4),(235,209,3),(236,113,1),(236,118,1),(236,209,5),(237,102,1),(237,117,4),(237,203,1),(238,108,3),(238,111,4),(238,205,4),(239,103,2),(239,112,2),(239,204,5),(240,116,3),(240,117,1),(240,210,1),(241,112,1),(241,116,1),(241,118,1),(242,201,3),(242,203,4),(242,210,1),(243,109,4),(243,113,4),(243,114,4),(244,102,4),(244,116,3),(244,202,3),(245,110,1),(245,116,2),(245,205,3),(246,111,5),(246,121,3),(246,208,2),(247,108,5),(247,109,5),(247,203,3),(248,109,4),(248,205,2),(248,208,1),(249,103,1),(249,119,4),(249,207,3),(250,104,2),(250,107,2),(250,113,4),(251,120,3),(251,206,1),(251,207,3),(252,105,1),(252,205,2),(252,206,4),(253,110,2),(253,204,4),(253,205,5),(254,111,2),(254,201,1),(254,205,3),(255,107,1),(255,204,5),(255,205,3),(256,107,1),(256,118,4),(256,202,3),(257,107,1),(257,112,6),(258,108,5),(258,201,5),(258,207,3),(259,105,5),(259,115,2),(259,203,1),(260,105,3),(260,113,5),(260,209,2),(261,102,1),(261,205,6),(262,105,1),(262,115,4),(262,203,2),(263,103,3),(263,106,3),(263,206,4),(264,103,1),(264,121,4),(264,204,1),(265,102,5),(265,108,1),(265,115,5),(266,109,5),(266,201,3),(266,208,2),(267,113,7),(267,204,1),(268,110,4),(268,112,1),(268,117,2),(269,102,3),(269,202,2),(269,207,5),(270,104,3),(270,116,5),(270,201,5),(271,101,2),(271,110,4),(271,209,1),(272,107,5),(272,201,1),(272,207,2),(273,108,2),(273,118,3),(273,205,4),(274,103,2),(274,113,5),(274,209,1),(275,116,5),(275,203,2),(275,208,3),(276,107,6),(276,113,4),(277,101,1),(277,102,1),(277,112,4),(278,103,5),(278,119,4),(278,201,1),(279,105,4),(279,112,2),(279,202,2),(280,105,5),(280,112,3),(280,207,4),(281,103,3),(281,105,2),(281,111,5),(282,102,2),(282,112,5),(282,120,1),(283,101,4),(283,103,4),(283,108,2),(284,106,1),(284,116,2),(284,117,4),(285,109,2),(285,112,5),(285,201,2),(286,114,10),(286,205,3),(287,108,4),(287,121,3),(287,210,3),(288,113,1),(288,201,5),(288,207,4),(289,115,3),(289,120,5),(289,207,4),(290,115,3),(290,117,5),(290,205,2),(291,102,2),(291,108,3),(291,111,2),(292,119,1),(292,121,4),(292,204,2),(293,107,1),(293,121,3),(293,202,4),(294,105,2),(294,209,5),(294,210,2),(295,103,5),(295,121,1),(295,206,1),(296,106,3),(296,108,5),(296,203,1),(297,118,1),(297,206,8),(298,102,3),(298,119,1),(298,203,3),(299,106,5),(299,109,3),(299,206,5),(300,102,1),(300,108,3),(300,119,1),(301,103,1),(301,107,3),(301,208,2),(302,103,3),(302,116,4),(302,121,4),(303,111,1),(303,120,5),(303,208,5),(304,107,3),(304,111,4),(304,201,1),(305,112,5),(305,113,2),(305,206,5),(306,104,4),(306,108,1),(306,118,3),(307,110,3),(307,118,2),(307,204,4),(308,102,3),(308,118,2),(309,104,1),(309,119,1),(309,206,2),(310,101,1),(310,104,3),(310,108,4),(311,116,4),(311,118,5),(311,206,1),(312,115,8),(312,119,1),(313,106,6),(313,110,3),(314,114,5),(314,119,3),(314,204,3),(315,105,4),(315,116,4),(315,201,3),(316,101,3),(316,120,1),(316,206,5),(317,105,5),(317,116,4),(317,201,4),(318,107,3),(318,116,3),(319,103,1),(319,105,2),(319,107,5),(320,118,2),(320,201,10),(321,115,2),(321,116,5),(321,120,3),(322,110,5),(322,119,5),(323,109,1),(323,115,3),(323,119,5),(324,104,4),(324,112,4),(324,208,2),(325,114,2),(325,117,1),(325,201,3),(326,104,5),(326,112,1),(326,116,3),(327,115,1),(327,120,3),(327,210,2),(328,115,5),(328,202,1),(328,210,3),(329,115,3),(329,201,4),(329,209,1),(330,103,5),(330,113,5),(330,209,5),(331,114,2),(331,121,1),(331,209,1),(332,101,3),(332,208,2),(332,209,5),(333,201,2),(333,203,3),(333,205,1),(334,106,4),(334,113,3),(334,202,2),(335,101,1),(335,120,2),(335,121,3),(336,107,2),(336,119,2),(336,210,2),(337,107,2),(337,110,1),(337,207,2),(338,114,3),(338,116,4),(338,206,5),(339,204,2),(339,206,1),(339,208,5),(340,110,4),(340,118,3),(340,208,3),(341,113,1),(341,121,5),(341,209,3),(342,105,1),(342,108,5),(342,119,5),(343,207,4),(343,210,2),(344,107,3),(344,112,5),(344,205,4),(345,102,2),(345,107,4),(345,111,2),(346,104,5),(346,112,4),(346,210,5),(347,107,5),(347,203,4),(348,104,4),(348,111,3),(348,207,4),(349,104,2),(349,105,3),(349,108,3),(350,103,5),(350,201,4),(350,210,5),(351,108,5),(351,201,2),(351,210,2),(352,114,2),(352,202,1),(352,209,5),(353,102,1),(353,120,4),(353,205,3),(354,103,1),(354,108,3),(354,202,2),(355,114,4),(355,117,2),(355,120,4),(356,102,3),(356,118,1),(356,119,3),(357,111,4),(357,117,5),(357,201,4),(358,105,1),(358,107,1),(358,204,2),(359,105,2),(359,118,5),(359,203,3),(360,101,2),(360,115,3),(360,208,3),(361,102,5),(361,117,5),(361,206,3),(362,106,3),(362,120,2),(362,203,3),(363,107,2),(363,115,3),(363,207,2),(364,107,4),(364,115,4),(364,205,2),(365,111,1),(365,120,5),(365,204,2),(366,102,3),(366,114,1),(366,201,5),(367,101,2),(367,102,3),(367,110,4),(368,104,4),(368,110,5),(368,203,2),(369,207,2),(369,209,6),(370,107,1),(370,206,3),(370,207,1),(371,101,1),(371,110,1),(371,117,4),(372,102,1),(372,104,4),(372,121,1),(373,113,3),(373,204,4),(374,121,5),(374,201,1),(374,206,1),(375,115,1),(375,117,2),(375,204,1),(376,121,2),(376,202,4),(377,104,5),(377,120,6),(378,103,4),(378,118,2),(378,203,5),(379,102,4),(379,202,5),(380,110,2),(380,114,5),(380,119,4),(381,108,1),(381,110,3),(381,205,4),(382,102,5),(382,111,2),(383,112,3),(383,118,5),(383,205,5),(384,111,1),(384,119,2),(384,121,2),(385,102,4),(385,110,2),(385,118,5),(386,102,4),(386,108,4),(386,117,3),(387,104,5),(387,110,5),(387,119,4),(388,107,3),(388,201,5),(388,205,5),(389,106,2),(389,209,7),(390,110,2),(390,115,1),(390,206,1),(391,106,1),(391,203,4),(391,206,2),(392,102,4),(392,106,3),(392,203,1),(393,102,1),(393,103,2),(393,105,4),(394,101,3),(394,107,3),(394,209,1),(395,112,4),(395,206,8),(396,109,4),(396,203,5),(396,207,1),(397,113,5),(397,114,4),(398,103,4),(398,104,1),(398,201,5),(399,107,3),(399,111,5),(399,116,3),(400,101,5),(400,103,4),(400,112,4),(401,104,5),(401,117,1),(401,202,1),(402,103,2),(402,104,1),(402,121,4),(403,104,5),(403,112,1),(403,207,5),(404,110,1),(404,207,9),(405,108,5),(405,120,1),(405,203,5),(406,110,4),(406,206,1),(406,209,4),(407,107,1),(407,201,6),(408,102,3),(408,108,3),(408,207,3),(409,104,5),(409,208,1),(409,210,5),(410,121,3),(410,201,1),(410,209,3),(411,102,3),(411,106,3),(411,203,4),(412,103,2),(412,109,3),(412,202,1),(413,106,1),(413,110,3),(413,118,1),(414,102,7),(414,111,5),(415,108,2),(415,112,1),(415,116,5),(416,107,5),(416,120,4),(416,207,2),(417,117,1),(417,204,3),(417,210,1),(418,111,4),(418,204,2),(418,210,3),(419,116,1),(419,118,5),(419,202,5),(420,106,4),(420,109,5),(420,115,3),(421,117,3),(421,205,6),(422,101,4),(422,203,1),(422,204,4),(423,117,2),(423,121,2),(423,205,3),(424,102,3),(424,104,5),(424,210,2),(425,114,10),(425,205,3),(426,112,3),(426,115,1),(426,201,1),(427,112,1),(427,115,3),(427,208,1),(428,106,2),(428,110,5),(428,115,3),(429,104,3),(429,112,3),(429,204,5),(430,103,3),(430,116,4),(430,201,5),(431,110,1),(431,203,5),(431,209,4),(432,115,5),(432,118,5),(432,207,4),(433,105,5),(433,116,2),(433,203,5),(434,103,3),(434,107,3),(434,119,1),(435,101,1),(435,110,4),(435,117,5),(436,110,5),(436,116,5),(436,120,2),(437,201,1),(437,204,3),(437,209,5),(438,110,8),(438,206,1),(439,117,5),(439,207,5),(439,210,3),(440,102,3),(440,108,3),(440,206,4),(441,114,6),(441,203,1),(442,103,3),(442,205,2),(442,208,5),(443,121,4),(443,203,2),(443,206,1),(444,103,4),(444,110,1),(444,113,4),(445,103,1),(445,108,2),(445,112,1),(446,112,3),(446,201,4),(446,209,4),(447,102,2),(447,116,2),(447,207,4),(448,101,4),(448,113,4),(448,117,2),(449,103,2),(449,121,4),(449,205,2),(450,101,5),(450,102,3),(450,118,5),(451,103,2),(451,104,1),(451,117,2),(452,103,3),(452,114,1),(452,209,4),(453,114,4),(453,116,2),(453,206,5),(454,110,1),(454,115,2),(454,207,2),(455,108,4),(455,112,2),(455,120,2),(456,109,1),(456,113,4),(456,207,2),(457,102,1),(457,120,1),(457,201,4),(458,103,2),(458,205,1),(458,209,3),(459,118,1),(459,203,1),(459,205,2),(460,105,2),(460,119,3),(460,203,3),(461,113,6),(461,208,5),(462,108,1),(462,113,5),(462,118,5),(463,112,2),(463,119,1),(463,206,5),(464,104,2),(464,116,4),(464,205,4),(465,103,1),(465,113,1),(465,115,3),(466,110,3),(466,201,5),(466,206,3),(467,111,2),(467,201,2),(467,202,1),(468,111,1),(468,207,2),(468,208,1),(469,120,4),(469,201,4),(469,203,1),(470,102,2),(470,110,2),(470,114,5),(471,110,2),(471,111,4),(471,112,3),(472,112,1),(472,113,3),(472,116,5),(473,108,2),(473,113,1),(473,114,2),(474,102,5),(474,116,2),(474,209,4),(475,101,3),(475,202,1),(475,210,3),(476,113,2),(476,115,5),(476,204,5),(477,112,1),(477,113,3),(477,202,1),(478,111,2),(478,113,3),(478,116,4),(479,102,1),(479,115,2),(479,121,3),(480,103,5),(480,104,5),(480,106,4),(481,205,5),(481,209,4),(482,113,3),(482,201,3),(482,208,2),(483,101,5),(483,110,1),(483,121,4),(484,105,1),(484,110,2),(484,114,1),(485,116,3),(485,201,5),(485,202,2),(486,117,5),(486,202,5),(486,207,3),(487,108,1),(487,112,2),(487,210,3),(488,112,4),(488,204,5),(488,206,3),(489,106,2),(489,111,5),(489,209,1),(490,111,6),(490,205,4),(491,116,3),(491,119,4),(491,120,5),(492,107,6),(492,111,4),(493,104,1),(493,107,3),(493,114,2),(494,106,2),(494,114,5),(494,201,4),(495,108,4),(495,111,5),(495,116,5),(496,104,5),(496,105,3),(496,119,3),(497,101,3),(497,118,3),(497,119,2),(498,103,4),(498,112,2),(498,208,3),(499,103,3),(499,106,3),(499,113,5),(500,106,4),(500,117,2),(500,207,1);
/*!40000 ALTER TABLE `Transaction_Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendor`
--

DROP TABLE IF EXISTS `Vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vendor` (
  `Vendor_ID` int NOT NULL AUTO_INCREMENT,
  `Vendor_Name` varchar(30) NOT NULL,
  `Contact_Info` varchar(30) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Vendor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendor`
--

LOCK TABLES `Vendor` WRITE;
/*!40000 ALTER TABLE `Vendor` DISABLE KEYS */;
INSERT INTO `Vendor` VALUES (1,'Cream Supplies Inc.','creamsupplies@example.com','123 Supplier Rd'),(2,'Sweet Treats Distributors','sweettreats@example.com','456 Sugar Ln'),(3,'Cone & Cup Co.','coneandcup@example.com','789 Container Blvd');
/*!40000 ALTER TABLE `Vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VendorInvoice`
--

DROP TABLE IF EXISTS `VendorInvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VendorInvoice` (
  `Invoice_ID` int NOT NULL AUTO_INCREMENT,
  `Vendor_ID` int DEFAULT NULL,
  `Date_Received` date NOT NULL,
  `Payment_Type` varchar(30) NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Invoice_ID`),
  KEY `vendorinvoice_vendor_id_foreign` (`Vendor_ID`),
  CONSTRAINT `vendorinvoice_vendor_id_foreign` FOREIGN KEY (`Vendor_ID`) REFERENCES `Vendor` (`Vendor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VendorInvoice`
--

LOCK TABLES `VendorInvoice` WRITE;
/*!40000 ALTER TABLE `VendorInvoice` DISABLE KEYS */;
INSERT INTO `VendorInvoice` VALUES (1,1,'2024-01-01','Credit Card',150.00),(2,2,'2024-01-05','Cash',200.00),(3,3,'2024-01-10','Debit Card',175.00),(4,1,'2024-01-15','Credit Card',160.00),(5,2,'2024-01-20','Cash',220.00),(6,3,'2024-01-25','Credit Card',180.00),(7,1,'2024-02-01','Cash',210.00),(8,2,'2024-02-05','Credit Card',230.00),(9,3,'2024-02-10','Debit Card',190.00),(10,1,'2024-02-15','Credit Card',170.00),(11,2,'2024-02-20','Cash',250.00),(12,3,'2024-02-25','Debit Card',185.00),(13,1,'2024-03-01','Credit Card',240.00),(14,2,'2024-03-05','Debit Card',200.00),(15,3,'2024-03-10','Cash',160.00),(16,1,'2024-03-15','Credit Card',190.00),(17,2,'2024-03-20','Cash',210.00),(18,3,'2024-03-25','Credit Card',220.00),(19,1,'2024-04-01','Debit Card',175.00),(20,2,'2024-04-05','Cash',185.00);
/*!40000 ALTER TABLE `VendorInvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendor_Price_History`
--

DROP TABLE IF EXISTS `Vendor_Price_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vendor_Price_History` (
  `Vendor_Price_History_ID` int NOT NULL AUTO_INCREMENT,
  `Item_ID` int NOT NULL,
  `Invoice_ID` int DEFAULT NULL,
  `Vendor_Price` decimal(10,2) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date DEFAULT NULL,
  PRIMARY KEY (`Vendor_Price_History_ID`),
  KEY `vendor_price_history_item_id_foreign` (`Item_ID`),
  KEY `vendor_price_history_vendorinvoice_id_foreign` (`Invoice_ID`),
  CONSTRAINT `vendor_price_history_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `Item` (`Item_ID`),
  CONSTRAINT `vendor_price_history_vendorinvoice_id_foreign` FOREIGN KEY (`Invoice_ID`) REFERENCES `VendorInvoice` (`Invoice_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendor_Price_History`
--

LOCK TABLES `Vendor_Price_History` WRITE;
/*!40000 ALTER TABLE `Vendor_Price_History` DISABLE KEYS */;
INSERT INTO `Vendor_Price_History` VALUES (1,101,1,2.10,'2024-01-01','2024-01-15'),(2,102,2,2.25,'2024-01-05','2024-01-20'),(3,103,3,2.00,'2024-01-10','2024-01-25'),(4,104,4,2.80,'2024-01-15','2024-02-01'),(5,105,5,2.75,'2024-01-20','2024-02-05'),(6,106,6,3.10,'2024-01-25','2024-02-10'),(7,107,7,3.00,'2024-02-01','2024-02-15'),(8,108,8,2.90,'2024-02-05','2024-02-20'),(9,109,9,2.50,'2024-02-10','2024-02-25'),(10,110,10,3.05,'2024-02-15','2024-03-01'),(11,111,11,3.20,'2024-02-20','2024-03-05'),(12,112,12,0.48,'2024-02-25','2024-03-10'),(13,113,13,0.38,'2024-03-01','2024-03-15'),(14,114,14,0.55,'2024-03-05','2024-03-20'),(15,115,15,0.65,'2024-03-10','2024-03-25'),(16,116,16,0.58,'2024-03-15','2024-04-01'),(17,117,17,0.52,'2024-03-20','2024-04-05'),(18,118,18,0.56,'2024-03-25','2024-04-10'),(19,119,19,0.68,'2024-04-01','2024-04-15'),(20,120,20,0.78,'2024-04-05','2024-04-20');
/*!40000 ALTER TABLE `Vendor_Price_History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `MonthlyFlavorSales`
--

/*!50001 DROP VIEW IF EXISTS `MonthlyFlavorSales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `MonthlyFlavorSales` AS select `i`.`Item_Name` AS `FlavorName`,year(`t`.`Date`) AS `Year`,month(`t`.`Date`) AS `Month`,sum(`ti`.`Quantity_Sold`) AS `TotalVolume`,sum((`ti`.`Quantity_Sold` * coalesce(`rph`.`Retail_Price`,`i`.`Unit_Price`))) AS `TotalRevenue` from (((`Transaction` `t` join `Transaction_Item` `ti` on((`t`.`Transaction_ID` = `ti`.`Transaction_ID`))) join `Item` `i` on((`ti`.`Item_ID` = `i`.`Item_ID`))) left join `Retail_Price_History` `rph` on(((`rph`.`Item_ID` = `i`.`Item_ID`) and (`t`.`Date` between `rph`.`Start_Date` and `rph`.`End_Date`)))) where (`i`.`Item_Type` = 'Flavor') group by `i`.`Item_Name`,year(`t`.`Date`),month(`t`.`Date`) order by `i`.`Item_Name`,`Year`,`Month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MonthlyItemSales`
--

/*!50001 DROP VIEW IF EXISTS `MonthlyItemSales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `MonthlyItemSales` AS select `Item`.`Item_Type` AS `Item_Type`,`Item`.`Item_Name` AS `Item_Name`,year(`Transaction`.`Date`) AS `Year`,month(`Transaction`.`Date`) AS `Month`,sum(`Transaction_Item`.`Quantity_Sold`) AS `TotalVolume`,sum((`Transaction_Item`.`Quantity_Sold` * coalesce(`Retail_Price_History`.`Retail_Price`,`Item`.`Unit_Price`))) AS `TotalRevenue` from (((`Transaction_Item` join `Item` on((`Transaction_Item`.`Item_ID` = `Item`.`Item_ID`))) join `Transaction` on((`Transaction_Item`.`Transaction_ID` = `Transaction`.`Transaction_ID`))) left join `Retail_Price_History` on(((`Retail_Price_History`.`Item_ID` = `Item`.`Item_ID`) and (`Transaction`.`Date` between `Retail_Price_History`.`Start_Date` and `Retail_Price_History`.`End_Date`)))) group by `Item`.`Item_Type`,`Item`.`Item_Name`,year(`Transaction`.`Date`),month(`Transaction`.`Date`) order by `Item`.`Item_Type`,`Item`.`Item_Name`,`Year`,`Month` */;
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

-- Dump completed on 2024-11-10 12:00:39
