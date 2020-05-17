-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 06:50 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `integratif`
--

-- --------------------------------------------------------

--
-- Table structure for table `datas`
--

CREATE TABLE `datas` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datas`
--

INSERT INTO `datas` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'Data 1', 'test integratif', '2020-04-12 06:22:43'),
(2, 'Data 2', 'test pemrograman', '2020-04-12 06:22:43'),
(3, 'Data 2', 'test integratif 1', '2020-04-12 06:22:43'),
(4, 'Data 4', 'test mata kuliah', '2020-04-12 06:22:43'),
(5, 'Data 5', 'test PemInt', '2020-04-12 06:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'Makanan Pertama', 'Nasi Goreng', '2020-04-12 06:31:28'),
(2, 'Makanan Kedua', 'Mie Goreng', '2020-04-12 06:31:28'),
(3, 'Makanan Ketiga', 'Ayam Bakar', '2020-04-12 06:31:28'),
(4, 'Makanan Keempat', 'Pecel', '2020-04-12 06:31:28'),
(5, 'Makanan Kelima', 'Es Krim', '2020-04-12 06:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_sumbangan`
--

CREATE TABLE `jenis_sumbangan` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_sumbangan`
--

INSERT INTO `jenis_sumbangan` (`id`, `name`) VALUES
(1, 'Beras'),
(2, 'Minyak Goreng'),
(3, 'Mie Instant'),
(4, 'Gula'),
(7, 'Raskin'),
(8, 'Uang '),
(9, 'Obat'),
(10, 'Nasi Goreng'),
(11, 'Baju ');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'First post', 'This is a really interesting post.', '2020-04-12 05:03:36'),
(2, 'Second post', 'This is a fascinating post!', '2020-04-12 05:03:36'),
(3, 'Third post', 'This is a very informative post.', '2020-04-12 05:03:36'),
(4, 'Fourth post', 'This is a creative post.', '2020-04-12 06:36:49'),
(5, 'Fifth post', 'This is a genius post.', '2020-04-12 06:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `sumbangan`
--

CREATE TABLE `sumbangan` (
  `id` int(50) NOT NULL,
  `userid` int(50) NOT NULL,
  `jenis` int(10) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sumbangan`
--

INSERT INTO `sumbangan` (`id`, `userid`, `jenis`, `jumlah`) VALUES
(2, 10, 4, 200),
(3, 11, 4, 200),
(4, 12, 7, 100),
(5, 13, 4, 342),
(6, 14, 8, 120023023),
(7, 15, 1, 13),
(8, 15, 8, 135555000),
(9, 15, 2, 10000),
(10, 16, 1, 124),
(11, 16, 9, 12444),
(12, 16, 8, 10000000),
(13, 16, 3, 1000),
(14, 17, 2, 123),
(15, 17, 1, 455),
(16, 17, 4, 555),
(17, 18, 8, 900000000),
(18, 18, 1, 1000),
(19, 18, 1, 1000000),
(20, 19, 11, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `tests1`
--

CREATE TABLE `tests1` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tests1`
--

INSERT INTO `tests1` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'Pesan Pertama', 'Halo', '2020-04-12 05:18:11'),
(2, 'Pesan Kedua', 'Hai', '2020-04-12 05:18:11'),
(3, 'Pesan Ketiga', 'Hola', '2020-04-12 05:18:11'),
(4, 'Pesan Keempat', 'kumaha damang', '2020-04-12 05:18:11'),
(5, 'Pesan Kelima', 'gimana bro', '2020-04-12 05:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `things`
--

CREATE TABLE `things` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `things`
--

INSERT INTO `things` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'Benda pertama', 'Batu', '2020-04-12 06:18:25'),
(2, 'Benda kedua', 'Pulpen', '2020-04-12 06:18:25'),
(3, 'Benda ketiga', 'gelas', '2020-04-12 06:18:25'),
(4, 'Benda keempat', 'pita', '2020-04-12 06:18:25'),
(5, 'Benda kelima', 'lampu', '2020-04-12 06:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `gender`) VALUES
(1, 'Indra Widnyana', 0),
(2, 'Indra Widnyana', 0),
(3, 'Indra Widnyana', 0),
(4, 'Indra Widnyana', 0),
(5, 'Indra Widnyana', 0),
(6, 'Indra Widnyana', 0),
(7, 'Indra Widnyana', 0),
(8, 'Indra Widnyana', 0),
(9, 'Indra Widnyana', 0),
(10, 'Indra Widnyana', 0),
(11, 'Indra Widnyana', 0),
(12, 'Alex', 0),
(13, 'Nirina', 1),
(14, 'Kamarudin', 0),
(15, 'Surmini', 1),
(16, 'Jokowi', 0),
(17, 'Citra', 1),
(18, 'Shafira Amalia', 1),
(19, 'Shafira Amalia', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datas`
--
ALTER TABLE `datas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `jenis_sumbangan`
--
ALTER TABLE `jenis_sumbangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `sumbangan`
--
ALTER TABLE `sumbangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis` (`jenis`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tests1`
--
ALTER TABLE `tests1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `things`
--
ALTER TABLE `things`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datas`
--
ALTER TABLE `datas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jenis_sumbangan`
--
ALTER TABLE `jenis_sumbangan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sumbangan`
--
ALTER TABLE `sumbangan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tests1`
--
ALTER TABLE `tests1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `things`
--
ALTER TABLE `things`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sumbangan`
--
ALTER TABLE `sumbangan`
  ADD CONSTRAINT `sumbangan_ibfk_1` FOREIGN KEY (`jenis`) REFERENCES `jenis_sumbangan` (`id`),
  ADD CONSTRAINT `sumbangan_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
