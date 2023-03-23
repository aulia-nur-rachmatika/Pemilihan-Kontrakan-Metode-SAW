-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for metodesaw
CREATE DATABASE IF NOT EXISTS `metodesaw` /*!40100 DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `metodesaw`;

-- Dumping structure for table metodesaw.alternatif
CREATE TABLE IF NOT EXISTS `alternatif` (
  `idalternatif` int NOT NULL AUTO_INCREMENT,
  `nmalternatif` varchar(50) COLLATE armscii8_bin DEFAULT NULL,
  PRIMARY KEY (`idalternatif`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Dumping data for table metodesaw.alternatif: ~2 rows (approximately)
INSERT INTO `alternatif` (`idalternatif`, `nmalternatif`) VALUES
	(1, 'legenasli'),
	(2, 'legenterfermentasi');

-- Dumping structure for table metodesaw.bobot
CREATE TABLE IF NOT EXISTS `bobot` (
  `idbobot` int NOT NULL,
  `idkriteria` int DEFAULT NULL,
  `valuee` decimal(20,6) DEFAULT NULL,
  PRIMARY KEY (`idbobot`),
  KEY `FK__kriteria` (`idkriteria`),
  CONSTRAINT `FK__kriteria` FOREIGN KEY (`idkriteria`) REFERENCES `kriteria` (`idkriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Dumping data for table metodesaw.bobot: ~5 rows (approximately)
INSERT INTO `bobot` (`idbobot`, `idkriteria`, `valuee`) VALUES
	(1, 1, 0.456000),
	(2, 2, 0.256000),
	(3, 3, 0.156000),
	(4, 4, 0.090000),
	(5, 5, 0.040000);

-- Dumping structure for table metodesaw.kriteria
CREATE TABLE IF NOT EXISTS `kriteria` (
  `idkriteria` int NOT NULL AUTO_INCREMENT,
  `nmkriteria` varchar(50) COLLATE armscii8_bin DEFAULT NULL,
  PRIMARY KEY (`idkriteria`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Dumping data for table metodesaw.kriteria: ~5 rows (approximately)
INSERT INTO `kriteria` (`idkriteria`, `nmkriteria`) VALUES
	(1, 'Kandungan Alkoohol'),
	(2, 'Rasa'),
	(3, 'Warna'),
	(4, 'Bau'),
	(5, 'Karakterisitik Air');

-- Dumping structure for table metodesaw.matrixkeputusan
CREATE TABLE IF NOT EXISTS `matrixkeputusan` (
  `idmatrix` int NOT NULL AUTO_INCREMENT,
  `idalternatif` int DEFAULT NULL,
  `idbobot` int DEFAULT NULL,
  `idskala` int DEFAULT NULL,
  PRIMARY KEY (`idmatrix`),
  KEY `FK__alternatif` (`idalternatif`),
  KEY `FK__bobot` (`idbobot`),
  KEY `FK__skala` (`idskala`),
  CONSTRAINT `FK__alternatif` FOREIGN KEY (`idalternatif`) REFERENCES `alternatif` (`idalternatif`),
  CONSTRAINT `FK__bobot` FOREIGN KEY (`idbobot`) REFERENCES `bobot` (`idbobot`),
  CONSTRAINT `FK__skala` FOREIGN KEY (`idskala`) REFERENCES `skala` (`idskala`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Dumping data for table metodesaw.matrixkeputusan: ~10 rows (approximately)
INSERT INTO `matrixkeputusan` (`idmatrix`, `idalternatif`, `idbobot`, `idskala`) VALUES
	(1, 1, 1, 1),
	(2, 1, 2, 1),
	(3, 1, 3, 1),
	(4, 1, 4, 1),
	(5, 1, 5, 1),
	(6, 2, 1, 2),
	(7, 2, 2, 2),
	(8, 2, 3, 2),
	(9, 2, 4, 2),
	(10, 2, 5, 2);

-- Dumping structure for view metodesaw.multimoora_1
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `multimoora_1` (
	`idmatrix` INT(10) NOT NULL,
	`idalternatif` INT(10) NOT NULL,
	`nmalternatif` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idkriteria` INT(10) NOT NULL,
	`nmkriteria` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idbobot` INT(10) NOT NULL,
	`value` DECIMAL(20,6) NULL,
	`nilai` INT(10) NULL,
	`keterangan` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`pra` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.multimoora_2
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `multimoora_2` (
	`idmatrix` INT(10) NOT NULL,
	`idalternatif` INT(10) NOT NULL,
	`nmalternatif` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idkriteria` INT(10) NOT NULL,
	`nmkriteria` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idbobot` INT(10) NOT NULL,
	`value` DECIMAL(20,6) NULL,
	`nilai` INT(10) NULL,
	`keterangan` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`pra` DOUBLE NULL,
	`normalisasi` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.multimoora_3
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `multimoora_3` (
	`idmatrix` INT(10) NOT NULL,
	`idalternatif` INT(10) NOT NULL,
	`nmalternatif` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idkriteria` INT(10) NOT NULL,
	`nmkriteria` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idbobot` INT(10) NOT NULL,
	`value` DECIMAL(20,6) NULL,
	`nilai` INT(10) NULL,
	`keterangan` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`pra` DOUBLE NULL,
	`normalisasi` DOUBLE NULL,
	`normalisasibobot` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.multimoora_4
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `multimoora_4` (
	`idalternatif` INT(10) NOT NULL,
	`hasil` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.nilaimax
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `nilaimax` (
	`idkriteria` INT(10) NOT NULL,
	`nmkriteria` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`maksimum` INT(10) NULL
) ENGINE=MyISAM;

-- Dumping structure for table metodesaw.skala
CREATE TABLE IF NOT EXISTS `skala` (
  `idskala` int NOT NULL AUTO_INCREMENT,
  `valuee` int DEFAULT NULL,
  `keterangan` varchar(50) COLLATE armscii8_bin DEFAULT NULL,
  PRIMARY KEY (`idskala`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Dumping data for table metodesaw.skala: ~2 rows (approximately)
INSERT INTO `skala` (`idskala`, `valuee`, `keterangan`) VALUES
	(1, 1, 'legenasli'),
	(2, 2, 'legenterfermentasi');

-- Dumping structure for view metodesaw.topsis_maxmin
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `topsis_maxmin` (
	`idmatrix` INT(10) NOT NULL,
	`idkriteria` INT(10) NOT NULL,
	`nmkriteria` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`maximum` DOUBLE NULL,
	`minimum` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.topsis_nilaiv
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `topsis_nilaiv` (
	`idalternatif` INT(10) NOT NULL,
	`dplus` DOUBLE NULL,
	`dpmin` DOUBLE NULL,
	`nilaiv` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.topsis_normalisasi
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `topsis_normalisasi` (
	`idmatrix` INT(10) NOT NULL,
	`idalternatif` INT(10) NOT NULL,
	`nmalternatif` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idkriteria` INT(10) NOT NULL,
	`nmkriteria` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idbobot` INT(10) NOT NULL,
	`value` DECIMAL(20,6) NULL,
	`nilai` INT(10) NULL,
	`keterangan` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`normalisasi` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.topsis_pembagi
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `topsis_pembagi` (
	`idkriteria` INT(10) NOT NULL,
	`nmkriteria` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`bagi` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.topsis_sipsin
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `topsis_sipsin` (
	`idalternatif` INT(10) NOT NULL,
	`dplus` DOUBLE NULL,
	`dpmin` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.topsis_terbobot
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `topsis_terbobot` (
	`idmatrix` INT(10) NOT NULL,
	`idalternatif` INT(10) NOT NULL,
	`nmalternatif` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idkriteria` INT(10) NOT NULL,
	`nmkriteria` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idbobot` INT(10) NOT NULL,
	`value` DECIMAL(20,6) NULL,
	`nilai` INT(10) NULL,
	`keterangan` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`normalisasi` DOUBLE NULL,
	`terbobot` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.vmatrixkeputusan
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vmatrixkeputusan` (
	`idmatrix` INT(10) NOT NULL,
	`idalternatif` INT(10) NOT NULL,
	`nmalternatif` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idkriteria` INT(10) NOT NULL,
	`nmkriteria` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idbobot` INT(10) NOT NULL,
	`value` DECIMAL(20,6) NULL,
	`nilai` INT(10) NULL,
	`keterangan` VARCHAR(50) NULL COLLATE 'armscii8_bin'
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.vnormalisasi
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vnormalisasi` (
	`idmatrix` INT(10) NOT NULL,
	`idalternatif` INT(10) NOT NULL,
	`nmalternatif` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idkriteria` INT(10) NOT NULL,
	`nmkriteria` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idbobot` INT(10) NOT NULL,
	`value` DECIMAL(20,6) NULL,
	`nilai` INT(10) NULL,
	`keterangan` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`normalisasi` DECIMAL(14,4) NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.vpranking
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vpranking` (
	`idmatrix` INT(10) NOT NULL,
	`idalternatif` INT(10) NOT NULL,
	`nmalternatif` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idkriteria` INT(10) NOT NULL,
	`nmkriteria` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idbobot` INT(10) NOT NULL,
	`value` DECIMAL(20,6) NULL,
	`nilai` INT(10) NULL,
	`keterangan` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`normalisasi` DECIMAL(14,4) NULL,
	`prarangking` DECIMAL(34,10) NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.vranking
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vranking` (
	`idalternatif` INT(10) NOT NULL,
	`nmalternatif` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`rangking` DECIMAL(56,10) NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.wp_jumbobot
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `wp_jumbobot` (
	`jumlah` DECIMAL(42,6) NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.wp_nilais
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `wp_nilais` (
	`idalternatif` INT(10) NOT NULL,
	`nmalternatif` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`nilaiS` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.wp_nilaiv
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `wp_nilaiv` (
	`idalternatif` INT(10) NOT NULL,
	`nmalternatif` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`nilaiV` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.wp_normalisasiterbobot
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `wp_normalisasiterbobot` (
	`idbobot` INT(10) NOT NULL,
	`idkriteria` INT(10) NULL,
	`valuee` DECIMAL(20,6) NULL,
	`jumlah` DECIMAL(42,6) NULL,
	`normalisasi_w` DECIMAL(30,10) NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.wp_pangkat
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `wp_pangkat` (
	`idmatrix` INT(10) NOT NULL,
	`idalternatif` INT(10) NOT NULL,
	`nmalternatif` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idkriteria` INT(10) NOT NULL,
	`nmkriteria` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`idbobot` INT(10) NOT NULL,
	`value` DECIMAL(20,6) NULL,
	`nilai` INT(10) NULL,
	`keterangan` VARCHAR(50) NULL COLLATE 'armscii8_bin',
	`normalisasi_w` DECIMAL(30,10) NULL,
	`pangkat` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.wp_sums
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `wp_sums` (
	`jum` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for view metodesaw.multimoora_1
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `multimoora_1`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `multimoora_1` AS select `vmatrixkeputusan`.`idmatrix` AS `idmatrix`,`vmatrixkeputusan`.`idalternatif` AS `idalternatif`,`vmatrixkeputusan`.`nmalternatif` AS `nmalternatif`,`vmatrixkeputusan`.`idkriteria` AS `idkriteria`,`vmatrixkeputusan`.`nmkriteria` AS `nmkriteria`,`vmatrixkeputusan`.`idbobot` AS `idbobot`,`vmatrixkeputusan`.`value` AS `value`,`vmatrixkeputusan`.`nilai` AS `nilai`,`vmatrixkeputusan`.`keterangan` AS `keterangan`,sqrt(sum(pow(`vmatrixkeputusan`.`nilai`,2))) AS `pra` from `vmatrixkeputusan` group by `vmatrixkeputusan`.`idkriteria`;

-- Dumping structure for view metodesaw.multimoora_2
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `multimoora_2`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `multimoora_2` AS select `vmatrixkeputusan`.`idmatrix` AS `idmatrix`,`vmatrixkeputusan`.`idalternatif` AS `idalternatif`,`vmatrixkeputusan`.`nmalternatif` AS `nmalternatif`,`vmatrixkeputusan`.`idkriteria` AS `idkriteria`,`vmatrixkeputusan`.`nmkriteria` AS `nmkriteria`,`vmatrixkeputusan`.`idbobot` AS `idbobot`,`vmatrixkeputusan`.`value` AS `value`,`vmatrixkeputusan`.`nilai` AS `nilai`,`vmatrixkeputusan`.`keterangan` AS `keterangan`,`multimoora_1`.`pra` AS `pra`,(`vmatrixkeputusan`.`nilai` / `multimoora_1`.`pra`) AS `normalisasi` from (`vmatrixkeputusan` join `multimoora_1`) where (`multimoora_1`.`idkriteria` = `vmatrixkeputusan`.`idkriteria`) group by `vmatrixkeputusan`.`idmatrix`;

-- Dumping structure for view metodesaw.multimoora_3
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `multimoora_3`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `multimoora_3` AS select `multimoora_2`.`idmatrix` AS `idmatrix`,`multimoora_2`.`idalternatif` AS `idalternatif`,`multimoora_2`.`nmalternatif` AS `nmalternatif`,`multimoora_2`.`idkriteria` AS `idkriteria`,`multimoora_2`.`nmkriteria` AS `nmkriteria`,`multimoora_2`.`idbobot` AS `idbobot`,`multimoora_2`.`value` AS `value`,`multimoora_2`.`nilai` AS `nilai`,`multimoora_2`.`keterangan` AS `keterangan`,`multimoora_2`.`pra` AS `pra`,`multimoora_2`.`normalisasi` AS `normalisasi`,(`multimoora_2`.`normalisasi` * `multimoora_2`.`value`) AS `normalisasibobot` from `multimoora_2` group by `multimoora_2`.`idmatrix`;

-- Dumping structure for view metodesaw.multimoora_4
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `multimoora_4`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `multimoora_4` AS select `multimoora_3`.`idalternatif` AS `idalternatif`,sum(`multimoora_3`.`normalisasibobot`) AS `hasil` from `multimoora_3` group by `multimoora_3`.`idalternatif`;

-- Dumping structure for view metodesaw.nilaimax
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `nilaimax`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `nilaimax` AS select `vmatrixkeputusan`.`idkriteria` AS `idkriteria`,`vmatrixkeputusan`.`nmkriteria` AS `nmkriteria`,max(`vmatrixkeputusan`.`nilai`) AS `maksimum` from `vmatrixkeputusan` group by `vmatrixkeputusan`.`idkriteria`;

-- Dumping structure for view metodesaw.topsis_maxmin
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `topsis_maxmin`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `topsis_maxmin` AS select `topsis_terbobot`.`idmatrix` AS `idmatrix`,`topsis_terbobot`.`idkriteria` AS `idkriteria`,`topsis_terbobot`.`nmkriteria` AS `nmkriteria`,max(`topsis_terbobot`.`terbobot`) AS `maximum`,min(`topsis_terbobot`.`terbobot`) AS `minimum` from `topsis_terbobot` group by `topsis_terbobot`.`idkriteria`;

-- Dumping structure for view metodesaw.topsis_nilaiv
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `topsis_nilaiv`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `topsis_nilaiv` AS select `topsis_sipsin`.`idalternatif` AS `idalternatif`,`topsis_sipsin`.`dplus` AS `dplus`,`topsis_sipsin`.`dpmin` AS `dpmin`,(`topsis_sipsin`.`dpmin` / (`topsis_sipsin`.`dplus` * `topsis_sipsin`.`dpmin`)) AS `nilaiv` from `topsis_sipsin` group by `topsis_sipsin`.`idalternatif`;

-- Dumping structure for view metodesaw.topsis_normalisasi
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `topsis_normalisasi`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `topsis_normalisasi` AS select `vmatrixkeputusan`.`idmatrix` AS `idmatrix`,`vmatrixkeputusan`.`idalternatif` AS `idalternatif`,`vmatrixkeputusan`.`nmalternatif` AS `nmalternatif`,`vmatrixkeputusan`.`idkriteria` AS `idkriteria`,`vmatrixkeputusan`.`nmkriteria` AS `nmkriteria`,`vmatrixkeputusan`.`idbobot` AS `idbobot`,`vmatrixkeputusan`.`value` AS `value`,`vmatrixkeputusan`.`nilai` AS `nilai`,`vmatrixkeputusan`.`keterangan` AS `keterangan`,(`vmatrixkeputusan`.`nilai` / `topsis_pembagi`.`bagi`) AS `normalisasi` from (`vmatrixkeputusan` join `topsis_pembagi`) where (`topsis_pembagi`.`idkriteria` = `vmatrixkeputusan`.`idkriteria`) group by `vmatrixkeputusan`.`idmatrix`;

-- Dumping structure for view metodesaw.topsis_pembagi
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `topsis_pembagi`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `topsis_pembagi` AS select `vmatrixkeputusan`.`idkriteria` AS `idkriteria`,`vmatrixkeputusan`.`nmkriteria` AS `nmkriteria`,sqrt(sum(pow(`vmatrixkeputusan`.`nilai`,2))) AS `bagi` from `vmatrixkeputusan` group by `vmatrixkeputusan`.`idkriteria`;

-- Dumping structure for view metodesaw.topsis_sipsin
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `topsis_sipsin`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `topsis_sipsin` AS select `topsis_terbobot`.`idalternatif` AS `idalternatif`,sqrt(sum(pow((`topsis_maxmin`.`maximum` - `topsis_terbobot`.`terbobot`),2))) AS `dplus`,sqrt(sum(pow((`topsis_maxmin`.`minimum` - `topsis_terbobot`.`terbobot`),2))) AS `dpmin` from (`topsis_terbobot` join `topsis_maxmin`) where (`topsis_terbobot`.`idkriteria` = `topsis_maxmin`.`idkriteria`) group by `topsis_terbobot`.`idalternatif`;

-- Dumping structure for view metodesaw.topsis_terbobot
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `topsis_terbobot`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `topsis_terbobot` AS select `topsis_normalisasi`.`idmatrix` AS `idmatrix`,`topsis_normalisasi`.`idalternatif` AS `idalternatif`,`topsis_normalisasi`.`nmalternatif` AS `nmalternatif`,`topsis_normalisasi`.`idkriteria` AS `idkriteria`,`topsis_normalisasi`.`nmkriteria` AS `nmkriteria`,`topsis_normalisasi`.`idbobot` AS `idbobot`,`topsis_normalisasi`.`value` AS `value`,`topsis_normalisasi`.`nilai` AS `nilai`,`topsis_normalisasi`.`keterangan` AS `keterangan`,`topsis_normalisasi`.`normalisasi` AS `normalisasi`,(`bobot`.`valuee` * `topsis_normalisasi`.`normalisasi`) AS `terbobot` from (`topsis_normalisasi` join `bobot`) where (0 <> `bobot`.`idkriteria`) group by `topsis_normalisasi`.`idmatrix`;

-- Dumping structure for view metodesaw.vmatrixkeputusan
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vmatrixkeputusan`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vmatrixkeputusan` AS select `matrixkeputusan`.`idmatrix` AS `idmatrix`,`alternatif`.`idalternatif` AS `idalternatif`,`alternatif`.`nmalternatif` AS `nmalternatif`,`kriteria`.`idkriteria` AS `idkriteria`,`kriteria`.`nmkriteria` AS `nmkriteria`,`bobot`.`idbobot` AS `idbobot`,`bobot`.`valuee` AS `value`,`skala`.`valuee` AS `nilai`,`skala`.`keterangan` AS `keterangan` from ((((`matrixkeputusan` join `skala`) join `bobot`) join `kriteria`) join `alternatif`) where ((`matrixkeputusan`.`idalternatif` = `alternatif`.`idalternatif`) and (`matrixkeputusan`.`idbobot` = `bobot`.`idbobot`) and (`matrixkeputusan`.`idskala` = `skala`.`idskala`) and (`kriteria`.`idkriteria` = `bobot`.`idkriteria`));

-- Dumping structure for view metodesaw.vnormalisasi
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vnormalisasi`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vnormalisasi` AS select `vmatrixkeputusan`.`idmatrix` AS `idmatrix`,`vmatrixkeputusan`.`idalternatif` AS `idalternatif`,`vmatrixkeputusan`.`nmalternatif` AS `nmalternatif`,`vmatrixkeputusan`.`idkriteria` AS `idkriteria`,`vmatrixkeputusan`.`nmkriteria` AS `nmkriteria`,`vmatrixkeputusan`.`idbobot` AS `idbobot`,`vmatrixkeputusan`.`value` AS `value`,`vmatrixkeputusan`.`nilai` AS `nilai`,`vmatrixkeputusan`.`keterangan` AS `keterangan`,(`vmatrixkeputusan`.`nilai` / `nilaimax`.`maksimum`) AS `normalisasi` from (`vmatrixkeputusan` join `nilaimax`) where (`nilaimax`.`idkriteria` = `vmatrixkeputusan`.`idkriteria`) group by `vmatrixkeputusan`.`idmatrix`;

-- Dumping structure for view metodesaw.vpranking
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vpranking`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vpranking` AS select `vnormalisasi`.`idmatrix` AS `idmatrix`,`vnormalisasi`.`idalternatif` AS `idalternatif`,`vnormalisasi`.`nmalternatif` AS `nmalternatif`,`vnormalisasi`.`idkriteria` AS `idkriteria`,`vnormalisasi`.`nmkriteria` AS `nmkriteria`,`vnormalisasi`.`idbobot` AS `idbobot`,`vnormalisasi`.`value` AS `value`,`vnormalisasi`.`nilai` AS `nilai`,`vnormalisasi`.`keterangan` AS `keterangan`,`vnormalisasi`.`normalisasi` AS `normalisasi`,(`vnormalisasi`.`value` * `vnormalisasi`.`normalisasi`) AS `prarangking` from `vnormalisasi` group by `vnormalisasi`.`idmatrix`;

-- Dumping structure for view metodesaw.vranking
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vranking`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vranking` AS select `vpranking`.`idalternatif` AS `idalternatif`,`vpranking`.`nmalternatif` AS `nmalternatif`,sum(`vpranking`.`prarangking`) AS `rangking` from `vpranking` group by `vpranking`.`idalternatif`;

-- Dumping structure for view metodesaw.wp_jumbobot
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `wp_jumbobot`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `wp_jumbobot` AS select sum(`bobot`.`valuee`) AS `jumlah` from `bobot`;

-- Dumping structure for view metodesaw.wp_nilais
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `wp_nilais`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `wp_nilais` AS select `wp_pangkat`.`idalternatif` AS `idalternatif`,`wp_pangkat`.`nmalternatif` AS `nmalternatif`,exp(sum(log(`wp_pangkat`.`pangkat`))) AS `nilaiS` from `wp_pangkat` group by `wp_pangkat`.`idalternatif`;

-- Dumping structure for view metodesaw.wp_nilaiv
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `wp_nilaiv`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `wp_nilaiv` AS select `wp_nilais`.`idalternatif` AS `idalternatif`,`wp_nilais`.`nmalternatif` AS `nmalternatif`,(`wp_nilais`.`nilaiS` / `wp_sums`.`jum`) AS `nilaiV` from (`wp_nilais` join `wp_sums`);

-- Dumping structure for view metodesaw.wp_normalisasiterbobot
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `wp_normalisasiterbobot`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `wp_normalisasiterbobot` AS select `bobot`.`idbobot` AS `idbobot`,`bobot`.`idkriteria` AS `idkriteria`,`bobot`.`valuee` AS `valuee`,`wp_jumbobot`.`jumlah` AS `jumlah`,(`bobot`.`valuee` / `wp_jumbobot`.`jumlah`) AS `normalisasi_w` from (`bobot` join `wp_jumbobot`);

-- Dumping structure for view metodesaw.wp_pangkat
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `wp_pangkat`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `wp_pangkat` AS select `vmatrixkeputusan`.`idmatrix` AS `idmatrix`,`vmatrixkeputusan`.`idalternatif` AS `idalternatif`,`vmatrixkeputusan`.`nmalternatif` AS `nmalternatif`,`vmatrixkeputusan`.`idkriteria` AS `idkriteria`,`vmatrixkeputusan`.`nmkriteria` AS `nmkriteria`,`vmatrixkeputusan`.`idbobot` AS `idbobot`,`vmatrixkeputusan`.`value` AS `value`,`vmatrixkeputusan`.`nilai` AS `nilai`,`vmatrixkeputusan`.`keterangan` AS `keterangan`,`wp_normalisasiterbobot`.`normalisasi_w` AS `normalisasi_w`,pow(`vmatrixkeputusan`.`nilai`,`wp_normalisasiterbobot`.`normalisasi_w`) AS `pangkat` from (`vmatrixkeputusan` join `wp_normalisasiterbobot`) where (`wp_normalisasiterbobot`.`idkriteria` = `vmatrixkeputusan`.`idkriteria`) group by `vmatrixkeputusan`.`idmatrix`;

-- Dumping structure for view metodesaw.wp_sums
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `wp_sums`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `wp_sums` AS select sum(`wp_nilais`.`nilaiS`) AS `jum` from `wp_nilais`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
