-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2019 at 04:51 PM
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
-- Database: `anh`
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
('AFC Bournemouth', 'Cardiff City', '2 - 0', 'LogoCLB\\Premier League\\bournemouth.png', 'LogoCLB\\Premier League\\cardiff.png'),
('Arsenal', 'Man City', '0 - 2', 'LogoCLB\\Premier League\\arsenal.png', 'LogoCLB\\Premier League\\mancity.png'),
('Fulham', 'Crystal Palace', '0 - 2', 'LogoCLB\\Premier League\\fulham.png', 'LogoCLB\\Premier League\\crystal-palace.png'),
('Huddersfield Town', 'Chelsea', '0 - 3', 'LogoCLB\\Premier League\\huddersfield.png', 'LogoCLB\\Premier League\\chelsea.png'),
('Liverpool', 'Westham', '4 - 0', 'LogoCLB\\Premier League\\liverpool.png', 'LogoCLB\\Premier League\\westham.png'),
('Man Utd', 'Leicester City', '2 - 1', 'LogoCLB\\Premier League\\manutd.png', 'LogoCLB\\Premier League\\leicester.png'),
('Newcastle United', 'Tottenham Hotspur', '1 - 2', 'LogoCLB\\Premier League\\newcastle.png', 'LogoCLB\\Premier League\\tottenham.png'),
('Southampton', 'Burnley', '0 - 0', 'LogoCLB\\Premier League\\southampton.png', 'LogoCLB\\Premier League\\burnley.png'),
('Watford', 'Brighton ', '2 - 0', 'LogoCLB\\Premier League\\watford.png', 'LogoCLB\\Premier League\\brighton.png'),
('Wolverhampton', 'Everton', '2 - 2', 'LogoCLB\\Premier League\\wolves.png', 'LogoCLB\\Premier League\\everton.png');

-- --------------------------------------------------------

--
-- Table structure for table `vong2`
--

CREATE TABLE `vong2` (
  `homeTeam` varchar(20) NOT NULL,
  `awayTeam` varchar(20) NOT NULL,
  `result` varchar(10) NOT NULL,
  `homeLogo` varchar(50) NOT NULL,
  `awayLogo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vong2`
--

INSERT INTO `vong2` (`homeTeam`, `awayTeam`, `result`, `homeLogo`, `awayLogo`) VALUES
('Wolverhampton', 'Man City', '1 - 1', 'LogoCLB\\Premier League\\wolves.png', 'LogoCLB\\Premier League\\mancity.png'),
('Arsenal', 'Westham', '3 - 1', 'LogoCLB\\Premier League\\arsenal.png', 'LogoCLB\\Premier League\\westham.png'),
('AFC Bournermouth', 'Everton', '2 - 2', 'LogoCLB\\Premier League\\bournemouth.png', 'LogoCLB\\Premier League\\everton.png'),
('Huddersfield Town', 'Cardiff City', '0 - 0', 'LogoCLB\\Premier League\\huddersfield.png', 'LogoCLB\\Premier League\\cardiff.png'),
('Southampton', 'Leicester City', '1 - 2', 'LogoCLB\\Premier League\\southampton.png', 'LogoCLB\\Premier League\\leicester.png'),
('Liverpool', 'Brighton & Hove', '1 - 0', 'LogoCLB\\Premier League\\liverpool.png', 'LogoCLB\\Premier League\\brighton.png'),
('Watford', 'Crystal Palace', '2 - 1', 'LogoCLB\\Premier League\\watford.png', 'LogoCLB\\Premier League\\crystal-palace.png'),
('Fulham', 'Burnley', '4 - 2', 'LogoCLB\\Premier League\\fulham.png', 'LogoCLB\\Premier League\\burnley.png'),
('Newcastle', 'Chelsea', '1 - 2', 'LogoCLB\\Premier League\\newcastle.png', 'LogoCLB\\Premier League\\chelsea.png'),
('Man Utd', 'Tottenham', '0 - 3', 'LogoCLB\\Premier League\\manutd.png', 'LogoCLB\\Premier League\\tottenham.png');

-- --------------------------------------------------------

--
-- Table structure for table `vong3`
--

CREATE TABLE `vong3` (
  `homeTeam` varchar(20) NOT NULL,
  `awayTeam` varchar(20) NOT NULL,
  `result` varchar(10) NOT NULL,
  `homeLogo` varchar(50) NOT NULL,
  `awayLogo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vong3`
--

INSERT INTO `vong3` (`homeTeam`, `awayTeam`, `result`, `homeLogo`, `awayLogo`) VALUES
('Cardiff City', 'Newcastle United', '0 - 0', 'LogoCLB\\Premier League\\cardiff.png', 'LogoCLB\\Premier League\\newcastle.png'),
('Everton', 'Southampton', '2 - 1', 'LogoCLB\\Premier League\\everton.png', 'LogoCLB\\Premier League\\southampton.png'),
('Leicester City', 'Wolverhampton', '2 - 0', 'LogoCLB\\Premier League\\leicester.png', 'LogoCLB\\Premier League\\wolves.png'),
('Tottenham', 'Fulham', '3 - 1', 'LogoCLB\\Premier League\\tottenham.png', 'LogoCLB\\Premier League\\fulham.png'),
('Westham', 'AFC Bournemouth', '1 - 2', 'LogoCLB\\Premier League\\westham.png', 'LogoCLB\\Premier League\\bournemouth.png'),
('Chelsea', 'Arsenal', '3 - 2', 'LogoCLB\\Premier League\\chelsea.png', 'LogoCLB\\Premier League\\arsenal.png'),
('Burnley', 'Watford', '1 - 3', 'LogoCLB\\Premier League\\burnley.png', 'LogoCLB\\Premier League\\watford.png'),
('Man City', 'Huddersfield Town', '6 - 1', 'LogoCLB\\Premier League\\mancity.png', 'LogoCLB\\Premier League\\huddersfield.png'),
('Brighton & Hove', 'Man Utd', '3 - 2', 'LogoCLB\\Premier League\\brighton.png', 'LogoCLB\\Premier League\\manutd.png'),
('Crystal Palace', 'Liverpool', '0 - 2', 'LogoCLB\\Premier League\\crystal-palace.png', 'LogoCLB\\Premier League\\liverpool.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
