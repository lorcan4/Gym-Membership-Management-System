-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 25 مايو 2025 الساعة 15:56
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
-- بنية الجدول `account`
--

CREATE TABLE `account` (
  `email` varchar(100) DEFAULT NULL,
  `hashed` varchar(100) DEFAULT NULL,
  `id` varchar(100) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `account`
--

INSERT INTO `account` (`email`, `hashed`, `id`, `FirstName`, `LastName`) VALUES
('mcdrissvk@gmail.com', '$2b$10$L8iQsoLreVpFSS1qzBj1ieh6J3HNb5t9Y6X4ILLExiQsN7kL.M1L2', '01a3a80d-756e-466a-9ae9-e0c2200e6135', 'lorcan', 'solan'),
('marwan.ouhna@gmail.com', '$2b$10$PVu3Uo6P5Ze.vm06549sjeVfJo3dFhGCHlVvGAH7iw9J1UA8y0p/.', '6c88d495-f459-4080-9068-1ad50a46bafc', 'mas', 'VK'),
('mcdochvk1@gmail.com', '$2b$10$S/JspTej2439mb5kvtJz7eRo27qyWCTm/NBLsZmfbRLgcEMOTuBRS', 'a76f529c-43c1-4f5a-8ccf-5bc191c36cd6', 'K.F.C', 'VK'),
('tmdmad9@gmail.com', '$2b$10$15IGo2Igss7P7b6Xnw5sGeawoXZnk4nrIlJUo92NSGjwVl1mlxxLW', 'e32f609d-3c08-4d81-bf39-290723842fd4', 'ahmed', 'dom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
