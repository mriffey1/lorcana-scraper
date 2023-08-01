-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2023 at 07:04 PM
-- Server version: 10.5.19-MariaDB-0+deb11u2
-- PHP Version: 7.4.33

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
  `event_name` text NOT NULL,
  `url` text NOT NULL,
  `event_time` datetime NOT NULL,
  `last_tweet` datetime NOT NULL,
  `isPastEvent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `url`, `event_time`, `last_tweet`, `isPastEvent`) VALUES
(1, 'DISNEY LORCANA CASUAL PLAY', 'https://www.gencon.com/events/238936', '2023-08-06 15:00:00', '2023-06-19 11:12:06', 0),
(2, 'DISNEY LORCANA CASUAL PLAY', 'https://www.gencon.com/events/238933', '2023-08-06 14:00:00', '2023-06-19 11:23:03', 0),
(3, 'DISNEY LORCANA CASUAL PLAY', 'https://www.gencon.com/events/238932', '2023-08-06 13:00:00', '2023-06-27 22:00:20', 0),
(4, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235890', '2023-08-06 12:00:00', '2023-06-19 11:23:03', 0),
(5, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235889', '2023-08-06 11:00:00', '2023-06-19 11:23:03', 0),
(6, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235888', '2023-08-06 10:00:00', '2023-06-19 11:23:03', 0),
(7, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235887', '2023-08-06 09:00:00', '2023-06-19 11:23:03', 0),
(8, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235886', '2023-08-05 18:00:00', '2023-06-19 11:23:03', 0),
(9, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235885', '2023-08-05 17:00:00', '2023-06-19 11:23:03', 0),
(10, 'DISNEY LORCANA STARTER DECK CHALLENGE!', 'https://www.gencon.com/events/231432', '2023-08-05 16:00:00', '2023-06-19 11:23:03', 0),
(11, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235884', '2023-08-05 16:00:00', '2023-06-19 11:23:03', 0),
(12, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235883', '2023-08-05 15:00:00', '2023-06-19 11:23:03', 0),
(13, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235882', '2023-08-05 14:00:00', '2023-06-19 11:23:03', 0),
(14, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235881', '2023-08-05 13:00:00', '2023-06-19 11:23:03', 0),
(15, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235880', '2023-08-05 12:00:00', '2023-06-19 11:23:03', 0),
(16, 'DISNEY LORCANA STARTER DECK CHALLENGE!', 'https://www.gencon.com/events/231430', '2023-08-05 11:00:00', '2023-06-19 11:23:03', 0),
(17, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235879', '2023-08-05 11:00:00', '2023-06-19 11:23:03', 0),
(18, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235878', '2023-08-05 10:00:00', '2023-06-19 11:23:03', 0),
(19, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235877', '2023-08-05 09:00:00', '2023-06-19 11:23:03', 0),
(20, 'DISNEY LORCANA STARTER DECK CHALLENGE!', 'https://www.gencon.com/events/231429', '2023-08-04 20:00:00', '2023-06-19 11:23:03', 0),
(21, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235876', '2023-08-04 18:00:00', '2023-06-19 11:23:03', 0),
(22, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235875', '2023-08-04 17:00:00', '2023-06-19 11:23:03', 0),
(23, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235874', '2023-08-04 16:00:00', '2023-06-19 11:23:03', 0),
(24, 'DISNEY LORCANA STARTER DECK CHALLENGE!', 'https://www.gencon.com/events/231428', '2023-08-04 15:00:00', '2023-06-19 11:23:03', 0),
(25, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235873', '2023-08-04 15:00:00', '2023-06-19 11:23:03', 0),
(26, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235872', '2023-08-04 14:00:00', '2023-06-19 11:23:03', 0),
(27, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235871', '2023-08-04 13:00:00', '2023-06-19 11:23:03', 0),
(28, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235870', '2023-08-04 12:00:00', '2023-06-19 11:23:03', 0),
(29, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235869', '2023-08-04 11:00:00', '2023-06-19 11:23:03', 0),
(30, 'DISNEY LORCANA STARTER DECK CHALLENGE!', 'https://www.gencon.com/events/231426', '2023-08-04 10:00:00', '2023-06-19 11:23:03', 0),
(31, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235868', '2023-08-04 10:00:00', '2023-06-19 11:23:03', 0),
(32, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235867', '2023-08-04 09:00:00', '2023-06-19 11:23:03', 0),
(33, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235866', '2023-08-03 18:00:00', '2023-06-19 11:23:03', 0),
(34, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235865', '2023-08-03 17:00:00', '2023-06-19 11:23:03', 0),
(35, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235864', '2023-08-03 16:00:00', '2023-06-19 11:23:03', 0),
(36, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235863', '2023-08-03 15:00:00', '2023-06-19 11:23:03', 0),
(37, 'DISNEY LORCANA STARTER DECK CHALLENGE!', 'https://www.gencon.com/events/231199', '2023-08-03 14:00:00', '2023-06-19 11:23:03', 0),
(38, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235862', '2023-08-03 14:00:00', '2023-07-10 12:01:52', 0),
(39, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235861', '2023-08-03 13:00:00', '2023-06-19 11:23:03', 0),
(40, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235860', '2023-08-03 12:00:00', '2023-06-19 11:23:03', 0),
(41, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235859', '2023-08-03 11:00:00', '2023-06-19 11:23:03', 0),
(42, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/235858', '2023-08-03 10:00:00', '2023-06-19 11:23:03', 0),
(43, 'DISNEY LORCANA STARTER DECK CHALLENGE!', 'https://www.gencon.com/events/237621', '2023-08-03 09:00:00', '2023-06-19 11:23:03', 0),
(44, 'DISNEY LORCANA LEARN-TO-PLAY DEMO', 'https://www.gencon.com/events/231163', '2023-08-03 09:00:00', '2023-06-19 11:23:03', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
