-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 10:02 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_php_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('bramasta', 'rahasia'),
('domes', 'rahasia');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `email`, `comment`) VALUES
(1, 'bramasta@test.com', 'hi'),
(2, 'bramasta@test.com', 'hi'),
(3, 'bramasta@test.com', 'hi'),
(4, 'bramasta@test.com', 'hi'),
(5, 'bramasta@test.com', 'hi'),
(6, 'bramasta@test.com', 'hi'),
(7, 'bramasta@test.com', 'hi'),
(12, 'bramasta@test.com', 'hi'),
(13, 'bramasta@test.com', 'hi'),
(14, 'bramasta@test.com', 'hi'),
(15, 'bramasta@test.com', 'hi'),
(16, 'bramasta@test.com', 'hi'),
(22, 'bramasta@test.com', 'hi'),
(23, 'bramasta@test.com', 'hi'),
(24, 'bramasta@test.com', 'hi'),
(25, 'bramasta@test.com', 'hi'),
(26, 'bramasta@test.com', 'hi'),
(27, 'bramasta@test.com', 'hi'),
(28, 'bramasta@test.com', 'hi'),
(29, 'bramasta@test.com', 'hi'),
(30, 'bramasta@test.com', 'hi'),
(31, 'bramasta@test.com', 'hi'),
(37, 'bramasta@test.com', 'hi'),
(38, 'bramasta@test.com', 'hi'),
(39, 'bramasta@test.com', 'hi'),
(40, 'bramasta@test.com', 'hi'),
(41, 'bramasta@test.com', 'hi'),
(47, 'bramasta@test.com', 'hi'),
(48, 'bramasta@test.com', 'hi'),
(49, 'bramasta@test.com', 'hi'),
(50, 'bramasta@test.com', 'hi'),
(51, 'bramasta@test.com', 'hi'),
(52, 'repository@test.com', 'Hi'),
(53, 'repository@test.com', 'Hi'),
(54, 'repository@test.com', 'Hi'),
(55, 'repository@test.com', 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`) VALUES
('bram', 'Bramasta', 'bramasta@test.com'),
('nova', 'Nova', 'nova@test.com'),
('tio', 'Albatio', 'Albatio@test.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
