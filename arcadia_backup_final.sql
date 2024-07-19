-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: arcadia
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `habitat` varchar(255) NOT NULL,
  `animalIndex` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `race` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `nourriture` varchar(255) DEFAULT NULL,
  `grammage` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text,
  `likes` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (1,'forest',0,'Caputo','Singe Capucin','img/animals/monkey.jpg','En bonne sant','Fruits, Insectes','500g','2024-07-08','Les singes capucins sont des animaux intelligents qui habitent dans les arbres de la fort tropicale.',7),(2,'forest',1,'Ara','Perroquet Ara','img/animals/parrot.jpg','En bonne sant','Graines, Fruits','200g','2024-07-10','Les perroquets sont des oiseaux colors qui habitent les zones boises et tropicales.',15),(3,'forest',2,'Leo','Lopard','img/animals/leopard.jpg','En bonne sant','Viande','1000g','2024-07-05','Les lopards sont des grands flins rapides et agiles qui vivent dans la fort tropicale.',31),(4,'savannah',0,'Gigi','Girafe','img/animals/giraffe.jpg','En bonne sant','Feuilles, Branches','1500g','2024-07-05','Les girafes sont les plus grandes cratures de la savane avec leur long cou et leurs taches.',8),(5,'savannah',1,'Zizou','Zbre','img/animals/zebra.jpg','En bonne sant','Herbes, Plantes','800g','2024-07-05','Les zbres sont des quids rays qui se dplacent en troupeaux dans la savane africaine.',8),(6,'savannah',2,'Anto','Antilope','img/animals/antelope.jpg','En bonne sant','Herbes','600g','2024-07-05','Les antilopes sont des animaux rapides et agiles qui habitent les plaines ouvertes.',18),(7,'aquarium',0,'Nemo','Poisson Clown','img/animals/fish.jpg','En bonne sant','Algues, Petits crustacs','100g','2024-07-02','Les poissons clowns sont des cratures colores et diverses qui vivent dans les rcifs.',8),(8,'aquarium',1,'Sharky','Requin','img/animals/shark.jpg','En bonne sant','Poissons, Mammifres marins','2000g','2024-07-05','Les requins sont des prdateurs marins trouvs dans les ocans du monde entier.',33),(9,'aquarium',2,'Turtly','Tortue Marine','img/animals/turtle.jpg','En bonne sant','Algues, Mduses','500g','2024-07-05','Les tortues marines sont des reptiles aquatiques trouvs dans les ocans du monde entier.',31),(10,'arctic',0,'Poli','Ours Polaire','img/animals/polar-bear.jpg','En bonne sant','Phoques','3000g','2024-07-07','Les ours polaires sont adapts au froid extrme et chassent sur la banquise.',24),(11,'arctic',1,'Foxy','Renard Arctique','img/animals/arctic-fox.jpg','En bonne sant','Lemmings, Oiseaux','300g','2024-07-05','Les renards arctiques ont un pelage pais et blanc qui leur sert de camouflage dans la toundra.',24),(12,'arctic',2,'Pengy','Pingouin Empereur','img/animals/penguin.jpg','En bonne sant','Poissons, Krill','400g','2024-07-05','Les pingouins empereurs sont des oiseaux marins qui vivent dans les rgions polaires et se nourrissent de poisson.',6),(13,'jungle',0,'Jaggy','Jaguar','img/animals/jaguar.jpg','En bonne sant','Mammifres','1200g','2024-07-05','Les jaguars sont de grands flins tachets qui chassent dans les arbres de la jungle.',23),(14,'jungle',1,'Howly','Singe Hurleur','img/animals/howler-monkey.jpg','En bonne sant','Fruits, Feuilles','400g','2024-07-05','Les singes hurleurs sont des primates bruyants qui vivent dans les canopes des forts tropicales.',7),(15,'jungle',2,'Tigrou','Tigre de Sybrie','img/animals/tiger.jpg','En bonne sant','Viande','1500g','2024-07-09','Les tigres sont des flins majestueux, reconnus pour leurs rayures distinctives et leur puissance, symbolisant la force et la beaut sauvage dans les jungles et les forts d\'Asie.',23),(16,'reptile',0,'Pythy','Python','img/animals/python.jpg','En bonne sant','Rongeurs','1000g','2024-07-05','Les pythons sont des serpents constricteurs qui habitent les zones tropicales.',17),(17,'reptile',1,'Croco','Crocodile du Nil','img/animals/crocodile.jpg','En bonne sant','Poissons, Mammifres','1500g','2024-07-05','Les crocodiles du Nil sont de grands reptiles aquatiques trouvs en Afrique.',13),(18,'reptile',2,'Shelly','Tortue Gante','img/animals/turtleg.jpg','En bonne sant','Herbes, Fruits','800g','2024-07-09','Les tortues gantes sont des reptiles  longue dure de vie trouvs dans les les.',5);
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_approved` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Fan De Zoo','Bonjour ! Super Expérience ! je vais surement revenir un bon milliers de fois !','2024-07-10 13:01:31',0),(2,'Léonard Sauvage',' Le zoo Arcadia a été une expérience délicieuse pour notre famille. Le personnel était sympathique et les installations bien entretenues.','2024-07-10 13:06:26',1),(3,'Clara Loutre','Notre visite au zoo Arcadia a dépassé nos attentes. Les efforts de conservation et les programmes éducatifs étaient impressionnants.','2024-07-10 13:06:50',1),(4,'Pauline Grisouille','Notre visite au zoo Arcadia a été une expérience merveilleuse ! La diversité des animaux et les expositions interactives ont rendu notre visite inoubliable.','2024-07-10 13:07:18',1),(5,'Mr Test','Ceci est un test pour voir le bon fonctionnement du systéme d\'avis!','2024-07-11 11:15:02',1),(6,'Mme Test','Ceci est un test qui fait suite au nettoyage du code','2024-07-11 14:14:34',1);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TITRE` varchar(255) NOT NULL,
  `DESCRIPTION` text,
  `LOGO_PATH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (4,'Visite des habitats avec un guide (gratuit)','Explorez nos habitats fascinants en compagnie de guides expérimentés. Apprenez-en davantage sur nos résidents é plumes et é écailles tout en découvrant nos efforts de conservation et de préservation de la biodiversité.','img/icones/guide.png'),(5,'Restauration sur place ','Dégustez une variété de délices culinaires tout en profitant de la beauté naturelle de notre parc. Nos options de restauration sauront combler toutes vos envies, que vous soyez en quéte d\'une collation rapide ou d\'un repas complet en famille.','img/icones/restau.png'),(6,'Visite du zoo en petit train','Montez é bord de notre petit train et laissez-vous transporter é travers les différents secteurs du zoo. Profitez d\'une perspective unique tout en apprenant des faits intéressants sur nos animaux et leur habitat naturel.','img/icones/train.png');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `motdepasse` varchar(255) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `choix` enum('VET','EMP','DIR') NOT NULL DEFAULT 'VET',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'direction@zooarcadia.fr','$2b$10$Y5AE90UCsP55v2mZZD9bU.Cw18bYpHYFrb8YYN0d//BuzSDffRpAu','Director','Jos','DIR'),(3,'josette@zooarcadia.fr','$2b$10$a.FY86RB6LoGgwarEFMn5udNs3voP4EiGUuy6pxkxyr43y6LTPgQS','Assistante','Josette','EMP'),(4,'taurine@zooarcadia.fr','$2b$10$BTMb6A7IHMuZqqOmcHANx.HRGH5oCqZnqMDoNugTWKi9IHJHG2gjy','Bully','Taurine','VET'),(5,'Jeanploi@zooarcadia.fr','$2b$10$nqS7pS5uri4iCN1IFg/EcuiC8dbmxwRfe5sYkIfObBAzR4s1o7M0y','Ploi','Jean','EMP'),(6,'test@zooarcadia.fr','$2b$10$HxFlTVTweqjsNwb5Jg8PU.386yHOV6eBt8vBrZJSLogy0uTR1HRN6','Test','MrTest','EMP');
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

-- Dump completed on 2024-07-19 14:04:37
