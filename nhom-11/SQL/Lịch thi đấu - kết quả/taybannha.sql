-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2019 at 11:25 AM
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
-- Database: `taybannha`
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
('Athletic Bilbao', 'Leganes', '2 - 1', 'LogoCLB\\La Liga\\athleticbilbao.png', 'LogoCLB\\La Liga\\leganes.png'),
('Barcelona', 'Alaves', '3 - 0', 'LogoCLB\\La Liga\\barcelona.png', 'LogoCLB\\La Liga\\alaves.png'),
('Celta Vigo', 'Espanyol', '1 - 1', 'LogoCLB\\La Liga\\celtavigo.png', 'LogoCLB\\La Liga\\espanyol.png'),
('Eibar', 'Huesca', '1 - 2', 'LogoCLB\\La Liga\\eibar.png', 'LogoCLB\\La Liga\\huesca.png'),
('Girona', 'Valladolid', '0 - 0', 'LogoCLB\\La Liga\\girona.png', 'LogoCLB\\La Liga\\valladolid.png'),
('Rayo Vallecano', 'Sevilla', '1 - 4', 'LogoCLB\\La Liga\\rayo.png', 'LogoCLB\\La Liga\\sevilla.png'),
('Real Betis', 'Levante', '0 - 3', 'LogoCLB\\La Liga\\realbetis.png', 'LogoCLB\\La Liga\\levante.png'),
('Real Madrid', 'Getafe', '2 - 0', 'LogoCLB\\La Liga\\real.png', 'LogoCLB\\La Liga\\getafe.png'),
('Valencia', 'Atletico Madrid', '1 - 1', 'LogoCLB\\La Liga\\valencia.png', 'LogoCLB\\La Liga\\atleticomadrid.png'),
('Villarreal', 'Real Sociedad', '1 - 2', 'LogoCLB\\La Liga\\villareal.png', 'LogoCLB\\La Liga\\sociedad.png');

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
('Alaves', 'Real Betis', '0 - 0', 'LogoCLB\\La Liga\\alaves.png', 'LogoCLB\\La Liga\\realbetis.png'),
('Athletic Bilbao', 'Huesca', '2 - 2', 'LogoCLB\\La Liga\\athleticbilbao.png', 'LogoCLB\\La Liga\\huesca.png'),
('Atletico Madrid', 'Rayo Vallecano', '1 - 0', 'LogoCLB\\La Liga\\atleticomadrid.png', 'LogoCLB\\La Liga\\rayo.png'),
('Espanyol', 'Valencia', '2 - 0', 'LogoCLB\\La Liga\\espanyol.png', 'LogoCLB\\La Liga\\valencia.png'),
('Getafe', 'Eibar', '2 - 0', 'LogoCLB\\La Liga\\getafe.png', 'LogoCLB\\La Liga\\eibar.png'),
('Girona', 'Real Madrid', '1 - 4', 'LogoCLB\\La Liga\\girona.png', 'LogoCLB\\La Liga\\real.png'),
('Leganes', 'Real Sociedad', '2 - 2', 'LogoCLB\\La Liga\\leganes.png', 'LogoCLB\\La Liga\\sociedad.png'),
('Levante', 'Celta Vigo', '1 - 2', 'LogoCLB\\La Liga\\levante.png', 'LogoCLB\\La Liga\\celtavigo.png'),
('Sevilla', 'Villarreal', '0 - 0', 'LogoCLB\\La Liga\\sevilla.png', 'LogoCLB\\La Liga\\villareal.png'),
('Valladolid', 'Barcelona', '0 - 1', 'LogoCLB\\La Liga\\valladolid.png', 'LogoCLB\\La Liga\\barcelona.png');

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
('Alaves', 'Espanyol', '2 - 1', 'LogoCLB\\La Liga\\alaves.png', 'LogoCLB\\La Liga\\espanyol.png'),
('Barcelona', 'Huesca', '8 - 2', 'LogoCLB\\La Liga\\barcelona.png', 'LogoCLB\\La Liga\\huesca.png'),
('Celta Vigo', 'Atletico Madrid', '2 - 0', 'LogoCLB\\La Liga\\celtavigo.png', 'LogoCLB\\La Liga\\atleticomadrid.png'),
('Eibar', 'Real Sociedad', '2 - 1', 'LogoCLB\\La Liga\\eibar.png', 'LogoCLB\\La Liga\\sociedad.png'),
('Getafe', 'Valladolid', '0 - 0', 'LogoCLB\\La Liga\\getafe.png', 'LogoCLB\\La Liga\\valladolid.png'),
('Levante', 'Valencia', '2 - 2', 'LogoCLB\\La Liga\\levante.png', 'LogoCLB\\La Liga\\valencia.png'),
('Rayo Vallecano', 'Athletic Bilbao', '1 - 1', 'LogoCLB\\La Liga\\rayo.png', 'LogoCLB\\La Liga\\athleticbilbao.png'),
('Real Betis', 'Sevilla', '1 - 0', 'LogoCLB\\La Liga\\realbetis.png', 'LogoCLB\\La Liga\\sevilla.png'),
('Real Madrid', 'Leganes', '4 - 1', 'LogoCLB\\La Liga\\real.png', 'LogoCLB\\La Liga\\leganes.png'),
('Villarreal', 'Girona', '0 - 1', 'LogoCLB\\La Liga\\villareal.png', 'LogoCLB\\La Liga\\girona.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
