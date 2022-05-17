-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: cafe_f4me
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `log_aktivitas`
--

DROP TABLE IF EXISTS `log_aktivitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_aktivitas` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(8) NOT NULL,
  `aktivitas` longtext NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  PRIMARY KEY (`id_log`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `log_aktivitas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_aktivitas`
--

LOCK TABLES `log_aktivitas` WRITE;
/*!40000 ALTER TABLE `log_aktivitas` DISABLE KEYS */;
INSERT INTO `log_aktivitas` VALUES (1,'U001','Login','2022-05-17','08:00:16'),(2,'U001','Login','2022-05-17','08:05:35'),(3,'U001','Login','2022-05-17','08:07:39'),(4,'U001','Insert User Iqbal Maulana','2022-05-17','08:09:50'),(5,'U001','Logout','2022-05-17','08:10:23'),(6,'U001','Login','2022-05-17','08:12:25'),(7,'U001','Hapus User Iqbal Maulana','2022-05-17','08:12:53'),(8,'U001','Insert User Iqbal Ahmad Maulana','2022-05-17','08:14:20'),(9,'U001','Logout','2022-05-17','08:14:32'),(10,'U002','Login','2022-05-17','08:19:15'),(11,'U002','Logout','2022-05-17','08:19:37'),(12,'U002','Login','2022-05-17','08:21:31'),(13,'U002','Logout','2022-05-17','08:24:24'),(14,'U003','Logout','2022-05-17','08:26:08'),(15,'U003','Login','2022-05-17','08:26:57'),(16,'U003','Login','2022-05-17','08:30:11'),(17,'U003','Login','2022-05-17','08:35:18'),(18,'U002','Login','2022-05-17','08:36:03'),(19,'U002','Login','2022-05-17','08:37:28'),(20,'U002','Logout','2022-05-17','08:38:23'),(21,'U001','Login','2022-05-17','08:39:05'),(22,'U001','Logout','2022-05-17','08:40:24'),(23,'U002','Login','2022-05-17','08:40:49'),(24,'U002','Insert Menu Burger','2022-05-17','08:42:21'),(25,'U002','Edit Menu Burger','2022-05-17','08:42:37'),(26,'U002','Hapus Menu Burger','2022-05-17','08:42:53'),(27,'U002','Insert Menu Burger','2022-05-17','08:43:32'),(28,'U002','Logout','2022-05-17','08:43:41'),(29,'U003','Login','2022-05-17','08:44:18'),(30,'U003','Login','2022-05-17','08:45:24'),(31,'U003','Logout','2022-05-17','08:45:52'),(32,'U003','Login','2022-05-17','08:55:30'),(33,'U003','Logout','2022-05-17','08:56:08'),(34,'U001','Login','2022-05-17','09:14:42'),(35,'U001','Edit User Abdul Hamid Yasir Alfalah','2022-05-17','09:14:53'),(36,'U001','Edit User Abdul Hamid Yasir Alfalah','2022-05-17','09:15:11'),(37,'U001','Logout','2022-05-17','09:15:16'),(38,'U003','Login','2022-05-17','09:21:03'),(39,'U003','Login','2022-05-17','09:22:55'),(40,'U003','Logout','2022-05-17','09:24:13'),(41,'U002','Login','2022-05-17','10:04:15'),(42,'U002','Login','2022-05-17','10:07:26'),(43,'U002','Logout','2022-05-17','10:07:31'),(44,'U001','Login','2022-05-17','10:08:53'),(45,'U001','Login','2022-05-17','10:11:39'),(46,'U001','Login','2022-05-17','10:13:03'),(47,'U001','Login','2022-05-17','10:14:21'),(48,'U003','Login','2022-05-17','10:28:11'),(49,'U003','Login','2022-05-17','10:58:13'),(50,'U003','Login','2022-05-17','10:58:59'),(51,'U003','Login','2022-05-17','11:05:31'),(52,'U003','Login','2022-05-17','11:07:20'),(53,'U003','Login','2022-05-17','11:09:01'),(54,'U003','Login','2022-05-17','11:35:18'),(55,'U003','Login','2022-05-17','11:38:43'),(56,'U003','Login','2022-05-17','11:40:21'),(57,'U003','Login','2022-05-17','01:28:59'),(58,'U003','Login','2022-05-17','01:33:10'),(59,'U003','Login','2022-05-17','01:39:03');
/*!40000 ALTER TABLE `log_aktivitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meja`
--

DROP TABLE IF EXISTS `meja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meja` (
  `no_meja` varchar(2) NOT NULL,
  `status` enum('Kosong','Terisi') NOT NULL,
  PRIMARY KEY (`no_meja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meja`
--

LOCK TABLES `meja` WRITE;
/*!40000 ALTER TABLE `meja` DISABLE KEYS */;
INSERT INTO `meja` VALUES ('01','Kosong'),('02','Kosong'),('03','Kosong'),('04','Kosong'),('05','Kosong'),('06','Kosong'),('07','Kosong'),('08','Kosong'),('09','Kosong'),('10','Kosong'),('11','Kosong'),('12','Kosong'),('13','Kosong'),('14','Kosong'),('15','Kosong'),('16','Kosong'),('17','Kosong'),('18','Kosong');
/*!40000 ALTER TABLE `meja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id_menu` varchar(8) NOT NULL,
  `nama_menu` varchar(35) NOT NULL,
  `kategori` enum('Makanan','Minuman') NOT NULL,
  `foto` longtext NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES ('MK001','Burger','Makanan','E:\\Projek Ukom - Hamid\\Projek Ukom\\Aplikasi F4MECafe Hamid XIIRPL2\\F4MECafe Hamid XIIRPL2\\bin\\Debug\\Icon\\001-fast-food.png',15000,10000);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(30) NOT NULL,
  `nama_pelanggan` varchar(35) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi` (
  `no_faktur` varchar(30) NOT NULL,
  `id_user` varchar(8) NOT NULL,
  `id_pelanggan` varchar(30) NOT NULL,
  `no_meja` varchar(2) NOT NULL,
  `id_menu` varchar(8) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `dibayar` int(11) NOT NULL,
  `kembali` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  PRIMARY KEY (`no_faktur`),
  KEY `id_user` (`id_user`),
  KEY `id_pelanggan` (`id_pelanggan`),
  KEY `id_menu` (`id_menu`),
  KEY `no_meja` (`no_meja`),
  CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transaksi_ibfk_5` FOREIGN KEY (`no_meja`) REFERENCES `meja` (`no_meja`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` varchar(8) NOT NULL,
  `nama_user` varchar(35) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('Admin','Manager','Kasir') NOT NULL,
  `foto` longtext NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('U001','Abdul Hamid Yasir Alfalah','085891089088','hamidadmin','admhmd123','Admin','C:\\Users\\LAB_RPL\\Downloads\\E5CFltjVkAYZYp8.jpg'),('U002','Aksa Mahawira Rahendra','0811218062020','aksaganteng','aksaman123','Manager','C:\\Users\\LAB_RPL\\Downloads\\5.JPG'),('U003','Iqbal Ahmad Maulana','0844449107823','Qball.Jr','iqbalkasir','Kasir','C:\\Users\\LAB_RPL\\Downloads\\037422700_1556746461-JOKOWI.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-17 15:12:58
