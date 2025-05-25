-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 25 مايو 2025 الساعة 15:55
-- إصدار الخادم: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Product`
--

-- --------------------------------------------------------

--
-- بنية الجدول `ProductsData`
--

CREATE TABLE `ProductsData` (
  `iDProduct` varchar(100) NOT NULL,
  `imagesUrl` varchar(100) DEFAULT NULL,
  `prices` varchar(100) DEFAULT NULL,
  `descriptions` text DEFAULT NULL,
  `categories` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `ProductsData`
--

INSERT INTO `ProductsData` (`iDProduct`, `imagesUrl`, `prices`, `descriptions`, `categories`) VALUES
('086a64e5-6714-42ab-a828-713060f028d4', 'file-1748116052549.jpeg', '900', 'Mac Pro', 'Laptop'),
('0ef10a0a-a4e0-432c-a8b7-aa23c72594bc', 'file-1748115921205.jpeg', '1000', 'Apple 16 pro', 'Phone'),
('32bfc944-fc57-4616-b1f9-a4d9193ccd31', 'file-1748116018311.jpeg', '400', 'OPPO', 'Phone'),
('5523f0d9-bc49-4c0b-862d-1e4b70a51730', 'file-1748116073028.jpeg', '700', 'Apple', 'Phone'),
('cc07194e-d92a-4c31-8cbd-91deb5aebddc', 'file-1748115955446.jpeg', '120', 'Apple', 'Watch');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ProductsData`
--
ALTER TABLE `ProductsData`
  ADD PRIMARY KEY (`iDProduct`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
