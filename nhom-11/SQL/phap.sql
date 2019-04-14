-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2019 at 11:24 AM
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
-- Database: `phap`
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
('Angers', 'Nimes', '3 - 4', 'LogoCLB\\Ligue 1\\Angers.png', 'LogoCLB\\Ligue 1\\Nimes.png'),
('Bordeaux', 'Strasbourg', '0 - 2', 'LogoCLB\\Ligue 1\\Bordeaux.png', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
('Lille', 'Rennes', '3 - 1', 'LogoCLB\\Ligue 1\\Lille.png', 'LogoCLB\\Ligue 1\\Rennais.png'),
('Lyon', 'Amiens', '2 - 0', 'LogoCLB\\Ligue 1\\Lyon.png', 'LogoCLB\\Ligue 1\\Amiens.png'),
('Marseille', 'Toulouse', '4 - 0', 'LogoCLB\\Ligue 1\\Marseille.png', 'LogoCLB\\Ligue 1\\Toulouse.png'),
('Montpellier', 'Dijon', '1 - 2', 'LogoCLB\\Ligue 1\\Montpellier.png', 'LogoCLB\\Ligue 1\\Dijon.png'),
('Nantes', 'Monaco', '1 - 3', 'LogoCLB\\Ligue 1\\Nantes.png', 'LogoCLB\\Ligue 1\\Monaco.png'),
('Nice', 'Reims', '0 - 1', 'LogoCLB\\Ligue 1\\Nice.png', 'LogoCLB\\Ligue 1\\Reims.png'),
('PSG', 'Caen', '3 - 0', 'LogoCLB\\Ligue 1\\PSG.png', 'LogoCLB\\Ligue 1\\Caen.png'),
('St-Etienne', 'Guingamp', '2 - 1', 'LogoCLB\\Ligue 1\\SaintEtienne.png', 'LogoCLB\\Ligue 1\\Guingamp.png');

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
('Amiens', 'Montpellier', '1 - 2', 'LogoCLB\\Ligue 1\\Amiens.png', 'LogoCLB\\Ligue 1\\Montpellier.png'),
('Caen', 'Nice', '1 - 1', 'LogoCLB\\Ligue 1\\Caen.png', 'LogoCLB\\Ligue 1\\Nice.png'),
('Dijon', 'Nantes', '2 - 0', 'LogoCLB\\Ligue 1\\Dijon.png', 'LogoCLB\\Ligue 1\\Nantes.png'),
('Guingamp', 'PSG', '1 - 3', 'LogoCLB\\Ligue 1\\Guingamp.png', 'LogoCLB\\Ligue 1\\PSG.png'),
('Monaco', 'Lille', '0 - 0', 'LogoCLB\\Ligue 1\\Monaco.png', 'LogoCLB\\Ligue 1\\Lille.png'),
('Nimes', 'Marseille', '3 - 1', 'LogoCLB\\Ligue 1\\Nimes.png', 'LogoCLB\\Ligue 1\\Marseille.png'),
('Reims', 'Lyon', '1 - 0', 'LogoCLB\\Ligue 1\\Reims.png', 'LogoCLB\\Ligue 1\\Lyon.png'),
('Rennes', 'Angers', '1 - 0', 'LogoCLB\\Ligue 1\\Rennais.png', 'LogoCLB\\Ligue 1\\Angers.png'),
('Strasbourg', 'St-Etienne', '1 - 1', 'LogoCLB\\Ligue 1\\Strasbourg.png', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
('Toulouse', 'Bordeaux', '2 - 1', 'LogoCLB\\Ligue 1\\Toulouse.png', 'LogoCLB\\Ligue 1\\Bordeaux.png');

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
('Amiens', 'Reims', '4 - 1', 'LogoCLB\\Ligue 1\\Amiens.png', 'LogoCLB\\Ligue 1\\Reims.png'),
('Bordeaux', 'Monaco', '2 - 1', 'LogoCLB\\Ligue 1\\Bordeaux.png', 'LogoCLB\\Ligue 1\\Monaco.png'),
('Lille', 'Guingamp', '3 - 0', 'LogoCLB\\Ligue 1\\Lille.png', 'LogoCLB\\Ligue 1\\Guingamp.png'),
('Lyon', 'Strasbourg', '2 - 0', 'LogoCLB\\Ligue 1\\Lyon.png', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
('Marseille', 'Rennes', '2 - 2', 'LogoCLB\\Ligue 1\\Marseille.png', 'LogoCLB\\Ligue 1\\Rennais.png'),
('Montpellier', 'St-Etienne', '0 - 0', 'LogoCLB\\Ligue 1\\Montpellier.png', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
('Nantes', 'Caen', '1 - 1', 'LogoCLB\\Ligue 1\\Nantes.png', 'LogoCLB\\Ligue 1\\Caen.png'),
('Nice', 'Dijon', '0 - 4', 'LogoCLB\\Ligue 1\\Nice.png', 'LogoCLB\\Ligue 1\\Dijon.png'),
('PSG', 'Angers', '3 - 1', 'LogoCLB\\Ligue 1\\PSG.png', 'LogoCLB\\Ligue 1\\Angers.png'),
('Toulouse', 'Nimes', '1 - 0', 'LogoCLB\\Ligue 1\\Toulouse.png', 'LogoCLB\\Ligue 1\\Nimes.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vong2`
--
ALTER TABLE `vong2`
  ADD PRIMARY KEY (`homeTeam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
