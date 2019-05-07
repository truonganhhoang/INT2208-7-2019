-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2019 at 05:24 AM
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
-- Database: `cauthu_phap`
--

-- --------------------------------------------------------

--
-- Table structure for table `amiens`
--

CREATE TABLE `amiens` (
  `soao` varchar(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amiens`
--

INSERT INTO `amiens` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
('1', 'Régis Gurtner', 'France', 'GK', 0, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('10', 'John Mendoza', 'Colombia', 'FW', 0, 1, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('11', 'Juan Otero', 'Colombia', 'FW', 0, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('12', 'Bakaye Dibassy', 'Mali', 'DF', 0, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('13', 'Quentin Cornette', 'France', 'FW', 0, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('14', 'Gaoussou Traoré', 'France', 'MF', 0, 0, 0, 1, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('15', 'Moussa Konaté', 'Senegal', 'FW', 3, 1, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('16', 'Matthieu Dreyer', 'France', 'GK', 0, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('17', 'Alexis Blin', 'France', 'DF', 0, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('2', 'Prince Gouano', 'France', 'DF', 0, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('20', 'Cheick Timite', 'Ivory Coast', 'MF', 0, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('24', 'Mathieu Bodmer', 'France', 'DF', 0, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('25', 'Jordan Lefort', 'France', 'DF', 0, 1, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('33', 'Iron Gomis', 'France', 'MF', 0, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('34', 'Bongani Zungu', 'South Africa', 'MF', 0, 0, 0, 1, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('4', 'Emil Krafth', 'Sweden', 'DF', 0, 1, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('5', 'Eddy Gnahoré', 'France', 'MF', 1, 0, 0, 1, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('6', 'Thomas Monconduit', 'France', 'MF', 0, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('7', 'Saman Ghoddos', 'Iran', 'FW', 1, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png'),
('9', 'Serhou Guirassy', 'France', 'FW', 0, 0, 0, 0, 'Amiens SC', 'LogoCLB\\Ligue 1\\Amiens.png');

-- --------------------------------------------------------

--
-- Table structure for table `angers`
--

CREATE TABLE `angers` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angers`
--

INSERT INTO `angers` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(23, 'Abdoulaye Cisse', 'Guinea', 'DF', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(10, 'Angelo Fulgini', 'France', 'MF', 1, 0, 0, 1, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(14, 'Anthony Mancini', 'Luxembourg', 'FW', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(18, 'Baptiste Santamaria', 'France', 'MF', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(17, 'Cheikh NDoye', 'Senegal ', 'MF', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(9, 'Cristian Lopez', 'Spain', 'FW', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(13, 'Dorian Bertrand', 'France', 'MF', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(20, 'Flavien Tait', 'France', 'MF', 0, 1, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(7, 'Harisson Manzala', 'Congo DR', 'MF', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(8, 'Ismael Traore', 'Ivory coast', 'DF', 1, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(16, 'Ludovic Butelle', 'France', 'GK', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(4, 'Mateo Pavlovic', 'Croatia', 'DF', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(33, 'Mazire Soula', 'France', 'FW', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(15, 'Pierrick Capelle', 'France', 'MF', 1, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(2, 'Rayan Ait Nouri', 'France', 'DF', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(24, 'Romain Thomas', 'France', 'DF', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(19, 'Stephane Bahoken', 'France', 'FW', 0, 1, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(5, 'Thomas Mangani', 'France', 'DF', 1, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(6, 'Vincent Pajot', 'France', 'MF', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(11, 'Wilfried Aka Kanga', 'France', 'FW', 0, 0, 0, 1, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(3, 'Yoann Andreu', 'France', 'DF', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png'),
(1, 'Zacharie Boucher', 'France', 'GK', 0, 0, 0, 0, 'Angers SCO', 'LogoCLB\\Ligue 1\\Angers.png');

-- --------------------------------------------------------

--
-- Table structure for table `bordeaux`
--

CREATE TABLE `bordeaux` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bordeaux`
--

INSERT INTO `bordeaux` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Benoit Costil', 'France', 'GK', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(2, 'Milan Gajic', 'Serbia', 'DF', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(3, 'Sergi Palencia', 'Spain', 'DF', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(4, 'Jules Kounde', 'France', 'DF', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(5, 'Otavio Henrique Passos Santos', 'Brazil', 'MF', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(6, 'Igor Lewczuk', 'Poland', 'DF', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(7, 'Jimmy Briand', 'France', 'FW', 0, 1, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(8, 'Paul Baysse', 'France', 'DF', 0, 0, 0, 1, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(9, 'Andreas Cornelius', 'Denmark', 'FW', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(10, 'Samuel Kalu', 'Nigeria', 'FW', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(11, 'Francois Kamano', 'Guinea', 'FW', 3, 0, 0, 1, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(12, 'Nicolas de Preville', 'France', 'FW', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(13, 'Younousse Sankhare', 'France', 'MF', 0, 1, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(14, 'Vukasin Jovanovic', 'Serbia', 'DF', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(16, 'Gaetan Poussin', 'France', 'GK', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(17, 'Aurelien Tchouameni', 'France', 'MF', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(18, 'Jaroslav Plasil', 'Czech', 'MF', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(19, 'Lukas Lerager', 'Denmark', 'MF', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(20, 'Youssouf Sabaly', 'France', 'DF', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(23, 'Valentin Vada', 'Argentina', 'MF', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(24, 'Albert-Nicolas Lottin', 'France', 'MF', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(25, 'Gaetan Laborde', 'France', 'FW', 0, 0, 1, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png'),
(27, 'Josh Maja', 'England', 'FW', 0, 0, 0, 0, 'Girondins Bordeaux', 'LogoCLB\\Ligue 1\\Bordeaux.png');

-- --------------------------------------------------------

--
-- Table structure for table `caen`
--

CREATE TABLE `caen` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caen`
--

INSERT INTO `caen` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(22, 'Adama Mbengue', 'Senegal', 'MF', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(24, 'Alexander Djiku', 'France', 'MF', 0, 0, 0, 1, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(5, 'Baissama Sankho', 'France', 'DF', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(30, 'Brice Samba', 'Congo', 'GK', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(11, 'Casimir Ninga', 'Chad', 'FW', 0, 1, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(12, 'Claudio Beauvue', 'France', 'FW', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(15, 'Emmanuel Imorou', 'Benin', 'DF', 0, 0, 0, 1, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(27, 'Enzo Crivelli', 'France', 'FW', 1, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(1, 'Erwin Zelazny', 'France', 'GK', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(13, 'Evens Joseph', 'France', 'MF', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(10, 'Faycal Fajr', 'France', 'FW', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(4, 'Ismael Diomande', 'Ivory coast', 'MF', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(9, 'Jan Repas', 'Slovenia', 'MF', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(17, 'Jessy Deminguet', 'France', 'MF', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(14, 'Jonathan Gradit', 'France', 'DF', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(2, 'Paul Baysse', 'France', 'DF', 0, 0, 1, 2, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(6, 'Prince Oniangue', 'France', 'DF', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(7, 'Saif-Eddine Khaoui', 'France', 'MF', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(8, 'Stef Peeters', 'Belgium', 'DF', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(18, 'Yacine Bammou', 'France', 'FW', 1, 0, 0, 1, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png'),
(3, 'Yoel Armougom', 'France', 'DF', 0, 0, 0, 0, 'SM Caen', 'LogoCLB\\Ligue 1\\Caen.png');

-- --------------------------------------------------------

--
-- Table structure for table `dijon`
--

CREATE TABLE `dijon` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dijon`
--

INSERT INTO `dijon` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Runar Alex Runarsson', 'Iceland', 'GK', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(2, 'Mickael Alphonse', 'France', 'DF', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(3, 'Arnold Bouka Moutou', 'Congo', 'DF', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(4, 'Naif Aguerd', 'Morocco', 'DF', 1, 0, 0, 2, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(5, 'Oussama Haddadi', 'Tunisia', 'DF', 1, 1, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(6, 'Laurent Ciman', 'Belgium', 'DF', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(7, 'Frederic Sammaritano', 'France', 'MF', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(8, 'Mehdi Abeid', 'France', 'MF', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(9, 'Wesley Said', 'France', 'FW', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(10, 'Naim Sliti', 'Tunisia', 'MF', 0, 2, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(11, 'Julio Tavares', 'Cape Verde', 'FW', 3, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(12, 'Enzo Loiodice', 'France', 'MF', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(14, 'Jordan Marie', 'France', 'MF', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(15, 'Florent Balmont', 'France', 'MF', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(16, 'Bobby Allain', 'France', 'GK', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(18, 'Cedric Yambere', 'France', 'DF', 0, 0, 0, 1, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(19, 'Valentin Rosier', 'France', 'DF', 0, 1, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(20, 'Romain Amalfitano', 'France', 'MF', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(23, 'Jules Keita', 'Guinea', 'FW', 2, 1, 0, 1, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(29, 'Benjamin Jeannot', 'France', 'FW', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(30, 'Levi Ntumba', 'France', 'GK', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png'),
(31, 'Sory Doumbouya', 'France', 'FW', 0, 0, 0, 0, 'Dijon FCO', 'LogoCLB\\Ligue 1\\Dijon.png');

-- --------------------------------------------------------

--
-- Table structure for table `guingamp`
--

CREATE TABLE `guingamp` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guingamp`
--

INSERT INTO `guingamp` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Karl-Johan Johnsson', 'Sweden', 'GK', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(2, 'Jordan Ikoko', 'France', 'DF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(3, 'Papiss Mison Djilobodji', 'Senegal', 'DF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(4, 'Djegui Koita', 'France', 'DF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(5, 'Pedro Rebocho', 'Portugal', 'DF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(6, 'Lebogang Phiri', 'South Africa', 'MF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(7, 'Ludovic Blas', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(8, 'Lucas Deaux', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(9, 'Alexandre Mendy', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(10, 'Nicolas Benezet', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(11, 'Marcus Thuram', 'France', 'FW', 1, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(12, 'Yeni Ngbakoto', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(13, 'Johan Larsson', 'Sweden', 'DF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(14, 'Nathael Julan', 'France', 'FW', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(15, 'Jeremy Sorbon', 'France', 'DF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(16, 'Marc-Aurele Caillard', 'France', 'GK', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(18, 'Guessouma Fofana', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(19, 'Mehdi Merghem', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(23, 'Ronny Rodelin', 'France', 'FW', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(25, 'Cheick Omar Traore', 'France', 'DF', 0, 0, 0, 1, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(26, 'Nolan Roux', 'France', 'FW', 1, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(29, 'Christophe Kerbrat', 'France', 'DF', 0, 0, 1, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png'),
(30, 'Denis Petric', 'Slovenia', 'GK', 0, 0, 0, 0, 'EA Guingamp', 'LogoCLB\\Ligue 1\\Guingamp.png');

-- --------------------------------------------------------

--
-- Table structure for table `lille`
--

CREATE TABLE `lille` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lille`
--

INSERT INTO `lille` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Adam Jakubech', 'Slovakia', 'GK', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(5, 'Adama Soumaoro', 'France', 'DF', 0, 0, 0, 1, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(11, 'Alexis Araujo', 'France', 'MF', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(21, 'Arton Zekaj', 'Serbia', 'MF', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(25, 'Fode Toure', 'France', 'DF', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(4, 'Gabriel dos Santos Magalhaes', 'Brazil', 'DF', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(14, 'Jonathan Bamba', 'France', 'DF', 3, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(6, 'Jose Fonte', 'Portugal', 'DF', 0, 0, 0, 1, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(22, 'Kouadio Dabila', 'Ivory coast', 'DF', 0, 0, 0, 1, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(9, 'Loic Remy', 'France', 'FW', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(11, 'Luiz de Araujo Guimaraes Neto', 'France', 'FW', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(8, 'Miguel Angelo da Silva Rocha', 'Portugal', 'MF', 1, 0, 0, 1, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(16, 'Mike Maignan', 'France', 'GK', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(12, 'Nanitamo Jonathan Ikone', 'France', 'MF', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(19, 'Nicolas Pépé', 'France', 'FW', 1, 3, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(7, 'Rafael Alexandre Conceicao Lea', 'Portugal', 'FW', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(10, 'Rui Fonte', 'Portugal', 'FW', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(20, 'Thiago Maia Alencar', 'Brazil', 'MF', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(23, 'Thiago Mendes', 'Brazil', 'MF', 0, 0, 0, 1, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(3, 'Youssouf Kone', 'Mali', 'MF', 0, 0, 0, 0, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png'),
(17, 'Zeki Celik', 'Turkey', 'DF', 0, 1, 0, 1, 'Lille OSC', 'LogoCLB\\Ligue 1\\Lille.png');

-- --------------------------------------------------------

--
-- Table structure for table `lyon`
--

CREATE TABLE `lyon` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lyon`
--

INSERT INTO `lyon` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Anthony Lopes', 'Portugal', 'GK', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(16, 'Anthony Racioppi', 'Switzerland', 'GK', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(10, 'Bertrand Traore', 'Burkina Faso', 'FW', 2, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(25, 'Christopher Martins Pereira', 'Luxembourg', 'MF', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(22, 'Ferland Mendy', 'France', 'DF', 0, 1, 0, 1, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(20, 'Fernando Marcal', 'Brazil', 'DF', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(27, 'Gnaly Maxwell Cornet', 'Ivory Coast', 'FW', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(8, 'Houssem Aouar', 'France', 'MF', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(5, 'Jason Denayer', 'Belgium', 'DF', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(15, 'Jeremy Morel', 'France', 'DF', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(12, 'Jordan Ferri', 'France', 'MF', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(17, 'Lenny Pintor', 'France', 'FW', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(14, 'Leo Dubois', 'France', 'DF', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(6, 'Marcelo Guedes Filho', 'Brazil', 'DF', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(9, 'Mariano Diaz Mejia', 'Spain', 'FW', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(7, 'Martin Terrier', 'France', 'MF', 1, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(11, 'Memphis Depay', 'Netherlands', 'FW', 1, 1, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(18, 'Nabil Fekir', 'France', 'FW', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(13, 'Ousseynou Ndiaye', 'Senegal', 'MF', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(24, 'Pape Cheikh Diop Gueye', 'Senegal', 'MF', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(4, 'Rafael da Silva', 'Brazil', 'DF', 0, 0, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png'),
(28, 'Tanguy Ndombele Alvaro', 'France', 'MF', 0, 1, 0, 0, 'Olympique Lyon', 'LogoCLB\\Ligue 1\\Lyon.png');

-- --------------------------------------------------------

--
-- Table structure for table `marseille`
--

CREATE TABLE `marseille` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marseille`
--

INSERT INTO `marseille` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(13, 'Aymen Abdennour', 'Tunisia', 'DF', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(4, 'Boubacar Kamara', 'France', 'DF', 0, 0, 0, 1, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(17, 'Bouna Sarr', 'Guinea', 'MF', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(14, 'Clinton NJie', 'Cameroon', 'MF', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(10, 'Dimitri Payet', 'France', 'FW', 2, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(15, 'Duje Caleta-Car', 'Croatia', 'DF', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(26, 'Florian Thauvin', 'France', 'FW', 2, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(22, 'Gregory Sertic', 'France', 'MF', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(2, 'Hiroki Sakai', 'Japan', 'DF', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(28, 'Isimat Mirin', 'France', 'DF', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(18, 'Jordan Amavi', 'France', 'DF', 0, 1, 0, 1, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(12, 'Kevin Strootman', 'Netherlands', 'MF', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(11, 'Konstantinos Mitroglou', 'Greece', 'FW', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(5, 'Lucas Ocampos', 'Argentina', 'MF', 1, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(19, 'Luis Gustavo Dias', 'Brazil', 'MF', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(9, 'Mario Balotelli', 'Italy', 'FW', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(8, 'Morgan Sanson', 'France', 'MF', 0, 2, 0, 1, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(7, 'Nemanja Radonjic', 'Serbia', 'FW', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(6, 'Rolando', 'Portugal', 'DF', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(30, 'Steve Mandanda', 'France', 'GK', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png'),
(16, 'Yohann Pele', 'France', 'GK', 0, 0, 0, 0, 'Olympique Marseille', 'LogoCLB\\Ligue 1\\Marseille.png');

-- --------------------------------------------------------

--
-- Table structure for table `monaco`
--

CREATE TABLE `monaco` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monaco`
--

INSERT INTO `monaco` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(11, 'Adama Traore', 'Mali', 'MF', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(15, 'Amilcar Silva', 'France', 'DF', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(3, 'Antonio Barreca', 'Italy', 'DF', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(1, 'Danijel Subasic', 'Croatia', 'GK', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(16, 'Diego Benaglio', 'Switzerland', 'GK', 0, 0, 0, 1, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(19, 'Djibril Sidibe', 'France', 'DF', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(2, 'Fode Toure', 'France', 'DF', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(4, 'Jean Eudes Aholou', 'Ivory Coast', 'MF', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(5, 'Jemerson', 'Brazil', 'DF', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(22, 'Jordi Mboula Queralt', 'Spain', 'FW', 0, 0, 0, 1, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(6, 'Kevin N\'Doram', 'France', 'MF', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(7, 'Marcos Lopes', 'Portugal', 'MF', 1, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(23, 'Pietro Pellegri', 'Italy', 'FW', 1, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(9, 'Radamel Falcao', 'Colombia', 'FW', 1, 1, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(18, 'Ronael Pierre Gabriel', 'France', 'DF', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(30, 'Seydou Sy', 'Senegal', 'GK', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(10, 'Stevan Jovetic', 'Montenegro', 'FW', 1, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(11, 'Vinicius Morais', 'Brazil', 'FW', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(13, 'Willem Geubbels', 'France', 'FW', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(12, 'William Vainqueur', 'France', 'MF', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png'),
(8, 'Youri Tielemans', 'Belgium', 'MF', 0, 0, 0, 0, 'AS Monaco', 'LogoCLB\\Ligue 1\\Monaco.png');

-- --------------------------------------------------------

--
-- Table structure for table `montpellier`
--

CREATE TABLE `montpellier` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `montpellier`
--

INSERT INTO `montpellier` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(2, 'Ruben Aguilar', 'France', 'DF', 0, 0, 0, 3, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(3, 'Daniel Congre', 'France', 'DF', 0, 1, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(4, 'Vitorino Hilton', 'Brazil', 'DF', 0, 0, 0, 1, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(5, 'Pedro Mendes', 'Portugal', 'DF', 1, 0, 0, 1, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(6, 'Salomon Sambia', 'France', 'MF', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(7, 'Paul-Bastien Lasne', 'France', 'MF', 0, 0, 0, 2, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(8, 'Ambroise Oyongo', 'Cameroon', 'DF', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(9, 'Giovanni Sio', 'Ivory Coast', 'FW', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(10, 'Gaetan Laborde', 'France', 'FW', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(11, 'Andy Delort', 'France', 'FW', 0, 1, 0, 1, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(12, 'Bilal Boutobba', 'France', 'FW', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(13, 'Skhiri Ellyes', 'France', 'MF', 1, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(14, 'Damien Le Tallec', 'France', 'FW', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(15, 'Bryan Passi', 'France', 'MF', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(16, 'Dimitry Bertaud', 'France', 'GK', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(17, 'Jeremie Porsan-Clemente', 'France', 'FW', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(20, 'Keagan Dolly', 'South Africa', 'MF', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(21, 'Kylian Kaiboue', 'France', 'MF', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(25, 'Florent Mollet', 'France', 'MF', 1, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(30, 'Jonathan Ligali', 'France', 'GK', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png'),
(40, 'Benjamin Lecomte', 'France', 'GK', 0, 0, 0, 0, 'Montpellier HSC', 'LogoCLB\\Ligue 1\\Montpellier.png');

-- --------------------------------------------------------

--
-- Table structure for table `nantes`
--

CREATE TABLE `nantes` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nantes`
--

INSERT INTO `nantes` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(19, 'Abdoulaye Touré', 'France', 'DF', 0, 0, 1, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(16, 'Alexandre Olliero', 'France', 'GK', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(27, 'Antonio Mance', 'Croatia', 'FW', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(14, 'Charles Traore', 'France', 'DF', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(30, 'Ciprian Tatarusanu', 'Romania', 'GK', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(3, 'Diego Carlos', 'Brazil', 'DF', 0, 0, 0, 2, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(9, 'Emiliano Sala', 'Argentina', 'FW', 2, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(2, 'Fabio da Silva', 'Brazil', 'DF', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(12, 'Gabriel Boschilia', 'Brazil', 'MF', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(33, 'Josue Homawoo', 'France', 'FW', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(7, 'Kalifa Coulibaly', 'Mali', 'MF', 0, 0, 0, 1, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(5, 'Koffi Djidji', 'France', 'DF', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(17, 'Lucas Evangelista', 'Brazil', 'MF', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(6, 'Lucas Lima', 'Brazil', 'MF', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(10, 'Majeed Waris', 'Ghana', 'FW', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(1, 'Maxime Dupe', 'France', 'GK', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(4, 'Nicolas Pallois', 'France', 'DF', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(15, 'Randal Kolo Muani', 'France', 'MF', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(5, 'Serigne Kara Mbodji', 'Senegal', 'MF', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(34, 'Thody Elie Youan', 'France', 'FW', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png'),
(11, 'Valentin Eysseric', 'France', 'MF', 0, 0, 0, 0, 'FC Nantes', 'LogoCLB\\Ligue 1\\Nantes.png');

-- --------------------------------------------------------

--
-- Table structure for table `nice`
--

CREATE TABLE `nice` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nice`
--

INSERT INTO `nice` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(5, 'Adrien Tameze', 'France', 'MF', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(6, 'Remi Walter', 'France', 'MF', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(7, 'Allan Saint-Maximin', 'France', 'FW', 0, 0, 0, 1, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(8, 'Pierre Lees Melou', 'France', 'MF', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(9, 'Mario Balotelli', 'Italy', 'FW', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(10, 'Mickael Le Bihan', 'France', 'FW', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(11, 'Bassem Srarfi', 'Tunisia', 'MF', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(12, 'Coly Racine', 'Senegal', 'MF', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(14, 'Ignatius Ganago', 'Cameroon', 'FW', 1, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(15, 'Patrick Burner', 'France', 'DF', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(16, 'Yannis Clementia', 'France', 'GK', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(18, 'Ihsan Sacko', 'France', 'MF', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(20, 'Youcef Atal', 'Algeria', 'DF', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(23, 'Malang Sarr', 'France', 'DF', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(24, 'Christophe Jallet', 'France', 'DF', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(26, 'Myziane Maolida', 'France', 'FW', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(28, 'Olivier Boscagli', 'France', 'DF', 0, 1, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(29, 'Christophe Herelle', 'France', 'DF', 0, 0, 0, 2, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(30, 'Yoan Cardinale', 'France', 'GK', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(33, 'Mohamed Lamine Diaby', 'France', 'FW', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png'),
(40, 'Walter Daniel Benitez', 'Argentina', 'GK', 0, 0, 0, 0, 'OGC Nice', 'LogoCLB\\Ligue 1\\Nice.png');

-- --------------------------------------------------------

--
-- Table structure for table `nimes`
--

CREATE TABLE `nimes` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nimes`
--

INSERT INTO `nimes` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Baptiste Valette', 'France', 'GK', 0, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(2, 'Mustapha Diallo', 'Senegal', 'MF', 0, 1, 0, 1, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(5, 'Loick Landre', 'France', 'DF', 0, 0, 0, 1, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(6, 'Jordan Ferri', 'France', 'MF', 0, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(7, 'Rachid Alioui', 'France', 'FW', 0, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(8, 'Pierrick Valdivia', 'France', 'MF', 0, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(9, 'Clement Depres', 'France', 'FW', 1, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(10, 'Denis Bouanga', 'Gabon', 'MF', 1, 0, 0, 1, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(11, 'Teji Savanier', 'France', 'MF', 0, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(12, 'Christ-Emmanuel Faitout Maouas', 'France', 'DF', 0, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(14, 'Antonin Bobichon', 'France', 'MF', 0, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(15, 'Gaetan Paquiez', 'France', 'DF', 0, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(19, 'Umut Bozok', 'France', 'FW', 0, 0, 0, 1, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(20, 'Renaud Ripart', 'France', 'MF', 2, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(22, 'Sada Thioub', 'France', 'FW', 2, 1, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(23, 'Anthony Briancon', 'France', 'DF', 0, 1, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(24, 'Sami Ben Amar', 'France', 'FW', 0, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(26, 'Florian Miguel', 'France', 'DF', 0, 0, 1, 2, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(30, 'Paul Bernardoni', 'France', 'GK', 0, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png'),
(33, 'Lucas Buades', 'France', 'FW', 0, 0, 0, 0, 'Nîmes Olympique', 'LogoCLB\\Ligue 1\\Nimes.png');

-- --------------------------------------------------------

--
-- Table structure for table `psg`
--

CREATE TABLE `psg` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `psg`
--

INSERT INTO `psg` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Gianluigi Buffon', 'Italy', 'GK', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(2, 'Thiago Silva', 'Brazil', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(3, 'Presnel Kimpembe', 'France', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(5, 'Marcos Aoas Correa', 'Brazil', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(6, 'Marco Verratti', 'Italy', 'MF', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(7, 'Kylian Mbappe', 'France', 'FW', 3, 1, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(8, 'Leandro Paredes', 'Argentina', 'MF', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(9, 'Edison Cavani', 'Uruguay', 'FW', 1, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(10, 'Neymar', 'Brazil', 'FW', 3, 1, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(11, 'Angel Di Maria', 'Argentina', 'FW', 0, 2, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(12, 'Thomas Meunier', 'Belgium', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(13, 'Dani Alves', 'Brazil', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(14, 'Juan Bernat', 'Spain', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(16, 'Alphonse Areola', 'France', 'GK', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(17, 'Eric Choupo-Moting', 'Cameroon', 'FW', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(18, 'Giovani Lo Celso', 'Argentina', 'MF', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(19, 'Lassana Diarra', 'France', 'MF', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(20, 'Layvin Kurzawa', 'France', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(23, 'Julian Draxler', 'Germany', 'FW', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(25, 'Adrien Rabiot', 'France', 'MF', 1, 0, 0, 1, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(28, 'Antoine Bernede', 'France', 'MF', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png'),
(30, 'Kevin Trapp', 'Germany', 'GK', 0, 0, 0, 0, 'Paris Saint-Germain', 'LogoCLB\\Ligue 1\\PSG.png');

-- --------------------------------------------------------

--
-- Table structure for table `reims`
--

CREATE TABLE `reims` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reims`
--

INSERT INTO `reims` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(21, 'Abdul Rahman', 'Indonesia', 'DF', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(4, 'Alaixys Romao', 'Togo', 'MF', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(17, 'Aly Ndom', 'France', 'FW', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(6, 'Axel Disasi', 'France', 'DF', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(2, 'Bjorn Engels', 'Belgium', 'DF', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(16, 'Edouard Mendy', 'Switzerland', 'FW', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(3, 'Ghislain Konan', 'Ivory Coast', 'DF', 0, 1, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(13, 'Hassane Kamara', 'France', 'MF', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(1, 'Johan Carrasso', 'France', 'GK', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(8, 'Marvin Martin', 'France', 'MF', 0, 0, 0, 1, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(25, 'Moussa Doumbia', 'Mali', 'MF', 1, 0, 0, 1, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(30, 'Nicolas Lemaitre', 'France', 'GK', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(11, 'Oluwaseyi Ojo', 'England', 'FW', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(12, 'Pablo Chavarria', 'Argentina', 'FW', 1, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(18, 'Rémi Oudin', 'France', 'FW', 0, 1, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(15, 'Romain Metanire', 'France', 'DF', 0, 0, 1, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(10, 'Suk Hyun-Jun', 'Korea', 'FW', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(19, 'Thomas Fontaine', 'France', 'DF', 0, 1, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(20, 'Tristan Dingome', 'France', 'MF', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(7, 'Xavier Chavalerin', 'France', 'MF', 0, 0, 0, 1, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png'),
(5, 'Younis Abdelhamid', 'France', 'DF', 0, 0, 0, 0, 'Stade Reims', 'LogoCLB\\Ligue 1\\Reims.png');

-- --------------------------------------------------------

--
-- Table structure for table `rennais`
--

CREATE TABLE `rennais` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rennais`
--

INSERT INTO `rennais` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Abdoulaye Diallo', 'France', 'GK', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(2, 'Mehdi Zeffane', 'France', 'DF', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(3, 'Damien Da Silva', 'France', 'DF', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(4, 'Edson Andre Sitoe', 'Mozambique', 'DF', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(5, 'Doumbia Souleyman', 'France', 'DF', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(6, 'Jakob Johansson', 'Sweden', 'MF', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(7, 'Ismaila Sarr', 'Senegal', 'MF', 2, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(8, 'Clement Grenier', 'France', 'MF', 1, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(9, 'Theoson Jordan Siebatcheu', 'France', 'FW', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(10, 'Rafik Guitane', 'France', 'MF', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(11, 'MBaye Niang', 'Senegal', 'FW', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(12, 'James Lea Siliki', 'France', 'MF', 0, 1, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(14, 'Benjamin Bourigeaud', 'France', 'MF', 1, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(15, 'Ramy Bensebaini', 'Algeria', 'DF', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(17, 'Christ-Emmanuel Faitout Maouas', 'France', 'DF', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(18, 'Hatem Ben Arfa', 'France', 'FW', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(21, 'Benjamin André', 'France', 'FW', 0, 1, 0, 1, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(30, 'Edvinas Gertmonas', 'Lithuania', 'GK', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(33, 'Georginio Rutter', 'France', 'FW', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(34, 'Timothe Nkada', 'France', 'FW', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png'),
(40, 'Tomas Koubek', 'Czech', 'GK', 0, 0, 0, 0, 'Stade Rennes', 'LogoCLB\\Ligue 1\\Rennais.png');

-- --------------------------------------------------------

--
-- Table structure for table `saintetienne`
--

CREATE TABLE `saintetienne` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saintetienne`
--

INSERT INTO `saintetienne` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(3, 'Pierre Yves Polomat', 'France', 'DF', 0, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(4, 'William Saliba', 'France', 'DF', 0, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(5, 'Timothee Kolodziejczak', 'France', 'DF', 0, 1, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(6, 'Yann M\'Vila', 'France', 'MF', 0, 0, 0, 1, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(7, 'Remy Cabella', 'France', 'MF', 0, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(8, 'Youssef Ait Bennasser', 'France', 'MF', 0, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(9, 'Lois Diony', 'France', 'FW', 1, 1, 0, 1, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(10, 'Wahbi Khazri', 'France', 'MF', 1, 0, 0, 1, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(11, 'Gabriel Silva', 'Brazil', 'DF', 0, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(13, 'Makhtar Gueye', 'Senegal', 'FW', 1, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(16, 'Stephane Ruffier', 'France', 'GK', 0, 0, 0, 1, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(17, 'Ole Kristian Selnaes', 'Norway', 'MF', 0, 0, 0, 1, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(18, 'Arnaud Nordin', 'France', 'MF', 0, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(19, 'Yannis Salibur', 'France', 'MF', 0, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(22, 'Kevin Monnet-Paquet', 'France', 'FW', 0, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(24, 'Loic Perrin', 'France', 'DF', 0, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(26, 'Mathieu Debuchy', 'France', 'DF', 0, 1, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(27, 'Robert Beric', 'Slovenia', 'FW', 0, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(28, 'Neven Subotic', 'Serbia', 'DF', 0, 0, 1, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(30, 'Jessy Moulin', 'France', 'GK', 0, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png'),
(32, 'Charles Nathan Abi', 'France', 'FW', 0, 0, 0, 0, 'AS Saint-Étienne', 'LogoCLB\\Ligue 1\\SaintEtienne.png');

-- --------------------------------------------------------

--
-- Table structure for table `strasbourg`
--

CREATE TABLE `strasbourg` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strasbourg`
--

INSERT INTO `strasbourg` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Matz Sels', 'Belgium', 'GK', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(2, 'Mohamed Simakan', 'France', 'DF', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(4, 'Pablo Martinez', 'France', 'DF', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(5, 'Lamine Kone', 'France', 'DF', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(6, 'Jeremy Grimm', 'France', 'MF', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(7, 'Moataz Zemzemi', 'Tunisia', 'MF', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(8, 'Jonas Martin', 'France', 'MF', 0, 1, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(9, 'Idriss Saadi', 'France', 'FW', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(10, 'Benjamin Corgnet', 'France', 'MF', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(11, 'Dmitri Lienard', 'France', 'MF', 0, 1, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(12, 'Lebo Mothiba', 'South Africa', 'FW', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(13, 'Stefan Mitrovic', 'Serbia', 'DF', 0, 0, 0, 1, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(14, 'Sanjin Prcic', 'Bosnia-Herzegovina', 'MF', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(16, 'Eiji Kawashima', 'Japan', 'GK', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(17, 'Gonçalves Anthony', 'France', 'MF', 1, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(22, 'Youssouf Fofana', 'Mali', 'FW', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(23, 'Lionel Jules Carole', 'France', 'DF', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(25, 'Ludovic Ajorque', 'France', 'FW', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(27, 'Kenny Lala', 'France', 'DF', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(29, 'Nuno da Costa', 'Cape Verde', 'FW', 1, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png'),
(30, 'Bingorou Kamara', 'France', 'GK', 0, 0, 0, 0, 'RC Strasbourg', 'LogoCLB\\Ligue 1\\Strasbourg.png');

-- --------------------------------------------------------

--
-- Table structure for table `toulouse`
--

CREATE TABLE `toulouse` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toulouse`
--

INSERT INTO `toulouse` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Mauro Goicoechea', 'Uruguay', 'GK', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(2, 'Kelvin Amian Adou', 'France', 'DF', 0, 0, 0, 1, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(3, 'Gen Shoji', 'Japan', 'DF', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(4, 'Yannick Cahuzac', 'France', 'MF', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(5, 'Steven Moreira', 'Cape Verde', 'DF', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(6, 'Christopher Jullien', 'France', 'DF', 0, 0, 0, 1, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(7, 'Max Gradel', 'Ivory Coast', 'FW', 1, 1, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(8, 'Corentin Jean', 'France', 'FW', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(9, 'Yaya Sanogo', 'France', 'FW', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(10, 'Aaron Leya Iseka', 'Congo DR', 'FW', 1, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(12, 'Issiaga Sylla', 'Guinea', 'DF', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(13, 'Clement Michelin', 'France', 'DF', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(14, 'Mathieu Dossevi', 'France', 'MF', 1, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(15, 'John Bostock', 'England', 'MF', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(16, 'Marc Vidal', 'France', 'GK', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(17, 'Ibrahim Sangare', 'Ivory Coast', 'MF', 0, 1, 0, 1, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(21, 'Jimmy Durmaz', 'Sweden', 'MF', 0, 0, 0, 1, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(22, 'Manuel Garcia Alonso', 'Spain', 'MF', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(24, 'Firmin Ndombe Mubele', 'Congo DR', 'FW', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(30, 'Baptiste Reynet', 'France', 'GK', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png'),
(35, 'Driss Khalid', 'France', 'FW', 0, 0, 0, 0, 'Toulouse FC', 'LogoCLB\\Ligue 1\\Toulouse.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
