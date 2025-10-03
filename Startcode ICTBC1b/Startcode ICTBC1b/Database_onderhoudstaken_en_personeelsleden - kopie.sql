CREATE DATABASE  IF NOT EXISTS `attractiepark` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `attractiepark`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: attractiepark
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `onderhoudstaak`
--

DROP TABLE IF EXISTS `onderhoudstaak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onderhoudstaak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `omschrijving` varchar(255) NOT NULL,
  `duur` int NOT NULL,
  `prioriteit` varchar(4) NOT NULL,
  `beroepstype` varchar(50) NOT NULL,
  `bevoegdheid` varchar(10) NOT NULL,
  `fysieke_belasting` int NOT NULL,
  `attractie` varchar(255) DEFAULT NULL,
  `is_buitenwerk` tinyint(1) NOT NULL,
  `afgerond` tinyint(1) NOT NULL,
  `x_coord` float NOT NULL,
  `y_coord` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onderhoudstaak`
--

LOCK TABLES `onderhoudstaak` WRITE;
/*!40000 ALTER TABLE `onderhoudstaak` DISABLE KEYS */;
INSERT INTO `onderhoudstaak` VALUES (1,'Controle op veiligheidssensoren',120,'laag','Elektrisch Monteur','Junior',15,'Sky Diver',1,0,67.0158,-50.7228),(2,'Schilderwerk bij onderhoudsplatform',90,'laag','Schilder','Medior',10,'River Rapids',1,1,66.9886,-50.7361),(3,'Mechanisch onderhoud aan scharnieren',45,'hoog','Mechanisch Monteur','Senior',25,'Twister',0,0,67.0173,-50.7698),(4,'Inspectie van elektrische systemen',60,'hoog','Elektrisch Monteur','Junior',8,'Adventure Ride',1,1,67.0052,-50.6831),(5,'Reparatie aan karretjes',120,'hoog','Mechanisch Monteur','Senior',20,'Galactic Journey',1,0,67.0214,-50.7358),(6,'Onderhoud aan verlichting',75,'laag','Elektrisch Monteur','Stagiair',12,'Mountain Climb',0,1,67.0159,-50.7288),(7,'Controle van waterpompen',45,'hoog','Onderhoudsmonteur','Medior',30,'Cave Splash',0,0,67.0034,-50.6658),(8,'Smering van tandwielen',40,'hoog','Mechanisch Monteur','Junior',18,'Whirlwind',1,1,67.0171,-50.6677),(9,'Herstel van veiligheidsbeugels',90,'laag','Onderhoudsmonteur','Stagiair',10,'Family Carousel',0,0,67.0157,-50.7468),(10,'Inspectie VR-installatie',50,'hoog','Elektrisch Monteur','Medior',20,'Virtual Reality Adventure',1,1,67.0062,-50.7356),(11,'Reparatie watervallen',50,'hoog','Onderhoudsmonteur','Senior',35,'Thunder Falls',0,1,67.0211,-50.7421),(12,'Oplossen van technische storingen',50,'hoog','Elektrisch Monteur','Senior',25,'Mega Spin',1,0,67.0033,-50.7294),(13,'Inspectie kabelsystemen',45,'laag','Mechanisch Monteur','Medior',30,'Jungle Trek',0,1,67.0148,-50.7156),(14,'Controle op lekkages',90,'hoog','Onderhoudsmonteur','Junior',12,'Lightning Loop',0,1,67.0116,-50.7038),(15,'Reparatie van waterkanonnen',60,'laag','Mechanisch Monteur','Senior',15,'Mega Spin',1,0,67.0192,-50.7259),(16,'Onderhoud aan draaiassen',40,'hoog','Mechanisch Monteur','Senior',28,'Spinning Teacups',0,1,67.0093,-50.7107),(17,'Smering van hydraulische armen',45,'laag','Onderhoudsmonteur','Junior',20,'Dragon Quest',0,1,67.0105,-50.7299),(18,'Inspectie van remsystemen',120,'hoog','Mechanisch Monteur','Medior',25,'Rocket Ride',1,0,67.0137,-50.7273),(19,'Schoonmaak van filters',60,'laag','Onderhoudsmonteur','Stagiair',10,'Waterfall Adventure',0,1,67.0163,-50.7005),(20,'Onderhoud aan treingeleiders',90,'laag','Mechanisch Monteur','Junior',15,'Whirlwind Spin',1,0,67.0179,-50.7208),(21,'Controle van schroefverbindingen',45,'hoog','Elektrisch Monteur','Medior',22,'Family Train',1,1,67.0125,-50.7171),(22,'Reparatie aan startmechanismen',40,'hoog','Elektrisch Monteur','Senior',30,'Starship Simulator',0,1,67.0118,-50.7335),(23,'Vervanging van panelen',60,'laag','Schilder','Junior',12,'Looping Dragon',1,0,67.0131,-50.7092),(24,'Controle van draaiende onderdelen',45,'hoog','Mechanisch Monteur','Medior',18,'Wave Rider',1,1,67.0087,-50.7031),(25,'Reparatie van decoratieonderdelen',120,'laag','Schilder','Medior',8,'Twist and Turn',0,1,67.0184,-50.7116),(26,'Inspectie van kabels',75,'hoog','Elektrisch Monteur','Junior',15,'Magic Forest',0,0,67.0169,-50.7251),(27,'Controle en reiniging',90,'laag','Onderhoudsmonteur','Medior',10,'Alien Encounter',1,1,67.0095,-50.7304),(28,'Aanpassing van instellingen',50,'hoog','Elektrisch Monteur','Senior',25,'Speed Racer',1,0,67.0152,-50.7083),(29,'Onderhoud aan waterstroomregelaars',45,'laag','Mechanisch Monteur','Medior',20,'River Rapids',0,1,66.9886,-50.7361),(30,'Controle op slijtage',60,'hoog','Onderhoudsmonteur','Junior',8,'Fairy Tale Ride',0,0,67.0144,-50.7179),(31,'Schoonmaak van VR-opstellingen',90,'laag','Elektrisch Monteur','Stagiair',12,'Virtual Explorer',1,1,67.011,-50.7362),(32,'Controle van algemene verlichting',120,'laag','Elektrisch Monteur','Junior',10,NULL,1,0,67.0158,-50.7228),(33,'Smering van algemene bewegende delen',45,'hoog','Mechanisch Monteur','Medior',20,NULL,0,1,66.9886,-50.7361),(34,'Schoonmaak van looppaden',60,'laag','Onderhoudsmonteur','Stagiair',5,NULL,1,1,67.0173,-50.7698),(35,'Inspectie van nooduitgangen',90,'hoog','Elektrisch Monteur','Medior',12,NULL,0,1,67.0052,-50.6831),(36,'Reparatie aan centrale waterleidingen',50,'hoog','Onderhoudsmonteur','Senior',30,NULL,0,0,67.0214,-50.7358),(37,'Controle van hekwerken en poorten',75,'laag','Schilder','Junior',8,NULL,1,1,67.0159,-50.7288),(38,'Herstel van dakconstructie',30,'hoog','Mechanisch Monteur','Senior',25,NULL,0,0,67.0034,-50.6658),(39,'Schoonmaak van algemene technische ruimtes',90,'laag','Onderhoudsmonteur','Medior',10,NULL,1,1,67.0171,-50.6677),(40,'Vervanging van filters in ventilatiesystemen',50,'hoog','Elektrisch Monteur','Senior',15,NULL,0,1,67.0157,-50.7468),(41,'Controle van brandblusapparatuur',90,'laag','Onderhoudsmonteur','Junior',5,NULL,1,0,67.0062,-50.7356),(42,'Schilderwerk in openbare ruimtes',45,'laag','Schilder','Medior',8,NULL,1,1,67.0211,-50.7421),(43,'Reparatie aan parkeergarage-installaties',40,'hoog','Mechanisch Monteur','Medior',20,NULL,0,1,67.0033,-50.7294),(44,'Kalibratie van toegangscontrole',120,'hoog','Elektrisch Monteur','Medior',10,NULL,0,1,67.0148,-50.7156),(45,'Controle van algemene beveiligingscamera\'s',90,'laag','Elektrisch Monteur','Stagiair',12,NULL,1,1,67.0116,-50.7038),(46,'Reparatie aan picknickbanken',60,'laag','Onderhoudsmonteur','Stagiair',5,NULL,1,1,67.0192,-50.7259),(47,'Inspectie van parkverlichting',90,'hoog','Elektrisch Monteur','Medior',15,NULL,0,0,67.0093,-50.7107),(48,'Herstel van voetpaden',120,'laag','Onderhoudsmonteur','Junior',8,NULL,1,1,67.0105,-50.7299),(49,'Reparatie van algemene decoraties',45,'hoog','Schilder','Senior',20,NULL,0,0,67.0137,-50.7273),(50,'Vervanging van algemene stroomkabels',50,'hoog','Elektrisch Monteur','Senior',25,NULL,0,1,67.0163,-50.7005),(51,'Controle van algemene bewegwijzering',75,'laag','Schilder','Medior',10,NULL,1,1,67.0179,-50.7208),(52,'Inspectie van onderhoudstoegang',90,'laag','Mechanisch Monteur','Junior',10,'Adventure Ride',1,1,67.0052,-50.6831),(53,'Herstel van decoratieve lampen',60,'laag','Schilder','Medior',8,'Sky Diver',0,0,67.0158,-50.7228),(54,'Vervanging van waterfilters',120,'hoog','Onderhoudsmonteur','Junior',15,'River Rapids',0,1,66.9886,-50.7361),(55,'Controle van VR-uitrusting',75,'laag','Elektrisch Monteur','Junior',12,'Galactic Journey',0,1,67.0214,-50.7358),(56,'Controle van algemene verlichting',50,'laag','Elektrisch Monteur','Junior',10,NULL,1,0,67.0184,-50.7116),(57,'Smering van algemene bewegende delen',45,'hoog','Mechanisch Monteur','Medior',20,NULL,0,1,67.0169,-50.7251),(58,'Schoonmaak van looppaden',60,'laag','Onderhoudsmonteur','Stagiair',5,NULL,1,1,67.0095,-50.7304),(59,'Inspectie van nooduitgangen',90,'hoog','Elektrisch Monteur','Medior',12,NULL,0,1,67.0152,-50.7083),(60,'Reparatie aan centrale waterleidingen',50,'hoog','Onderhoudsmonteur','Senior',30,NULL,0,0,67.0206,-50.728),(61,'Controle van hekwerken en poorten',75,'laag','Schilder','Junior',8,NULL,1,1,67.0158,-50.7228),(62,'Controle van dakconstructies',40,'hoog','Mechanisch Monteur','Senior',25,NULL,0,0,67.0105,-50.7259),(63,'Schoonmaak van technische ruimtes',90,'laag','Onderhoudsmonteur','Medior',10,NULL,1,1,67.0173,-50.7348),(64,'Vervanging van filters in ventilatiesystemen',50,'hoog','Elektrisch Monteur','Senior',15,NULL,0,1,67.0137,-50.7352),(65,'Controle van brandblusapparatuur',90,'laag','Onderhoudsmonteur','Junior',5,NULL,1,0,67.0129,-50.7218),(66,'Schilderwerk in openbare ruimtes',45,'laag','Schilder','Medior',8,NULL,1,1,67.0056,-50.7119),(67,'Reparatie aan parkeergarage-installaties',40,'hoog','Mechanisch Monteur','Medior',20,NULL,0,1,67.0151,-50.7034),(68,'Kalibratie van toegangscontrole',120,'hoog','Elektrisch Monteur','Junior',10,NULL,0,1,67.0184,-50.7071),(69,'Controle van algemene beveiligingscamera\'s',90,'laag','Elektrisch Monteur','Stagiair',12,NULL,1,1,67.0117,-50.7134),(70,'Reparatie aan picknickbanken',60,'laag','Onderhoudsmonteur','Stagiair',5,NULL,1,1,67.0093,-50.7208),(71,'Inspectie van parkverlichting',90,'hoog','Elektrisch Monteur','Medior',15,NULL,0,0,67.0149,-50.7173),(72,'Herstel van voetpaden',120,'laag','Onderhoudsmonteur','Junior',8,NULL,1,1,67.0162,-50.7241),(73,'Reparatie van algemene decoraties',45,'hoog','Schilder','Senior',20,NULL,1,0,67.0035,-50.7338),(74,'Vervanging van algemene stroomkabels',120,'hoog','Elektrisch Monteur','Senior',25,NULL,0,1,67.0191,-50.7316),(75,'Controle van algemene bewegwijzering',75,'laag','Schilder','Medior',10,NULL,1,1,67.0086,-50.7255),(76,'Controle van elektrische schakelaars',30,'laag','Elektrisch Monteur','Junior',5,'Magic Forest',1,0,67.0169,-50.7251),(77,'Reparatie van kleine bedradingen',30,'hoog','Elektrisch Monteur','Medior',10,'Adventure Ride',0,0,67.0052,-50.6831),(78,'Kalibratie van sensoren',30,'laag','Elektrisch Monteur','Medior',8,'Galactic Journey',1,1,67.0214,-50.7358),(79,'Controle van zekeringen',30,'hoog','Elektrisch Monteur','Senior',12,'Twister',0,1,67.0173,-50.7698),(80,'Onderhoud van LED-verlichting',30,'laag','Elektrisch Monteur','Stagiair',5,NULL,1,1,67.0118,-50.7112),(81,'Smering van tandwielen',30,'laag','Mechanisch Monteur','Junior',8,'Rocket Ride',1,0,67.0137,-50.7273),(82,'Vervanging van moeren en bouten',30,'hoog','Mechanisch Monteur','Medior',15,'Cave Splash',0,1,67.0034,-50.6658),(83,'Inspectie van hydraulische cilinders',30,'laag','Mechanisch Monteur','Medior',10,'Wave Rider',0,0,67.0087,-50.7031),(84,'Herstel van kleine mechanische onderdelen',30,'hoog','Mechanisch Monteur','Senior',12,'Spinning Teacups',1,1,67.0093,-50.7107),(85,'Kalibratie van draaiassen',30,'laag','Mechanisch Monteur','Senior',8,'Mega Spin',1,0,67.0033,-50.7294),(86,'Bijwerken van verf op attractiepanelen',30,'laag','Schilder','Stagiair',5,'Sky Diver',1,0,67.0158,-50.7228),(87,'Kleine reparaties aan schilderwerk',30,'hoog','Schilder','Medior',8,'Dragon Quest',0,1,67.0105,-50.7299),(88,'Schilderen van decoratieve randen',30,'laag','Schilder','Medior',6,'River Rapids',1,0,66.9886,-50.7361),(89,'Verfcontrole en herstel',30,'hoog','Schilder','Senior',8,NULL,0,1,67.0151,-50.7278),(90,'Spuitverf bijwerken',30,'laag','Schilder','Junior',5,'Family Carousel',1,1,67.0157,-50.7468),(91,'Schoonmaken van technische oppervlakken',30,'laag','Onderhoudsmonteur','Stagiair',5,'Thunder Falls',1,1,67.0211,-50.7421),(92,'Controle van kleine lekken',30,'hoog','Onderhoudsmonteur','Junior',6,'Fairy Tale Ride',0,0,67.0144,-50.7179),(93,'Smering van kleppen',30,'laag','Onderhoudsmonteur','Medior',10,'River Rapids',1,1,66.9886,-50.7361),(94,'Vervanging van kleine filters',30,'hoog','Onderhoudsmonteur','Medior',8,'Whirlwind Spin',0,1,67.0179,-50.7208),(95,'Reiniging van kleine onderdelen',30,'laag','Onderhoudsmonteur','Stagiair',5,NULL,1,0,67.0094,-50.7195),(96,'Aanbrengen van grondverf op relingen',45,'laag','Schilder','Stagiair',6,'Magic Forest',1,0,67.0169,-50.7251),(97,'Bijwerken van verf op houten banken',30,'laag','Schilder','Stagiair',5,'Family Carousel',1,0,67.0157,-50.7468),(98,'Verwijderen van oude verf op decoraties',60,'laag','Schilder','Stagiair',7,'Dragon Quest',0,1,67.0105,-50.7299),(99,'Repareren van kleine verfchips',30,'laag','Schilder','Stagiair',6,'River Rapids',1,1,66.9886,-50.7361),(100,'Schoonmaken van verfkwasten en materialen',15,'laag','Schilder','Stagiair',4,NULL,0,0,67.0108,-50.7253),(101,'Schuren van houten oppervlakken',45,'laag','Schilder','Stagiair',6,'Adventure Ride',1,0,67.0052,-50.6831),(102,'Controleren en repareren van vernislagen',60,'laag','Schilder','Stagiair',5,NULL,1,1,67.0127,-50.7206),(103,'Aanbrengen van antislipverf op looppaden',90,'laag','Schilder','Stagiair',8,'Spinning Teacups',0,1,67.0093,-50.7107),(104,'Schilderen van decoratieve randen op attracties',30,'laag','Schilder','Stagiair',5,'Mega Spin',1,0,67.0033,-50.7294),(105,'Aanbrengen van lak op metalen onderdelen',60,'laag','Schilder','Stagiair',7,NULL,0,0,67.0149,-50.7175),(106,'Controleer en vervang zekeringen in het controlepaneel',25,'laag','Elektrisch monteur','Medior',5,'Mega Spin',0,0,67.0033,-50.7294);
/*!40000 ALTER TABLE `onderhoudstaak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personeelslid`
--

DROP TABLE IF EXISTS `personeelslid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personeelslid` (
  `id` int NOT NULL,
  `naam` varchar(45) NOT NULL,
  `werktijd` int NOT NULL,
  `beroepstype` varchar(45) NOT NULL,
  `bevoegdheid` varchar(45) NOT NULL,
  `specialist_in_attracties` varchar(45) NOT NULL DEFAULT '',
  `pauze_opsplitsen` tinyint(1) NOT NULL,
  `leeftijd` int NOT NULL,
  `verlaagde_fysieke_belasting` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personeelslid`
--

LOCK TABLES `personeelslid` WRITE;
/*!40000 ALTER TABLE `personeelslid` DISABLE KEYS */;
INSERT INTO `personeelslid` VALUES (1,'Piet de Jong',240,'Mechanisch Monteur','Senior','Mega Spin,River Rapids,Twister',0,45,30),(2,'Aisha Rahmani',300,'Elektrisch Monteur','Junior','Magic Forest',0,26,0),(3,'Diego Martinez',360,'Schilder','Senior','',1,53,0),(4,'Angela Bakker',360,'Onderhoudsmonteur','Stagiair','',1,32,0);
/*!40000 ALTER TABLE `personeelslid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'attractiepark'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-04 11:10:16

CREATE USER IF NOT EXISTS 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON attractiepark.* TO 'user'@'localhost';

