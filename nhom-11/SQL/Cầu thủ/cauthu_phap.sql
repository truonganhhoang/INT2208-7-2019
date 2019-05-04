-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2019 at 12:58 PM
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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amiens`
--

INSERT INTO `amiens` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
('1', 'Régis Gurtner', 'France', 'GK', 0, 0, 0, 0, 'Amiens SC'),
('10', 'John Mendoza', 'Colombia', 'FW', 0, 1, 0, 0, 'Amiens SC'),
('11', 'Juan Otero', 'Colombia', 'FW', 0, 0, 0, 0, 'Amiens SC'),
('12', 'Bakaye Dibassy', 'Mali', 'DF', 0, 0, 0, 0, 'Amiens SC'),
('13', 'Quentin Cornette', 'France', 'FW', 0, 0, 0, 0, 'Amiens SC'),
('14', 'Gaoussou Traoré', 'France', 'MF', 0, 0, 0, 1, 'Amiens SC'),
('15', 'Moussa Konaté', 'Senegal', 'FW', 3, 1, 0, 0, 'Amiens SC'),
('16', 'Matthieu Dreyer', 'France', 'GK', 0, 0, 0, 0, 'Amiens SC'),
('17', 'Alexis Blin', 'France', 'DF', 0, 0, 0, 0, 'Amiens SC'),
('2', 'Prince Gouano', 'France', 'DF', 0, 0, 0, 0, 'Amiens SC'),
('20', 'Cheick Timite', 'Ivory Coast', 'MF', 0, 0, 0, 0, 'Amiens SC'),
('24', 'Mathieu Bodmer', 'France', 'DF', 0, 0, 0, 0, 'Amiens SC'),
('25', 'Jordan Lefort', 'France', 'DF', 0, 1, 0, 0, 'Amiens SC'),
('33', 'Iron Gomis', 'France', 'MF', 0, 0, 0, 0, 'Amiens SC'),
('34', 'Bongani Zungu', 'South Africa', 'MF', 0, 0, 0, 1, 'Amiens SC'),
('4', 'Emil Krafth', 'Sweden', 'DF', 0, 1, 0, 0, 'Amiens SC'),
('5', 'Eddy Gnahoré', 'France', 'MF', 1, 0, 0, 1, 'Amiens SC'),
('6', 'Thomas Monconduit', 'France', 'MF', 0, 0, 0, 0, 'Amiens SC'),
('7', 'Saman Ghoddos', 'Iran', 'FW', 1, 0, 0, 0, 'Amiens SC'),
('9', 'Serhou Guirassy', 'France', 'FW', 0, 0, 0, 0, 'Amiens SC');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angers`
--

INSERT INTO `angers` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(23, 'Abdoulaye Cisse', 'Guinea', 'DF', 0, 0, 0, 0, 'Angers SCO'),
(10, 'Angelo Fulgini', 'France', 'MF', 1, 0, 0, 1, 'Angers SCO'),
(14, 'Anthony Mancini', 'Luxembourg', 'FW', 0, 0, 0, 0, 'Angers SCO'),
(18, 'Baptiste Santamaria', 'France', 'MF', 0, 0, 0, 0, 'Angers SCO'),
(17, 'Cheikh NDoye', 'Senegal ', 'MF', 0, 0, 0, 0, 'Angers SCO'),
(9, 'Cristian Lopez', 'Spain', 'FW', 0, 0, 0, 0, 'Angers SCO'),
(13, 'Dorian Bertrand', 'France', 'MF', 0, 0, 0, 0, 'Angers SCO'),
(20, 'Flavien Tait', 'France', 'MF', 0, 1, 0, 0, 'Angers SCO'),
(7, 'Harisson Manzala', 'Congo DR', 'MF', 0, 0, 0, 0, 'Angers SCO'),
(8, 'Ismael Traore', 'Ivory coast', 'DF', 1, 0, 0, 0, 'Angers SCO'),
(16, 'Ludovic Butelle', 'France', 'GK', 0, 0, 0, 0, 'Angers SCO'),
(4, 'Mateo Pavlovic', 'Croatia', 'DF', 0, 0, 0, 0, 'Angers SCO'),
(33, 'Mazire Soula', 'France', 'FW', 0, 0, 0, 0, 'Angers SCO'),
(15, 'Pierrick Capelle', 'France', 'MF', 1, 0, 0, 0, 'Angers SCO'),
(2, 'Rayan Ait Nouri', 'France', 'DF', 0, 0, 0, 0, 'Angers SCO'),
(24, 'Romain Thomas', 'France', 'DF', 0, 0, 0, 0, 'Angers SCO'),
(19, 'Stephane Bahoken', 'France', 'FW', 0, 1, 0, 0, 'Angers SCO'),
(5, 'Thomas Mangani', 'France', 'DF', 1, 0, 0, 0, 'Angers SCO'),
(6, 'Vincent Pajot', 'France', 'MF', 0, 0, 0, 0, 'Angers SCO'),
(11, 'Wilfried Aka Kanga', 'France', 'FW', 0, 0, 0, 1, 'Angers SCO'),
(3, 'Yoann Andreu', 'France', 'DF', 0, 0, 0, 0, 'Angers SCO'),
(1, 'Zacharie Boucher', 'France', 'GK', 0, 0, 0, 0, 'Angers SCO');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bordeaux`
--

INSERT INTO `bordeaux` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Benoit Costil', 'France', 'GK', 0, 0, 0, 0, 'Girondins Bordeaux'),
(2, 'Milan Gajic', 'Serbia', 'DF', 0, 0, 0, 0, 'Girondins Bordeaux'),
(3, 'Sergi Palencia', 'Spain', 'DF', 0, 0, 0, 0, 'Girondins Bordeaux'),
(4, 'Jules Kounde', 'France', 'DF', 0, 0, 0, 0, 'Girondins Bordeaux'),
(5, 'Otavio Henrique Passos Santos', 'Brazil', 'MF', 0, 0, 0, 0, 'Girondins Bordeaux'),
(6, 'Igor Lewczuk', 'Poland', 'DF', 0, 0, 0, 0, 'Girondins Bordeaux'),
(7, 'Jimmy Briand', 'France', 'FW', 0, 1, 0, 0, 'Girondins Bordeaux'),
(8, 'Paul Baysse', 'France', 'DF', 0, 0, 0, 1, 'Girondins Bordeaux'),
(9, 'Andreas Cornelius', 'Denmark', 'FW', 0, 0, 0, 0, 'Girondins Bordeaux'),
(10, 'Samuel Kalu', 'Nigeria', 'FW', 0, 0, 0, 0, 'Girondins Bordeaux'),
(11, 'Francois Kamano', 'Guinea', 'FW', 3, 0, 0, 1, 'Girondins Bordeaux'),
(12, 'Nicolas de Preville', 'France', 'FW', 0, 0, 0, 0, 'Girondins Bordeaux'),
(13, 'Younousse Sankhare', 'France', 'MF', 0, 1, 0, 0, 'Girondins Bordeaux'),
(14, 'Vukasin Jovanovic', 'Serbia', 'DF', 0, 0, 0, 0, 'Girondins Bordeaux'),
(16, 'Gaetan Poussin', 'France', 'GK', 0, 0, 0, 0, 'Girondins Bordeaux'),
(17, 'Aurelien Tchouameni', 'France', 'MF', 0, 0, 0, 0, 'Girondins Bordeaux'),
(18, 'Jaroslav Plasil', 'Czech', 'MF', 0, 0, 0, 0, 'Girondins Bordeaux'),
(19, 'Lukas Lerager', 'Denmark', 'MF', 0, 0, 0, 0, 'Girondins Bordeaux'),
(20, 'Youssouf Sabaly', 'France', 'DF', 0, 0, 0, 0, 'Girondins Bordeaux'),
(23, 'Valentin Vada', 'Argentina', 'MF', 0, 0, 0, 0, 'Girondins Bordeaux'),
(24, 'Albert-Nicolas Lottin', 'France', 'MF', 0, 0, 0, 0, 'Girondins Bordeaux'),
(25, 'Gaetan Laborde', 'France', 'FW', 0, 0, 1, 0, 'Girondins Bordeaux'),
(27, 'Josh Maja', 'England', 'FW', 0, 0, 0, 0, 'Girondins Bordeaux');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caen`
--

INSERT INTO `caen` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(22, 'Adama Mbengue', 'Senegal', 'MF', 0, 0, 0, 0, 'SM Caen'),
(24, 'Alexander Djiku', 'France', 'MF', 0, 0, 0, 1, 'SM Caen'),
(5, 'Baissama Sankho', 'France', 'DF', 0, 0, 0, 0, 'SM Caen'),
(30, 'Brice Samba', 'Congo', 'GK', 0, 0, 0, 0, 'SM Caen'),
(11, 'Casimir Ninga', 'Chad', 'FW', 0, 1, 0, 0, 'SM Caen'),
(12, 'Claudio Beauvue', 'France', 'FW', 0, 0, 0, 0, 'SM Caen'),
(15, 'Emmanuel Imorou', 'Benin', 'DF', 0, 0, 0, 1, 'SM Caen'),
(27, 'Enzo Crivelli', 'France', 'FW', 1, 0, 0, 0, 'SM Caen'),
(1, 'Erwin Zelazny', 'France', 'GK', 0, 0, 0, 0, 'SM Caen'),
(13, 'Evens Joseph', 'France', 'MF', 0, 0, 0, 0, 'SM Caen'),
(10, 'Faycal Fajr', 'France', 'FW', 0, 0, 0, 0, 'SM Caen'),
(4, 'Ismael Diomande', 'Ivory coast', 'MF', 0, 0, 0, 0, 'SM Caen'),
(9, 'Jan Repas', 'Slovenia', 'MF', 0, 0, 0, 0, 'SM Caen'),
(17, 'Jessy Deminguet', 'France', 'MF', 0, 0, 0, 0, 'SM Caen'),
(14, 'Jonathan Gradit', 'France', 'DF', 0, 0, 0, 0, 'SM Caen'),
(2, 'Paul Baysse', 'France', 'DF', 0, 0, 1, 2, 'SM Caen'),
(6, 'Prince Oniangue', 'France', 'DF', 0, 0, 0, 0, 'SM Caen'),
(7, 'Saif-Eddine Khaoui', 'France', 'MF', 0, 0, 0, 0, 'SM Caen'),
(8, 'Stef Peeters', 'Belgium', 'DF', 0, 0, 0, 0, 'SM Caen'),
(18, 'Yacine Bammou', 'France', 'FW', 1, 0, 0, 1, 'SM Caen'),
(3, 'Yoel Armougom', 'France', 'DF', 0, 0, 0, 0, 'SM Caen');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dijon`
--

INSERT INTO `dijon` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Runar Alex Runarsson', 'Iceland', 'GK', 0, 0, 0, 0, 'Dijon FCO'),
(2, 'Mickael Alphonse', 'France', 'DF', 0, 0, 0, 0, 'Dijon FCO'),
(3, 'Arnold Bouka Moutou', 'Congo', 'DF', 0, 0, 0, 0, 'Dijon FCO'),
(4, 'Naif Aguerd', 'Morocco', 'DF', 1, 0, 0, 2, 'Dijon FCO'),
(5, 'Oussama Haddadi', 'Tunisia', 'DF', 1, 1, 0, 0, 'Dijon FCO'),
(6, 'Laurent Ciman', 'Belgium', 'DF', 0, 0, 0, 0, 'Dijon FCO'),
(7, 'Frederic Sammaritano', 'France', 'MF', 0, 0, 0, 0, 'Dijon FCO'),
(8, 'Mehdi Abeid', 'France', 'MF', 0, 0, 0, 0, 'Dijon FCO'),
(9, 'Wesley Said', 'France', 'FW', 0, 0, 0, 0, 'Dijon FCO'),
(10, 'Naim Sliti', 'Tunisia', 'MF', 0, 2, 0, 0, 'Dijon FCO'),
(11, 'Julio Tavares', 'Cape Verde', 'FW', 3, 0, 0, 0, 'Dijon FCO'),
(12, 'Enzo Loiodice', 'France', 'MF', 0, 0, 0, 0, 'Dijon FCO'),
(14, 'Jordan Marie', 'France', 'MF', 0, 0, 0, 0, 'Dijon FCO'),
(15, 'Florent Balmont', 'France', 'MF', 0, 0, 0, 0, 'Dijon FCO'),
(16, 'Bobby Allain', 'France', 'GK', 0, 0, 0, 0, 'Dijon FCO'),
(18, 'Cedric Yambere', 'France', 'DF', 0, 0, 0, 1, 'Dijon FCO'),
(19, 'Valentin Rosier', 'France', 'DF', 0, 1, 0, 0, 'Dijon FCO'),
(20, 'Romain Amalfitano', 'France', 'MF', 0, 0, 0, 0, 'Dijon FCO'),
(23, 'Jules Keita', 'Guinea', 'FW', 2, 1, 0, 1, 'Dijon FCO'),
(29, 'Benjamin Jeannot', 'France', 'FW', 0, 0, 0, 0, 'Dijon FCO'),
(30, 'Levi Ntumba', 'France', 'GK', 0, 0, 0, 0, 'Dijon FCO'),
(31, 'Sory Doumbouya', 'France', 'FW', 0, 0, 0, 0, 'Dijon FCO');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guingamp`
--

INSERT INTO `guingamp` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Karl-Johan Johnsson', 'Sweden', 'GK', 0, 0, 0, 0, 'EA Guingamp'),
(2, 'Jordan Ikoko', 'France', 'DF', 0, 0, 0, 0, 'EA Guingamp'),
(3, 'Papiss Mison Djilobodji', 'Senegal', 'DF', 0, 0, 0, 0, 'EA Guingamp'),
(4, 'Djegui Koita', 'France', 'DF', 0, 0, 0, 0, 'EA Guingamp'),
(5, 'Pedro Rebocho', 'Portugal', 'DF', 0, 0, 0, 0, 'EA Guingamp'),
(6, 'Lebogang Phiri', 'South Africa', 'MF', 0, 0, 0, 0, 'EA Guingamp'),
(7, 'Ludovic Blas', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp'),
(8, 'Lucas Deaux', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp'),
(9, 'Alexandre Mendy', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp'),
(10, 'Nicolas Benezet', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp'),
(11, 'Marcus Thuram', 'France', 'FW', 1, 0, 0, 0, 'EA Guingamp'),
(12, 'Yeni Ngbakoto', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp'),
(13, 'Johan Larsson', 'Sweden', 'DF', 0, 0, 0, 0, 'EA Guingamp'),
(14, 'Nathael Julan', 'France', 'FW', 0, 0, 0, 0, 'EA Guingamp'),
(15, 'Jeremy Sorbon', 'France', 'DF', 0, 0, 0, 0, 'EA Guingamp'),
(16, 'Marc-Aurele Caillard', 'France', 'GK', 0, 0, 0, 0, 'EA Guingamp'),
(18, 'Guessouma Fofana', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp'),
(19, 'Mehdi Merghem', 'France', 'MF', 0, 0, 0, 0, 'EA Guingamp'),
(23, 'Ronny Rodelin', 'France', 'FW', 0, 0, 0, 0, 'EA Guingamp'),
(25, 'Cheick Omar Traore', 'France', 'DF', 0, 0, 0, 1, 'EA Guingamp'),
(26, 'Nolan Roux', 'France', 'FW', 1, 0, 0, 0, 'EA Guingamp'),
(29, 'Christophe Kerbrat', 'France', 'DF', 0, 0, 1, 0, 'EA Guingamp'),
(30, 'Denis Petric', 'Slovenia', 'GK', 0, 0, 0, 0, 'EA Guingamp');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lille`
--

INSERT INTO `lille` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Adam Jakubech', 'Slovakia', 'GK', 0, 0, 0, 0, 'Lille OSC'),
(5, 'Adama Soumaoro', 'France', 'DF', 0, 0, 0, 1, 'Lille OSC'),
(11, 'Alexis Araujo', 'France', 'MF', 0, 0, 0, 0, 'Lille OSC'),
(21, 'Arton Zekaj', 'Serbia', 'MF', 0, 0, 0, 0, 'Lille OSC'),
(25, 'Fode Toure', 'France', 'DF', 0, 0, 0, 0, 'Lille OSC'),
(4, 'Gabriel dos Santos Magalhaes', 'Brazil', 'DF', 0, 0, 0, 0, 'Lille OSC'),
(14, 'Jonathan Bamba', 'France', 'DF', 3, 0, 0, 0, 'Lille OSC'),
(6, 'Jose Fonte', 'Portugal', 'DF', 0, 0, 0, 1, 'Lille OSC'),
(22, 'Kouadio Dabila', 'Ivory coast', 'DF', 0, 0, 0, 1, 'Lille OSC'),
(9, 'Loic Remy', 'France', 'FW', 0, 0, 0, 0, 'Lille OSC'),
(11, 'Luiz de Araujo Guimaraes Neto', 'France', 'FW', 0, 0, 0, 0, 'Lille OSC'),
(8, 'Miguel Angelo da Silva Rocha', 'Portugal', 'MF', 1, 0, 0, 1, 'Lille OSC'),
(16, 'Mike Maignan', 'France', 'GK', 0, 0, 0, 0, 'Lille OSC'),
(12, 'Nanitamo Jonathan Ikone', 'France', 'MF', 0, 0, 0, 0, 'Lille OSC'),
(19, 'Nicolas Pépé', 'France', 'FW', 1, 3, 0, 0, 'Lille OSC'),
(7, 'Rafael Alexandre Conceicao Lea', 'Portugal', 'FW', 0, 0, 0, 0, 'Lille OSC'),
(10, 'Rui Fonte', 'Portugal', 'FW', 0, 0, 0, 0, 'Lille OSC'),
(20, 'Thiago Maia Alencar', 'Brazil', 'MF', 0, 0, 0, 0, 'Lille OSC'),
(23, 'Thiago Mendes', 'Brazil', 'MF', 0, 0, 0, 1, 'Lille OSC'),
(3, 'Youssouf Kone', 'Mali', 'MF', 0, 0, 0, 0, 'Lille OSC'),
(17, 'Zeki Celik', 'Turkey', 'DF', 0, 1, 0, 1, 'Lille OSC');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lyon`
--

INSERT INTO `lyon` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Anthony Lopes', 'Portugal', 'GK', 0, 0, 0, 0, 'Olympique Lyon'),
(16, 'Anthony Racioppi', 'Switzerland', 'GK', 0, 0, 0, 0, 'Olympique Lyon'),
(10, 'Bertrand Traore', 'Burkina Faso', 'FW', 2, 0, 0, 0, 'Olympique Lyon'),
(25, 'Christopher Martins Pereira', 'Luxembourg', 'MF', 0, 0, 0, 0, 'Olympique Lyon'),
(22, 'Ferland Mendy', 'France', 'DF', 0, 1, 0, 1, 'Olympique Lyon'),
(20, 'Fernando Marcal', 'Brazil', 'DF', 0, 0, 0, 0, 'Olympique Lyon'),
(27, 'Gnaly Maxwell Cornet', 'Ivory Coast', 'FW', 0, 0, 0, 0, 'Olympique Lyon'),
(8, 'Houssem Aouar', 'France', 'MF', 0, 0, 0, 0, 'Olympique Lyon'),
(5, 'Jason Denayer', 'Belgium', 'DF', 0, 0, 0, 0, 'Olympique Lyon'),
(15, 'Jeremy Morel', 'France', 'DF', 0, 0, 0, 0, 'Olympique Lyon'),
(12, 'Jordan Ferri', 'France', 'MF', 0, 0, 0, 0, 'Olympique Lyon'),
(17, 'Lenny Pintor', 'France', 'FW', 0, 0, 0, 0, 'Olympique Lyon'),
(14, 'Leo Dubois', 'France', 'DF', 0, 0, 0, 0, 'Olympique Lyon'),
(6, 'Marcelo Guedes Filho', 'Brazil', 'DF', 0, 0, 0, 0, 'Olympique Lyon'),
(9, 'Mariano Diaz Mejia', 'Spain', 'FW', 0, 0, 0, 0, 'Olympique Lyon'),
(7, 'Martin Terrier', 'France', 'MF', 1, 0, 0, 0, 'Olympique Lyon'),
(11, 'Memphis Depay', 'Netherlands', 'FW', 1, 1, 0, 0, 'Olympique Lyon'),
(18, 'Nabil Fekir', 'France', 'FW', 0, 0, 0, 0, 'Olympique Lyon'),
(13, 'Ousseynou Ndiaye', 'Senegal', 'MF', 0, 0, 0, 0, 'Olympique Lyon'),
(24, 'Pape Cheikh Diop Gueye', 'Senegal', 'MF', 0, 0, 0, 0, 'Olympique Lyon'),
(4, 'Rafael da Silva', 'Brazil', 'DF', 0, 0, 0, 0, 'Olympique Lyon'),
(28, 'Tanguy Ndombele Alvaro', 'France', 'MF', 0, 1, 0, 0, 'Olympique Lyon');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marseille`
--

INSERT INTO `marseille` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(13, 'Aymen Abdennour', 'Tunisia', 'DF', 0, 0, 0, 0, 'Olympique Marseille'),
(4, 'Boubacar Kamara', 'France', 'DF', 0, 0, 0, 1, 'Olympique Marseille'),
(17, 'Bouna Sarr', 'Guinea', 'MF', 0, 0, 0, 0, 'Olympique Marseille'),
(14, 'Clinton NJie', 'Cameroon', 'MF', 0, 0, 0, 0, 'Olympique Marseille'),
(10, 'Dimitri Payet', 'France', 'FW', 2, 0, 0, 0, 'Olympique Marseille'),
(15, 'Duje Caleta-Car', 'Croatia', 'DF', 0, 0, 0, 0, 'Olympique Marseille'),
(26, 'Florian Thauvin', 'France', 'FW', 2, 0, 0, 0, 'Olympique Marseille'),
(22, 'Gregory Sertic', 'France', 'MF', 0, 0, 0, 0, 'Olympique Marseille'),
(2, 'Hiroki Sakai', 'Japan', 'DF', 0, 0, 0, 0, 'Olympique Marseille'),
(28, 'Isimat Mirin', 'France', 'DF', 0, 0, 0, 0, 'Olympique Marseille'),
(18, 'Jordan Amavi', 'France', 'DF', 0, 1, 0, 1, 'Olympique Marseille'),
(12, 'Kevin Strootman', 'Netherlands', 'MF', 0, 0, 0, 0, 'Olympique Marseille'),
(11, 'Konstantinos Mitroglou', 'Greece', 'FW', 0, 0, 0, 0, 'Olympique Marseille'),
(5, 'Lucas Ocampos', 'Argentina', 'MF', 1, 0, 0, 0, 'Olympique Marseille'),
(19, 'Luis Gustavo Dias', 'Brazil', 'MF', 0, 0, 0, 0, 'Olympique Marseille'),
(9, 'Mario Balotelli', 'Italy', 'FW', 0, 0, 0, 0, 'Olympique Marseille'),
(8, 'Morgan Sanson', 'France', 'MF', 0, 2, 0, 1, 'Olympique Marseille'),
(7, 'Nemanja Radonjic', 'Serbia', 'FW', 0, 0, 0, 0, 'Olympique Marseille'),
(6, 'Rolando', 'Portugal', 'DF', 0, 0, 0, 0, 'Olympique Marseille'),
(30, 'Steve Mandanda', 'France', 'GK', 0, 0, 0, 0, 'Olympique Marseille'),
(16, 'Yohann Pele', 'France', 'GK', 0, 0, 0, 0, 'Olympique Marseille');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monaco`
--

INSERT INTO `monaco` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(11, 'Adama Traore', 'Mali', 'MF', 0, 0, 0, 0, 'AS Monaco'),
(15, 'Amilcar Silva', 'France', 'DF', 0, 0, 0, 0, 'AS Monaco'),
(3, 'Antonio Barreca', 'Italy', 'DF', 0, 0, 0, 0, 'AS Monaco'),
(1, 'Danijel Subasic', 'Croatia', 'GK', 0, 0, 0, 0, 'AS Monaco'),
(16, 'Diego Benaglio', 'Switzerland', 'GK', 0, 0, 0, 1, 'AS Monaco'),
(19, 'Djibril Sidibe', 'France', 'DF', 0, 0, 0, 0, 'AS Monaco'),
(2, 'Fode Toure', 'France', 'DF', 0, 0, 0, 0, 'AS Monaco'),
(4, 'Jean Eudes Aholou', 'Ivory Coast', 'MF', 0, 0, 0, 0, 'AS Monaco'),
(5, 'Jemerson', 'Brazil', 'DF', 0, 0, 0, 0, 'AS Monaco'),
(22, 'Jordi Mboula Queralt', 'Spain', 'FW', 0, 0, 0, 1, 'AS Monaco'),
(6, 'Kevin N\'Doram', 'France', 'MF', 0, 0, 0, 0, 'AS Monaco'),
(7, 'Marcos Lopes', 'Portugal', 'MF', 1, 0, 0, 0, 'AS Monaco'),
(23, 'Pietro Pellegri', 'Italy', 'FW', 1, 0, 0, 0, 'AS Monaco'),
(9, 'Radamel Falcao', 'Colombia', 'FW', 1, 1, 0, 0, 'AS Monaco'),
(18, 'Ronael Pierre Gabriel', 'France', 'DF', 0, 0, 0, 0, 'AS Monaco'),
(30, 'Seydou Sy', 'Senegal', 'GK', 0, 0, 0, 0, 'AS Monaco'),
(10, 'Stevan Jovetic', 'Montenegro', 'FW', 1, 0, 0, 0, 'AS Monaco'),
(11, 'Vinicius Morais', 'Brazil', 'FW', 0, 0, 0, 0, 'AS Monaco'),
(13, 'Willem Geubbels', 'France', 'FW', 0, 0, 0, 0, 'AS Monaco'),
(12, 'William Vainqueur', 'France', 'MF', 0, 0, 0, 0, 'AS Monaco'),
(8, 'Youri Tielemans', 'Belgium', 'MF', 0, 0, 0, 0, 'AS Monaco');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `montpellier`
--

INSERT INTO `montpellier` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(2, 'Ruben Aguilar', 'France', 'DF', 0, 0, 0, 3, 'Montpellier HSC'),
(3, 'Daniel Congre', 'France', 'DF', 0, 1, 0, 0, 'Montpellier HSC'),
(4, 'Vitorino Hilton', 'Brazil', 'DF', 0, 0, 0, 1, 'Montpellier HSC'),
(5, 'Pedro Mendes', 'Portugal', 'DF', 1, 0, 0, 1, 'Montpellier HSC'),
(6, 'Salomon Sambia', 'France', 'MF', 0, 0, 0, 0, 'Montpellier HSC'),
(7, 'Paul-Bastien Lasne', 'France', 'MF', 0, 0, 0, 2, 'Montpellier HSC'),
(8, 'Ambroise Oyongo', 'Cameroon', 'DF', 0, 0, 0, 0, 'Montpellier HSC'),
(9, 'Giovanni Sio', 'Ivory Coast', 'FW', 0, 0, 0, 0, 'Montpellier HSC'),
(10, 'Gaetan Laborde', 'France', 'FW', 0, 0, 0, 0, 'Montpellier HSC'),
(11, 'Andy Delort', 'France', 'FW', 0, 1, 0, 1, 'Montpellier HSC'),
(12, 'Bilal Boutobba', 'France', 'FW', 0, 0, 0, 0, 'Montpellier HSC'),
(13, 'Skhiri Ellyes', 'France', 'MF', 1, 0, 0, 0, 'Montpellier HSC'),
(14, 'Damien Le Tallec', 'France', 'FW', 0, 0, 0, 0, 'Montpellier HSC'),
(15, 'Bryan Passi', 'France', 'MF', 0, 0, 0, 0, 'Montpellier HSC'),
(16, 'Dimitry Bertaud', 'France', 'GK', 0, 0, 0, 0, 'Montpellier HSC'),
(17, 'Jeremie Porsan-Clemente', 'France', 'FW', 0, 0, 0, 0, 'Montpellier HSC'),
(20, 'Keagan Dolly', 'South Africa', 'MF', 0, 0, 0, 0, 'Montpellier HSC'),
(21, 'Kylian Kaiboue', 'France', 'MF', 0, 0, 0, 0, 'Montpellier HSC'),
(25, 'Florent Mollet', 'France', 'MF', 1, 0, 0, 0, 'Montpellier HSC'),
(30, 'Jonathan Ligali', 'France', 'GK', 0, 0, 0, 0, 'Montpellier HSC'),
(40, 'Benjamin Lecomte', 'France', 'GK', 0, 0, 0, 0, 'Montpellier HSC');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nantes`
--

INSERT INTO `nantes` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(19, 'Abdoulaye Touré', 'France', 'DF', 0, 0, 1, 0, 'FC Nantes'),
(16, 'Alexandre Olliero', 'France', 'GK', 0, 0, 0, 0, 'FC Nantes'),
(27, 'Antonio Mance', 'Croatia', 'FW', 0, 0, 0, 0, 'FC Nantes'),
(14, 'Charles Traore', 'France', 'DF', 0, 0, 0, 0, 'FC Nantes'),
(30, 'Ciprian Tatarusanu', 'Romania', 'GK', 0, 0, 0, 0, 'FC Nantes'),
(3, 'Diego Carlos', 'Brazil', 'DF', 0, 0, 0, 2, 'FC Nantes'),
(9, 'Emiliano Sala', 'Argentina', 'FW', 2, 0, 0, 0, 'FC Nantes'),
(2, 'Fabio da Silva', 'Brazil', 'DF', 0, 0, 0, 0, 'FC Nantes'),
(12, 'Gabriel Boschilia', 'Brazil', 'MF', 0, 0, 0, 0, 'FC Nantes'),
(33, 'Josue Homawoo', 'France', 'FW', 0, 0, 0, 0, 'FC Nantes'),
(7, 'Kalifa Coulibaly', 'Mali', 'MF', 0, 0, 0, 1, 'FC Nantes'),
(5, 'Koffi Djidji', 'France', 'DF', 0, 0, 0, 0, 'FC Nantes'),
(17, 'Lucas Evangelista', 'Brazil', 'MF', 0, 0, 0, 0, 'FC Nantes'),
(6, 'Lucas Lima', 'Brazil', 'MF', 0, 0, 0, 0, 'FC Nantes'),
(10, 'Majeed Waris', 'Ghana', 'FW', 0, 0, 0, 0, 'FC Nantes'),
(1, 'Maxime Dupe', 'France', 'GK', 0, 0, 0, 0, 'FC Nantes'),
(4, 'Nicolas Pallois', 'France', 'DF', 0, 0, 0, 0, 'FC Nantes'),
(15, 'Randal Kolo Muani', 'France', 'MF', 0, 0, 0, 0, 'FC Nantes'),
(5, 'Serigne Kara Mbodji', 'Senegal', 'MF', 0, 0, 0, 0, 'FC Nantes'),
(34, 'Thody Elie Youan', 'France', 'FW', 0, 0, 0, 0, 'FC Nantes'),
(11, 'Valentin Eysseric', 'France', 'MF', 0, 0, 0, 0, 'FC Nantes');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nice`
--

INSERT INTO `nice` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(5, 'Adrien Tameze', 'France', 'MF', 0, 0, 0, 0, 'OGC Nice'),
(6, 'Remi Walter', 'France', 'MF', 0, 0, 0, 0, 'OGC Nice'),
(7, 'Allan Saint-Maximin', 'France', 'FW', 0, 0, 0, 1, 'OGC Nice'),
(8, 'Pierre Lees Melou', 'France', 'MF', 0, 0, 0, 0, 'OGC Nice'),
(9, 'Mario Balotelli', 'Italy', 'FW', 0, 0, 0, 0, 'OGC Nice'),
(10, 'Mickael Le Bihan', 'France', 'FW', 0, 0, 0, 0, 'OGC Nice'),
(11, 'Bassem Srarfi', 'Tunisia', 'MF', 0, 0, 0, 0, 'OGC Nice'),
(12, 'Coly Racine', 'Senegal', 'MF', 0, 0, 0, 0, 'OGC Nice'),
(14, 'Ignatius Ganago', 'Cameroon', 'FW', 1, 0, 0, 0, 'OGC Nice'),
(15, 'Patrick Burner', 'France', 'DF', 0, 0, 0, 0, 'OGC Nice'),
(16, 'Yannis Clementia', 'France', 'GK', 0, 0, 0, 0, 'OGC Nice'),
(18, 'Ihsan Sacko', 'France', 'MF', 0, 0, 0, 0, 'OGC Nice'),
(20, 'Youcef Atal', 'Algeria', 'DF', 0, 0, 0, 0, 'OGC Nice'),
(23, 'Malang Sarr', 'France', 'DF', 0, 0, 0, 0, 'OGC Nice'),
(24, 'Christophe Jallet', 'France', 'DF', 0, 0, 0, 0, 'OGC Nice'),
(26, 'Myziane Maolida', 'France', 'FW', 0, 0, 0, 0, 'OGC Nice'),
(28, 'Olivier Boscagli', 'France', 'DF', 0, 1, 0, 0, 'OGC Nice'),
(29, 'Christophe Herelle', 'France', 'DF', 0, 0, 0, 2, 'OGC Nice'),
(30, 'Yoan Cardinale', 'France', 'GK', 0, 0, 0, 0, 'OGC Nice'),
(33, 'Mohamed Lamine Diaby', 'France', 'FW', 0, 0, 0, 0, 'OGC Nice'),
(40, 'Walter Daniel Benitez', 'Argentina', 'GK', 0, 0, 0, 0, 'OGC Nice');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nimes`
--

INSERT INTO `nimes` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Baptiste Valette', 'France', 'GK', 0, 0, 0, 0, 'Nîmes Olympique'),
(2, 'Mustapha Diallo', 'Senegal', 'MF', 0, 1, 0, 1, 'Nîmes Olympique'),
(5, 'Loick Landre', 'France', 'DF', 0, 0, 0, 1, 'Nîmes Olympique'),
(6, 'Jordan Ferri', 'France', 'MF', 0, 0, 0, 0, 'Nîmes Olympique'),
(7, 'Rachid Alioui', 'France', 'FW', 0, 0, 0, 0, 'Nîmes Olympique'),
(8, 'Pierrick Valdivia', 'France', 'MF', 0, 0, 0, 0, 'Nîmes Olympique'),
(9, 'Clement Depres', 'France', 'FW', 1, 0, 0, 0, 'Nîmes Olympique'),
(10, 'Denis Bouanga', 'Gabon', 'MF', 1, 0, 0, 1, 'Nîmes Olympique'),
(11, 'Teji Savanier', 'France', 'MF', 0, 0, 0, 0, 'Nîmes Olympique'),
(12, 'Christ-Emmanuel Faitout Maouas', 'France', 'DF', 0, 0, 0, 0, 'Nîmes Olympique'),
(14, 'Antonin Bobichon', 'France', 'MF', 0, 0, 0, 0, 'Nîmes Olympique'),
(15, 'Gaetan Paquiez', 'France', 'DF', 0, 0, 0, 0, 'Nîmes Olympique'),
(19, 'Umut Bozok', 'France', 'FW', 0, 0, 0, 1, 'Nîmes Olympique'),
(20, 'Renaud Ripart', 'France', 'MF', 2, 0, 0, 0, 'Nîmes Olympique'),
(22, 'Sada Thioub', 'France', 'FW', 2, 1, 0, 0, 'Nîmes Olympique'),
(23, 'Anthony Briancon', 'France', 'DF', 0, 1, 0, 0, 'Nîmes Olympique'),
(24, 'Sami Ben Amar', 'France', 'FW', 0, 0, 0, 0, 'Nîmes Olympique'),
(26, 'Florian Miguel', 'France', 'DF', 0, 0, 1, 2, 'Nîmes Olympique'),
(30, 'Paul Bernardoni', 'France', 'GK', 0, 0, 0, 0, 'Nîmes Olympique'),
(33, 'Lucas Buades', 'France', 'FW', 0, 0, 0, 0, 'Nîmes Olympique');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `psg`
--

INSERT INTO `psg` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Gianluigi Buffon', 'Italy', 'GK', 0, 0, 0, 0, 'Paris Saint-Germain'),
(2, 'Thiago Silva', 'Brazil', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain'),
(3, 'Presnel Kimpembe', 'France', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain'),
(5, 'Marcos Aoas Correa', 'Brazil', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain'),
(6, 'Marco Verratti', 'Italy', 'MF', 0, 0, 0, 0, 'Paris Saint-Germain'),
(7, 'Kylian Mbappe', 'France', 'FW', 3, 1, 0, 0, 'Paris Saint-Germain'),
(8, 'Leandro Paredes', 'Argentina', 'MF', 0, 0, 0, 0, 'Paris Saint-Germain'),
(9, 'Edison Cavani', 'Uruguay', 'FW', 1, 0, 0, 0, 'Paris Saint-Germain'),
(10, 'Neymar', 'Brazil', 'FW', 3, 1, 0, 0, 'Paris Saint-Germain'),
(11, 'Angel Di Maria', 'Argentina', 'FW', 0, 2, 0, 0, 'Paris Saint-Germain'),
(12, 'Thomas Meunier', 'Belgium', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain'),
(13, 'Dani Alves', 'Brazil', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain'),
(14, 'Juan Bernat', 'Spain', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain'),
(16, 'Alphonse Areola', 'France', 'GK', 0, 0, 0, 0, 'Paris Saint-Germain'),
(17, 'Eric Choupo-Moting', 'Cameroon', 'FW', 0, 0, 0, 0, 'Paris Saint-Germain'),
(18, 'Giovani Lo Celso', 'Argentina', 'MF', 0, 0, 0, 0, 'Paris Saint-Germain'),
(19, 'Lassana Diarra', 'France', 'MF', 0, 0, 0, 0, 'Paris Saint-Germain'),
(20, 'Layvin Kurzawa', 'France', 'DF', 0, 0, 0, 0, 'Paris Saint-Germain'),
(23, 'Julian Draxler', 'Germany', 'FW', 0, 0, 0, 0, 'Paris Saint-Germain'),
(25, 'Adrien Rabiot', 'France', 'MF', 1, 0, 0, 1, 'Paris Saint-Germain'),
(28, 'Antoine Bernede', 'France', 'MF', 0, 0, 0, 0, 'Paris Saint-Germain'),
(30, 'Kevin Trapp', 'Germany', 'GK', 0, 0, 0, 0, 'Paris Saint-Germain');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reims`
--

INSERT INTO `reims` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(21, 'Abdul Rahman', 'Indonesia', 'DF', 0, 0, 0, 0, 'Stade Reims'),
(4, 'Alaixys Romao', 'Togo', 'MF', 0, 0, 0, 0, 'Stade Reims'),
(17, 'Aly Ndom', 'France', 'FW', 0, 0, 0, 0, 'Stade Reims'),
(6, 'Axel Disasi', 'France', 'DF', 0, 0, 0, 0, 'Stade Reims'),
(2, 'Bjorn Engels', 'Belgium', 'DF', 0, 0, 0, 0, 'Stade Reims'),
(16, 'Edouard Mendy', 'Switzerland', 'FW', 0, 0, 0, 0, 'Stade Reims'),
(3, 'Ghislain Konan', 'Ivory Coast', 'DF', 0, 1, 0, 0, 'Stade Reims'),
(13, 'Hassane Kamara', 'France', 'MF', 0, 0, 0, 0, 'Stade Reims'),
(1, 'Johan Carrasso', 'France', 'GK', 0, 0, 0, 0, 'Stade Reims'),
(8, 'Marvin Martin', 'France', 'MF', 0, 0, 0, 1, 'Stade Reims'),
(25, 'Moussa Doumbia', 'Mali', 'MF', 1, 0, 0, 1, 'Stade Reims'),
(30, 'Nicolas Lemaitre', 'France', 'GK', 0, 0, 0, 0, 'Stade Reims'),
(11, 'Oluwaseyi Ojo', 'England', 'FW', 0, 0, 0, 0, 'Stade Reims'),
(12, 'Pablo Chavarria', 'Argentina', 'FW', 1, 0, 0, 0, 'Stade Reims'),
(18, 'Rémi Oudin', 'France', 'FW', 0, 1, 0, 0, 'Stade Reims'),
(15, 'Romain Metanire', 'France', 'DF', 0, 0, 1, 0, 'Stade Reims'),
(10, 'Suk Hyun-Jun', 'Korea', 'FW', 0, 0, 0, 0, 'Stade Reims'),
(19, 'Thomas Fontaine', 'France', 'DF', 0, 1, 0, 0, 'Stade Reims'),
(20, 'Tristan Dingome', 'France', 'MF', 0, 0, 0, 0, 'Stade Reims'),
(7, 'Xavier Chavalerin', 'France', 'MF', 0, 0, 0, 1, 'Stade Reims'),
(5, 'Younis Abdelhamid', 'France', 'DF', 0, 0, 0, 0, 'Stade Reims');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rennais`
--

INSERT INTO `rennais` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Abdoulaye Diallo', 'France', 'GK', 0, 0, 0, 0, 'Stade Rennes'),
(2, 'Mehdi Zeffane', 'France', 'DF', 0, 0, 0, 0, 'Stade Rennes'),
(3, 'Damien Da Silva', 'France', 'DF', 0, 0, 0, 0, 'Stade Rennes'),
(4, 'Edson Andre Sitoe', 'Mozambique', 'DF', 0, 0, 0, 0, 'Stade Rennes'),
(5, 'Doumbia Souleyman', 'France', 'DF', 0, 0, 0, 0, 'Stade Rennes'),
(6, 'Jakob Johansson', 'Sweden', 'MF', 0, 0, 0, 0, 'Stade Rennes'),
(7, 'Ismaila Sarr', 'Senegal', 'MF', 2, 0, 0, 0, 'Stade Rennes'),
(8, 'Clement Grenier', 'France', 'MF', 1, 0, 0, 0, 'Stade Rennes'),
(9, 'Theoson Jordan Siebatcheu', 'France', 'FW', 0, 0, 0, 0, 'Stade Rennes'),
(10, 'Rafik Guitane', 'France', 'MF', 0, 0, 0, 0, 'Stade Rennes'),
(11, 'MBaye Niang', 'Senegal', 'FW', 0, 0, 0, 0, 'Stade Rennes'),
(12, 'James Lea Siliki', 'France', 'MF', 0, 1, 0, 0, 'Stade Rennes'),
(14, 'Benjamin Bourigeaud', 'France', 'MF', 1, 0, 0, 0, 'Stade Rennes'),
(15, 'Ramy Bensebaini', 'Algeria', 'DF', 0, 0, 0, 0, 'Stade Rennes'),
(17, 'Christ-Emmanuel Faitout Maouas', 'France', 'DF', 0, 0, 0, 0, 'Stade Rennes'),
(18, 'Hatem Ben Arfa', 'France', 'FW', 0, 0, 0, 0, 'Stade Rennes'),
(21, 'Benjamin André', 'France', 'FW', 0, 1, 0, 1, 'Stade Rennes'),
(30, 'Edvinas Gertmonas', 'Lithuania', 'GK', 0, 0, 0, 0, 'Stade Rennes'),
(33, 'Georginio Rutter', 'France', 'FW', 0, 0, 0, 0, 'Stade Rennes'),
(34, 'Timothe Nkada', 'France', 'FW', 0, 0, 0, 0, 'Stade Rennes'),
(40, 'Tomas Koubek', 'Czech', 'GK', 0, 0, 0, 0, 'Stade Rennes');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saintetienne`
--

INSERT INTO `saintetienne` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(3, 'Pierre Yves Polomat', 'France', 'DF', 0, 0, 0, 0, 'AS Saint-Étienne'),
(4, 'William Saliba', 'France', 'DF', 0, 0, 0, 0, 'AS Saint-Étienne'),
(5, 'Timothee Kolodziejczak', 'France', 'DF', 0, 1, 0, 0, 'AS Saint-Étienne'),
(6, 'Yann M\'Vila', 'France', 'MF', 0, 0, 0, 1, 'AS Saint-Étienne'),
(7, 'Remy Cabella', 'France', 'MF', 0, 0, 0, 0, 'AS Saint-Étienne'),
(8, 'Youssef Ait Bennasser', 'France', 'MF', 0, 0, 0, 0, 'AS Saint-Étienne'),
(9, 'Lois Diony', 'France', 'FW', 1, 1, 0, 1, 'AS Saint-Étienne'),
(10, 'Wahbi Khazri', 'France', 'MF', 1, 0, 0, 1, 'AS Saint-Étienne'),
(11, 'Gabriel Silva', 'Brazil', 'DF', 0, 0, 0, 0, 'AS Saint-Étienne'),
(13, 'Makhtar Gueye', 'Senegal', 'FW', 1, 0, 0, 0, 'AS Saint-Étienne'),
(16, 'Stephane Ruffier', 'France', 'GK', 0, 0, 0, 1, 'AS Saint-Étienne'),
(17, 'Ole Kristian Selnaes', 'Norway', 'MF', 0, 0, 0, 1, 'AS Saint-Étienne'),
(18, 'Arnaud Nordin', 'France', 'MF', 0, 0, 0, 0, 'AS Saint-Étienne'),
(19, 'Yannis Salibur', 'France', 'MF', 0, 0, 0, 0, 'AS Saint-Étienne'),
(22, 'Kevin Monnet-Paquet', 'France', 'FW', 0, 0, 0, 0, 'AS Saint-Étienne'),
(24, 'Loic Perrin', 'France', 'DF', 0, 0, 0, 0, 'AS Saint-Étienne'),
(26, 'Mathieu Debuchy', 'France', 'DF', 0, 1, 0, 0, 'AS Saint-Étienne'),
(27, 'Robert Beric', 'Slovenia', 'FW', 0, 0, 0, 0, 'AS Saint-Étienne'),
(28, 'Neven Subotic', 'Serbia', 'DF', 0, 0, 1, 0, 'AS Saint-Étienne'),
(30, 'Jessy Moulin', 'France', 'GK', 0, 0, 0, 0, 'AS Saint-Étienne'),
(32, 'Charles Nathan Abi', 'France', 'FW', 0, 0, 0, 0, 'AS Saint-Étienne');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strasbourg`
--

INSERT INTO `strasbourg` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Matz Sels', 'Belgium', 'GK', 0, 0, 0, 0, 'RC Strasbourg'),
(2, 'Mohamed Simakan', 'France', 'DF', 0, 0, 0, 0, 'RC Strasbourg'),
(4, 'Pablo Martinez', 'France', 'DF', 0, 0, 0, 0, 'RC Strasbourg'),
(5, 'Lamine Kone', 'France', 'DF', 0, 0, 0, 0, 'RC Strasbourg'),
(6, 'Jeremy Grimm', 'France', 'MF', 0, 0, 0, 0, 'RC Strasbourg'),
(7, 'Moataz Zemzemi', 'Tunisia', 'MF', 0, 0, 0, 0, 'RC Strasbourg'),
(8, 'Jonas Martin', 'France', 'MF', 0, 1, 0, 0, 'RC Strasbourg'),
(9, 'Idriss Saadi', 'France', 'FW', 0, 0, 0, 0, 'RC Strasbourg'),
(10, 'Benjamin Corgnet', 'France', 'MF', 0, 0, 0, 0, 'RC Strasbourg'),
(11, 'Dmitri Lienard', 'France', 'MF', 0, 1, 0, 0, 'RC Strasbourg'),
(12, 'Lebo Mothiba', 'South Africa', 'FW', 0, 0, 0, 0, 'RC Strasbourg'),
(13, 'Stefan Mitrovic', 'Serbia', 'DF', 0, 0, 0, 1, 'RC Strasbourg'),
(14, 'Sanjin Prcic', 'Bosnia-Herzegovina', 'MF', 0, 0, 0, 0, 'RC Strasbourg'),
(16, 'Eiji Kawashima', 'Japan', 'GK', 0, 0, 0, 0, 'RC Strasbourg'),
(17, 'Gonçalves Anthony', 'France', 'MF', 1, 0, 0, 0, 'RC Strasbourg'),
(22, 'Youssouf Fofana', 'Mali', 'FW', 0, 0, 0, 0, 'RC Strasbourg'),
(23, 'Lionel Jules Carole', 'France', 'DF', 0, 0, 0, 0, 'RC Strasbourg'),
(25, 'Ludovic Ajorque', 'France', 'FW', 0, 0, 0, 0, 'RC Strasbourg'),
(27, 'Kenny Lala', 'France', 'DF', 0, 0, 0, 0, 'RC Strasbourg'),
(29, 'Nuno da Costa', 'Cape Verde', 'FW', 1, 0, 0, 0, 'RC Strasbourg'),
(30, 'Bingorou Kamara', 'France', 'GK', 0, 0, 0, 0, 'RC Strasbourg');

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
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toulouse`
--

INSERT INTO `toulouse` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Mauro Goicoechea', 'Uruguay', 'GK', 0, 0, 0, 0, 'Toulouse FC'),
(2, 'Kelvin Amian Adou', 'France', 'DF', 0, 0, 0, 1, 'Toulouse FC'),
(3, 'Gen Shoji', 'Japan', 'DF', 0, 0, 0, 0, 'Toulouse FC'),
(4, 'Yannick Cahuzac', 'France', 'MF', 0, 0, 0, 0, 'Toulouse FC'),
(5, 'Steven Moreira', 'Cape Verde', 'DF', 0, 0, 0, 0, 'Toulouse FC'),
(6, 'Christopher Jullien', 'France', 'DF', 0, 0, 0, 1, 'Toulouse FC'),
(7, 'Max Gradel', 'Ivory Coast', 'FW', 1, 1, 0, 0, 'Toulouse FC'),
(8, 'Corentin Jean', 'France', 'FW', 0, 0, 0, 0, 'Toulouse FC'),
(9, 'Yaya Sanogo', 'France', 'FW', 0, 0, 0, 0, 'Toulouse FC'),
(10, 'Aaron Leya Iseka', 'Congo DR', 'FW', 1, 0, 0, 0, 'Toulouse FC'),
(12, 'Issiaga Sylla', 'Guinea', 'DF', 0, 0, 0, 0, 'Toulouse FC'),
(13, 'Clement Michelin', 'France', 'DF', 0, 0, 0, 0, 'Toulouse FC'),
(14, 'Mathieu Dossevi', 'France', 'MF', 1, 0, 0, 0, 'Toulouse FC'),
(15, 'John Bostock', 'England', 'MF', 0, 0, 0, 0, 'Toulouse FC'),
(16, 'Marc Vidal', 'France', 'GK', 0, 0, 0, 0, 'Toulouse FC'),
(17, 'Ibrahim Sangare', 'Ivory Coast', 'MF', 0, 1, 0, 1, 'Toulouse FC'),
(21, 'Jimmy Durmaz', 'Sweden', 'MF', 0, 0, 0, 1, 'Toulouse FC'),
(22, 'Manuel Garcia Alonso', 'Spain', 'MF', 0, 0, 0, 0, 'Toulouse FC'),
(24, 'Firmin Ndombe Mubele', 'Congo DR', 'FW', 0, 0, 0, 0, 'Toulouse FC'),
(30, 'Baptiste Reynet', 'France', 'GK', 0, 0, 0, 0, 'Toulouse FC'),
(35, 'Driss Khalid', 'France', 'FW', 0, 0, 0, 0, 'Toulouse FC');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
