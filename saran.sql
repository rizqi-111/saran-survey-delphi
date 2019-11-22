-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2018 at 07:25 AM
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

--
-- Dumping data for table `saran`
--

INSERT INTO `tb_saran` (`no`, `Isi`, `input_tanggal`, `input_jam`) VALUES
(1, 'hgghfjfjfjf', '2017-11-24', '17:56:51'),
(2, 'bgshgdjyfjfi', '2017-11-28', '14:15:20'),
(3, 'Semakin ditingkatkan,pelayanan prima selalu diutamakan.', '2017-12-12', '10:30:14'),
(4, 'alhamdulillah\r\n\r\n', '2017-12-15', '13:52:38'),
(5, 'biaya turunkan', '2017-12-20', '11:39:12'),
(6, 'Receptionist kalau boleh cewek yang murah senyum ', '2017-12-27', '08:25:38'),
(7, 'receptionist nya lucu', '2017-12-27', '09:30:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
