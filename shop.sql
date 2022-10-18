-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 18, 2022 at 03:09 PM
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
  `Good_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Goods`
--

INSERT INTO `Goods` (`id`, `Good_name`, `Price`) VALUES
(1, 'TV', 500),
(2, 'Smartphone', 300),
(3, 'Microwave', 700),
(4, 'Tablet', 700),
(5, 'Smart watch', 70),
(6, 'Headphones', 50),
(7, 'Teapot', 90),
(8, 'Laptop', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `id` int(11) NOT NULL,
  `Person_id` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Good_id` int(11) DEFAULT NULL,
  `Price_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`id`, `Person_id`, `Date`, `Good_id`, `Price_id`) VALUES
(1, 1, '2022-10-17', 1, 1),
(2, 1, '2022-10-17', 3, 3),
(3, 1, '2022-10-17', 6, 6),
(4, 3, '2022-06-13', 1, 1),
(5, 3, '2022-06-13', 8, 8),
(6, 3, '2022-06-13', 6, 6),
(7, 5, '2022-03-01', 4, 4),
(8, 5, '2022-03-01', 2, 2),
(9, 5, '2022-03-01', 8, 8),
(10, 5, '2022-03-01', 3, 3),
(11, 5, '2022-03-01', 2, 2);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `Person` (`Person_id`),
  ADD KEY `Name` (`Good_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`Person_id`) REFERENCES `People` (`id`),
  ADD CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`Good_id`) REFERENCES `Goods` (`id`),
  ADD CONSTRAINT `Orders_ibfk_3` FOREIGN KEY (`Price_id`) REFERENCES `Goods` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
