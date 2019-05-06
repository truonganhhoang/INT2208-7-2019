-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2019 at 04:08 PM
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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arsenal`
--

INSERT INTO `arsenal` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Arsenal', 'Man City', 0, 2, 'LogoCLB\\Premier League\\arsenal.png', 'LogoCLB\\Premier League\\mancity.png', 'H'),
(2, 'Arsenal', 'Chelsea', 2, 3, 'LogoCLB\\Premier League\\arsenal.png', 'LogoCLB\\Premier League\\chelsea.png', 'A'),
(3, 'Arsenal', 'West Ham', 3, 1, 'LogoCLB\\Premier League\\arsenal.png', 'LogoCLB\\Premier League\\westham.png', 'H');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bournemouth`
--

INSERT INTO `bournemouth` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Bournemouth', 'Cardiff', 2, 0, 'LogoCLB\\Premier League\\bournemouth.png', 'LogoCLB\\Premier League\\cardiff.png', 'H'),
(2, 'Bournemouth', 'West Ham', 2, 1, 'LogoCLB\\Premier League\\bournemouth.png', 'LogoCLB\\Premier League\\westham.png', 'A'),
(3, 'Bournemouth', 'Everton', 2, 2, 'LogoCLB\\Premier League\\bournemouth.png', 'LogoCLB\\Premier League\\everton.png', 'H');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brighton`
--

INSERT INTO `brighton` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Brighton', 'Watford', 0, 2, 'LogoCLB\\Premier League\\brighton.png', 'LogoCLB\\Premier League\\watford.png', 'A'),
(2, 'Brighton', 'Man Utd', 3, 2, 'LogoCLB\\Premier League\\brighton.png', 'LogoCLB\\Premier League\\manutd.png', 'H'),
(3, 'Brighton', 'Liverpool', 0, 1, 'LogoCLB\\Premier League\\brighton.png', 'LogoCLB\\Premier League\\liverpool.png', 'A');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `burnley`
--

INSERT INTO `burnley` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Burnley', 'Southampton', 0, 0, 'LogoCLB\\Premier League\\burnley.png', 'LogoCLB\\Premier League\\southampton.png', 'A'),
(2, 'Burnley', 'Watford', 1, 3, 'LogoCLB\\Premier League\\burnley.png', 'LogoCLB\\Premier League\\watford.png', 'H'),
(3, 'Burnley', 'Fulham', 2, 4, 'LogoCLB\\Premier League\\burnley.png', 'LogoCLB\\Premier League\\fulham.png', 'A');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardiff`
--

INSERT INTO `cardiff` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Cardiff', 'Bournemouth', 0, 2, 'LogoCLB\\Premier League\\cardiff.png', 'LogoCLB\\Premier League\\bournemouth.png', 'A'),
(2, 'Cardiff', 'Newcastle', 0, 0, 'LogoCLB\\Premier League\\cardiff.png', 'LogoCLB\\Premier League\\newcastle.png', 'H'),
(3, 'Cardiff', 'Huddersfields', 0, 0, 'LogoCLB\\Premier League\\cardiff.png', 'LogoCLB\\Premier League\\huddersfield.png', 'A');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chelsea`
--

INSERT INTO `chelsea` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Chelsea', 'Huddersfields', 3, 0, 'LogoCLB\\Premier League\\chelsea.png', 'LogoCLB\\Premier League\\huddersfield.png', 'A'),
(2, 'Chelsea', 'Arsenal', 3, 2, 'LogoCLB\\Premier League\\chelsea.png', 'LogoCLB\\Premier League\\arrsenal.png', 'H'),
(3, 'Chelsea', 'Newcastle', 2, 1, 'LogoCLB\\Premier League\\chelsea.png', 'LogoCLB\\Premier League\\newcastle.png', 'A');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `everton`
--

INSERT INTO `everton` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Everton', 'Wolves', 2, 2, 'LogoCLB\\Premier League\\everton.png', 'LogoCLB\\Premier League\\wolves.png', 'A'),
(2, 'Everton', 'Southampton', 2, 1, 'LogoCLB\\Premier League\\everton.png', 'LogoCLB\\Premier League\\southampton.png', 'H'),
(3, 'Everton', 'Bournemouth', 2, 2, 'LogoCLB\\Premier League\\everton.png', 'LogoCLB\\Premier League\\bournemouth.png', 'A');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fulham`
--

INSERT INTO `fulham` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Fulham', 'Crystal Palace', 0, 2, 'LogoCLB\\Premier League\\fulham.png', 'LogoCLB\\Premier League\\crystal-palace.png', 'H'),
(2, 'Fulham', 'Tottenham', 1, 3, 'LogoCLB\\Premier League\\fulham.png', 'LogoCLB\\Premier League\\tottenham.png', 'A'),
(3, 'Fulham', 'Burnley', 4, 2, 'LogoCLB\\Premier League\\fulham.png', 'LogoCLB\\Premier League\\burnley.png', 'H');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `huddersfields`
--

INSERT INTO `huddersfields` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Huddersfields', 'Chelsea', 0, 3, 'LogoCLB\\Premier League\\huddersfield.png', 'LogoCLB\\Premier League\\chelsea.png', 'H'),
(2, 'Huddersfields', 'Man City', 1, 6, 'LogoCLB\\Premier League\\huddersfield.png', 'LogoCLB\\Premier League\\mancity.png', 'A'),
(3, 'Huddersfields', 'Cardiff', 0, 0, 'LogoCLB\\Premier League\\huddersfield.png', 'LogoCLB\\Premier League\\cardiff.png', 'H');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leicester`
--

INSERT INTO `leicester` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Leicester City', 'Man Utd', 1, 2, 'LogoCLB\\Premier League\\leicester.png', 'LogoCLB\\Premier League\\manutd.png', 'A'),
(2, 'Leicester City', 'Wolves', 2, 0, 'LogoCLB\\Premier League\\leicester.png', 'LogoCLB\\Premier League\\wolves.png', 'H'),
(3, 'Leicester City', 'Southampton', 2, 1, 'LogoCLB\\Premier League\\leicester.png', 'LogoCLB\\Premier League\\southampton.png', 'A');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `liverpool`
--

INSERT INTO `liverpool` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Liverpool', 'West Ham', 4, 0, 'LogoCLB\\Premier League\\liverpool.png', 'LogoCLB\\Premier League\\westham.png', 'H'),
(2, 'Liverpool', 'Crystal Palace', 2, 0, 'LogoCLB\\Premier League\\liverpool.png', 'LogoCLB\\Premier League\\crystal-palace.png', 'A'),
(3, 'Liverpool', 'Brighton', 1, 0, 'LogoCLB\\Premier League\\liverpool.png', 'LogoCLB\\Premier League\\brighton.png', 'H');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mancity`
--

INSERT INTO `mancity` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Man City', 'Arsenal', 2, 0, 'LogoCLB\\Premier League\\mancity.png', 'LogoCLB\\Premier League\\arsenal.png', 'A'),
(2, 'Man City', 'Huddersfields', 6, 1, 'LogoCLB\\Premier League\\mancity.png', 'LogoCLB\\Premier League\\huddersfield.png', 'H'),
(3, 'Man City', 'Wolves', 1, 1, 'LogoCLB\\Premier League\\mancity.png', 'LogoCLB\\Premier League\\wolves.png', 'A');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manutd`
--

INSERT INTO `manutd` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Man Utd', 'Leicester City', 2, 1, 'LogoCLB\\Premier League\\manutd.png', 'LogoCLB\\Premier League\\leicester.png', 'H'),
(2, 'Man Utd', 'Brighton', 2, 3, 'LogoCLB\\Premier League\\manutd.png', 'LogoCLB\\Premier League\\brighton.png', 'A'),
(3, 'Man Utd', 'Tottenham', 0, 3, 'LogoCLB\\Premier League\\manutd.png', 'LogoCLB\\Premier League\\tottenham.png', 'H');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newcastle`
--

INSERT INTO `newcastle` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Newcastle', 'Tottenham', 1, 2, 'LogoCLB\\Premier League\\newcastle.png', 'LogoCLB\\Premier League\\tottenham.png', 'H'),
(2, 'Newcastle', 'Cardiff', 0, 0, 'LogoCLB\\Premier League\\newcastle.png', 'LogoCLB\\Premier League\\cardiff.png', 'A'),
(3, 'Newcastle', 'Chelsea', 1, 2, 'LogoCLB\\Premier League\\newcastle.png', 'LogoCLB\\Premier League\\chelsea.png', 'H');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `palace`
--

INSERT INTO `palace` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Crystal Palace', 'Fulham', 2, 0, 'LogoCLB\\Premier League\\crystal-palace.png', 'LogoCLB\\Premier League\\fulham.png', 'A'),
(2, 'Crystal Palace', 'Liverpool', 0, 2, 'LogoCLB\\Premier League\\crystal-palace.png', 'LogoCLB\\Premier League\\liverpool.png', 'H'),
(3, 'Crystal Palace', 'Watford', 1, 2, 'LogoCLB\\Premier League\\crystal-palace.png', 'LogoCLB\\Premier League\\watford.png', 'A');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `southampton`
--

INSERT INTO `southampton` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Southampton', 'Burnley', 0, 0, 'LogoCLB\\Premier League\\southampton.png', 'LogoCLB\\Premier League\\burnley.png', 'H'),
(2, 'Southampton', 'Everton', 1, 2, 'LogoCLB\\Premier League\\southampton.png', 'LogoCLB\\Premier League\\everton.png', 'A'),
(3, 'Southampton', 'Leicester City', 1, 2, 'LogoCLB\\Premier League\\southampton.png', 'LogoCLB\\Premier League\\leicester.png', 'H');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tottenham`
--

INSERT INTO `tottenham` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Tottenham', 'Newcastle', 2, 1, 'LogoCLB\\Premier League\\tottenham.png', 'LogoCLB\\Premier League\\newcastle.png', 'A'),
(2, 'Tottenham', 'Fulham', 3, 1, 'LogoCLB\\Premier League\\tottenham.png', 'LogoCLB\\Premier League\\fulham.png', 'H'),
(3, 'Tottenham', 'Man Utd', 3, 0, 'LogoCLB\\Premier League\\tottenham.png', 'LogoCLB\\Premier League\\manutd.png', 'A');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watford`
--

INSERT INTO `watford` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Watford', 'Brighton', 2, 0, 'LogoCLB\\Premier League\\watford.png', 'LogoCLB\\Premier League\\brighton.png', 'H'),
(2, 'Watford', 'Burnley', 3, 1, 'LogoCLB\\Premier League\\watford.png', 'LogoCLB\\Premier League\\burnley.png', 'A'),
(3, 'Watford', 'Crystal Palace', 2, 1, 'LogoCLB\\Premier League\\watford.png', 'LogoCLB\\Premier League\\crystal-palace.png', 'H');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `westham`
--

INSERT INTO `westham` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'West Ham', 'Liverpool', 0, 4, 'LogoCLB\\Premier League\\westham.png', 'LogoCLB\\Premier League\\liverpool.png', 'A'),
(2, 'West Ham', 'Bournemouth', 1, 2, 'LogoCLB\\Premier League\\westham.png', 'LogoCLB\\Premier League\\bournemouth.png', 'H'),
(3, 'West Ham', 'Arsenal', 1, 3, 'LogoCLB\\Premier League\\westham.png', 'LogoCLB\\Premier League\\arsenal.png', 'A');

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
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wolves`
--

INSERT INTO `wolves` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Wolves', 'Everton', 2, 2, 'LogoCLB\\Premier League\\wolves.png', 'LogoCLB\\Premier League\\everton.png', 'H'),
(2, 'Wolves', 'Leicester City', 0, 2, 'LogoCLB\\Premier League\\wolves.png', 'LogoCLB\\Premier League\\leicester.png', 'A'),
(3, 'Wolves', 'Man City', 1, 1, 'LogoCLB\\Premier League\\wolves.png', 'LogoCLB\\Premier League\\mancity.png', 'H');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arsenal`
--
ALTER TABLE `arsenal`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `bournemouth`
--
ALTER TABLE `bournemouth`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `brighton`
--
ALTER TABLE `brighton`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `burnley`
--
ALTER TABLE `burnley`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `cardiff`
--
ALTER TABLE `cardiff`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `chelsea`
--
ALTER TABLE `chelsea`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `everton`
--
ALTER TABLE `everton`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `fulham`
--
ALTER TABLE `fulham`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `huddersfields`
--
ALTER TABLE `huddersfields`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `leicester`
--
ALTER TABLE `leicester`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `liverpool`
--
ALTER TABLE `liverpool`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `mancity`
--
ALTER TABLE `mancity`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `manutd`
--
ALTER TABLE `manutd`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `newcastle`
--
ALTER TABLE `newcastle`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `palace`
--
ALTER TABLE `palace`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `southampton`
--
ALTER TABLE `southampton`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `tottenham`
--
ALTER TABLE `tottenham`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `watford`
--
ALTER TABLE `watford`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `westham`
--
ALTER TABLE `westham`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `wolves`
--
ALTER TABLE `wolves`
  ADD PRIMARY KEY (`vong`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
