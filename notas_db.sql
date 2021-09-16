CREATE DATABASE  IF NOT EXISTS `notas_db` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `notas_db`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: notas_db
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `category/note`
--

DROP TABLE IF EXISTS `category/note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category/note` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryId` int NOT NULL,
  `noteId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `noteId_idx` (`noteId`),
  KEY `categoryId_idx` (`categoryId`),
  CONSTRAINT `categoryId` FOREIGN KEY (`categoryId`) REFERENCES `categorys` (`id`),
  CONSTRAINT `noteId` FOREIGN KEY (`noteId`) REFERENCES `notes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category/note`
--

LOCK TABLES `category/note` WRITE;
/*!40000 ALTER TABLE `category/note` DISABLE KEYS */;
INSERT INTO `category/note` VALUES (8,1,3),(9,2,3),(10,3,4),(11,1,5),(12,1,6),(13,3,6),(14,4,6),(15,8,10),(16,4,10),(17,3,10);
/*!40000 ALTER TABLE `category/note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorys`
--

LOCK TABLES `categorys` WRITE;
/*!40000 ALTER TABLE `categorys` DISABLE KEYS */;
INSERT INTO `categorys` VALUES (1,'política'),(2,'economía'),(3,'entretenimiento'),(4,'ciencia ficción'),(5,'agricultura'),(6,'meteorología'),(7,'terror'),(8,'romantico'),(9,'documental'),(10,'historia');
/*!40000 ALTER TABLE `categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `create_note` date NOT NULL,
  `modif_note` date NOT NULL,
  `canDelete` smallint NOT NULL DEFAULT '0',
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId_idx` (`userId`),
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (3,'Escrito sobre el dolar y la política','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed mauris lacinia, sagittis eros eu, sagittis est. Sed eu lacus eget arcu pulvinar accumsan quis ut nulla. Sed eget leo vel quam eleifend ultricies in eget massa. Donec fermentum magna nec tellus pellentesque facilisis. Curabitur pulvinar tellus id scelerisque viverra. Suspendisse vehicula velit vehicula augue faucibus, at commodo purus porta. Donec consectetur aliquet libero, vel auctor tellus. Pellentesque volutpat sem eu neque dapibus tempus. Praesent iaculis faucibus libero non ultricies. Duis convallis tortor et est pulvinar, ac vestibulum turpis lobortis. Donec id augue eu elit convallis egestas. Sed quam sem, lacinia non venenatis ac, feugiat a quam. Proin pulvinar at nibh non egestas. Nam ac nisi mi. Nunc ac tellus tempor dolor feugiat finibus a quis metus.','2021-09-16','2021-09-17',0,7),(4,'La nueva Voz Argentina en rating: Bake Off.','Pellentesque volutpat sem eu neque dapibus tempus. Praesent iaculis faucibus libero non ultricies. Duis convallis tortor et est pulvinar, ac vestibulum turpis lobortis. Donec id augue eu elit convallis egestas. Sed quam sem, lacinia non venenatis ac, feugiat a quam. Proin pulvinar at nibh non egestas. Nam ac nisi mi. Nunc ac tellus tempor dolor feugiat finibus a quis metus.','2021-09-16','2021-09-16',0,1),(5,'Las PASO análisis','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed mauris lacinia, sagittis eros eu, sagittis est. Sed eu lacus eget arcu pulvinar accumsan quis ut nulla. Sed eget leo vel quam eleifend ultricies in eget massa. Donec fermentum magna nec tellus pellentesque facilisis. Curabitur pulvinar tellus id scelerisque viverra. Suspendisse vehicula velit vehicula augue faucibus, at commodo purus porta. Donec consectetur aliquet libero, vel auctor tellus. Pellentesque volutpat sem eu neque dapibus tempus. Praesent iaculis faucibus libero non ultricies. Duis convallis tortor et est pulvinar, ac vestibulum turpis lobortis. Donec id augue eu elit convallis egestas. Sed quam sem, lacinia non venenatis ac, feugiat a quam. Proin pulvinar at nibh non egestas. Nam ac nisi mi. Nunc ac tellus tempor dolor feugiat finibus a quis metus.','2021-09-14','2021-09-16',0,3),(6,'LAM: Cintia Fernandez y su candidatura','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed mauris lacinia, sagittis eros eu, sagittis est. Sed eu lacus eget arcu pulvinar accumsan quis ut nulla. Sed eget leo vel quam eleifend ultricies in eget massa. Donec fermentum magna nec tellus pellentesque facilisis. Curabitur pulvinar tellus id scelerisque viverra. Suspendisse vehicula velit vehicula augue faucibus, at commodo purus porta. Donec consectetur aliquet libero, vel auctor tellus. Pellentesque volutpat sem eu neque dapibus tempus. Praesent iaculis faucibus libero non ultricies. Duis convallis tortor et est pulvinar, ac vestibulum turpis lobortis. Donec id augue eu elit convallis egestas. Sed quam sem, lacinia non venenatis ac, feugiat a quam. Proin pulvinar at nibh non egestas. Nam ac nisi mi. Nunc ac tellus tempor dolor feugiat finibus a quis metus.','2021-09-10','2021-09-10',0,2),(7,'Infobae: Manaos nuevo sabor','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed mauris lacinia, sagittis eros eu, sagittis est. Sed eu lacus eget arcu pulvinar accumsan quis ut nulla. Sed eget leo vel quam eleifend ultricies in eget massa. Donec fermentum magna nec tellus pellentesque facilisis. Curabitur pulvinar tellus id scelerisque viverra. Suspendisse vehicula velit vehicula augue faucibus, at commodo purus porta. Donec consectetur aliquet libero, vel auctor tellus. Pellentesque volutpat sem eu neque dapibus tempus. Praesent iaculis faucibus libero non ultricies. Duis convallis tortor et est pulvinar, ac vestibulum turpis lobortis. Donec id augue eu elit convallis egestas. Sed quam sem, lacinia non venenatis ac, feugiat a quam. Proin pulvinar at nibh non egestas. Nam ac nisi mi. Nunc ac tellus tempor dolor feugiat finibus a quis metus.','2021-09-16','2021-09-16',0,7),(8,'La Nación: fuertes criticas sobre nueva línea','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed mauris lacinia, sagittis eros eu, sagittis est. Sed eu lacus eget arcu pulvinar accumsan quis ut nulla. Sed eget leo vel quam eleifend ultricies in eget massa. Donec fermentum magna nec tellus pellentesque facilisis. Curabitur pulvinar tellus id scelerisque viverra. Suspendisse vehicula velit vehicula augue faucibus, at commodo purus porta. Donec consectetur aliquet libero, vel auctor tellus. Pellentesque volutpat sem eu neque dapibus tempus. Praesent iaculis faucibus libero non ultricies. Duis convallis tortor et est pulvinar, ac vestibulum turpis lobortis. Donec id augue eu elit convallis egestas. Sed quam sem, lacinia non venenatis ac, feugiat a quam. Proin pulvinar at nibh non egestas. Nam ac nisi mi. Nunc ac tellus tempor dolor feugiat finibus a quis metus.','2021-09-29','2021-09-29',1,6),(9,'Lam: respuesta Cintia Fernandez','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed mauris lacinia, sagittis eros eu, sagittis est. Sed eu lacus eget arcu pulvinar accumsan quis ut nulla. Sed eget leo vel quam eleifend ultricies in eget massa. Donec fermentum magna nec tellus pellentesque facilisis. Curabitur pulvinar tellus id scelerisque viverra. Suspendisse vehicula velit vehicula augue faucibus, at commodo purus porta. Donec consectetur aliquet libero, vel auctor tellus. Pellentesque volutpat sem eu neque dapibus tempus. Praesent iaculis faucibus libero non ultricies. Duis convallis tortor et est pulvinar, ac vestibulum turpis lobortis. Donec id augue eu elit convallis egestas. Sed quam sem, lacinia non venenatis ac, feugiat a quam. Proin pulvinar at nibh non egestas. Nam ac nisi mi. Nunc ac tellus tempor dolor feugiat finibus a quis metus.','2021-09-22','2021-09-22',1,2),(10,'Libro: Cumbres borrascosas','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed mauris lacinia, sagittis eros eu, sagittis est. Sed eu lacus eget arcu pulvinar accumsan quis ut nulla. Sed eget leo vel quam eleifend ultricies in eget massa. Donec fermentum magna nec tellus pellentesque facilisis. Curabitur pulvinar tellus id scelerisque viverra. Suspendisse vehicula velit vehicula augue faucibus, at commodo purus porta. Donec consectetur aliquet libero, vel auctor tellus. Pellentesque volutpat sem eu neque dapibus tempus. Praesent iaculis faucibus libero non ultricies. Duis convallis tortor et est pulvinar, ac vestibulum turpis lobortis. Donec id augue eu elit convallis egestas. Sed quam sem, lacinia non venenatis ac, feugiat a quam. Proin pulvinar at nibh non egestas. Nam ac nisi mi. Nunc ac tellus tempor dolor feugiat finibus a quis metus.','2021-09-16','2021-09-16',1,2),(11,'INADI: renuncia director','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed mauris lacinia, sagittis eros eu, sagittis est. Sed eu lacus eget arcu pulvinar accumsan quis ut nulla. Sed eget leo vel quam eleifend ultricies in eget massa. Donec fermentum magna nec tellus pellentesque facilisis. Curabitur pulvinar tellus id scelerisque viverra. Suspendisse vehicula velit vehicula augue faucibus, at commodo purus porta. Donec consectetur aliquet libero, vel auctor tellus. Pellentesque volutpat sem eu neque dapibus tempus. Praesent iaculis faucibus libero non ultricies. Duis convallis tortor et est pulvinar, ac vestibulum turpis lobortis. Donec id augue eu elit convallis egestas. Sed quam sem, lacinia non venenatis ac, feugiat a quam. Proin pulvinar at nibh non egestas. Nam ac nisi mi. Nunc ac tellus tempor dolor feugiat finibus a quis metus.','2021-09-15','2021-09-15',0,7),(12,'Loremmmmm','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed mauris lacinia, sagittis eros eu, sagittis est. Sed eu lacus eget arcu pulvinar accumsan quis ut nulla. Sed eget leo vel quam eleifend ultricies in eget massa. Donec fermentum magna nec tellus pellentesque facilisis. Curabitur pulvinar tellus id scelerisque viverra. Suspendisse vehicula velit vehicula augue faucibus, at commodo purus porta. Donec consectetur aliquet libero, vel auctor tellus. Pellentesque volutpat sem eu neque dapibus tempus. Praesent iaculis faucibus libero non ultricies. Duis convallis tortor et est pulvinar, ac vestibulum turpis lobortis. Donec id augue eu elit convallis egestas. Sed quam sem, lacinia non venenatis ac, feugiat a quam. Proin pulvinar at nibh non egestas. Nam ac nisi mi. Nunc ac tellus tempor dolor feugiat finibus a quis metus.','2021-09-05','2021-09-10',0,8);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nick` varchar(55) NOT NULL,
  `email` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'lucia99','lucia@gmail.com'),(2,'pablo22','pablo@yahoo.com.ar'),(3,'admin','admin@hotmail.com'),(4,'manaos','vamosmanaos@gmail.com'),(5,'amaliG','amalia@gmail.com'),(6,'lanacion','lanacion@portaldenoticias.com'),(7,'infobae','infobae@portaldenoticias.com'),(8,'lorem','lorem@lorem.com.ar'),(9,'loremipsu','loremipsu@yahoo.com.ar'),(10,'pepito','pepe@hotmai.com');
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

-- Dump completed on 2021-09-16 15:46:17
