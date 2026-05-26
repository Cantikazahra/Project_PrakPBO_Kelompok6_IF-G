-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2026 at 08:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weightgain_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `konsumsi_makanan`
--

CREATE TABLE `konsumsi_makanan` (
  `id_konsumsi` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_makanan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_porsi` int(11) NOT NULL,
  `total_kalori` double NOT NULL,
  `total_protein` double NOT NULL,
  `total_karbo` double NOT NULL,
  `total_lemak` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `id_makanan` int(11) NOT NULL,
  `nama_makanan` varchar(100) NOT NULL,
  `kalori` double NOT NULL,
  `protein` double NOT NULL,
  `karbohidrat` double NOT NULL,
  `lemak` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`id_makanan`, `nama_makanan`, `kalori`, `protein`, `karbohidrat`, `lemak`) VALUES
(1, 'Nasi Putih 100gr', 175, 3, 40, 0.3),
(2, 'Nasi Merah 100gr', 150, 3, 34, 1),
(3, 'Mie Goreng', 350, 8, 45, 15),
(4, 'Roti Tawar 2 Lembar', 160, 6, 30, 2),
(5, 'Oatmeal', 150, 5, 27, 3),
(6, 'Kentang Rebus', 120, 2, 26, 0.1),
(7, 'Ubi Rebus', 140, 2, 33, 0.2),
(8, 'Pasta', 220, 7, 43, 1.5),
(9, 'Telur Rebus', 78, 6, 1, 5),
(10, 'Telur Goreng', 90, 6, 1, 7),
(11, 'Dada Ayam', 165, 31, 0, 3.6),
(12, 'Ayam Goreng', 260, 20, 8, 17),
(13, 'Daging Sapi', 250, 26, 0, 15),
(14, 'Ikan Salmon', 208, 20, 0, 13),
(15, 'Ikan Tuna', 180, 29, 0, 6),
(16, 'Tempe', 190, 19, 9, 11),
(17, 'Tahu', 80, 8, 2, 5),
(18, 'Susu Full Cream', 150, 8, 12, 8),
(19, 'Susu Coklat', 180, 7, 24, 6),
(20, 'Yogurt', 120, 5, 17, 3),
(21, 'Keju Cheddar', 113, 7, 1, 9),
(22, 'Pisang', 105, 1, 27, 0.3),
(23, 'Alpukat', 240, 3, 12, 22),
(24, 'Mangga', 99, 1, 25, 0.6),
(25, 'Kurma', 282, 2, 75, 0.4),
(26, 'Kacang Tanah', 567, 26, 16, 49),
(27, 'Almond', 579, 21, 22, 50),
(28, 'Peanut Butter', 188, 8, 6, 16),
(29, 'Nasi Goreng', 400, 10, 50, 18),
(30, 'Ayam Geprek', 450, 22, 35, 25),
(31, 'Burger Beef', 500, 25, 40, 28),
(32, 'Pizza Slice', 285, 12, 36, 10),
(33, 'Spaghetti Bolognese', 380, 15, 50, 12),
(34, 'Sate Ayam', 300, 20, 10, 18),
(35, 'Bakso', 250, 12, 20, 14),
(36, 'Soto Ayam', 200, 15, 12, 10),
(37, 'Es Krim Vanilla', 207, 3, 24, 11),
(38, 'Coklat Batang', 230, 3, 25, 13),
(39, 'Donat', 260, 4, 31, 14),
(40, 'Smoothie Pisang', 300, 8, 45, 10),
(41, 'Jus Alpukat', 350, 5, 30, 25),
(42, 'Protein Shake', 250, 25, 15, 5),
(43, 'Nugget Ayam', 296, 15, 18, 18),
(44, 'Sosis', 301, 12, 2, 27),
(45, 'French Fries', 312, 3, 41, 15),
(46, 'Martabak Manis', 450, 8, 60, 20),
(47, 'Roti Bakar Coklat Keju', 420, 10, 48, 20),
(48, 'Bubur Ayam', 220, 10, 30, 8),
(49, 'Lontong Sayur', 320, 9, 45, 12),
(50, 'Gudeg', 350, 8, 50, 14),
(51, 'Rendang', 468, 25, 8, 35),
(52, 'Pempek', 290, 12, 32, 12),
(53, 'Kacang Tanah', 567, 26, 16, 49),
(54, 'Almond', 579, 21, 22, 50),
(55, 'Peanut Butter', 188, 8, 6, 16),
(56, 'Nasi Goreng', 400, 10, 50, 18),
(57, 'Ayam Geprek', 450, 22, 35, 25),
(58, 'Burger Beef', 500, 25, 40, 28),
(59, 'Pizza Slice', 285, 12, 36, 10),
(60, 'Spaghetti Bolognese', 380, 15, 50, 12),
(61, 'Sate Ayam', 300, 20, 10, 18),
(62, 'Bakso', 250, 12, 20, 14),
(63, 'Soto Ayam', 200, 15, 12, 10),
(64, 'Es Krim Vanilla', 207, 3, 24, 11),
(65, 'Coklat Batang', 230, 3, 25, 13),
(66, 'Donat', 260, 4, 31, 14),
(67, 'Smoothie Pisang', 300, 8, 45, 10),
(68, 'Jus Alpukat', 350, 5, 30, 25),
(69, 'Protein Shake', 250, 25, 15, 5),
(70, 'Nugget Ayam', 296, 15, 18, 18),
(71, 'Sosis', 301, 12, 2, 27),
(72, 'French Fries', 312, 3, 41, 15),
(73, 'Martabak Manis', 450, 8, 60, 20),
(74, 'Roti Bakar Coklat Keju', 420, 10, 48, 20),
(75, 'Bubur Ayam', 220, 10, 30, 8),
(76, 'Lontong Sayur', 320, 9, 45, 12),
(77, 'Gudeg Jogja', 350, 8, 50, 14),
(78, 'Rendang', 468, 25, 8, 35),
(79, 'Pempek Palembang', 290, 12, 32, 12),
(80, 'Makaroni Keju', 410, 14, 52, 16);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `umur` int(11) NOT NULL,
  `tinggi_badan` double NOT NULL,
  `berat_awal` double NOT NULL,
  `target_berat` double NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id_program` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `target_kalori_harian` double NOT NULL,
  `target_protein` double NOT NULL,
  `target_karbohidrat` double NOT NULL,
  `target_lemak` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `id_progress` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `berat_sekarang` double NOT NULL,
  `total_kalori_hari_ini` double NOT NULL,
  `catatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `konsumsi_makanan`
--
ALTER TABLE `konsumsi_makanan`
  ADD PRIMARY KEY (`id_konsumsi`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_makanan` (`id_makanan`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id_makanan`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id_program`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id_progress`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `konsumsi_makanan`
--
ALTER TABLE `konsumsi_makanan`
  MODIFY `id_konsumsi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id_makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `id_progress` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `konsumsi_makanan`
--
ALTER TABLE `konsumsi_makanan`
  ADD CONSTRAINT `konsumsi_makanan_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `konsumsi_makanan_ibfk_2` FOREIGN KEY (`id_makanan`) REFERENCES `makanan` (`id_makanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `progress_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
