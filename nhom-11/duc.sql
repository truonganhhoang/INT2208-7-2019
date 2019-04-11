-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 05:51 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duc`
--

-- --------------------------------------------------------

--
-- Table structure for table `vong1`
--

CREATE TABLE `vong1` (
  `homeTeam` varchar(20) NOT NULL,
  `awayTeam` varchar(20) NOT NULL,
  `result` varchar(5) NOT NULL,
  `homeLogo` varchar(50) NOT NULL,
  `awayLogo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vong1`
--

INSERT INTO `vong1` (`homeTeam`, `awayTeam`, `result`, `homeLogo`, `awayLogo`) VALUES
('Bayern Munich', 'Hoffenheim', '3 - 1', 'LogoCLB\\Bundesliga\\bayern-munich.png', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
('Dortmund', 'Leipzig', '4 - 1', 'LogoCLB\\Bundesliga\\dortmund.png', 'LogoCLB\\Bundesliga\\leipzig.png'),
('Dusseldorf', 'Augsburg', '1 - 2', 'LogoCLB\\Bundesliga\\dusseldorf.png', 'LogoCLB\\Bundesliga\\augsburg.png'),
('Freiburg', 'Frankfurt', '0 - 2', 'LogoCLB\\Bundesliga\\freiburg.png', 'LogoCLB\\Bundesliga\\frankfurt.png'),
('Hertha Berlin', 'Nurnberg', '1 - 0', 'LogoCLB\\Bundesliga\\hertha-berlin.png', 'LogoCLB\\Bundesliga\\nurnberg.png'),
('Mainz 05', 'Stuttgart', '1 - 0', 'LogoCLB\\Bundesliga\\mainz05.png', 'LogoCLB\\Bundesliga\\stuttgart.png'),
('Monchengladbach', 'Leverkusen', '2 - 0', 'LogoCLB\\Bundesliga\\monchengladbach.png', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
('Werder Bremen', 'Hannover 96', '1 - 1', 'LogoCLB\\Bundesliga\\werder-bremen.png', 'LogoCLB\\Bundesliga\\hannover.png'),
('Wolfsburg', 'Schalke 04', '2 - 1', 'LogoCLB\\Bundesliga\\wolfsburg.png', 'LogoCLB\\Bundesliga\\schalke04.png');

-- --------------------------------------------------------

--
-- Table structure for table `vong2`
--

CREATE TABLE `vong2` (
  `homeTeam` varchar(20) NOT NULL,
  `awayTeam` varchar(20) NOT NULL,
  `result` varchar(5) NOT NULL,
  `homeLogo` varchar(50) NOT NULL,
  `awayLogo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vong2`
--

INSERT INTO `vong2` (`homeTeam`, `awayTeam`, `result`, `homeLogo`, `awayLogo`) VALUES
('Augsburg', 'Monchengladbach', '1 - 1', 'LogoCLB\\Bundesliga\\augsburg.png', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
('Frankfurt', 'Werder Bremen', '1 - 2', 'LogoCLB\\Bundesliga\\frankfurt.png', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
('Hannover 96', 'Dortmund', '0 - 0', 'LogoCLB\\Bundesliga\\hannover.png', 'LogoCLB\\Bundesliga\\dortmund.png'),
('Hoffenheim', 'Freiburg', '3 - 1', 'LogoCLB\\Bundesliga\\hoffenheim.png', 'LogoCLB\\Bundesliga\\freiburg.png'),
('Leipzig', 'Dusseldorf', '1 - 1', 'LogoCLB\\Bundesliga\\leipzig.png', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
('Leverkusen', 'Wolfsburg', '1 - 3', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
('Nurnberg', 'Mainz 05', '1 - 1', 'LogoCLB\\Bundesliga\\nurnberg.png', 'LogoCLB\\Bundesliga\\mainz05.png'),
('Schalke 04', 'Hertha Berlin', '0 - 2', 'LogoCLB\\Bundesliga\\schalke04.png', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
('Stuttgart', 'Bayern Munich', '0 - 3', 'LogoCLB\\Bundesliga\\stuttgart.png', 'LogoCLB\\Bundesliga\\bayern-munich.png');

-- --------------------------------------------------------

--
-- Table structure for table `vong3`
--

CREATE TABLE `vong3` (
  `homeTeam` varchar(20) NOT NULL,
  `awayTeam` varchar(20) NOT NULL,
  `result` varchar(5) NOT NULL,
  `homeLogo` varchar(50) NOT NULL,
  `awayLogo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vong3`
--

INSERT INTO `vong3` (`homeTeam`, `awayTeam`, `result`, `homeLogo`, `awayLogo`) VALUES
('Bayern Munich', 'Leverkusen', '3 - 1', 'LogoCLB\\Bundesliga\\bayern-munich.png', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
('Dortmund', 'Frankfurt', '3 - 1', 'LogoCLB\\Bundesliga\\dortmund.png', 'LogoCLB\\Bundesliga\\frankfurt.png'),
('Dusseldorf', 'Hoffenheim', '2 - 1', 'LogoCLB\\Bundesliga\\dusseldorf.png', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
('Freiburg', 'Stuttgart', '3 - 3', 'LogoCLB\\Bundesliga\\freiburg.png', 'LogoCLB\\Bundesliga\\stuttgart.png'),
('Leipzig', 'Hannover 96', '3 - 2', 'LogoCLB\\Bundesliga\\leipzig.png', 'LogoCLB\\Bundesliga\\hannover.png'),
('Mainz 05', 'Augsburg', '2 - 1', 'LogoCLB\\Bundesliga\\mainz05.png', 'LogoCLB\\Bundesliga\\augsburg.png'),
('Monchengladbach', 'Schalke 04', '2 - 1', 'LogoCLB\\Bundesliga\\monchengladbach.png', 'LogoCLB\\Bundesliga\\schalke04.png'),
('Werder Bremen', 'Nurnberg', '1 - 1', 'LogoCLB\\Bundesliga\\werder-bremen.png', 'LogoCLB\\Bundesliga\\nurnberg.png'),
('Wolfsburg', 'Hertha Berlin', '2 - 2', 'LogoCLB\\Bundesliga\\wolfsburg.png', 'LogoCLB\\Bundesliga\\hertha-berlin.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
