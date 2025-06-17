-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2025 at 01:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental-mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akun`
--

CREATE TABLE `tbl_akun` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_akun`
--

INSERT INTO `tbl_akun` (`id`, `nama`, `username`, `password`, `foto`) VALUES
(1, 'Administrator', 'admin', '$2y$10$tf2VKfD.kjhXFc16fbaNY.EvtMhvhb8iYFWvHVr5MURTg443VwmIm', 'administrator-1579273408.png'),
(2, 'faiz', 'faiz', '$2y$10$qFDzKnoa1Aa30vBLKL3gP.tvgli3oPaAlbPR3CVZjp9.5zHd25.bG', 'faiz-1737416910.jpg'),
(3, 'muflih', 'muflih', '$2y$10$2NaNXK4Rf67iJzkekRgndeloFLlE56IyQerlU81z04obs6TRWZwc6', 'muflih-1737416977.jpg');

--
-- Triggers `tbl_akun`
--
DELIMITER $$
CREATE TRIGGER `after_delete_tbl_akun` AFTER INSERT ON `tbl_akun` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('DELETE', 'tbl_akun', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_tbl_akun` AFTER INSERT ON `tbl_akun` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('INSERT', 'tbl_akun', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_tbl_akun` AFTER INSERT ON `tbl_akun` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('UPDATE', 'tbl_akun', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_bayar`
--

CREATE TABLE `tbl_jenis_bayar` (
  `id` int(11) NOT NULL,
  `jenis_bayar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jenis_bayar`
--

INSERT INTO `tbl_jenis_bayar` (`id`, `jenis_bayar`) VALUES
(1, 'Tunai'),
(2, 'Transfer');

--
-- Triggers `tbl_jenis_bayar`
--
DELIMITER $$
CREATE TRIGGER `after_delete_tbl_jenis_bayar` AFTER INSERT ON `tbl_jenis_bayar` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('DELETE', 'tbl_jenis_bayar', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_tbl_jenis_bayar` AFTER INSERT ON `tbl_jenis_bayar` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('INSERT', 'tbl_jenis_bayar', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_tbl_jenis_bayar` AFTER INSERT ON `tbl_jenis_bayar` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('UPDATE', 'tbl_jenis_bayar', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `id` int(11) NOT NULL,
  `action` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `record_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`id`, `action`, `table_name`, `record_id`, `user_id`, `timestamp`) VALUES
(1, 'DELETE', 'tbl_akun', 9, 9, '2025-01-21 06:02:08'),
(2, 'INSERT', 'tbl_akun', 9, 9, '2025-01-21 06:02:08'),
(3, 'UPDATE', 'tbl_akun', 9, 9, '2025-01-21 06:02:08'),
(4, 'DELETE', 'tbl_merk', 15, 15, '2025-01-21 06:18:59'),
(5, 'INSERT', 'tbl_merk', 15, 15, '2025-01-21 06:18:59'),
(6, 'UPDATE', 'tbl_merk', 15, 15, '2025-01-21 06:18:59'),
(7, 'DELETE', 'tbl_mobil', 22, 22, '2025-01-21 06:23:05'),
(8, 'UPDATE', 'tbl_mobil', 22, 22, '2025-01-21 06:23:05'),
(9, 'INSERT', 'tbl_mobil', 22, 22, '2025-01-21 06:23:05'),
(10, 'DELETE', 'tbl_mobil', 23, 23, '2025-01-21 06:24:50'),
(11, 'UPDATE', 'tbl_mobil', 23, 23, '2025-01-21 06:24:50'),
(12, 'INSERT', 'tbl_mobil', 23, 23, '2025-01-21 06:24:50'),
(13, 'DELETE', 'tbl_mobil', 24, 24, '2025-01-21 06:26:03'),
(14, 'UPDATE', 'tbl_mobil', 24, 24, '2025-01-21 06:26:03'),
(15, 'INSERT', 'tbl_mobil', 24, 24, '2025-01-21 06:26:03'),
(16, 'DELETE', 'tbl_mobil', 25, 25, '2025-01-21 06:27:17'),
(17, 'UPDATE', 'tbl_mobil', 25, 25, '2025-01-21 06:27:17'),
(18, 'INSERT', 'tbl_mobil', 25, 25, '2025-01-21 06:27:17'),
(19, 'DELETE', 'tbl_mobil', 26, 26, '2025-01-21 06:28:37'),
(20, 'UPDATE', 'tbl_mobil', 26, 26, '2025-01-21 06:28:37'),
(21, 'INSERT', 'tbl_mobil', 26, 26, '2025-01-21 06:28:37'),
(22, 'DELETE', 'tbl_mobil', 27, 27, '2025-01-21 06:29:50'),
(23, 'UPDATE', 'tbl_mobil', 27, 27, '2025-01-21 06:29:50'),
(24, 'INSERT', 'tbl_mobil', 27, 27, '2025-01-21 06:29:50'),
(25, 'DELETE', 'tbl_pemesan', 11, 11, '2025-01-21 06:31:46'),
(26, 'UPDATE', 'tbl_pemesan', 11, 11, '2025-01-21 06:31:46'),
(27, 'INSERT', 'tbl_pemesan', 11, 11, '2025-01-21 06:31:46'),
(28, 'DELETE', 'tbl_pemesan', 12, 12, '2025-01-21 06:32:52'),
(29, 'UPDATE', 'tbl_pemesan', 12, 12, '2025-01-21 06:32:52'),
(30, 'INSERT', 'tbl_pemesan', 12, 12, '2025-01-21 06:32:52'),
(31, 'DELETE', 'tbl_pemesan', 13, 13, '2025-01-21 06:34:13'),
(32, 'UPDATE', 'tbl_pemesan', 13, 13, '2025-01-21 06:34:13'),
(33, 'INSERT', 'tbl_pemesan', 13, 13, '2025-01-21 06:34:13'),
(34, 'DELETE', 'tbl_pesanan', 12, 12, '2025-01-21 06:36:44'),
(35, 'UPDATE', 'tbl_pesanan', 12, 12, '2025-01-21 06:36:44'),
(36, 'INSERT', 'tbl_pesanan', 12, 12, '2025-01-21 06:36:44'),
(37, 'DELETE', 'tbl_pesanan', 13, 13, '2025-01-21 06:37:42'),
(38, 'UPDATE', 'tbl_pesanan', 13, 13, '2025-01-21 06:37:42'),
(39, 'INSERT', 'tbl_pesanan', 13, 13, '2025-01-21 06:37:42'),
(40, 'DELETE', 'tbl_pesanan', 14, 14, '2025-01-21 06:38:40'),
(41, 'UPDATE', 'tbl_pesanan', 14, 14, '2025-01-21 06:38:40'),
(42, 'INSERT', 'tbl_pesanan', 14, 14, '2025-01-21 06:38:40'),
(43, 'DELETE', 'tbl_akun', 10, 10, '2025-01-21 06:48:30'),
(44, 'INSERT', 'tbl_akun', 10, 10, '2025-01-21 06:48:30'),
(45, 'UPDATE', 'tbl_akun', 10, 10, '2025-01-21 06:48:30'),
(46, 'DELETE', 'tbl_akun', 11, 11, '2025-01-21 06:49:37'),
(47, 'INSERT', 'tbl_akun', 11, 11, '2025-01-21 06:49:37'),
(48, 'UPDATE', 'tbl_akun', 11, 11, '2025-01-21 06:49:37'),
(49, 'DELETE', 'tbl_perjalanan', 10, 10, '2025-01-21 06:51:02'),
(50, 'UPDATE', 'tbl_perjalanan', 10, 10, '2025-01-21 06:51:02'),
(51, 'INSERT', 'tbl_perjalanan', 10, 10, '2025-01-21 06:51:02'),
(52, 'DELETE', 'tbl_pesanan', 15, 15, '2025-01-21 10:39:23'),
(53, 'UPDATE', 'tbl_pesanan', 15, 15, '2025-01-21 10:39:23'),
(54, 'INSERT', 'tbl_pesanan', 15, 15, '2025-01-21 10:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merk`
--

CREATE TABLE `tbl_merk` (
  `id` int(11) NOT NULL,
  `merk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_merk`
--

INSERT INTO `tbl_merk` (`id`, `merk`) VALUES
(1, 'Toyota'),
(2, 'Suzuki'),
(3, 'mitsubishi'),
(4, 'Honda'),
(5, 'Daihatsu');

--
-- Triggers `tbl_merk`
--
DELIMITER $$
CREATE TRIGGER `after_delete_tbl_merk` AFTER INSERT ON `tbl_merk` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('DELETE', 'tbl_merk', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_tbl_merk` AFTER INSERT ON `tbl_merk` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('INSERT', 'tbl_merk', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_tbl_merk` AFTER INSERT ON `tbl_merk` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('UPDATE', 'tbl_merk', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mobil`
--

CREATE TABLE `tbl_mobil` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `no_polisi` varchar(10) DEFAULT NULL,
  `jumlah_kursi` int(1) DEFAULT NULL,
  `tahun_beli` int(4) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `id_merk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mobil`
--

INSERT INTO `tbl_mobil` (`id`, `nama`, `warna`, `no_polisi`, `jumlah_kursi`, `tahun_beli`, `gambar`, `id_merk`) VALUES
(1, 'Innova', 'hitam', 'AE 6757 NH', 7, 2021, 'innova-1737415385.jpg', 1),
(2, 'Apv Arena', 'Abu-Abu', 'AE 9675 HK', 8, 2020, 'apv-arena-1737415490.jpg', 2),
(3, 'Fortuner', 'HItam', 'AE 9908 TP', 8, 2022, 'fortuner-1737415563.jpg', 1),
(4, 'Pajero', 'Putih', 'AE 5590 GL', 8, 2021, 'pajero-1737415637.jpg', 3),
(5, 'CRV', 'hitam', 'AE 9679', 5, 2022, 'crv-1737415717.jpg', 4),
(6, 'Luxio', 'silver', 'AE 3504', 8, 2021, 'luxio-1737415790.jpg', 5);

--
-- Triggers `tbl_mobil`
--
DELIMITER $$
CREATE TRIGGER `after_delete_tbl_mobil` AFTER INSERT ON `tbl_mobil` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('DELETE', 'tbl_mobil', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_tbl_mobil` AFTER INSERT ON `tbl_mobil` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('INSERT', 'tbl_mobil', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_tbl_mobil` AFTER INSERT ON `tbl_mobil` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('UPDATE', 'tbl_mobil', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemesan`
--

CREATE TABLE `tbl_pemesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pemesan`
--

INSERT INTO `tbl_pemesan` (`id`, `nama`, `alamat`, `jenis_kelamin`, `foto`) VALUES
(1, 'Jono', 'Madiun', 'L', 'jono-1737415906.jpg'),
(2, 'Sukirman', 'Surabaya', 'L', 'sukirman-1737416146.jpg'),
(3, 'Solihin', 'Jakarta', 'L', 'solihin-1737416053.jpg');

--
-- Triggers `tbl_pemesan`
--
DELIMITER $$
CREATE TRIGGER `after_delete_pemesan` AFTER INSERT ON `tbl_pemesan` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('DELETE', 'tbl_pemesan', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_pemesan` AFTER INSERT ON `tbl_pemesan` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('INSERT', 'tbl_pemesan', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_pemesan` AFTER INSERT ON `tbl_pemesan` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('UPDATE', 'tbl_pemesan', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perjalanan`
--

CREATE TABLE `tbl_perjalanan` (
  `id` int(11) NOT NULL,
  `asal` varchar(20) DEFAULT NULL,
  `tujuan` varchar(20) DEFAULT NULL,
  `jarak` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_perjalanan`
--

INSERT INTO `tbl_perjalanan` (`id`, `asal`, `tujuan`, `jarak`) VALUES
(1, 'Ponorogo', 'Jogjakarta', 150),
(2, 'Ponorogo ', 'Jakarta', 680),
(3, 'Surabaya', 'Ponorogo', 200),
(4, 'Solo', 'Surabaya', 280),
(5, 'Ponorogo', 'Banyuwangi', 400),
(6, 'Surabaya ', 'Jakarta', 820),
(7, 'Malang ', 'Ponorogo', 200),
(8, 'jakarta ', 'banyuwangi', 1064);

--
-- Triggers `tbl_perjalanan`
--
DELIMITER $$
CREATE TRIGGER `after_delete_perjalanan` AFTER INSERT ON `tbl_perjalanan` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('DELETE', 'tbl_perjalanan', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_perjalanan` AFTER INSERT ON `tbl_perjalanan` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('INSERT', 'tbl_perjalanan', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_perjalanan` AFTER INSERT ON `tbl_perjalanan` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('UPDATE', 'tbl_perjalanan', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesanan`
--

CREATE TABLE `tbl_pesanan` (
  `id` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `id_pemesan` int(11) DEFAULT NULL,
  `id_mobil` int(11) DEFAULT NULL,
  `id_perjalanan` int(11) DEFAULT NULL,
  `id_jenis_bayar` int(11) DEFAULT NULL,
  `id_akun` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pesanan`
--

INSERT INTO `tbl_pesanan` (`id`, `harga`, `tgl_pinjam`, `tgl_kembali`, `id_pemesan`, `id_mobil`, `id_perjalanan`, `id_jenis_bayar`, `id_akun`) VALUES
(1, 1000000, '2020-01-01', '2020-01-04', 1, 6, 8, 2, 2),
(6, 2000000, '2020-01-17', '2020-01-20', 2, 5, 1, 1, 2),
(8, 1500000, '2020-01-18', '2020-01-21', 3, 3, 2, 1, 2),
(9, 250000, '2025-01-21', '2025-01-28', 2, 1, 1, 2, 3),
(10, 1200000, '2025-01-01', '2025-01-07', 3, 2, 2, 2, 3),
(11, 1000000, '2025-01-08', '2025-01-14', 1, 4, 5, 1, 3),
(12, 2000000, '2025-01-01', '2025-01-07', 1, 3, 2, 2, 2),
(13, 3000000, '2025-01-09', '2025-01-19', 2, 4, 6, 2, 3),
(14, 1000000, '2025-01-03', '2025-01-06', 3, 1, 3, 1, 2),
(15, 1000000, '2025-01-21', '2025-01-23', 1, 2, 3, 1, 3);

--
-- Triggers `tbl_pesanan`
--
DELIMITER $$
CREATE TRIGGER `after_delete_pesanan` AFTER INSERT ON `tbl_pesanan` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('DELETE', 'tbl_pesanan', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_pesanan` AFTER INSERT ON `tbl_pesanan` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('INSERT', 'tbl_pesanan', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_pesanan` AFTER INSERT ON `tbl_pesanan` FOR EACH ROW BEGIN
    INSERT INTO tbl_log (action, table_name, record_id, user_id)
    VALUES ('UPDATE', 'tbl_pesanan', NEW.id, NEW.id); -- Ganti NEW.id dengan ID pengguna yang melakukan aksi
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jenis_bayar`
--
ALTER TABLE `tbl_jenis_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_mobil_ibfk_2` (`id_merk`);

--
-- Indexes for table `tbl_pemesan`
--
ALTER TABLE `tbl_pemesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_perjalanan`
--
ALTER TABLE `tbl_perjalanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pemesan` (`id_pemesan`),
  ADD KEY `id_mobil` (`id_mobil`),
  ADD KEY `id_perjalanan` (`id_perjalanan`),
  ADD KEY `id_jenis_bayar` (`id_jenis_bayar`),
  ADD KEY `id_akun` (`id_akun`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_jenis_bayar`
--
ALTER TABLE `tbl_jenis_bayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_pemesan`
--
ALTER TABLE `tbl_pemesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_perjalanan`
--
ALTER TABLE `tbl_perjalanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  ADD CONSTRAINT `tbl_mobil_ibfk_2` FOREIGN KEY (`id_merk`) REFERENCES `tbl_merk` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD CONSTRAINT `tbl_pesanan_ibfk_1` FOREIGN KEY (`id_pemesan`) REFERENCES `tbl_pemesan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_2` FOREIGN KEY (`id_mobil`) REFERENCES `tbl_mobil` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_3` FOREIGN KEY (`id_perjalanan`) REFERENCES `tbl_perjalanan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_4` FOREIGN KEY (`id_jenis_bayar`) REFERENCES `tbl_jenis_bayar` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_5` FOREIGN KEY (`id_akun`) REFERENCES `tbl_akun` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
