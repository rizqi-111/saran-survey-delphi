-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.0.45-community-nt-log - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             6.0.0.4046
-- Date/time:                    2016-09-07 23:01:27
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for db_balai_veteriner
CREATE DATABASE IF NOT EXISTS `db_balai_veteriner` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_balai_veteriner`;


-- Dumping structure for table db_balai_veteriner.tbl_01_pelayanan
CREATE TABLE IF NOT EXISTS `tbl_01_pelayanan` (
  `puas1` double default '0',
  `tidak_puas1` double default '0',
  `tgl` date default '0000-00-00',
  `bulan` varchar(20) default '',
  `tahun` varchar(20) default '',
  `jam` time default '00:00:00',
  `inputd` date default '0000-00-00',
  `inputw` time default '00:00:00',
  `no_urut` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`no_urut`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table db_balai_veteriner.tbl_01_pelayanan: ~25 rows (approximately)
/*!40000 ALTER TABLE `tbl_01_pelayanan` DISABLE KEYS */;
INSERT INTO `tbl_01_pelayanan` (`puas1`, `tidak_puas1`, `tgl`, `bulan`, `tahun`, `jam`, `inputd`, `inputw`, `no_urut`) VALUES
	(1, 0, '2016-08-30', '8', '2016', '15:36:04', '2016-08-30', '15:36:04', 1),
	(1, 0, '2016-08-30', '8', '2016', '15:36:05', '2016-08-30', '15:36:05', 2),
	(1, 0, '2016-08-30', '8', '2016', '15:36:06', '2016-08-30', '15:36:06', 3),
	(1, 0, '2016-08-30', '8', '2016', '15:36:06', '2016-08-30', '15:36:06', 4),
	(1, 0, '2016-08-30', '8', '2016', '15:36:07', '2016-08-30', '15:36:07', 5),
	(0, 1, '2016-08-30', '8', '2016', '15:36:08', '2016-08-30', '15:36:08', 6),
	(0, 1, '2016-08-30', '8', '2016', '15:36:09', '2016-08-30', '15:36:09', 7),
	(0, 1, '2016-08-30', '8', '2016', '15:36:10', '2016-08-30', '15:36:10', 8),
	(0, 1, '2016-08-30', '8', '2016', '15:36:11', '2016-08-30', '15:36:11', 9),
	(0, 1, '2016-08-30', '8', '2016', '15:36:11', '2016-08-30', '15:36:11', 10),
	(1, 0, '2016-08-30', '8', '2016', '15:36:12', '2016-08-30', '15:36:12', 11),
	(1, 0, '2016-08-30', '8', '2016', '15:36:13', '2016-08-30', '15:36:13', 12),
	(1, 0, '2016-08-30', '8', '2016', '15:36:14', '2016-08-30', '15:36:14', 13),
	(1, 0, '2016-08-30', '8', '2016', '15:36:15', '2016-08-30', '15:36:15', 14),
	(1, 0, '2016-08-30', '8', '2016', '15:36:16', '2016-08-30', '15:36:16', 15),
	(1, 0, '2016-08-30', '8', '2016', '15:36:17', '2016-08-30', '15:36:17', 16),
	(1, 0, '2016-08-30', '8', '2016', '15:36:18', '2016-08-30', '15:36:18', 17),
	(1, 0, '2016-08-30', '8', '2016', '15:47:37', '2016-08-30', '15:47:37', 18),
	(0, 1, '2016-08-30', '8', '2016', '15:48:10', '2016-08-30', '15:48:10', 19),
	(1, 0, '2016-08-30', '8', '2016', '15:50:07', '2016-08-30', '15:50:07', 20),
	(1, 0, '2016-08-30', '8', '2016', '15:50:08', '2016-08-30', '15:50:08', 21),
	(1, 0, '2016-08-30', '8', '2016', '15:50:09', '2016-08-30', '15:50:09', 22),
	(1, 0, '2016-08-30', '8', '2016', '15:50:10', '2016-08-30', '15:50:10', 23),
	(1, 0, '2016-08-30', '8', '2016', '15:50:11', '2016-08-30', '15:50:11', 24),
	(1, 0, '2016-08-30', '8', '2016', '15:50:13', '2016-08-30', '15:50:13', 25);
/*!40000 ALTER TABLE `tbl_01_pelayanan` ENABLE KEYS */;


-- Dumping structure for table db_balai_veteriner.tbl_user
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user1` varchar(32) NOT NULL default '',
  `nama1` varchar(32) default NULL,
  `pass1` varchar(32) default NULL,
  `level1` varchar(32) default NULL,
  `s1` tinyint(1) default '0',
  `s2` tinyint(1) default '0',
  `s3` tinyint(1) default '0',
  `s4` tinyint(1) default '0',
  `s5` tinyint(1) default '0',
  `s6` tinyint(1) default '0',
  `s7` tinyint(1) default '0',
  `s8` tinyint(1) default '0',
  `s9` tinyint(1) default '0',
  `s10` tinyint(1) default '0',
  `s11` tinyint(1) default '0',
  `s12` tinyint(1) default '0',
  `s13` tinyint(1) default '0',
  `s14` tinyint(1) default '0',
  `s15` tinyint(1) default '0',
  `s16` tinyint(1) default '0',
  `s17` tinyint(1) default '0',
  `s18` tinyint(1) default '0',
  `s19` tinyint(1) default '0',
  `s20` tinyint(1) default '0',
  `s21` tinyint(1) default '0',
  `s22` tinyint(1) default '0',
  `s23` tinyint(1) default '0',
  `s24` tinyint(1) default '0',
  `s25` tinyint(1) default '0',
  `s26` tinyint(1) default '0',
  `s27` tinyint(1) default '0',
  `s28` tinyint(1) default '0',
  `s29` tinyint(1) default '0',
  `s30` tinyint(1) default '0',
  `s31` tinyint(1) default '0',
  `s32` tinyint(1) default '0',
  `s33` tinyint(1) default '0',
  `s34` tinyint(1) default '0',
  `s35` tinyint(1) default '0',
  `s36` tinyint(1) default '0',
  `s37` tinyint(1) default '0',
  `s38` tinyint(1) default '0',
  `s39` tinyint(1) default '0',
  `s40` tinyint(1) default '0',
  `s41` tinyint(1) default '0',
  `s42` tinyint(1) default '0',
  `s43` tinyint(1) default '0',
  `s44` tinyint(1) default '0',
  `s45` tinyint(1) default '0',
  `s46` tinyint(1) default '0',
  `s47` tinyint(1) default '0',
  `s48` tinyint(1) default '0',
  `s49` tinyint(1) default '0',
  `s50` tinyint(1) default '0',
  `s51` tinyint(1) default '0',
  `s52` tinyint(1) default '0',
  `s53` tinyint(1) default '0',
  `s54` tinyint(1) default '0',
  `s55` tinyint(1) default '0',
  `s56` tinyint(1) default '0',
  `s57` tinyint(1) default '0',
  `s58` tinyint(1) default '0',
  `s59` tinyint(1) default '0',
  `s60` tinyint(1) default '0',
  `s61` tinyint(1) default '0',
  `s62` tinyint(1) default '0',
  `s63` tinyint(1) default '0',
  `s64` tinyint(1) default '0',
  `s65` tinyint(1) default '0',
  PRIMARY KEY  (`user1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table db_balai_veteriner.tbl_user: ~2 rows (approximately)
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`user1`, `nama1`, `pass1`, `level1`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`, `s8`, `s9`, `s10`, `s11`, `s12`, `s13`, `s14`, `s15`, `s16`, `s17`, `s18`, `s19`, `s20`, `s21`, `s22`, `s23`, `s24`, `s25`, `s26`, `s27`, `s28`, `s29`, `s30`, `s31`, `s32`, `s33`, `s34`, `s35`, `s36`, `s37`, `s38`, `s39`, `s40`, `s41`, `s42`, `s43`, `s44`, `s45`, `s46`, `s47`, `s48`, `s49`, `s50`, `s51`, `s52`, `s53`, `s54`, `s55`, `s56`, `s57`, `s58`, `s59`, `s60`, `s61`, `s62`, `s63`, `s64`, `s65`) VALUES
	('admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
	('Yomi', 'YomiAfrinaldo', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;


-- Dumping structure for table db_balai_veteriner.tbl_z_waktu
CREATE TABLE IF NOT EXISTS `tbl_z_waktu` (
  `waktu` datetime NOT NULL default '0000-00-00 00:00:00',
  `tgl` date default '0000-00-00',
  `jam` time default '00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_balai_veteriner.tbl_z_waktu: 1 rows
/*!40000 ALTER TABLE `tbl_z_waktu` DISABLE KEYS */;
INSERT INTO `tbl_z_waktu` (`waktu`, `tgl`, `jam`) VALUES
	('2016-08-30 15:50:13', '2016-08-30', '15:50:13');
/*!40000 ALTER TABLE `tbl_z_waktu` ENABLE KEYS */;


-- Dumping structure for view db_balai_veteriner.vw_01_pelayanan
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_01_pelayanan` (
	`puas1` DOUBLE NULL DEFAULT '0',
	`tidak_puas1` DOUBLE NULL DEFAULT '0',
	`tgl` DATE NULL DEFAULT '0000-00-00',
	`bulan` VARCHAR(20) NULL DEFAULT '' COLLATE 'utf8_general_ci',
	`tahun` VARCHAR(20) NULL DEFAULT '' COLLATE 'utf8_general_ci',
	`inputd` DATE NULL DEFAULT '0000-00-00',
	`inputw` TIME NULL DEFAULT '00:00:00',
	`no_urut` INT(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM;


-- Dumping structure for view db_balai_veteriner.vw_01_pelayanan_puas
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_01_pelayanan_puas` (
	`puas1` DOUBLE NULL DEFAULT '0',
	`tidak_puas1` DOUBLE NULL DEFAULT '0',
	`tgl` DATE NULL DEFAULT '0000-00-00',
	`bulan` VARCHAR(20) NULL DEFAULT '' COLLATE 'utf8_general_ci',
	`tahun` VARCHAR(20) NULL DEFAULT '' COLLATE 'utf8_general_ci',
	`inputd` DATE NULL DEFAULT '0000-00-00',
	`inputw` TIME NULL DEFAULT '00:00:00',
	`no_urut` INT(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM;


-- Dumping structure for view db_balai_veteriner.vw_01_pelayanan_tidak_puas
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_01_pelayanan_tidak_puas` (
	`puas1` DOUBLE NULL DEFAULT '0',
	`tidak_puas1` DOUBLE NULL DEFAULT '0',
	`tgl` DATE NULL DEFAULT '0000-00-00',
	`bulan` VARCHAR(20) NULL DEFAULT '' COLLATE 'utf8_general_ci',
	`tahun` VARCHAR(20) NULL DEFAULT '' COLLATE 'utf8_general_ci',
	`inputd` DATE NULL DEFAULT '0000-00-00',
	`inputw` TIME NULL DEFAULT '00:00:00',
	`no_urut` INT(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM;


-- Dumping structure for view db_balai_veteriner.vw_01_pelayanan
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_01_pelayanan`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_01_pelayanan` AS select `tbl_01_pelayanan`.`puas1` AS `puas1`,`tbl_01_pelayanan`.`tidak_puas1` AS `tidak_puas1`,`tbl_01_pelayanan`.`tgl` AS `tgl`,`tbl_01_pelayanan`.`bulan` AS `bulan`,`tbl_01_pelayanan`.`tahun` AS `tahun`,`tbl_01_pelayanan`.`inputd` AS `inputd`,`tbl_01_pelayanan`.`inputw` AS `inputw`,`tbl_01_pelayanan`.`no_urut` AS `no_urut` from `tbl_01_pelayanan`;


-- Dumping structure for view db_balai_veteriner.vw_01_pelayanan_puas
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_01_pelayanan_puas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_01_pelayanan_puas` AS select `tbl_01_pelayanan`.`puas1` AS `puas1`,`tbl_01_pelayanan`.`tidak_puas1` AS `tidak_puas1`,`tbl_01_pelayanan`.`tgl` AS `tgl`,`tbl_01_pelayanan`.`bulan` AS `bulan`,`tbl_01_pelayanan`.`tahun` AS `tahun`,`tbl_01_pelayanan`.`inputd` AS `inputd`,`tbl_01_pelayanan`.`inputw` AS `inputw`,`tbl_01_pelayanan`.`no_urut` AS `no_urut` from `tbl_01_pelayanan` where (`tbl_01_pelayanan`.`puas1` = 1);


-- Dumping structure for view db_balai_veteriner.vw_01_pelayanan_tidak_puas
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_01_pelayanan_tidak_puas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_01_pelayanan_tidak_puas` AS select `tbl_01_pelayanan`.`puas1` AS `puas1`,`tbl_01_pelayanan`.`tidak_puas1` AS `tidak_puas1`,`tbl_01_pelayanan`.`tgl` AS `tgl`,`tbl_01_pelayanan`.`bulan` AS `bulan`,`tbl_01_pelayanan`.`tahun` AS `tahun`,`tbl_01_pelayanan`.`inputd` AS `inputd`,`tbl_01_pelayanan`.`inputw` AS `inputw`,`tbl_01_pelayanan`.`no_urut` AS `no_urut` from `tbl_01_pelayanan` where (`tbl_01_pelayanan`.`tidak_puas1` = 1);
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
