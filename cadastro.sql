DROP DATABASE IF EXISTS `cadastro`;
CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cadastro`;
-- MySQL dump 10.16  Distrib 10.1.22-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: cadastro
-- ------------------------------------------------------
-- Server version	10.1.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Daniel Morais','1984-01-02','M',78.50,1.83,'Brasil'),(2,'Talita Nascimento','1999-12-30','F',55.20,1.65,'Portugal'),(3,'Emerson Gabriel','1920-12-30','M',50.20,1.65,'Moçambique'),(4,'Lucas Damasceno','1930-11-02','M',63.20,1.75,'Irlanda'),(5,'Leila Martins','1975-04-22','F',99.00,2.15,'Brasil'),(6,'Letícia Neves','1999-12-03','F',87.00,2.00,'Brasil'),(7,'Janaína Couto','1987-11-12','F',75.40,1.66,'EUA'),(8,'Carlisson Rosa','2010-08-01','M',78.22,1.98,'Brasil'),(9,'Jackson Telles','1999-01-23','M',55.75,1.33,'Portugal'),(10,'Danilo Araujo','1975-12-10','M',99.21,1.87,'EUA'),(11,'Andreia Delfino','1975-07-01','F',48.64,1.54,'Irlanda'),(12,'Valter Vilmerson','1985-10-12','M',88.55,2.03,'Brasil'),(13,'Allan Silva','1993-11-11','M',76.99,1.55,'Brasil'),(14,'Rosana Kunz','1935-01-16','F',55.24,1.87,'Brasil'),(15,'Josiane Dutra','1950-01-20','F',98.70,1.04,'Portugal'),(16,'Elvis Schwarz','2011-05-07','M',66.69,1.76,'EUA'),(17,'Paulo Narley','1997-03-17','M',120.10,2.22,'Brasil'),(18,'Joade Assis','1930-12-01','M',65.88,1.78,'França'),(19,'Nara Matos','1978-03-17','F',65.90,1.33,'Brasil'),(20,'Marcos Dissotti','2010-01-01','M',53.79,1.54,'Portugal'),(21,'Ana Carolina Mendes','2000-12-15','F',88.30,1.54,'Brasil'),(22,'Guilherme de Sousa','2001-05-18','M',132.70,1.97,'Moçambique'),(23,'Bruno Torres','2000-01-30','M',44.65,1.65,'Brasil'),(24,'Yuji Homa','1996-12-25','M',33.90,1.22,'Japão'),(25,'Raian Porto','1989-05-05','M',54.89,1.54,'Brasil'),(26,'Paulo Batista','1999-03-15','M',110.12,1.87,'Portugal'),(27,'Monique Precivalli','2013-12-30','F',48.20,1.22,'Brasil'),(28,'Herisson Silva','1965-10-10','M',74.65,1.56,'EUA'),(29,'Tiago Ulisses','1993-04-22','M',150.30,2.35,'Brasil'),(30,'Anderson Rafael','1989-12-01','M',64.22,1.44,'Irlanda'),(31,'Karine Ribeiro','1988-10-01','F',42.10,1.65,'Brasil'),(32,'Roberto Luiz Debarba','2007-01-09','M',77.44,1.56,'Brasil'),(33,'Jarismar Andrade','2000-06-23','F',63.70,1.33,'Brasil'),(34,'Janaina Oliveira','1955-03-12','F',52.90,1.76,'Canadá'),(35,'Márcio Mello','2011-11-20','M',54.11,1.55,'EUA'),(36,'Robson Rodolpho','2000-08-08','M',110.10,1.76,'Brasil'),(37,'Daniele Moledo','2006-08-11','F',101.30,1.99,'Brasil'),(38,'Neto Sophiate','1996-05-17','M',59.28,1.65,'Portugal'),(39,'Neriton Dias','2009-10-30','M',48.99,1.29,'Brasil'),(40,'André Schmidt','1993-07-26','M',55.37,1.22,'Angola'),(41,'Isaias Buscarino','2001-01-07','M',99.90,1.55,'Moçambique'),(42,'Rafael Guimma','1968-04-11','M',88.88,1.54,'Brasil'),(43,'Ana Carolina Hernandes','1970-10-11','F',65.40,2.08,'EUA'),(44,'Luiz Paulo','1984-11-01','M',75.12,1.38,'Portugal'),(45,'Bruna Teles','1980-11-07','F',55.10,1.86,'Brasil'),(46,'Diogo Padilha','2000-03-03','M',54.34,1.88,'Angola'),(47,'Bruno Miltersteiner','1986-02-19','M',77.45,1.65,'Alemanha'),(48,'Elaine Nunes','1998-08-15','F',35.90,2.00,'Canadá'),(49,'Silvio Ricardo','2012-03-12','M',65.99,1.23,'EUA'),(50,'Denilson Barbosa da Silva','2000-01-08','M',97.30,2.00,'Brasil'),(51,'Jucinei Teixeira','1977-11-22','F',44.80,1.76,'Portugal'),(52,'Bruna Santos','1991-12-01','F',76.30,1.45,'Canadá'),(53,'André Vitebo','1970-07-01','M',44.11,1.55,'Brasil'),(54,'Andre Santini','1991-08-15','M',66.00,1.76,'Itália'),(55,'Ruan Valente','1998-03-19','M',101.90,1.76,'Canadá'),(56,'Nailton Mauricio','1992-04-25','M',86.01,1.43,'EUA'),(57,'Rita Pontes','1999-09-02','F',54.10,1.35,'Angola'),(58,'Carlos Camargo','2005-02-22','M',124.65,1.33,'Brasil'),(59,'Philppe Oliveira','2000-05-23','M',105.10,2.19,'Brasil'),(60,'Dayana Dias','1993-05-30','F',88.30,1.66,'Angola'),(61,'Silvana Albuquerque','1999-05-22','F',56.00,1.50,'Brasil');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_disciplina`
--

DROP TABLE IF EXISTS `aluno_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno_disciplina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ano` varchar(6) DEFAULT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `num_disciplina` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_aluno` (`id_aluno`),
  KEY `num_disciplina` (`num_disciplina`),
  CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id`),
  CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`num_disciplina`) REFERENCES `disciplina` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_disciplina`
--

LOCK TABLES `aluno_disciplina` WRITE;
/*!40000 ALTER TABLE `aluno_disciplina` DISABLE KEYS */;
INSERT INTO `aluno_disciplina` VALUES (1,'2013/1',2,4),(2,'2018/2',3,6);
/*!40000 ALTER TABLE `aluno_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplina` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `departamento` varchar(8) DEFAULT 'DCC',
  `pre_requisito` varchar(50) DEFAULT NULL,
  `cargatot` int(10) unsigned DEFAULT NULL,
  `nucleo` enum('NC','NE') DEFAULT NULL,
  `natureza` varchar(3) DEFAULT 'OBR',
  PRIMARY KEY (`num`),
  UNIQUE KEY `nome` (`nome`),
  UNIQUE KEY `nome_2` (`nome`),
  UNIQUE KEY `nome_3` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Cálculo 1','DCMAT',NULL,96,'NC','OBR'),(2,'Lógica Matemática','DCC',NULL,64,'NC','OBR'),(3,'Matemática Discreta','DCC',NULL,64,'NC','OBR'),(4,'Algoritmos e Prog. de Computadores 1','DCC',NULL,64,'NC','OBR'),(5,'Produção de Texto','DCLET',NULL,64,'NC','OBR'),(6,'Introdução à computação','DCC',NULL,64,'NC','OBR'),(7,'Cálculo 2','DCMAT',NULL,96,'NC','OBR'),(8,'Probabilidade e Estatística','DCMAT',NULL,64,'NC','OBR'),(9,'Sistemas Digitais','DCC',NULL,64,'NC','OBR'),(10,'Programação Orientada a Objetos','DCC',NULL,64,'NC','OBR'),(11,'Estruturas de Dados 1','DCC',NULL,64,'NC','OBR'),(12,'Álgebra Linear','DCMAT',NULL,64,'NC','OBR'),(13,'Linguagens de Programação','DCC',NULL,64,'NC','OBR'),(14,'Física para Computação','DCFIS',NULL,64,'NC','OBR'),(15,'Algoritmos e Prog. De Computadores 2','DCC','Algoritmos e Prog. De Computadores 1',64,'NC','OBR'),(16,'Estruturas de Dados 2','DCC','Estruturas de Dados 1',64,'NC','OBR'),(17,'Arquitetura de Computadores','DCC',NULL,64,'NC','OBR'),(18,'Teoria dos Grafos','DCC',NULL,64,'NC','OBR'),(19,'Análise e Projeto de Algoritmos','DCC',NULL,64,'NC','OBR'),(20,'Organização de Computadores','DCC',NULL,64,'NC','OBR'),(22,'Banco de Dados 1','DCC',NULL,64,'NE','OBR'),(23,'Engenharia de Software 1','DCC',NULL,64,'NE','OBR'),(24,'Sistemas Operacionais 1','DCC',NULL,64,'NC','OBR'),(25,'Pesquisa Operacional','DCC',NULL,64,'NC','OBR'),(26,'Inteligência Artificial','DCC',NULL,64,'NE','OBR'),(27,'Banco de Dados 2','DCC','Banco de Dados 1',64,'NE','OBR'),(28,'Redes de Computadores 1','DCC',NULL,64,'NE','OBR'),(29,'Computação Gráfica','DCC',NULL,64,'NE','OBR'),(30,'Linguagens Formais e Autômatos','DCC',NULL,64,'NE','OBR'),(31,'Engenharia de Software 2','DCC','Engenharia de Software 1',64,'NE','OBR'),(32,'Sistemas Operacionais 2','DCC',NULL,64,'NC','OBR'),(33,'Programação Funcional e Lógica','DCC',NULL,64,'NC','OBR'),(34,'Teoria da Computação','DCC',NULL,64,'NE','OBR'),(35,'Compiladores','DCC',NULL,64,'NC','OBR'),(36,'Processamento de Imagens','DCC',NULL,64,'NE','OBR'),(37,'Sistemas Distribuídos','DCC','Redes de Computadores 1',64,'NE','OBR'),(38,'Redes de Computadores 2','DCC','Redes de Computadores 1',64,'NE','OBR'),(39,'Interfaces Homem-Computador','DCC',NULL,32,'NE','OBR'),(40,'Optativa 1','DCC',NULL,64,'NE','OBR'),(41,'Optativa 2','DCC',NULL,64,'NE','OBR'),(42,'Optativa 3','DCC',NULL,32,'NE','OBR'),(43,'Laboratório de Programação 1','DCC','Algoritmos e Prog. De Computadores 1',32,'NC','OBR'),(44,'Fábrica de Software','DCC','Engenharia de Software 2',32,'NC','OBR'),(45,'Projeto Final de Curso 1','DCC',NULL,32,'NE','OBR'),(46,'Laboratório de Programação 2','DCC','Algoritmos e Prog. De Computadores 2',32,'NC','OBR'),(47,'Direito','DCIVIL',NULL,64,'NC','OBR'),(48,'Empreendedorismo','DADM',NULL,64,'NC','OBR'),(49,'Laboratório de Programação 3','DCC',NULL,32,'NC','OBR'),(50,'Projeto Final de Curso 2','DCC',NULL,32,'NE','OBR');
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-08  9:42:15
