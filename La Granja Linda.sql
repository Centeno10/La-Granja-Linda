-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: la_granja_linda
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan Pérez','juan.perez@gmail.com','987654321'),(2,'Ana Gómez','ana.gomez@hotmail.com','912345678'),(3,'Luis Torres','luis.torres@yahoo.com','934567890'),(4,'María Castro','maria.castro@gmail.com','956789123'),(5,'Pedro Ruiz','pedro.ruiz@gmail.com','923456789'),(6,'Laura Mendoza','laura.mendoza@yahoo.com','987112233'),(7,'Felipe García','felipe.garcia@hotmail.com','945612789'),(8,'Carla Sánchez','carla.sanchez@gmail.com','987321456'),(9,'Ricardo Reyes','ricardo.reyes@gmail.com','976541239'),(10,'Sofía Morales','sofia.morales@hotmail.com','978623154');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itempedido`
--

DROP TABLE IF EXISTS `itempedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itempedido` (
  `idItem` int NOT NULL AUTO_INCREMENT,
  `pedidoID` int DEFAULT NULL,
  `productoID` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precioUnitario` float DEFAULT NULL,
  PRIMARY KEY (`idItem`),
  KEY `pedidoID` (`pedidoID`),
  KEY `productoID` (`productoID`),
  CONSTRAINT `itempedido_ibfk_1` FOREIGN KEY (`pedidoID`) REFERENCES `pedido` (`idPedido`),
  CONSTRAINT `itempedido_ibfk_2` FOREIGN KEY (`productoID`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itempedido`
--

LOCK TABLES `itempedido` WRITE;
/*!40000 ALTER TABLE `itempedido` DISABLE KEYS */;
INSERT INTO `itempedido` VALUES (1,1,1,1,45),(2,1,9,2,7),(3,2,2,1,25),(4,2,10,3,3),(5,3,4,1,10),(6,4,5,2,18),(7,5,3,4,15),(8,6,6,1,22),(9,7,7,2,12),(10,8,8,3,8);
/*!40000 ALTER TABLE `itempedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesa`
--

DROP TABLE IF EXISTS `mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesa` (
  `idMesa` int NOT NULL AUTO_INCREMENT,
  `numeroMesa` int DEFAULT NULL,
  `capacidad` int DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idMesa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesa`
--

LOCK TABLES `mesa` WRITE;
/*!40000 ALTER TABLE `mesa` DISABLE KEYS */;
INSERT INTO `mesa` VALUES (1,1,4,'Ocupada'),(2,2,6,'Disponible'),(3,3,2,'Ocupada'),(4,4,8,'Disponible'),(5,5,4,'Ocupada'),(6,6,2,'Disponible'),(7,7,6,'Ocupada'),(8,8,4,'Disponible'),(9,9,6,'Ocupada'),(10,10,2,'Disponible');
/*!40000 ALTER TABLE `mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `idPago` int NOT NULL AUTO_INCREMENT,
  `pedidoID` int DEFAULT NULL,
  `monto` float DEFAULT NULL,
  `metodoPago` varchar(50) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idPago`),
  KEY `pedidoID` (`pedidoID`),
  CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`pedidoID`) REFERENCES `pedido` (`idPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,1,45,'Tarjeta de Crédito','Pagado'),(2,2,25,'Efectivo','Pendiente'),(3,3,15,'Tarjeta de Débito','Pagado'),(4,4,18,'Efectivo','Pendiente'),(5,5,45,'Tarjeta de Crédito','Pagado'),(6,6,12,'Efectivo','Pendiente'),(7,7,22,'Tarjeta de Débito','Pagado'),(8,8,10,'Efectivo','Pendiente'),(9,9,8,'Tarjeta de Crédito','Pagado'),(10,10,25,'Efectivo','Pendiente');
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idPedido` int NOT NULL AUTO_INCREMENT,
  `fechaCreacion` datetime DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `clienteID` int DEFAULT NULL,
  `mesaID` int DEFAULT NULL,
  `usuarioID` int DEFAULT NULL,
  PRIMARY KEY (`idPedido`),
  KEY `clienteID` (`clienteID`),
  KEY `mesaID` (`mesaID`),
  KEY `usuarioID` (`usuarioID`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`clienteID`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`mesaID`) REFERENCES `mesa` (`idMesa`),
  CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`usuarioID`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2024-10-25 13:30:00','En preparación',1,1,2),(2,'2024-10-25 14:00:00','Entregado',2,2,2),(3,'2024-10-25 14:15:00','En espera',3,3,3),(4,'2024-10-25 15:00:00','Cancelado',4,4,4),(5,'2024-10-25 15:30:00','Entregado',5,5,5),(6,'2024-10-25 16:00:00','En preparación',6,6,6),(7,'2024-10-25 16:30:00','Entregado',7,7,7),(8,'2024-10-25 17:00:00','En espera',8,8,8),(9,'2024-10-25 17:30:00','Entregado',9,9,9),(10,'2024-10-25 18:00:00','Cancelado',10,10,10);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `precio` float DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Pollo a la brasa','Pollo entero con papas fritas',45,30),(2,'1/2 Pollo a la brasa','Medio pollo con papas fritas',25,40),(3,'1/4 Pollo a la brasa','Cuarto de pollo con papas fritas',15,50),(4,'Salchipapa','Salchichas con papas fritas',10,60),(5,'Pollo broaster','Pollo broaster con ensalada',18,35),(6,'Alitas BBQ','Alitas de pollo con salsa BBQ',22,20),(7,'Anticuchos','Anticuchos con papas y ensalada',12,25),(8,'Papa rellena','Papa rellena con ensalada',8,45),(9,'Inka Cola 1L','Botella de Inka Cola de 1 litro',7,100),(10,'Chicha Morada','Vaso de chicha morada',3,80);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Claudio','Administrador','claudio123'),(2,'Angel','Administrador','angel123'),(3,'Stephano','Administrador','Leones11'),(4,'Brandoll','Administrador','brandoll123'),(5,'Camila Ortega','Cajero','cajero321'),(6,'Laura','Cajero','cajero896'),(7,'Laura Rojas','Mesero','mesero654'),(8,'Diego León','Cocinero','cocinero987'),(9,'Valeria Paredes','Cocinero','cocinero123'),(10,'Daniela Torres','Mesero','mesero111');
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

-- Dump completed on 2024-10-26 16:34:37
