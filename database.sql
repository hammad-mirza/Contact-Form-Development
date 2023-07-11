-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 10:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `SUBJECT` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `TIMESTAMP` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `full_name`, `phone_number`, `email`, `SUBJECT`, `message`, `ip_address`, `TIMESTAMP`) VALUES
(1, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'RFRFRFRGT', 'RGTRGRTGTRGTRG', '::1', '2023-07-09 19:04:08'),
(2, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'RFRFRFRGT', 'RGTRGRTGTRGTRG', '::1', '2023-07-09 19:04:25'),
(3, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'fvgvgt', 'j kgnvkngljknrkjnjkrndlgk', '::1', '2023-07-09 19:04:34'),
(4, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'fvgvgt', 'j kgnvkngljknrkjnjkrndlgk', '::1', '2023-07-09 19:11:59'),
(5, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'eerff', 'zzz', '::1', '2023-07-09 19:12:09'),
(6, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'eerff', 'zzz', '::1', '2023-07-09 19:16:05'),
(7, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'erfegtrgtr', 'htrhtyhtyh', '::1', '2023-07-09 19:16:12'),
(8, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'erfegtrgtr', 'htrhtyhtyh', '::1', '2023-07-09 19:18:32'),
(9, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'dv', 'grg', '::1', '2023-07-09 19:18:41'),
(10, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'edfefe', 'freferferfe', '::1', '2023-07-09 19:22:19'),
(11, 'sx', '659', 'hammadmirza7860@gmail.com', 'eerff', 'mmm', '::1', '2023-07-10 09:26:08'),
(12, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'fvgvgt', 'm kmk', '::1', '2023-07-10 09:26:31'),
(13, 'rf', '+917037572882', 'hammadmirza7860@gmail.com', 'rr', 'rrr', '::1', '2023-07-10 09:27:05'),
(14, 'Mirza Hammad', 'e', 'hammadmirza7860@gmail.com', 'w', 'ww', '::1', '2023-07-10 09:27:56'),
(15, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'fvgvgt', 'wde', '::1', '2023-07-10 09:28:52'),
(16, 'Mirza Hammad', '+917037572882', 'hammadmirza7860@gmail.com', 'eerff', 'd', '::1', '2023-07-11 10:17:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
