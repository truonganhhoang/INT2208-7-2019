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
-- Database: `cauthu_duc`
--

-- --------------------------------------------------------

--
-- Table structure for table `augsburg`
--

CREATE TABLE `augsburg` (
  `soao` int(2) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(3) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `augsburg`
--

INSERT INTO `augsburg` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Andreas Luthe', 'Germany', 'GK', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(3, 'Kostas Stafylidis', 'Greece', 'DF', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(4, 'Daniel Opare', 'Ghana', 'DF', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(5, 'Reece Oxford', 'England', 'DF', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(6, 'Jeffrey Gouweleeuw', 'Netherlands', 'DF', 0, 0, 0, 1, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(8, 'Rani Khedira', 'Germany', 'MF', 0, 1, 0, 1, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(10, 'Daniel Baier', 'Germany', 'MF', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(11, 'Michael Gregoritsch', 'Austria', 'FW', 1, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(15, 'Piotr Trochowski', 'Germany', 'MF', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(16, 'Christoph Janker', 'Germany', 'DF', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(17, 'Jonathan Schmid', 'France', 'MF', 0, 1, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(21, 'Sergio Cordova', 'Venezuela ', 'FW', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(22, 'Dong-won Ji', 'South Korea', 'FW', 1, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(23, 'Marco Richter', 'Germany', 'FW', 0, 1, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(25, 'Killian Jakob', 'Germany', 'DF', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(29, 'Marco Schuster', 'Germany', 'MF', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(30, 'Caiuby', 'Brazil', 'FW', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(31, 'Philipp Max', 'Germany', 'DF', 0, 1, 0, 1, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(34, 'Georg Teigl', 'Austria', 'MF', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(37, 'Maurice Malone', 'Germany', 'FW', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(38, 'Kevin Danso', 'Ghana', 'MF', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png'),
(40, 'Gregor Kobel', 'Switzerland', 'GK', 0, 0, 0, 0, 'FC Augsburg', 'LogoCLB\\Bundesliga\\augsburg.png');

-- --------------------------------------------------------

--
-- Table structure for table `bayer-leverkusen`
--

CREATE TABLE `bayer-leverkusen` (
  `soao` int(2) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(3) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayer-leverkusen`
--

INSERT INTO `bayer-leverkusen` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Lukas Hradecky', 'Finland', 'GK', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(3, 'Panagiotis Retsos', 'Greece', 'DF', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(4, 'Jonathan Tah', 'Germany', 'DF', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(5, 'Sven Bender', 'Germany', 'DF', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(6, 'Aleksandar Dragovic', 'Austria', 'DF', 0, 0, 0, 1, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(7, 'Paulo Sampaio Filho', 'Brazil', 'MF', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(8, 'Lars Bender', 'Germany', 'MF', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(9, 'Leon Bailey', 'Jamaica', 'FW', 1, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(11, 'Stefan Kiessling', 'Germany', 'FW', 0, 0, 0, 1, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(13, 'Lucas Nicolas Alario', 'Argentina', 'FW', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(16, 'Tin Jedvaj', 'Croatia', 'DF', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(17, 'Sebastian Boenisch', 'Poland', 'DF', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(18, 'Wendell Nascimento', 'Brazil', 'DF', 1, 0, 0, 1, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(20, 'Charles Aranguiz', 'Chile', 'MF', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(21, 'Dominik Kohr', 'Germany', 'MF', 0, 0, 0, 1, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(23, 'Mitchell Weiser', 'Germany', 'MF', 0, 1, 0, 1, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(24, 'Thorsten Kirschbaum', 'Germany', 'GK', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(27, 'Robbie Kruse', 'Australia', 'FW', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(37, 'Herdi Bukusu', 'Congo DR', 'FW', 0, 0, 0, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(38, 'Karim Bellarabi', 'Germany', 'MF', 0, 0, 1, 0, 'Bayer Leverkusen', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png');

-- --------------------------------------------------------

--
-- Table structure for table `bayern-munich`
--

CREATE TABLE `bayern-munich` (
  `soao` int(2) NOT NULL,
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
-- Dumping data for table `bayern-munich`
--

INSERT INTO `bayern-munich` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Manuel Neuer', 'Germany', 'GK', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(2, 'Sandro Wagner', 'Germany', 'FW', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(4, 'Niklas Sule', 'Germany', 'DF', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(5, 'Mats Hummels', 'Germany', 'DF', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(6, 'Thiago Alcantara', 'Spain', 'MF', 0, 1, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(7, 'Franck Ribery', 'France', 'MF', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(8, 'Javi Martinez Aguina', 'Spain ', 'MF', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(9, 'Robert Lewandowski', 'Poland', 'FW', 2, 2, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(10, 'Arjen Robben', 'Netherlands', 'MF', 2, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(11, 'James Rodriguez', 'Colombia', 'MF', 1, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(13, 'Rafinha', 'Brazil', 'DF', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(14, 'Xabi Alonso', 'Spain', 'MF', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(17, 'Jerome Boateng', 'Germany', 'DF', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(22, 'Tom Starke', 'Germany', 'GK', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(25, 'Thomas Muller', 'Germany', 'FW', 2, 2, 0, 1, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(27, 'David Alaba', 'Austria', 'DF', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(31, 'Lucas Scholl', 'Germany', 'MF', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(32, 'Joshua Kimmich', 'Germany', 'DF', 0, 1, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(35, 'Renato Sanches', 'Portugal', 'MF', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(38, 'Felix Pohl', 'Germany', 'DF', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(40, 'Maximilian Franzke', 'Germany', 'FW', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(42, 'Angelos Oikonomou', 'Greece', 'DF', 0, 0, 0, 0, 'Bayern München', 'LogoCLB\\Bundesliga\\bayern-munich.png');

-- --------------------------------------------------------

--
-- Table structure for table `dortmund`
--

CREATE TABLE `dortmund` (
  `soao` int(2) NOT NULL,
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
-- Dumping data for table `dortmund`
--

INSERT INTO `dortmund` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Roman Weidenfeller', 'Germany', 'GK', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(2, 'Dan-Axel Zagadou', 'France', 'DF', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(3, 'Amos Pieper', 'Germany', 'DF', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(4, 'Abdou Diallo', 'France', 'DF', 1, 0, 0, 1, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(5, 'Achraf Hakimi', 'Spain', 'DF', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(6, 'Thomas Delaney', 'Denmark', 'MF', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(7, 'Jadon Sancho', 'England', 'FW', 0, 2, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(9, 'Paco Alcacer', 'Spain', 'FW', 1, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(10, 'Mario Gotze', 'Germany', 'MF', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(11, 'Marco Reus', 'Germany', 'MF', 1, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(13, 'Raphael Guerreiro', 'France', 'DF', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(16, 'Manuel Akanji', 'Switzerland', 'DF', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(19, 'Mahmoud Dahoud', 'Syria', 'MF', 1, 0, 0, 1, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(22, 'Christian Pulisic', 'USA', 'MF', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(23, 'Shinji Kagawa', 'Japan ', 'MF', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(24, 'Marian Sarr', 'Germany', 'DF', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(25, 'Luca Unbehaun', 'Germany', 'GK', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(26, 'Lukasz Piszczek', 'Poland', 'DF', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(28, 'Axel Witsel', 'Belgium', 'MF', 1, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png'),
(32, 'Dzenis Burnic', 'Germany', 'MF', 0, 0, 0, 0, 'Borussia Dortmund', 'LogoCLB\\Bundesliga\\dortmund.png');

-- --------------------------------------------------------

--
-- Table structure for table `dusseldorf`
--

CREATE TABLE `dusseldorf` (
  `soao` int(2) NOT NULL,
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
-- Dumping data for table `dusseldorf`
--

INSERT INTO `dusseldorf` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Michael Rensing', 'Germany', 'GK', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(3, 'Andre Hoffmann', 'Germany', 'DF', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(5, 'Kaan Ayhan', 'Turkey', 'DF', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(6, 'Alfredo Morales', 'Germany', 'DF', 1, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(8, 'Jerome Kiesewetter', 'USA', 'FW', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(9, 'Benito Raman', 'Belgium', 'FW', 1, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(10, 'Marvin Ducksch', 'Germany', 'FW', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(11, 'Kenan Karaman', 'Germany', 'FW', 0, 1, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(13, 'Adam Bodzek', 'Germany', 'MF', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(14, 'Markus Suttner', 'Austria', 'DF', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(16, 'Jaroslav Drobny', 'Czech', 'GK', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(19, 'Lars Unnerstall', 'Germany', 'GK', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(20, 'Dodi Lukebakio', 'Belgium', 'MF', 1, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(22, 'Kevin Stoger', 'Austria', 'MF', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(23, 'Niko Gießelmann', 'Germany', 'DF', 0, 1, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(25, 'Matthias Zimmermann', 'Germany', 'DF', 1, 1, 0, 1, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(27, 'Stefan Reisinger', 'Germany', 'FW', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(28, 'Rouwen Hennings', 'Germany', 'FW', 0, 0, 0, 1, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(31, 'Marcel Sobottka', 'Germany', 'DF', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(34, 'Evans Nyarko', 'Germany', 'DF', 0, 0, 0, 0, 'Fortuna Düsseldorf', 'LogoCLB\\Bundesliga\\dusseldorf.png');

-- --------------------------------------------------------

--
-- Table structure for table `frankfurt`
--

CREATE TABLE `frankfurt` (
  `soao` int(2) NOT NULL,
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
-- Dumping data for table `frankfurt`
--

INSERT INTO `frankfurt` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Frederik Ronnow', 'Denmark', 'GK', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(2, 'Obite Evan N\'Dicka', 'France', 'DF', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(3, 'Christopher Schorch', 'Germany', 'DF', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(4, 'Ante Rebic', 'Croatia', 'MF', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(5, 'Gelson Fernandes', 'Switzerland', 'MF', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(6, 'Jonathan De Guzman', 'Netherlands', 'MF', 0, 1, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(7, 'Danny Blum', 'Germany', 'MF', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(9, 'Sebastian Haller', 'France', 'FW', 3, 1, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(10, 'Filip Kostic', 'Serbia', 'MF', 0, 0, 0, 1, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(11, 'Mijat Gacinovic', 'Serbia', 'MF', 0, 1, 0, 1, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(13, 'Carlos Salcedo Herna', 'Mexico', 'DF', 0, 0, 0, 1, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(14, 'La\'Vere Corbin-Ong', 'Canada ', 'DF', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(15, 'Jetro Willems', 'Netherlands', 'DF', 0, 0, 1, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(18, 'Almamy Toure', 'Mali', 'DF', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(19, 'David Abraham', 'Argentina', 'DF', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(20, 'Fabian-Herbert Burde', 'Germany', 'MF', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(21, 'Marc Stendera', 'Germany', 'MF', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(22, 'Timothy Chandler', 'USA', 'DF', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(23, 'Bamba Anderson', 'Brazil', 'DF', 0, 0, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(24, 'Danny da Costa', 'Germany', 'DF', 0, 1, 0, 0, 'Eintracht Frankfurt', 'LogoCLB\\Bundesliga\\frankfurt.png');

-- --------------------------------------------------------

--
-- Table structure for table `freiburg`
--

CREATE TABLE `freiburg` (
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
-- Dumping data for table `freiburg`
--

INSERT INTO `freiburg` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Alexander Schwolow', 'Germany', 'GK', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(3, 'Philipp Lienhart', 'Austria', 'DF', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(5, 'Manuel Gulde', 'Germany', 'DF', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(6, 'Amir Abrashi', 'Albania', 'MF', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(7, 'Florian Niederlechner', 'Germany', 'FW', 0, 0, 0, 1, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(8, 'Mike Frantz', 'Germany', 'FW', 0, 1, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(9, 'Lucas Holer', 'Germany', 'FW', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(11, 'Luca Waldschmidt', 'Germany', 'FW', 1, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(13, 'Marco Terrazzino', 'Italy', 'FW', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(14, 'Patrick Kammerbauer', 'Germany', 'DF', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(15, 'Pascal Stenzel', 'Germany', 'DF', 0, 0, 1, 2, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(16, 'Yoric Ravet', 'France', 'FW', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(17, 'Lukas Kubler', 'Germany', 'DF', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(18, 'Nils Petersen', 'Germany', 'FW', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(20, 'Jerome Gondorf', 'Germany', 'MF', 2, 0, 0, 2, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(21, 'Brandon Borrello', 'Austrilia', 'MF', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(23, 'Dominique Heintz', 'Germany', 'DF', 1, 1, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(25, 'Robin Koch', 'Germany', 'DF', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(26, 'Mark Flekken', 'Netherlands', 'GK', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png'),
(27, 'Nicolas Hofler', 'Germany', 'MF', 0, 0, 0, 0, 'SC Freiburg', 'LogoCLB\\Bundesliga\\freiburg.png');

-- --------------------------------------------------------

--
-- Table structure for table `hannover96`
--

CREATE TABLE `hannover96` (
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
-- Dumping data for table `hannover96`
--

INSERT INTO `hannover96` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Philipp Tschauner', 'Germany', 'GK', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(2, 'Josip Elez', 'Croatia', 'DF', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(3, 'Miiko Albornoz', 'Chile', 'DF', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(4, 'Julian Korb', 'Germany', 'DF', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(5, 'Felipe Trevizan Martins', 'Brazil', 'DF', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(6, 'Marvin Bakalorz', 'Germany', 'MF', 1, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(7, 'Edgar Prib', 'Germany', 'MF', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(8, 'Walace Souza Silva', 'Brazil', 'MF', 0, 1, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(9, 'Jonathas de Jesus', 'Brazil', 'FW', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(10, 'Genki Haraguchi', 'Japan', 'FW', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(11, 'Milot Rashica', 'Albania', 'FW', 0, 1, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(13, 'Takuma Asano', 'Togo', 'MF', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(14, 'Kevin Akpoguma', 'Germany', 'DF', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(16, 'Sebastian Soto', 'USA', 'FW', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(17, 'Bobby Wood', 'USA', 'FW', 0, 0, 0, 1, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(18, 'Iver Fossum', 'Germany', 'MF', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(19, 'Samuel Radlinger', 'Austria', 'GK', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(21, 'Nicolai Muller', 'Germany', 'MF', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(22, 'Matthias Ostrzolek', 'Germany', 'DF', 0, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(23, 'Theodor Gebre Selassie', 'Czech Republic', 'DF', 1, 0, 0, 0, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png'),
(24, 'Niclas Fullkrug', 'Germany', 'FW', 1, 0, 0, 1, 'Hannover 96', 'LogoCLB\\Bundesliga\\hannover.png');

-- --------------------------------------------------------

--
-- Table structure for table `hertha-berlin`
--

CREATE TABLE `hertha-berlin` (
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
-- Dumping data for table `hertha-berlin`
--

INSERT INTO `hertha-berlin` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Thomas Kraft', 'Germany', 'GK', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(2, 'Peter Pekarik', 'Slovakia', 'DF', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(3, 'Per Skjelbred', 'Noway', 'MF', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(4, 'Karim Rekik', 'Netherlands', 'DF', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(5, 'Niklas Stark', 'Germany', 'MF', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(6, 'Vladimir Darida', 'Czech', 'MF', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(7, 'Alexander Esswein', 'Germany', 'FW', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(8, 'Salomon Kalou', 'Ivory Coast', 'FW', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(10, 'Ondrej Duda', 'Slovakia', 'MF', 3, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(11, 'Matthew Leckie', 'Australia', 'FW', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(12, 'Dennis Smarsch', 'Germany', 'GK', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(13, 'Klünter Lukas', 'Germany', 'DF', 0, 0, 0, 1, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(14, 'Pascal Kopke', 'Germany', 'FW', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(15, 'Marko Grujic', 'Serbia', 'MF', 0, 0, 0, 1, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(16, 'Javairo Dilrosun', 'Netherlands', 'MF', 1, 1, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(17, 'Maximilian Mittelstadt', 'Germany', 'DF', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(19, 'Vedad Ibisevic', 'Bosnia-Herzegovina', 'FW', 1, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(20, 'Valentino Lazaro', 'Austria', 'MF', 0, 1, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(25, 'Jordan Torunarigha', 'Germany', 'DF', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(27, 'Davie Selke', 'Germany', 'FW', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(28, 'Fabian Lustenberger', 'Switzerland', 'MF', 0, 0, 0, 0, 'Hertha BSC', 'LogoCLB\\Bundesliga\\hertha-berlin.png');

-- --------------------------------------------------------

--
-- Table structure for table `hoffenheim`
--

CREATE TABLE `hoffenheim` (
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
-- Dumping data for table `hoffenheim`
--

INSERT INTO `hoffenheim` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Oliver Baumann', 'Germany', 'GK', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(2, 'Joshua Brenet', 'Netherlands', 'DF', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(3, 'Pavel Kaderabek', 'Czech', 'DF', 0, 0, 0, 2, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(4, 'Ermin Bicakcic', 'Bosnia-Herzegovina', 'DF', 0, 1, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(6, 'Havard Nordtveit', 'Norway', 'MF', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(8, 'Dennis Geiger', 'Germany', 'MF', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(9, 'Reiss Nelson', 'England', 'FW', 1, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(10, 'Kerem Demirbay', 'Germany', 'MF', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(11, 'Florian Grillitsch', 'Austria', 'MF', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(13, 'Leonardo Bittencourt', 'Germany', 'MF', 0, 1, 0, 1, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(15, 'Kasim Adams Nuhu', 'Ghana', 'DF', 0, 0, 0, 1, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(16, 'Nico Schulz', 'Germany', 'DF', 0, 1, 0, 1, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(18, 'Moody Chana', 'Germany', 'DF', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(19, 'Ishak Belfodil', 'France', 'FW', 0, 0, 0, 1, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(21, 'Benjamin Hubner', 'Germany', 'DF', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(22, 'Kevin Vogt', 'Germany', 'MF', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(23, 'Felipe Rodrigues Pires', 'Brazil', 'MF', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(26, 'David Otto', 'Germany', 'FW', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(27, 'Andrej Kramaric', 'Croatia', 'FW', 1, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(28, 'Szalai Ádám', 'Hungary', 'FW', 3, 0, 0, 1, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(33, 'Alexander Stolz', 'Germany', 'GK', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(34, 'Joelinton', 'Brazil', 'FW', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(44, 'Nicolas Wahling', 'Germany', 'FW', 0, 0, 0, 0, '1899 Hoffenheim', 'LogoCLB\\Bundesliga\\hoffenheim.png');

-- --------------------------------------------------------

--
-- Table structure for table `leipzig`
--

CREATE TABLE `leipzig` (
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
-- Dumping data for table `leipzig`
--

INSERT INTO `leipzig` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Gulácsi Péter', 'Hungary', 'GK', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(3, 'Marcelo Saracchi', 'Uruguay', 'DF', 0, 0, 0, 1, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(4, 'Willi Orban', 'Germany', 'DF', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(5, 'Dayot Upamecano', 'France', 'DF', 0, 0, 0, 1, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(6, 'Ibrahima Konate', 'France', 'DF', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(7, 'Marcel Sabitzer', 'Austria', 'FW', 0, 1, 0, 1, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(8, 'Amadou Haidara', 'Mali', 'MF', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(9, 'Yussuf Poulsen', 'Denmark', 'FW', 1, 1, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(10, 'Emil Forsberg', 'Sweden', 'MF', 0, 2, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(11, 'Timo Werner', 'Germany', 'FW', 2, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(13, 'Stefan Ilsanker', 'Austria', 'MF', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(14, 'Tyler Adams', 'USA', 'MF', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(16, 'Lukas Klostermann', 'Germany', 'DF', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(17, 'Armindo Tue Bangna', 'Portugal', 'FW', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(18, 'Emile Smith Rowe', 'England', 'FW', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(20, 'Matheus Cunha', 'Brazil', 'FW', 0, 0, 0, 1, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(21, 'Marius Muller', 'Germany', 'GK', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(22, 'Nordi Mukiele Mulere', 'France', 'DF', 0, 0, 0, 1, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(23, 'Marcel Halstenberg', 'Germany', 'DF', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(26, 'Niclas Stierlin', 'Germany', 'MF', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(27, 'Konrad Laimer', 'Austria ', 'MF', 0, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png'),
(29, 'Jean-Kevin Augustin', 'France', 'FW', 2, 0, 0, 0, 'RB Leipzig', 'LogoCLB\\Bundesliga\\leipzig.png');

-- --------------------------------------------------------

--
-- Table structure for table `mainz05`
--

CREATE TABLE `mainz05` (
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
-- Dumping data for table `mainz05`
--

INSERT INTO `mainz05` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(2, 'Giulio Donati', 'Italy', 'DF', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(3, 'Aaron Martin', 'England', 'DF', 0, 1, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(5, 'Jean-Paul Boetius', 'Netherlands', 'MF', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(6, 'Danny Latza', 'Germany', 'DF', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(7, 'Robin Quaison', 'Swenden', 'MF', 0, 1, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(8, 'Levin Oztunali', 'Germany', 'MF', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(9, 'Jean-Philippe Mateta', 'France', 'FW', 1, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(10, 'Alexandru Maxim', 'Romania', 'MF', 1, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(14, 'Pierre Kunde', 'Cameroon', 'MF', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(16, 'Stefan Bell', 'Germany', 'DF', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(18, 'Daniel Brosinski', 'Germany', 'MF', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(19, 'Moussa Niakhate', 'France', 'DF', 0, 0, 0, 1, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(20, 'Anthony Ujah', 'Nigeria', 'FW', 2, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(21, 'Karim Onisiwo', 'Austria', 'MF', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(22, 'Heinz Muller', 'Germany', 'GK', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(23, 'Phillipp Mwene', 'Austria', 'DF', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(24, 'Gaetan Bussmann', 'France', 'DF', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(28, 'Issah Abass', 'Ghana', 'FW', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(29, 'Jonathan Burkardt', 'Germany', 'FW', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(33, 'Jannik Huth', 'Germany', 'GK', 0, 0, 0, 0, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png'),
(34, 'Bote Baku', 'Germany', 'MF', 0, 0, 0, 1, 'FSV Mainz 05', 'LogoCLB\\Bundesliga\\mainz05.png');

-- --------------------------------------------------------

--
-- Table structure for table `monchengladbach`
--

CREATE TABLE `monchengladbach` (
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
-- Dumping data for table `monchengladbach`
--

INSERT INTO `monchengladbach` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Yann Sommer', 'Switzerland', 'GK', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(3, 'Michael Lang', 'Switzerland', 'DF', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(5, 'Tobias Strobl', 'Germany', 'DF', 0, 1, 0, 1, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(6, 'Christoph Kramer', 'Germany', 'MF', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(7, 'Patrick Herrmann', 'Germany', 'FW', 1, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(8, 'Denis Lemi Zakaria Lako Lado', 'Switzerland', 'MF', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(10, 'Thorgan Hazard', 'Belgium', 'MF', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(11, 'Rafael De Araujo', 'Brazil', 'FW', 0, 1, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(13, 'Lars Stindl', 'Germany', 'MF', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(14, 'Alassane Plea', 'France', 'FW', 1, 1, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(15, 'Louis Beyer', 'Germany', 'DF', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(16, 'Ibrahima Traore', 'Guinea', 'MF', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(17, 'Oscar Wendt', 'Sweden', 'DF', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(18, 'Josip Drmic', 'Switzerland', 'FW', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(19, 'Fabian Johnson', 'USA', 'DF', 1, 0, 0, 1, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(21, 'Tobias Sippel', 'Germany', 'GK', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(22, 'Laszlo Benes', 'Slovakia', 'MF', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(23, 'Jonas Hofmann', 'Germany', 'MF', 1, 1, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(24, 'Tony Jantschke', 'Germany', 'DF', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(26, 'Torben Musel', 'Germany', 'FW', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(27, 'Mickael Cuisance', 'France', 'MF', 0, 0, 0, 0, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(28, 'Matthias Ginter', 'Germany', 'DF', 1, 0, 0, 1, 'Bor. Mönchengladbach', 'LogoCLB\\Bundesliga\\monchengladbach.png');

-- --------------------------------------------------------

--
-- Table structure for table `nurnberg`
--

CREATE TABLE `nurnberg` (
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
-- Dumping data for table `nurnberg`
--

INSERT INTO `nurnberg` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Fabian Bredlow', 'Germany', 'GK', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(2, 'Kevin Goden', 'Germany', 'DF', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(4, 'Ewerton Almeida', 'Brazil', 'DF', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(7, 'Edgard Nicaise Constant', 'Cameroon', 'FW', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(8, 'Robert Bauer', 'Germany', 'MF', 0, 0, 0, 1, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(9, 'Mikael Ishak', 'Sweden', 'FW', 1, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(10, 'Sebastian Kerk', 'Germany', 'MF', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(11, 'Adam Zrelak', 'Slovakia', 'FW', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(14, 'Yuya Kubo', 'Japan', 'FW', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(16, 'Ivo Ilicevic', 'Croatia', 'MF', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(17, 'Löwen Eduard', 'Germany', 'DF', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(18, 'Hanno Behrens', 'Germany', 'MF', 0, 1, 0, 1, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(19, 'Torles Knoll', 'Germany', 'FW', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(20, 'Lukas Jager', 'Austria', 'DF', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(21, 'Federico Palacios Martinez', 'Germany', 'FW', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(22, 'Enrico Valentini', 'Italy', 'MF', 0, 1, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(23, 'Tim Leibold', 'Germany', 'DF', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(24, 'Virgil Misidjan', 'Netherlands', 'FW', 1, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(26, 'Christian Mathenia', 'Germany', 'GK', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(28, 'Lukas Muhl', 'Germany', 'DF', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(29, 'Patrick Erras', 'Germany', 'MF', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(33, 'Georg Margreitter', 'Austria', 'DF', 0, 0, 0, 0, 'FC Nürnberg', 'LogoCLB\\Bundesliga\\nurnberg.png');

-- --------------------------------------------------------

--
-- Table structure for table `schalke04`
--

CREATE TABLE `schalke04` (
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
-- Dumping data for table `schalke04`
--

INSERT INTO `schalke04` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Ralf Fahrmann', 'Germany', 'GK', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(2, 'Weston McKennie', 'USA', 'MF', 0, 0, 1, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(3, 'Hamza Mendyl', 'Morocco', 'DF', 0, 0, 0, 1, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(5, 'Matija Nastasic', 'Serbia', 'DF', 0, 0, 1, 1, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(6, 'Omar Mascarell', 'Spain', 'MF', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(7, 'Marc Uth', 'Germany', 'FW', 0, 1, 0, 1, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(8, 'Suat Serdar', 'Germany', 'MF', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(9, 'Franco di Santo', 'Argentina', 'FW', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(10, 'Nabil Bentaleb', 'Algeria', 'MF', 1, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(11, 'Yevhen Konoplyanka', 'Ukraine', 'MF', 0, 0, 1, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(13, 'Sebastian Rudy', 'Germany', 'DF', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(14, 'Abdul Rahman', 'Indonesia', 'DF', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(15, 'Ahmed Kutucu', 'Germany', 'MF', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(17, 'Benjamin Stambouli', 'France', 'MF', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(18, 'Daniel Caligiuri', 'Germany', 'MF', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(19, 'Guido Burgstaller', 'Austria', 'FW', 0, 0, 0, 1, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(21, 'Sascha Riether', 'Germany', 'DF', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(22, 'Steven Skrzybski', 'Germany', 'FW', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(23, 'Cedric Teuchert', 'Germany', 'FW', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(24, 'Bastian Oczipka', 'Germany', 'DF', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(35, 'Alexander Nubel', 'Germany', 'GK', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(36, 'Breel Donald Embolo', 'Cameroon', 'FW', 1, 1, 0, 1, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png'),
(40, 'Haji Wright', 'USA', 'FW', 0, 0, 0, 0, 'FC Schalke 04', 'LogoCLB\\Bundesliga\\schalke04.png');

-- --------------------------------------------------------

--
-- Table structure for table `stuttgart`
--

CREATE TABLE `stuttgart` (
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
-- Dumping data for table `stuttgart`
--

INSERT INTO `stuttgart` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Ron-Robert Zieler', 'Germany', 'GK', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(2, 'Emiliano Insua', 'Argentina', 'DF', 1, 1, 0, 1, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(3, 'Dennis Aogo', 'Germany', 'DF', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(4, 'Marc-Oliver Kempf', 'Germany', 'DF', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(5, 'Timo Baumgartl', 'Germany', 'DF', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(6, 'Santiago Caseres', 'Argentina', 'MF', 0, 0, 0, 2, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(7, 'Pablo Maffeo Becerra', 'Spain', 'DF', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(8, 'Gonzalo Castro', 'Germany', 'MF', 0, 1, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(9, 'Steven Zuber', 'Switzerland', 'MF', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(10, 'Daniel Didavi', 'Germany', 'MF', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(11, 'Anastasios Donis', 'Greece', 'FW', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(13, 'Jens Grahl', 'Germany', 'GK', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(14, 'Alexander Esswein', 'Germany', 'FW', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(17, 'Erik Thommy', 'Germany', 'MF', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(18, 'Ozan Kabak', 'Turkey', 'DF', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(19, 'Chadrac Akolo', 'Congo DR', 'FW', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(20, 'Christian Gentner', 'Germany', 'MF', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(21, 'Benjamin Pavard', 'France', 'MF', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(22, 'Nicolas Gonzalez', 'Argentina', 'FW', 0, 1, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(23, 'Antonis Aidonis', 'Germany', 'DF', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(25, 'Leon Dajaku', 'Germany', 'FW', 0, 0, 0, 0, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(27, 'Mario Gomez', 'Germany', 'FW', 2, 0, 0, 1, 'VfB Stuttgart', 'LogoCLB\\Bundesliga\\stuttgart.png');

-- --------------------------------------------------------

--
-- Table structure for table `werder-bremen`
--

CREATE TABLE `werder-bremen` (
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
-- Dumping data for table `werder-bremen`
--

INSERT INTO `werder-bremen` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Jiri Pavlenka', 'Czech', 'GK', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(2, 'Felix Beijmo', 'Sweden', 'DF', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(4, 'Claudio Pizarro', 'Peru ', 'FW', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(5, 'Ludwig Augustinsson', 'Sweden', 'DF', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(6, 'Kevin Mohwald', 'Germany', 'MF', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(7, 'Florian Kainz', 'Austria', 'MF', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(8, 'Yuya Osako', 'Japan', 'FW', 1, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(9, 'Martin Harnik', 'Austria', 'MF', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(10, 'Max Kruse', 'Germany', 'FW', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(11, 'Milot Rashica', 'Kosovo', 'FW', 1, 1, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(13, 'Milos Veljkovic', 'Switzerland', 'DF', 0, 0, 0, 1, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(15, 'Sebastian Langkamp', 'Germany', 'DF', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(17, 'Nuri Sahin', 'Turkey', 'MF', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(18, 'Niklas Moisander', 'Finland', 'DF', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(19, 'Joshua Sargent', 'USA', 'FW', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(20, 'Aron Johannsson', 'USA', 'FW', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(23, 'Theodor Gebre Selassie', 'Czech', 'DF', 1, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(27, 'Stefanos Kapino', 'Greece', 'GK', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(30, 'Davy Klaassen', 'Netherlands', 'MF', 0, 1, 0, 1, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(34, 'Jean-Manuel Mbom', 'Germany', 'MF', 0, 0, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(35, 'Maximilian Eggestein', 'Germany', 'MF', 1, 1, 0, 0, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(44, 'Philipp Bargfrede', 'Germany', 'MF', 0, 0, 0, 2, 'Werder Bremen', 'LogoCLB\\Bundesliga\\werder-bremen.png');

-- --------------------------------------------------------

--
-- Table structure for table `wolfsburg`
--

CREATE TABLE `wolfsburg` (
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
-- Dumping data for table `wolfsburg`
--

INSERT INTO `wolfsburg` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Koen Casteels', 'Belgium', 'GK', 0, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(2, 'William Asevedo Furtado', 'Brazil', 'DF', 0, 0, 0, 1, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(3, 'Paul Verhaegh', 'Netherlands', 'DF', 0, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(4, 'Ignacio Camacho', 'Spain', 'MF', 0, 0, 0, 2, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(5, 'Jeffrey Bruma', 'Netherlands', 'DF', 0, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(7, 'Josip Brekalo', 'Croatia', 'FW', 0, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(8, 'Renato Steffen', 'Switzerland', 'MF', 1, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(9, 'Wout Weghorst', 'Netherlands', 'FW', 1, 0, 0, 1, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(10, 'Yunus Malli', 'Germany', 'MF', 1, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(11, 'Felix Klaus', 'Germany', 'FW', 0, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(12, 'Pavao Pervan', 'Austria', 'GK', 0, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(13, 'Yannick Gerhardt', 'Germany', 'MF', 0, 0, 0, 1, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(14, 'Admir Mehmedi', 'Switzerland', 'FW', 1, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(15, 'Jerome Roussillon', 'France', 'MF', 0, 1, 0, 1, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(16, 'Jakub Blaszczykowski', 'Poland', 'MF', 0, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(17, 'Felix Uduokhai', 'Germany', 'DF', 0, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(23, 'Josuha Guilavogui', 'France', 'MF', 0, 0, 0, 1, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(24, 'Sebastian Jung', 'Spain', 'DF', 0, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(25, 'Brooks John Anthony', 'USA', 'DF', 1, 1, 0, 1, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(27, 'Maximilian Arnold', 'Germany', 'MF', 0, 3, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(31, 'Robin Knoche', 'Germany', 'DF', 0, 0, 0, 0, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(33, 'Daniel Ginczek', 'Germany', 'FW', 1, 0, 0, 1, 'VfL Wolfsburg', 'LogoCLB\\Bundesliga\\wolfsburg.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
