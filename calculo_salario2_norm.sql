CREATE DATABASE  IF NOT EXISTS `calculo_salario2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `calculo_salario2`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: calculo_salario2
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `nome` varchar(100) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES ('Analista',4000.00),('Coordenador',6000.00),('Estagiário',1500.00),('Gerente',9000.00),('Técnico',2500.00);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `cpf` char(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `logradouro` varchar(255) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `cargo_nome` varchar(100) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `email` (`email`),
  KEY `cargo_nome` (`cargo_nome`),
  CONSTRAINT `pessoa_ibfk_1` FOREIGN KEY (`cargo_nome`) REFERENCES `cargo` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES ('01234567890','Felipe Rocha','1991-04-12','Brasília','felipe.rocha@gmail.com','70000000','Quadra 15 Bloco A','301','Brasil','feliperocha','(61) 99999-9999','Coordenador',1),('10111213141','Lucas Barbosa','1995-01-01','Cuiabá','lucas.b@gmail.com','78000000','Rua das Pedras','17','Brasil','lucasb','(65) 94444-5555','Analista',1),('11223344556','Letícia Moura','1987-12-30','Recife','leticia.moura@gmail.com','50000000','Rua do Sol','144','Brasil','letimoura','(81) 98888-1122','Técnico',1),('12345678900','Marina Oliveira','1995-08-15','São Paulo','marina.oliveira@email.com','01001000','Rua dos Lírios','123','Brasil','marinaolive','(11) 91234-5678','Analista',1),('12345678901','Ana Paula Souza','1990-05-14','São Paulo','ana.souza@gmail.com','01001000','Rua das Flores','123','Brasil','anaps','(11) 91234-5678','Analista',1),('22334455667','Igor Neves','1986-10-08','Natal','igor.neves@gmail.com','59000000','Rua das Acácias','77','Brasil','igneves','(84) 98765-5555','Analista',1),('23456789012','Carlos Henrique Lima','1985-08-22','Rio de Janeiro','carlos.lima@yahoo.com','20040030','Avenida Brasil','456','Brasil','carlim','(21) 98765-4321','Gerente',1),('33445566778','Beatriz Gomes','1998-05-05','João Pessoa','bea.gomes@gmail.com','58000000','Rua Principal','88','Brasil','beatg','(83) 98989-2233','Estagiário',1),('34567890123','Juliana Oliveira','1992-11-03','Belo Horizonte','juliana.oliveira@hotmail.com','30130000','Rua da Liberdade','789','Brasil','juliolive','(31) 99887-1122','Coordenador',1),('44556677889','Vinícius Cardoso','1997-09-15','São Luís','vini.cardoso@gmail.com','65000000','Travessa do Comércio','12','Brasil','vcardoso','(98) 99887-7766','Técnico',1),('45678901234','Fernando Silva','1978-02-17','Curitiba','fernando.silva@uol.com.br','80010000','Alameda Santos','85','Brasil','fersilva','(41) 93221-8877','Técnico',1),('55667788990','Renata Teixeira','1996-03-28','Campo Grande','renata.tx@gmail.com','79000000','Rua do Bosque','199','Brasil','rentx','(67) 99888-1234','Analista',1),('56789012345','Marina Costa','1989-06-25','Porto Alegre','marina.costa@gmail.com','90010000','Rua Dom Pedro II','400','Brasil','maricosta','(51) 98700-2233','Estagiário',1),('66778899001','André Almeida','1984-11-02','Maceió','andre.almeida@gmail.com','57000000','Rua das Hortênsias','312','Brasil','andreal','(82) 91111-5566','Gerente',1),('67890123456','Bruno Martins','1993-01-10','Fortaleza','bruno.martins@globo.com','60000000','Rua das Palmeiras','555','Brasil','brmartins','(85) 98888-7766','Técnico',1),('77889900112','Natália Dias','1999-02-20','Teresina','nat.dias@gmail.com','64000000','Rua do Mercado','41','Brasil','natdias','(86) 92222-3333','Estagiário',1),('78901234567','Camila Ferreira','1995-03-18','Manaus','camila.f@hotmail.com','69000000','Travessa São José','42','Brasil','camferreira','(92) 98444-3322','Estagiário',1),('88990011223','Eduardo Pires','1990-06-11','Belém','edu.pires@gmail.com','66000000','Alameda das Mangueiras','66','Brasil','edpires','(91) 97777-8888','Técnico',1),('89012345678','Rodrigo Albuquerque','1982-09-27','Salvador','rodrigo.a@bol.com.br','40000000','Rua das Laranjeiras','1000','Brasil','rodrialbu','(71) 99111-6677','Analista',1),('90123456789','Patrícia Andrade','1994-07-06','Florianópolis','pat.andrade@gmail.com','88000000','Avenida Beira-Mar','250','Brasil','patandrade','(48) 99999-0001','Gerente',1),('99001122334','Larissa Melo','1993-08-19','Aracaju','larissa.melo@gmail.com','49000000','Avenida das Nações','909','Brasil','larmelo','(79) 93333-4444','Coordenador',1);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_salario`
--

DROP TABLE IF EXISTS `pessoa_salario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa_salario` (
  `cpf` char(11) NOT NULL,
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `salario_base` decimal(10,2) NOT NULL,
  `bonus` decimal(10,2) DEFAULT '0.00',
  `descontos` decimal(10,2) DEFAULT '0.00',
  `salario_liquido` decimal(10,2) GENERATED ALWAYS AS (((`salario_base` + `bonus`) - `descontos`)) STORED,
  PRIMARY KEY (`cpf`,`mes`,`ano`),
  CONSTRAINT `pessoa_salario_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `pessoa` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_salario`
--

LOCK TABLES `pessoa_salario` WRITE;
/*!40000 ALTER TABLE `pessoa_salario` DISABLE KEYS */;
INSERT INTO `pessoa_salario` (`cpf`, `mes`, `ano`, `salario_base`, `bonus`, `descontos`) VALUES ('01234567890',6,2025,6000.00,2400.00,0.00),('10111213141',6,2025,4000.00,1600.00,0.00),('11223344556',6,2025,2500.00,1000.00,0.00),('12345678900',6,2025,4000.00,1600.00,0.00),('12345678901',6,2025,4000.00,1600.00,0.00),('22334455667',6,2025,4000.00,1600.00,0.00),('23456789012',6,2025,9000.00,3600.00,0.00),('33445566778',6,2025,1500.00,600.00,0.00),('34567890123',6,2025,6000.00,2400.00,0.00),('44556677889',6,2025,2500.00,1000.00,0.00),('45678901234',6,2025,2500.00,1000.00,0.00),('55667788990',6,2025,4000.00,1600.00,0.00),('56789012345',6,2025,1500.00,600.00,0.00),('66778899001',6,2025,9000.00,3600.00,0.00),('67890123456',6,2025,2500.00,1000.00,0.00),('77889900112',6,2025,1500.00,600.00,0.00),('78901234567',6,2025,1500.00,600.00,0.00),('88990011223',6,2025,2500.00,1000.00,0.00),('89012345678',6,2025,4000.00,1600.00,0.00),('90123456789',6,2025,9000.00,3600.00,0.00),('99001122334',6,2025,6000.00,2400.00,0.00);
/*!40000 ALTER TABLE `pessoa_salario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_pessoa_salario_ativo`
--

DROP TABLE IF EXISTS `vw_pessoa_salario_ativo`;
/*!50001 DROP VIEW IF EXISTS `vw_pessoa_salario_ativo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pessoa_salario_ativo` AS SELECT 
 1 AS `nome`,
 1 AS `email`,
 1 AS `salario`,
 1 AS `cargo`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_pessoa_salario_ativo`
--

/*!50001 DROP VIEW IF EXISTS `vw_pessoa_salario_ativo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pessoa_salario_ativo` AS select `p`.`nome` AS `nome`,`p`.`email` AS `email`,`ps`.`salario_liquido` AS `salario`,`p`.`cargo_nome` AS `cargo` from ((`pessoa_salario` `ps` join `pessoa` `p` on((`ps`.`cpf` = `p`.`cpf`))) join `cargo` `c` on((`p`.`cargo_nome` = `c`.`nome`))) where (`p`.`ativo` = 1) */;
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

-- Dump completed on 2025-06-15 23:07:55
