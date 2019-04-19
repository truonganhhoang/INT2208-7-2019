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
-- Database: `clb_anh`
--

-- --------------------------------------------------------

--
-- Table structure for table `arsenal`
--

CREATE TABLE `arsenal` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arsenal`
--

INSERT INTO `arsenal` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Arsenal', 'Man City', 0, 2, 'LogoCLB\\Premier League\\arsenal.png', 'LogoCLB\\Premier League\\mancity.png'),
(2, 'Arsenal', 'Chelsea', 2, 3, 'LogoCLB\\Premier League\\arsenal.png', 'LogoCLB\\Premier League\\chelsea.png'),
(3, 'Arsenal', 'West Ham', 3, 1, 'LogoCLB\\Premier League\\arsenal.png', 'LogoCLB\\Premier League\\westham.png');

-- --------------------------------------------------------

--
-- Table structure for table `bournemouth`
--

CREATE TABLE `bournemouth` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bournemouth`
--

INSERT INTO `bournemouth` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Bournemouth', 'Cardiff', 2, 0, 'LogoCLB\\Premier League\\bournemouth.png', 'LogoCLB\\Premier League\\cardiff.png'),
(2, 'Bournemouth', 'West Ham', 2, 1, 'LogoCLB\\Premier League\\bournemouth.png', 'LogoCLB\\Premier League\\westham.png'),
(3, 'Bournemouth', 'Everton', 2, 2, 'LogoCLB\\Premier League\\bournemouth.png', 'LogoCLB\\Premier League\\everton.png');

-- --------------------------------------------------------

--
-- Table structure for table `brighton`
--

CREATE TABLE `brighton` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brighton`
--

INSERT INTO `brighton` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Brighton', 'Watford', 0, 2, 'LogoCLB\\Premier League\\brighton.png', 'LogoCLB\\Premier League\\watford.png'),
(2, 'Brighton', 'Man Utd', 3, 2, 'LogoCLB\\Premier League\\brighton.png', 'LogoCLB\\Premier League\\manutd.png'),
(3, 'Brighton', 'Liverpool', 0, 1, 'LogoCLB\\Premier League\\brighton.png', 'LogoCLB\\Premier League\\liverpool.png');

-- --------------------------------------------------------

--
-- Table structure for table `burnley`
--

CREATE TABLE `burnley` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `burnley`
--

INSERT INTO `burnley` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Burnley', 'Southampton', 0, 0, 'LogoCLB\\Premier League\\burnley.png', 'LogoCLB\\Premier League\\southampton.png'),
(2, 'Burnley', 'Watford', 1, 3, 'LogoCLB\\Premier League\\burnley.png', 'LogoCLB\\Premier League\\watford.png'),
(3, 'Burnley', 'Fulham', 2, 4, 'LogoCLB\\Premier League\\burnley.png', 'LogoCLB\\Premier League\\fulham.png');

-- --------------------------------------------------------

--
-- Table structure for table `cardiff`
--

CREATE TABLE `cardiff` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardiff`
--

INSERT INTO `cardiff` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Cardiff', 'Bournemouth', 0, 2, 'LogoCLB\\Premier League\\cardiff.png', 'LogoCLB\\Premier League\\bournemouth.png'),
(2, 'Cardiff', 'Newcastle', 0, 0, 'LogoCLB\\Premier League\\cardiff.png', 'LogoCLB\\Premier League\\newcastle.png'),
(3, 'Cardiff', 'Huddersfields', 0, 0, 'LogoCLB\\Premier League\\cardiff.png', 'LogoCLB\\Premier League\\huddersfield.png');

-- --------------------------------------------------------

--
-- Table structure for table `chelsea`
--

CREATE TABLE `chelsea` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chelsea`
--

INSERT INTO `chelsea` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Chelsea', 'Huddersfields', 3, 0, 'LogoCLB\\Premier League\\chelsea.png', 'LogoCLB\\Premier League\\huddersfield.png'),
(2, 'Chelsea', 'Arsenal', 3, 2, 'LogoCLB\\Premier League\\chelsea.png', 'LogoCLB\\Premier League\\arrsenal.png'),
(3, 'Chelsea', 'Newcastle', 2, 1, 'LogoCLB\\Premier League\\chelsea.png', 'LogoCLB\\Premier League\\newcastle.png');

-- --------------------------------------------------------

--
-- Table structure for table `everton`
--

CREATE TABLE `everton` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `everton`
--

INSERT INTO `everton` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Everton', 'Wolves', 2, 2, 'LogoCLB\\Premier League\\everton.png', 'LogoCLB\\Premier League\\wolves.png'),
(2, 'Everton', 'Southampton', 2, 1, 'LogoCLB\\Premier League\\everton.png', 'LogoCLB\\Premier League\\southampton.png'),
(3, 'Everton', 'Bournemouth', 2, 2, 'LogoCLB\\Premier League\\everton.png', 'LogoCLB\\Premier League\\bournemouth.png');

-- --------------------------------------------------------

--
-- Table structure for table `fulham`
--

CREATE TABLE `fulham` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fulham`
--

INSERT INTO `fulham` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Fulham', 'Crystal Palace', 0, 2, 'LogoCLB\\Premier League\\fulham.png', 'LogoCLB\\Premier League\\crystal-palace.png'),
(2, 'Fulham', 'Tottenham', 1, 3, 'LogoCLB\\Premier League\\fulham.png', 'LogoCLB\\Premier League\\tottenham.png'),
(3, 'Fulham', 'Burnley', 4, 2, 'LogoCLB\\Premier League\\fulham.png', 'LogoCLB\\Premier League\\burnley.png');

-- --------------------------------------------------------

--
-- Table structure for table `huddersfields`
--

CREATE TABLE `huddersfields` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `huddersfields`
--

INSERT INTO `huddersfields` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Huddersfields', 'Chelsea', 0, 3, 'LogoCLB\\Premier League\\huddersfield.png', 'LogoCLB\\Premier League\\chelsea.png'),
(2, 'Huddersfields', 'Man City', 1, 6, 'LogoCLB\\Premier League\\huddersfield.png', 'LogoCLB\\Premier League\\mancity.png'),
(3, 'Huddersfields', 'Cardiff', 0, 0, 'LogoCLB\\Premier League\\huddersfield.png', 'LogoCLB\\Premier League\\cardiff.png');

-- --------------------------------------------------------

--
-- Table structure for table `leicester`
--

CREATE TABLE `leicester` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leicester`
--

INSERT INTO `leicester` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Leicester City', 'Man Utd', 1, 2, 'LogoCLB\\Premier League\\leicester.png', 'LogoCLB\\Premier League\\manutd.png'),
(2, 'Leicester City', 'Wolves', 2, 0, 'LogoCLB\\Premier League\\leicester.png', 'LogoCLB\\Premier League\\wolves.png'),
(3, 'Leicester City', 'Southampton', 2, 1, 'LogoCLB\\Premier League\\leicester.png', 'LogoCLB\\Premier League\\southampton.png');

-- --------------------------------------------------------

--
-- Table structure for table `liverpool`
--

CREATE TABLE `liverpool` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `liverpool`
--

INSERT INTO `liverpool` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Liverpool', 'West Ham', 4, 0, 'LogoCLB\\Premier League\\liverpool.png', 'LogoCLB\\Premier League\\westham.png'),
(2, 'Liverpool', 'Crystal Palace', 2, 0, 'LogoCLB\\Premier League\\liverpool.png', 'LogoCLB\\Premier League\\crystal-palace.png'),
(3, 'Liverpool', 'Brighton', 1, 0, 'LogoCLB\\Premier League\\liverpool.png', 'LogoCLB\\Premier League\\brighton.png');

-- --------------------------------------------------------

--
-- Table structure for table `mancity`
--

CREATE TABLE `mancity` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mancity`
--

INSERT INTO `mancity` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Man City', 'Arsenal', 2, 0, 'LogoCLB\\Premier League\\mancity.png', 'LogoCLB\\Premier League\\arsenal.png'),
(2, 'Man City', 'Huddersfields', 6, 1, 'LogoCLB\\Premier League\\mancity.png', 'LogoCLB\\Premier League\\huddersfield.png'),
(3, 'Man City', 'Wolves', 1, 1, 'LogoCLB\\Premier League\\mancity.png', 'LogoCLB\\Premier League\\wolves.png');

-- --------------------------------------------------------

--
-- Table structure for table `manutd`
--

CREATE TABLE `manutd` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manutd`
--

INSERT INTO `manutd` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Man Utd', 'Leicester City', 2, 1, 'LogoCLB\\Premier League\\manutd.png', 'LogoCLB\\Premier League\\leicester.png'),
(2, 'Man Utd', 'Brighton', 2, 3, 'LogoCLB\\Premier League\\manutd.png', 'LogoCLB\\Premier League\\brighton.png'),
(3, 'Man Utd', 'Tottenham', 0, 3, 'LogoCLB\\Premier League\\manutd.png', 'LogoCLB\\Premier League\\tottenham.png');

-- --------------------------------------------------------

--
-- Table structure for table `newcastle`
--

CREATE TABLE `newcastle` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newcastle`
--

INSERT INTO `newcastle` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Newcastle', 'Tottenham', 1, 2, 'LogoCLB\\Premier League\\newcastle.png', 'LogoCLB\\Premier League\\tottenham.png'),
(2, 'Newcastle', 'Cardiff', 0, 0, 'LogoCLB\\Premier League\\newcastle.png', 'LogoCLB\\Premier League\\cardiff.png'),
(3, 'Newcastle', 'Chelsea', 1, 2, 'LogoCLB\\Premier League\\newcastle.png', 'LogoCLB\\Premier League\\chelsea.png');

-- --------------------------------------------------------

--
-- Table structure for table `palace`
--

CREATE TABLE `palace` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `palace`
--

INSERT INTO `palace` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Crystal Palace', 'Fulham', 2, 0, 'LogoCLB\\Premier League\\crystal-palace.png', 'LogoCLB\\Premier League\\fulham.png'),
(2, 'Crystal Palace', 'Liverpool', 0, 2, 'LogoCLB\\Premier League\\crystal-palace.png', 'LogoCLB\\Premier League\\liverpool.png'),
(3, 'Crystal Palace', 'Watford', 1, 2, 'LogoCLB\\Premier League\\crystal-palace.png', 'LogoCLB\\Premier League\\watford.png');

-- --------------------------------------------------------

--
-- Table structure for table `southampton`
--

CREATE TABLE `southampton` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `southampton`
--

INSERT INTO `southampton` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Southampton', 'Burnley', 0, 0, 'LogoCLB\\Premier League\\southampton.png', 'LogoCLB\\Premier League\\burnley.png'),
(2, 'Southampton', 'Everton', 1, 2, 'LogoCLB\\Premier League\\southampton.png', 'LogoCLB\\Premier League\\everton.png'),
(3, 'Southampton', 'Leicester City', 1, 2, 'LogoCLB\\Premier League\\southampton.png', 'LogoCLB\\Premier League\\leicester.png');

-- --------------------------------------------------------

--
-- Table structure for table `tottenham`
--

CREATE TABLE `tottenham` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tottenham`
--

INSERT INTO `tottenham` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Tottenham', 'Newcastle', 2, 1, 'LogoCLB\\Premier League\\tottenham.png', 'LogoCLB\\Premier League\\newcastle.png'),
(2, 'Tottenham', 'Fulham', 3, 1, 'LogoCLB\\Premier League\\tottenham.png', 'LogoCLB\\Premier League\\fulham.png'),
(3, 'Tottenham', 'Man Utd', 3, 0, 'LogoCLB\\Premier League\\tottenham.png', 'LogoCLB\\Premier League\\manutd.png');

-- --------------------------------------------------------

--
-- Table structure for table `watford`
--

CREATE TABLE `watford` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watford`
--

INSERT INTO `watford` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Watford', 'Brighton', 2, 0, 'LogoCLB\\Premier League\\watford.png', 'LogoCLB\\Premier League\\brighton.png'),
(2, 'Watford', 'Burnley', 3, 1, 'LogoCLB\\Premier League\\watford.png', 'LogoCLB\\Premier League\\burnley.png'),
(3, 'Watford', 'Crystal Palace', 2, 1, 'LogoCLB\\Premier League\\watford.png', 'LogoCLB\\Premier League\\crystal-palace.png');

-- --------------------------------------------------------

--
-- Table structure for table `westham`
--

CREATE TABLE `westham` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `westham`
--

INSERT INTO `westham` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'West Ham', 'Liverpool', 0, 4, 'LogoCLB\\Premier League\\westham.png', 'LogoCLB\\Premier League\\liverpool.png'),
(2, 'West Ham', 'Bournemouth', 1, 2, 'LogoCLB\\Premier League\\westham.png', 'LogoCLB\\Premier League\\bournemouth.png'),
(3, 'West Ham', 'Arsenal', 1, 3, 'LogoCLB\\Premier League\\westham.png', 'LogoCLB\\Premier League\\arsenal.png');

-- --------------------------------------------------------

--
-- Table structure for table `wolves`
--

CREATE TABLE `wolves` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wolves`
--

INSERT INTO `wolves` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Wolves', 'Everton', 2, 2, 'LogoCLB\\Premier League\\wolves.png', 'LogoCLB\\Premier League\\everton.png'),
(2, 'Wolves', 'Leicester City', 0, 2, 'LogoCLB\\Premier League\\wolves.png', 'LogoCLB\\Premier League\\leicester.png'),
(3, 'Wolves', 'Man City', 1, 1, 'LogoCLB\\Premier League\\wolves.png', 'LogoCLB\\Premier League\\mancity.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cardiff`
--
ALTER TABLE `cardiff`
  ADD PRIMARY KEY (`vong`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
