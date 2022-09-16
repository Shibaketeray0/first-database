-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Sep 16, 2022 at 10:54 AM
-- Server version: 10.6.5-MariaDB-1:10.6.5+maria~focal
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `Goods`
--

CREATE TABLE `Goods` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Goods`
--

INSERT INTO `Goods` (`id`, `Name`, `Price`) VALUES
(1, 'TV', 15000),
(2, 'Smartphone', 9000),
(3, 'Microwave', 10000),
(4, 'Tablet', 14000),
(5, 'Smart watch', 3000),
(6, 'Headphones', 7000),
(7, 'Teapot', 4000),
(8, 'Laptop', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `id_of_order` int(11) NOT NULL,
  `Person` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Name` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`id_of_order`, `Person`, `Date`, `Name`) VALUES
(1, 1, '2022-05-12', 3),
(2, 2, '2022-05-12', 4),
(3, 1, '2022-05-12', 2),
(4, 1, '2022-05-12', 5),
(5, 4, '2022-05-12', 3),
(6, 3, '2022-05-12', 7),
(7, 1, '2022-05-12', 1),
(8, 5, '2022-05-12', 3),
(9, 2, '2022-05-12', 3),
(10, 8, '2022-05-12', 3),
(11, 1, '2022-05-12', 3),
(12, 1, '2022-05-12', 3),
(13, 4, '2022-05-12', 4),
(14, 4, '2022-05-12', 2);

-- --------------------------------------------------------

--
-- Table structure for table `People`
--

CREATE TABLE `People` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Surname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `People`
--

INSERT INTO `People` (`id`, `Name`, `Surname`, `Birthday`) VALUES
(1, 'Oleg', 'Kulish', '2006-12-03'),
(2, 'Alex', 'Rickman', '1995-03-23'),
(3, 'Roma', 'Petrov', '2007-06-14'),
(4, 'Max', 'Sidorov', '2005-05-23'),
(5, 'Valerii', 'Diesel', '2008-04-12'),
(6, 'Dima', 'Smirnov', '2004-09-20'),
(7, 'Denys', 'Mishchuk', '1990-08-12'),
(8, 'Volodymyr', 'Polishuk', '2000-03-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Goods`
--
ALTER TABLE `Goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id_of_order`),
  ADD KEY `Person` (`Person`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `People`
--
ALTER TABLE `People`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Goods`
--
ALTER TABLE `Goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `id_of_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `People`
--
ALTER TABLE `People`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`Person`) REFERENCES `People` (`id`),
  ADD CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`Name`) REFERENCES `Goods` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
