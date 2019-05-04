-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2019 at 12:01 PM
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
-- Database: `cauthu_anh`
--

-- --------------------------------------------------------

--
-- Table structure for table `arsenal`
--

CREATE TABLE `arsenal` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arsenal`
--

INSERT INTO `arsenal` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Petr Cech', 'Czech', 'GK', 0, 0, 0, 0, 'Arsenal FC'),
(2, 'Hector Bellerin', 'Spain', 'DF', 0, 1, 0, 0, 'Arsenal FC'),
(4, 'Mohamed Elneny', 'Egypt', 'MF', 0, 0, 0, 0, 'Arsenal FC'),
(5, 'Sokratis', 'Greece', 'DF', 0, 0, 0, 2, 'Arsenal FC'),
(6, 'Laurent Koscielly', 'France', 'DF', 0, 0, 0, 0, 'Arsenal FC'),
(7, 'Henrikh Mkhitaryan', 'Armenia', 'MF', 1, 1, 0, 0, 'Arsenal FC'),
(8, 'Aaron Ramsey', 'Wales', 'MF', 0, 0, 0, 0, 'Arsenal FC'),
(9, 'Alexsandre Lacazette', 'France', 'FW', 0, 0, 0, 0, 'Arsenal FC'),
(10, 'Mesut Ozil', 'Germany', 'MF', 0, 0, 0, 0, 'Arsenal FC'),
(11, 'Lucas Torreira', 'Uruguay', 'MF', 0, 0, 0, 0, 'Arsenal FC'),
(14, 'Aubameyang', 'Gabon', 'FW', 0, 0, 0, 0, 'Arsenal FC'),
(17, 'Alex Iwobi', 'Nigeria', 'FW', 1, 1, 0, 0, 'Arsenal FC'),
(18, 'Nacho Monreal', 'Spain', 'DF', 1, 0, 0, 0, 'Arsenal FC'),
(19, 'Bern Leno', 'Germany', 'GK', 0, 0, 0, 0, 'Arsenal FC'),
(20, 'Skodran Mustafi', 'Germany', 'DF', 0, 0, 0, 1, 'Arsenal FC'),
(22, 'Dennis Suarez', 'Spain', 'MF', 0, 0, 0, 0, 'Arsenal FC'),
(23, 'Danny Welbeck', 'England', 'FW', 1, 0, 0, 0, 'Arsenal FC'),
(29, 'Matteo Guendouzi', 'France', 'MF', 0, 0, 0, 0, 'Arsenal FC'),
(31, 'Sead Kolasinac', 'Bosnia', 'DF', 0, 0, 0, 0, 'Arsenal FC'),
(34, 'Granit Xhaka', 'Switzerland', 'MF', 0, 0, 0, 2, 'Arsenal FC');

-- --------------------------------------------------------

--
-- Table structure for table `bournemouth`
--

CREATE TABLE `bournemouth` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bournemouth`
--

INSERT INTO `bournemouth` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Artur Boruc', 'Poland', 'GK', 0, 0, 0, 0, 'AFC Bournemouth'),
(2, 'Simon Francis', 'England', 'DF', 0, 1, 0, 0, 'AFC Bournemouth'),
(3, 'Steve Cook', 'England', 'DF', 1, 1, 0, 0, 'AFC Bournemouth'),
(4, 'Dan Gosling', 'England ', 'MF', 0, 0, 0, 1, 'AFC Bournemouth'),
(5, 'Nathan Ake', 'Holland', 'DF', 1, 0, 0, 0, 'AFC Bournemouth'),
(6, 'Adrew Surman', 'England', 'MF', 0, 0, 0, 0, 'AFC Bournemouth'),
(8, 'Jefferson Lerma', 'Colombia', 'MF', 0, 0, 0, 0, 'AFC Bournemouth'),
(9, 'Lys Mousset', 'France', 'FW', 0, 0, 0, 0, 'AFC Bournemouth'),
(10, 'Jordan Ibe', 'England', 'MF', 0, 0, 0, 0, 'AFC Bournemouth'),
(11, 'Charlie Daniels', 'England', 'DF', 0, 0, 0, 1, 'AFC Bournemouth'),
(13, 'Calum Wilson', 'England', 'FW', 2, 1, 0, 0, 'AFC Bournemouth'),
(15, 'Adam Smith', 'England', 'DF', 0, 0, 1, 0, 'AFC Bournemouth'),
(16, 'Lewis Cook', 'England', 'MF', 0, 0, 0, 0, 'AFC Bournemouth'),
(17, 'Joshua King', 'Norway', 'FW', 1, 0, 0, 1, 'AFC Bournemouth'),
(19, 'Junior Stanislas', 'England', 'MF', 0, 0, 0, 0, 'AFC Bournemouth'),
(20, 'David Brooks', 'Wales', 'MF', 0, 0, 0, 0, 'AFC Bournemouth'),
(21, 'Diego Rico', 'Spain', 'DF', 0, 0, 0, 0, 'AFC Bournemouth'),
(23, 'Nathaniel Clyne', 'England', 'DF', 0, 0, 0, 0, 'AFC Bournemouth'),
(24, 'Ryan Fraser', 'England', 'MF', 1, 1, 0, 0, 'AFC Bournemouth'),
(27, 'Asmir Begovic', 'Bosnia', 'GK', 0, 0, 0, 0, 'AFC Bournemouth');

-- --------------------------------------------------------

--
-- Table structure for table `brighton`
--

CREATE TABLE `brighton` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brighton`
--

INSERT INTO `brighton` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Matthew Ryan', 'Australia', 'GK', 0, 0, 0, 0, 'Brighton & Hove Albion'),
(2, 'Bruno', 'Spain', 'DF', 0, 0, 0, 0, 'Brighton & Hove Albion'),
(3, 'Geatan Bong', 'Ghana', 'DF', 0, 0, 0, 0, 'Brighton & Hove Albion'),
(4, 'Shane Duffy', 'Ireland', 'DF', 1, 0, 0, 0, 'Brighton & Hove Albion'),
(5, 'Lewis Dunk', 'England', 'DF', 0, 0, 0, 0, 'Brighton & Hove Albion'),
(6, 'Dale Stephen', 'England', 'MF', 0, 0, 0, 1, 'Brighton & Hove Albion'),
(7, 'Beram Kayal', 'Israel', 'MF', 0, 0, 0, 0, 'Brighton & Hove Albion'),
(8, 'Yves Bissouma', 'Mali', 'MF', 0, 0, 0, 0, 'Brighton & Hove Albion'),
(9, 'Jurgen Locadia', 'Netherlands', 'FW', 0, 0, 0, 0, 'Brighton & Hove Albion'),
(10, 'Florin Andone', 'Romania', 'FW', 0, 0, 0, 0, 'Brighton & Hove Albion'),
(11, 'Anthony Knockaert', 'France', 'MF', 0, 1, 0, 0, 'Brighton & Hove Albion'),
(13, 'Pascal Grob', 'Germany', 'MF', 1, 0, 0, 0, 'Brighton & Hove Albion'),
(14, 'Leon Balogun', 'Nigeria', 'DF', 0, 0, 0, 1, 'Brighton & Hove Albion'),
(16, 'Alireza Jahanbakhsh', 'Iran', 'MF', 0, 0, 0, 0, 'Brighton & Hove Albion'),
(17, 'Glen Murray', 'England', 'FW', 1, 0, 0, 1, 'Brighton & Hove Albion'),
(20, 'Solomon March', 'England', 'MF', 0, 1, 0, 0, 'Brighton & Hove Albion'),
(22, 'Martin Montoya', 'Spain', 'DF', 0, 0, 0, 0, 'Brighton & Hove Albion'),
(23, 'Jason Steele', 'England', 'GK', 0, 0, 0, 0, 'Brighton & Hove Albion'),
(30, 'Bernado', 'Brazil', 'DF', 0, 0, 0, 1, 'Brighton & Hove Albion'),
(33, 'Dan Burn', 'England', 'DF', 0, 0, 0, 0, 'Brighton & Hove Albion');

-- --------------------------------------------------------

--
-- Table structure for table `burnley`
--

CREATE TABLE `burnley` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `burnley`
--

INSERT INTO `burnley` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Tom Heaton', 'England', 'GK', 0, 0, 0, 0, 'Burnley FC'),
(2, 'Mathew Lowton', 'England', 'DF', 0, 0, 0, 0, 'Burnley FC'),
(3, 'Charlie Taylor', 'England', 'DF', 0, 0, 0, 0, 'Burnley FC'),
(4, 'Jack Cork', 'England', 'MF', 0, 0, 0, 1, 'Burnley FC'),
(5, 'James Tarkowski', 'England', 'DF', 1, 0, 0, 1, 'Burnley FC'),
(6, 'Ben Mee', 'England', 'DF', 0, 0, 0, 0, 'Burnley FC'),
(7, 'Jóhann Guðmundsson', 'Iceland', 'MF', 0, 1, 0, 0, 'Burnley FC'),
(10, 'Ashley Barnes', 'England', 'FW', 0, 0, 0, 0, 'Burnley FC'),
(11, 'Chris Wood', 'Australia', 'FW', 0, 0, 0, 0, 'Burnley FC'),
(12, 'Robbie Brady', 'Ireland', 'MF', 0, 0, 0, 0, 'Burnley FC'),
(13, 'Jeff Hendrick', 'Ireland', 'MF', 0, 0, 0, 0, 'Burnley FC'),
(14, 'Ben Gibson', 'England', 'MF', 0, 0, 0, 0, 'Burnley FC'),
(15, 'Peter Crouch', 'England', 'FW', 0, 0, 0, 0, 'Burnley FC'),
(16, 'Steven Defour', 'Belgium', 'MF', 0, 0, 0, 0, 'Burnley FC'),
(18, 'Ashley Westwood', 'England', 'MF', 0, 0, 0, 0, 'Burnley FC'),
(20, 'Joe Hart', 'England', 'GK', 0, 0, 0, 0, 'Burnley FC'),
(23, 'Steven Ward', 'Iceland', 'DF', 0, 0, 0, 1, 'Burnley FC'),
(25, 'Aaron Lennon', 'England', 'MF', 0, 0, 0, 0, 'Burnley FC'),
(26, 'Phil Bardsley', 'Scotland', 'DF', 0, 0, 0, 0, 'Burnley FC'),
(29, 'Nick Pope', 'England', 'GK', 0, 0, 0, 0, 'Burnley FC');

-- --------------------------------------------------------

--
-- Table structure for table `cardiff`
--

CREATE TABLE `cardiff` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardiff`
--

INSERT INTO `cardiff` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Neil Etheridge', 'Philipines', 'GK', 0, 0, 0, 0, 'Cardiff City'),
(2, 'Lee Peltier', 'England', 'DF', 0, 0, 0, 1, 'Cardiff City'),
(3, 'Joe Bennet', 'England', 'DF', 0, 0, 0, 0, 'Cardiff City'),
(4, 'Sean Morrison', 'England', 'DF', 0, 0, 0, 1, 'Cardiff City'),
(5, 'Bruno Manga', 'Gabon', 'DF', 0, 0, 0, 0, 'Cardiff City'),
(6, 'Jazz Richard', 'Wales', 'DF', 0, 0, 0, 0, 'Cardiff City'),
(7, 'Harry Arter', 'Ireland', 'MF', 0, 0, 0, 2, 'Cardiff City'),
(8, 'Joe Rails', 'England', 'MF', 0, 0, 0, 0, 'Cardiff City'),
(9, 'Danny Ward', 'England', 'FW', 0, 0, 0, 0, 'Cardiff City'),
(10, 'Kennet Zohore', 'Denmark', 'FW', 0, 0, 0, 0, 'Cardiff City'),
(11, 'Josh Murphy', 'England', 'MF', 0, 0, 0, 0, 'Cardiff City'),
(12, 'Alex Smithies', 'England', 'GK', 0, 0, 0, 0, 'Cardiff City'),
(13, 'Callum Paterson', 'Scotland', 'MF', 0, 0, 0, 0, 'Cardiff City'),
(14, 'Bobby Reid', 'England', 'FW', 0, 0, 0, 0, 'Cardiff City'),
(15, 'Leandro Bacuna', 'Curacao', 'MF', 0, 0, 0, 0, 'Cardiff City'),
(17, 'Aron Gunnarson', 'Iceland', 'MF', 0, 0, 0, 0, 'Cardiff City'),
(18, 'Greg Cunningham', 'Ireland', 'DF', 0, 0, 0, 0, 'Cardiff City'),
(19, 'Mendez-Laing', 'England', 'MF', 0, 0, 0, 0, 'Cardiff City'),
(21, 'Víctor Camarasa ', 'Spain', 'MF', 0, 0, 0, 1, 'Cardiff City'),
(33, 'Junior Hoilet', 'Canada', 'MF', 0, 0, 0, 0, 'Cardiff City');

-- --------------------------------------------------------

--
-- Table structure for table `chelsea`
--

CREATE TABLE `chelsea` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chelsea`
--

INSERT INTO `chelsea` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Kepa Arrizabalaga', 'Spain', 'GK', 0, 0, 0, 0, 'Chelsea FC'),
(2, 'Antonio Rudiger', 'Germany', 'DF', 0, 0, 0, 0, 'Chelsea FC'),
(3, 'Marcos Alonso', 'Spain', 'DF', 1, 1, 0, 0, 'Chelsea FC'),
(5, 'Jorginho', 'Italia', 'MF', 1, 0, 0, 0, 'Chelsea FC'),
(7, 'N\'golo Kante', 'France', 'MF', 1, 0, 0, 0, 'Chelsea FC'),
(8, 'Ross Barkley', 'England', 'MF', 0, 0, 0, 0, 'Chelsea FC'),
(9, 'Gonzalo Higuain', 'Argentina', 'FW', 0, 0, 0, 0, 'Chelsea FC'),
(10, 'Eden Hazard', 'Belgium', 'MF', 1, 2, 0, 0, 'Chelsea FC'),
(11, 'Pedro', 'Spain', 'FW', 2, 0, 0, 0, 'Chelsea FC'),
(12, 'Ruben Loftus-cheek', 'England', 'MF', 0, 0, 0, 0, 'Chelsea FC'),
(13, 'Willy Cabalero', 'Argentina', 'GK', 0, 0, 0, 0, 'Chelsea FC'),
(15, 'Victor Moses', 'Nigeria', 'MF', 0, 0, 0, 0, 'Chelsea FC'),
(17, 'Mateo Kovacic', 'Croatia', 'MF', 0, 0, 0, 1, 'Chelsea FC'),
(18, 'Oliver Giroud', 'France', 'FW', 0, 0, 0, 0, 'Chelsea FC'),
(20, 'Callum Hudson-Odoi', 'England', 'MF', 0, 0, 0, 0, 'Chelsea FC'),
(22, 'Willian', 'Brazil', 'MF', 0, 1, 0, 0, 'Chelsea FC'),
(24, 'Gary Cahill', 'England', 'DF', 0, 0, 0, 0, 'Chelsea FC'),
(27, 'Andreas Christensen', 'Denmark', 'DF', 0, 0, 0, 0, 'Chelsea FC'),
(28, 'Cesar Azpilicueta', 'Spain', 'DF', 0, 1, 0, 0, 'Chelsea FC'),
(30, 'David Luiz', 'Brazil', 'DF', 0, 0, 0, 1, 'Chelsea FC');

-- --------------------------------------------------------

--
-- Table structure for table `everton`
--

CREATE TABLE `everton` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `everton`
--

INSERT INTO `everton` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Jordan Pickford', 'England', 'GK', 0, 0, 0, 0, 'Everton FC'),
(3, 'Leighton Baines', 'England', 'DF', 0, 0, 0, 0, 'Everton FC'),
(4, 'Michael Keane', 'England', 'DF', 0, 1, 0, 0, 'Everton FC'),
(5, 'Kurt Zouma', 'France', 'DF', 0, 0, 0, 0, 'Everton FC'),
(6, 'Phil Jagielka', 'England', 'DF', 0, 0, 1, 0, 'Everton FC'),
(8, 'Andre Gomes', 'Portugal', 'MF', 0, 0, 0, 0, 'Everton FC'),
(10, 'Gylfi Sigurdsson', 'Iceland', 'MF', 0, 0, 0, 1, 'Everton FC'),
(11, 'Theo Walcott', 'England', 'FW', 2, 1, 0, 0, 'Everton FC'),
(12, 'Lucas Digne', 'France', 'DF', 0, 0, 0, 0, 'Everton FC'),
(13, 'Yerry Mina', 'Colombia', 'DF', 0, 0, 0, 0, 'Everton FC'),
(14, 'Cenk Tosun', 'Turkey', 'FW', 0, 2, 0, 1, 'Everton FC'),
(16, 'James McCarthy', 'Iceland', 'MF', 0, 0, 0, 0, 'Everton FC'),
(17, 'Idrissa Gueye', 'Ghana', 'MF', 0, 0, 0, 1, 'Everton FC'),
(18, 'Morgan Schneiderlin', 'France', 'MF', 0, 1, 0, 0, 'Everton FC'),
(20, 'Bernard', 'Brazil', 'MF', 0, 0, 0, 0, 'Everton FC'),
(22, 'Maarten Stekelenburg', 'Netherlands', 'GK', 0, 0, 0, 0, 'Everton FC'),
(23, 'Seamus Coleman', 'Ireland', 'DF', 0, 0, 0, 0, 'Everton FC'),
(26, 'Tom Davies', 'England', 'MF', 0, 0, 0, 0, 'Everton FC'),
(30, 'Richarlison', 'Brazil', 'FW', 3, 0, 1, 1, 'Everton FC'),
(43, 'Jonjoe Kenny', 'England', 'DF', 0, 0, 0, 0, 'Everton FC');

-- --------------------------------------------------------

--
-- Table structure for table `fulham`
--

CREATE TABLE `fulham` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fulham`
--

INSERT INTO `fulham` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Marcus Bettinelli', 'England', 'GK', 0, 0, 0, 1, 'Fulham FC'),
(3, 'Ryan Sessegnon', 'England', 'MF', 0, 1, 0, 0, 'Fulham FC'),
(4, 'Denis Odoi', 'Belgium', 'DF', 0, 0, 0, 0, 'Fulham FC'),
(5, 'Callum Chambers', 'England', 'DF', 0, 0, 0, 0, 'Fulham FC'),
(6, 'Kevin McDonald', 'Scotland', 'MF', 0, 0, 0, 1, 'Fulham FC'),
(9, 'Alexsandar Mitrovic', 'Serbia', 'FW', 3, 0, 0, 0, 'Fulham FC'),
(10, 'Tom Cairney', 'Scotland', 'MF', 0, 1, 0, 0, 'Fulham FC'),
(11, 'Floyd Ayite', 'Togo', 'FW', 0, 0, 0, 0, 'Fulham FC'),
(12, 'Ryan Babel', 'Netherlands', 'MF', 0, 0, 0, 0, 'Fulham FC'),
(13, 'Tim Ream', 'USA', 'DF', 0, 0, 0, 0, 'Fulham FC'),
(14, 'André Schürrle', 'Germany', 'FW', 1, 0, 0, 1, 'Fulham FC'),
(19, 'Luciano Vietto', 'Argentina', 'FW', 0, 2, 0, 0, 'Fulham FC'),
(20, 'Maxime Marchand', 'France', 'DF', 0, 0, 0, 0, 'Fulham FC'),
(21, 'Fosu-Mensah ', 'Netherlands', 'DF', 0, 0, 0, 0, 'Fulham FC'),
(22, 'Cyrus Christle', 'Ireland', 'DF', 0, 0, 0, 0, 'Fulham FC'),
(23, 'Joe Bryan', 'England', 'DF', 0, 0, 0, 0, 'Fulham FC'),
(24, 'Jean Seri', 'Ireland', 'MF', 1, 0, 0, 0, 'Fulham FC'),
(25, 'Sergio Rico', 'Spain', 'GK', 0, 0, 0, 0, 'Fulham FC'),
(26, 'Alfie Mawson', 'England', 'DF', 0, 0, 0, 0, 'Fulham FC'),
(30, 'Lazar Markovic', 'Serbia', 'MF', 0, 0, 0, 0, 'Fulham FC');

-- --------------------------------------------------------

--
-- Table structure for table `huddersfields`
--

CREATE TABLE `huddersfields` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `huddersfields`
--

INSERT INTO `huddersfields` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Jonas Lossl', 'Denmark', 'GK', 0, 0, 0, 0, 'Huddersfield Town'),
(2, 'Tommy Smith', 'England', 'DF', 0, 0, 0, 0, 'Huddersfield Town'),
(3, 'Scott Malone', 'England', 'DF', 0, 0, 0, 0, 'Huddersfield Town'),
(5, 'Terence Kongolo', 'Netherlands', 'DF', 0, 0, 0, 1, 'Huddersfield Town'),
(6, 'Jonathan Hogg', 'England', 'MF', 0, 0, 1, 0, 'Huddersfield Town'),
(7, 'Sean Scannell', 'Ireland', 'MF', 0, 0, 0, 0, 'Huddersfield Town'),
(8, 'Phillip Billing', 'Denmark', 'MF', 0, 0, 0, 1, 'Huddersfield Town'),
(9, 'Elias Kachunga', 'Congo', 'FW', 0, 0, 0, 0, 'Huddersfield Town'),
(10, 'Aaron Mooy', 'Australia', 'MF', 0, 0, 0, 0, 'Huddersfield Town'),
(13, 'Joel Coleman', 'England', 'GK', 0, 0, 0, 0, 'Huddersfield Town'),
(18, 'Joe Lolley', 'England', 'MF', 0, 0, 0, 0, 'Huddersfield Town'),
(19, 'Danny Willams', 'USA', 'MF', 0, 0, 0, 0, 'Huddersfield Town'),
(20, 'Laurent Depoitre', 'Belgium', 'FW', 0, 0, 0, 0, 'Huddersfield Town'),
(22, 'Tom Ince', 'England', 'MF', 0, 0, 0, 0, 'Huddersfield Town'),
(23, 'Collin Quaner', 'Germany', 'FW', 0, 0, 0, 0, 'Huddersfield Town'),
(24, 'Steve Mounier', 'Benin', 'FW', 0, 1, 0, 0, 'Huddersfield Town'),
(26, 'Schindler', 'Germany', 'MF', 0, 0, 0, 2, 'Huddersfield Town'),
(27, 'Jon Stankovic', 'Slovenia', 'DF', 1, 0, 0, 0, 'Huddersfield Town'),
(31, 'Ryan Schofield', 'England', 'GK', 0, 0, 0, 0, 'Huddersfield Town'),
(44, 'Michael Hafele', 'Germany', 'DF', 0, 0, 0, 0, 'Huddersfield Town');

-- --------------------------------------------------------

--
-- Table structure for table `leicester`
--

CREATE TABLE `leicester` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leicester`
--

INSERT INTO `leicester` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Kasper Schmeichel ', 'Denamark', 'GK', 0, 0, 0, 0, 'Leicester City'),
(3, 'Ben Chilwell', 'England', 'DF', 0, 0, 0, 0, 'Leicester City'),
(5, 'Wes Morgan', 'Jamaica', 'DF', 0, 0, 0, 0, 'Leicester City'),
(6, 'Roberth Huth', 'Germany', 'DF', 0, 0, 0, 0, 'Leicester City'),
(7, 'Ahmed Musa', 'Nigeria', 'MF', 0, 0, 0, 0, 'Leicester City'),
(9, 'Jamie Vardy', 'England', 'FW', 1, 0, 1, 0, 'Leicester City'),
(10, 'James Maddison', 'Wales', 'MF', 1, 0, 0, 0, 'Leicester City'),
(11, 'Marc Albrighton', 'England', 'MF', 0, 1, 0, 0, 'Leicester City'),
(12, 'Ben Hamer', 'England', 'GK', 0, 0, 0, 0, 'Leicester City'),
(13, 'Daniel Amartey', 'Ghana', 'MF', 0, 0, 0, 0, 'Leicester City'),
(14, 'Ricardo Pereira', 'England', 'MF', 0, 1, 0, 0, 'Leicester City'),
(15, 'Harry Maguire', 'England', 'DF', 1, 0, 0, 2, 'Leicester City'),
(16, 'Andy King', 'England', 'MF', 0, 0, 0, 0, 'Leicester City'),
(17, 'Danny Simpson', 'England', 'DF', 0, 0, 0, 0, 'Leicester City'),
(20, 'Okazaki Shinji', 'Japan', 'FW', 0, 0, 0, 0, 'Leicester City'),
(21, 'Ron-Robert Zieler', 'Germany', 'GK', 0, 0, 0, 0, 'Leicester City'),
(22, 'Demarai Gray', 'England', 'FW', 1, 0, 0, 0, 'Leicester City'),
(23, 'Youri Tielemans', 'Belgium', 'MF', 0, 0, 0, 0, 'Leicester City'),
(25, 'Wilfred Ndidi', 'Nigeria', 'MF', 0, 0, 0, 0, 'Leicester City'),
(28, 'Christian Fuchs', 'Denmark', 'DF', 0, 0, 0, 0, 'Leicester City');

-- --------------------------------------------------------

--
-- Table structure for table `liverpool`
--

CREATE TABLE `liverpool` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `liverpool`
--

INSERT INTO `liverpool` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(2, 'Fabinho', 'Brazil', 'MF', 0, 0, 0, 0, 'Liverpool FC'),
(4, 'Virgil Van Dijk', 'Netherlands', 'DF', 0, 0, 0, 0, 'Liverpool FC'),
(5, 'Wijnaldum', 'Netherlands', 'MF', 0, 0, 0, 0, 'Liverpool FC'),
(6, 'Dejan Lovren', 'Croatia', 'DF', 0, 0, 0, 0, 'Liverpool FC'),
(7, 'James Milner', 'England', 'MF', 1, 1, 0, 0, 'Liverpool FC'),
(8, 'Naby Keita', 'Guinee', 'MF', 0, 0, 0, 0, 'Liverpool FC'),
(9, 'Roberto Firmino', 'Brazil', 'FW', 0, 2, 0, 0, 'Liverpool FC'),
(10, 'Sadio Mane', 'Senegal', 'FW', 2, 0, 0, 0, 'Liverpool FC'),
(11, 'Mohamed Salah', 'Egypt', 'FW', 2, 1, 0, 0, 'Liverpool FC'),
(13, 'Alison Becker', 'Brazil', 'GK', 0, 0, 0, 0, 'Liverpool FC'),
(14, 'Jordan Henderson', 'England', 'MF', 0, 0, 0, 0, 'Liverpool FC'),
(15, 'Daniel Sturridge', 'England', 'FW', 1, 0, 0, 0, 'Liverpool FC'),
(20, 'Adam Lallana', 'England', 'MF', 0, 0, 0, 0, 'Liverpool FC'),
(21, 'Chamberlain', 'England', 'MF', 0, 0, 0, 0, 'Liverpool FC'),
(22, 'Simon Mignolet', 'Belgium', 'GK', 0, 0, 0, 0, 'Liverpool FC'),
(23, 'Xherdan Shaqiri', 'Switzerland', 'MF', 0, 0, 0, 0, 'Liverpool FC'),
(26, 'Adrew Robertson', 'Scotland', 'DF', 0, 1, 0, 0, 'Liverpool FC'),
(27, 'Divock Origi', 'Belgium', 'FW', 0, 0, 0, 0, 'Liverpool FC'),
(32, 'Joel Matip', 'Ghana', 'DF', 0, 0, 0, 0, 'Liverpool FC'),
(66, 'Alexander-Arnolds', 'England', 'DF', 0, 0, 0, 3, 'Liverpool FC');

-- --------------------------------------------------------

--
-- Table structure for table `mancity`
--

CREATE TABLE `mancity` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(20) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mancity`
--

INSERT INTO `mancity` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Claudio Bravo', 'Chile', 'GK', 0, 0, 0, 0, 'Manchester City'),
(2, 'Kyle Walker', 'Anh', 'DF', 0, 0, 0, 0, 'Manchester City'),
(3, 'Danilo Silva', 'Brazil', 'DF', 0, 0, 0, 0, 'Manchester City'),
(4, 'Vincent Kompany', 'Belgium', 'DF', 0, 0, 0, 1, 'Manchester City'),
(5, 'John Stones', 'Anh', 'DF', 0, 0, 0, 0, 'Manchester City'),
(7, 'Raheem Sterling', 'Anh', 'MF', 1, 0, 0, 1, 'Manchester City'),
(8, 'Ikay Gundogan', 'Germany', 'MF', 0, 1, 0, 0, 'Manchester City'),
(10, 'Sergio Aguero', 'Argentina', 'FW', 3, 0, 0, 0, 'Manchester City'),
(14, 'Aymeric Laporte', 'Spain', 'DF', 1, 0, 0, 0, 'Manchester City'),
(17, 'Kevin de Bruyne', 'Belgium', 'MF', 0, 0, 0, 1, 'Manchester City'),
(18, 'Fabian Delph', 'Anh', 'MF', 0, 0, 0, 0, 'Manchester City'),
(19, 'Leroy Sane', 'Germany', 'MF', 0, 0, 0, 0, 'Manchester City'),
(20, 'Bernado Silva', 'Portugal', 'MF', 1, 0, 0, 0, 'Manchester City'),
(21, 'David Silva', 'Spain', 'MF', 1, 0, 0, 1, 'Manchester City'),
(22, 'Benjamin Mendy', 'Pháp', 'DF', 0, 3, 0, 0, 'Manchester City'),
(25, 'Fernandinho', 'Brazil', 'MF', 0, 0, 0, 0, 'Manchester City'),
(26, 'Riyah Mahrez', 'Algeri', 'MF', 0, 0, 0, 0, 'Manchester City'),
(30, 'Nicolas Otamendi', 'Argentina', 'DF', 0, 0, 0, 0, 'Manchester City'),
(31, 'Ederson Moraes', 'Brazil', 'GK', 0, 1, 0, 0, 'Manchester City'),
(33, 'Gabriel Jesus', 'Brazil', 'FW', 1, 0, 0, 0, 'Manchester City'),
(34, 'Philippe Sandler', 'Hà Lan', 'DF', 0, 0, 0, 0, 'Manchester City'),
(35, 'Oleksandr Zinchenko', 'Ukraina', 'MF', 0, 0, 0, 0, 'Manchester City'),
(47, 'Philip Walter Foden', 'Anh', 'MF', 0, 0, 0, 0, 'Manchester City'),
(49, 'Aro Muric', 'Switzerland', 'GK', 0, 0, 0, 0, 'Manchester City');

-- --------------------------------------------------------

--
-- Table structure for table `manutd`
--

CREATE TABLE `manutd` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manutd`
--

INSERT INTO `manutd` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'David de Gea', 'Spain', 'GK', 0, 0, 0, 0, 'Manchester United'),
(2, 'Victor Lindelof', 'Sweden', 'DF', 0, 0, 0, 0, 'Manchester United'),
(3, 'Eric Baily', 'Cote d\'Ivoire', 'DF', 0, 0, 0, 0, 'Manchester United'),
(4, 'Phil Jones', 'England', 'DF', 0, 0, 0, 0, 'Manchester United'),
(6, 'Paul Pogba', 'France', 'MF', 2, 0, 0, 0, 'Manchester United'),
(7, 'Alexis Sanchez', 'Chile', 'FW', 0, 0, 0, 0, 'Manchester United'),
(8, 'Juan Mata', 'Spain', 'MF', 0, 1, 0, 0, 'Manchester United'),
(9, 'Romelu Lukaku', 'Belgium', 'FW', 1, 0, 0, 0, 'Manchester United'),
(10, 'Marcus Rashford', 'England', 'FW', 0, 0, 0, 0, 'Manchester United'),
(11, 'Anthony Martial', 'France', 'FW', 0, 0, 0, 1, 'Manchester United'),
(12, 'Chris Smalling', 'England', 'DF', 0, 0, 0, 0, 'Manchester United'),
(14, 'Jesse Lingard', 'England', 'MF', 0, 0, 0, 0, 'Manchester United'),
(15, 'Adreas Pereira', 'Brazil', 'MF', 0, 0, 0, 1, 'Manchester United'),
(17, 'Fred', 'Brazil', 'MF', 0, 0, 0, 1, 'Manchester United'),
(18, 'Ashley Young', 'England', 'DF', 0, 0, 0, 0, 'Manchester United'),
(21, 'Ander Herrera', 'Spain', 'MF', 0, 0, 0, 1, 'Manchester United'),
(22, 'Sergio Romero', 'Argentina', 'GK', 0, 0, 0, 0, 'Manchester United'),
(23, 'Luke Shaw', 'England', 'DF', 1, 0, 0, 0, 'Manchester United'),
(25, 'Antonio Valencia', 'Ecuador', 'DF', 0, 0, 0, 1, 'Manchester United'),
(31, 'Nemanja Matic', 'Serbia', 'MF', 0, 0, 0, 0, 'Manchester United');

-- --------------------------------------------------------

--
-- Table structure for table `newcastle`
--

CREATE TABLE `newcastle` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newcastle`
--

INSERT INTO `newcastle` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(23, 'Antonio Barreca', 'Italia', 'DF', 0, 0, 0, 0, 'Newcastle United'),
(17, 'Ayoze Perez', 'Spain', 'FW', 0, 0, 0, 0, 'Newcastle United'),
(30, 'Christian Atsu', 'Ghana', 'MF', 0, 0, 0, 0, 'Newcastle United'),
(2, 'Claran Clark', 'Ireland', 'DF', 0, 0, 0, 0, 'Newcastle United'),
(22, 'DeAndre Yedlin', 'USA', 'DF', 0, 1, 0, 0, 'Newcastle United'),
(5, 'Fabian Schar', 'Switzerland', 'DF', 0, 0, 0, 1, 'Newcastle United'),
(18, 'Federico Fernadez', 'Spain', 'DF', 0, 0, 0, 1, 'Newcastle United'),
(41, 'Freddie Woodman', 'England', 'GK', 0, 0, 0, 0, 'Newcastle United'),
(14, 'Isaac Hayden', 'England', 'MF', 0, 0, 1, 0, 'Newcastle United'),
(6, 'Jamal Lascelles', 'England', 'DF', 0, 0, 0, 0, 'Newcastle United'),
(8, 'Jonjo Shelvey', 'England', 'MF', 0, 0, 0, 0, 'Newcastle United'),
(21, 'Joselu', 'Spain', 'FW', 2, 0, 0, 1, 'Newcastle United'),
(16, 'Kenedy', 'Brazil', 'MF', 0, 0, 0, 0, 'Newcastle United'),
(4, 'Ki Seung Young', 'Korea', 'MF', 0, 0, 0, 0, 'Newcastle United'),
(19, 'Manquillo', 'Spain', 'DF', 0, 0, 0, 1, 'Newcastle United'),
(12, 'Martin Dubravka', 'Serbia', 'GK', 0, 0, 0, 0, 'Newcastle United'),
(11, 'Math Ritchie', 'Scotland', 'MF', 0, 1, 0, 2, 'Newcastle United'),
(10, 'Mohamed Diame', 'Senegal', 'MF', 0, 0, 0, 1, 'Newcastle United'),
(1, 'Rob Eliot', 'Ireland', 'GK', 0, 0, 0, 0, 'Newcastle United'),
(9, 'Salomon Rondon', 'Venezuela', 'FW', 0, 0, 0, 0, 'Newcastle United');

-- --------------------------------------------------------

--
-- Table structure for table `palace`
--

CREATE TABLE `palace` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `palace`
--

INSERT INTO `palace` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Julian Speroni', 'Argentina', 'GK', 0, 0, 0, 0, 'Crystal Palace'),
(2, 'Joel Ward', 'England', 'DF', 0, 0, 0, 0, 'Crystal Palace'),
(3, 'Patrick van Aanholt', 'Netherlands', 'DF', 0, 1, 0, 1, 'Crystal Palace'),
(4, 'Luka Milivojevic', 'Serbia', 'MF', 0, 0, 0, 0, 'Crystal Palace'),
(5, 'James Tomkin', 'England', 'DF', 0, 0, 0, 0, 'Crystal Palace'),
(6, 'Scott Dann', 'England', 'DF', 0, 0, 0, 0, 'Crystal Palace'),
(7, 'Max Mayer', 'Germany', 'MF', 0, 0, 0, 1, 'Crystal Palace'),
(10, 'Andros Townsend', 'England', 'FW', 0, 0, 0, 0, 'Crystal Palace'),
(11, 'Wilfred Zaha', 'England', 'FW', 1, 0, 0, 2, 'Crystal Palace'),
(12, 'Mamadou Sakho', 'France', 'DF', 0, 0, 0, 0, 'Crystal Palace'),
(13, 'Wayne Hennessey', 'Wales', 'Gk', 0, 0, 0, 0, 'Crystal Palace'),
(14, 'Jordan Ayew', 'Ghana', 'FW', 0, 0, 0, 0, 'Crystal Palace'),
(15, 'Jeffrey Schlupp', 'Ghana', 'MF', 0, 0, 0, 1, 'Crystal Palace'),
(17, 'Christian Benteke', 'Belgium', 'FW', 0, 0, 0, 0, 'Crystal Palace'),
(18, 'James McArthur', 'Scotland', 'MF', 0, 0, 0, 0, 'Crystal Palace'),
(21, 'Connor Wickham', 'England', 'FW', 0, 0, 0, 0, 'Crystal Palace'),
(23, 'Michy Batshuayi', 'Belgium', 'FW', 0, 0, 0, 0, 'Crystal Palace'),
(26, 'Bakary Sako', 'Mali', 'MF', 0, 0, 0, 0, 'Crystal Palace'),
(29, 'Aaron Wan-Bissaka', 'England', 'DF', 0, 1, 1, 0, 'Crystal Palace'),
(34, 'Martin Kelly', 'England', 'DF', 0, 0, 0, 0, 'Crystal Palace');

-- --------------------------------------------------------

--
-- Table structure for table `southampton`
--

CREATE TABLE `southampton` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `southampton`
--

INSERT INTO `southampton` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Alex McCarthy', 'England', 'GK', 0, 0, 0, 0, 'Southampton FC'),
(3, 'Maya Yoshida', 'Japan', 'DF', 0, 0, 0, 0, 'Southampton FC'),
(4, 'Jannik Vestergaard', 'Denmark', 'DF', 0, 0, 0, 0, 'Southampton FC'),
(5, 'Jack Stephens', 'England', 'DF', 0, 0, 0, 1, 'Southampton FC'),
(7, 'Shane Long', 'Ireland', 'FW', 0, 0, 0, 0, 'Southampton FC'),
(9, 'Danny Ings', 'England', 'FW', 1, 0, 0, 0, 'Southampton FC'),
(10, 'Charlie Austin', 'England', 'FW', 0, 0, 0, 0, 'Southampton FC'),
(14, 'Oriol Romeu', 'Spain', 'MF', 0, 0, 0, 1, 'Southampton FC'),
(16, 'James Ward-Prowse', 'England', 'MF', 0, 0, 0, 0, 'Southampton FC'),
(17, 'Stuart Amstrong', 'Scotland', 'MF', 0, 0, 0, 0, 'Southampton FC'),
(18, 'Mario Lemina', 'Gabon', 'MF', 0, 1, 0, 1, 'Southampton FC'),
(21, 'Ryan Bertrand', 'England', 'DF', 1, 0, 0, 1, 'Southampton FC'),
(22, 'Nathan Redmond', 'England', 'FW', 0, 0, 0, 0, 'Southampton FC'),
(23, 'Højbjerg', 'Denmark', 'MF', 0, 0, 1, 2, 'Southampton FC'),
(33, 'Matt Target', 'England', 'MF', 0, 0, 0, 0, 'Southampton FC'),
(41, 'Harry Lewis', 'England', 'GK', 0, 0, 0, 0, 'Southampton FC'),
(43, 'Yan Valery', 'France', 'DF', 0, 0, 0, 0, 'Southampton FC'),
(44, 'Fraser Forster', 'England', 'GK', 0, 0, 0, 0, 'Southampton FC'),
(65, 'Marcus Barnes', 'England', 'FW', 0, 0, 0, 0, 'Southampton FC'),
(66, 'Kayne Ramsey', 'England', 'DF', 0, 0, 0, 0, 'Southampton FC');

-- --------------------------------------------------------

--
-- Table structure for table `tottenham`
--

CREATE TABLE `tottenham` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tottenham`
--

INSERT INTO `tottenham` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Hogu Lloris', 'France', 'GK', 0, 0, 0, 0, 'Tottenham Hotspur'),
(2, 'Kieran Trippier', 'England', 'DF', 1, 1, 0, 0, 'Tottenham Hotspur'),
(3, 'Danny Rose', 'England', 'DF', 0, 0, 0, 1, 'Tottenham Hotspur'),
(4, 'Toby Alderweireld', 'Belgium', 'DF', 0, 0, 0, 0, 'Tottenham Hotspur'),
(5, 'Jan Vertonghen', 'Belgium', 'DF', 1, 0, 0, 0, 'Tottenham Hotspur'),
(6, 'Davison Sanchez', 'Colombia', 'DF', 0, 1, 0, 0, 'Tottenham Hotspur'),
(7, 'Son Heung-min', 'Korea', 'FW', 0, 0, 0, 0, 'Tottenham Hotspur'),
(8, 'Harry Winks', 'England', 'MF', 0, 0, 0, 0, 'Tottenham Hotspur'),
(9, 'Vicent Janssen', 'Netherlands', 'FW', 0, 0, 0, 0, 'Tottenham Hotspur'),
(10, 'Harry Kane', 'England', 'FW', 2, 1, 0, 2, 'Tottenham Hotspur'),
(11, 'Érik Lamela', 'Argentina', 'FW', 0, 1, 0, 0, 'Tottenham Hotspur'),
(13, 'Michael Vorm', 'Netherlands', 'GK', 0, 0, 0, 0, 'Tottenham Hotspur'),
(15, 'Eric Dier', 'England', 'MF', 0, 0, 0, 1, 'Tottenham Hotspur'),
(17, 'Mousa Sissoko', 'France', 'MF', 0, 0, 0, 0, 'Tottenham Hotspur'),
(20, 'Dele Ali', 'England', 'MF', 1, 0, 0, 0, 'Tottenham Hotspur'),
(21, 'Juan Foyth', 'Argentina', 'DF', 0, 0, 0, 0, 'Tottenham Hotspur'),
(23, 'Christian Eriksen', 'Denmark', 'MF', 0, 1, 0, 0, 'Tottenham Hotspur'),
(24, 'Serge Aurier', 'Cote d\'Ivore', 'DF', 0, 1, 0, 0, 'Tottenham Hotspur'),
(27, 'Lucas Moura ', 'Brazil', 'MF', 3, 0, 0, 1, 'Tottenham Hotspur'),
(33, 'Ben Davies', 'Wales', 'DF', 0, 0, 0, 0, 'Tottenham Hotspur');

-- --------------------------------------------------------

--
-- Table structure for table `watford`
--

CREATE TABLE `watford` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watford`
--

INSERT INTO `watford` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Heurelho Gomes', 'Brazil', 'GK', 0, 0, 0, 0, 'Watford FC'),
(2, 'Daryl Jamaat', 'Netherlands', 'DF', 0, 1, 0, 2, 'Watford FC'),
(3, 'Miguel Britos', 'Uruguay', 'DF', 0, 0, 0, 0, 'Watford FC'),
(5, 'Sebastian Prodl', 'Austria', 'DF', 0, 0, 0, 0, 'Watford FC'),
(6, 'Adrian Mariappa', 'Jamaica', 'DF', 0, 0, 0, 0, 'Watford FC'),
(7, 'Gerard Delofeu', 'Spain', 'FW', 0, 0, 0, 0, 'Watford FC'),
(8, 'Tom Cleverly', 'England', 'MF', 0, 0, 0, 0, 'Watford FC'),
(9, 'Troy Deeney', 'England', 'FW', 1, 1, 0, 0, 'Watford FC'),
(14, 'Nathaniel Chalobah', 'England', 'MF', 0, 0, 0, 0, 'Watford FC'),
(16, 'Abdoulaye Doucoure', 'France', 'MF', 0, 1, 0, 0, 'Watford FC'),
(18, 'Andre Gray', 'England', 'FW', 1, 0, 0, 0, 'Watford FC'),
(19, 'Will Hughes', 'England', 'MF', 1, 0, 0, 1, 'Watford FC'),
(20, 'Domigos Quina', 'Portugal', 'MF', 0, 0, 0, 0, 'Watford FC'),
(21, 'Kiko Fermenia', 'Spain', 'DF', 0, 0, 0, 0, 'Watford FC'),
(23, 'Marc Navarro', 'Spain', 'DF', 0, 0, 0, 0, 'Watford FC'),
(25, 'Jose Holebas', 'Greece', 'DF', 1, 2, 0, 2, 'Watford FC'),
(26, 'Ben Foster', 'England', 'GK', 0, 0, 0, 0, 'Watford FC'),
(27, 'Christian Kabasele', 'Belgium', 'DF', 0, 0, 0, 0, 'Watford FC'),
(29, 'Etienne Capoue', 'France', 'MF', 0, 1, 0, 2, 'Watford FC'),
(37, 'Roberto Pereyra', 'Argentina', 'MF', 3, 0, 0, 1, 'Watford FC');

-- --------------------------------------------------------

--
-- Table structure for table `westham`
--

CREATE TABLE `westham` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `westham`
--

INSERT INTO `westham` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(1, 'Lukasz Fabianski', 'Poland', 'GK', 0, 0, 0, 0, 'West Ham United'),
(2, 'Winston Reid', 'Australia', 'DF', 0, 0, 0, 0, 'West Ham United'),
(3, 'Aaron Cresswell', 'England', 'DF', 0, 0, 0, 0, 'West Ham United'),
(5, 'Pablo Zabaleta', 'Argentina', 'DF', 0, 0, 0, 1, 'West Ham United'),
(7, 'Marko Arnautovic', 'Austria', 'FW', 2, 0, 0, 0, 'West Ham United'),
(8, 'Felipe Anderson', 'Brazil', 'MF', 0, 1, 0, 0, 'West Ham United'),
(9, 'Andy Caroll', 'England', 'FW', 0, 0, 0, 0, 'West Ham United'),
(10, 'Manuel Lanzini', 'Argentina', 'MF', 0, 0, 0, 0, 'West Ham United'),
(11, 'Robert Snodgrass', 'Scotland', 'MF', 0, 0, 0, 0, 'West Ham United'),
(15, 'Carlos Sanchez', 'Colombia', 'MF', 0, 0, 0, 0, 'West Ham United'),
(16, 'Mark Noble', 'England', 'MF', 0, 0, 0, 1, 'West Ham United'),
(17, 'Javier Hernandez', 'Mexico', 'FW', 0, 0, 0, 0, 'West Ham United'),
(18, 'Samir Nasri', 'France', 'MF', 0, 0, 0, 0, 'West Ham United'),
(19, 'Jack Wilshere', 'England', 'MF', 0, 0, 0, 2, 'West Ham United'),
(20, 'Andriy Yarmolenko', 'Ukraina', 'FW', 0, 0, 0, 1, 'West Ham United'),
(23, 'Issa Diop', 'France', 'DF', 0, 0, 0, 1, 'West Ham United'),
(24, 'Ryan Fredericks', 'England', 'DF', 0, 0, 0, 1, 'West Ham United'),
(26, 'Arthur Masuaku', 'Bahamas', 'DF', 0, 0, 0, 0, 'West Ham United'),
(27, 'Lucas Perez', 'Spain', 'FW', 0, 0, 0, 0, 'West Ham United'),
(30, 'Michail Antonio', 'England', 'MF', 0, 0, 0, 1, 'West Ham United');

-- --------------------------------------------------------

--
-- Table structure for table `wolves`
--

CREATE TABLE `wolves` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wolves`
--

INSERT INTO `wolves` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`) VALUES
(2, 'Matt Doherty', 'Ireland', 'DF', 0, 0, 0, 0, 'Wolverhampton'),
(5, 'Ryan Bennet', 'England', 'DF', 0, 0, 0, 0, 'Wolverhampton'),
(7, 'Iven Cavaleiro', 'Portugal', 'FW', 0, 0, 0, 0, 'Wolverhampton'),
(8, 'Ruben Neves', 'Portugal', 'MF', 1, 1, 0, 0, 'Wolverhampton'),
(9, 'Raul Jiminez', 'Mexico', 'FW', 1, 0, 0, 0, 'Wolverhampton'),
(10, 'Helder Costa', 'Portugal', 'FW', 0, 0, 0, 0, 'Wolverhampton'),
(11, 'Rui Patricio', 'Portugal', 'GK', 0, 0, 0, 0, 'Wolverhampton'),
(15, 'Willy Boly ', 'France', 'DF', 1, 0, 0, 0, 'Wolverhampton'),
(16, 'Conor Coady', 'England', 'DF', 0, 0, 0, 1, 'Wolverhampton'),
(18, 'Diogo Jota', 'Portugal', 'FW', 0, 0, 0, 0, 'Wolverhampton'),
(19, 'Jonhny', 'Spain', 'DF', 0, 0, 0, 0, 'Wolverhampton'),
(21, 'John Ruddy', 'England', 'GK', 0, 0, 0, 0, 'Wolverhampton'),
(23, 'Ryan Giles', 'England', 'MF', 0, 0, 0, 0, 'Wolverhampton'),
(25, 'Eliot Watt', 'Scotland', 'MF', 0, 0, 0, 0, 'Wolverhampton'),
(26, 'Pedro Goncalves', 'Portugal', 'MF', 0, 0, 0, 0, 'Wolverhampton'),
(27, 'Romain Saiss', 'Morocco', 'MF', 0, 0, 0, 0, 'Wolverhampton'),
(28, 'Joao Moutinho', 'Portugal', 'MF', 0, 1, 0, 0, 'Wolverhampton'),
(29, 'Ruben Vinagre', 'Portugal', 'DF', 0, 0, 0, 0, 'Wolverhampton'),
(37, 'Adama Traore', 'Spain', 'FW', 0, 0, 0, 0, 'Wolverhampton'),
(49, 'Max Kilman', 'England', 'DF', 0, 0, 0, 0, 'Wolverhampton');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
