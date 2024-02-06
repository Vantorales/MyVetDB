-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: myvetdb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Dumping data for table `diagnostico`
--

LOCK TABLES `diagnostico` WRITE;
/*!40000 ALTER TABLE `diagnostico` DISABLE KEYS */;
INSERT INTO `diagnostico` VALUES (1,'2023-09-27 10:00:00','Diagnóstico para Max',1,1),(2,'2023-09-28 11:30:00','Diagnóstico para Luna',2,2),(3,'2023-09-29 09:15:00','Diagnóstico para Rocky',3,3),(4,'2023-09-30 14:00:00','Diagnóstico para Buddy',4,4),(5,'2023-10-01 16:30:00','Diagnóstico para Mia',5,5),(6,'2023-10-02 09:45:00','Diagnóstico para Lucas',6,6),(7,'2023-10-03 14:15:00','Diagnóstico para Lola',7,7),(8,'2023-10-04 11:00:00','Diagnóstico para Toby',8,8),(9,'2023-10-05 13:30:00','Diagnóstico para Nina',5,9),(10,'2023-10-06 10:30:00','Diagnóstico para Leo',10,10),(11,'2023-10-07 12:45:00','Diagnóstico para Milo',11,11),(12,'2023-10-08 15:00:00','Diagnóstico para Coco',12,12),(13,'2023-10-09 08:15:00','Diagnóstico para Bella',13,13),(14,'2023-10-10 17:00:00','Diagnóstico para Tina',14,14),(15,'2023-10-11 10:45:00','Diagnóstico para Rocky',15,15),(16,'2023-10-12 16:30:00','Diagnóstico para Max',5,16),(17,'2023-10-13 14:00:00','Diagnóstico para Luna',17,17),(18,'2023-10-14 11:15:00','Diagnóstico para Cleo',18,18),(19,'2023-10-15 09:30:00','Diagnóstico para Sofía',19,19),(20,'2023-10-16 12:30:00','Diagnóstico para Leo',20,20);
/*!40000 ALTER TABLE `diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Juan','Pérez','Cardiología'),(2,'María','González','Dermatología'),(3,'Pedro','Ramírez','Cirugía'),(4,'Laura','Martínez','Oftalmología'),(5,'Carlos','López','Neurología'),(6,'Sofía','Fernández','Endocrinología'),(7,'Luis','Gómez','Ortopedia'),(8,'Ana','Rodríguez','Oncología'),(9,'Ricardo','Sánchez','Radiología'),(10,'Mónica','Díaz','Nutrición'),(11,'Miguel','Ferrer','Traumatología'),(12,'Valeria','Torres','Odontología'),(13,'Eduardo','Ortega','Dermatología'),(14,'Isabel','Luna','Oncología'),(15,'Gabriel','Silva','Dermatología'),(16,'Carolina','Molina','Oftalmología'),(17,'Antonio','Santos','Cirugía'),(18,'Carmen','Hernández','Cardiología'),(19,'Rafael','Vargas','Endocrinología'),(20,'Patricia','Rojas','Radiología');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dueño`
--

LOCK TABLES `dueño` WRITE;
/*!40000 ALTER TABLE `dueño` DISABLE KEYS */;
INSERT INTO `dueño` VALUES (1,'Ana','López','Calle 123, Ciudad','123-456-7890'),(2,'Carlos','Martínez','Avenida XYZ, Pueblo','987-654-3210'),(3,'Laura','Rodríguez','Calle Principal, Villa','555-123-4567'),(4,'Miguel','García','Av. Central, Barrio','111-222-3333'),(5,'Sofía','Fernández','Calle 456, Localidad','777-888-9999'),(6,'Luis','Gómez','Carrera 789, Colonia','555-666-7777'),(7,'Ricardo','Sánchez','Avenida ABC, Pueblo','999-888-7777'),(8,'Mónica','Díaz','Calle 987, Villa','444-333-2222'),(9,'Valeria','Torres','Calle XYZ, Localidad','222-111-4444'),(10,'Eduardo','Ortega','Av. 1234, Ciudad','333-222-1111'),(11,'Isabel','Luna','Carrera 567, Barrio','888-777-6666'),(12,'Gabriel','Silva','Calle ABC, Pueblo','777-666-5555'),(13,'Carolina','Molina','Av. 4567, Villa','666-555-4444'),(14,'Antonio','Santos','Calle 345, Ciudad','555-444-3333'),(15,'Carmen','Hernández','Av. XYZ, Localidad','444-333-2222'),(16,'Rafael','Vargas','Carrera 789, Colonia','333-222-1111'),(17,'Patricia','Rojas','Calle 123, Pueblo','111-222-3333'),(18,'José','López','Av. ABC, Villa','444-555-6666'),(19,'Alicia','Pérez','Calle 678, Ciudad','555-666-7777'),(20,'Andrés','González','Carrera 1234, Barrio','777-888-9999');
/*!40000 ALTER TABLE `dueño` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `insumo`
--

LOCK TABLES `insumo` WRITE;
/*!40000 ALTER TABLE `insumo` DISABLE KEYS */;
INSERT INTO `insumo` VALUES (1,'Vacuna para perros',100,15.00),(2,'Jeringa',200,2.50),(3,'Alimento para gatos',50,10.00),(4,'Vendaje',150,4.00),(5,'Antipulgas',80,8.50),(6,'Vitaminas para perros',90,12.00),(7,'Analgésicos',120,6.75),(8,'Shampoo para gatos',40,7.25),(9,'Toallas quirúrgicas',250,3.50),(10,'Collares antipulgas',70,9.75),(11,'Vacuna para gatos',80,14.00),(12,'Guantes médicos',300,4.25),(13,'Alimento para conejos',30,11.50),(14,'Jaulas para mascotas',10,35.00),(15,'Termómetros digitales',50,5.50),(16,'Agua oxigenada',100,2.00),(17,'Suturas',60,8.00),(18,'Esparadrapo',180,2.25),(19,'Pipetas antipulgas',45,11.75),(20,'Pañales para perros',25,6.50);
/*!40000 ALTER TABLE `insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `insumo_diagnostico`
--

LOCK TABLES `insumo_diagnostico` WRITE;
/*!40000 ALTER TABLE `insumo_diagnostico` DISABLE KEYS */;
INSERT INTO `insumo_diagnostico` VALUES (5,1),(10,2),(12,3),(2,4),(4,4),(11,5),(6,6),(1,7),(3,8),(9,9),(8,10),(7,11),(15,13),(14,14),(13,15);
/*!40000 ALTER TABLE `insumo_diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `insumo_proveedor`
--

LOCK TABLES `insumo_proveedor` WRITE;
/*!40000 ALTER TABLE `insumo_proveedor` DISABLE KEYS */;
INSERT INTO `insumo_proveedor` VALUES (3,1),(12,2),(10,3),(15,3),(14,4),(2,5),(6,6),(7,7),(8,8),(5,9),(4,10),(1,11),(11,11),(13,12),(9,13);
/*!40000 ALTER TABLE `insumo_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Max',3,'Perro',10.50,1),(2,'Luna',2,'Gato',5.20,2),(3,'Rocky',5,'Conejo',2.10,3),(4,'Buddy',1,'Perro',7.00,4),(5,'Mia',4,'Gato',6.30,5),(6,'Lucas',2,'Perro',8.50,6),(7,'Lola',3,'Gato',4.80,7),(8,'Toby',1,'Perro',6.20,8),(9,'Nina',6,'Conejo',2.30,9),(10,'Leo',2,'Perro',9.70,10),(11,'Milo',7,'Gato',5.50,11),(12,'Coco',1,'Perro',6.90,12),(13,'Bella',4,'Gato',5.10,13),(14,'Tina',3,'Perro',8.40,14),(15,'Rocky',5,'Gato',6.60,15),(16,'Max',2,'Perro',11.20,16),(17,'Luna',4,'Gato',5.70,17),(18,'Cleo',1,'Perro',9.30,18),(19,'Sofía',5,'Gato',4.50,19),(20,'Leo',3,'Perro',7.80,20);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Proveedor1','111-222-3333'),(2,'Proveedor2','444-555-6666'),(3,'Proveedor3','777-888-9999'),(4,'Proveedor4','888-777-6666'),(5,'Proveedor5','555-444-3333'),(6,'Proveedor6','222-333-4444'),(7,'Proveedor7','666-777-8888'),(8,'Proveedor8','999-888-7777'),(9,'Proveedor9','777-555-4444'),(10,'Proveedor10','333-222-1111'),(11,'Proveedor11','555-777-9999'),(12,'Proveedor12','444-666-8888'),(13,'Proveedor13','111-555-3333'),(14,'Proveedor14','999-777-5555'),(15,'Proveedor15','222-444-6666'),(16,'Proveedor16','888-333-7777'),(17,'Proveedor17','666-444-2222'),(18,'Proveedor18','555-333-1111'),(19,'Proveedor19','444-777-9999'),(20,'Proveedor20','777-111-3333');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'2023-10-05','10:30:00','Pendiente','Control',50,1,1,1),(2,'2023-10-06','15:00:00','Confirmado','Consulta',60,2,2,2),(3,'2023-10-07','14:45:00','Cancelado','Consulta',55,3,3,3),(4,'2023-10-08','09:00:00','Confirmado','Control',45,4,4,4),(5,'2023-10-09','11:15:00','Pendiente','Consulta',65,5,5,5),(6,'2023-10-10','16:30:00','Pendiente','Control',50,6,6,6),(7,'2023-10-11','08:45:00','Confirmado','Consulta',60,7,7,7),(8,'2023-10-12','12:30:00','Cancelado','Consulta',55,8,8,8),(9,'2023-10-13','14:00:00','Confirmado','Control',45,9,9,9),(10,'2023-10-14','10:30:00','Pendiente','Consulta',65,10,10,10),(11,'2023-10-15','15:15:00','Pendiente','Control',50,11,11,11),(12,'2023-10-16','08:00:00','Confirmado','Consulta',60,12,12,12),(13,'2023-10-17','13:45:00','Cancelado','Consulta',55,13,13,13),(14,'2023-10-18','14:30:00','Confirmado','Control',45,14,14,14),(15,'2023-10-19','11:00:00','Pendiente','Consulta',65,15,15,15),(16,'2023-10-20','16:00:00','Pendiente','Control',50,16,16,16),(17,'2023-10-21','09:45:00','Confirmado','Consulta',60,17,17,17),(18,'2023-10-22','12:15:00','Cancelado','Consulta',55,18,18,18),(19,'2023-10-23','14:45:00','Confirmado','Control',45,19,19,19),(20,'2023-10-24','10:00:00','Pendiente','Consulta',65,20,20,20);
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07  3:31:43
