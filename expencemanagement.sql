-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2021 at 08:08 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expencemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, 'database\\migrations\\1632705829513_incom_categories', 1, '2021-09-27 01:37:38'),
(2, 'database\\migrations\\1632706259374_expence_categories', 1, '2021-09-27 01:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `expence_categories`
--

CREATE TABLE `expence_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `amount` float(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expence_categories`
--

INSERT INTO `expence_categories` (`id`, `type_name`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'trip9', 206.00, NULL, NULL),
(2, 'extra', 24.00, NULL, NULL),
(3, 'trip', 2000.00, NULL, NULL),
(5, 'new Expence', 500.00, '2021-09-28 01:58:11', '2021-09-28 01:58:11'),
(7, 'new', 1000.00, '2021-09-28 02:01:15', '2021-09-28 02:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `incom_categories`
--

CREATE TABLE `incom_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `amount` float(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incom_categories`
--

INSERT INTO `incom_categories` (`id`, `type_name`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'salary2', 30.00, NULL, NULL),
(2, 'bank', 11.00, NULL, NULL),
(6, 'rentzzx', 1000000.00, '2021-09-27 02:01:04', '2021-09-27 02:01:04'),
(8, 'home', 200.00, '2021-09-27 03:39:32', '2021-09-27 03:39:32'),
(9, 'other', 9.00, '2021-09-27 03:41:11', '2021-09-27 03:41:11'),
(12, 'need', 14.00, '2021-09-27 03:56:43', '2021-09-27 03:56:43'),
(13, 'only', 24.00, '2021-09-27 03:56:52', '2021-09-27 03:56:52'),
(14, 'hello', 0.00, '2021-09-28 01:33:55', '2021-09-28 01:33:55'),
(15, 'helo22', 16.00, '2021-09-28 01:34:07', '2021-09-28 01:34:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expence_categories`
--
ALTER TABLE `expence_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incom_categories`
--
ALTER TABLE `incom_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expence_categories`
--
ALTER TABLE `expence_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `incom_categories`
--
ALTER TABLE `incom_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
