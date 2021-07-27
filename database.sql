-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table iot-server.devices
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `field_1` varchar(50) DEFAULT NULL,
  `field_2` varchar(50) DEFAULT NULL,
  `field_3` varchar(50) DEFAULT NULL,
  `field_4` varchar(50) DEFAULT NULL,
  `field_5` varchar(50) DEFAULT NULL,
  `field_6` varchar(50) DEFAULT NULL,
  `field_7` varchar(50) DEFAULT NULL,
  `field_8` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table iot-server.devices: ~0 rows (approximately)
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` (`id`, `name`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `created_at`, `updated_at`) VALUES
	(1, 'sensor1', 'Suhu', 'pH', 'Humidity', 'Liquid', NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;

-- Dumping structure for table iot-server.device_logs
CREATE TABLE IF NOT EXISTS `device_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device_id` int(11) unsigned NOT NULL,
  `field_1` float DEFAULT NULL,
  `field_2` float DEFAULT NULL,
  `field_3` float DEFAULT NULL,
  `field_4` float DEFAULT NULL,
  `field_5` float DEFAULT NULL,
  `field_6` float DEFAULT NULL,
  `field_7` float DEFAULT NULL,
  `field_8` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `device_id` (`device_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table iot-server.device_logs: ~0 rows (approximately)
/*!40000 ALTER TABLE `device_logs` DISABLE KEYS */;
INSERT INTO `device_logs` (`id`, `device_id`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `created_at`, `updated_at`) VALUES
	(1, 1, 100, 140, 300, NULL, NULL, NULL, NULL, NULL, '2021-07-27 03:36:13', '2021-07-27 03:36:13'),
	(2, 1, 130, 200, 300, NULL, NULL, NULL, NULL, NULL, '2021-07-27 03:36:43', '2021-07-27 03:36:43'),
	(3, 1, 90, 241, 300, NULL, NULL, NULL, NULL, NULL, '2021-07-27 03:37:15', '2021-07-27 03:37:15'),
	(4, 1, 300, 555, 300, NULL, NULL, NULL, NULL, NULL, '2021-07-27 04:07:54', '2021-07-27 04:07:54'),
	(5, 1, 200, 333, 300, NULL, NULL, NULL, NULL, NULL, '2021-07-27 04:07:59', '2021-07-27 04:07:59'),
	(6, 1, 250, 211, 300, NULL, NULL, NULL, NULL, NULL, '2021-07-27 04:08:03', '2021-07-27 04:08:03');
/*!40000 ALTER TABLE `device_logs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
