-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2020 at 09:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawyerapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(256) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `createdAt`, `updatedAt`) VALUES
(1, 'Labor and Employment Law', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'criminal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Corporate law', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Tort laws', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Insurance Law', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Social Security Law', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'family law', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Personal Law', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'traffic', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'deficit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Arrests', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'real estate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Bankruptcy', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lawyers`
--

CREATE TABLE `lawyers` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `phone` int(11) NOT NULL,
  `cc` varchar(256) NOT NULL,
  `ccs` varchar(256) NOT NULL,
  `education` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `company` varchar(256) NOT NULL,
  `location_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category` varchar(256) NOT NULL,
  `location` varchar(256) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lawyers`
--

INSERT INTO `lawyers` (`id`, `name`, `lastname`, `phone`, `cc`, `ccs`, `education`, `image`, `company`, `location_id`, `category_id`, `category`, `location`, `createdAt`, `updatedAt`) VALUES
(1, 'Eithan', 'Turjeman', 542432755, '4', '7', '10 years experience 2 degrees law school', '', 'ITG ', 3, 7, 'Family law', 'Haifa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Omer', 'Sharvit', 552113345, '1', '4', '5 years Experience with law', 'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png', 'ITG', 5, 2, 'criminal', 'Tel-Aviv', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Racheli', 'Lev', 123456, '2', '5', '2 yers', '', 'IGG', 3, 3, 'Corporate Law', 'Sdereot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Simha', 'Shalom', 505050, '23', '24', '5Years Exp', '', 'KOL', 5, 7, 'family law', 'Tel-Aviv', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Liza', 'Biton', 512246587, '2', '3', '2 Years', '', 'SE', 0, 8, 'Personal Law', 'Tel-Aviv', '2020-07-25 08:17:54', '2020-07-25 08:17:54'),
(11, 'Michal', 'Mess', 575648752, '7', '6', '5 Years', '', 'KOA', 0, 6, 'Social Security Law', 'Tel-Aviv', '2020-07-25 22:21:44', '2020-07-25 22:21:44'),
(15, 'Ziad', 'Zomema', 544255544, '12', '7', '5 Years', '', 'KORAT', 0, 1, 'Labor and Employment Law', 'Acre', '2020-07-29 16:18:46', '2020-07-29 16:18:46'),
(16, 'Micha', 'Ziv', 555757422, '12', '12', '3 Years', '', 'MSZ', 0, 13, 'Bankruptcy', 'Kiryat Yam', '2020-07-29 16:56:19', '2020-07-29 16:56:19'),
(17, 'Racheli', 'Refael', 547775552, '2', '2', '0 Years', '', 'RF', 21, 12, 'real estate', 'Modiin Maccabim Reut', '2020-07-29 16:58:17', '2020-07-29 16:58:17'),
(18, 'Kosh', 'Loko', 516878987, '12', '7', '5 Years', '', 'ZIZI', 14, 6, 'Social Security Law', 'Ashkelon', '2020-07-29 20:39:54', '2020-07-29 20:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location` varchar(256) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location`, `createdAt`, `updatedAt`) VALUES
(1, 'Jerusalem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Tel-Aviv', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Haifa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Rishon-Letzion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Petah-Tikva', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Ashdod', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Natanya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Beer-Sheva', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Bnei-Brak', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Hulon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Ramat-Gan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Ashkelon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Rechovot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Bat-Yam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Bet-Shemesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Kefar-Saba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Hertzliya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Hadera', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Modiin Maccabim Reut', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Nazareth', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Lod', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Ramla', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Raanana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Modiin Elite', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Rahat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Hod Hasharon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Givatayim', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Kiryat Ata', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Nahariya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Beitar Illit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Umm el Fahm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Kiryat Gat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Eilat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Rosh Haayin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Afula', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Nes Ziona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Acre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Elad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Ramat Hasharon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Karmiel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Yavne', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Tiberias', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Tayibe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Kiryat Motzkin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Shfaram', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Nof HaGalil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Kiryat Yam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Kiryat Bialik', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Kiryat Ono', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Maale Adumim', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Or Yehuda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Zefat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Netivot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Dimona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Tamra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Sakhnin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Yehud-Monosson', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Baka El Garbiya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Ofakim', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Givat Shmuel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Tira ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Arad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Migdal HaEmek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Sderot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Arraba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Nesher', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Kiryat Shmona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Yokneam Illit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Kfar Kasem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Kfar Yona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Kiryat Malachi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Maalot Tarshiha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Tirat Carmel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Ariel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Or Akiva', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Beit Shean', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `name`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'Idan Turjeman', 'ITG.group112@gmail.com', 'Az0529402964', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Idan Gispan', 'ITG.group112@gmail.com', 'idaneli789789', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pendings`
--

CREATE TABLE `pendings` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `lastname` varchar(256) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `cc` varchar(256) DEFAULT NULL,
  `ccs` varchar(256) DEFAULT NULL,
  `education` varchar(256) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `company` varchar(256) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category` varchar(256) DEFAULT NULL,
  `location` varchar(256) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lawyers`
--
ALTER TABLE `lawyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendings`
--
ALTER TABLE `pendings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lawyers`
--
ALTER TABLE `lawyers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pendings`
--
ALTER TABLE `pendings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
