-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2021 at 12:39 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boxes`
--

-- --------------------------------------------------------

--
-- Table structure for table `boxnames`
--

CREATE TABLE `boxnames` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boxnames`
--

INSERT INTO `boxnames` (`id`, `name`, `position`, `image`) VALUES
(1, 'box1', 1, 'images/aliexpress.png'),
(2, 'box2', 9, 'images/amazon.png'),
(3, 'box3', 2, 'images/asos.png'),
(4, 'box4', 5, 'images/booking.png'),
(5, 'box5', 3, 'images/booking.png'),
(6, 'box6', 7, 'images/ebay.png'),
(7, 'box7', 6, 'images/elal.png'),
(8, 'box8', 13, 'images/gearbest.png'),
(9, 'box9', 4, 'images/halloweencostumes.jpg'),
(10, 'box10', 10, 'images/hotels.png'),
(11, 'box11', 8, 'images/iherb.jpg'),
(12, 'box12', 12, 'images/m_co.png'),
(13, 'box13', 11, 'images/strawberry.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boxnames`
--
ALTER TABLE `boxnames`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boxnames`
--
ALTER TABLE `boxnames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
