-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lorcanadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `last_tweet` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `url`, `last_tweet`) VALUES
(1, 'https://www.gencon.com/events/238936', '2023-06-19 11:12:06'),
(2, 'https://www.gencon.com/events/238933', '2023-06-19 11:23:03'),
(3, 'https://www.gencon.com/events/238932', '2023-06-19 11:23:03'),
(4, 'https://www.gencon.com/events/235890', '2023-06-19 11:23:03'),
(5, 'https://www.gencon.com/events/235889', '2023-06-19 11:23:03'),
(6, 'https://www.gencon.com/events/235888', '2023-06-19 11:23:03'),
(7, 'https://www.gencon.com/events/235887', '2023-06-19 11:23:03'),
(8, 'https://www.gencon.com/events/235886', '2023-06-19 11:23:03'),
(9, 'https://www.gencon.com/events/235885', '2023-06-19 11:23:03'),
(10, 'https://www.gencon.com/events/231432', '2023-06-19 11:23:03'),
(11, 'https://www.gencon.com/events/235884', '2023-06-19 11:23:03'),
(12, 'https://www.gencon.com/events/235883', '2023-06-19 11:23:03'),
(13, 'https://www.gencon.com/events/235882', '2023-06-19 11:23:03'),
(14, 'https://www.gencon.com/events/235881', '2023-06-19 11:23:03'),
(15, 'https://www.gencon.com/events/235880', '2023-06-19 11:23:03'),
(16, 'https://www.gencon.com/events/231430', '2023-06-19 11:23:03'),
(17, 'https://www.gencon.com/events/235879', '2023-06-19 11:23:03'),
(18, 'https://www.gencon.com/events/235878', '2023-06-19 11:23:03'),
(19, 'https://www.gencon.com/events/235877', '2023-06-19 11:23:03'),
(20, 'https://www.gencon.com/events/231429', '2023-06-19 11:23:03'),
(21, 'https://www.gencon.com/events/235876', '2023-06-19 11:23:03'),
(22, 'https://www.gencon.com/events/235875', '2023-06-19 11:23:03'),
(23, 'https://www.gencon.com/events/235874', '2023-06-19 11:23:03'),
(24, 'https://www.gencon.com/events/231428', '2023-06-19 11:23:03'),
(25, 'https://www.gencon.com/events/235873', '2023-06-19 11:23:03'),
(26, 'https://www.gencon.com/events/235872', '2023-06-19 11:23:03'),
(27, 'https://www.gencon.com/events/235871', '2023-06-19 11:23:03'),
(28, 'https://www.gencon.com/events/235870', '2023-06-19 11:23:03'),
(29, 'https://www.gencon.com/events/235869', '2023-06-19 11:23:03'),
(30, 'https://www.gencon.com/events/231426', '2023-06-19 11:23:03'),
(31, 'https://www.gencon.com/events/235868', '2023-06-19 11:23:03'),
(32, 'https://www.gencon.com/events/235867', '2023-06-19 11:23:03'),
(33, 'https://www.gencon.com/events/235866', '2023-06-19 11:23:03'),
(34, 'https://www.gencon.com/events/235865', '2023-06-19 11:23:03'),
(35, 'https://www.gencon.com/events/235864', '2023-06-19 11:23:03'),
(36, 'https://www.gencon.com/events/235863', '2023-06-19 11:23:03'),
(37, 'https://www.gencon.com/events/231199', '2023-06-19 11:23:03'),
(38, 'https://www.gencon.com/events/235862', '2023-06-19 11:23:03'),
(39, 'https://www.gencon.com/events/235861', '2023-06-19 11:23:03'),
(40, 'https://www.gencon.com/events/235860', '2023-06-19 11:23:03'),
(41, 'https://www.gencon.com/events/235859', '2023-06-19 11:23:03'),
(42, 'https://www.gencon.com/events/235858', '2023-06-19 11:23:03'),
(43, 'https://www.gencon.com/events/237621', '2023-06-19 11:23:03'),
(44, 'https://www.gencon.com/events/231163', '2023-06-19 11:23:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
