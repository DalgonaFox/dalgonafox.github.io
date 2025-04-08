CREATE DATABASE  IF NOT EXISTS `mercado` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `mercado`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mercado
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
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairro` (
  `idBairro` int(11) NOT NULL,
  `idCidade` int(11) NOT NULL,
  `nome` varchar(85) NOT NULL,
  PRIMARY KEY (`idBairro`),
  KEY `idCidade` (`idCidade`),
  CONSTRAINT `bairro_ibfk_1` FOREIGN KEY (`idCidade`) REFERENCES `cidade` (`idCidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,1,'Jardim Imperador'),(2,2,'Boa Vista'),(3,3,'Jardim Revista'),(4,4,'Miguel Badra Baixo'),(5,5,'Vila Urupês'),(6,6,'Vila Cunha'),(7,7,'Jardim Colorado'),(8,8,'Jardim Ipelândia'),(9,9,'Jardim Dora'),(10,10,'Vila Fátima'),(11,11,'Monte Cristo'),(12,12,'Jardim Brasil'),(13,13,'Vasconcelos'),(14,14,'Ikeda'),(15,15,'Raffo'),(16,16,'Lagoa Nova'),(17,17,'Preta'),(18,18,'Bom Pastor'),(19,19,'Poço'),(20,20,'Jaraguá'),(21,21,'Farol'),(22,21,'Bela Vista'),(23,23,'Campinas'),(24,24,'Ferreira Gomes'),(25,25,'Aperibé'),(26,26,'Jardim Marcato'),(27,27,'Vila Amorim'),(28,28,'Vila Oliva'),(29,29,'Maria Helena'),(30,30,'Picos Altos'),(31,45,'Vale da Primavera'),(32,44,'Sol Nascente'),(33,43,'Jardim das Estrelas'),(34,42,'Monte Verde'),(35,41,'Rio Vermelho'),(36,40,'Lago Azul'),(37,39,'Terra Nova'),(38,38,'Bosque Encantado'),(39,37,'Praia Dourada'),(40,36,'Vila Aurora'),(41,35,'Floresta Silenciosa'),(42,34,'Alameda dos Girassóis'),(43,33,'Planalto Sereno'),(44,32,'Serra do Sol'),(45,31,'Cidade das Águas'),(46,46,'Cocó'),(47,47,'Lagoa'),(48,48,'Boca do Acre'),(49,49,'Café'),(50,50,'Ubá'),(51,51,'Praia da Canto'),(52,52,'Cataratas'),(53,53,'Ebenezer'),(54,54,'Sabiá'),(55,55,'Paripé'),(56,56,'Otávio Camões'),(57,57,'Copixaba'),(58,58,'Vassoural'),(59,59,'Mimoso'),(60,60,'Povoado Campo Frio'),(61,61,'Brooklin'),(62,62,'Colorado'),(63,63,'Alto do Ipiranga'),(64,64,'Pampulha'),(65,65,'Bandeirantes'),(66,66,'Fazenda do carmo'),(67,67,'Moinhos de evento'),(68,68,'Centro'),(69,69,'Bela vista'),(70,70,'América'),(71,71,'Campeche'),(72,72,'Pioneiros'),(73,73,'Jardim Eudorado'),(74,74,'Vila Murtinho'),(75,75,'Aponiã'),(76,76,'Acupe'),(77,77,'Belvedere'),(78,78,'Água Azul'),(79,79,'Copacabana'),(80,80,'Boa Esperança'),(81,81,'Bairro da Roseira'),(82,82,'Vila Hipódromo'),(83,83,'Icaraí Niterói'),(84,84,'Vale do Sol'),(85,85,'Vila Graziela'),(86,86,'Conceição'),(87,87,'Saraiva'),(88,88,'Enseada Azul'),(89,89,'Jardim Santa Cristina'),(90,90,'Boa Vista'),(91,105,'Ipanema'),(92,104,'Cajueiro'),(93,103,'Jabaquara'),(94,102,'Alto de São Bento'),(95,101,'Alvorada'),(96,100,'São Nicolau'),(97,99,'Pains'),(98,98,'Desvio Rizzo'),(99,97,'Igara'),(100,96,'São Mateus'),(101,95,'Morumbi'),(102,94,'Jardim Boa Vista'),(103,93,'Campo Limpo'),(104,92,'Jardim Yone'),(105,91,'Jardim Nova Poá');
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Eletrodomésticos'),(2,'Material Esportivo'),(3,'Itens de Cozinha'),(16,'Padaria e confeitaria'),(17,'Higiene Pessoal'),(18,'Congelados'),(31,'Hortifruti'),(32,'Limpeza'),(33,'Bebidas'),(46,'Peixaria'),(47,'Brinquedos'),(48,'Salgadinhos'),(61,'Temperos'),(66,'Laticínios'),(71,'Petshop'),(76,'Açougue'),(81,'Eletrônicos'),(86,'Utensílios Domésticos'),(91,'Dermocosméticos'),(92,'Perfumaria'),(93,'Maquiagem');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `idCidade` int(11) NOT NULL,
  `uf` char(2) NOT NULL,
  `nome` varchar(85) NOT NULL,
  PRIMARY KEY (`idCidade`),
  KEY `uf` (`uf`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`uf`) REFERENCES `estado` (`uf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'AM','Manaus'),(2,'AM','Apuí'),(3,'AM','Autazes'),(4,'PR','Ponta Grossa'),(5,'PR','Foz do Iguaçu'),(6,'PR','Cascavel'),(7,'SE','Aracaju'),(8,'SE','Estância'),(9,'SE','Areia Branca'),(10,'AC','Cruzeiro do Sul'),(11,'AC','Xapuri'),(12,'AC','Feijó'),(13,'GO','Goiânia'),(14,'GO','Anápolis'),(15,'GO','Caldas Novas'),(16,'RN','Pipa'),(17,'RN','Natal'),(18,'RN','Mossoró'),(19,'Al','Maceió'),(20,'AL','Piranhas'),(21,'AL','São Miguel dos Campos'),(22,'AP','Macapá'),(23,'AP','Porto Grande'),(24,'AP','Ferreira Gomes'),(25,'RJ','Aperibé'),(26,'RJ','Angra dos Reis'),(27,'RJ','Niterói'),(28,'PI','Teresina'),(29,'PI','Floriano'),(30,'PI','Picos'),(31,'DF','Brasília'),(32,'DF','Taguatinga'),(33,'DF','Ceilândia'),(34,'SE','Aracaju'),(35,'SE','São Cristóvão'),(36,'SE','Nossa Senhora do Socorro'),(37,'RR','Boa Vista'),(38,'RR','Caracaraí'),(39,'RR','Rorainópolis'),(40,'PI','Esperantina'),(41,'PI','Parnaíba'),(42,'PI','Bom Jesus'),(43,'MT','Cuiabá'),(44,'MT','Várzea Grande'),(45,'MT','Rondonópolis'),(46,'CE','Fortaleza'),(47,'CE','Granja'),(48,'CE','Pentecoste'),(49,'ES','Alegre'),(50,'ES','Pancas'),(51,'ES','Vitória'),(52,'PR','Foz do Iguaçu'),(53,'PR','Maringá'),(54,'PR','Araucária'),(55,'BA','Salvador'),(56,'BA','Itapetinga'),(57,'BA','Xique-Xique'),(58,'PE','Caruaru'),(59,'PE','Pesqueira'),(60,'PE','Água Preta'),(61,'SP','São Paulo'),(62,'SP','Suzano'),(63,'SP','Mogi das Cruzes'),(64,'MG','Belo Horizonte'),(65,'MG','Ouro Preto'),(66,'MG','Tiradentes'),(67,'RS','Porto Alegre'),(68,'RS','Água Santa'),(69,'RS','Alvorada'),(70,'SC','Joinville'),(71,'SC','Florianópolis'),(72,'SC','Balneário Camboriú'),(73,'RO','Jaru'),(74,'RO','Nova Mamoré'),(75,'RO','Porto Velho'),(76,'BA','Salvador'),(77,'ES','Serra'),(78,'SP','Guarulhos'),(79,'RJ','Rio de Janeiro'),(80,'ES','Ibatiba'),(81,'MG','Extrema'),(82,'SP','Mooca'),(83,'RJ','Niterói'),(84,'MG','Pouso Alegre'),(85,'ES','Jaguaré'),(86,'SP','Osasco'),(87,'MG','Uberlândia'),(88,'ES','Guarapari'),(89,'SP','Santo André'),(90,'MG','Juiz de Fora'),(91,'SP','Poá'),(92,'SP','Ferraz de Vasconcelos'),(93,'SP','Itaquaquecetuba'),(94,'MG','Machado'),(95,'MG','Uberaba'),(96,'MG','Juiz de Fora'),(97,'RS','Canoas'),(98,'RS','Caxias do Sul'),(99,'RS','Santa Maria'),(100,'SC','Penha'),(101,'SC','Chapecó'),(102,'SC','Itapema'),(103,'RJ','Paraty'),(104,'RJ','Cabo Frio'),(105,'RJ','Rio de Janeiro');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `idEndereco` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `sexo` char(1) NOT NULL,
  `idade` int(11) NOT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `idEndereco` (`idEndereco`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,1,'Gabriel','M',17),(2,2,'Felipa','F',18),(3,3,'Estela','F',19),(4,4,'Gael','M',20),(5,5,'Gabriela','F',21),(6,6,'Gabriely','F',15),(7,7,'Davi','M',14),(8,8,'Vitor','M',13),(9,9,'Caio','M',12),(10,10,'Nycole','F',11),(11,11,'Ana','F',10),(12,12,'Rapha','F',22),(13,13,'Mayara','F',23),(14,14,'Otuka','M',24),(15,15,'Vinicius','M',25),(16,16,'João','M',20),(17,17,'Karla','F',56),(18,18,'Geovane','M',33),(19,19,'Carlos','M',22),(20,20,'Pedro','M',18),(21,21,'Andre','M',20),(22,22,'fernando','M',20),(23,23,'Washington','M',45),(24,24,'João Pedro','M',20),(25,25,'Francisco','M',38),(26,26,'Mayara','F',30),(27,27,'Rilary','F',18),(28,28,'Viviane','F',32),(29,29,'Marcio','M',33),(30,30,'Caio','M',29),(31,45,'Ana Paula','M',18),(32,44,'Murilo','H',23),(33,43,'Maria','M',22),(34,42,'Elton','H',67),(35,41,'Nicoly','M',34),(36,40,'Júlia','M',41),(37,39,'Giovanna','M',48),(38,38,'Sabrina','M',32),(39,37,'Rodrigo','H',19),(40,36,'Felipe','H',27),(41,35,'Luiz','H',19),(42,34,'Leticia','M',25),(43,33,'Maisa','M',54),(44,32,'Anita','M',34),(45,31,'João','H',21),(46,46,'Murilo','M',19),(47,47,'Mariana','F',18),(48,48,'João','M',17),(49,49,'Sabrina','F',17),(50,50,'Pedro','M',18),(51,51,'Luiz','M',19),(52,52,'Elton','M',40),(53,53,'Gustavo','M',20),(54,54,'Vitor','M',18),(55,55,'Davi','M',21),(56,56,'Giovanna','F',23),(57,57,'Julia','F',33),(58,58,'Pietro','M',24),(59,59,'Denis','M',19),(60,60,'Donald','M',18),(61,61,'Ana','F',16),(62,62,'Raphaela','F',17),(63,63,'Geovana','F',17),(64,64,'Nicoly','F',15),(65,65,'Barretto','M',14),(66,66,'Estela','F',18),(67,67,'Pietro','M',16),(68,68,'Adriano','M',20),(69,69,'Davi','M',17),(70,70,'João','M',16),(71,71,'Mayara','F',29),(72,72,'Jaqueline','F',17),(73,73,'Evaristo','M',17),(74,74,'Alan','M',17),(75,75,'Washington','M',52),(76,76,'Evandro Silva','M',26),(77,77,'Lucas da Cunha','M',32),(78,78,'Cecília Santos','F',40),(79,79,'Matheus Silva','M',15),(80,80,'Heitor Barreto','M',20),(81,81,'Ana Clara Souza','F',38),(82,82,'Natália Silvestre','F',26),(83,83,'Danilo Gentilli','M',49),(84,84,'Cristiano Ferreira','M',27),(85,85,'João Carlos','M',46),(86,86,'Marina Silva','F',68),(87,87,'Adriano Imperador','M',77),(88,88,'Eduardo Pereira','M',17),(89,89,'Endrick Felipe','M',18),(90,90,'Wesley Santos','M',22),(91,105,'Carlos Henrique','M',29),(92,104,'Victor Melo','M',41),(93,103,'Renata Pereira','F',43),(94,102,'Hugo Fernandes','M',28),(95,101,'Renata Vaz','F',30),(96,100,'Maria Aparecida','F',71),(97,99,'Nathan Simões','M',19),(98,98,'Cláudio Rodrigues','M',22),(99,97,'Carla Mantoan','F',57),(100,96,'Paula Fiorino','F',54),(101,95,'Ana Cláudia','F',51),(102,94,'Bruno Luiz','M',26),(103,93,'Carolina Fagundes','F',26),(104,92,'Gustavo Pimentel','M',25),(105,91,'Giovanna Vaz Cardoso','F',50);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idFuncionario` int(11) NOT NULL,
  `dataCompra` date NOT NULL,
  `valorTotalCompra` float NOT NULL,
  `finalizada` tinyint(1) NOT NULL,
  `formaPagamento` varchar(15) NOT NULL,
  PRIMARY KEY (`idCompra`),
  KEY `idCliente` (`idCliente`),
  KEY `idFuncionario` (`idFuncionario`),
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,1,1,'2021-01-15',2049,1,'Débito'),(2,2,2,'2022-02-14',2078,1,'Crédito'),(3,3,3,'2023-03-13',897,1,'Débito'),(4,4,4,'2024-04-12',2287.56,1,'Boleto'),(5,5,5,'2019-05-11',1154.64,1,'Crédito'),(6,6,6,'2018-06-10',493.98,1,'Boleto'),(7,7,7,'2017-07-09',972.02,1,'Débito'),(8,8,8,'2016-08-08',367.35,1,'Crédito'),(9,9,9,'2016-09-07',369.9,1,'Boleto'),(10,10,10,'2015-10-06',195.41,1,'Crédito'),(11,11,11,'2014-11-05',269.16,1,'Boleto'),(12,12,12,'2013-12-04',439.8,1,'Débito'),(13,13,13,'2012-11-03',304,1,'Débito'),(14,14,14,'2022-10-02',26.99,1,'Crédito'),(15,15,15,'2021-09-01',45,1,'Crédito'),(16,16,16,'2024-09-01',57,1,'Débito'),(17,17,17,'2024-09-02',59.9,0,'Crédito'),(18,18,18,'2024-10-01',32,1,'Débito'),(19,19,19,'2024-02-21',63,1,'Débito'),(20,20,20,'2024-11-09',60,1,'Crédito'),(21,21,21,'2024-02-15',500,0,'Boleto'),(22,22,22,'2024-01-16',80,1,'Boleto'),(23,23,23,'2024-12-03',200,1,'Dinheiro'),(24,24,24,'2024-07-12',60,1,'Crédito'),(25,25,25,'2024-07-07',30,1,'Débito'),(26,26,26,'2024-01-21',138,1,'Crédito'),(27,27,27,'2024-09-01',90,0,'Boleto'),(28,28,28,'2024-10-03',78,1,'Débito'),(29,29,29,'2024-04-10',30,0,'Crédito'),(30,30,30,'2024-06-23',108,1,'Dinheiro'),(31,39,45,'2024-03-26',14.9,1,'Crédito'),(32,38,45,'2024-03-26',639,1,'Boleto'),(33,41,45,'2024-03-26',83.86,1,'Débito'),(34,33,45,'2024-03-26',52,1,'Dinheiro'),(35,32,45,'2024-03-26',64,1,'Cheque'),(46,60,48,'0000-00-00',373.95,1,'Crédito'),(47,59,49,'2024-03-02',1295.86,1,'Débito'),(48,58,50,'2024-02-03',647.91,1,'Dinheiro'),(49,57,51,'2024-01-04',390.97,1,'Boleto'),(50,56,52,'2024-01-05',335,1,'Pix'),(51,55,53,'2024-02-06',331.97,1,'Débito'),(52,54,54,'2024-04-07',41.98,1,'Pix'),(53,53,55,'2024-03-08',1201.9,1,'Crédito'),(54,52,56,'2024-04-30',93.96,1,'Crédito'),(55,51,57,'2024-03-09',45.93,1,'Débito'),(56,50,58,'2024-02-10',300.99,1,'Pix'),(57,49,59,'2024-02-11',61.94,1,'Dinheiro'),(58,48,60,'2024-01-12',190,1,'Boleto'),(59,47,46,'2023-10-07',90,1,'Crédito'),(60,46,47,'2021-08-12',150,1,'Débito'),(61,61,61,'2023-04-01',32.5,1,'dinheiro'),(62,62,62,'2025-05-02',266.95,1,'dinheiro'),(63,63,63,'2022-06-03',526.11,1,'dinheiro'),(64,64,64,'2021-07-04',2385.88,1,'débito'),(65,65,65,'2020-08-05',167.69,1,'dinheiro'),(66,66,66,'2019-09-06',266.95,1,'débito'),(67,67,67,'2018-10-07',526.11,1,'dinheiro'),(68,68,68,'2016-11-08',35.99,1,'débito'),(69,69,69,'2024-12-09',156.47,1,'dinheiro'),(70,70,70,'2015-06-10',4,1,'dinheiro'),(71,71,71,'2024-03-11',323.98,0,'crédito'),(72,72,72,'2024-04-12',59.7,1,'débito'),(73,73,73,'2024-02-13',55.99,1,'crédito'),(74,74,74,'2024-04-14',85,0,'débito'),(75,75,75,'2024-01-15',26.7,1,'dinheiro'),(76,76,76,'2018-09-23',203.71,1,'dinheiro'),(77,77,77,'2024-09-08',3806.66,0,'crédito'),(78,78,78,'2023-03-22',19794,0,'crédito'),(79,79,79,'2019-10-31',16506.8,0,'crédito'),(80,80,80,'2024-11-21',2981.64,1,'débito'),(81,81,81,'2020-04-15',516.85,1,'dinheiro'),(82,82,82,'2021-01-19',110.83,1,'crédito'),(83,83,83,'2019-10-09',208.58,1,'débito'),(84,84,84,'2023-02-09',3599,1,'dinheiro'),(85,84,84,'2023-02-09',20693,0,'crédito'),(86,84,84,'2023-02-09',9998,0,'crédito'),(87,84,84,'2023-02-09',4126,1,'dinheiro'),(88,84,84,'2023-02-09',229.42,1,'débito'),(89,84,84,'2023-02-09',479.7,0,'crédito'),(90,84,84,'2023-02-09',83.6,1,'dinheiro'),(91,105,94,'2023-05-12',857.34,0,'Pix'),(92,93,96,'2024-03-28',27.49,1,'Débito'),(93,95,94,'2024-03-20',159.9,0,'Débito'),(94,96,99,'2024-03-17',124,1,'Pix'),(95,97,103,'2024-03-25',165.79,1,'Crédito'),(96,100,103,'2024-04-02',17,0,'Dinheiro'),(97,101,99,'2024-03-19',26,1,'Dinheiro'),(98,103,99,'2024-03-16',19.9,1,'Crédito'),(99,105,99,'2024-03-22',49.99,0,'Pix'),(100,93,96,'2024-03-24',143.8,1,'Débito'),(101,104,96,'2024-03-18',199.29,0,'Dinheiro'),(102,91,94,'2024-03-23',159.9,1,'Pix'),(103,94,103,'2024-03-21',139.9,1,'Pix'),(104,98,99,'2024-03-27',140.8,0,'Pix'),(105,102,103,'2024-03-26',321.75,1,'Crédito'),(531,33,31,'2024-03-15',7.45,0,'Crédito'),(532,34,32,'2024-03-28',42.99,1,'Débito'),(533,31,33,'2024-03-20',18.5,0,'Cheque'),(534,36,34,'2024-03-17',55,1,'Transferência'),(535,38,35,'2024-03-25',37.25,1,'Crédito'),(536,37,36,'2024-04-02',13.5,0,'Boleto'),(537,31,37,'2024-03-19',7.45,1,'Dinheiro'),(538,40,38,'2024-03-16',5.07,1,'Crédito'),(539,41,39,'2024-03-22',4.5,0,'Presente'),(540,44,40,'2024-03-24',17.45,1,'Débito'),(541,45,41,'2024-03-18',42,0,'Dinheiro'),(542,43,42,'2024-03-23',50.4,1,'Transferência'),(543,32,43,'2024-03-21',17.95,1,'Cheque'),(544,33,44,'2024-03-27',7.45,0,'Boleto'),(545,39,45,'2024-03-26',26.7,1,'Crédito');
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `idDepartamento` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Gerência'),(2,'Administração'),(3,'RH'),(4,'Operações de loja'),(5,'Atendimento ao cliente'),(6,'Caixa'),(7,'Logística'),(8,'Marketing'),(9,'Segurança'),(10,'Departamento de Pesquisa e Desenvolvimento'),(11,'Departamento de Alimentos Preparados');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependente`
--

DROP TABLE IF EXISTS `dependente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependente` (
  `idDependente` int(11) NOT NULL,
  `idFuncionario` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `parentesco` varchar(45) NOT NULL,
  `sexo` char(1) NOT NULL,
  `idade` int(11) NOT NULL,
  PRIMARY KEY (`idDependente`),
  KEY `idFuncionario` (`idFuncionario`),
  CONSTRAINT `dependente_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependente`
--

LOCK TABLES `dependente` WRITE;
/*!40000 ALTER TABLE `dependente` DISABLE KEYS */;
INSERT INTO `dependente` VALUES (1,1,'Bruno Vicente','conjuge','m',18),(2,2,'Davi Suarez','conjuge','m',18),(3,3,'Pietro Felix','conjuge','m',18),(4,4,'Luiz Teixeira','conjuge','m',18),(5,5,'Joao Souza','conjuge','m',18),(6,6,'Vicente Pereira','conjuge','m',18),(7,7,'Jaqueline Ferreira','conjuge','m',18),(8,8,'Mariana Santos','conjuge','f',18),(9,9,'Elton Kaori','conjuge','m',18),(10,10,'Pedro Yano','conjuge','m',19),(11,11,'Murillo Botelho','conjuge','m',20),(12,12,'Barboza Scabelo','conjuge','m',21),(13,13,'Adriao Junior','conjuge','m',22),(14,14,'Eloah Goncalves','conjuge','f',23),(15,15,'Evaristo Paraiba','conjuge','m',24),(16,16,'Claúdia Rosa','cônjuge','F',38),(17,17,'Fernando Cardoso','cônjuge','M',36),(18,18,'Moisés Filho','filho','M',19),(19,19,'Renato Garcia','filho','M',19),(20,20,'Alice Albuquerque','filha','F',23),(21,21,'Davi Lopes','filho','M',17),(22,22,'Tânia Gonçalves','cônjuge','F',48),(23,23,'Clarice Lima','cônjuge','F',42),(24,24,'Mayara Omai','cônjuge','F',29),(25,25,'João Dantas','filho','M',14),(26,26,'Pedro Sebastian','filho','M',28),(27,27,'Caio Ferreira','cônjuge','M',26),(28,28,'Carina Xaro','filha','F',24),(29,29,'Gabriela Carvalho','filha','F',13),(30,30,'Jaqueline Coelho','cônjuge','F',49),(31,39,'Wellington Rato Santos','Pai','M',49),(32,45,'Lilian Afonso Pereira','Mãe','F',62),(33,36,'Geraldo Albuquerque Gouveia','Avô','M',77),(34,43,'Bárbara Silva da Costa','Avó','F',68),(35,31,'Jéssica Porte dos Rios','Irmã','F',33),(36,39,'Sarah Fernanda Rato','Mãe','F',48),(37,45,'Wellington Afonso Fernandez','Pai','M',49),(38,42,'Gerusa Rivieira Orlando','Mãe','F',57),(39,35,'Gerusa Figarland Dias','Mãe','F',57),(40,41,'Severino Pinheiro Matos','Padrasto','M',62),(41,44,'Regina Caradoso Soares','Mãe','F',38),(42,32,'Regina Gojou Yatsuki','Mãe','F',78),(43,37,'Melissa Schneider Augusto','Mãe','F',49),(45,38,'Bernardo Carvalho Victoria','Pai','M',53),(61,61,'Alissa Silva','Filho','F',2),(62,62,'Estela Clara de Oliveira','Cônjuge','F',19),(63,63,'Marcela Ferreira','Filho','F',12),(64,64,'Ryan Lopes','Cônjuge','M',21),(65,65,'Gabriel Barretto','Cônjuge','M',65),(66,66,'Bianca Mendonça','Cônjuge','F',20),(67,67,'Joana Santos','Filho','F',1),(68,68,'Leandro Queirós','Filho','M',1),(69,69,'Ana Maria Santana','Filho','F',18),(70,70,'João Victor Teixeira','Filho','F',12),(71,71,'Karen Pereira','Cônjuge','F',56),(72,72,'Enzo de Souza','Cônjuge','F',22),(73,73,'Mariana Campos','Filho','F',13),(74,74,'Olivia da Silva','Cônjuge','F',24),(75,75,'Sabrina cavalcante','Filho','F',10),(76,76,'Joana Gomes','Filha','F',2),(77,77,'Daniela Silva','Cônjuge','F',34),(78,78,'Marcelo Campos','Cônjuge','M',28),(79,79,'Pedro Gonçalves','Filho','M',4),(80,80,'Gabriel Santos','Filho','M',24),(81,81,'Beatriz Cavalcant','Cônjuge','F',22),(82,82,'Jussara Gabriela','Cõnjuge','F',36),(83,83,'Leandro Alves','Filho','M',10),(84,84,'Ana Castela','Filha','F',18),(85,85,'Daniel Cava','Filho','M',13),(86,86,'Cristina Alves','Cônjuge','F',26),(87,87,'Erick Viera Cabral','Cônjuge','F',27),(88,88,'Marta Oliveira','Filha','F',22),(89,89,'Roberto Rodriguez','Cônjuge','M',44),(90,90,'Valentina Albuquerque','Filho','F',1),(91,99,'Carlos Souza','Pai','M',49),(92,105,'Ana Lima','Mãe','F',62),(93,96,'Pedro Santos','Avô','M',77),(94,103,'Luana Oliveira','Avó','F',68),(95,91,'Fernanda Silva','Irmã','F',33),(96,99,'Amanda Oliveira','Mãe','F',48),(97,105,'Carlos Souza','Pai','M',49),(98,102,'Maria Oliveira','Mãe','F',57),(99,95,'Maria Almeida','Mãe','F',57),(100,101,'José Silva','Padrasto','M',62),(101,104,'Carla Martins','Mãe','F',58),(102,92,'Carla Souza','Mãe','F',58),(103,97,'Juliana Costa','Mãe','F',49),(104,97,'Marcos Costa','Pai','M',52),(105,98,'Ricardo Almeida','Pai','M',53),(531,37,'Jefferson Dante Augusto','Pai','M',52),(532,37,'Queterson Dante Farias','Avô','M',56),(533,45,'Zenevaldo Afonso Santos','Avô','M',92),(534,41,'Hôrtencio Pinheiro Matos','Irmão','M',55),(535,38,'Neusa Novaldina Victoria','Mãe','M',42),(536,36,'Wanderlay Carvalho Albuquerque','Pai','M',52);
/*!40000 ALTER TABLE `dependente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deptfunc`
--

DROP TABLE IF EXISTS `deptfunc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deptfunc` (
  `idDeptFunc` int(11) NOT NULL,
  `idFuncionario` int(11) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `dataEntradaDept` date NOT NULL,
  `dataSaidaDept` date DEFAULT NULL,
  KEY `idFuncionario` (`idFuncionario`),
  KEY `idDepartamento` (`idDepartamento`),
  CONSTRAINT `deptfunc_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  CONSTRAINT `deptfunc_ibfk_2` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`idDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deptfunc`
--

LOCK TABLES `deptfunc` WRITE;
/*!40000 ALTER TABLE `deptfunc` DISABLE KEYS */;
INSERT INTO `deptfunc` VALUES (16,16,1,'2024-01-22','2024-04-11'),(17,17,1,'2023-03-30',NULL),(18,18,2,'2022-10-02',NULL),(19,19,3,'2021-09-21','2022-02-11'),(20,20,4,'2019-03-12','2024-06-11'),(21,21,5,'2022-05-26',NULL),(22,22,6,'2024-02-10',NULL),(23,23,7,'2024-03-03','2024-04-01'),(24,24,8,'2024-01-09',NULL),(25,25,9,'2024-01-15',NULL),(26,26,10,'2024-01-02','2023-03-11'),(27,27,11,'2024-01-30','2024-01-11'),(28,28,4,'2024-01-31',NULL),(29,29,4,'2024-01-08',NULL),(30,30,8,'2024-01-16',NULL),(31,33,1,'2021-10-13',NULL),(32,45,2,'2020-02-02',NULL),(33,43,3,'2021-08-16',NULL),(34,34,1,'2018-08-23','2023-03-12'),(35,33,11,'2021-10-13',NULL),(36,31,2,'2023-03-12',NULL),(37,42,10,'2020-08-12',NULL),(38,35,6,'2019-08-23',NULL),(39,44,11,'2020-07-12','2024-03-17'),(40,38,7,'2020-10-28','2020-11-03'),(41,39,8,'2023-05-17',NULL),(42,37,4,'2023-07-04',NULL),(43,43,5,'2024-08-23',NULL),(44,39,9,'2023-05-17',NULL),(45,37,9,'2024-05-26',NULL),(46,48,1,'2019-04-19',NULL),(47,49,2,'2020-06-15',NULL),(48,50,3,'2021-09-23',NULL),(49,51,4,'2020-06-19',NULL),(50,52,5,'2022-02-20',NULL),(51,53,6,'2022-02-20',NULL),(52,54,7,'2022-02-20',NULL),(53,55,8,'2022-01-20',NULL),(54,56,9,'2017-03-27',NULL),(55,57,10,'2024-03-29',NULL),(56,58,11,'1997-05-20',NULL),(57,59,1,'1997-05-20',NULL),(58,60,2,'1970-06-13',NULL),(59,48,3,'2019-07-02',NULL),(60,49,4,'2015-08-07',NULL),(61,61,1,'2023-04-02',NULL),(62,62,2,'2020-09-03',NULL),(63,63,3,'2021-05-05',NULL),(64,64,4,'2020-02-05',NULL),(65,65,5,'2021-11-06','2024-12-11'),(66,66,6,'2013-07-07','2024-03-08'),(67,67,7,'2023-11-23','2024-08-03'),(68,68,8,'2019-08-27',NULL),(69,69,9,'2016-09-28','2024-03-08'),(70,70,10,'2024-12-26',NULL),(71,71,11,'2021-12-15','2022-12-08'),(72,72,1,'2014-04-11',NULL),(73,73,2,'2013-06-10',NULL),(74,74,3,'2019-02-09',NULL),(75,75,4,'2018-03-08','2020-03-08'),(76,76,1,'2024-03-10',NULL),(77,77,2,'2017-04-15',NULL),(78,78,3,'2024-02-10',NULL),(79,79,4,'2021-04-10',NULL),(80,80,5,'2016-11-01','2024-02-11'),(81,81,6,'2022-05-10','2023-03-10'),(82,82,7,'2021-12-10','2024-03-08'),(83,83,8,'2020-12-07',NULL),(84,84,9,'2017-10-28','2024-04-01'),(85,85,10,'2023-12-01',NULL),(86,86,11,'2021-07-19','2024-10-01'),(87,87,1,'2016-06-10',NULL),(88,88,2,'2014-02-01','2024-01-30'),(89,89,3,'2018-01-20',NULL),(90,90,4,'2023-03-10','2024-04-01'),(91,101,6,'2021-10-13',NULL),(92,105,2,'2020-02-02',NULL),(93,92,5,'2021-08-16','2023-03-12'),(94,94,4,'2018-08-23',NULL),(95,96,4,'2021-10-13',NULL),(96,91,5,'2023-03-12',NULL),(97,102,9,'2020-08-12',NULL),(98,100,5,'2019-08-23',NULL),(99,104,6,'2020-07-12','2024-03-17'),(100,98,7,'2020-10-28','2020-11-03'),(101,99,4,'2023-05-17',NULL),(102,93,5,'2023-07-04',NULL),(103,103,4,'2024-08-23',NULL),(104,95,3,'2023-05-17',NULL),(105,97,3,'2024-05-26',NULL);
/*!40000 ALTER TABLE `deptfunc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `idTipoEndereco` int(11) NOT NULL,
  `idBairro` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `numero` varchar(6) NOT NULL,
  `cep` char(9) NOT NULL,
  PRIMARY KEY (`idEndereco`),
  KEY `idTipoEndereco` (`idTipoEndereco`),
  KEY `idBairro` (`idBairro`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`idTipoEndereco`) REFERENCES `tipoendereco` (`idTipoEndereco`),
  CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`idBairro`) REFERENCES `bairro` (`idBairro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,17,1,'do Horizonte','1','08673-551'),(2,2,2,'das Cerejeiras','2','08673-552'),(3,15,3,'das Alamedas','3','08673-553'),(4,14,4,'das Laranjeiras','4','08673-554'),(5,13,5,'das Hortaliças','5','08673-555'),(6,11,6,'do Sossego','6','08673-556'),(7,12,7,'das Árvores','7','08673-557'),(8,13,8,'das Águias','8','08673-558'),(9,11,9,'das Tulipas','9','08673-559'),(10,10,10,'do Mar','10','08673-510'),(11,9,11,'das Violetas','11','08673-511'),(12,8,12,'das Alamedas','12','08673-512'),(13,8,13,'da Paz','13','08673-513'),(14,7,14,'do Campo','14','08673-514'),(15,6,15,'dos Jacarandás','15','08673-515'),(16,16,16,'Rio tito','42','00045670'),(17,16,17,'Rio Pires','452','02345-678'),(18,17,18,'Yuti ','542','02345-600'),(19,18,19,'Boa Vista','320','00045-678'),(20,18,20,'Europa','519','00045-678'),(21,17,21,'Romano','535','02312-678'),(22,19,22,'Miguel Badra','09','02345-678'),(23,19,23,'Paulista','10','00145-678'),(24,20,24,'Bom Pastor','14','02345-678'),(25,16,25,'Helena','90','02345-678'),(26,17,26,'Revista','89','02345-678'),(27,18,27,'Liberdade','22','02345-678'),(28,19,28,'Curicica','78','02345-678'),(29,19,29,'Margarida','02','02345-678'),(30,17,30,'São Bernardo','07','02345-678'),(31,16,31,'das Flores','123','12345-678'),(32,17,32,'dos Girassóis','456','98765-432'),(33,18,33,'dos Pássaros','789','54321-876'),(34,19,34,'da Liberdade','101','13579-024'),(35,20,35,'Principal','222','87654-321'),(36,21,36,'da Esperança','333','24680-135'),(37,22,37,'dos Sonhos','444','98765-432'),(38,16,38,'da Felicidade','555','36925-814'),(39,17,39,'da Harmonia','665','15926-374'),(40,18,40,'do Progresso','777','75319-024'),(41,19,41,'da Vitória','888','82467-013'),(42,20,42,'da Harmonia','999','62481-037'),(43,21,43,'da Alegria','111','42980-716'),(44,22,44,'da Liberdade','222','75319-024'),(45,16,45,'da Vitória','333','42980-716'),(46,2,46,'Cocó','120','60192-015'),(47,3,47,'Lagoa','230','62430-000'),(48,4,48,'Boca do Acre','291','69850-000'),(49,5,49,'Café','678','04311-002'),(50,6,50,'Ubá','375','29750-000'),(51,7,51,'Praia do Canto','488','29055-430'),(52,8,52,'Cataratas','555','85855-679'),(53,9,53,'Ebenezer','220','87035-280'),(54,10,54,'Sabiá','129','83708-070'),(55,11,55,'Paripé','420','40800-003'),(56,12,56,'Otávio Camões','110','45700-000'),(57,13,57,'Copixaba','588','47430-970'),(58,14,58,'Vassoural','616','55028-115'),(59,15,59,'Mimoso','215','55200-000'),(60,16,60,'Povoado Campo Frio','185','55550-000'),(61,17,61,'ibirapuera','23','07335-826'),(62,21,62,'Jeca Tatu','256','07735-136'),(63,19,63,'Raulindo Paiva','62','54467-926'),(64,19,64,'Benito Masci','225','62781-833'),(65,19,65,'da Vagem','68','41172-849'),(66,19,66,'Célia Helena','528','13446-934'),(67,19,67,'Doutor Florêncio YGartua','528','13446-934'),(68,19,68,'General joão Manoel','953','57286-934'),(69,19,69,'Casemiro de Abreu','728','66483-926'),(70,19,70,'Maz Colin','352','25628-345'),(71,19,71,'Vista do sol','438','13224-917'),(72,19,72,'Isidoro Caetano','128','14523-456'),(73,19,73,'Rio Candeias','429','25345-229'),(74,19,74,'do Eucalípto','868','12532-944'),(75,19,75,'Rio Caúba','244','36282-822'),(76,17,76,'Vasco da Gama','290','08765-980'),(77,2,77,'Fortunato Ramos','466','78765-098'),(78,3,78,'Guilherme Baer','280','96859-987'),(79,4,79,'Djalma Ulrich','265','22071-020'),(80,5,80,'Barão do Rio Branco','640','29167-172'),(81,6,81,'Bragança','140','37640-000'),(82,7,82,'Celso de Azevedo Marques','502','03122-010'),(83,8,83,'Alameda Edmuldo de Macedo Soares e Silva','903','24330-398'),(84,9,84,'Quinta','7229','340000-00'),(85,10,85,'Nove de Agosto','3877','29909-987'),(86,11,86,'Maria Lucia Petit','988','09879-988'),(87,12,87,'Aricanduva','154','03345-657'),(88,13,88,'Enseada Azul','129','64646-986'),(89,14,89,'Unnamed Road','1098','87654-898'),(90,15,90,'Estrada dos Cinco Primeiros','234','12779-097'),(91,19,91,'Visc. de Pirajá','351','22410-003'),(92,19,92,'Manjuba','106','28924-080'),(93,19,93,'Dom Pedro 1°','16','23970-000'),(94,19,94,'804 A','548','88220-000'),(95,19,95,'Adelaíde Rodrigues','420','89804-475'),(96,19,96,'Sebastião Schimtz','0','88385-000'),(97,19,97,'Doutora Maria Zélia Carneiro de Figueiredo','870','92412-240'),(98,19,98,'Cristiano Ramos de Oliveira','1000','95110-117'),(99,17,99,'Nossa Senhora das Dores','305','97050-531'),(100,19,100,'Melo Franco','53','36026-000'),(101,17,101,'Ramid Mauad','980','38051-131'),(102,17,102,'Santa Cruz','315','37750-000'),(103,19,103,'Tuiuti','107','08596-087'),(104,19,104,'Antonio Vitorino da Costa','178','08504-330'),(105,17,105,'Adutora','521','08568-660');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `uf` char(2) NOT NULL,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`uf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES ('AC','Acre'),('AL','Alagoas'),('AM','Amazonas'),('AP','Amapá'),('BA','Bahia'),('CE','Ceará'),('DF','Distrito Federal'),('ES','Espírito Santo'),('GO','Goiás'),('MG','Minas Gerais'),('MT','Mato Grosso'),('PE','Pernambuco'),('PI','Piauí'),('PR','Paraná'),('RJ','Rio de Janeiro'),('RN','Rio Grande do Norte'),('RO','Rondônia'),('RR','Roraima'),('RS','Rio Grande do Sul'),('SC','Santa Catarina'),('SE','Sergipe'),('SP','São Paulo');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `nomeFornecedor` varchar(45) NOT NULL,
  PRIMARY KEY (`idFornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Electrolux'),(2,'LG'),(3,'Mondial'),(4,'Arno'),(5,'Galopar'),(6,'Wilson'),(7,'Penalty'),(8,'Abus'),(9,'Olympikus'),(10,'DHS'),(11,'Tramontina'),(12,'Philco'),(13,'Clink'),(14,'Continental'),(15,'Arbel'),(16,'Brico Bread'),(17,'BMS salgados'),(18,'Richs'),(19,'Bambino'),(20,'CampTortas'),(21,'Rexona'),(22,'OralB'),(23,'Pampers'),(24,'Colgate'),(25,'Huggies'),(26,'Perdigão'),(27,'BemBrasil'),(28,'McCain'),(29,'Aurora'),(30,'Sadia'),(31,'Fanta Inc.'),(32,'Rainbowns Limpeza'),(33,'Clarortas'),(34,'Beatrix Le vegetal'),(35,'Bonafont'),(36,'Plumbus corp.'),(37,'Barriguinha Mole Produtora'),(38,'Mineirinho Ultra Fazendas'),(39,'Mr.Músculo'),(40,'Lorax Roupões'),(41,'Dollynho Inc.'),(42,'Força G Cleaner'),(43,'Mayara Hortaliças'),(44,'Roberto Limpo'),(45,'Vegetal Normal'),(46,'Elma Chips'),(47,'Lucky Salgados'),(48,'Só Peixe'),(49,'Freepeixe'),(50,'Estrela'),(51,'Hasbro'),(61,'Yoki'),(62,'Kitano'),(63,'Maggi'),(64,'Heinz'),(65,'Sazon'),(66,'Nestlé'),(67,'Danone'),(68,'Aurora'),(69,'Frimesa'),(70,'Parmalat'),(71,'Pedigree'),(72,'Whiskas'),(73,'Golden'),(74,'Sanol'),(75,'Magnus'),(76,'Friboi'),(77,'Seara'),(78,'Swift'),(79,'Angus'),(80,'Lebon'),(81,'Dell'),(82,'Lenovo'),(83,'Apple'),(84,'Samsung'),(85,'Asus'),(86,'Motorolla'),(87,'Tramontina'),(88,'Marinex'),(89,'Plasútil'),(90,'Arno'),(91,'O boticário'),(92,'Eudora'),(93,'WePink'),(94,'Boca Rosa'),(95,'Mari Maria MakeUp'),(96,'Vult'),(97,'Neutrogena'),(98,'Garnier'),(99,'CeraVe'),(100,'Océane'),(101,'Nivea'),(102,'Nupill'),(103,'Alchemia'),(104,'Dailus'),(105,'Ruby Rose');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL,
  `idEndereco` int(11) NOT NULL,
  `idSupervisor` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `idade` int(11) NOT NULL,
  `sexo` char(1) NOT NULL,
  `dataContratacao` date NOT NULL,
  `dataDemissao` date DEFAULT NULL,
  `demissao` tinyint(1) DEFAULT NULL,
  `salario` float NOT NULL,
  PRIMARY KEY (`idFuncionario`),
  KEY `idEndereco` (`idEndereco`),
  KEY `idSupervisor` (`idSupervisor`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`),
  CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`idSupervisor`) REFERENCES `funcionario` (`idFuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,1,1,'Victor',18,'M','2012-03-08',NULL,0,3200.87),(2,2,2,'Neymar',19,'M','2013-03-08','2030-09-05',1,4200.87),(3,3,3,'Cristiano Ronaldo',20,'M','2014-03-08',NULL,0,5200.87),(4,4,4,'Messi',17,'M','2012-05-08',NULL,0,6200.87),(5,5,5,'Nunes',16,'M','2012-04-08',NULL,0,7200.87),(6,6,6,'Salah',15,'M','2012-06-08','2013-09-02',1,8200.87),(7,7,7,'Alisson',14,'M','2012-07-08','2023-09-01',1,9200.87),(8,8,8,'Paulo',13,'M','2012-08-08',NULL,0,10200.9),(9,9,9,'Roberto',12,'M','2012-09-08','2021-09-01',1,11200.9),(10,10,10,'Lima',60,'M','2012-10-08','2020-09-01',1,12200.9),(11,11,11,'Gustavo',55,'M','2012-11-08',NULL,0,13200.9),(12,12,12,'Enzo',10,'M','2012-12-08','2018-09-01',1,14200.9),(13,13,13,'Hudson',21,'M','2013-03-08','2017-09-01',1,15200.9),(14,14,14,'João',22,'M','2014-03-08',NULL,0,16200.9),(15,15,15,'Davi',23,'M','2015-03-08',NULL,0,3200.87),(16,16,16,'Carlos',45,'M','2000-02-09',NULL,0,9000),(17,17,16,'Fernando',20,'M','2019-02-09',NULL,0,2000),(18,18,16,'Henrique',18,'M','2023-11-09',NULL,0,2500),(19,19,16,'Mayara',22,'F','2019-07-10','2023-09-11',1,7000),(20,20,16,'Carlos',35,'M','2011-02-09',NULL,0,11000),(21,21,17,'Gustavo',25,'M','2017-02-02','2020-12-01',1,8000),(22,22,17,'Henrique',28,'M','2018-02-09','2020-11-12',1,2000),(23,23,16,'Michelle',35,'F','2011-07-11',NULL,0,10000),(24,24,17,'Salete',45,'F','2005-07-11',NULL,0,7500),(25,25,17,'Joyce',22,'F','2023-07-11',NULL,0,3500),(26,26,16,'Ana',28,'F','2021-12-11','2022-08-11',1,3500),(27,27,17,'Clara',20,'F','2021-07-11',NULL,0,8500),(28,28,17,'Yara',50,'F','1999-07-01',NULL,0,3200),(29,29,17,'Clarice',29,'F','2023-05-11',NULL,0,1500),(30,30,16,'Antonia',52,'F','2019-07-23','2020-11-19',1,3500),(31,31,31,'Raimundo',26,'M','2024-08-23',NULL,0,23478),(32,32,32,'Hellen',44,'F','2023-03-12','2024-03-12',1,23080),(33,33,33,'Heitor',23,'M','2021-10-13',NULL,0,22800),(34,34,34,'Renata',22,'F','2018-08-23','2023-03-12',1,23880),(35,35,35,'Laura',32,'F','2019-08-23',NULL,0,20000),(36,36,36,'Romário',58,'M','2017-06-28','2020-02-10',1,12800),(37,37,37,'João',19,'M','2023-07-04',NULL,0,18900),(38,38,38,'Otávio',29,'M','2020-09-28','2020-11-03',1,20200),(39,39,39,'Mariana',25,'F','2023-05-17',NULL,0,24340),(40,40,40,'Márcio',48,'M','2016-08-12','2023-02-17',1,23300),(41,41,41,'Osmar',32,'M','2019-08-12',NULL,0,23300),(42,42,42,'Beatriz',48,'M','2020-08-12','2024-04-12',1,23300),(43,43,43,'Nicole',24,'F','2021-08-16',NULL,0,23300),(44,44,44,'Maurício',28,'M','2020-07-12','2024-03-17',1,23300),(45,45,45,'Lucas',26,'M','2020-02-02',NULL,0,23300),(46,46,55,'Laura',20,'F','2023-02-10','2024-04-12',1,2000),(47,47,56,'Francimar',23,'M','2020-06-02','2023-01-20',1,4000),(48,28,48,'Luciana',20,'F','2019-04-19',NULL,0,2000),(49,56,49,'Daniel',23,'M','2020-06-15',NULL,0,4000),(50,57,50,'Rose',28,'F','2021-09-23',NULL,0,5000),(51,58,51,'Ferdinando',24,'M','2020-06-19',NULL,0,4000),(52,59,52,'Lucas',27,'M','2022-02-20',NULL,0,5000),(53,59,53,'Luiz',30,'M','2021-01-20',NULL,0,5000),(54,60,54,'João',49,'M','2020-02-12',NULL,0,6000),(55,46,55,'Sabrina',23,'F','2017-03-27',NULL,0,10000),(56,47,56,'Mariana',16,'F','2024-04-29',NULL,0,5000),(57,48,57,'Eduardo',53,'M','1997-05-20',NULL,0,8000),(58,49,58,'Murilo',65,'M','1970-06-13',NULL,0,3000),(59,50,59,'Elton',29,'M','2019-07-02',NULL,0,34000),(60,51,60,'Lucas',37,'M','2015-08-07',NULL,0,5000),(61,61,61,'Adriano',20,'M','2023-04-02',NULL,0,10950),(62,62,62,'Pietro',19,'M','2020-09-03',NULL,0,9640),(63,63,63,'Geovana',18,'F','2021-05-05',NULL,0,8030),(64,64,64,'Ana',21,'F','2020-02-05',NULL,0,7040),(65,65,65,'nicoly',65,'F','2021-11-06','2024-12-11',1,2130),(66,61,64,'Pedro',21,'M','2013-07-07','2024-03-08',1,3280),(67,63,65,'Gabriel',65,'M','2023-11-23','2024-03-08',1,4790),(68,65,64,'Antonio',21,'M','2019-08-27',NULL,0,5600),(69,62,65,'Michael',65,'M','2016-09-28','2024-03-08',1,6970),(70,64,64,'Moraes',21,'M','2024-12-26',NULL,0,2800),(71,65,65,'Gustavo',65,'M','2021-12-15','2022-12-08',1,1260),(72,61,64,'Bruna',21,'F','2014-04-11',NULL,0,3000),(73,62,65,'Francisca',65,'F','2013-06-10','2024-12-08',1,7804),(74,63,64,'Alessandra',21,'F','2019-02-09',NULL,0,5340),(75,64,65,'Dandara',65,'F','2018-03-08','2020-03-08',1,4630),(76,76,76,'Gustavo Siqueira',22,'M','2024-03-10',NULL,0,3950),(77,77,76,'Luiz Armando',41,'M','2017-04-15',NULL,0,9500),(78,78,76,'Livia Andrade',18,'F','2024-02-10',NULL,0,1800),(79,79,76,'Ana Luiza da Silva',21,'F','0000-00-00',NULL,0,3040),(80,80,76,'Isabela de Souza',50,'F','2016-11-01','2024-02-11',1,10900),(81,81,81,'Pedro Januario',23,'M','2022-05-10','2023-03-10',1,3100),(82,82,81,'Gabriel Luiz',32,'M','2021-12-10','2024-03-08',1,3999),(83,83,81,'Cleber Machado',30,'M','2020-12-07',NULL,0,4840),(84,84,81,'Michael Jackson',51,'M','2017-10-28','2024-04-01',1,8000),(85,85,81,'Marcelo Moraes',31,'M','2023-12-01',NULL,0,2800),(86,86,86,'Rafael Correia',25,'M','2021-07-19','2024-10-01',1,3060),(87,87,86,'Julia Vale',27,'F','2016-06-10',NULL,0,3000),(88,88,86,'Roberta Corinthians',55,'F','2014-02-01','2024-01-30',1,10804),(89,89,86,'Alessandra Negrini',51,'F','2018-01-20',NULL,0,7500),(90,90,86,'Alana Gabriela',19,'F','2023-03-10','2024-04-01',1,2100),(91,103,91,'Carlos Silva',26,'M','2024-08-23',NULL,0,18.3),(92,96,92,'Ana Pereira',44,'F','2023-03-12','2024-03-12',1,17.5),(93,95,93,'Pedro Oliveira',23,'M','2021-10-13',NULL,0,16.8),(94,102,94,'Luana Santos',22,'F','2018-08-23','2023-03-12',1,19.88),(95,99,95,'Fernando Souza',32,'M','2019-08-23',NULL,0,15),(96,100,96,'Eduardo Costa',58,'M','2017-06-28','2020-02-10',1,12.8),(97,97,97,'Aline Lima',19,'F','2023-07-04',NULL,0,14.9),(98,98,98,'Rafael Almeida',29,'M','2020-09-28','2020-11-03',1,16.2),(99,105,99,'Camila Barbosa',25,'F','2023-05-17',NULL,0,14.34),(100,101,100,'Fábio Nunes',48,'M','2016-08-12','2023-02-17',1,13.3),(101,94,101,'Roberta Carvalho',32,'F','2019-08-12',NULL,0,13.3),(102,93,102,'José Silva',48,'M','2020-08-12','2024-04-12',1,13.3),(103,104,103,'Carolina Oliveira',24,'F','2021-08-16',NULL,0,13.3),(104,91,104,'Bruno Martins',28,'M','2020-07-12','2024-03-17',1,13.3),(105,92,105,'Patrícia Costa',26,'F','2020-02-02',NULL,0,13.3);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemcompra`
--

DROP TABLE IF EXISTS `itemcompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemcompra` (
  `idCompra` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valorTotal` float DEFAULT NULL,
  `idItemCompra` int(11) NOT NULL,
  PRIMARY KEY (`idItemCompra`),
  KEY `idCompra` (`idCompra`),
  KEY `idProduto` (`idProduto`),
  CONSTRAINT `itemcompra_ibfk_1` FOREIGN KEY (`idCompra`) REFERENCES `compra` (`idCompra`),
  CONSTRAINT `itemcompra_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemcompra`
--

LOCK TABLES `itemcompra` WRITE;
/*!40000 ALTER TABLE `itemcompra` DISABLE KEYS */;
INSERT INTO `itemcompra` VALUES (1,1,1,2049,1),(2,2,2,2078,2),(3,3,3,897,3),(4,4,3,2287.56,4),(5,5,3,3463.92,5),(6,6,3,493.98,6),(7,7,2,972.02,7),(8,8,2,367.35,8),(9,9,1,369.9,9),(10,10,1,195.41,10),(11,11,3,269.16,11),(12,12,2,439.8,12),(13,13,2,304,13),(14,14,1,26.99,14),(15,15,3,45,15),(16,16,10,7,16),(16,18,2,14,17),(16,17,2,36,18),(17,19,20,20,19),(17,23,1,39.9,20),(18,22,2,32,21),(19,21,1,18,22),(19,20,3,45,23),(20,24,12,60,24),(21,25,5,500,25),(22,26,2,80,26),(23,27,4,200,27),(24,28,2,60,28),(25,29,1,30,29),(26,30,6,108,30),(543,40,1,7.45,31),(540,40,1,7.45,32),(531,40,1,7.45,33),(545,36,3,26.7,34),(31,36,1,8.9,35),(32,41,10,105,36),(32,45,20,534,37),(33,34,14,83.86,38),(34,38,8,52,39),(35,42,9,64.8,40),(46,46,1,30.99,46),(46,47,1,300.98,47),(46,48,2,41.98,48),(47,49,2,1201.9,49),(47,50,1,60.99,50),(47,51,3,32.97,51),(48,52,2,27.96,52),(48,53,3,17.97,53),(48,54,2,601.98,54),(49,55,1,30.97,55),(49,56,2,60,56),(49,57,10,300,57),(50,58,1,95,58),(50,59,3,90,59),(50,60,5,150,60),(61,61,2,10,61),(61,62,2,5,62),(61,63,5,17.5,63),(62,64,3,75,64),(62,65,4,12,65),(62,66,5,179.95,66),(63,67,9,107.91,67),(63,68,7,358.3,68),(63,69,10,59.9,69),(64,70,11,44,70),(64,71,12,1943.88,71),(64,72,20,398,72),(65,73,1,55.99,73),(65,74,2,85,74),(65,75,3,26.7,75),(76,76,2,92.88,76),(76,77,3,18.87,77),(76,78,2,91.96,78),(77,79,3,125.7,79),(77,80,4,81.96,80),(77,81,1,3599,81),(78,82,2,1.798,82),(78,83,1,10.697,83),(78,84,1,7299,84),(79,85,2,9998,85),(79,86,3,6189,86),(79,88,2,319.8,87),(80,87,2,498.84,88),(80,88,1,2063,89),(80,88,1,319.8,90),(91,91,3,119.7,91),(91,101,3,248.7,92),(91,105,3,149.97,93),(91,102,3,338.97,94),(92,97,1,27.49,95),(93,99,1,159.9,96),(94,104,2,124,97),(95,92,1,57.9,98),(95,95,1,24.99,99),(95,101,1,82.9,100),(96,94,1,17,101),(97,100,1,26,102),(98,103,1,19.9,103),(99,105,1,49.99,104),(100,100,1,26,105),(26,28,1,30,516),(27,29,3,90,517),(28,30,1,18,518),(28,28,2,60,519),(29,29,1,30,520),(30,30,6,108,521),(31,32,4,6,531),(32,31,2,9,532),(33,32,1,1.5,533),(34,34,7,41.93,534),(35,32,5,7.5,535),(536,31,3,13.5,536),(537,40,1,7.45,537),(538,44,3,5.07,538),(539,35,1,4.5,539),(540,37,4,10,540),(541,38,6,39,541),(542,42,7,50.4,542),(543,41,1,10.5,543),(541,39,1,3,544),(544,40,1,7.45,545),(51,46,1,30.99,546),(51,47,1,300.98,547),(51,48,2,41.98,548),(52,49,2,1201.9,549),(53,50,1,60.99,550),(53,51,3,32.97,551),(54,52,2,27.96,552),(54,53,3,17.97,553),(54,54,1,300.99,554),(55,55,2,61.94,555),(55,56,2,60,556),(55,57,1,30,557),(56,58,2,190,558),(56,59,3,90,559),(56,60,5,150,560),(66,61,2,10,561),(66,62,3,7.5,562),(66,63,1,3.5,563),(67,64,3,75,564),(67,65,2,6,565),(68,66,1,35.99,566),(69,67,3,35.97,567),(69,68,2,93.8,568),(69,69,3,26.7,569),(70,70,1,4,570),(71,71,2,323.98,571),(72,72,3,59.7,572),(73,73,1,55.99,573),(74,74,2,85,574),(75,75,3,26.7,575),(81,89,2,41.8,576),(81,90,1,428.61,577),(81,76,1,46.44,578),(82,77,3,18.87,579),(82,78,2,91.96,580),(83,79,4,167.6,581),(83,80,2,40.98,582),(84,81,1,3599,583),(85,82,3,2697,584),(85,83,1,10697,585),(85,84,1,7299,586),(86,85,2,9998,587),(87,86,2,4126,588),(88,87,1,229.42,589),(89,88,3,479.7,590),(100,96,1,97.9,591),(100,103,1,19.9,592),(101,91,1,39.9,593),(101,94,1,17,594),(101,98,1,27.49,595),(101,92,2,115.8,596),(102,99,1,159.9,597),(103,93,1,139.9,598),(104,92,1,57.9,599),(104,101,1,82.9,600),(105,98,2,54.98,601),(105,94,3,51,602),(105,92,1,57.9,603),(105,101,1,82.9,604),(105,95,3,74.97,605);
/*!40000 ALTER TABLE `itemcompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL,
  `idFornecedor` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valorUnitario` float DEFAULT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `idFornecedor` (`idFornecedor`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`),
  CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,1,1,'Geladeira',10,2049),(2,2,1,'Fogão',15,1039),(3,3,1,'Liquidificador',20,299.9),(4,4,1,'Cafeteira',8,762.52),(5,5,1,'Freezer',12,1731.96),(6,1,2,' Raquete de tênis',10,246.99),(7,2,2,'Bola de vôlei',15,138.86),(8,3,2,'Capacete de ciclismo',20,122.45),(9,4,2,'Tênis de corrida',8,369.9),(10,5,2,'Rede de vôlei',12,195.41),(11,11,3,' Panela',12,89.72),(12,12,3,'Frigideira',6,219.9),(13,13,3,' Tábuas de corte',9,76),(14,14,3,'Funil',45,26.99),(15,15,3,'Ralador de queijo',42,15),(16,16,16,'Pão de sal',30,0.7),(17,17,16,'Coxinha',24,7),(18,18,16,'Bolo Formigueiro',12,18),(19,19,16,'Pão de queijo',40,1),(20,20,16,'Torta',10,15),(21,21,17,'Desodorante ',150,18),(22,22,17,'Fio dental ',100,16),(23,23,17,'Lenços umedecidos',80,29.9),(24,24,17,'Creme dental',100,5),(25,25,17,'Fralda Infantil',100,100),(26,26,18,'Nugget de frango',50,40),(27,27,18,'Batata frita',50,50),(28,28,18,'Onion rings',50,30),(29,29,18,'Salsicha',50,30),(30,30,18,'Asinha de frango',85,18),(31,36,31,'Maçã',100,4.5),(32,32,31,'Banana',200,6.5),(33,31,32,'Detergente',50,3.5),(34,33,31,'Repolho',150,1.99),(35,34,33,'Fanta Uva',75,9.5),(36,33,31,'Brócolis',70,5),(37,35,31,'Batata',200,11.5),(38,40,32,'Alvejante',50,21),(39,45,31,'Pêra',300,1.5),(40,35,33,'Fanta Laranja',50,4.45),(41,36,32,'Lustra Móveis',100,5.5),(42,37,32,'Cândida',125,4.2),(43,38,31,'Limão',40,9.1),(44,39,33,'Água',25,3.99),(45,44,33,'Suco de Laranja',50,8.5),(46,51,47,'Tartaruga Ninja',20,30.99),(47,51,47,'Barbie',25,300.98),(48,48,46,'Tambaqui',10,20.99),(49,49,46,'Esturjão',70,600.95),(50,48,46,'Tilápia',350,60.99),(51,46,48,'Cheetos',50,10.99),(52,46,48,'Fandangos',60,13.98),(53,47,48,'Fofura',250,5.99),(54,50,47,'Beyblade',20,300.99),(55,50,47,'Uno',20,30.97),(56,51,47,'Max Steel',20,30),(57,48,46,'Manjubinha',20,30),(58,49,46,'Salmão',20,95),(59,46,48,'Doritos',20,30),(60,47,48,'Torcida',20,30),(61,61,61,'tempero baiano',50,5),(62,62,61,'Sal rosa do Himalaia',50,2.5),(63,63,61,'Meu Segredo',50,3.5),(64,64,61,'Tempero para Batata Frita',50,25),(65,65,61,'Caldo em Pó',50,3),(66,66,66,'Leite Ninho',50,35.99),(67,67,66,'Iogurte Líquido 1L',50,11.99),(68,68,66,'Queijo Mussarela 1Kg',50,46.9),(69,69,66,'Creme de Leite',50,5.99),(70,70,66,'Leite 1L',50,4),(71,71,71,'Ração para Cães 10Kg',50,161.99),(72,72,71,'Sachê para Gatos 500g',50,19.9),(73,73,71,'Ração para Gatos 3Kg',50,55.99),(74,74,71,'Kit Shampoo e Condicionador p/cachorros',50,42.5),(75,75,71,'Lata Patê para Cães',50,8.9),(76,76,76,'Picanha',25,46.44),(77,77,76,'Mortadela',25,6.29),(78,78,76,'Bife de alcatra',25,45.98),(79,79,76,'Acém',25,41.9),(80,80,76,'Linguiça',25,20.49),(81,81,81,'Notebook Dell inspiron 15 13a',25,3599),(82,82,81,'Lenovo tab m9',25,899),(83,83,81,'Apple iPhone 15 Pro Max',25,10697),(84,84,81,'Smartphone Samsung Galaxy S24+',25,7299),(85,85,81,'Smartphone Asus Zenfone 10',25,4999),(86,86,81,'Smartphone Motorola Edge 30',25,2063),(87,87,86,'Chaleira',25,229.42),(88,88,86,'Conjunto de assadeiras',25,159.9),(89,89,86,'Pote hermético',25,20.9),(90,90,1,'Cafeteira manual',25,428.61),(91,103,92,'Body Splash Vanilla 200ml',100,39.9),(92,97,91,'Hidratante Facial Neutrogena Hydro Boost Water Gel - 50g',150,57.9),(93,91,92,'Egeo Choc Desodorante Colônia 90ml',50,139.9),(94,101,91,'Nivea - Protetor Hidratante Labial Amora Shine 4,8g',30,17),(95,96,93,'Isso É Mais Que Um Batom Marsala Matte Lips 3,6g',75,24.99),(96,95,93,'Pincel de Base - Ginger Glow Mari Maria Makeup',70,97.9),(97,102,91,'Sabonete Facial líquido Derme Control 200ml',150,22.49),(98,98,91,'Gel de Limpeza Antiacne Garnier Uniform & Matte 150g',170,27.49),(99,92,92,'Niina Secrets Desodorante Colônia 100ml',50,159.9),(100,105,93,'Base Líquida Média Cobertura Melu 25g',50,26),(101,99,91,'Loção Corporal Hidratante CeraVe - 473ml',100,82.9),(102,93,92,'Red Desodorante Colônia 100ml – Wepink',125,112.99),(103,104,93,'Pó Compacto Ultrafino Dailus - D4 Claro 20g',40,19.9),(104,100,93,'Iluminador Facial - Multiclor Powder Highlight Océane Edition 8g',75,62),(105,94,93,'Boca Rosa Beauty by Payot Meu Volumão - Máscara para Cílios 6g',50,49.99);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `IDCLIENTE` int(11) DEFAULT NULL,
  `IDFUNCIONARIO` int(11) DEFAULT NULL,
  `numeroTelefone` varchar(11) NOT NULL,
  `idTelefone` int(11) NOT NULL,
  PRIMARY KEY (`idTelefone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (NULL,1,'11987654321',1),(2,NULL,'11912345678',2),(NULL,3,'11923456789',3),(4,NULL,'11934567890',4),(NULL,5,'11945678901',5),(NULL,6,'11956789012',6),(7,NULL,'11967890123',7),(NULL,8,'11978901234',8),(9,NULL,'11989012345',9),(10,NULL,'11990123456',10),(11,NULL,'11901234567',11),(NULL,12,'11912345678',12),(NULL,13,'11923456789',13),(14,NULL,'11934567890',14),(31,NULL,'1194567890',31),(NULL,32,'1198675309',32),(NULL,33,'1196543210',33),(34,NULL,'1199843211',34),(35,NULL,'1197543210',35),(NULL,36,'1193334444',36),(37,NULL,'1198887777',37),(NULL,38,'1191112222',38),(NULL,39,'1195678901',39),(NULL,40,'1195432109',40),(NULL,41,'1196549870',41),(42,NULL,'1197778888',42),(43,NULL,'1199990000',43),(44,NULL,'1192223333',44),(45,NULL,'1196789012',45),(46,NULL,'11912345678',46),(47,NULL,'1196498-423',47),(48,NULL,'1192586-257',48),(49,NULL,'1193690-539',49),(50,NULL,'1195952-525',50),(51,NULL,'1199603-692',51),(52,NULL,'1196890-893',52),(NULL,53,'1292096-305',53),(NULL,52,'1192609-970',54),(NULL,51,'1195394-967',55),(56,NULL,'1191529-970',56),(57,NULL,'1195783-782',57),(58,NULL,'1199235-649',58),(59,NULL,'1193209-375',59),(60,NULL,'1195380-096',60),(NULL,61,'11999936479',61),(62,NULL,'11999936470',62),(63,NULL,'11999936446',63),(64,NULL,'11942008510',64),(65,NULL,'11950783071',65),(66,NULL,'11983636479',66),(67,NULL,'11943007530',67),(68,NULL,'11956001346',68),(69,NULL,'11923567120',69),(NULL,70,'11967456325',70),(NULL,71,'11924336479',71),(72,NULL,'11908707530',72),(73,NULL,'11953561346',73),(74,NULL,'11923890120',74),(NULL,75,'11964186325',75),(NULL,76,'11992442158',76),(NULL,77,'11999974634',77),(NULL,78,'11999936446',78),(79,NULL,'11942098092',79),(NULL,80,'11950757646',80),(81,NULL,'11983665432',81),(82,NULL,'11943978965',82),(83,NULL,'11956867787',83),(NULL,84,'11956789787',84),(85,NULL,'11923553454',85),(NULL,86,'11967475579',86),(87,NULL,'11924908982',87),(NULL,88,'11908798504',88),(NULL,89,'11953590865',89),(90,NULL,'11923897798',90),(NULL,91,'1191234567',91),(92,NULL,'1199876543',92),(NULL,93,'1198765432',93),(94,NULL,'1190123456',94),(NULL,95,'1199876543',95),(96,NULL,'1192223333',96),(NULL,97,'1195554444',97),(98,NULL,'1198887777',98),(NULL,99,'1193210987',99),(100,NULL,'1198901234',100),(NULL,101,'1197654321',101),(102,NULL,'1193334444',102),(NULL,103,'1197778888',103),(104,NULL,'1199990000',104),(NULL,105,'1196543210',105);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoendereco`
--

DROP TABLE IF EXISTS `tipoendereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoendereco` (
  `idTipoEndereco` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`idTipoEndereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoendereco`
--

LOCK TABLES `tipoendereco` WRITE;
/*!40000 ALTER TABLE `tipoendereco` DISABLE KEYS */;
INSERT INTO `tipoendereco` VALUES (2,'Residencial'),(3,'Comercial'),(4,'Apartamento'),(5,'Condômino'),(6,'Escritório'),(7,'Rural'),(8,'Sede De Campo'),(9,'Galpão'),(10,'Armazém'),(11,'Loja'),(12,'Consultório'),(13,'Estabelecimento'),(14,'Fazenda'),(15,'Chácara'),(16,'Travessa'),(17,'Avenida'),(18,'Esquina'),(19,'Rua'),(20,'Viela'),(21,'Vila'),(22,'Jardim');
/*!40000 ALTER TABLE `tipoendereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mercado'
--

--
-- Dumping routines for database 'mercado'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-03  7:40:51
