-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2024 at 09:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasikasirbus`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftarpesanan`
--

CREATE TABLE `daftarpesanan` (
  `idPengguna` varchar(20) NOT NULL,
  `idTiket` varchar(20) NOT NULL,
  `jumlahTiket` int(11) NOT NULL,
  `totalPembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftarpesanan`
--

INSERT INTO `daftarpesanan` (`idPengguna`, `idTiket`, `jumlahTiket`, `totalPembayaran`) VALUES
('ADHITAMA', 'AB123', 3, 115500),
('ADHITAMA', 'CK123', 4, 84000),
('GOJO', 'AB123', 2, 77000),
('SUKUNA', 'AB123', 1, 38500);

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `idTiket` varchar(20) NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `kapasitasKursi` int(11) NOT NULL,
  `tipeBus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`idTiket`, `tujuan`, `harga`, `kapasitasKursi`, `tipeBus`) VALUES
('2', 'Surabaya', 200000, 23, 'Non-VIP'),
('AB123', 'JAKARTA', 35000, 30, 'VIP'),
('CK123', 'BANDUNG', 20000, 25, 'Non-VIP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftarpesanan`
--
ALTER TABLE `daftarpesanan`
  ADD UNIQUE KEY `idPengguna` (`idPengguna`,`idTiket`,`jumlahTiket`,`totalPembayaran`),
  ADD UNIQUE KEY `idPengguna_2` (`idPengguna`,`idTiket`,`jumlahTiket`,`totalPembayaran`),
  ADD UNIQUE KEY `idPengguna_3` (`idPengguna`,`idTiket`,`jumlahTiket`,`totalPembayaran`),
  ADD KEY `idTiket` (`idTiket`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`idTiket`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftarpesanan`
--
ALTER TABLE `daftarpesanan`
  ADD CONSTRAINT `daftarpesanan_ibfk_1` FOREIGN KEY (`idTiket`) REFERENCES `tiket` (`idTiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
