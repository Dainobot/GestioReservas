CREATE DATABASE  IF NOT EXISTS `reservas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `reservas`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: reservas
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `informacion_cliente`
--

DROP TABLE IF EXISTS `informacion_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacion_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `tarjeta` varchar(16) DEFAULT NULL,
  `cvv` varchar(4) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacion_cliente`
--

LOCK TABLES `informacion_cliente` WRITE;
/*!40000 ALTER TABLE `informacion_cliente` DISABLE KEYS */;
INSERT INTO `informacion_cliente` VALUES (1,'marcelo',NULL,'123',NULL,'mbdv50@yahoo.com.ar'),(2,'asasgas','1231231','123','313123','dainomarcelo@hotmail.com'),(3,'marcelo','1231231','2312','1130082816','mbdv50@yahoo.com.ar'),(4,'marcelo','1231231','1321','1130082816','dainomarcelo01@gmail.com'),(5,'marcelo','1231231','2312','1130082816','dainomarcelo@gmail.com'),(6,'marcelo','312312312412','123','414124124','dainomarcelo@gmail.com'),(7,'marcelo','1231231','123','1130082816','dainomarcelo@gmail.com'),(8,'marcelo','1231231','231','1130082816','ignacio.martin.daino@gmail.com'),(9,'marcelo','1231231','123','1130082816','mbdv50@yahoo.com.ar'),(10,'marcelo','1231231','1331','1130082816','mbdv50@yahoo.com.ar'),(11,'aafaf','a13131','133','3123123123','312313@fafasf'),(12,'nacho','123321','123','11133233','sagasgasgag@gmail'),(13,'nacho','12323321','1223','111332333','sagasgasgag@gmail'),(14,'nacho','1233223321','1332','123311322','sagasgfafafasgag@gmail'),(15,'nacho','1233223321','133','33323133','sagasgfafafasgag@gmail'),(16,'ignacio','7373733','737','116024098','igna@gmail.com');
/*!40000 ALTER TABLE `informacion_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `reserva_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `dia` date DEFAULT NULL,
  `horario` time DEFAULT NULL,
  `seleccion` varchar(50) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`reserva_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,NULL,NULL,'1111-11-11','11:11:00','PREMIUN',150),(2,NULL,'marcelo','2023-11-30','11:01:00','PREMIUN',150),(3,NULL,'nacho','2023-11-28','11:11:00','PREMIUN',150),(4,NULL,'nacho','1322-11-11','11:11:00','PREMIUN',150),(5,NULL,'nacho','3232-11-11','11:11:00','LOW COST',50),(6,NULL,'ignacio','2023-11-21','12:30:00','PREMIUN',150);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'123','123'),(2,'admin','admin'),(3,'marcelo','12345'),(4,'monica','12345'),(5,'marcelo','123');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'reservas'
--

--
-- Dumping routines for database 'reservas'
--
/*!50003 DROP PROCEDURE IF EXISTS `CalcularTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalcularTotal`()
BEGIN
    DECLARE precio_premium INT;
    DECLARE precio_lowcost INT;
    DECLARE total INT;

    SET precio_premium = 150;
    SET precio_lowcost = 50;

    SELECT SUM(CASE WHEN seleccion = 'PREMIUN' THEN precio
                    WHEN seleccion = 'LOW COST' THEN precio
               ELSE 0 END) INTO total
    FROM reserva;

    SELECT total AS 'Total a Pagar';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ContarHabitaciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ContarHabitaciones`()
BEGIN
    DECLARE premium_count INT;
    DECLARE lowcost_count INT;

    SELECT COUNT(*) INTO premium_count FROM Reserva WHERE seleccion = 'PREMIUN';
    SELECT COUNT(*) INTO lowcost_count FROM Reserva WHERE seleccion = 'LOW COST';

    SELECT premium_count AS 'Cantidad Premium', lowcost_count AS 'Cantidad LowCost';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VerificarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VerificarUsuario`(IN nombre_usuario VARCHAR(50), IN contrasena VARCHAR(50))
BEGIN
    DECLARE user_count INT;

    SELECT COUNT(*) INTO user_count
    FROM usuarios
    WHERE nombre = nombre_usuario AND password = contrasena;

    IF user_count > 0 THEN
        SELECT 'Inicio de sesión exitoso' AS Mensaje;
    ELSE
        SELECT 'Nombre de usuario o contraseña incorrectos' AS Mensaje;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20 21:14:28
