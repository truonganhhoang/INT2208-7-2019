-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 09:13 AM
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
-- Database: `italia`
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
('AC Milan', 'Genoa', '2 - 1', 'LogoCLB\\Series A\\AC Milan.png', 'LogoCLB\\Series A\\Genoa.png'),
('Atalanta', 'Frosinone', '4 - 0', 'LogoCLB\\Series A\\atalanta.png', 'LogoCLB\\Series A\\Frosinone.png'),
('Bologna', 'SPAL', '0 - 1', 'LogoCLB\\Series A\\bologna.png', 'LogoCLB\\Series A\\S.P.A.L.png'),
('Chievo', 'Juventus', '2 - 3', 'LogoCLB\\Series A\\Chievo Verona.png', 'LogoCLB\\Series A\\Juventus.png'),
('Empoli', 'Cagliari', '2 - 0', 'LogoCLB\\Series A\\Empoli.png', 'LogoCLB\\Series A\\cagliari.png'),
('Lazio', 'Napoli', '1 - 2', 'LogoCLB\\Series A\\SS Lazio.png', 'LogoCLB\\Series A\\Napoli.png'),
('Parma', 'Udinese', '2 - 2', 'LogoCLB\\Series A\\AC Parma.png', 'LogoCLB\\Series A\\Udinese.png'),
('Sampdoria', 'Fiorentina', '1 - 1', 'LogoCLB\\Series A\\Sampdoria.png', 'LogoCLB\\Series A\\Fiorentina.png'),
('Sassuolo', 'Inter Milan', '1 - 0', 'LogoCLB\\Series A\\sassuolo.png', 'LogoCLB\\Series A\\Internazionale.png'),
('Torino', 'Roma', '0 - 1', 'LogoCLB\\Series A\\Torino.png', 'LogoCLB\\Series A\\AS Roma.png');

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
('AS Roma', 'Atalanta', '3 - 3', 'LogoCLB\\Series A\\AS Roma.png', 'LogoCLB\\Series A\\atalanta.png'),
('Cagliari', 'Sassuolo', '2 - 2', 'LogoCLB\\Series A\\cagliari.png', 'LogoCLB\\Series A\\sassuolo.png'),
('Fiorentina', 'Chievo', '6 - 1', 'LogoCLB\\Series A\\Fiorentina.png', 'LogoCLB\\Series A\\Chievo Verona.png'),
('Frosinone', 'Bologna', '0 - 0', 'LogoCLB\\Series A\\Frosinone.png', 'LogoCLB\\Series A\\bologna.png'),
('Genoa', 'Empoli', '2 - 1', 'LogoCLB\\Series A\\Genoa.png', 'LogoCLB\\Series A\\Empoli.png'),
('Inter Milan', 'Torino', '2 - 2', 'LogoCLB\\Series A\\Internazionale.png', 'LogoCLB\\Series A\\Torino.png'),
('Juventus', 'Lazio', '2 - 0', 'LogoCLB\\Series A\\Juventus.png', 'LogoCLB\\Series A\\SS Lazio.png'),
('Napoli', 'AC Milan', '3 - 2', 'LogoCLB\\Series A\\Napoli.png', 'LogoCLB\\Series A\\AC Milan.png'),
('SPAL', 'Parma', '1 - 0', 'LogoCLB\\Series A\\S.P.A.L.png', 'LogoCLB\\Series A\\AC Parma.png'),
('Udinese', 'Sampdoria', '1 - 0', 'LogoCLB\\Series A\\Udinese.png', 'LogoCLB\\Series A\\Sampdoria.png');

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
('AC Milan', 'AS Roma', '2 - 1', 'LogoCLB\\Series A\\AC Milan.png', 'LogoCLB\\Series A\\AS Roma.png'),
('Atalanta', 'Cagliari', '0 - 1', 'LogoCLB\\Series A\\cagliari.png', 'LogoCLB\\Series A\\atalanta.png'),
('Bologna', 'Inter Milan', '0 - 3', 'LogoCLB\\Series A\\bologna.png', 'LogoCLB\\Series A\\Internazionale.png'),
('Chievo', 'Empoli', '0 - 0', 'LogoCLB\\Series A\\Chievo Verona.png', 'LogoCLB\\Series A\\Empoli.png'),
('Fiorentina', 'Udinese', '1 - 0', 'LogoCLB\\Series A\\Fiorentina.png', 'LogoCLB\\Series A\\Udinese.png'),
('Lazio', 'Frosinone', '1 - 0', 'LogoCLB\\Series A\\SS Lazio.png', 'LogoCLB\\Series A\\Frosinone.png'),
('Parma', 'Juventus', '1 - 2', 'LogoCLB\\Series A\\AC Parma.png', 'LogoCLB\\Series A\\Juventus.png'),
('Sampdoria', 'Napoli', '0 - 0', 'LogoCLB\\Series A\\Sampdoria.png', 'LogoCLB\\Series A\\Napoli.png'),
('Sassuolo', 'Genoa', '5 - 3', 'LogoCLB\\Series A\\sassuolo.png', 'LogoCLB\\Series A\\Genoa.png'),
('Torino', 'SPAL', '1 - 0', 'LogoCLB\\Series A\\Torino.png', 'LogoCLB\\Series A\\S.P.A.L.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
