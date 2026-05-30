-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2026 at 10:54 AM
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
(1, 'Nasi Putih', 130, 2.7, 28, 0.3),
(2, 'Nasi Merah', 111, 2.6, 23, 0.9),
(3, 'Nasi Goreng', 260, 6, 35, 10),
(4, 'Nasi Uduk', 200, 4.5, 30, 7),
(5, 'Nasi Kuning', 195, 4, 29, 6.5),
(6, 'Nasi Padang', 300, 10, 40, 12),
(7, 'Nasi Kebuli', 320, 12, 42, 13),
(8, 'Bubur Ayam', 180, 8, 25, 5),
(9, 'Bubur Kacang Hijau', 160, 6, 28, 2),
(10, 'Lontong', 100, 2, 22, 0.2),
(11, 'Mie Goreng', 240, 7, 38, 7),
(12, 'Mie Rebus', 200, 6.5, 35, 4),
(13, 'Bihun Goreng', 220, 4, 40, 5),
(14, 'Kwetiau Goreng', 280, 9, 42, 9),
(15, 'Spaghetti Bolognese', 350, 15, 45, 12),
(16, 'Roti Tawar', 265, 9, 49, 3.2),
(17, 'Roti Bakar', 280, 9.5, 50, 5),
(18, 'Roti Gandum', 247, 13, 41, 4.2),
(19, 'Croissant', 406, 8, 46, 21),
(20, 'Pancake', 227, 6, 38, 6),
(21, 'Ayam Goreng', 260, 27, 0, 16),
(22, 'Ayam Bakar', 220, 28, 0, 12),
(23, 'Ayam Geprek', 300, 25, 8, 18),
(24, 'Ayam Penyet', 310, 26, 9, 19),
(25, 'Ayam Betutu', 280, 27, 4, 16),
(26, 'Ayam Rica-Rica', 270, 26, 5, 15),
(27, 'Opor Ayam', 290, 24, 6, 18),
(28, 'Soto Ayam', 180, 15, 12, 8),
(29, 'Rendang Ayam', 300, 28, 5, 18),
(30, 'Nugget Ayam', 280, 14, 18, 17),
(31, 'Rendang Sapi', 350, 30, 6, 22),
(32, 'Soto Sapi', 200, 16, 14, 9),
(33, 'Bakso Sapi', 210, 14, 20, 8),
(34, 'Semur Daging', 280, 22, 15, 14),
(35, 'Steak Sapi', 320, 35, 0, 18),
(36, 'Daging Sapi Panggang', 280, 33, 0, 15),
(37, 'Gulai Sapi', 300, 24, 8, 18),
(38, 'Empal Daging', 270, 22, 6, 16),
(39, 'Tongseng Sapi', 290, 23, 9, 17),
(40, 'Sate Sapi', 250, 20, 5, 15),
(41, 'Sate Ayam', 230, 18, 8, 13),
(42, 'Sate Kambing', 260, 20, 5, 16),
(43, 'Ikan Bakar', 180, 25, 0, 8),
(44, 'Ikan Goreng', 220, 23, 5, 12),
(45, 'Ikan Pepes', 170, 24, 3, 7),
(46, 'Ikan Asin', 150, 22, 0, 6),
(47, 'Udang Goreng', 200, 20, 4, 11),
(48, 'Udang Bakar', 170, 21, 0, 8),
(49, 'Cumi Goreng', 220, 18, 8, 12),
(50, 'Gurame Goreng', 210, 22, 4, 11),
(51, 'Tahu Goreng', 120, 8, 4, 8),
(52, 'Tahu Bacem', 130, 9, 8, 7),
(53, 'Tempe Goreng', 190, 11, 10, 12),
(54, 'Tempe Bacem', 180, 12, 14, 9),
(55, 'Tempe Mendoan', 200, 10, 15, 11),
(56, 'Perkedel Kentang', 150, 4, 18, 7),
(57, 'Perkedel Jagung', 140, 4.5, 17, 6.5),
(58, 'Oncom Goreng', 160, 9, 12, 8),
(59, 'Tahu Sumedang', 130, 8.5, 5, 8.5),
(60, 'Tahu Telur', 170, 10, 6, 11),
(61, 'Telur Goreng', 196, 13.6, 0.4, 15.4),
(62, 'Telur Rebus', 155, 13, 1.1, 11),
(63, 'Telur Dadar', 185, 12, 2, 14),
(64, 'Telur Balado', 200, 13, 5, 14),
(65, 'Telur Pindang', 160, 13.5, 1.5, 11),
(66, 'Omelet Sayur', 175, 11, 4, 12),
(67, 'Sayur Bayam', 23, 2.3, 3.6, 0.4),
(68, 'Sayur Kangkung', 20, 2, 3.1, 0.3),
(69, 'Sayur Wortel', 41, 0.9, 10, 0.2),
(70, 'Sayur Buncis', 35, 2, 8, 0.1),
(71, 'Sayur Kol', 25, 1.3, 6, 0.1),
(72, 'Sayur Terong', 35, 1, 8, 0.2),
(73, 'Capcay', 80, 5, 10, 2),
(74, 'Gado-Gado', 200, 10, 18, 10),
(75, 'Pecel', 180, 9, 16, 9),
(76, 'Karedok', 160, 8, 14, 8),
(77, 'Sayur Lodeh', 120, 4, 14, 5),
(78, 'Sayur Asem', 90, 3.5, 12, 2),
(79, 'Tumis Kangkung', 70, 3, 8, 3),
(80, 'Tumis Buncis', 75, 3.5, 9, 3),
(81, 'Tumis Tauge', 60, 3, 7, 2.5),
(82, 'Lalapan', 30, 1.5, 5, 0.3),
(83, 'Urap Sayur', 110, 4, 12, 5),
(84, 'Plecing Kangkung', 80, 3, 9, 3.5),
(85, 'Daun Singkong Rebus', 50, 4, 6, 1),
(86, 'Oseng Tempe Kacang', 220, 12, 18, 10),
(87, 'Pisang', 89, 1.1, 23, 0.3),
(88, 'Apel', 52, 0.3, 14, 0.2),
(89, 'Jeruk', 47, 0.9, 12, 0.1),
(90, 'Mangga', 60, 0.8, 15, 0.4),
(91, 'Semangka', 30, 0.6, 8, 0.2),
(92, 'Pepaya', 43, 0.5, 11, 0.3),
(93, 'Nanas', 50, 0.5, 13, 0.1),
(94, 'Melon', 34, 0.8, 8, 0.2),
(95, 'Anggur', 67, 0.6, 17, 0.4),
(96, 'Stroberi', 32, 0.7, 8, 0.3),
(97, 'Alpukat', 160, 2, 9, 15),
(98, 'Durian', 147, 1.5, 27, 5.3),
(99, 'Rambutan', 68, 0.9, 16, 0.2),
(100, 'Manggis', 63, 0.5, 16, 0.6),
(101, 'Jambu Biji', 68, 2.6, 14, 1),
(102, 'Salak', 77, 0.4, 20, 0.4),
(103, 'Nangka', 95, 1.7, 23, 0.6),
(104, 'Sawo', 83, 0.4, 20, 1.1),
(105, 'Belimbing', 31, 1, 7, 0.3),
(106, 'Kiwi', 61, 1.1, 15, 0.5),
(107, 'Susu Sapi', 61, 3.2, 4.8, 3.3),
(108, 'Susu Kedelai', 54, 3.3, 6.3, 1.8),
(109, 'Yogurt Plain', 61, 3.5, 4.7, 3.3),
(110, 'Keju', 402, 25, 1.3, 33),
(111, 'Mentega', 717, 0.9, 0.1, 81),
(112, 'Telur Ayam Kampung', 162, 12.8, 0.7, 11.5),
(113, 'Madu', 304, 0.3, 82, 0),
(114, 'Tahu Sutra', 55, 5.5, 2, 2.7),
(115, 'Martabak Manis', 310, 7, 50, 10),
(116, 'Martabak Telur', 290, 12, 30, 14),
(117, 'Pisang Goreng', 200, 2, 35, 7),
(118, 'Ubi Goreng', 180, 1.5, 32, 6),
(119, 'Singkong Goreng', 170, 1.5, 30, 6),
(120, 'Bakwan Sayur', 160, 4, 22, 7),
(121, 'Risoles', 190, 5, 25, 8),
(122, 'Lemper', 160, 4, 28, 4),
(123, 'Klepon', 140, 2, 30, 2.5),
(124, 'Onde-Onde', 180, 4, 28, 6),
(125, 'Es Krim', 207, 3.5, 24, 11),
(126, 'Coklat Batang', 546, 5, 60, 31),
(127, 'Keripik Kentang', 536, 7, 53, 35),
(128, 'Keripik Tempe', 450, 20, 40, 22),
(129, 'Kacang Goreng', 567, 26, 20, 49),
(130, 'Kacang Rebus', 340, 18, 35, 14),
(131, 'Edamame', 121, 11, 10, 5),
(132, 'Dimsum', 240, 12, 22, 11),
(133, 'Mie Ayam', 350, 15, 50, 10),
(134, 'Bakso Kuah', 250, 16, 25, 8),
(135, 'Pempek', 270, 12, 35, 9),
(136, 'Siomay', 200, 12, 20, 8),
(137, 'Batagor', 280, 13, 25, 13),
(138, 'Ketoprak', 220, 9, 32, 7),
(139, 'Lontong Sayur', 210, 6, 32, 7),
(140, 'Nasi Bakar', 220, 5, 35, 7),
(141, 'Nasi Liwet', 250, 6, 38, 9),
(142, 'Rawon', 280, 22, 10, 16);

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
  `username` varchar(100) DEFAULT NULL
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
  `target_lemak` double NOT NULL,
  `durasi_bulan` int(11) NOT NULL
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
  MODIFY `id_makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

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
  ADD CONSTRAINT `fk_member_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
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
