-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2018 at 07:26 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


INSERT INTO `tb_ikm` (`id`, `umur`, `jkl`, `pdkn`, `pkrjn`, `sv1`, `sv2`, `sv3`, `sv4`, `sv5`, `sv6`, `sv7`, `sv8`, `sv9`, `sv10`, `sv11`, `sv12`, `sv13`, `sv14`, `tgl`) VALUES
(1, 45, 'L', 'S2 KE ATAS', 'PNS/TNI/POLRI', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-11-24'),
(2, 25, 'L', 'SLTA', 'WIRASWASTA', 3, 3, 3, 3, 4, 4, 3, 4, 3, 3, 3, 3, 3, 3, '2017-11-27'),
(3, 34, 'P', 'S1', 'PEGAWAI SWASTA', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-11-27'),
(4, 34, 'L', 'SLTA', 'PNS/TNI/POLRI', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-11-27'),
(5, 30, 'P', 'S2 KE ATAS', 'PNS/TNI/POLRI', 4, 3, 4, 4, 4, 4, 4, 3, 4, 3, 3, 3, 4, 4, '2017-11-28'),
(6, 35, 'L', 'S2 KE ATAS', 'PNS/TNI/POLRI', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-04'),
(7, 26, 'L', 'S1', 'PEGAWAI SWASTA', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-04'),
(8, 31, 'L', 'S1', 'PEGAWAI SWASTA', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-04'),
(9, 32, 'L', 'S1', 'PNS/TNI/POLRI', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-05'),
(10, 56, 'L', 'S1', 'PNS/TNI/POLRI', 4, 3, 3, 4, 4, 3, 3, 3, 4, 3, 3, 3, 4, 4, '2017-12-11'),
(11, 35, 'L', 'SLTA', 'PEGAWAI SWASTA', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-11'),
(12, 37, 'L', 'S1', 'PNS/TNI/POLRI', 3, 3, 4, 3, 4, 4, 3, 3, 4, 3, 3, 3, 4, 4, '2017-12-12'),
(13, 36, 'P', 'S1', 'PNS/TNI/POLRI', 4, 3, 4, 4, 4, 3, 3, 3, 4, 4, 3, 3, 4, 4, '2017-12-12'),
(14, 55, 'L', 'S1', 'PNS/TNI/POLRI', 3, 3, 3, 4, 3, 3, 4, 3, 4, 3, 3, 3, 4, 4, '2017-12-12'),
(15, 50, 'P', 'S1', 'PNS/TNI/POLRI', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-13'),
(16, 50, 'L', 'SLTA', 'PEGAWAI SWASTA', 3, 3, 3, 3, 3, 4, 3, 3, 4, 3, 3, 3, 3, 3, '2017-12-14'),
(17, 34, 'P', 'S1', 'PEGAWAI SWASTA', 3, 3, 3, 3, 3, 3, 3, 3, 4, 3, 4, 3, 4, 4, '2017-12-14'),
(18, 55, 'L', 'S1', 'PNS/TNI/POLRI', 3, 3, 3, 3, 3, 3, 3, 3, 4, 3, 3, 3, 4, 4, '2017-12-18'),
(19, 22, 'P', 'S1', 'PELAJAR/MAHASISWA', 4, 3, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-18'),
(20, 52, 'L', 'S1', 'PNS/TNI/POLRI', 4, 3, 3, 4, 3, 4, 3, 4, 3, 3, 3, 3, 4, 4, '2017-12-18'),
(21, 23, 'L', 'S1', 'PELAJAR/MAHASISWA', 4, 3, 4, 4, 4, 3, 4, 4, 4, 4, 4, 3, 4, 3, '2017-12-18'),
(22, 30, 'L', 'S1', 'PEGAWAI SWASTA', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-18'),
(23, 23, 'P', 'S1', 'PEGAWAI SWASTA', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2017-12-18'),
(24, 22, 'P', 'S1', 'PELAJAR/MAHASISWA', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2017-12-19'),
(25, 23, 'P', 'S1', 'PELAJAR/MAHASISWA', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2017-12-19'),
(26, 38, 'L', 'S2 KE ATAS', 'PNS/TNI/POLRI', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2017-12-20'),
(27, 38, 'L', 'S2 KE ATAS', 'PNS/TNI/POLRI', 3, 3, 4, 3, 3, 4, 3, 4, 3, 4, 4, 3, 3, 3, '2017-12-20'),
(28, 20, 'P', 'S1', 'PELAJAR/MAHASISWA', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2017-12-20'),
(29, 55, 'L', 'S1', 'PNS/TNI/POLRI', 3, 3, 3, 3, 4, 3, 4, 3, 4, 3, 3, 3, 4, 4, '2017-12-20'),
(30, 49, 'L', 'S1', 'WIRASWASTA', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 4, 4, '2017-12-20'),
(31, 32, 'L', 'S1', 'PEGAWAI SWASTA', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-21'),
(32, 52, 'P', 'SLTA', 'PNS/TNI/POLRI', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2017-12-22'),
(33, 38, 'L', 'S1', 'WIRASWASTA', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-27'),
(34, 38, 'L', 'S1', 'WIRASWASTA', 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 3, 3, 4, 4, '2017-12-27'),
(35, 45, 'P', 'S1', 'PNS/TNI/POLRI', 3, 3, 3, 3, 3, 3, 3, 4, 3, 3, 3, 4, 4, 3, '2017-12-27'),
(36, 34, 'P', 'S1', 'PNS/TNI/POLRI', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-27'),
(37, 33, 'L', 'S1', 'PEGAWAI SWASTA', 4, 3, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, '2017-12-27'),
(38, 33, 'L', 'S1', 'PEGAWAI SWASTA', 4, 3, 4, 3, 3, 3, 4, 3, 4, 3, 4, 3, 4, 4, '2017-12-27'),
(39, 37, 'P', 'S1', 'PNS/TNI/POLRI', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-27'),
(40, 41, 'L', 'S1', 'PEGAWAI SWASTA', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-27'),
(41, 38, 'L', 'S2 KE ATAS', 'PNS/TNI/POLRI', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2017-12-28'),
(42, 35, 'P', 'S1', 'PNS/TNI/POLRI', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-28'),
(43, 20, 'P', 'S1', 'PELAJAR/MAHASISWA', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-29'),
(44, 21, 'P', 'S1', 'PELAJAR/MAHASISWA', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2017-12-29'),
(45, 52, 'P', 'SLTA', 'PNS/TNI/POLRI', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2017-12-29'),
(46, 24, 'L', 'SLTA', 'PEGAWAI SWASTA', 3, 3, 4, 3, 3, 3, 4, 4, 4, 4, 3, 4, 4, 4, '2017-12-29'),
(47, 26, 'L', 'SLTA', 'PEGAWAI SWASTA', 4, 4, 3, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2018-01-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
