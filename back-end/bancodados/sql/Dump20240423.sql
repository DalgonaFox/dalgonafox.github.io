CREATE DATABASE  IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `biblioteca`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `nacionalidade` varchar(100) DEFAULT NULL,
  `pseudonimo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Agatha Christie','britânica','Mary Westmacott'),(2,'Joanne Rowling','britânica','J.K.Rowling'),(3,'Miguel de Cervantes','Espanhola',NULL),(4,'Antoine de Saint-Exupéry','francesa',NULL),(5,'Richard Russell','Americano','Rick Riordan'),(6,'Stephenie Meyer','Americana',NULL),(7,'Daniel Handler','Norte Americano','Lemony Snicket'),(8,'Alice May Oseman',' Britânico','Alice Oseman'),(9,'William Shakespeare','Britânico','William Shakespeare');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprestimo`
--

DROP TABLE IF EXISTS `emprestimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprestimo` (
  `id_emprestimo` int(11) NOT NULL,
  `id_livro` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `data_emprestimo` datetime DEFAULT NULL,
  `data_devolucao` datetime DEFAULT NULL,
  PRIMARY KEY (`id_emprestimo`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_livro` (`id_livro`),
  CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`),
  CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `emprestimo_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `emprestimo_ibfk_4` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimo`
--

LOCK TABLES `emprestimo` WRITE;
/*!40000 ALTER TABLE `emprestimo` DISABLE KEYS */;
INSERT INTO `emprestimo` VALUES (1,1,1,'2022-05-15 12:23:10','2022-06-15 13:24:15'),(2,3,3,'2024-04-08 14:41:18',NULL),(3,2,2,'2000-06-20 12:30:35','2000-07-25 15:45:30'),(4,2,5,'2024-03-12 13:24:00',NULL),(5,1,4,'2023-03-12 14:32:23','2023-03-15 12:25:57'),(6,1,2,'2024-04-08 00:00:00',NULL),(7,4,6,'2024-04-08 10:00:00',NULL),(8,6,7,'2024-04-08 11:15:00',NULL),(9,10,8,'2024-04-08 13:45:00',NULL),(10,11,9,'2024-04-08 14:30:00',NULL),(11,13,10,'2024-04-08 15:00:00',NULL),(12,14,11,'2024-04-08 16:45:00',NULL),(13,18,12,'2024-04-08 17:30:00',NULL),(14,19,13,'2024-04-08 18:15:00',NULL),(15,20,14,'2024-04-08 19:00:00',NULL),(16,21,15,'2024-04-08 20:00:00',NULL),(17,2,1,'2024-03-20 09:00:00','2024-04-05 10:30:00'),(18,5,3,'2024-03-25 11:30:00','2024-04-06 12:45:00'),(19,12,4,'2024-03-28 13:15:00','2024-04-07 14:15:00'),(20,7,5,'2024-03-30 15:00:00','2024-04-08 16:00:00'),(21,3,6,'2024-04-09 10:00:00',NULL),(22,8,7,'2024-04-09 11:15:00',NULL),(23,10,8,'2024-04-09 13:45:00',NULL),(24,11,9,'2024-04-09 14:30:00',NULL),(25,14,10,'2024-04-09 15:00:00',NULL),(26,18,11,'2024-04-09 16:45:00',NULL),(27,19,12,'2024-04-09 17:30:00',NULL),(28,20,13,'2024-04-09 18:15:00',NULL),(29,21,14,'2024-04-09 19:00:00',NULL),(30,5,15,'2024-04-09 20:00:00',NULL),(31,4,1,'2024-04-10 09:00:00',NULL),(32,6,2,'2024-04-10 10:30:00',NULL),(33,7,3,'2024-04-10 11:30:00',NULL),(34,8,4,'2024-04-10 13:15:00',NULL),(35,9,5,'2024-04-10 15:00:00',NULL),(36,12,6,'2024-04-10 16:00:00',NULL),(37,13,7,'2024-04-10 17:00:00',NULL),(38,16,8,'2024-04-10 18:30:00',NULL),(39,17,9,'2024-04-10 19:45:00',NULL),(40,18,10,'2024-04-10 20:15:00',NULL);
/*!40000 ALTER TABLE `emprestimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Rua A',123,'Centro','São Paulo','SP','08530200'),(2,'Rua Primeiro de Março',456,'Jardim','Rio de Janeiro','RJ','32203400'),(3,'Rua Pitangui',789,'Floresta','Belo Horizonte','MG','11111111'),(4,'Avenida Oceânica',321,'Praia','Salvador','BA','23123333'),(5,'Avenue de Verdun',654,'Monte Carlo','Mônaco','MC','67666678'),(6,'Rua das Flores',123,'Centro','Curitiba','PR','01234570'),(7,'Avenida Paulista',1000,'Bela Vista','São Paulo','SP','01234571'),(8,'Rua Augusta',500,'Consolação','São Paulo','SP','01234572'),(9,'Rua dos Girassóis',789,'Jardim Primavera','Goiânia','GO','01234573'),(10,'Avenida Atlântica',777,'Copacabana','Rio de Janeiro','RJ','01234574'),(11,'Rua das Palmeiras',432,'Jardim das Palmeiras','Porto Alegre','RS','01234575'),(12,'Avenida Presidente Vargas',1500,'Centro','Rio de Janeiro','RJ','01234576'),(13,'Rua do Carmo',987,'São José','Recife','PE','01234577'),(14,'Avenida das Nações Unidas',2000,'Brooklin','São Paulo','SP','01234578'),(15,'Praça da Sé',1,'Sé','São Paulo','SP','01234579');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `id_livro` int(11) NOT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `ano_publicacao` int(11) NOT NULL,
  `genero` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_livro`),
  KEY `id_autor` (`id_autor`),
  CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'O Assasinato no expresso oriente',1,1934,'Mistério'),(2,'Dom quixote',3,1605,'Romance'),(3,'Harry Potter e a Pedra Filosofal',2,1997,'Fantasia'),(4,'Harry Potter e a Câmara Secreta ',2,1998,'Fantasia'),(5,'Harry Potter e o Prisioneiro de Azkaban',2,1999,'Fantasia'),(6,'Harry Potter e o Cálice de Fogo',2,2000,'Fantasia'),(7,'Harry Potter e a Ordem da Fênix',2,2003,'Fantasia'),(8,'Harry Potter e o Enigma do Príncipe',2,2005,'Fantasia'),(9,'Harry Potter e as Relíquias da Morte',2,2007,'Fantasia'),(10,'Percy Jackon: O Ladrão de Raios',5,2005,'Fantasia'),(11,'Percy Jackson: O Mar de Monstros',5,2006,'Fantasia'),(12,'Percy Jackson: A Maldição do Titã',5,2007,'Fantasia'),(13,'Percy Jackson: A Batalha do Labirinto',5,2008,'Fantasia'),(14,'Percy Jackson: O  Último Olimpiano',5,2009,'Fantasia'),(15,'Sol da Meia-Noite',6,2020,'Romance'),(16,'A Breve Segunda Vida de Bree Tanner',6,2010,'Romance'),(17,'Crepúsculo',6,2005,'Romance'),(18,'Vida e Morte',6,2015,'Romance'),(19,'Lua Nova',6,2006,'Romance'),(20,'Eclipse',6,2007,'Romance'),(21,'Amanhecer',6,2008,'Romance'),(22,'Desventuras em Série: O lago das Sanguessugas',7,2000,'Romance'),(23,'Desventuras em Série: Serraria baixo-astral',7,2000,'Romance'),(24,'Nick e Charlie',8,2015,'Ficção'),(25,'Heartstopper: Dois garotos, um encontro',8,2019,'Romance'),(26,'Heartstopper: Minha pessoa favorita',8,2019,'Romance'),(27,'Heartstopper: Um passo adiante',8,2020,'Romance'),(28,'Heartstopper: De mãos dadas',8,2021,'Romance'),(29,'Heartstopper: Mais fortes juntos',8,2023,'Romance'),(30,'O Pequeno Príncipe',4,1943,'Aventura'),(31,'Hamlet',9,1600,'Tragédia'),(32,'Desventuras em Série: Mau Começo',7,1999,'Romance'),(33,'Desventuras em Série: A Sala dos Répteis',7,1999,'Romance');
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_endereco` (`id_endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Lavínia','lavinia@example.com',1),(2,'Washington','washington@example.com',2),(3,'Giovanna','giovanna@example.com',3),(4,'Heloysa','heloysa@example.com',4),(5,'Juliana','juliana@example.com',5),(6,'Mariana','mariana@example.com',6),(7,'Milena','milena@example.com',7),(8,'Murilo','murilo@example.com',8),(9,'Marcelo','mayara@example.com',9),(10,'Elton','elton@example.com',10),(11,'Julia','julia@example.com',11),(12,'Eduardo','eduardo@example.com',12),(13,'Luiz','luiz@example.com',13),(14,'Carol','luana@example.com',14),(15,'Carlos','sara@example.com',15);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-23  9:59:44
