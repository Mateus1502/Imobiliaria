/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: imobiliaria
-- ------------------------------------------------------
-- Server version	10.11.11-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `data_registro` date DEFAULT NULL,
  `cpf` varchar(14) NOT NULL,
  `contato` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes` VALUES
(1,'João','Silva','2025-01-10','12345678901','47999990001','joao.silva@email.com'),
(2,'Maria','Oliveira','2025-02-15','98765432100','47988887777','maria.oliveira@email.com'),
(3,'Carlos','Souza','2024-12-05','12345678002','4733332222','contato@souzaimoveis.com'),
(4,'Fernanda','Costa','2025-03-20','45678912002','47911112222','fernanda@costasa.com'),
(5,'Lucas','Pereira','2025-04-10','78945612302','47955554444','lucas.pereira@email.com'),
(6,'Amanda','Ribeiro','2025-05-01','32165498702','47944443333','amanda.ribeiro@email.com'),
(7,'Rafael','Gomes','2025-06-18','14725836902','47933332222','rafael.gomes@email.com'),
(8,'Juliana','Martins','2025-07-12','96385274102','47922221111','juliana.martins@email.com'),
(9,'Thiago','Almeida','2025-08-01','85296374102','47911110000','thiago.almeida@email.com'),
(10,'Patrícia','Ferreira','2025-08-15','74185296302','47900009999','patricia.ferreira@email.com'),
(11,'Pedro','Barbosa','2025-01-20','15975348602','47999991111','pedro.barbosa@email.com'),
(12,'Bianca','Moura','2025-02-22','75315948602','47988882222','bianca.moura@email.com'),
(13,'Gabriel','Cardoso','2025-03-30','95175385202','47977773333','gabriel.cardoso@email.com'),
(14,'Larissa','Ramos','2025-04-18','35795145602','47966664444','larissa.ramos@email.com'),
(15,'Eduardo','Alves','2025-05-09','25845678902','47955555555','eduardo.alves@email.com'),
(16,'Vanessa','Mendes','2025-06-27','65498732102','47944446666','vanessa.mendes@email.com'),
(17,'Bruno','Lima','2025-07-15','32178965402','47933337777','bruno.lima@email.com'),
(18,'Carla','Pinto','2025-08-03','98732165402','47922228888','carla.pinto@email.com'),
(19,'André','Silveira','2025-01-05','12378945602','47911119999','andre.silveira@email.com'),
(20,'Natália','Souza','2025-02-11','45612378902','47900008888','natalia.souza@email.com'),
(21,'Marcelo','Fernandes','2025-03-19','78932145602','47999992222','marcelo.fernandes@email.com'),
(22,'Priscila','Campos','2025-04-25','32165498703','47988883333','priscila.campos@email.com'),
(23,'Leandro','Costa','2025-05-12','65412378903','47977774444','leandro.costa@email.com'),
(24,'Vanessa','Rocha','2025-06-29','98745612303','47966665555','vanessa.rocha@email.com'),
(25,'Felipe','Moura','2025-07-18','15985245603','47955556666','felipe.moura@email.com'),
(26,'Simone','Lopes','2025-08-06','75395125803','47944447777','simone.lopes@email.com'),
(27,'Ricardo','Martins','2025-01-14','95145678903','47933338888','ricardo.martins@email.com'),
(28,'Camila','Ribeiro','2025-02-21','35725896303','47922229999','camila.ribeiro@email.com'),
(29,'Alexandre','Santos','2025-03-07','25896314703','47911130000','alexandre.santos@email.com'),
(30,'Juliana','Melo','2025-04-16','65478932103','47900031111','juliana.melo@email.com'),
(31,'Bruno','Dias','2025-05-05','32198765403','47999993333','bruno.dias@email.com'),
(32,'Carolina','Almeida','2025-06-23','98765432103','47988884444','carolina.almeida@email.com'),
(33,'Diego','Pereira','2025-07-11','12345698703','47977785555','diego.pereira@email.com'),
(34,'Juliana','Carvalho','2025-08-02','45678932103','47966686666','juliana.carvalho@email.com'),
(35,'Eduardo','Gomes','2025-01-09','78912345603','47955587777','eduardo.gomes@email.com'),
(36,'Patrícia','Silva','2025-02-19','32165478903','47944498888','patricia.silva@email.com'),
(37,'Rafael','Ferreira','2025-03-26','65498712303','47933309999','rafael.ferreira@email.com'),
(38,'Amanda','Martins','2025-04-14','98732198703','47922201111','amanda.martins@email.com'),
(39,'Thiago','Alves','2025-05-08','15975325803','47911112222','thiago.alves@email.com'),
(40,'Camila','Pinto','2025-06-20','75315914703','47900013333','camila.pinto@email.com'),
(41,'Lucas','Ramos','2025-07-15','95135725803','47999914444','lucas.ramos@email.com'),
(42,'Bianca','Souza','2025-08-04','35795136903','47988815555','bianca.souza@email.com'),
(43,'Gabriel','Costa','2025-01-18','25845612303','47977726666','gabriel.costa@email.com'),
(44,'Larissa','Rocha','2025-02-25','65498785203','47966637777','larissa.rocha@email.com'),
(45,'Eduardo','Dias','2025-03-13','32178965403','47955548888','eduardo.dias@email.com'),
(46,'Vanessa','Almeida','2025-04-22','98732165403','47944459999','vanessa.almeida@email.com'),
(47,'Bruno','Gomes','2025-05-11','12345632103','47933360000','bruno.gomes@email.com'),
(48,'Carla','Pereira','2025-06-28','45678912303','47922271111','carla.pereira@email.com'),
(49,'André','Martins','2025-07-17','78932198703','47911182222','andre.martins@email.com'),
(50,'Natália','Silva','2025-08-05','32165498704','47900093333','natalia.silva@email.com');
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contrato`
--

DROP TABLE IF EXISTS `Contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contrato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_imovel` int(11) NOT NULL,
  `tipo_contrato` varchar(100) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_imovel` (`id_imovel`),
  CONSTRAINT `Contrato_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `Clientes` (`id`),
  CONSTRAINT `Contrato_ibfk_2` FOREIGN KEY (`id_imovel`) REFERENCES `Imovel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contrato`
--

LOCK TABLES `Contrato` WRITE;
/*!40000 ALTER TABLE `Contrato` DISABLE KEYS */;
INSERT INTO `Contrato` VALUES
(1,1,1,'aluguel','2025-08-01','2026-07-31',1200.00,'ativo'),
(2,2,2,'compra','2025-08-05',NULL,350000.00,'ativo'),
(3,3,3,'aluguel','2025-08-10','2026-08-09',900.00,'ativo'),
(4,4,4,'compra','2025-08-12',NULL,420000.00,'ativo'),
(5,5,5,'aluguel','2025-08-15','2026-08-14',1500.00,'ativo'),
(6,6,6,'compra','2025-08-18',NULL,500000.00,'ativo'),
(7,7,7,'aluguel','2025-08-20','2026-08-19',2000.00,'ativo'),
(8,8,8,'compra','2025-08-22',NULL,380000.00,'ativo'),
(9,9,9,'aluguel','2025-08-25','2026-08-24',1300.00,'ativo'),
(10,10,10,'compra','2025-08-28',NULL,410000.00,'ativo'),
(11,11,11,'aluguel','2025-09-01','2026-08-31',1100.00,'ativo'),
(12,12,12,'compra','2025-09-05',NULL,450000.00,'ativo'),
(13,13,13,'aluguel','2025-09-08','2026-09-07',1700.00,'ativo'),
(14,14,14,'compra','2025-09-10',NULL,390000.00,'ativo'),
(15,15,15,'aluguel','2025-09-12','2026-09-11',1400.00,'ativo'),
(16,16,16,'compra','2025-09-15',NULL,480000.00,'ativo'),
(17,17,17,'aluguel','2025-09-18','2026-09-17',1600.00,'ativo'),
(18,18,18,'compra','2025-09-20',NULL,530000.00,'ativo'),
(19,19,19,'aluguel','2025-09-22','2026-09-21',1250.00,'ativo'),
(20,20,20,'compra','2025-09-25',NULL,440000.00,'ativo'),
(21,21,21,'aluguel','2025-09-28','2026-09-27',1550.00,'ativo'),
(22,22,22,'compra','2025-10-01',NULL,470000.00,'ativo'),
(23,23,23,'aluguel','2025-10-05','2026-10-04',1350.00,'ativo'),
(24,24,24,'compra','2025-10-08',NULL,490000.00,'ativo'),
(25,25,25,'aluguel','2025-10-10','2026-10-09',1450.00,'ativo');
/*!40000 ALTER TABLE `Contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Imovel`
--

DROP TABLE IF EXISTS `Imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Imovel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `tipo_imovel` varchar(255) NOT NULL,
  `status` enum('disponivel','alugado','vendido') DEFAULT 'disponivel',
  `cep` char(9) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `Imovel_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `Clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Imovel`
--

LOCK TABLES `Imovel` WRITE;
/*!40000 ALTER TABLE `Imovel` DISABLE KEYS */;
INSERT INTO `Imovel` VALUES
(1,1,'Apartamento','alugado','89200100','SC','Joinville','Centro','Rua das Flores',101,'Apto 101'),
(2,2,'Casa','vendido','89210150','SC','Joinville','América','Rua Rio Branco',202,NULL),
(3,3,'Sala Comercial','alugado','88010020','SC','Florianópolis','Centro','Av. Beira-Mar',303,'Sala 301'),
(4,4,'Terreno','vendido','89220010','SC','Joinville','Saguaçu','Rua XV de Novembro',404,NULL),
(5,5,'Apartamento','alugado','89200500','SC','Joinville','Costa e Silva','Rua Paraná',105,'Apto 502'),
(6,6,'Casa','vendido','89210600','SC','Joinville','Glória','Rua Bahia',206,NULL),
(7,7,'Sala Comercial','alugado','88010500','SC','Florianópolis','Trindade','Av. das Américas',307,'Sala 305'),
(8,8,'Terreno','vendido','89220500','SC','Joinville','Bom Retiro','Rua Amazonas',408,NULL),
(9,9,'Apartamento','alugado','89201000','SC','Joinville','Iririú','Rua Ceará',109,'Apto 503'),
(10,10,'Casa','vendido','89211050','SC','Joinville','Santa Catarina','Rua São Paulo',210,NULL),
(11,11,'Sala Comercial','alugado','88011020','SC','Florianópolis','Centro','Av. Central',311,'Sala 306'),
(12,12,'Terreno','vendido','89221010','SC','Joinville','Atiradores','Rua Rio Grande',412,NULL),
(13,13,'Apartamento','alugado','89201500','SC','Joinville','Costa e Silva','Rua Paraná',115,'Apto 504'),
(14,14,'Casa','vendido','89211500','SC','Joinville','Glória','Rua Bahia',216,NULL),
(15,15,'Sala Comercial','alugado','88011500','SC','Florianópolis','Trindade','Av. das Américas',317,'Sala 307'),
(16,16,'Terreno','vendido','89221500','SC','Joinville','Bom Retiro','Rua Amazonas',418,NULL),
(17,17,'Apartamento','alugado','89202000','SC','Joinville','Iririú','Rua Ceará',119,'Apto 505'),
(18,18,'Casa','vendido','89212050','SC','Joinville','Santa Catarina','Rua São Paulo',220,NULL),
(19,19,'Sala Comercial','alugado','88012020','SC','Florianópolis','Centro','Av. Central',321,'Sala 308'),
(20,20,'Terreno','vendido','89222010','SC','Joinville','Atiradores','Rua Rio Grande',422,NULL),
(21,21,'Apartamento','alugado','89202500','SC','Joinville','Costa e Silva','Rua Paraná',125,'Apto 506'),
(22,22,'Casa','vendido','89212500','SC','Joinville','Glória','Rua Bahia',226,NULL),
(23,23,'Sala Comercial','alugado','88012500','SC','Florianópolis','Trindade','Av. das Américas',327,'Sala 309'),
(24,24,'Terreno','vendido','89222500','SC','Joinville','Bom Retiro','Rua Amazonas',428,NULL),
(25,25,'Apartamento','alugado','89203000','SC','Joinville','Iririú','Rua Ceará',129,'Apto 507'),
(26,NULL,'Casa','disponivel','89213050','SC','Joinville','Santa Catarina','Rua São Paulo',230,NULL),
(27,NULL,'Sala Comercial','disponivel','88013020','SC','Florianópolis','Centro','Av. Central',331,'Sala 310'),
(28,NULL,'Terreno','disponivel','89223010','SC','Joinville','Atiradores','Rua Rio Grande',432,NULL),
(29,NULL,'Apartamento','disponivel','89203500','SC','Joinville','Costa e Silva','Rua Paraná',135,'Apto 508'),
(30,NULL,'Casa','disponivel','89213500','SC','Joinville','Glória','Rua Bahia',236,NULL),
(31,NULL,'Sala Comercial','disponivel','88013500','SC','Florianópolis','Trindade','Av. das Américas',337,'Sala 311'),
(32,NULL,'Terreno','disponivel','89223500','SC','Joinville','Bom Retiro','Rua Amazonas',438,NULL),
(33,NULL,'Apartamento','disponivel','89204000','SC','Joinville','Iririú','Rua Ceará',139,'Apto 509'),
(34,NULL,'Casa','disponivel','89214050','SC','Joinville','Santa Catarina','Rua São Paulo',240,NULL),
(35,NULL,'Sala Comercial','disponivel','88014020','SC','Florianópolis','Centro','Av. Central',341,'Sala 312'),
(36,NULL,'Terreno','disponivel','89224010','SC','Joinville','Atiradores','Rua Rio Grande',442,NULL),
(37,NULL,'Apartamento','disponivel','89204500','SC','Joinville','Costa e Silva','Rua Paraná',145,'Apto 510'),
(38,NULL,'Casa','disponivel','89214500','SC','Joinville','Glória','Rua Bahia',246,NULL),
(39,NULL,'Sala Comercial','disponivel','88014500','SC','Florianópolis','Trindade','Av. das Américas',347,'Sala 313'),
(40,NULL,'Terreno','disponivel','89224500','SC','Joinville','Bom Retiro','Rua Amazonas',448,NULL),
(41,NULL,'Apartamento','disponivel','89205000','SC','Joinville','Iririú','Rua Ceará',149,'Apto 511'),
(42,NULL,'Casa','disponivel','89215050','SC','Joinville','Santa Catarina','Rua São Paulo',250,NULL),
(43,NULL,'Sala Comercial','disponivel','88015020','SC','Florianópolis','Centro','Av. Central',351,'Sala 314'),
(44,NULL,'Terreno','disponivel','89225010','SC','Joinville','Atiradores','Rua Rio Grande',452,NULL),
(45,NULL,'Apartamento','disponivel','89205500','SC','Joinville','Costa e Silva','Rua Paraná',155,'Apto 512'),
(46,NULL,'Casa','disponivel','89215500','SC','Joinville','Glória','Rua Bahia',256,NULL);
/*!40000 ALTER TABLE `Imovel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-23 11:31:24
