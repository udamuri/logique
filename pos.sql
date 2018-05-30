-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2018 at 04:56 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1526652439),
('m130524_201442_init', 1526652448),
('m180518_014859_products', 1526652449),
('m180518_075259_transactions', 1526652449);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(15) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `price`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'A-001', 'Roti Manis', 5000, 1, '2018-05-18 21:09:04', '2018-05-18 21:09:04', 1),
(2, 'A-002', 'Roti Tawar', 12000, 1, '2018-05-18 21:09:21', '2018-05-18 21:09:21', 1),
(3, 'A-003', 'Roti Manis Banget', 5000, 1, '2018-05-18 21:09:47', '2018-05-18 21:09:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(15) NOT NULL,
  `qty` int(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `code`, `price`, `qty`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'A-001', 5000, 1, '2018-05-18 21:10:14', '2018-05-18 21:10:14', 1),
(2, 'A-001', 5000, 2, '2018-05-18 21:10:50', '2018-05-18 21:10:50', 1),
(3, 'A-002', 12000, 1, '2018-05-18 21:14:50', '2018-05-18 21:14:50', 1),
(4, 'A-001', 5000, 3, '2018-05-18 21:16:32', '2018-05-18 21:16:32', 1),
(5, 'A-001', 5000, 3, '2018-05-18 21:17:05', '2018-05-18 21:17:05', 1),
(6, 'A-002', 12000, 4, '2018-05-18 21:18:30', '2018-05-18 21:18:30', 1),
(7, 'A-001', 5000, 2, '2018-05-18 21:22:57', '2018-05-18 21:22:57', 1),
(8, 'A-001', 5000, 1, '2018-05-18 21:23:24', '2018-05-18 21:23:24', 1),
(9, 'A-001', 5000, 3, '2018-05-18 21:24:06', '2018-05-18 21:24:06', 1),
(10, 'A-001', 5000, 2, '2018-05-18 21:30:25', '2018-05-18 21:30:25', 1),
(11, 'A-002', 12000, 2, '2018-05-18 21:30:49', '2018-05-18 21:30:49', 1),
(12, 'A-002', 12000, 3, '2018-05-18 21:34:01', '2018-05-18 21:34:01', 1),
(13, 'A-001', 5000, 2, '2018-05-18 21:36:00', '2018-05-18 21:36:00', 1),
(14, 'A-001', 5000, 4, '2018-05-18 21:36:15', '2018-05-18 21:36:15', 1),
(15, 'A-002', 12000, 1, '2018-05-18 21:36:25', '2018-05-18 21:36:25', 1),
(16, 'A-001', 5000, 4, '2018-05-18 21:40:51', '2018-05-18 21:40:51', 1),
(17, 'A-002', 12000, 4, '2018-05-18 21:41:03', '2018-05-18 21:41:03', 1),
(18, 'A-001', 5000, 3, '2018-05-18 21:45:44', '2018-05-18 21:45:44', 1),
(19, 'A-002', 12000, 2, '2018-05-18 21:46:00', '2018-05-18 21:46:00', 1),
(20, 'A-001', 5000, 2, '2018-05-18 21:46:27', '2018-05-18 21:46:27', 1),
(21, 'A-001', 5000, 3, '2018-05-18 21:49:05', '2018-05-18 21:49:05', 1),
(22, 'A-001', 5000, 3, '2018-05-18 21:50:19', '2018-05-18 21:50:19', 1),
(23, 'A-001', 5000, 3, '2018-05-18 21:51:20', '2018-05-18 21:51:20', 1),
(24, 'A-002', 12000, 6, '2018-05-18 21:51:31', '2018-05-18 21:51:31', 1),
(25, 'A-001', 5000, 100, '2018-05-18 21:51:51', '2018-05-18 21:51:51', 1),
(26, 'A-001', 5000, 3, '2018-05-18 21:56:25', '2018-05-18 21:56:25', 1),
(27, 'A-002', 12000, 5, '2018-05-18 21:56:34', '2018-05-18 21:56:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL DEFAULT '0',
  `level` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `member_id`, `level`) VALUES
(1, 'admin', 'V6XZ7Ca2m2f65HIde7BwNuRJdqpXUcYP', '$2y$13$ChemDN9stCql0FeYZggTZ.NuwAGEWrOPGnxErm7d6c.TWMey3cuNa', NULL, 'udamuri@gmail.com', 10, 1526652448, 1526652448, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
