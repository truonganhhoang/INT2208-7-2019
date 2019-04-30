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
-- Database: `cauthu_phap`
--

-- --------------------------------------------------------

--
-- Table structure for table `amiens`
--

CREATE TABLE `amiens` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amiens`
--

INSERT INTO `amiens` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(17, 'Alexis Blin', 'France', 'MF'),
(12, 'Bakaye Dibassy', 'France', 'DF'),
(20, 'Cheick Timite', 'Ivory coast', 'MF'),
(5, 'Eddy Gnahore', 'France', 'MF'),
(4, 'Emil Krafth', 'Sweden', 'DF'),
(14, 'Gaoussou Traore', 'France', 'MF'),
(10, 'John Stiven Mendoza', 'Colombia', 'FW'),
(11, 'Juan Ferney Otero', 'Colombia', 'FW'),
(3, 'Khaled Adenon', 'Benin', 'DF'),
(14, 'Lacina Traore', 'Ivory coast', 'FW'),
(16, 'Mathieu Dreyer', 'France', 'GK'),
(15, 'Moussa Konate', 'Senegal', 'FW'),
(19, 'Oualid El Hajjam', 'France', 'DF'),
(8, 'Paulo Henrique', 'Brazil', 'MF'),
(2, 'Prince-Desire Gouano', 'France', 'DF'),
(21, 'Rafal Kurzawa', 'Poland', 'MF'),
(1, 'Regis Gurtner', 'France', 'GK'),
(7, 'Saman Ghoddos', 'Iran', 'FW'),
(18, 'Sanasi Sy', 'France', 'DF'),
(9, 'Sehrou Guirassy', 'France', 'FW'),
(22, 'Seybou Koita', 'France', 'FW'),
(6, 'Thomas Monconduit', 'France', 'DF'),
(1, 'Regis Gurtner', 'France', 'GK'),
(16, 'Mathieu Dreyer', 'France', 'GK'),
(2, 'Prince-Desire Gouano', 'France', 'DF'),
(3, 'Khaled Adenon', 'Benin', 'DF'),
(4, 'Emil Krafth', 'Sweden', 'DF'),
(6, 'Thomas Monconduit', 'France', 'DF'),
(12, 'Bakaye Dibassy', 'France', 'DF'),
(18, 'Sanasi Sy', 'France', 'DF'),
(19, 'Oualid El Hajjam', 'France', 'DF'),
(5, 'Eddy Gnahore', 'France', 'MF'),
(8, 'Paulo Henrique', 'Brazil', 'MF'),
(14, 'Gaoussou Traore', 'France', 'MF'),
(17, 'Alexis Blin', 'France', 'MF'),
(20, 'Cheick Timite', 'Ivory coast', 'MF'),
(21, 'Rafal Kurzawa', 'Poland', 'MF'),
(7, 'Saman Ghoddos', 'Iran', 'FW'),
(9, 'Sehrou Guirassy', 'France', 'FW'),
(10, 'John Stiven Mendoza', 'Colombia', 'FW'),
(11, 'Juan Ferney Otero', 'Colombia', 'FW'),
(14, 'Lacina Traore', 'Ivory coast', 'FW'),
(15, 'Moussa Konate', 'Senegal', 'FW'),
(22, 'Seybou Koita', 'France', 'FW'),
(1, 'Regis Gurtner', 'France', 'GK'),
(16, 'Mathieu Dreyer', 'France', 'GK'),
(2, 'Prince-Desire Gouano', 'France', 'DF'),
(3, 'Khaled Adenon', 'Benin', 'DF'),
(4, 'Emil Krafth', 'Sweden', 'DF'),
(6, 'Thomas Monconduit', 'France', 'DF'),
(12, 'Bakaye Dibassy', 'France', 'DF'),
(18, 'Sanasi Sy', 'France', 'DF'),
(19, 'Oualid El Hajjam', 'France', 'DF'),
(5, 'Eddy Gnahore', 'France', 'MF'),
(8, 'Paulo Henrique', 'Brazil', 'MF'),
(14, 'Gaoussou Traore', 'France', 'MF'),
(17, 'Alexis Blin', 'France', 'MF'),
(20, 'Cheick Timite', 'Ivory coast', 'MF'),
(21, 'Rafal Kurzawa', 'Poland', 'MF'),
(7, 'Saman Ghoddos', 'Iran', 'FW'),
(9, 'Sehrou Guirassy', 'France', 'FW'),
(10, 'John Stiven Mendoza', 'Colombia', 'FW'),
(11, 'Juan Ferney Otero', 'Colombia', 'FW'),
(14, 'Lacina Traore', 'Ivory coast', 'FW'),
(15, 'Moussa Konate', 'Senegal', 'FW'),
(22, 'Seybou Koita', 'France', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `angers`
--

CREATE TABLE `angers` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angers`
--

INSERT INTO `angers` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(23, 'Abdoulaye Cisse', 'Guinea', 'DF'),
(10, 'Angelo Fulgini', 'France', 'MF'),
(14, 'Anthony Mancini', 'Luxembourg', 'FW'),
(18, 'Baptiste Santamaria', 'France', 'MF'),
(17, 'Cheikh NDoye', 'Senegal ', 'MF'),
(9, 'Cristian Lopez', 'Spain', 'FW'),
(13, 'Dorian Bertrand', 'France', 'MF'),
(20, 'Flavien Tait', 'France', 'MF'),
(7, 'Harisson Manzala', 'Congo DR', 'MF'),
(8, 'Ismael Traore', 'Ivory coast', 'DF'),
(16, 'Ludovic Butelle', 'France', 'GK'),
(4, 'Mateo Pavlovic', 'Croatia', 'DF'),
(33, 'Mazire Soula', 'France', 'FW'),
(15, 'Pierrick Capelle', 'France', 'MF'),
(2, 'Rayan Ait Nouri', 'France', 'DF'),
(24, 'Romain Thomas', 'France', 'DF'),
(19, 'Stephane Bahoken', 'France', 'FW'),
(5, 'Thomas Mangani', 'France', 'DF'),
(6, 'Vincent Pajot', 'France', 'MF'),
(11, 'Wilfried Aka Kanga', 'France', 'FW'),
(3, 'Yoann Andreu', 'France', 'DF'),
(1, 'Zacharie Boucher', 'France', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `bordeaux`
--

CREATE TABLE `bordeaux` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bordeaux`
--

INSERT INTO `bordeaux` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Benoit Costil', 'France', 'GK'),
(16, 'Gaetan Poussin', 'France', 'GK'),
(2, 'Milan Gajic', 'Serbia', 'DF'),
(3, 'Sergi Palencia', 'Spain', 'DF'),
(4, 'Jules Kounde', 'France', 'DF'),
(6, 'Igor Lewczuk', 'Poland', 'DF'),
(8, 'Paul Baysse', 'France', 'DF'),
(14, 'Vukasin Jovanovic', 'Serbia', 'DF'),
(20, 'Youssouf Sabaly', 'France', 'DF'),
(5, 'Otavio Henrique Passos Santos', 'Brazil', 'MF'),
(13, 'Younousse Sankhare', 'France', 'MF'),
(17, 'Aurelien Tchouameni', 'France', 'MF'),
(18, 'Jaroslav Plasil', 'Czech', 'MF'),
(19, 'Lukas Lerager', 'Denmark', 'MF'),
(23, 'Valentin Vada', 'Argentina', 'MF'),
(24, 'Albert-Nicolas Lottin', 'France', 'MF'),
(7, 'Jimmy Briand', 'France', 'FW'),
(9, 'Andreas Cornelius', 'Denmark', 'FW'),
(10, 'Samuel Kalu', 'Nigeria', 'FW'),
(11, 'Francois Kamano', 'Guinea', 'FW'),
(12, 'Nicolas de Preville', 'France', 'FW'),
(24, 'Gaetan Laborde', 'France', 'FW'),
(27, 'Josh Maja', 'England', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `caen`
--

CREATE TABLE `caen` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caen`
--

INSERT INTO `caen` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(22, 'Adama Mbengue', 'Senegal', 'MF'),
(24, 'Alexander Djiku', 'France', 'MF'),
(5, 'Baissama Sankho', 'France', 'DF'),
(30, 'Brice Samba', 'Congo', 'GK'),
(13, 'Christian Kouakou', 'Sweden', 'FW'),
(12, 'Claudio Beauvue', 'France', 'FW'),
(15, 'Emmanuel Imorou', 'Benin', 'DF'),
(1, 'Erwin Zelazny', 'France', 'GK'),
(13, 'Evens Joseph', 'France', 'MF'),
(10, 'Faycal Fajr', 'France', 'FW'),
(34, 'Herman Moussaki', 'France', 'FW'),
(4, 'Ismael Diomande', 'Ivory coast', 'MF'),
(9, 'Jan Repas', 'Slovenia', 'MF'),
(17, 'Jessy Deminguet', 'France', 'MF'),
(14, 'Jonathan Gradit', 'France', 'DF'),
(2, 'Paul Baysse', 'France', 'DF'),
(6, 'Prince Oniangue', 'France', 'DF'),
(11, 'Rodrigue Casimir Ninga', 'Chad', 'FW'),
(7, 'Saif-Eddine Khaoui', 'France', 'MF'),
(8, 'Stef Peeters', 'Belgium', 'DF'),
(3, 'Yoel Armougom', 'France', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `dijon`
--

CREATE TABLE `dijon` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dijon`
--

INSERT INTO `dijon` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Runar Alex Runarsson', 'Iceland', 'GK'),
(2, 'Mickael Alphonse', 'France', 'DF'),
(3, 'Arnold Bouka Moutou', 'Congo', 'DF'),
(4, 'Naif Aguerd', 'Morocco', 'DF'),
(5, 'Oussama Haddadi', 'Tunisia', 'DF'),
(6, 'Laurent Ciman', 'Belgium', 'DF'),
(7, 'Frederic Sammaritano', 'France', 'MF'),
(8, 'Mehdi Abeid', 'France', 'MF'),
(9, 'Wesley Said', 'France', 'FW'),
(10, 'Naim Sliti', 'Tunisia', 'MF'),
(11, 'Julio Tavares', 'Cape Verde', 'FW'),
(12, 'Enzo Loiodice', 'France', 'MF'),
(14, 'Jordan Marie', 'France', 'MF'),
(15, 'Florent Balmont', 'France', 'MF'),
(16, 'Bobby Allain', 'France', 'GK'),
(18, 'Cedric Yambere', 'France', 'DF'),
(19, 'Valentin Rosier', 'France', 'DF'),
(20, 'Romain Amalfitano', 'France', 'MF'),
(28, 'Sory Kaba', 'Guinea', 'FW'),
(29, 'Benjamin Jeannot', 'France', 'FW'),
(30, 'Levi Ntumba', 'France', 'GK'),
(31, 'Sory Doumbouya', 'France', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `guingamp`
--

CREATE TABLE `guingamp` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guingamp`
--

INSERT INTO `guingamp` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Karl-Johan Johnsson', 'Sweden', 'GK'),
(2, 'Jordan Ikoko', 'France', 'DF'),
(3, 'Papiss Mison Djilobodji', 'Senegal', 'DF'),
(4, 'Djegui Koita', 'France', 'DF'),
(5, 'Pedro Rebocho', 'Portugal', 'DF'),
(6, 'Lebogang Phiri', 'South Africa', 'MF'),
(7, 'Ludovic Blas', 'France', 'MF'),
(8, 'Lucas Deaux', 'France', 'MF'),
(9, 'Alexandre Mendy', 'France', 'MF'),
(10, 'Nicolas Benezet', 'France', 'MF'),
(11, 'Marcus Thuram', 'France', 'FW'),
(12, 'Yeni Ngbakoto', 'France', 'MF'),
(13, 'Johan Larsson', 'Sweden', 'DF'),
(14, 'Nathael Julan', 'France', 'FW'),
(15, 'Jeremy Sorbon', 'France', 'DF'),
(16, 'Marc-Aurele Caillard', 'France', 'GK'),
(18, 'Guessouma Fofana', 'France', 'MF'),
(19, 'Mehdi Merghem', 'France', 'MF'),
(23, 'Ronny Rodelin', 'France', 'FW'),
(25, 'Cheick Omar Traore', 'France', 'DF'),
(26, 'Nolan Roux', 'France', 'FW'),
(30, 'Denis Petric', 'Slovenia', 'GK'),
(33, 'Matthias Phaeton', 'France', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `lille`
--

CREATE TABLE `lille` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lille`
--

INSERT INTO `lille` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Adam Jakubech', 'Slovakia', 'GK'),
(5, 'Adama Soumaoro', 'France', 'DF'),
(11, 'Alexis Araujo', 'France', 'MF'),
(21, 'Arton Zekaj', 'Serbia', 'MF'),
(15, 'Edgar Ie', 'Portugal', 'DF'),
(25, 'Fode Toure', 'France', 'DF'),
(4, 'Gabriel dos Santos Magalhaes', 'Brazil', 'DF'),
(6, 'Jose Fonte', 'Portugal', 'DF'),
(22, 'Kouadio Dabila', 'Ivory coast', 'DF'),
(30, 'Kouakou Herve Koffi', 'Burkina Faso', 'GK'),
(9, 'Loic Remy', 'France', 'FW'),
(11, 'Luiz de Araujo Guimaraes Neto', 'France', 'FW'),
(8, 'Miguel Angelo da Silva Rocha', 'Portugal', 'MF'),
(16, 'Mike Maignan', 'France', 'GK'),
(12, 'Nanitamo Jonathan Ikone', 'France', 'MF'),
(7, 'Rafael Alexandre Conceicao Lea', 'Portugal', 'FW'),
(10, 'Rui Fonte', 'Portugal', 'FW'),
(23, 'Thiago Henrique Mendes Ribeiro', 'Brazil', 'MF'),
(20, 'Thiago Maia Alencar', 'Brazil', 'MF'),
(3, 'Youssouf Kone', 'Mali', 'MF'),
(17, 'Zeki Celik', 'Turkey', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `lyon`
--

CREATE TABLE `lyon` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lyon`
--

INSERT INTO `lyon` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Anthony Lopes', 'Portugal', 'GK'),
(16, 'Anthony Racioppi', 'Switzerland', 'GK'),
(10, 'Bertrand Traore', 'Burkina Faso', 'FW'),
(25, 'Christopher Martins Pereira', 'Luxembourg', 'MF'),
(20, 'Ferland Mendy', 'France', 'DF'),
(20, 'Fernando Marcal', 'Brazil', 'DF'),
(27, 'Gnaly Maxwell Cornet', 'Ivory Coast', 'FW'),
(8, 'Houssem Aouar', 'France', 'MF'),
(5, 'Jason Denayer', 'Belgium', 'DF'),
(15, 'Jeremy Morel', 'France', 'DF'),
(12, 'Jordan Ferri', 'France', 'MF'),
(17, 'Lenny Pintor', 'France', 'FW'),
(14, 'Leo Dubois', 'France', 'DF'),
(6, 'Marcelo Guedes Filho', 'Brazil', 'DF'),
(9, 'Mariano Diaz Mejia', 'Spain', 'FW'),
(7, 'Martin Terrier', 'France', 'MF'),
(11, 'Memphis Depay', 'Netherlands', 'FW'),
(18, 'Nabil Fekir', 'France', 'FW'),
(13, 'Ousseynou Ndiaye', 'Senegal', 'MF'),
(24, 'Pape Cheikh Diop Gueye', 'Senegal', 'MF'),
(4, 'Rafael da Silva', 'Brazil', 'DF'),
(28, 'Tanguy Ndombele Alvaro', 'France', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `marseille`
--

CREATE TABLE `marseille` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marseille`
--

INSERT INTO `marseille` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(13, 'Aymen Abdennour', 'Tunisia', 'DF'),
(4, 'Boubacar Kamara', 'France', 'DF'),
(17, 'Bouna Sarr', 'Guinea', 'MF'),
(14, 'Clinton NJie', 'Cameroon', 'MF'),
(10, 'Dimitri Payet', 'France', 'FW'),
(15, 'Duje Caleta-Car', 'Croatia', 'DF'),
(26, 'Florian Thauvin', 'France', 'FW'),
(22, 'Gregory Sertic', 'France', 'MF'),
(2, 'Hiroki Sakai', 'Japan', 'DF'),
(8, 'Isimat Mirin', 'France', 'DF'),
(18, 'Jordan Amavi', 'France', 'DF'),
(12, 'Kevin Strootman', 'Netherlands', 'MF'),
(11, 'Konstantinos Mitroglou', 'Greece', 'FW'),
(5, 'Lucas Ocampos', 'Argentina', 'MF'),
(19, 'Luis Gustavo Dias', 'Brazil', 'MF'),
(9, 'Mario Balotelli', 'Italy', 'FW'),
(8, 'Morgan Sanson', 'France', 'MF'),
(7, 'Nemanja Radonjic', 'Serbia', 'FW'),
(6, 'Rolando', 'Portugal', 'DF'),
(30, 'Steve Mandanda', 'France', 'GK'),
(16, 'Yohann Pele', 'France', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `monaco`
--

CREATE TABLE `monaco` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monaco`
--

INSERT INTO `monaco` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(11, 'Adama Traore', 'Mali', 'MF'),
(15, 'Amilcar Silva', 'France', 'DF'),
(3, 'Antonio Barreca', 'Italy', 'DF'),
(1, 'Danijel Subasic', 'Croatia', 'GK'),
(16, 'Diego Benaglio', 'Switzerland', 'GK'),
(19, 'Djibril Sidibe', 'France', 'DF'),
(2, 'Fode Toure', 'France', 'DF'),
(4, 'Jean Eudes Aholou', 'Ivory Coast', 'MF'),
(5, 'Jemerson', 'Brazil', 'DF'),
(22, 'Jordi Mboula Queralt', 'Spain', 'FW'),
(6, 'Kevin N\'Doram', 'France', 'MF'),
(7, 'Marcos Lopes', 'Portugal', 'MF'),
(23, 'Pietro Pellegri', 'Italy', 'FW'),
(9, 'Radamel Falcao', 'Colombia', 'FW'),
(18, 'Ronael Pierre Gabriel', 'France', 'DF'),
(30, 'Seydou Sy', 'Senegal', 'GK'),
(10, 'Stevan Jovetic', 'Montenegro', 'FW'),
(11, 'Vinicius Morais', 'Brazil', 'FW'),
(13, 'Willem Geubbels', 'France', 'FW'),
(12, 'William Vainqueur', 'France', 'MF'),
(8, 'Youri Tielemans', 'Belgium', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `montpellier`
--

CREATE TABLE `montpellier` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `montpellier`
--

INSERT INTO `montpellier` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(2, 'Ruben Aguilar', 'France', 'DF'),
(3, 'Daniel Congre', 'France', 'DF'),
(4, 'Vitorino Hilton', 'Brazil', 'DF'),
(5, 'Pedro Mendes', 'Portugal', 'DF'),
(6, 'Salomon Sambia', 'France', 'MF'),
(7, 'Paul-Bastien Lasne', 'France', 'MF'),
(8, 'Ambroise Oyongo', 'Cameroon', 'DF'),
(9, 'Giovanni Sio', 'Ivory Coast', 'FW'),
(10, 'Gaetan Laborde', 'France', 'FW'),
(11, 'Andy Delort', 'France', 'FW'),
(12, 'Bilal Boutobba', 'France', 'FW'),
(13, 'Skhiri Ellyes', 'France', 'MF'),
(14, 'Damien Le Tallec', 'France', 'FW'),
(15, 'Bryan Passi', 'France', 'MF'),
(16, 'Dimitry Bertaud', 'France', 'GK'),
(17, 'Jeremie Porsan-Clemente', 'France', 'FW'),
(20, 'Keagan Dolly', 'South Africa', 'MF'),
(21, 'Kylian Kaiboue', 'France', 'MF'),
(24, 'Mathias Suarez', 'Uruguay', 'DF'),
(30, 'Jonathan Ligali', 'France', 'GK'),
(40, 'Benjamin Lecomte', 'France', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `nantes`
--

CREATE TABLE `nantes` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nantes`
--

INSERT INTO `nantes` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(16, 'Alexandre Olliero', 'France', 'GK'),
(27, 'Antonio Mance', 'Croatia', 'FW'),
(14, 'Charles Traore', 'France', 'DF'),
(30, 'Ciprian Tatarusanu', 'Romania', 'GK'),
(3, 'Diego Carlos', 'Brazil', 'DF'),
(9, 'Emiliano Sala', 'Argentina', 'FW'),
(2, 'Fabio da Silva', 'Brazil', 'DF'),
(12, 'Gabriel Boschilia', 'Brazil', 'MF'),
(33, 'Josue Homawoo', 'France', 'FW'),
(7, 'Kalifa Coulibaly', 'Mali', 'MF'),
(5, 'Koffi Djidji', 'France', 'DF'),
(17, 'Lucas Evangelista', 'Brazil', 'MF'),
(6, 'Lucas Lima', 'Brazil', 'MF'),
(10, 'Majeed Waris', 'Ghana', 'FW'),
(13, 'Matt Miazga', 'USA', 'DF'),
(1, 'Maxime Dupe', 'France', 'GK'),
(4, 'Nicolas Pallois', 'France', 'DF'),
(15, 'Randal Kolo Muani', 'France', 'MF'),
(5, 'Serigne Kara Mbodji', 'Senegal', 'MF'),
(34, 'Thody Elie Youan', 'France', 'FW'),
(11, 'Valentin Eysseric', 'France', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `nice`
--

CREATE TABLE `nice` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nice`
--

INSERT INTO `nice` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(5, 'Adrien Tameze', 'France', 'MF'),
(6, 'Remi Walter', 'France', 'MF'),
(7, 'Allan Saint-Maximin', 'France', 'FW'),
(8, 'Pierre Lees Melou', 'France', 'MF'),
(9, 'Mario Balotelli', 'Italy', 'FW'),
(10, 'Mickael Le Bihan', 'France', 'FW'),
(11, 'Bassem Srarfi', 'Tunisia', 'MF'),
(12, 'Coly Racine', 'Senegal', 'MF'),
(14, 'Ignatius Ganago', 'Cameroon', 'FW'),
(15, 'Patrick Burner', 'France', 'DF'),
(16, 'Yannis Clementia', 'France', 'GK'),
(18, 'Ihsan Sacko', 'France', 'MF'),
(20, 'Youcef Atal', 'Algeria', 'DF'),
(23, 'Malang Sarr', 'France', 'DF'),
(24, 'Christophe Jallet', 'France', 'DF'),
(26, 'Myziane Maolida', 'France', 'FW'),
(28, 'Olivier Boscagli', 'France', 'DF'),
(29, 'Christophe Herelle', 'France', 'DF'),
(30, 'Yoan Cardinale', 'France', 'GK'),
(33, 'Mohamed Lamine Diaby', 'France', 'FW'),
(40, 'Walter Daniel Benitez', 'Argentina', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `nimes`
--

CREATE TABLE `nimes` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nimes`
--

INSERT INTO `nimes` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Baptiste Valette', 'France', 'GK'),
(2, 'Mustapha Diallo', 'Senegal', 'MF'),
(5, 'Loick Landre', 'France', 'DF'),
(6, 'Jordan Ferri', 'France', 'MF'),
(7, 'Rachid Alioui', 'France', 'FW'),
(8, 'Pierrick Valdivia', 'France', 'MF'),
(9, 'Clement Depres', 'France', 'FW'),
(10, 'Denis Bouanga', 'Gabon', 'MF'),
(11, 'Teji Savanier', 'France', 'MF'),
(12, 'Christ-Emmanuel Faitout Maouas', 'France', 'DF'),
(14, 'Antonin Bobichon', 'France', 'MF'),
(15, 'Gaetan Paquiez', 'France', 'DF'),
(19, 'Umut Bozok', 'France', 'FW'),
(21, 'Fethi Harek', 'France', 'DF'),
(22, 'Sada Thioub', 'France', 'FW'),
(23, 'Anthony Briancon', 'France', 'DF'),
(24, 'Sami Ben Amar', 'France', 'FW'),
(26, 'Florian Miguel', 'France', 'DF'),
(30, 'Paul Bernardoni', 'France', 'GK'),
(33, 'Lucas Buades', 'France', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `psg`
--

CREATE TABLE `psg` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `psg`
--

INSERT INTO `psg` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Gianluigi Buffon', 'Italy', 'GK'),
(2, 'Thiago Silva', 'Brazil', 'DF'),
(3, 'Presnel Kimpembe', 'France', 'DF'),
(5, 'Marcos Aoas Correa', 'Brazil', 'DF'),
(6, 'Marco Verratti', 'Italy', 'MF'),
(7, 'Kylian Mbappe Lottin', 'France', 'FW'),
(8, 'Leandro Paredes', 'Argentina', 'MF'),
(9, 'Edison Cavani', 'Uruguay', 'FW'),
(10, 'Neymar', 'Brazil', 'FW'),
(11, 'Angel Di Maria', 'Argentina', 'FW'),
(12, 'Thomas Meunier', 'Belgium', 'DF'),
(13, 'Dani Alves', 'Brazil', 'DF'),
(14, 'Juan Bernat', 'Spain', 'DF'),
(16, 'Alphonse Areola', 'France', 'GK'),
(17, 'Eric Choupo-Moting', 'Cameroon', 'FW'),
(18, 'Giovani Lo Celso', 'Argentina', 'MF'),
(19, 'Lassana Diarra', 'France', 'MF'),
(20, 'Layvin Kurzawa', 'France', 'DF'),
(23, 'Julian Draxler', 'Germany', 'FW'),
(25, 'Adrien Rabiot', 'France', 'MF'),
(28, 'Antoine Bernede', 'France', 'MF'),
(30, 'Kevin Trapp', 'Germany', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `reims`
--

CREATE TABLE `reims` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reims`
--

INSERT INTO `reims` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(21, 'Abdul Rahman', 'Indonesia', 'DF'),
(4, 'Alaixys Romao', 'Togo', 'MF'),
(17, 'Aly Ndom', 'France', 'FW'),
(17, 'Arber Zeneli', 'Sweden', 'MF'),
(6, 'Axel Disasi', 'France', 'DF'),
(2, 'Bjorn Engels', 'Belgium', 'DF'),
(16, 'Edouard Mendy', 'Switzerland', 'FW'),
(13, 'Hassane Kamara', 'France', 'MF'),
(1, 'Johan Carrasso', 'France', 'GK'),
(8, 'Marvin Martin', 'France', 'MF'),
(25, 'Moussa Doumbia', 'Mali', 'MF'),
(3, 'N\'Clomande Ghislain Konan', 'Ivory Coast', 'DF'),
(30, 'Nicolas Lemaitre', 'France', 'GK'),
(11, 'Oluwaseyi Ojo', 'England', 'FW'),
(12, 'Pablo Chavarria', 'Argentina', 'FW'),
(15, 'Romain Metanire', 'France', 'DF'),
(10, 'Suk Hyun-Jun', 'Korea', 'FW'),
(19, 'Thomas Fontaine', 'France', 'DF'),
(20, 'Tristan Dingome', 'France', 'MF'),
(7, 'Xavier Chavalerin', 'France', 'MF'),
(5, 'Younis Abdelhamid', 'France', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `rennais`
--

CREATE TABLE `rennais` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rennais`
--

INSERT INTO `rennais` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Abdoulaye Diallo', 'France', 'GK'),
(2, 'Mehdi Zeffane', 'France', 'DF'),
(3, 'Damien Da Silva', 'France', 'DF'),
(4, 'Edson Andre Sitoe', 'Mozambique', 'DF'),
(5, 'Doumbia Souleyman', 'France', 'DF'),
(6, 'Jakob Johansson', 'Sweden', 'MF'),
(7, 'Ismaila Sarr', 'Senegal', 'MF'),
(8, 'Clement Grenier', 'France', 'MF'),
(9, 'Theoson Jordan Siebatcheu', 'France', 'FW'),
(10, 'Rafik Guitane', 'France', 'MF'),
(11, 'MBaye Niang', 'Senegal', 'FW'),
(12, 'James Lea Siliki', 'France', 'MF'),
(14, 'Benjamin Bourigeaud', 'France', 'MF'),
(15, 'Ramy Bensebaini', 'Algeria', 'DF'),
(17, 'Christ-Emmanuel Faitout Maouas', 'France', 'DF'),
(18, 'Hatem Ben Arfa', 'France', 'FW'),
(25, 'Diafra Sakho', 'Senegal', 'FW'),
(30, 'Edvinas Gertmonas', 'Lithuania', 'GK'),
(33, 'Georginio Rutter', 'France', 'FW'),
(34, 'Timothe Nkada', 'France', 'FW'),
(40, 'Tomas Koubek', 'Czech', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `saintetienne`
--

CREATE TABLE `saintetienne` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saintetienne`
--

INSERT INTO `saintetienne` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(3, 'Pierre Yves Polomat', 'France', 'DF'),
(4, 'William Saliba', 'France', 'DF'),
(5, 'Timothee Kolodziejczak', 'France', 'DF'),
(6, 'Yann M\'Vila', 'France', 'MF'),
(7, 'Remy Cabella', 'France', 'MF'),
(8, 'Youssef Ait Bennasser', 'France', 'MF'),
(9, 'Lois Diony', 'France', 'FW'),
(10, 'Wahbi Khazri', 'France', 'MF'),
(11, 'Gabriel Silva', 'Brazil', 'DF'),
(13, 'Makhtar Gueye', 'Senegal', 'FW'),
(16, 'Stephane Ruffier', 'France', 'GK'),
(17, 'Ole Kristian Selnaes', 'Norway', 'MF'),
(18, 'Arnaud Nordin', 'France', 'MF'),
(19, 'Yannis Salibur', 'France', 'MF'),
(22, 'Kevin Monnet-Paquet', 'France', 'FW'),
(24, 'Loic Perrin', 'France', 'DF'),
(26, 'Mathieu Debuchy', 'France', 'DF'),
(27, 'Robert Beric', 'Slovenia', 'FW'),
(30, 'Jessy Moulin', 'France', 'GK'),
(32, 'Charles Nathan Abi', 'France', 'FW'),
(33, 'Marvin Tshibuabua', 'France', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `strasbourg`
--

CREATE TABLE `strasbourg` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strasbourg`
--

INSERT INTO `strasbourg` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Matz Sels', 'Belgium', 'GK'),
(2, 'Mohamed Simakan', 'France', 'DF'),
(4, 'Pablo Martinez', 'France', 'DF'),
(5, 'Lamine Kone', 'France', 'DF'),
(6, 'Jeremy Grimm', 'France', 'MF'),
(7, 'Moataz Zemzemi', 'Tunisia', 'MF'),
(8, 'Jonas Martin', 'France', 'MF'),
(9, 'Idriss Saadi', 'France', 'FW'),
(10, 'Benjamin Corgnet', 'France', 'MF'),
(11, 'Dmitri Lienard', 'France', 'MF'),
(12, 'Lebo Mothiba', 'South Africa', 'FW'),
(13, 'Stefan Mitrovic', 'Serbia', 'DF'),
(14, 'Sanjin Prcic', 'Bosnia-Herzegovina', 'MF'),
(16, 'Eiji Kawashima', 'Japan', 'GK'),
(17, 'Gonçalves Anthony', 'France', 'MF'),
(22, 'Youssouf Fofana', 'Mali', 'FW'),
(23, 'Lionel Jules Carole', 'France', 'DF'),
(25, 'Ludovic Ajorque', 'France', 'FW'),
(27, 'Kenny Lala', 'France', 'DF'),
(29, 'Nuno Miguel da Costa Joia', 'Cape Verde', 'FW'),
(30, 'Bingorou Kamara', 'France', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `toulouse`
--

CREATE TABLE `toulouse` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toulouse`
--

INSERT INTO `toulouse` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Mauro Goicoechea', 'Uruguay', 'GK'),
(2, 'Kelvin Amian Adou', 'France', 'DF'),
(3, 'Gen Shoji', 'Japan', 'DF'),
(4, 'Yannick Cahuzac', 'France', 'MF'),
(5, 'Steven Moreira', 'Cape Verde', 'DF'),
(6, 'Christopher Jullien', 'France', 'DF'),
(7, 'Max Gradel', 'Ivory Coast', 'FW'),
(8, 'Corentin Jean', 'France', 'FW'),
(9, 'Yaya Sanogo', 'France', 'FW'),
(10, 'Aaron Leya Iseka', 'Congo DR', 'FW'),
(12, 'Issiaga Sylla', 'Guinea', 'DF'),
(13, 'Clement Michelin', 'France', 'DF'),
(14, 'Mathieu Dossevi', 'France', 'MF'),
(15, 'John Bostock', 'England', 'MF'),
(16, 'Marc Vidal', 'France', 'GK'),
(17, 'Ibrahim Sangare', 'Ivory Coast', 'MF'),
(21, 'Jimmy Durmaz', 'Sweden', 'MF'),
(22, 'Manuel Garcia Alonso', 'Spain', 'MF'),
(24, 'Firmin Ndombe Mubele', 'Congo DR', 'FW'),
(30, 'Baptiste Reynet', 'France', 'GK'),
(35, 'Driss Khalid', 'France', 'FW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `angers`
--
ALTER TABLE `angers`
  ADD PRIMARY KEY (`ten`);

--
-- Indexes for table `caen`
--
ALTER TABLE `caen`
  ADD PRIMARY KEY (`ten`);

--
-- Indexes for table `dijon`
--
ALTER TABLE `dijon`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `guingamp`
--
ALTER TABLE `guingamp`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `lille`
--
ALTER TABLE `lille`
  ADD PRIMARY KEY (`ten`);

--
-- Indexes for table `lyon`
--
ALTER TABLE `lyon`
  ADD PRIMARY KEY (`ten`);

--
-- Indexes for table `marseille`
--
ALTER TABLE `marseille`
  ADD PRIMARY KEY (`ten`);

--
-- Indexes for table `monaco`
--
ALTER TABLE `monaco`
  ADD PRIMARY KEY (`ten`);

--
-- Indexes for table `montpellier`
--
ALTER TABLE `montpellier`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `nantes`
--
ALTER TABLE `nantes`
  ADD PRIMARY KEY (`ten`);

--
-- Indexes for table `nice`
--
ALTER TABLE `nice`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `nimes`
--
ALTER TABLE `nimes`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `psg`
--
ALTER TABLE `psg`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `reims`
--
ALTER TABLE `reims`
  ADD PRIMARY KEY (`ten`);

--
-- Indexes for table `rennais`
--
ALTER TABLE `rennais`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `saintetienne`
--
ALTER TABLE `saintetienne`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `strasbourg`
--
ALTER TABLE `strasbourg`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `toulouse`
--
ALTER TABLE `toulouse`
  ADD PRIMARY KEY (`soao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
