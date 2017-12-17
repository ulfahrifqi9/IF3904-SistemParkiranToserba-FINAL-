-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2017 at 07:35 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkirantoserba`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kendaraan`
--

CREATE TABLE `jenis_kendaraan` (
  `id_jenis` int(10) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_kendaraan`
--

INSERT INTO `jenis_kendaraan` (`id_jenis`, `jenis`, `harga`) VALUES
(1, 'Roda 2', 2000),
(2, 'Roda 4', 5000),
(3, 'Truk', 10000),
(4, 'BIS', 10000),
(5, 'Odong-Odong', 1000),
(6, 'Dokar', 3000),
(7, 'Kereta', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `tblkendaraan`
--

CREATE TABLE `tblkendaraan` (
  `id_karcis` varchar(5) NOT NULL DEFAULT '',
  `no_plat` varchar(11) DEFAULT NULL,
  `jenis_kend` varchar(10) DEFAULT NULL,
  `keterangan` varchar(25) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jammasuk` time DEFAULT NULL,
  `jamkeluar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkendaraan`
--

INSERT INTO `tblkendaraan` (`id_karcis`, `no_plat`, `jenis_kend`, `keterangan`, `tanggal`, `jammasuk`, `jamkeluar`) VALUES
('B002', 'DD0123', 'Motor', 'Honda beat merah', '2017-12-18', '01:22:35', '00:00:00'),
('QSas', 'qwq', 'Motor', 'qwq', '2017-12-16', '19:58:27', '00:00:00'),
('B001', 'DD 1234 ED', 'Motor', 'motor honda beat merah', '2017-12-16', '20:26:49', '00:00:00'),
('B009', '0123', 'Motor', 'motor honda beat putih', '2017-12-17', '10:29:28', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpetugas`
--

CREATE TABLE `tblpetugas` (
  `id_petugas` varchar(6) NOT NULL DEFAULT '',
  `nama` varchar(35) DEFAULT NULL,
  `notelp` varchar(15) DEFAULT NULL,
  `alamat` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpetugas`
--

INSERT INTO `tblpetugas` (`id_petugas`, `nama`, `notelp`, `alamat`) VALUES
('C002', 'Ulfah Rifqi Rafiuddin', '082320104783', 'Bandung'),
('C001', 'Rivaldi Rachmadwitya ', '082320104783', 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaksi`
--

CREATE TABLE `tbltransaksi` (
  `id_transaksi` varchar(5) NOT NULL,
  `id_karcis` varchar(5) NOT NULL,
  `id_petugas` varchar(6) NOT NULL,
  `total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransaksi`
--

INSERT INTO `tbltransaksi` (`id_transaksi`, `id_karcis`, `id_petugas`, `total`) VALUES
('T001', 'B009', 'C001', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(10) NOT NULL,
  `nama` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `nama`, `pass`) VALUES
('admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_kendaraan`
--
ALTER TABLE `jenis_kendaraan`
  ADD PRIMARY KEY (`id_jenis`),
  ADD UNIQUE KEY `id_jenis` (`id_jenis`),
  ADD KEY `id_jenis_2` (`id_jenis`);

--
-- Indexes for table `tblkendaraan`
--
ALTER TABLE `tblkendaraan`
  ADD PRIMARY KEY (`id_karcis`);

--
-- Indexes for table `tblpetugas`
--
ALTER TABLE `tblpetugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tbltransaksi`
--
ALTER TABLE `tbltransaksi`
  ADD PRIMARY KEY (`id_transaksi`,`id_karcis`,`id_petugas`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_kendaraan`
--
ALTER TABLE `jenis_kendaraan`
  MODIFY `id_jenis` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
