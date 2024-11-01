-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2024 at 11:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `professional` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `professional`, `email`, `password`, `phone`, `nationality`) VALUES
(3, 'Ramadhani Hassan', 'programmer', 'ramadhani@gmail.com', '$2y$10$wbkSBPv4cpRU8izeLUj27OZfGPPt21M984CBU3fOVEgapkReyO7oK', '0774050185', 'Tanzania'),
(8, 'Godson Kuyega', 'programmer', 'gkuyega@gmail.com', '$2y$10$N1LU4oZ7pNcfdo5Xq4/jr.dXysnfIMEX0En8lO7CbyWz7w/OJLaeO', '0715886523', 'Tanzanian'),
(9, 'Ibrahim Kambangwa', 'Engineer', 'ibrahim@gmail.com', '$2y$10$jwnmfqsqiOgvxs5j/LqKN.wIU4DJdVx7WRxPa0G05szLWtq.Tzjsq', '0715288053', 'Tanzania'),
(15, 'Abdullah Mengi', 'Teacher', 'abdullah@gmail.com', '$2y$10$ac9MRNMAaSZ/j.k.7d16qOgQQyreAMsqUTH5myMZERv0ETg8fzuqO', '34567567867', 'Tanzania');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
