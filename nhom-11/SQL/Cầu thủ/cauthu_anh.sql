-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2019 at 03:47 PM
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
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arsenal`
--

INSERT INTO `arsenal` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Petr Cech', 'Czech', 'GK'),
(19, 'Bern Leno', 'Germany', 'GK'),
(2, 'Hector Bellerin', 'Spain', 'DF'),
(5, 'Sokratis', 'Greece', 'DF'),
(6, 'Laurent Koscielly', 'France', 'DF'),
(18, 'Nacho Monreal', 'Spain', 'DF'),
(20, 'Skodran Mustafi', 'Germany', 'DF'),
(31, 'Sead Kolasinac', 'Bosnia', 'DF'),
(8, 'Aaron Ramsey', 'Wales', 'MF'),
(10, 'Mesut Ozil', 'Germany', 'MF'),
(11, 'Lucas Torreira', 'Uruguay', 'MF'),
(34, 'Granit Xhaka', 'Switzerland', 'MF'),
(29, 'Matteo Guendouzi', 'France', 'MF'),
(7, 'Henrikh Mkhitaryan', 'Armenia', 'MF'),
(22, 'Dennis Suarez', 'Spain', 'MF'),
(4, 'Mohamed Elneny', 'Egypt', 'MF'),
(9, 'Alexsandre Lacazette', 'France', 'FW'),
(14, 'Aubameyang', 'Gabon', 'FW'),
(17, 'Alex Iwobi', 'Nigeria', 'FW'),
(23, 'Danny Welbeck', 'England', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `bournemouth`
--

CREATE TABLE `bournemouth` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bournemouth`
--

INSERT INTO `bournemouth` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Artur Boruc', 'Poland', 'GK'),
(2, 'Simon Francis', 'England', 'DF'),
(3, 'Steve Cook', 'England', 'DF'),
(4, 'Dan Gosling', 'England ', 'MF'),
(5, 'Nathan Ake', 'Holland', 'DF'),
(6, 'Adrew Surman', 'England', 'MF'),
(8, 'Jefferson Lerma', 'Colombia', 'MF'),
(9, 'Lys Mousset', 'France', 'FW'),
(10, 'Jordan Ibe', 'England', 'MF'),
(11, 'Charlie Daniels', 'England', 'DF'),
(13, 'Calum Wilson', 'England', 'FW'),
(15, 'Adam Smith', 'England', 'DF'),
(16, 'Lewis Cook', 'England', 'MF'),
(17, 'Joshua King', 'Norway', 'FW'),
(19, 'Junior Stanislas', 'England', 'MF'),
(20, 'David Brooks', 'Wales', 'MF'),
(21, 'Diego Rico', 'Spain', 'DF'),
(22, 'Emerson Hyndman', 'USA', 'MF'),
(23, 'Nathaniel Clyne', 'England', 'DF'),
(27, 'Asmir Begovic', 'Bosnia', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `brighton`
--

CREATE TABLE `brighton` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brighton`
--

INSERT INTO `brighton` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Matthew Ryan', 'Australia', 'GK'),
(2, 'Bruno', 'Spain', 'DF'),
(3, 'Geatan Bong', 'Ghana', 'DF'),
(4, 'Shane Duffy', 'Ireland', 'DF'),
(5, 'Lewis Dunk', 'England', 'DF'),
(6, 'Dale Stephen', 'England', 'MF'),
(7, 'Beram Kayal', 'Israel', 'MF'),
(8, 'Yves Bissouma', 'Mali', 'MF'),
(9, 'Jurgen Locadia', 'Netherlands', 'FW'),
(10, 'Florin Andone', 'Romania', 'FW'),
(11, 'Anthony Knockaert', 'France', 'MF'),
(13, 'Pascal Grob', 'Germany', 'MF'),
(14, 'Leon Balogun', 'Nigeria', 'DF'),
(16, 'Alireza Jahanbakhsh', 'Iran', 'MF'),
(17, 'Glen Murray', 'England', 'FW'),
(19, 'José Izquierdo', 'Colombia', 'MF'),
(22, 'Martin Montoya', 'Spain', 'DF'),
(23, 'Jason Steele', 'England', 'GK'),
(30, 'Bernado', 'Brazil', 'DF'),
(33, 'Dan Burn', 'England', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `burnley`
--

CREATE TABLE `burnley` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `burnley`
--

INSERT INTO `burnley` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Tom Heaton', 'England', 'GK'),
(2, 'Mathew Lowton', 'England', 'DF'),
(3, 'Charlie Taylor', 'England', 'DF'),
(4, 'Jack Cork', 'England', 'MF'),
(5, 'James Tarkowski', 'England', 'DF'),
(6, 'Ben Mee', 'England', 'DF'),
(7, 'Jóhann Guðmundsson', 'Iceland', 'MF'),
(10, 'Ashley Barnes', 'England', 'FW'),
(11, 'Chris Wood', 'Australia', 'FW'),
(12, 'Robbie Brady', 'Ireland', 'MF'),
(13, 'Jeff Hendrick', 'Ireland', 'MF'),
(14, 'Ben Gibson', 'England', 'MF'),
(15, 'Peter Crouch', 'England', 'FW'),
(16, 'Steven Defour', 'Belgium', 'MF'),
(18, 'Ashley Westwood', 'England', 'MF'),
(20, 'Joe Hart', 'England', 'GK'),
(29, 'Nick Pope', 'England', 'GK'),
(25, 'Aaron Lennon', 'England', 'MF'),
(26, 'Phil Bardsley', 'Scotland', 'DF'),
(23, 'Steven Ward', 'Iceland', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `cardiff`
--

CREATE TABLE `cardiff` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardiff`
--

INSERT INTO `cardiff` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Neil Etheridge', 'Philipines', 'GK'),
(2, 'Lee Peltier', 'England', 'DF'),
(3, 'Joe Bennet', 'England', 'DF'),
(4, 'Sean Morrison', 'England', 'DF'),
(5, 'Bruno Manga', 'Gabon', 'DF'),
(6, 'Jazz Richard', 'Wales', 'DF'),
(7, 'Hary Alter', 'Ireland', 'MF'),
(8, 'Joe Rails', 'England', 'MF'),
(9, 'Danny Ward', 'England', 'FW'),
(10, 'Kennet Zohore', 'Denmark', 'FW'),
(11, 'Josh Murphy', 'England', 'MF'),
(12, 'Alex Smithies', 'England', 'GK'),
(13, 'Callum Paterson', 'Scotland', 'MF'),
(14, 'Bobby Reid', 'England', 'FW'),
(15, 'Leandro Bacuna', 'Curacao', 'MF'),
(17, 'Aron Gunnarson', 'Iceland', 'MF'),
(18, 'Greg Cunningham', 'Ireland', 'DF'),
(19, 'Mendez-Laing', 'England', 'MF'),
(21, 'Víctor Camarasa ', 'Spain', 'MF'),
(33, 'Junior Hoilet', 'Canada', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `chelsea`
--

CREATE TABLE `chelsea` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chelsea`
--

INSERT INTO `chelsea` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Kepa Arrizabalaga', 'Spain', 'GK'),
(2, 'Antonio Rudiger', 'Germany', 'DF'),
(3, 'Marcos Alonso', 'Spain', 'DF'),
(5, 'Jorginho', 'Italia', 'MF'),
(6, 'Danny Drinkwater', 'England', 'MF'),
(7, 'N\'golo Kante', 'France', 'MF'),
(8, 'Ross Barkley', 'England', 'MF'),
(9, 'Gonzalo Higuain', 'Argentina', 'FW'),
(10, 'Eden Hazard', 'Belgium', 'MF'),
(11, 'Pedro', 'Spain', 'FW'),
(12, 'Ruben Loftus-cheek', 'England', 'MF'),
(13, 'Willy Cabalero', 'Argentina', 'GK'),
(15, 'Victor Moses', 'Nigeria', 'MF'),
(18, 'Oliver Giroud', 'France', 'FW'),
(20, 'Callum Hudson-Odoi', 'England', 'MF'),
(22, 'Willian', 'Brazil', 'MF'),
(24, 'Gary Cahill', 'England', 'DF'),
(28, 'Cesar Azpilicueta', 'Spain', 'DF'),
(30, 'David Luiz', 'Brazil', 'DF'),
(27, 'Andreas Christensen', 'Denmark', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `everton`
--

CREATE TABLE `everton` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `everton`
--

INSERT INTO `everton` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Jordan Pickford', 'England', 'GK'),
(22, 'Maarten Stekelenburg', 'Netherlands', 'GK'),
(3, 'Leighton Baines', 'England', 'DF'),
(4, 'Michael Keane', 'England', 'DF'),
(5, 'Kurt Zouma', 'France', 'DF'),
(6, 'Phil Jagielka', 'England', 'DF'),
(12, 'Lucas Digne', 'France', 'DF'),
(13, 'Yerry Mina', 'Colombia', 'DF'),
(23, 'Seamus Coleman', 'Ireland', 'DF'),
(43, 'Jonjoe Kenny', 'England', 'DF'),
(8, 'Andre Gomes', 'Portugal', 'MF'),
(10, 'Gylfi Sigurdsson', 'Iceland', 'MF'),
(16, 'James McCarthy', 'Iceland', 'MF'),
(17, 'Idrissa Gueye', 'Ghana', 'MF'),
(18, 'Morgan Schneiderlin', 'France', 'MF'),
(20, 'Bernard', 'Brazil', 'MF'),
(26, 'Tom Davies', 'England', 'MF'),
(11, 'Theo Walcott', 'England', 'FW'),
(14, 'Cenk Tosun', 'Turkey', 'FW'),
(30, 'Richarlison', 'Brazil', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `fulham`
--

CREATE TABLE `fulham` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fulham`
--

INSERT INTO `fulham` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Marcus Bettinelli', 'England', 'GK'),
(3, 'Ryan Sessegnon', 'England', 'MF'),
(4, 'Denis Odoi', 'Belgium', 'DF'),
(5, 'Callum Chambers', 'England', 'DF'),
(6, 'Kevin McDonald', 'Scotland', 'MF'),
(9, 'Alexsandar Mitrovic', 'Serbia', 'FW'),
(10, 'Tom Cairney', 'Scotland', 'MF'),
(11, 'Floyd Ayite', 'Togo', 'FW'),
(12, 'Ryan Babel', 'Netherlands', 'MF'),
(13, 'Tim Ream', 'USA', 'DF'),
(14, 'André Schürrle', 'Germany', 'FW'),
(19, 'Luciano Vietto', 'Argentina', 'FW'),
(20, 'Maxime Marchand', 'France', 'DF'),
(21, 'Fosu-Mensah ', 'Netherlands', 'DF'),
(22, 'Cyrus Christle', 'Ireland', 'DF'),
(23, 'Joe Bryan', 'England', 'DF'),
(24, 'Jean Seri', 'Ireland', 'MF'),
(25, 'Sergio Rico', 'Spain', 'GK'),
(26, 'Alfie Mawson', 'England', 'DF'),
(30, 'Lazar Markovic', 'Serbia', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `huddersfields`
--

CREATE TABLE `huddersfields` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `huddersfields`
--

INSERT INTO `huddersfields` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Jonas Lossl', 'Denmark', 'GK'),
(2, 'Tommy Smith', 'England', 'DF'),
(3, 'Scott Malone', 'England', 'DF'),
(4, 'Dean Whitehead', 'England', 'MF'),
(6, 'Jonathan Hogg', 'England', 'MF'),
(7, 'Sean Scannell', 'Ireland', 'MF'),
(8, 'Phillip Billing', 'Denmark', 'MF'),
(9, 'Elias Kachunga', 'Congo', 'FW'),
(10, 'Aaron Mooy', 'Australia', 'MF'),
(13, 'Joel Coleman', 'England', 'GK'),
(18, 'Joe Lolley', 'England', 'MF'),
(19, 'Danny Willams', 'USA', 'MF'),
(20, 'Laurent Depoitre', 'Belgium', 'FW'),
(22, 'Tom Ince', 'England', 'MF'),
(23, 'Collin Quaner', 'Germany', 'FW'),
(24, 'Steve Mounier', 'Benin', 'FW'),
(27, 'Jon Gorenc Stankovic', 'Serbia', 'DF'),
(31, 'Ryan Schofield', 'England', 'GK'),
(44, 'Michael Hafele', 'Germany', 'DF'),
(45, 'Kasey Palmer', 'England', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `leicester`
--

CREATE TABLE `leicester` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leicester`
--

INSERT INTO `leicester` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Kasper Schmeichel ', 'Denamark', 'GK'),
(3, 'Ben Chilwell', 'England', 'DF'),
(5, 'Wes Morgan', 'Jamaica', 'DF'),
(6, 'Roberth Huth', 'Germany', 'DF'),
(7, 'Ahmed Musa', 'Nigeria', 'MF'),
(9, 'Jamie Vardy', 'England', 'FW'),
(10, 'Andy King', 'England', 'MF'),
(11, 'Marc Albrighton', 'England', 'MF'),
(12, 'Ben Hamer', 'England', 'GK'),
(13, 'Daniel Amartey', 'Ghana', 'MF'),
(17, 'Danny Simpson', 'England', 'DF'),
(20, 'Okazaki Shinji', 'Japan', 'FW'),
(22, 'Demarai Gray', 'England', 'FW'),
(28, 'Christian Fuchs', 'Denmark', 'DF'),
(25, 'Wilfred Ndidi', 'Nigeria', 'MF'),
(15, 'Jeff Schlupp', 'Ghana', 'MF'),
(21, 'Ron-Robert Zieler', 'Germany', 'GK'),
(10, 'Ron-Robert Zieler', 'Wales', 'FW'),
(21, 'Youri Tielemans', 'Belgium', 'MF'),
(15, 'Harry Maguire', 'England', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `liverpool`
--

CREATE TABLE `liverpool` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `liverpool`
--

INSERT INTO `liverpool` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(2, 'Fabinho', 'Brazil', 'MF'),
(4, 'Virgil Van Dijk', 'Netherlands', 'DF'),
(5, 'Wijnaldum', 'Netherlands', 'MF'),
(6, 'Dejan Lovren', 'Croatia', 'DF'),
(7, 'James Milner', 'England', 'MF'),
(8, 'Naby Keita', 'Guinee', 'MF'),
(9, 'Roberto Firmino', 'Brazil', 'FW'),
(10, 'Sadio Mane', 'Senegal', 'FW'),
(11, 'Mohamed Salah', 'Egypt', 'FW'),
(13, 'Alison Becker', 'Brazil', 'GK'),
(14, 'Jordan Henderson', 'England', 'MF'),
(20, 'Adam Lallana', 'England', 'MF'),
(21, 'Chamberlain', 'England', 'MF'),
(22, 'Simon Mignolet', 'Belgium', 'GK'),
(23, 'Xherdan Shaqiri', 'Switzerland', 'MF'),
(26, 'Adrew Robertson', 'Scotland', 'DF'),
(66, 'Alexander-Arnolds', 'England', 'DF'),
(32, 'Joel Matip', 'Ghana', 'DF'),
(29, 'Dominic Solanke', 'England', 'FW'),
(27, 'Divock Origi', 'Belgium', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `mancity`
--

CREATE TABLE `mancity` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mancity`
--

INSERT INTO `mancity` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Claudio Bravo', 'Chile', 'GK'),
(2, 'Kyle Walker', 'Anh', 'DF'),
(3, 'Danilo Silva', 'Brazil', 'DF'),
(4, 'Vincent Kompany', 'Belgium', 'DF'),
(5, 'John Stones', 'Anh', 'DF'),
(7, 'Raheem Sterling', 'Anh', 'MF'),
(8, 'Ikay Gundogan', 'Germany', 'MF'),
(10, 'Sergio Aguero', 'Argentina', 'FW'),
(14, 'Aymeric Laporte', 'Spain', 'DF'),
(17, 'Kevin de Bruyne', 'Belgium', 'MF'),
(18, 'Fabian Delph', 'Anh', 'MF'),
(19, 'Leroy Sane', 'Germany', 'MF'),
(20, 'Bernado Silva', 'Portugal', 'MF'),
(21, 'David Silva', 'Spain', 'MF'),
(22, 'Benjamin Mendy', 'Pháp', 'DF'),
(25, 'Fernandinho', 'Brazil', 'MF'),
(26, 'Riyah Mahrez', 'Algeri', 'MF'),
(30, 'Nicolas Otamendi', 'Argentina', 'DF'),
(31, 'Ederson Moraes', 'Brazil', 'GK'),
(33, 'Gabriel Jesus', 'Brazil', 'FW'),
(34, 'Philippe Sandler', 'Hà Lan', 'DF'),
(35, 'Oleksandr Zinchenko', 'Ukraina', 'MF'),
(47, 'Philip Walter Foden', 'Anh', 'MF'),
(49, 'Aro Muric', 'Switzerland', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `manutd`
--

CREATE TABLE `manutd` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manutd`
--

INSERT INTO `manutd` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'David de Gea', 'Spain', 'GK'),
(2, 'Victor Lindelof', 'Sweden', 'DF'),
(3, 'Eric Baily', 'Cote d\'Ivoire', 'DF'),
(4, 'Phil Jones', 'England', 'DF'),
(6, 'Paul Pogba', 'France', 'MF'),
(7, 'Alexis Sanchez', 'Chile', 'FW'),
(8, 'Juan Mata', 'Spain', 'MF'),
(9, 'Romelu Lukaku', 'Belgium', 'FW'),
(10, 'Marcus Rashford', 'England', 'FW'),
(11, 'Anthony Martial', 'France', 'FW'),
(12, 'Chris Smalling', 'England', 'DF'),
(14, 'Jesse Lingard', 'England', 'MF'),
(15, 'Adreas Pereira', 'Brazil', 'MF'),
(16, 'Marcus Rojo', 'Argentina', 'DF'),
(17, 'Fred', 'Brazil', 'MF'),
(18, 'Ashley Young', 'England', 'DF'),
(21, 'Ander Herrera', 'Spain', 'MF'),
(22, 'Sergio Romero', 'Argentina', 'GK'),
(23, 'Luke Shaw', 'England', 'DF'),
(31, 'Nemanja Matic', 'Serbia', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `newcastle`
--

CREATE TABLE `newcastle` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newcastle`
--

INSERT INTO `newcastle` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Rob Eliot', 'Ireland', 'GK'),
(2, 'Claran Clark', 'Ireland', 'DF'),
(4, 'Ki Seung Young', 'Korea', 'MF'),
(5, 'Fabian Schar', 'Switzerland', 'DF'),
(6, 'Jamal Lascelles', 'England', 'DF'),
(8, 'Jonjo Shelvey', 'England', 'MF'),
(9, 'Salomon Rondon', 'Venezuela', 'FW'),
(10, 'Mohamed Diame', 'Senegal', 'MF'),
(11, 'Math Ritchie', 'Scotland', 'MF'),
(12, 'Martin Dubravka', 'Serbia', 'GK'),
(13, 'Yoshinori Muto', 'Japan', 'FW'),
(15, 'Issac Hayden', 'England', 'MF'),
(15, 'Kenedy', 'Brazil', 'MF'),
(17, 'Ayoze Perez', 'Spain', 'FW'),
(18, 'Federico Fernadez', 'Spain', 'DF'),
(21, 'Joselu', 'Spain', 'FW'),
(22, 'DeAndre Yedlin', 'USA', 'DF'),
(23, 'Antonio Barreca', 'Italia', 'DF'),
(30, 'Christian Atsu', 'Ghana', 'MF'),
(41, 'Freddie Woodman', 'England', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `palace`
--

CREATE TABLE `palace` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `palace`
--

INSERT INTO `palace` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Julian Speroni', 'Argentina', 'GK'),
(2, 'Joel Ward', 'England', 'DF'),
(3, 'Patrick van Aanholt', 'Netherlands', 'DF'),
(4, 'Luka Milivojevic', 'Serbia', 'MF'),
(5, 'James Tomkin', 'England', 'DF'),
(6, 'Scott Dann', 'England', 'DF'),
(7, 'Max Mayer', 'Germany', 'MF'),
(8, 'Kouyate', 'Senegal', 'MF'),
(10, 'Andros Townsend', 'England', 'FW'),
(11, 'Wilfred Zaha', 'England', 'FW'),
(12, 'Mamadou Sakho', 'France', 'DF'),
(13, 'Wayne Hennessey', 'Wales', 'Gk'),
(14, 'Jordan Ayew', 'Ghana', 'FW'),
(17, 'Christian Benteke', 'Belgium', 'FW'),
(18, 'James McArthur', 'Scotland', 'MF'),
(21, 'Connor Wickham', 'England', 'FW'),
(23, 'Michy Batshuayi', 'Belgium', 'FW'),
(26, 'Bakary Sako', 'Mali', 'MF'),
(29, 'Aaron Wan-Bissaka', 'England', 'DF'),
(34, 'Martin Kelly', 'England', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `southampton`
--

CREATE TABLE `southampton` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `southampton`
--

INSERT INTO `southampton` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Alex McCarthy', 'England', 'GK'),
(3, 'Maya Yoshida', 'Japan', 'DF'),
(4, 'Jannik Vestergaard', 'Denmark', 'DF'),
(5, 'Jack Stephens', 'England', 'DF'),
(7, 'Shane Long', 'Ireland', 'FW'),
(9, 'Danny Ings', 'England', 'FW'),
(10, 'Charlie Austin', 'England', 'FW'),
(14, 'Oriol Romeu', 'Spain', 'MF'),
(16, 'James Ward-Prowse', 'England', 'MF'),
(17, 'Stuart Amstrong', 'Scotland', 'MF'),
(18, 'Mario Lemina', 'Gabon', 'MF'),
(21, 'Ryan Bertrand', 'England', 'DF'),
(22, 'Nathan Redmond', 'England', 'FW'),
(44, 'Fraser Forster', 'England', 'GK'),
(43, 'Yan Valery', 'France', 'DF'),
(33, 'Matt Target', 'England', 'MF'),
(65, 'Marcus Barnes', 'England', 'FW'),
(61, 'Michael Obafemi', 'Cote d\'Ivore', 'FW'),
(66, 'Kayne Ramsey', 'England', 'DF'),
(41, 'Harry Lewis', 'England', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `tottenham`
--

CREATE TABLE `tottenham` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tottenham`
--

INSERT INTO `tottenham` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Hogu Lloris', 'France', 'GK'),
(2, 'Kieran Trippier', 'England', 'DF'),
(3, 'Danny Rose', 'England', 'DF'),
(4, 'Toby Alderweireld', 'Belgium', 'DF'),
(5, 'Jan Vertonghen', 'Belgium', 'DF'),
(6, 'Davison Sanchez', 'Colombia', 'DF'),
(7, 'Son Heung-min', 'Korea', 'FW'),
(10, 'Harry Kane', 'England', 'FW'),
(13, 'Michael Vorm', 'Netherlands', 'GK'),
(15, 'Eric Dier', 'England', 'MF'),
(17, 'Mousa Sissoko', 'France', 'MF'),
(18, 'Fernado Llorente', 'Spain', 'FW'),
(20, 'Dele Ali', 'England', 'MF'),
(23, 'Christian Eriksen', 'Denmark', 'MF'),
(24, 'Serge Aurier', 'Cote d\'Ivore', 'DF'),
(27, 'Lucas Moura ', 'Brazil', 'MF'),
(33, 'Ben Davies', 'Wales', 'DF'),
(8, 'Harry Winks', 'England', 'MF'),
(9, 'Vicent Janssen', 'Netherlands', 'FW'),
(21, 'Juan Foyth', 'Argentina', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `watford`
--

CREATE TABLE `watford` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watford`
--

INSERT INTO `watford` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Heurelho Gomes', 'Brazil', 'GK'),
(2, 'Daryl Jamaat', 'Netherlands', 'DF'),
(3, 'Miguel Britos', 'Uruguay', 'DF'),
(5, 'Sebastian Prodl', 'Austria', 'DF'),
(6, 'Adrian Mariappa', 'Jamaica', 'DF'),
(7, 'Gerard Delofeu', 'Spain', 'FW'),
(8, 'Tom Cleverly', 'England', 'MF'),
(9, 'Troy Deeney', 'England', 'FW'),
(14, 'Nathaniel Chalobah', 'England', 'MF'),
(16, 'Abdoulaye Doucoure', 'France', 'MF'),
(18, 'Andre Gray', 'England', 'FW'),
(19, 'Will Hughes', 'England', 'MF'),
(20, 'Domigos Quina', 'Portugal', 'MF'),
(21, 'Kiko Fermenia', 'Spain', 'DF'),
(23, 'Marc Navarro', 'Spain', 'DF'),
(25, 'Jose Holebas', 'Greece', 'DF'),
(26, 'Ben Foster', 'England', 'GK'),
(27, 'Christian Kabasele', 'Belgium', 'DF'),
(29, 'Etienne Capoue', 'France', 'MF'),
(37, 'Roberto Pereyra', 'Argentina', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `westham`
--

CREATE TABLE `westham` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `westham`
--

INSERT INTO `westham` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Lukasz Fabianski', 'Poland', 'GK'),
(2, 'Winston Reid', 'Australia', 'DF'),
(3, 'Aaron Cresswell', 'England', 'DF'),
(5, 'Pablo Zabaleta', 'Argentina', 'DF'),
(7, 'Marko Arnautovic', 'Austria', 'FW'),
(8, 'Felipe Anderson', 'Brazil', 'MF'),
(9, 'Andy Caroll', 'England', 'FW'),
(10, 'Manuel Lanzini', 'Argentina', 'MF'),
(11, 'Robert Snodgrass', 'Scotland', 'MF'),
(15, 'Carlos Sanchez', 'Colombia', 'MF'),
(16, 'Mark Noble', 'England', 'MF'),
(17, 'Javier Hernandez', 'Mexico', 'FW'),
(18, 'Samir Nasri', 'France', 'MF'),
(19, 'Jack Wilshere', 'England', 'MF'),
(20, 'Andriy Yarmolenko', 'Ukraina', 'FW'),
(23, 'Issa Diop', 'France', 'DF'),
(26, 'Arthur Masuaku', 'Bahamas', 'DF'),
(27, 'Lucas Perez', 'Spain', 'FW'),
(30, 'Michail Antonio', 'England', 'MF'),
(24, 'Ryan Fredericks', 'England', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `wolves`
--

CREATE TABLE `wolves` (
  `soao` int(11) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wolves`
--

INSERT INTO `wolves` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(2, 'Matt Doherty', 'Ireland', 'DF'),
(5, 'Ryan Bennet', 'England', 'DF'),
(7, 'Iven Cavaleiro', 'Portugal', 'FW'),
(8, 'Ruben Neves', 'Portugal', 'MF'),
(9, 'Raul Jiminez', 'Mexico', 'FW'),
(10, 'Helder Costa', 'Portugal', 'FW'),
(11, 'Rui Patricio', 'Portugal', 'GK'),
(15, 'Willy Boly ', 'France', 'DF'),
(16, 'Conor Coady', 'England', 'DF'),
(18, 'Diogo Jota', 'Portugal', 'FW'),
(19, 'Jonhny', 'Spain', 'DF'),
(21, 'John Ruddy', 'England', 'GK'),
(25, 'Eliot Watt', 'Scotland', 'MF'),
(26, 'Pedro Goncalves', 'Portugal', 'MF'),
(37, 'Adama Traore', 'Spain', 'FW'),
(28, 'Joao Moutinho', 'Portugal', 'MF'),
(29, 'Ruben Vinagre', 'Portugal', 'DF'),
(23, 'Ryan Giles', 'England', 'MF'),
(27, 'Romain Saiss', 'Morocco', 'MF'),
(49, 'Max Kilman', 'England', 'DF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fulham`
--
ALTER TABLE `fulham`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `huddersfields`
--
ALTER TABLE `huddersfields`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `mancity`
--
ALTER TABLE `mancity`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `palace`
--
ALTER TABLE `palace`
  ADD PRIMARY KEY (`soao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
