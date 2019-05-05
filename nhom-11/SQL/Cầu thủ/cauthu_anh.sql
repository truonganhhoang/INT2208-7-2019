-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2019 at 05:23 AM
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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arsenal`
--

INSERT INTO `arsenal` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Petr Cech', 'Czech', 'GK', 0, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(2, 'Hector Bellerin', 'Spain', 'DF', 0, 1, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(4, 'Mohamed Elneny', 'Egypt', 'MF', 0, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(5, 'Sokratis', 'Greece', 'DF', 0, 0, 0, 2, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(6, 'Laurent Koscielly', 'France', 'DF', 0, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(7, 'Henrikh Mkhitaryan', 'Armenia', 'MF', 1, 1, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(8, 'Aaron Ramsey', 'Wales', 'MF', 0, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(9, 'Alexsandre Lacazette', 'France', 'FW', 0, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(10, 'Mesut Ozil', 'Germany', 'MF', 0, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(11, 'Lucas Torreira', 'Uruguay', 'MF', 0, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(14, 'Aubameyang', 'Gabon', 'FW', 0, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(17, 'Alex Iwobi', 'Nigeria', 'FW', 1, 1, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(18, 'Nacho Monreal', 'Spain', 'DF', 1, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(19, 'Bern Leno', 'Germany', 'GK', 0, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(20, 'Skodran Mustafi', 'Germany', 'DF', 0, 0, 0, 1, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(22, 'Dennis Suarez', 'Spain', 'MF', 0, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(23, 'Danny Welbeck', 'England', 'FW', 1, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(29, 'Matteo Guendouzi', 'France', 'MF', 0, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(31, 'Sead Kolasinac', 'Bosnia', 'DF', 0, 0, 0, 0, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png'),
(34, 'Granit Xhaka', 'Switzerland', 'MF', 0, 0, 0, 2, 'Arsenal FC', 'LogoCLB\\Premier League\\arsenal.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bournemouth`
--

INSERT INTO `bournemouth` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Artur Boruc', 'Poland', 'GK', 0, 0, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(2, 'Simon Francis', 'England', 'DF', 0, 1, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(3, 'Steve Cook', 'England', 'DF', 1, 1, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(4, 'Dan Gosling', 'England ', 'MF', 0, 0, 0, 1, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(5, 'Nathan Ake', 'Holland', 'DF', 1, 0, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(6, 'Adrew Surman', 'England', 'MF', 0, 0, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(8, 'Jefferson Lerma', 'Colombia', 'MF', 0, 0, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(9, 'Lys Mousset', 'France', 'FW', 0, 0, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(10, 'Jordan Ibe', 'England', 'MF', 0, 0, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(11, 'Charlie Daniels', 'England', 'DF', 0, 0, 0, 1, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(13, 'Calum Wilson', 'England', 'FW', 2, 1, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(15, 'Adam Smith', 'England', 'DF', 0, 0, 1, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(16, 'Lewis Cook', 'England', 'MF', 0, 0, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(17, 'Joshua King', 'Norway', 'FW', 1, 0, 0, 1, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(19, 'Junior Stanislas', 'England', 'MF', 0, 0, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(20, 'David Brooks', 'Wales', 'MF', 0, 0, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(21, 'Diego Rico', 'Spain', 'DF', 0, 0, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(23, 'Nathaniel Clyne', 'England', 'DF', 0, 0, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(24, 'Ryan Fraser', 'England', 'MF', 1, 1, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png'),
(27, 'Asmir Begovic', 'Bosnia', 'GK', 0, 0, 0, 0, 'AFC Bournemouth', 'LogoCLB\\Premier League\\bournemouth.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brighton`
--

INSERT INTO `brighton` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Matthew Ryan', 'Australia', 'GK', 0, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(2, 'Bruno', 'Spain', 'DF', 0, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(3, 'Geatan Bong', 'Ghana', 'DF', 0, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(4, 'Shane Duffy', 'Ireland', 'DF', 1, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(5, 'Lewis Dunk', 'England', 'DF', 0, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(6, 'Dale Stephen', 'England', 'MF', 0, 0, 0, 1, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(7, 'Beram Kayal', 'Israel', 'MF', 0, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(8, 'Yves Bissouma', 'Mali', 'MF', 0, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(9, 'Jurgen Locadia', 'Netherlands', 'FW', 0, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(10, 'Florin Andone', 'Romania', 'FW', 0, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(11, 'Anthony Knockaert', 'France', 'MF', 0, 1, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(13, 'Pascal Grob', 'Germany', 'MF', 1, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(14, 'Leon Balogun', 'Nigeria', 'DF', 0, 0, 0, 1, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(16, 'Alireza Jahanbakhsh', 'Iran', 'MF', 0, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(17, 'Glen Murray', 'England', 'FW', 1, 0, 0, 1, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(20, 'Solomon March', 'England', 'MF', 0, 1, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(22, 'Martin Montoya', 'Spain', 'DF', 0, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(23, 'Jason Steele', 'England', 'GK', 0, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(30, 'Bernado', 'Brazil', 'DF', 0, 0, 0, 1, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png'),
(33, 'Dan Burn', 'England', 'DF', 0, 0, 0, 0, 'Brighton & Hove Albion', 'LogoCLB\\Premier League\\brighton.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `burnley`
--

INSERT INTO `burnley` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Tom Heaton', 'England', 'GK', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(2, 'Mathew Lowton', 'England', 'DF', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(3, 'Charlie Taylor', 'England', 'DF', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(4, 'Jack Cork', 'England', 'MF', 0, 0, 0, 1, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(5, 'James Tarkowski', 'England', 'DF', 1, 0, 0, 1, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(6, 'Ben Mee', 'England', 'DF', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(7, 'Jóhann Guðmundsson', 'Iceland', 'MF', 0, 1, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(10, 'Ashley Barnes', 'England', 'FW', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(11, 'Chris Wood', 'Australia', 'FW', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(12, 'Robbie Brady', 'Ireland', 'MF', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(13, 'Jeff Hendrick', 'Ireland', 'MF', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(14, 'Ben Gibson', 'England', 'MF', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(15, 'Peter Crouch', 'England', 'FW', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(16, 'Steven Defour', 'Belgium', 'MF', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(18, 'Ashley Westwood', 'England', 'MF', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(20, 'Joe Hart', 'England', 'GK', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(23, 'Steven Ward', 'Iceland', 'DF', 0, 0, 0, 1, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(25, 'Aaron Lennon', 'England', 'MF', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(26, 'Phil Bardsley', 'Scotland', 'DF', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png'),
(29, 'Nick Pope', 'England', 'GK', 0, 0, 0, 0, 'Burnley FC', 'LogoCLB\\Premier League\\burnley.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardiff`
--

INSERT INTO `cardiff` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Neil Etheridge', 'Philipines', 'GK', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(2, 'Lee Peltier', 'England', 'DF', 0, 0, 0, 1, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(3, 'Joe Bennet', 'England', 'DF', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(4, 'Sean Morrison', 'England', 'DF', 0, 0, 0, 1, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(5, 'Bruno Manga', 'Gabon', 'DF', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(6, 'Jazz Richard', 'Wales', 'DF', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(7, 'Harry Arter', 'Ireland', 'MF', 0, 0, 0, 2, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(8, 'Joe Rails', 'England', 'MF', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(9, 'Danny Ward', 'England', 'FW', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(10, 'Kennet Zohore', 'Denmark', 'FW', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(11, 'Josh Murphy', 'England', 'MF', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(12, 'Alex Smithies', 'England', 'GK', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(13, 'Callum Paterson', 'Scotland', 'MF', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(14, 'Bobby Reid', 'England', 'FW', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(15, 'Leandro Bacuna', 'Curacao', 'MF', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(17, 'Aron Gunnarson', 'Iceland', 'MF', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(18, 'Greg Cunningham', 'Ireland', 'DF', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(19, 'Mendez-Laing', 'England', 'MF', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(21, 'Víctor Camarasa ', 'Spain', 'MF', 0, 0, 0, 1, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png'),
(33, 'Junior Hoilet', 'Canada', 'MF', 0, 0, 0, 0, 'Cardiff City', 'LogoCLB\\Premier League\\cardiff.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chelsea`
--

INSERT INTO `chelsea` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Kepa Arrizabalaga', 'Spain', 'GK', 0, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(2, 'Antonio Rudiger', 'Germany', 'DF', 0, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(3, 'Marcos Alonso', 'Spain', 'DF', 1, 1, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(5, 'Jorginho', 'Italia', 'MF', 1, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(7, 'N\'golo Kante', 'France', 'MF', 1, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(8, 'Ross Barkley', 'England', 'MF', 0, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(9, 'Gonzalo Higuain', 'Argentina', 'FW', 0, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(10, 'Eden Hazard', 'Belgium', 'MF', 1, 2, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(11, 'Pedro', 'Spain', 'FW', 2, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(12, 'Ruben Loftus-cheek', 'England', 'MF', 0, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(13, 'Willy Cabalero', 'Argentina', 'GK', 0, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(15, 'Victor Moses', 'Nigeria', 'MF', 0, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(17, 'Mateo Kovacic', 'Croatia', 'MF', 0, 0, 0, 1, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(18, 'Oliver Giroud', 'France', 'FW', 0, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(20, 'Callum Hudson-Odoi', 'England', 'MF', 0, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(22, 'Willian', 'Brazil', 'MF', 0, 1, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(24, 'Gary Cahill', 'England', 'DF', 0, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(27, 'Andreas Christensen', 'Denmark', 'DF', 0, 0, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(28, 'Cesar Azpilicueta', 'Spain', 'DF', 0, 1, 0, 0, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png'),
(30, 'David Luiz', 'Brazil', 'DF', 0, 0, 0, 1, 'Chelsea FC', 'LogoCLB\\Premier League\\chelsea.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `everton`
--

INSERT INTO `everton` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Jordan Pickford', 'England', 'GK', 0, 0, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(3, 'Leighton Baines', 'England', 'DF', 0, 0, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(4, 'Michael Keane', 'England', 'DF', 0, 1, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(5, 'Kurt Zouma', 'France', 'DF', 0, 0, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(6, 'Phil Jagielka', 'England', 'DF', 0, 0, 1, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(8, 'Andre Gomes', 'Portugal', 'MF', 0, 0, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(10, 'Gylfi Sigurdsson', 'Iceland', 'MF', 0, 0, 0, 1, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(11, 'Theo Walcott', 'England', 'FW', 2, 1, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(12, 'Lucas Digne', 'France', 'DF', 0, 0, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(13, 'Yerry Mina', 'Colombia', 'DF', 0, 0, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(14, 'Cenk Tosun', 'Turkey', 'FW', 0, 2, 0, 1, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(16, 'James McCarthy', 'Iceland', 'MF', 0, 0, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(17, 'Idrissa Gueye', 'Ghana', 'MF', 0, 0, 0, 1, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(18, 'Morgan Schneiderlin', 'France', 'MF', 0, 1, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(20, 'Bernard', 'Brazil', 'MF', 0, 0, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(22, 'Maarten Stekelenburg', 'Netherlands', 'GK', 0, 0, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(23, 'Seamus Coleman', 'Ireland', 'DF', 0, 0, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(26, 'Tom Davies', 'England', 'MF', 0, 0, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(30, 'Richarlison', 'Brazil', 'FW', 3, 0, 1, 1, 'Everton FC', 'LogoCLB\\Premier League\\everton.png'),
(43, 'Jonjoe Kenny', 'England', 'DF', 0, 0, 0, 0, 'Everton FC', 'LogoCLB\\Premier League\\everton.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fulham`
--

INSERT INTO `fulham` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Marcus Bettinelli', 'England', 'GK', 0, 0, 0, 1, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(3, 'Ryan Sessegnon', 'England', 'MF', 0, 1, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(4, 'Denis Odoi', 'Belgium', 'DF', 0, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(5, 'Callum Chambers', 'England', 'DF', 0, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(6, 'Kevin McDonald', 'Scotland', 'MF', 0, 0, 0, 1, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(9, 'Alexsandar Mitrovic', 'Serbia', 'FW', 3, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(10, 'Tom Cairney', 'Scotland', 'MF', 0, 1, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(11, 'Floyd Ayite', 'Togo', 'FW', 0, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(12, 'Ryan Babel', 'Netherlands', 'MF', 0, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(13, 'Tim Ream', 'USA', 'DF', 0, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(14, 'André Schürrle', 'Germany', 'FW', 1, 0, 0, 1, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(19, 'Luciano Vietto', 'Argentina', 'FW', 0, 2, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(20, 'Maxime Marchand', 'France', 'DF', 0, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(21, 'Fosu-Mensah ', 'Netherlands', 'DF', 0, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(22, 'Cyrus Christle', 'Ireland', 'DF', 0, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(23, 'Joe Bryan', 'England', 'DF', 0, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(24, 'Jean Seri', 'Ireland', 'MF', 1, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(25, 'Sergio Rico', 'Spain', 'GK', 0, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(26, 'Alfie Mawson', 'England', 'DF', 0, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png'),
(30, 'Lazar Markovic', 'Serbia', 'MF', 0, 0, 0, 0, 'Fulham FC', 'LogoCLB\\Premier League\\fulham.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `huddersfields`
--

INSERT INTO `huddersfields` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Jonas Lossl', 'Denmark', 'GK', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(2, 'Tommy Smith', 'England', 'DF', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(3, 'Scott Malone', 'England', 'DF', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(5, 'Terence Kongolo', 'Netherlands', 'DF', 0, 0, 0, 1, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(6, 'Jonathan Hogg', 'England', 'MF', 0, 0, 1, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(7, 'Sean Scannell', 'Ireland', 'MF', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(8, 'Phillip Billing', 'Denmark', 'MF', 0, 0, 0, 1, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(9, 'Elias Kachunga', 'Congo', 'FW', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(10, 'Aaron Mooy', 'Australia', 'MF', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(13, 'Joel Coleman', 'England', 'GK', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(18, 'Joe Lolley', 'England', 'MF', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(19, 'Danny Willams', 'USA', 'MF', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(20, 'Laurent Depoitre', 'Belgium', 'FW', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(22, 'Tom Ince', 'England', 'MF', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(23, 'Collin Quaner', 'Germany', 'FW', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(24, 'Steve Mounier', 'Benin', 'FW', 0, 1, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(26, 'Schindler', 'Germany', 'MF', 0, 0, 0, 2, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(27, 'Jon Stankovic', 'Slovenia', 'DF', 1, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(31, 'Ryan Schofield', 'England', 'GK', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png'),
(44, 'Michael Hafele', 'Germany', 'DF', 0, 0, 0, 0, 'Huddersfield Town', 'LogoCLB\\Premier League\\huddersfield.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leicester`
--

INSERT INTO `leicester` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Kasper Schmeichel ', 'Denamark', 'GK', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(3, 'Ben Chilwell', 'England', 'DF', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(5, 'Wes Morgan', 'Jamaica', 'DF', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(6, 'Roberth Huth', 'Germany', 'DF', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(7, 'Ahmed Musa', 'Nigeria', 'MF', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(9, 'Jamie Vardy', 'England', 'FW', 1, 0, 1, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(10, 'James Maddison', 'Wales', 'MF', 1, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(11, 'Marc Albrighton', 'England', 'MF', 0, 1, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(12, 'Ben Hamer', 'England', 'GK', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(13, 'Daniel Amartey', 'Ghana', 'MF', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(14, 'Ricardo Pereira', 'England', 'MF', 0, 1, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(15, 'Harry Maguire', 'England', 'DF', 1, 0, 0, 2, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(16, 'Andy King', 'England', 'MF', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(17, 'Danny Simpson', 'England', 'DF', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(20, 'Okazaki Shinji', 'Japan', 'FW', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(21, 'Ron-Robert Zieler', 'Germany', 'GK', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(22, 'Demarai Gray', 'England', 'FW', 1, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(23, 'Youri Tielemans', 'Belgium', 'MF', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(25, 'Wilfred Ndidi', 'Nigeria', 'MF', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png'),
(28, 'Christian Fuchs', 'Denmark', 'DF', 0, 0, 0, 0, 'Leicester City', 'LogoCLB\\Premier League\\leicester.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `liverpool`
--

INSERT INTO `liverpool` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(2, 'Fabinho', 'Brazil', 'MF', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(4, 'Virgil Van Dijk', 'Netherlands', 'DF', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(5, 'Wijnaldum', 'Netherlands', 'MF', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(6, 'Dejan Lovren', 'Croatia', 'DF', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(7, 'James Milner', 'England', 'MF', 1, 1, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(8, 'Naby Keita', 'Guinee', 'MF', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(9, 'Roberto Firmino', 'Brazil', 'FW', 0, 2, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(10, 'Sadio Mane', 'Senegal', 'FW', 2, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(11, 'Mohamed Salah', 'Egypt', 'FW', 2, 1, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(13, 'Alison Becker', 'Brazil', 'GK', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(14, 'Jordan Henderson', 'England', 'MF', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(15, 'Daniel Sturridge', 'England', 'FW', 1, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(20, 'Adam Lallana', 'England', 'MF', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(21, 'Chamberlain', 'England', 'MF', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(22, 'Simon Mignolet', 'Belgium', 'GK', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(23, 'Xherdan Shaqiri', 'Switzerland', 'MF', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(26, 'Adrew Robertson', 'Scotland', 'DF', 0, 1, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(27, 'Divock Origi', 'Belgium', 'FW', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(32, 'Joel Matip', 'Ghana', 'DF', 0, 0, 0, 0, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png'),
(66, 'Alexander-Arnolds', 'England', 'DF', 0, 0, 0, 3, 'Liverpool FC', 'LogoCLB\\Premier League\\liverpool.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mancity`
--

INSERT INTO `mancity` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Claudio Bravo', 'Chile', 'GK', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(2, 'Kyle Walker', 'Anh', 'DF', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(3, 'Danilo Silva', 'Brazil', 'DF', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(4, 'Vincent Kompany', 'Belgium', 'DF', 0, 0, 0, 1, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(5, 'John Stones', 'Anh', 'DF', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(7, 'Raheem Sterling', 'Anh', 'MF', 1, 0, 0, 1, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(8, 'Ikay Gundogan', 'Germany', 'MF', 0, 1, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(10, 'Sergio Aguero', 'Argentina', 'FW', 3, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(14, 'Aymeric Laporte', 'Spain', 'DF', 1, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(17, 'Kevin de Bruyne', 'Belgium', 'MF', 0, 0, 0, 1, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(18, 'Fabian Delph', 'Anh', 'MF', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(19, 'Leroy Sane', 'Germany', 'MF', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(20, 'Bernado Silva', 'Portugal', 'MF', 1, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(21, 'David Silva', 'Spain', 'MF', 1, 0, 0, 1, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(22, 'Benjamin Mendy', 'Pháp', 'DF', 0, 3, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(25, 'Fernandinho', 'Brazil', 'MF', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(26, 'Riyah Mahrez', 'Algeri', 'MF', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(30, 'Nicolas Otamendi', 'Argentina', 'DF', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(31, 'Ederson Moraes', 'Brazil', 'GK', 0, 1, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(33, 'Gabriel Jesus', 'Brazil', 'FW', 1, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(34, 'Philippe Sandler', 'Hà Lan', 'DF', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(35, 'Oleksandr Zinchenko', 'Ukraina', 'MF', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(47, 'Philip Walter Foden', 'Anh', 'MF', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png'),
(49, 'Aro Muric', 'Switzerland', 'GK', 0, 0, 0, 0, 'Manchester City', 'LogoCLB\\Premier League\\mancity.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manutd`
--

INSERT INTO `manutd` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'David de Gea', 'Spain', 'GK', 0, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(2, 'Victor Lindelof', 'Sweden', 'DF', 0, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(3, 'Eric Baily', 'Cote d\'Ivoire', 'DF', 0, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(4, 'Phil Jones', 'England', 'DF', 0, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(6, 'Paul Pogba', 'France', 'MF', 2, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(7, 'Alexis Sanchez', 'Chile', 'FW', 0, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(8, 'Juan Mata', 'Spain', 'MF', 0, 1, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(9, 'Romelu Lukaku', 'Belgium', 'FW', 1, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(10, 'Marcus Rashford', 'England', 'FW', 0, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(11, 'Anthony Martial', 'France', 'FW', 0, 0, 0, 1, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(12, 'Chris Smalling', 'England', 'DF', 0, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(14, 'Jesse Lingard', 'England', 'MF', 0, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(15, 'Adreas Pereira', 'Brazil', 'MF', 0, 0, 0, 1, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(17, 'Fred', 'Brazil', 'MF', 0, 0, 0, 1, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(18, 'Ashley Young', 'England', 'DF', 0, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(21, 'Ander Herrera', 'Spain', 'MF', 0, 0, 0, 1, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(22, 'Sergio Romero', 'Argentina', 'GK', 0, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(23, 'Luke Shaw', 'England', 'DF', 1, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(25, 'Antonio Valencia', 'Ecuador', 'DF', 0, 0, 0, 1, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png'),
(31, 'Nemanja Matic', 'Serbia', 'MF', 0, 0, 0, 0, 'Manchester United', 'LogoCLB\\Premier League\\manutd.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newcastle`
--

INSERT INTO `newcastle` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(23, 'Antonio Barreca', 'Italia', 'DF', 0, 0, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(17, 'Ayoze Perez', 'Spain', 'FW', 0, 0, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(30, 'Christian Atsu', 'Ghana', 'MF', 0, 0, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(2, 'Claran Clark', 'Ireland', 'DF', 0, 0, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(22, 'DeAndre Yedlin', 'USA', 'DF', 0, 1, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(5, 'Fabian Schar', 'Switzerland', 'DF', 0, 0, 0, 1, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(18, 'Federico Fernadez', 'Spain', 'DF', 0, 0, 0, 1, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(41, 'Freddie Woodman', 'England', 'GK', 0, 0, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(14, 'Isaac Hayden', 'England', 'MF', 0, 0, 1, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(6, 'Jamal Lascelles', 'England', 'DF', 0, 0, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(8, 'Jonjo Shelvey', 'England', 'MF', 0, 0, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(21, 'Joselu', 'Spain', 'FW', 2, 0, 0, 1, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(16, 'Kenedy', 'Brazil', 'MF', 0, 0, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(4, 'Ki Seung Young', 'Korea', 'MF', 0, 0, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(19, 'Manquillo', 'Spain', 'DF', 0, 0, 0, 1, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(12, 'Martin Dubravka', 'Serbia', 'GK', 0, 0, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(11, 'Math Ritchie', 'Scotland', 'MF', 0, 1, 0, 2, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(10, 'Mohamed Diame', 'Senegal', 'MF', 0, 0, 0, 1, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(1, 'Rob Eliot', 'Ireland', 'GK', 0, 0, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png'),
(9, 'Salomon Rondon', 'Venezuela', 'FW', 0, 0, 0, 0, 'Newcastle United', 'LogoCLB\\Premier League\\newcastle.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `palace`
--

INSERT INTO `palace` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Julian Speroni', 'Argentina', 'GK', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(2, 'Joel Ward', 'England', 'DF', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(3, 'Patrick van Aanholt', 'Netherlands', 'DF', 0, 1, 0, 1, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(4, 'Luka Milivojevic', 'Serbia', 'MF', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(5, 'James Tomkin', 'England', 'DF', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(6, 'Scott Dann', 'England', 'DF', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(7, 'Max Mayer', 'Germany', 'MF', 0, 0, 0, 1, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(10, 'Andros Townsend', 'England', 'FW', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(11, 'Wilfred Zaha', 'England', 'FW', 1, 0, 0, 2, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(12, 'Mamadou Sakho', 'France', 'DF', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(13, 'Wayne Hennessey', 'Wales', 'Gk', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(14, 'Jordan Ayew', 'Ghana', 'FW', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(15, 'Jeffrey Schlupp', 'Ghana', 'MF', 0, 0, 0, 1, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(17, 'Christian Benteke', 'Belgium', 'FW', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(18, 'James McArthur', 'Scotland', 'MF', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(21, 'Connor Wickham', 'England', 'FW', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(23, 'Michy Batshuayi', 'Belgium', 'FW', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(26, 'Bakary Sako', 'Mali', 'MF', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(29, 'Aaron Wan-Bissaka', 'England', 'DF', 0, 1, 1, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png'),
(34, 'Martin Kelly', 'England', 'DF', 0, 0, 0, 0, 'Crystal Palace', 'LogoCLB\\Premier League\\crystal-palace.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `southampton`
--

INSERT INTO `southampton` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Alex McCarthy', 'England', 'GK', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(3, 'Maya Yoshida', 'Japan', 'DF', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(4, 'Jannik Vestergaard', 'Denmark', 'DF', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(5, 'Jack Stephens', 'England', 'DF', 0, 0, 0, 1, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(7, 'Shane Long', 'Ireland', 'FW', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(9, 'Danny Ings', 'England', 'FW', 1, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(10, 'Charlie Austin', 'England', 'FW', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(14, 'Oriol Romeu', 'Spain', 'MF', 0, 0, 0, 1, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(16, 'James Ward-Prowse', 'England', 'MF', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(17, 'Stuart Amstrong', 'Scotland', 'MF', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(18, 'Mario Lemina', 'Gabon', 'MF', 0, 1, 0, 1, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(21, 'Ryan Bertrand', 'England', 'DF', 1, 0, 0, 1, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(22, 'Nathan Redmond', 'England', 'FW', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(23, 'Højbjerg', 'Denmark', 'MF', 0, 0, 1, 2, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(33, 'Matt Target', 'England', 'MF', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(41, 'Harry Lewis', 'England', 'GK', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(43, 'Yan Valery', 'France', 'DF', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(44, 'Fraser Forster', 'England', 'GK', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(65, 'Marcus Barnes', 'England', 'FW', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png'),
(66, 'Kayne Ramsey', 'England', 'DF', 0, 0, 0, 0, 'Southampton FC', 'LogoCLB\\Premier League\\southampton.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tottenham`
--

INSERT INTO `tottenham` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Hogu Lloris', 'France', 'GK', 0, 0, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(2, 'Kieran Trippier', 'England', 'DF', 1, 1, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(3, 'Danny Rose', 'England', 'DF', 0, 0, 0, 1, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(4, 'Toby Alderweireld', 'Belgium', 'DF', 0, 0, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(5, 'Jan Vertonghen', 'Belgium', 'DF', 1, 0, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(6, 'Davison Sanchez', 'Colombia', 'DF', 0, 1, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(7, 'Son Heung-min', 'Korea', 'FW', 0, 0, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(8, 'Harry Winks', 'England', 'MF', 0, 0, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(9, 'Vicent Janssen', 'Netherlands', 'FW', 0, 0, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(10, 'Harry Kane', 'England', 'FW', 2, 1, 0, 2, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(11, 'Érik Lamela', 'Argentina', 'FW', 0, 1, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(13, 'Michael Vorm', 'Netherlands', 'GK', 0, 0, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(15, 'Eric Dier', 'England', 'MF', 0, 0, 0, 1, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(17, 'Mousa Sissoko', 'France', 'MF', 0, 0, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(20, 'Dele Ali', 'England', 'MF', 1, 0, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(21, 'Juan Foyth', 'Argentina', 'DF', 0, 0, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(23, 'Christian Eriksen', 'Denmark', 'MF', 0, 1, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(24, 'Serge Aurier', 'Cote d\'Ivore', 'DF', 0, 1, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(27, 'Lucas Moura ', 'Brazil', 'MF', 3, 0, 0, 1, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png'),
(33, 'Ben Davies', 'Wales', 'DF', 0, 0, 0, 0, 'Tottenham Hotspur', 'LogoCLB\\Premier League\\tottenham.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watford`
--

INSERT INTO `watford` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Heurelho Gomes', 'Brazil', 'GK', 0, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(2, 'Daryl Jamaat', 'Netherlands', 'DF', 0, 1, 0, 2, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(3, 'Miguel Britos', 'Uruguay', 'DF', 0, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(5, 'Sebastian Prodl', 'Austria', 'DF', 0, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(6, 'Adrian Mariappa', 'Jamaica', 'DF', 0, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(7, 'Gerard Delofeu', 'Spain', 'FW', 0, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(8, 'Tom Cleverly', 'England', 'MF', 0, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(9, 'Troy Deeney', 'England', 'FW', 1, 1, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(14, 'Nathaniel Chalobah', 'England', 'MF', 0, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(16, 'Abdoulaye Doucoure', 'France', 'MF', 0, 1, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(18, 'Andre Gray', 'England', 'FW', 1, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(19, 'Will Hughes', 'England', 'MF', 1, 0, 0, 1, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(20, 'Domigos Quina', 'Portugal', 'MF', 0, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(21, 'Kiko Fermenia', 'Spain', 'DF', 0, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(23, 'Marc Navarro', 'Spain', 'DF', 0, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(25, 'Jose Holebas', 'Greece', 'DF', 1, 2, 0, 2, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(26, 'Ben Foster', 'England', 'GK', 0, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(27, 'Christian Kabasele', 'Belgium', 'DF', 0, 0, 0, 0, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(29, 'Etienne Capoue', 'France', 'MF', 0, 1, 0, 2, 'Watford FC', 'LogoCLB\\Premier League\\watford.png'),
(37, 'Roberto Pereyra', 'Argentina', 'MF', 3, 0, 0, 1, 'Watford FC', 'LogoCLB\\Premier League\\watford.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `westham`
--

INSERT INTO `westham` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Lukasz Fabianski', 'Poland', 'GK', 0, 0, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(2, 'Winston Reid', 'Australia', 'DF', 0, 0, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(3, 'Aaron Cresswell', 'England', 'DF', 0, 0, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(5, 'Pablo Zabaleta', 'Argentina', 'DF', 0, 0, 0, 1, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(7, 'Marko Arnautovic', 'Austria', 'FW', 2, 0, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(8, 'Felipe Anderson', 'Brazil', 'MF', 0, 1, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(9, 'Andy Caroll', 'England', 'FW', 0, 0, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(10, 'Manuel Lanzini', 'Argentina', 'MF', 0, 0, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(11, 'Robert Snodgrass', 'Scotland', 'MF', 0, 0, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(15, 'Carlos Sanchez', 'Colombia', 'MF', 0, 0, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(16, 'Mark Noble', 'England', 'MF', 0, 0, 0, 1, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(17, 'Javier Hernandez', 'Mexico', 'FW', 0, 0, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(18, 'Samir Nasri', 'France', 'MF', 0, 0, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(19, 'Jack Wilshere', 'England', 'MF', 0, 0, 0, 2, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(20, 'Andriy Yarmolenko', 'Ukraina', 'FW', 0, 0, 0, 1, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(23, 'Issa Diop', 'France', 'DF', 0, 0, 0, 1, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(24, 'Ryan Fredericks', 'England', 'DF', 0, 0, 0, 1, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(26, 'Arthur Masuaku', 'Bahamas', 'DF', 0, 0, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(27, 'Lucas Perez', 'Spain', 'FW', 0, 0, 0, 0, 'West Ham United', 'LogoCLB\\Premier League\\westham.png'),
(30, 'Michail Antonio', 'England', 'MF', 0, 0, 0, 1, 'West Ham United', 'LogoCLB\\Premier League\\westham.png');

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
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wolves`
--

INSERT INTO `wolves` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(2, 'Matt Doherty', 'Ireland', 'DF', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(5, 'Ryan Bennet', 'England', 'DF', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(7, 'Iven Cavaleiro', 'Portugal', 'FW', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(8, 'Ruben Neves', 'Portugal', 'MF', 1, 1, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(9, 'Raul Jiminez', 'Mexico', 'FW', 1, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(10, 'Helder Costa', 'Portugal', 'FW', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(11, 'Rui Patricio', 'Portugal', 'GK', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(15, 'Willy Boly ', 'France', 'DF', 1, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(16, 'Conor Coady', 'England', 'DF', 0, 0, 0, 1, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(18, 'Diogo Jota', 'Portugal', 'FW', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(19, 'Jonhny', 'Spain', 'DF', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(21, 'John Ruddy', 'England', 'GK', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(23, 'Ryan Giles', 'England', 'MF', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(25, 'Eliot Watt', 'Scotland', 'MF', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(26, 'Pedro Goncalves', 'Portugal', 'MF', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(27, 'Romain Saiss', 'Morocco', 'MF', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(28, 'Joao Moutinho', 'Portugal', 'MF', 0, 1, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(29, 'Ruben Vinagre', 'Portugal', 'DF', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(37, 'Adama Traore', 'Spain', 'FW', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png'),
(49, 'Max Kilman', 'England', 'DF', 0, 0, 0, 0, 'Wolverhampton', 'LogoCLB\\Premier League\\wolves.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
