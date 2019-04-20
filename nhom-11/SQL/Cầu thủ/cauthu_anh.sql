-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 04:45 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cauthu_anh`
--

-- --------------------------------------------------------

--
-- Table structure for table `mancity`
--

CREATE TABLE `mancity` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mancity`
--

INSERT INTO `mancity` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Claudio Bravo', 'Chile', 'GK'),
(2, 'Kyle Walker', 'Anh', 'DF'),
(3, 'Danilo Silva', 'Brazil', 'DF'),
(4, 'Vincent Kompany', 'Belgium', 'DF'),
(5, 'John Stones', 'Anh', 'DF'),
(7, 'Raheem Sterling', 'Anh', 'MF'),
(8, 'Ikay Gundogan', 'Germany', 'MF'),
(10, 'Sergio Aguero', 'Argentina', 'FW'),
(14, 'Aymeric Laporte', 'Spain', 'DF'),
(17, 'Kevin de Bruyne', 'Belgium', 'MF'),
(18, 'Fabian Delph', 'Anh', 'MF'),
(19, 'Leroy Sane', 'Germany', 'MF'),
(20, 'Bernado Silva', 'Portugal', 'MF'),
(21, 'David Silva', 'Spain', 'MF'),
(22, 'Benjamin Mendy', 'Pháp', 'DF'),
(25, 'Fernandinho', 'Brazil', 'MF'),
(26, 'Riyah Mahrez', 'Algeri', 'MF'),
(30, 'Nicolas Otamendi', 'Argentina', 'DF'),
(31, 'Ederson Moraes', 'Brazil', 'GK'),
(33, 'Gabriel Jesus', 'Brazil', 'FW'),
(34, 'Philippe Sandler', 'Hà Lan', 'DF'),
(35, 'Oleksandr Zinchenko', 'Ukraina', 'MF'),
(47, 'Philip Walter Foden', 'Anh', 'MF'),
(49, 'Aro Muric', 'Switzerland', 'GK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mancity`
--
ALTER TABLE `mancity`
  ADD PRIMARY KEY (`soao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
