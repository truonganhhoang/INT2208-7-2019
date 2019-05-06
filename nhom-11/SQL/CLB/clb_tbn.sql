-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 04:43 PM
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
-- Database: `clb_tbn`
--

-- --------------------------------------------------------

--
-- Table structure for table `alaves`
--

CREATE TABLE `alaves` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alaves`
--

INSERT INTO `alaves` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Alaves', 'Barcelona', 0, 3, 'LogoCLB\\La Liga\\alaves.png', 'LogoCLB\\La Liga\\barcelona.png'),
(2, 'Alaves', 'Real Betis', 0, 0, 'LogoCLB\\La Liga\\alaves.png', 'LogoCLB\\La Liga\\realbetis.png'),
(3, 'Alaves', 'Espanyol', 2, 1, 'LogoCLB\\La Liga\\alaves.png', 'LogoCLB\\La Liga\\espanyol.png');

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Atletico Madrid', 'Valencia', 1, 1, 'LogoCLB\\La Liga\\atleticomadrid.png', 'LogoCLB\\La Liga\\valencia.pn'),
(2, 'Atletico Madrid', 'Rayo Vallecano', 1, 0, 'LogoCLB\\La Liga\\atleticomadrid.png', 'LogoCLB\\La Liga\\rayo.png'),
(3, 'Atletico Madrid', 'Celta Vigo', 0, 2, 'LogoCLB\\La Liga\\atleticomadrid.png', 'LogoCLB\\La Liga\\celtavigo.png');

-- --------------------------------------------------------

--
-- Table structure for table `barcelona`
--

CREATE TABLE `barcelona` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barcelona`
--

INSERT INTO `barcelona` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Barcelona', 'Alaves', 3, 0, 'LogoCLB\\La Liga\\barcelona.png', 'LogoCLB\\La Liga\\alaves.png'),
(2, 'Barcelona', 'Valladolid', 1, 0, 'LogoCLB\\La Liga\\barcelona.png', 'LogoCLB\\La Liga\\valladolid.png'),
(3, 'Barcelona', 'Huesca', 8, 2, 'LogoCLB\\La Liga\\barcelona.png', 'LogoCLB\\La Liga\\huesca.png');

-- --------------------------------------------------------

--
-- Table structure for table `betis`
--

CREATE TABLE `betis` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `betis`
--

INSERT INTO `betis` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Real Betis', 'Levante', 0, 3, 'LogoCLB\\La Liga\\realbetis.png', 'LogoCLB\\La Liga\\levante.png'),
(2, 'Real Betis', 'Alaves', 0, 0, 'LogoCLB\\La Liga\\realbetis.png', 'LogoCLB\\La Liga\\alaves.png'),
(3, 'Real Betis', 'Sevilla', 1, 0, 'LogoCLB\\La Liga\\realbetis.png', 'LogoCLB\\La Liga\\sevilla.png');

-- --------------------------------------------------------

--
-- Table structure for table `bilbao`
--

CREATE TABLE `bilbao` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bilbao`
--

INSERT INTO `bilbao` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Athletic Bilbao', 'Leganes', 2, 1, 'LogoCLB\\La Liga\\athleticbilbao.png', 'LogoCLB\\La Liga\\leganes.png'),
(2, 'Athletic Bilbao', 'Huesca', 2, 2, 'LogoCLB\\La Liga\\athleticbilbao.png', 'LogoCLB\\La Liga\\huesca.png'),
(3, 'Athletic Bilbao', 'Rayo Vallecano', 1, 1, 'LogoCLB\\La Liga\\athleticbilbao.png', 'LogoCLB\\La Liga\\rayo.png');

-- --------------------------------------------------------

--
-- Table structure for table `celtavigo`
--

CREATE TABLE `celtavigo` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `celtavigo`
--

INSERT INTO `celtavigo` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Celta Vigo', 'Espanyol', 1, 1, 'LogoCLB\\La Liga\\celtavigo.png', 'LogoCLB\\La Liga\\espanyol.png'),
(2, 'Celta Vigo', 'Levante', 2, 1, 'LogoCLB\\La Liga\\celtavigo.png', 'LogoCLB\\La Liga\\levante.png'),
(3, 'Celta Vigo', 'Atletico Madrid', 2, 0, 'LogoCLB\\La Liga\\celtavigo.png', 'LogoCLB\\La Liga\\atleticomadrid.png');

-- --------------------------------------------------------

--
-- Table structure for table `eibar`
--

CREATE TABLE `eibar` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eibar`
--

INSERT INTO `eibar` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Eibar', 'Huesca', 1, 2, 'LogoCLB\\La Liga\\eibar.png', 'LogoCLB\\La Liga\\huesca.png'),
(2, 'Eibar', 'Getafe', 0, 2, 'LogoCLB\\La Liga\\eibar.png', 'LogoCLB\\La Liga\\getafe.png'),
(3, 'Eibar', 'Real Sociedad', 2, 1, 'LogoCLB\\La Liga\\eibar.png', 'LogoCLB\\La Liga\\sociedad.png');

-- --------------------------------------------------------

--
-- Table structure for table `espanyol`
--

CREATE TABLE `espanyol` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `espanyol`
--

INSERT INTO `espanyol` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Espanyol', 'Celta Vigo', 1, 1, 'LogoCLB\\La Liga\\espanyol.png', 'LogoCLB\\La Liga\\celtavigo.png'),
(2, 'Espanyol', 'Valencia', 2, 0, 'LogoCLB\\La Liga\\espanyol.png', 'LogoCLB\\La Liga\\valencia.png'),
(3, 'Espanyol', 'Alaves', 1, 2, 'LogoCLB\\La Liga\\espanyol.png', 'LogoCLB\\La Liga\\alaves.png');

-- --------------------------------------------------------

--
-- Table structure for table `getafe`
--

CREATE TABLE `getafe` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `getafe`
--

INSERT INTO `getafe` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Getafe', 'Real Madrid', 0, 2, 'LogoCLB\\La Liga\\getafe.png', 'LogoCLB\\La Liga\\real.png'),
(2, 'Getafe', 'Eibar', 2, 0, 'LogoCLB\\La Liga\\getafe.png', 'LogoCLB\\La Liga\\eibar.png'),
(3, 'Getafe', 'Valladolid', 0, 0, 'LogoCLB\\La Liga\\getafe.png', 'LogoCLB\\La Liga\\valladolid.png');

-- --------------------------------------------------------

--
-- Table structure for table `girona`
--

CREATE TABLE `girona` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `girona`
--

INSERT INTO `girona` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Girona', 'Valladolid', 0, 0, 'LogoCLB\\La Liga\\girona.png', 'LogoCLB\\La Liga\\valladolid.png'),
(2, 'Girona', 'Real Madrid', 1, 4, 'LogoCLB\\La Liga\\girona.png', 'LogoCLB\\La Liga\\real.png'),
(3, 'Girona', 'Villarreal', 1, 0, 'LogoCLB\\La Liga\\girona.png', 'LogoCLB\\La Liga\\villareal.png');

-- --------------------------------------------------------

--
-- Table structure for table `huesca`
--

CREATE TABLE `huesca` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `huesca`
--

INSERT INTO `huesca` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Huesca', 'Eibar', 2, 1, 'LogoCLB\\La Liga\\huesca.png', 'LogoCLB\\La Liga\\eibar.png'),
(2, 'Huesca', 'Athletic Bilbao', 2, 2, 'LogoCLB\\La Liga\\huesca.png', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(3, 'Huesca', 'Barcelona', 2, 8, 'LogoCLB\\La Liga\\huesca.png', 'LogoCLB\\La Liga\\barcelona.png');

-- --------------------------------------------------------

--
-- Table structure for table `leganes`
--

CREATE TABLE `leganes` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leganes`
--

INSERT INTO `leganes` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Leganes', 'Athletic Bilbao', 1, 2, 'LogoCLB\\La Liga\\leganes.png', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(2, 'Leganes', 'Real Sociedad', 2, 2, 'LogoCLB\\La Liga\\leganes.png', 'LogoCLB\\La Liga\\sociedad.png'),
(3, 'Leganes', 'Real Madrid', 1, 4, 'LogoCLB\\La Liga\\leganes.png', 'LogoCLB\\La Liga\\real.png');

-- --------------------------------------------------------

--
-- Table structure for table `levante`
--

CREATE TABLE `levante` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `levante`
--

INSERT INTO `levante` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Levante', 'Real Betis', 3, 0, 'LogoCLB\\La Liga\\levante.png', 'LogoCLB\\La Liga\\realbetis.png'),
(2, 'Levante', 'Celta Vigo', 1, 2, 'LogoCLB\\La Liga\\levante.png', 'LogoCLB\\La Liga\\celtavigo.png'),
(3, 'Levante', 'Valencia', 2, 2, 'LogoCLB\\La Liga\\levante.png', 'LogoCLB\\La Liga\\valencia.png');

-- --------------------------------------------------------

--
-- Table structure for table `realmadrid`
--

CREATE TABLE `realmadrid` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `realmadrid`
--

INSERT INTO `realmadrid` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Real Madrid', 'Getafe', 2, 0, 'LogoCLB\\La Liga\\real.png', 'LogoCLB\\La Liga\\getafe.png'),
(2, 'Real Madrid', 'Girona', 4, 1, 'LogoCLB\\La Liga\\real.png', 'LogoCLB\\La Liga\\girona.png'),
(3, 'Real Madrid', 'Leganes', 4, 1, 'LogoCLB\\La Liga\\real.png', 'LogoCLB\\La Liga\\leganes.png');

-- --------------------------------------------------------

--
-- Table structure for table `sevilla`
--

CREATE TABLE `sevilla` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sevilla`
--

INSERT INTO `sevilla` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Sevilla', 'Rayo Vallecano', 4, 1, 'LogoCLB\\La Liga\\sevilla.png', 'LogoCLB\\La Liga\\rayo.png'),
(2, 'Sevilla', 'Villarreal', 0, 0, 'LogoCLB\\La Liga\\sevilla.png', 'LogoCLB\\La Liga\\villareal.png'),
(3, 'Sevilla', 'Real Betis', 0, 1, 'LogoCLB\\La Liga\\sevilla.png', 'LogoCLB\\La Liga\\realbetis.png');

-- --------------------------------------------------------

--
-- Table structure for table `sociedad`
--

CREATE TABLE `sociedad` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sociedad`
--

INSERT INTO `sociedad` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Real Sociedad', 'Villarreal', 2, 1, 'LogoCLB\\La Liga\\sociedad.png', 'LogoCLB\\La Liga\\villareal.png'),
(2, 'Real Sociedad', 'Leganes', 2, 2, 'LogoCLB\\La Liga\\sociedad.png', 'LogoCLB\\La Liga\\leganes.png'),
(3, 'Real Sociedad', 'Eibar', 1, 2, 'LogoCLB\\La Liga\\sociedad.png', 'LogoCLB\\La Liga\\eibar.png');

-- --------------------------------------------------------

--
-- Table structure for table `valencia`
--

CREATE TABLE `valencia` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `valencia`
--

INSERT INTO `valencia` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Valencia', 'Atletico Madrid', 1, 1, 'LogoCLB\\La Liga\\valencia.png', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(2, 'Valencia', 'Espanyol', 0, 2, 'LogoCLB\\La Liga\\valencia.png', 'LogoCLB\\La Liga\\espanyol.png'),
(3, 'Valencia', 'Levante', 2, 2, 'LogoCLB\\La Liga\\valencia.png', 'LogoCLB\\La Liga\\levante.png');

-- --------------------------------------------------------

--
-- Table structure for table `valladolid`
--

CREATE TABLE `valladolid` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `valladolid`
--

INSERT INTO `valladolid` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Valladolid', 'Girona', 0, 0, 'LogoCLB\\La Liga\\valladolid.png', 'LogoCLB\\La Liga\\girona.png'),
(2, 'Valladolid', 'Barcelona', 0, 1, 'LogoCLB\\La Liga\\valladolid.png', 'LogoCLB\\La Liga\\barcelona.png'),
(3, 'Valladolid', 'Getafe', 0, 0, 'LogoCLB\\La Liga\\valladolid.png', 'LogoCLB\\La Liga\\getafe.png');

-- --------------------------------------------------------

--
-- Table structure for table `vallecano`
--

CREATE TABLE `vallecano` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vallecano`
--

INSERT INTO `vallecano` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Rayo Vallecano', 'Sevilla', 1, 4, 'LogoCLB\\La Liga\\rayo.png', 'LogoCLB\\La Liga\\sevilla.png'),
(2, 'Rayo Vallecano', 'Atletico Madrid', 0, 1, 'LogoCLB\\La Liga\\rayo.png', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(3, 'Rayo Vallecano', 'Athletic Bilbao', 1, 1, 'LogoCLB\\La Liga\\rayo.png', 'LogoCLB\\La Liga\\athleticbilbao.png');

-- --------------------------------------------------------

--
-- Table structure for table `villarreal`
--

CREATE TABLE `villarreal` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `villarreal`
--

INSERT INTO `villarreal` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Villarreal', 'Real Sociedad', 1, 2, 'LogoCLB\\La Liga\\villareal.png', 'LogoCLB\\La Liga\\sociedad.png'),
(2, 'Villarreal', 'Sevilla', 0, 0, 'LogoCLB\\La Liga\\villareal.png', 'LogoCLB\\La Liga\\sevilla.png'),
(3, 'Villarreal', 'Girona', 0, 1, 'LogoCLB\\La Liga\\villareal.png', 'LogoCLB\\La Liga\\girona.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`vong`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
