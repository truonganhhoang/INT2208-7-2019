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
-- Database: `clb_phap`
--

-- --------------------------------------------------------

--
-- Table structure for table `amiens`
--

CREATE TABLE `amiens` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amiens`
--

INSERT INTO `amiens` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Amiens', 'Lyon', 0, 2, 'LogoCLB\\Ligue 1\\Amiens.png', 'LogoCLB\\Ligue 1\\Lyon.png'),
(2, 'Amiens', 'Montpellier', 1, 2, 'LogoCLB\\Ligue 1\\Amiens.png', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(3, 'Amiens', 'Reims', 4, 1, 'LogoCLB\\Ligue 1\\Amiens.png', 'LogoCLB\\Ligue 1\\Reims.png');

-- --------------------------------------------------------

--
-- Table structure for table `angers`
--

CREATE TABLE `angers` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angers`
--

INSERT INTO `angers` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Angers', 'Nimes', 3, 4, 'LogoCLB\\Ligue 1\\Angers.png', 'LogoCLB\\Ligue 1\\Nimes.png'),
(2, 'Angers', 'Rennais', 0, 1, 'LogoCLB\\Ligue 1\\Angers.png', 'LogoCLB\\Ligue 1\\Rennais.png'),
(3, 'Angers', 'Paris SG', 1, 3, 'LogoCLB\\Ligue 1\\Angers.png', 'LogoCLB\\Ligue 1\\PSG.png');

-- --------------------------------------------------------

--
-- Table structure for table `bordeaux`
--

CREATE TABLE `bordeaux` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bordeaux`
--

INSERT INTO `bordeaux` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Bordeaux', 'Strasbourg', 0, 2, 'LogoCLB\\Ligue 1\\Bordeaux.png', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(2, 'Bordeaux', 'Toulouse', 1, 2, 'LogoCLB\\Ligue 1\\Bordeaux.png', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(3, 'Bordeaux', 'Monaco', 2, 1, 'LogoCLB\\Ligue 1\\Bordeaux.png', 'LogoCLB\\Ligue 1\\Monaco.png');

-- --------------------------------------------------------

--
-- Table structure for table `caen`
--

CREATE TABLE `caen` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caen`
--

INSERT INTO `caen` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Caen', 'Paris SG', 0, 3, 'LogoCLB\\Ligue 1\\Caen.png', 'LogoCLB\\Ligue 1\\PSG.png '),
(2, 'Caen', 'Nice', 1, 1, 'LogoCLB\\Ligue 1\\Caen.png', 'LogoCLB\\Ligue 1\\Nice.png'),
(3, 'Caen', 'Nantes', 1, 1, 'LogoCLB\\Ligue 1\\Caen.png', 'LogoCLB\\Ligue 1\\Nantes.png');

-- --------------------------------------------------------

--
-- Table structure for table `dijon`
--

CREATE TABLE `dijon` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dijon`
--

INSERT INTO `dijon` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Dijon', 'Montpellier', 2, 1, 'LogoCLB\\Ligue 1\\Dijon.png', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(2, 'Dijon', 'Nantes', 2, 0, 'LogoCLB\\Ligue 1\\Dijon.png', 'LogoCLB\\Ligue 1\\Nantes.png'),
(3, 'Dijon', 'Nice', 4, 0, 'LogoCLB\\Ligue 1\\Dijon.png', 'LogoCLB\\Ligue 1\\Nice.png');

-- --------------------------------------------------------

--
-- Table structure for table `guingamp`
--

CREATE TABLE `guingamp` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guingamp`
--

INSERT INTO `guingamp` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Guingamp', 'St Etienne', 1, 2, 'LogoCLB\\Ligue 1\\Guingamp.png', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(2, 'Guingamp', 'Paris SG', 1, 3, 'LogoCLB\\Ligue 1\\Guingamp.png', 'LogoCLB\\Ligue 1\\PSG.png'),
(3, 'Guingamp', 'Lille', 0, 3, 'LogoCLB\\Ligue 1\\Guingamp.png', 'LogoCLB\\Ligue 1\\Lille.png');

-- --------------------------------------------------------

--
-- Table structure for table `lille`
--

CREATE TABLE `lille` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lille`
--

INSERT INTO `lille` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Lille', 'Rennais', 3, 1, 'LogoCLB\\Ligue 1\\Lille.png', 'LogoCLB\\Ligue 1\\Rennais.png'),
(2, 'Lille', 'Monaco', 0, 0, 'LogoCLB\\Ligue 1\\Lille.png', 'LogoCLB\\Ligue 1\\Monaco.png'),
(3, 'Lille', 'Guingamp', 3, 0, 'LogoCLB\\Ligue 1\\Lille.png', 'LogoCLB\\Ligue 1\\Guingamp.png');

-- --------------------------------------------------------

--
-- Table structure for table `lyon`
--

CREATE TABLE `lyon` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lyon`
--

INSERT INTO `lyon` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Lyon', 'Amiens', 2, 0, 'LogoCLB\\Ligue 1\\Lyon.png', 'LogoCLB\\Ligue 1\\Amiens.png'),
(2, 'Lyon', 'Reims', 0, 1, 'LogoCLB\\Ligue 1\\Lyon.png', 'LogoCLB\\Ligue 1\\Reims.png'),
(3, 'Lyon', 'Strasbourg', 2, 0, 'LogoCLB\\Ligue 1\\Lyon.png', 'LogoCLB\\Ligue 1\\Strasbourg.png');

-- --------------------------------------------------------

--
-- Table structure for table `marseille`
--

CREATE TABLE `marseille` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marseille`
--

INSERT INTO `marseille` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Marseille', 'Toulouse', 4, 0, 'LogoCLB\\Ligue 1\\Marseille.png', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(2, 'Marseille', 'Nimes', 3, 1, 'LogoCLB\\Ligue 1\\Marseille.png', 'LogoCLB\\Ligue 1\\Nimes.png'),
(3, 'Marseille', 'Rennais', 2, 2, 'LogoCLB\\Ligue 1\\Marseille.png', 'LogoCLB\\Ligue 1\\Rennais.png');

-- --------------------------------------------------------

--
-- Table structure for table `monaco`
--

CREATE TABLE `monaco` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monaco`
--

INSERT INTO `monaco` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Monaco', 'Nantes', 3, 1, 'LogoCLB\\Ligue 1\\Monaco.png', 'LogoCLB\\Ligue 1\\Nantes.png'),
(2, 'Monaco', 'Lille', 0, 0, 'LogoCLB\\Ligue 1\\Monaco.png', 'LogoCLB\\Ligue 1\\Lille.png'),
(3, 'Monaco', 'Bordeaux', 1, 2, 'LogoCLB\\Ligue 1\\Monaco.png', 'LogoCLB\\Ligue 1\\Bordeaux.png');

-- --------------------------------------------------------

--
-- Table structure for table `montpellier`
--

CREATE TABLE `montpellier` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `montpellier`
--

INSERT INTO `montpellier` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Montpellier', 'Dijon', 1, 2, 'LogoCLB\\Ligue 1\\Montpellier.png', 'LogoCLB\\Ligue 1\\Dijon.png'),
(2, 'Montpellier', 'Amiens', 2, 1, 'LogoCLB\\Ligue 1\\Montpellier.png', 'LogoCLB\\Ligue 1\\Amiens.png'),
(3, 'Montpellier', 'St Etienne', 0, 0, 'LogoCLB\\Ligue 1\\Montpellier.png', 'LogoCLB\\Ligue 1\\SaintEtienne.png');

-- --------------------------------------------------------

--
-- Table structure for table `nantes`
--

CREATE TABLE `nantes` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nantes`
--

INSERT INTO `nantes` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Nantes', 'Monaco', 1, 3, 'LogoCLB\\Ligue 1\\Nantes.png', 'LogoCLB\\Ligue 1\\Monaco.png'),
(2, 'Nantes', 'Dijon', 0, 2, 'LogoCLB\\Ligue 1\\Nantes.png', 'LogoCLB\\Ligue 1\\Dijon.png'),
(3, 'Nantes', 'Caen', 1, 1, 'LogoCLB\\Ligue 1\\Nantes.png', 'LogoCLB\\Ligue 1\\Caen.png');

-- --------------------------------------------------------

--
-- Table structure for table `nice`
--

CREATE TABLE `nice` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nice`
--

INSERT INTO `nice` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Nice', 'Reims', 0, 1, 'LogoCLB\\Ligue 1\\Nice.png', 'LogoCLB\\Ligue 1\\Reims.png'),
(2, 'Nice', 'Caen', 1, 1, 'LogoCLB\\Ligue 1\\Nice.png', 'LogoCLB\\Ligue 1\\Caen.png'),
(3, 'Nice', 'Dijon', 0, 4, 'LogoCLB\\Ligue 1\\Nice.png', 'LogoCLB\\Ligue 1\\Dijon.png');

-- --------------------------------------------------------

--
-- Table structure for table `nimes`
--

CREATE TABLE `nimes` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nimes`
--

INSERT INTO `nimes` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Nimes', 'Angers', 4, 3, 'LogoCLB\\Ligue 1\\Nimes.png', 'LogoCLB\\Ligue 1\\Angers.png'),
(2, 'Nimes', 'Marseille', 3, 1, 'LogoCLB\\Ligue 1\\Nimes.png', 'LogoCLB\\Ligue 1\\Marseille.png'),
(3, 'Nimes', 'Toulouse', 0, 1, 'LogoCLB\\Ligue 1\\Nimes.png', 'LogoCLB\\Ligue 1\\Toulouse.png');

-- --------------------------------------------------------

--
-- Table structure for table `psg`
--

CREATE TABLE `psg` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `psg`
--

INSERT INTO `psg` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Paris SG', 'Caen', 3, 0, 'LogoCLB\\Ligue 1\\PSG.png', 'LogoCLB\\Ligue 1\\Caen.png'),
(2, 'Paris SG', 'Guingamp', 3, 1, 'LogoCLB\\Ligue 1\\PSG.png', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(3, 'Paris SG', 'Angers', 3, 1, 'LogoCLB\\Ligue 1\\PSG.png', 'LogoCLB\\Ligue 1\\Angers.png');

-- --------------------------------------------------------

--
-- Table structure for table `reims`
--

CREATE TABLE `reims` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reims`
--

INSERT INTO `reims` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Reims', 'Nice', 1, 0, 'LogoCLB\\Ligue 1\\Reims.png', 'LogoCLB\\Ligue 1\\Nice.png'),
(2, 'Reims', 'Lyon', 1, 0, 'LogoCLB\\Ligue 1\\Reims.png', 'LogoCLB\\Ligue 1\\Lyon.png'),
(3, 'Reims', 'Amiens', 1, 4, 'LogoCLB\\Ligue 1\\Reims.png', 'LogoCLB\\Ligue 1\\Amiens.png');

-- --------------------------------------------------------

--
-- Table structure for table `rennais`
--

CREATE TABLE `rennais` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rennais`
--

INSERT INTO `rennais` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Rennais', 'Lille', 1, 3, 'LogoCLB\\Ligue 1\\Rennais.png', 'LogoCLB\\Ligue 1\\Lille.png'),
(2, 'Rennais', 'Angers', 1, 0, 'LogoCLB\\Ligue 1\\Rennais.png', 'LogoCLB\\Ligue 1\\Angers.png'),
(3, 'Rennais', 'Marseille', 2, 2, 'LogoCLB\\Ligue 1\\Rennais.png', 'LogoCLB\\Ligue 1\\Marseille.png');

-- --------------------------------------------------------

--
-- Table structure for table `saintetienne`
--

CREATE TABLE `saintetienne` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saintetienne`
--

INSERT INTO `saintetienne` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'St Etienne', 'Guingamp', 2, 1, 'LogoCLB\\Ligue 1\\SaintEtienne.png', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(2, 'St Etienne', 'Strasbourg', 1, 1, 'LogoCLB\\Ligue 1\\SaintEtienne.png', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(3, 'St Etienne', 'Montpellier', 0, 0, 'LogoCLB\\Ligue 1\\SaintEtienne.png', 'LogoCLB\\Ligue 1\\Montpellier.png');

-- --------------------------------------------------------

--
-- Table structure for table `strasbourg`
--

CREATE TABLE `strasbourg` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strasbourg`
--

INSERT INTO `strasbourg` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Strasbourg', 'Bordeaux', 2, 0, 'LogoCLB\\Ligue 1\\Strasbourg.png', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(2, 'Strasbourg', 'St Etienne', 1, 1, 'LogoCLB\\Ligue 1\\Strasbourg.png', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(3, 'Strasbourg', 'Lyon', 0, 2, 'LogoCLB\\Ligue 1\\Strasbourg.png', 'LogoCLB\\Ligue 1\\Lyon.png');

-- --------------------------------------------------------

--
-- Table structure for table `toulouse`
--

CREATE TABLE `toulouse` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toulouse`
--

INSERT INTO `toulouse` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Toulouse', 'Marseille', 0, 4, 'LogoCLB\\Ligue 1\\Toulouse.png', 'LogoCLB\\Ligue 1\\Marseille.png'),
(2, 'Toulouse', 'Bordeaux', 2, 1, 'LogoCLB\\Ligue 1\\Toulouse.png', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(3, 'Toulouse', 'Nimes', 1, 0, 'LogoCLB\\Ligue 1\\Toulouse.png', 'LogoCLB\\Ligue 1\\Nimes.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
