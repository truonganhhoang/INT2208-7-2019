-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 06:53 PM
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
-- Database: `cauthu_y`
--

-- --------------------------------------------------------

--
-- Table structure for table `acmilan`
--

CREATE TABLE `acmilan` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acmilan`
--

INSERT INTO `acmilan` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(2, 'Davide Calabria', 'Italia', 'DF'),
(4, 'Jose Mauri', 'Italia', 'MF'),
(5, 'Giacomo Bonaventura', 'Italia', 'MF'),
(7, 'Samu Castillejo', 'Spain', 'MF'),
(8, 'Jesus Fernandez Saez', 'Spain', 'FW'),
(9, 'Gonzalo Higuain', 'Argentina', 'FW'),
(10, 'Hakan Calhanoglu', 'Turkey', 'MF'),
(11, 'Fabio Borini', 'Italia', 'FW'),
(12, 'Andrea Conti', 'Italia', 'FW'),
(13, 'Alessio Romagnoli', 'Italia', 'DF'),
(14, 'Tiemoue Bakayoko', 'France', 'MF'),
(16, 'Andrea Bertolacci', 'Italia', 'MF'),
(17, 'Cristian Zapata', 'Colombia', 'DF'),
(19, 'Krzysztof Piatek', 'Poland', 'FW'),
(20, 'Ignazio Abate', 'Italia', 'DF'),
(22, 'Mateo Musacchio', 'Argentina', 'DF'),
(25, 'Pepe Reina', 'Spain', 'GK'),
(35, 'Alessandro Plizzari', 'Italia', 'GK'),
(63, 'Patrick Cutrone', 'Italia', 'FW'),
(68, 'Ricardo Rodriguez', 'Switzerland', 'DF'),
(99, 'Gianluigi Donnarumma', 'Italia', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `atalanta`
--

CREATE TABLE `atalanta` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atalanta`
--

INSERT INTO `atalanta` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Etrit Berisha', 'Albania', 'GK'),
(2, 'Rafael Toloi', 'Brazil', 'DF'),
(4, 'Luca Valzania', 'Italia', 'MF'),
(5, 'Andrea Masiello', 'Italia', 'DF'),
(6, 'Jose Luis Palomino', 'Argentina', 'DF'),
(7, 'Arkadiusz Reca', 'Poland', 'DF'),
(8, 'Robin Gosens', 'Germany', 'DF'),
(9, 'Andreas Cornelius', 'Denmark', 'FW'),
(10, 'Alejandro Gomez', 'Argentina', 'MF'),
(11, 'Remo Freuler', 'Switzerland', 'MF'),
(13, 'Davide Bettella', 'Italia', 'DF'),
(15, 'Marten de Roon', 'Netherlands', 'MF'),
(17, 'Roberto Piccoli', 'Italia', 'FW'),
(20, 'Marco Tumminello', 'Italia', 'FW'),
(22, 'Matteo Pessina', 'Italia', 'MF'),
(24, 'Emiliano Rigoni', 'Argentina', 'MF'),
(31, 'Francesco Rossi', 'Italia', 'GK'),
(72, 'Josip Ilicic', 'Slovenia', 'FW'),
(91, 'Duvan Zapata', 'Colombia', 'FW'),
(95, 'Pierluigi Gollini', 'Italia', 'GK'),
(99, 'Musa Barrow', 'Gambia', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `bologna`
--

CREATE TABLE `bologna` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bologna`
--

INSERT INTO `bologna` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Junior Costa', 'Brazil', 'GK'),
(3, 'Giancarlo Gonzalez', 'Costa Rica', 'DF'),
(4, 'Lyanco', 'Brazil', 'DF'),
(5, 'Erick Pulgar', 'Chile', 'DF'),
(6, 'Nehuen Paz', 'Argentina', 'DF'),
(7, 'Riccardo Orsolini', 'Italia', 'FW'),
(8, 'Adam Nagy', 'Hungary', 'MF'),
(9, 'Federico Santander', 'Paraguay', 'FW'),
(10, 'Nicola Sansone', 'Italia', 'FW'),
(11, 'Ladislav Krejci', 'Czech', 'MF'),
(14, 'Federico Mattiello', 'Italia', 'DF'),
(15, 'Ibrahima Mbaye', 'Senegal', 'DF'),
(16, 'Andrea Poli', 'Italia', 'MF'),
(20, 'Simone Edera', 'Italia', 'FW'),
(21, 'Roberto Soriano', 'Italia', 'MF'),
(22, 'Mattia Destro', 'Italia', 'FW'),
(24, 'Rodrigo Palacio', 'Argentina', 'FW'),
(28, 'Lukasz Skorupski', 'Poland', 'GK'),
(29, 'Antonio Santurro', 'Italia', 'GK'),
(31, 'Blerim Dzemaili', 'Switzerland', 'MF'),
(32, 'Mattias Svanberg', 'Sweden', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `cagliari`
--

CREATE TABLE `cagliari` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cagliari`
--

INSERT INTO `cagliari` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(9, 'Alberto Cerri', 'Italy', 'FW'),
(35, 'Alessandro Marongiu', 'Italy', 'FW'),
(17, 'Christian Oliva', 'Uruguay', 'MF'),
(77, 'Cyril Thereau', 'France', 'FW'),
(4, 'Daniele Dessena', 'Italy', 'MF'),
(17, 'Diego Farias', 'Brazil', 'FW'),
(19, 'Fabio Pisacane', 'Italy', 'DF'),
(12, 'Fabrizio Cacciatore', 'Italy', 'DF'),
(6, 'Filip Bradaric', 'Croatia', 'MF'),
(10, 'Joao Pedro Silva', 'Portugal', 'DF'),
(30, 'Leonardo Pavoletti', 'Italy', 'FW'),
(8, 'Luca Cigarini', 'Italy', 'MF'),
(3, 'Luca Pellegrini', 'Italy', 'DF'),
(25, 'Marco Sau', 'Italy', 'FW'),
(2, 'Marko Pajac', 'Croatia', 'MF'),
(1, 'Rafael Andrade Pinheiro', 'Brazil', 'GK'),
(15, 'Ragnar Klavan', 'Estonia', 'DF'),
(12, 'Riccardo Daga', 'Italy', 'GK'),
(16, 'Simone Aresti', 'Italy', 'GK'),
(14, 'Valter Birsa', 'Slovenia', 'MF'),
(18, 'Vangelis Moras', 'Greece', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `chievo verona`
--

CREATE TABLE `chievo verona` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chievo verona`
--

INSERT INTO `chievo verona` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Adrian Semper', 'Croatia', 'GK'),
(2, 'Ezequiel Schelotto', 'Italy', 'MF'),
(3, 'Strahinja Tanasijevic', 'Serbia', 'DF'),
(4, 'Nicola Rigoni', 'Italy', 'MF'),
(5, 'Federico Barba', 'Italy', 'DF'),
(6, 'Nicolas Frey', 'France', 'DF'),
(7, 'Lucas Piazon', 'Brazil', 'MF'),
(8, 'Assane Diousse', 'Senegal', 'MF'),
(9, 'Mariusz Stepinski', 'Poland', 'FW'),
(10, 'Manuel Pucciarelli', 'Italy', 'FW'),
(11, 'Mehdi Leris', 'France', 'FW'),
(12, 'Bostjan Cesar', 'Slovenia', 'DF'),
(13, 'Sofian Kiyine', 'Belgium', 'MF'),
(14, 'Mattia Bani', 'Italy', 'DF'),
(15, 'Luca Rossettini', 'Italy', 'DF'),
(16, 'Andrea Seculin', 'Italy', 'GK'),
(17, 'Emanuele Giaccherini', 'Italy', 'MF'),
(20, 'Filip Djordjevic', 'Serbia', 'FW'),
(25, 'Sergej Grubac', 'Montenegro', 'FW'),
(31, 'Sergio Pellissier', 'Italy', 'FW'),
(67, 'Elia Caprile', 'Italy', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `empoli`
--

CREATE TABLE `empoli` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empoli`
--

INSERT INTO `empoli` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Ivan Provedel', 'Italy', 'GK'),
(2, 'Giovanni Di Lorenzo', 'Italy', 'DF'),
(4, 'Matteo Brighi', 'Italy', 'MF'),
(5, 'Frederic Veseli', 'Switzerland', 'DF'),
(6, 'Marko Pajac', 'Croatia', 'MF'),
(7, 'Levan Mchedlidze', 'Gruzia', 'FW'),
(8, 'Hamed Junior Traore', 'Ivory Coast', 'MF'),
(9, 'Alejandro Rodriguez', 'Spain', 'MF'),
(10, 'Ismael Bennacer', 'France', 'MF'),
(11, 'Francesco Caputo', 'Italy', 'FW'),
(13, 'Luca Antonelli', 'Italy', 'DF'),
(17, 'Lorenzo Lollo', 'Italy', 'MF'),
(19, 'Arnel Jakupovic', 'Austria', 'FW'),
(20, 'Antonino La Gumina', 'Italy', 'FW'),
(21, 'Pietro Terracciano', 'Italy', 'GK'),
(22, 'Domenico Maietta', 'Italy', 'DF'),
(23, 'Manuel Pasqual', 'Italy', 'DF'),
(26, 'Matias Silvestre', 'Argentina', 'DF'),
(37, 'Dimitri Oberlin', 'Switzerland', 'FW'),
(40, 'Gianluca Saro', 'Italy', 'GK'),
(66, 'Samuel Mraz', 'Slovakia', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `fiorentina`
--

CREATE TABLE `fiorentina` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fiorentina`
--

INSERT INTO `fiorentina` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Alban Lafont', 'France', 'GK'),
(2, 'Vincent Laurini', 'France', 'DF'),
(3, 'Cristiano Biraghi', 'Italy', 'MF'),
(4, 'Nikola Milenkovic', 'Serbia', 'DF'),
(5, 'Federico Ceccherini', 'Italy', 'DF'),
(6, 'Christian Noregaard', 'Germany', 'MF'),
(7, 'Valentin Eysseric', 'France', 'MF'),
(8, 'Gerson', 'Brazil', 'MF'),
(9, 'Giovanni Pablo Simeone', 'Argentina', 'FW'),
(10, 'Marko Pjaca', 'Croatia', 'FW'),
(11, 'Kevin Mirallas', 'Belgium', 'MF'),
(14, 'Bryan Dabo', 'France', 'MF'),
(15, 'Maximiliano Olivera', 'Uruguay', 'DF'),
(16, 'David Hancko', 'Slovakia', 'DF'),
(20, 'German Alejandro Pezzella', 'Argentina', 'DF'),
(23, 'Pietro Terracciano', 'Italy', 'GK'),
(26, 'Edimilson Fernandes', 'Switzerland', 'FW'),
(27, 'Martin Graiciar', 'Czech', 'FW'),
(28, 'Dusan Vlahovic', 'Serbia', 'FW'),
(29, 'Luis Muriel', 'Colombia', 'FW'),
(33, 'Federico Brancolini', 'Italy', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `frosinone`
--

CREATE TABLE `frosinone` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frosinone`
--

INSERT INTO `frosinone` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(14, 'Andrea Errico', 'Italy', 'MF'),
(3, 'Christian Molinaro', 'Italy', 'DF'),
(9, 'Daniel Ciofani', 'Italy', 'FW'),
(10, 'Danilo Soddimo', 'Italy', 'FW'),
(6, 'Edoardo Goldaniga', 'Italy', 'DF'),
(18, 'Federico Dionisi', 'Italy', 'FW'),
(22, 'Francesco Bardi', 'Italy', 'GK'),
(17, 'Francesco Zampano', 'Italy', 'DF'),
(15, 'Lorenzo Ariaudo', 'Italy', 'DF'),
(19, 'Luca Matarese', 'Italy', 'MF'),
(7, 'Luca Paganini', 'Italy', 'FW'),
(16, 'Luca Valzania', 'Italy', 'MF'),
(57, 'Marco Sportiello', 'Italy', 'GK'),
(5, 'Mirko Gori', 'Italy', 'MF'),
(23, 'Nicolo Brighenti', 'Italy', 'DF'),
(2, 'Paolo Ghiglione', 'Italy', 'FW'),
(12, 'Pier Paolo Salvati', 'Italy', 'GK'),
(8, 'Raffaele Maiello', 'Italy', 'MF'),
(4, 'Rai Vloet', 'Netherlands', 'MF'),
(4, 'Stefan Simic', 'Czech', 'DF'),
(11, 'Stipe Perica', 'Croatia', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `genoa`
--

CREATE TABLE `genoa` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genoa`
--

INSERT INTO `genoa` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Federico Marchetti', 'Italy', 'GK'),
(2, 'Nicolas Spolli', 'Argentina', 'DF'),
(3, 'Koray Gunter', 'Germany', 'DF'),
(4, 'Domenico Criscito', 'Italy', 'DF'),
(5, 'Lisandro Lopez', 'Argentina', 'DF'),
(8, 'Romulo', 'Italy', 'MF'),
(9, 'Krzysztof Piatek', 'Poland', 'FW'),
(10, 'Gianluca Lapadula', 'Italy', 'FW'),
(11, 'Christian Kouame', 'Ivory Coast', 'FW'),
(13, 'Giuseppe Pezzella', 'Italy', 'DF'),
(14, 'Davide Biraschi', 'Italy', 'DF'),
(15, 'Luca Mazzitelli', 'Italy', 'MF'),
(18, 'Esteban Rolon', 'Argentina', 'MF'),
(19, 'Goran Pandev', 'Macedonia', 'FW'),
(21, 'Ivan Radovanovic', 'Serbia', 'MF'),
(22, 'Darko Lazovic', 'Serbia', 'MF'),
(23, 'Alessandro Russo', 'Italy', 'GK'),
(24, 'Daniel Bessa', 'Brazil', 'FW'),
(25, 'Rok Vodisek', 'Slovenia', 'GK'),
(26, 'Nicola Dal Monte', 'Italy', 'FW'),
(27, 'Stefano Sturaro', 'Italy', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `internazionale`
--

CREATE TABLE `internazionale` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internazionale`
--

INSERT INTO `internazionale` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Samir Handanovic', 'Slovenia', 'GK'),
(2, 'Sime Vrsaljko', 'Croatia', 'DF'),
(5, 'Roberto Gagliardini', 'Italy', 'MF'),
(6, 'Stefan de Vrij', 'Netherlands', 'DF'),
(7, 'Yann Karamoh', 'France', 'MF'),
(8, 'Matias Vecino', 'Uruguay', 'MF'),
(9, 'Mauro Icardi', 'Argentina', 'FW'),
(10, 'Lautaro Martinez', 'Argentina', 'FW'),
(11, 'Keita Balde', 'Senegal', 'FW'),
(13, 'Andrea Ranocchia', 'Italy', 'DF'),
(14, 'Radja Nainggolan', 'Belgium', 'MF'),
(15, 'Joao Mario', 'Portugal', 'MF'),
(16, 'Matteo Politano', 'Italy', 'MF'),
(18, 'Kwadwo Asamoah', 'Ghana', 'DF'),
(21, 'Cedric Soares', 'Portugal', 'DF'),
(23, 'Joao Miranda', 'Brazil', 'DF'),
(27, 'Daniele Padelli', 'Italy', 'GK'),
(44, 'Ivan Perisic', 'Croatia', 'MF'),
(46, 'Tommaso Berni', 'Italy', 'GK'),
(61, 'Facundo Colidio', 'Argentina', 'FW'),
(74, 'Anthony Salcedo Mora', 'Italy', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `juventus`
--

CREATE TABLE `juventus` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `juventus`
--

INSERT INTO `juventus` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Wojciech Szczesny', 'Poland', 'GK'),
(2, 'Mattia De Sciglio', 'Italy', 'DF'),
(3, 'Giorgio Chiellini', 'Italy', 'DF'),
(4, 'Medhi Benatia', 'Morocco', 'DF'),
(5, 'Miralem Pjanic', 'Bosnia-Herzegovina', 'MF'),
(6, 'Sami Khedira', 'Germany', 'MF'),
(7, 'Cristiano Ronaldo', 'Portugal', 'FW'),
(10, 'Paulo Dybala', 'Argentina', 'FW'),
(11, 'Douglas Costa', 'Brazil', 'FW'),
(12, 'Lobo Alex Sandro', 'Brazil', 'DF'),
(14, 'Blaise Matuidi', 'France', 'MF'),
(15, 'Andrea Barzagli', 'Italy', 'DF'),
(16, 'Juan Cuadrado', 'Colombia', 'FW'),
(17, 'Mario Mandzukic', 'Crotia', 'FW'),
(18, 'Moise Kean', 'Italy', 'FW'),
(19, 'Leonardo Bonucci', 'Italy', 'DF'),
(21, 'Carlo Pinsoglio', 'Italy', 'GK'),
(22, 'Mattia Perin', 'Italy', 'GK'),
(23, 'Emre Can', 'Germany', 'MF'),
(30, 'Rodrigo Bentancur Colman', 'Uruguay', 'MF'),
(33, 'Federico Bernardeschi', 'Italy', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `lazio`
--

CREATE TABLE `lazio` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lazio`
--

INSERT INTO `lazio` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Thomas Strakosha', 'Albania', 'GK'),
(3, 'Luiz Felipe', 'Brazil', 'DF'),
(4, 'Patricio Gabarron', 'Spain', 'DF'),
(5, 'Jordan Lukaku', 'Belgium', 'DF'),
(7, 'Valon Berisha', 'Norway', 'MF'),
(8, 'Dusan Basta', 'Serbia', 'DF'),
(9, 'Alessandro Rossi', 'Italy', 'FW'),
(10, 'Luis Alberto', 'Spain', 'MF'),
(11, 'Carlos Correa', 'Brazil', 'MF'),
(13, 'Wallace Fortuna Santos', 'Brazil', 'DF'),
(14, 'Riza Durmisi', 'Denmark', 'DF'),
(16, 'Marco Parolo', 'Italy', 'MF'),
(17, 'Ciro Immobile', 'Italy', 'FW'),
(20, 'Felipe Caicedo', 'Ecuador', 'FW'),
(21, 'Sergej Milinkovic-Savic', 'Serbia', 'MF'),
(23, 'Guido Guerrieri', 'Italy', 'GK'),
(24, 'Silvio Proto', 'Belgium', 'GK'),
(25, 'Milan Badelj', 'Croatia', 'MF'),
(27, 'Romulo', 'Italy', 'MF'),
(30, 'Pedro Lomba Neto', 'Portugal', 'FW'),
(49, 'Jorge Silva', 'Brazil', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `napoli`
--

CREATE TABLE `napoli` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `napoli`
--

INSERT INTO `napoli` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Alex Meret', 'Italy', 'GK'),
(2, 'Kevin Malcuit', 'France', 'DF'),
(3, 'Karim Zedadka', 'France', 'MF'),
(5, 'Allan Marques Loureiro', 'Brazil', 'MF'),
(6, 'Mario Rui', 'Portugal', 'DF'),
(7, 'Jose Callejon', 'Spain', 'FW'),
(8, 'Fabian Ruiz', 'Spain', 'MF'),
(9, 'Simone Verdi', 'Italy', 'FW'),
(11, 'Adam Ounas', 'France', 'FW'),
(13, 'Sebastiano Luperto', 'Italy', 'DF'),
(14, 'Dries Mertens', 'Belgium', 'FW'),
(17, 'Marek Hamsik', 'Slovakia', 'MF'),
(18, 'Gianluca Gaetano', 'Italy', 'MF'),
(19, 'Nikola Maksimovic', 'Serbia', 'DF'),
(20, 'Piotr Zielinski', 'Poland', 'MF'),
(21, 'Vlad Chiriches', 'Romania', 'DF'),
(22, 'Alessandro D\'Andrea', 'Italy', 'GK'),
(23, 'Elseid Hysaj', 'Albania', 'DF'),
(24, 'Lorenzo Insigne', 'Italy', 'fw'),
(25, 'David Ospina Ramirez', 'Colombia', 'GK'),
(99, 'Arkadiusz Milik', 'Poland', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `parma`
--

CREATE TABLE `parma` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parma`
--

INSERT INTO `parma` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Pierluigi Frattali', 'Italia', 'GK'),
(2, 'Simone Iacoponi', 'Italia', 'DF'),
(3, 'Federico Dimarco', 'Italia', 'DF'),
(5, 'Leo Stulac', 'Slovenia', 'FW'),
(7, 'Alessio Da Cruz', 'Netherlands', 'MF'),
(8, 'Abdou Lahad Diakhate', 'Senegal ', 'MF'),
(9, 'Fabio Ceravolo', 'Italia', 'FW'),
(10, 'Amato Ciciretti', 'Italia', 'MF'),
(11, 'Gianni Munari', 'Italia', 'MF'),
(13, 'Francisco Sierralta', 'Chile', 'DF'),
(14, 'Jose Machin Dicombo', 'Spain', 'MF'),
(17, 'Antonino Barilla', 'Italia', 'MF'),
(22, 'Eduardo Bruno Alves', 'Potugal', 'DF'),
(23, 'Marcello Gazzola', 'Italia', 'DF'),
(27, 'Gervais Yao Kouassi', 'Ivory Coast', 'FW'),
(28, 'Riccardo Gagliolo', 'Italia', 'DF'),
(31, 'Gabriel Brazao', 'Brazil', 'GK'),
(45, 'Roberto Inglese', 'Italia', 'FW'),
(52, 'Carl Davordzie', 'Ghana', 'FW'),
(55, 'Luigi Sepe', 'Italia', 'GK'),
(77, 'Jonathan Ludovic Biabiany', 'France', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `roma`
--

CREATE TABLE `roma` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roma`
--

INSERT INTO `roma` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Robin Olsen', 'Sweden', 'GK'),
(2, 'Rick Karsdorp', 'Netherlands', 'DF'),
(3, 'Luca Pellegrin', 'Italia', 'DF'),
(5, 'Juan Jesus', 'Brazil', 'DF'),
(6, 'Kevin Strootman', 'Netherlands', 'MF'),
(8, 'Diego Perotti', 'Argentina', 'FW'),
(9, 'Edin Dzeko', 'Bosnia-Herzegovina', 'FW'),
(11, 'Aleksandar Kolarov', 'Serbia', 'DF'),
(14, 'Patrik Schick', 'Czech', 'FW'),
(15, 'Ivan Marcano', 'Spain', 'DF'),
(16, 'Daniele De Rossi', 'Italia', 'MF'),
(17, 'Cengiz Under', 'Turkey', 'FW'),
(18, 'Davide Santon', 'Italia', 'DF'),
(24, 'Alessandro Florenzi', 'Italia', 'MF'),
(27, 'Javier Pastore', 'Argentina', 'MF'),
(34, 'Justin Kluivert', 'Netherlands', 'FW'),
(42, 'Steven N\'Zonzi', 'France', 'MF'),
(52, 'Andrea Marcucci', 'Italia', 'MF'),
(54, 'Gianmarco Cangiano', 'Italia', 'FW'),
(63, 'Daniel Fuzato', 'Brazil', 'GK'),
(77, 'Stefano Greco', 'Italia', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `s.p.a.l`
--

CREATE TABLE `s.p.a.l` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s.p.a.l`
--

INSERT INTO `s.p.a.l` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Alfred Gomis', 'Senegal', 'GK'),
(3, 'Johan Djourou', 'Switzerland', 'DF'),
(4, 'Thiago Rangel Cionek', 'Poland', 'DF'),
(5, 'Lorenco Simic', 'Croatia', 'DF'),
(6, 'Simone Missiroli', 'Italy', 'MF'),
(7, 'Mirco Antenucci', 'Italy', 'FW'),
(8, 'Mattia Valoti', 'Italy', 'MF'),
(10, 'Sergio Floccari', 'Italy', 'FW'),
(11, 'Alessandro Murgia', 'Italia', 'MF'),
(12, 'Andrea Fulignati', 'Italy', 'GK'),
(13, 'Vasco Regini', 'Italy', 'DF'),
(14, 'Kevin Bonifazi', 'Italy', 'DF'),
(15, 'Gabriele Moncini', 'Italy', 'FW'),
(16, 'Mirko Valdifiori', 'Italy', 'MF'),
(17, 'Giacomo Poluzzi', 'Italy', 'GK'),
(19, 'Jasmin Kurtic', 'Slovenia', 'MF'),
(23, 'Francesco Vicari', 'Italy', 'DF'),
(28, 'Pasquale Schiattarella', 'Italy', 'MF'),
(37, 'Andrea Petagna', 'Italy', 'FW'),
(43, 'Alberto Paloschi', 'Italy', 'FW'),
(93, 'Mohamed Fares', 'France', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `sampdoria`
--

CREATE TABLE `sampdoria` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sampdoria`
--

INSERT INTO `sampdoria` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Emil Audero', 'Italy', 'GK'),
(3, 'Joachim Andersen', 'Denmark', 'DF'),
(4, 'Ronaldo Vieira', 'Brazil', 'MF'),
(5, 'Riccardo Saponara', 'Italy', 'MF'),
(6, 'Albin Ekdal', 'Sweden', 'MF'),
(7, 'Jacopo Sala', 'Italy', 'MF'),
(8, 'Edgar Barreto', 'Paraguay', 'MF'),
(10, 'Dennis Praet', 'Belgium', 'MF'),
(11, 'Gaston Ramirez', 'Uruguay', 'MF'),
(15, 'Omar Colley', 'Gambia', 'DF'),
(17, 'Gianluca Caprari', 'Italy', 'FW'),
(18, 'Maxime Leverbe', 'France', 'DF'),
(19, 'Vasco Regini', 'Italy', 'DF'),
(20, 'Marco Sau', 'Italy', 'FW'),
(22, 'Carlos Eugenio Tavares', 'Brazil', 'DF'),
(23, 'Manolo Gabbiadini', 'Italy', 'FW'),
(24, 'Bartosz Bereszynski', 'Poland', 'DF'),
(25, 'Alex Ferrari', 'Italia', 'DF'),
(27, 'Fabio Quagliarella', 'Italy', 'FW'),
(33, 'Rafael Cabral Barbosa', 'Brazil', 'GK'),
(72, 'Vid Belec', 'Slovenia', 'GK'),
(92, 'Gregoire Defrel', 'France', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `sassuolo`
--

CREATE TABLE `sassuolo` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sassuolo`
--

INSERT INTO `sassuolo` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(2, 'Marlon Santos', 'Brazil', 'DF'),
(3, 'Merih Demiral', 'Turkey', 'DF'),
(4, 'Francesco Magnanelli', 'Italy', 'MF'),
(5, 'Mauricio Lemos', 'Uruguay', 'DF'),
(6, 'Rogerio Oliveira Da Silva', 'Brazil', 'DF'),
(9, 'Filip Duricic', 'Serbia', 'MF'),
(10, 'Alessandro Matri', 'Italy', 'FW'),
(11, 'Gianluca Scamacca', 'Italy', 'FW'),
(12, 'Stefano Sensi', 'Italia', 'MF'),
(13, 'Federico Peluso', 'Italy', 'DF'),
(17, 'Leonardo Sernicola', 'Italy', 'DF'),
(18, 'Giacomo Raspadori', 'Italy', 'FW'),
(19, 'Jens Odgaard', 'Denmark', 'FW'),
(20, 'Jeremie Boga', 'France', 'FW'),
(25, 'Domenico Berardi', 'Italy', 'FW'),
(27, 'Kevin-Prince Boateng', 'Ghana', 'MF'),
(28, 'Giacomo Satalino', 'Italy', 'GK'),
(32, 'Alfred Duncan', 'Ghana', 'MF'),
(47, 'Andrea Consigli', 'Italy', 'GK'),
(68, 'Mehdi Bourabia', 'France', 'MF'),
(79, 'Gianluca Pegolo', 'Italy', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `torino`
--

CREATE TABLE `torino` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `torino`
--

INSERT INTO `torino` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Salvador Ichazo', 'Uruguay', 'GK'),
(3, 'Lyanco', 'Brazil', 'DF'),
(5, 'Armando Izzo', 'Italy', 'DF'),
(6, 'Roberto Soriano', 'Italy', 'MF'),
(7, 'Sasa Lukic', 'Serbia', 'MF'),
(8, 'Daniele Baselli', 'Italia', 'mf'),
(9, 'Andrea Belotti', 'Italy', 'FW'),
(10, 'Adem Ljajic', 'Serbia', 'MF'),
(11, 'Simone Zaza', 'Italy', 'FW'),
(14, 'Yago Falque Silva', 'Spain', 'MF'),
(15, 'Cristian Ansaldi', 'Argentina', 'DF'),
(17, 'Wilfried Stephane Singo', 'Ivory Coast', 'DF'),
(19, 'Vitalie Domacan', 'Moldova', 'FW'),
(20, 'Simone Edera', 'Italy', 'FW'),
(21, 'Alejandro Berenguer Remiro', 'Spain', 'FW'),
(23, 'Souahilo Meite', 'France', 'MF'),
(24, 'Emiliano Moretti', 'Italy', 'DF'),
(25, 'Antonio Rosati', 'Italy', 'GK'),
(29, 'Lorenzo De Silvestri', 'Italy', 'DF'),
(39, 'Salvatore Sirigu', 'Italy', 'GK'),
(72, 'Vincenzo Millico', 'Italy', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `udinese`
--

CREATE TABLE `udinese` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `udinese`
--

INSERT INTO `udinese` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(17, 'Bram Nuytinck', 'Netherland', 'DF'),
(16, 'Darwin Machis', 'Venezuela', 'FW'),
(8, 'Emmanuel Agyemang-Badu', 'Ghana', 'MF'),
(9, 'Felipe Vizeu Carmo', 'Brazil', 'FW'),
(7, 'Giuseppe Pezzella', 'Italy', 'DF'),
(19, 'Jens Larsen', 'Denmark', 'MF'),
(1, 'Juan Musso', 'Argentina', 'GK'),
(15, 'Kevin Lasagna', 'Italy', 'FW'),
(41, 'Milos Bocic', 'Serbia', 'FW'),
(2, 'Molla Wague', 'France', 'DF'),
(4, 'Nicholas Opoku', 'Ghana', 'DF'),
(14, 'Petar Micin', 'Serbia', 'MF'),
(10, 'Rodrigo de Paul', 'Argentina', 'FW'),
(3, 'Samir Santos', 'Brazil', 'DF'),
(27, 'Samuele Perisan', 'Italy', 'GK'),
(6, 'Seko Fofana', 'France', 'MF'),
(22, 'Simone Scuffet', 'Italy', 'GK'),
(7, 'Stefano Okaka Chuka', 'Italy', 'FW'),
(13, 'Svante Ingelsson', 'Sweden', 'MF'),
(11, 'Valon Behrami', 'Switzerland', 'MF'),
(5, 'William Ekong', 'Nigeria', 'DF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acmilan`
--
ALTER TABLE `acmilan`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `atalanta`
--
ALTER TABLE `atalanta`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `bologna`
--
ALTER TABLE `bologna`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `cagliari`
--
ALTER TABLE `cagliari`
  ADD PRIMARY KEY (`ten`);

--
-- Indexes for table `chievo verona`
--
ALTER TABLE `chievo verona`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `empoli`
--
ALTER TABLE `empoli`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `fiorentina`
--
ALTER TABLE `fiorentina`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `frosinone`
--
ALTER TABLE `frosinone`
  ADD PRIMARY KEY (`ten`);

--
-- Indexes for table `genoa`
--
ALTER TABLE `genoa`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `internazionale`
--
ALTER TABLE `internazionale`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `juventus`
--
ALTER TABLE `juventus`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `lazio`
--
ALTER TABLE `lazio`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `napoli`
--
ALTER TABLE `napoli`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `parma`
--
ALTER TABLE `parma`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `roma`
--
ALTER TABLE `roma`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `s.p.a.l`
--
ALTER TABLE `s.p.a.l`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `sampdoria`
--
ALTER TABLE `sampdoria`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `sassuolo`
--
ALTER TABLE `sassuolo`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `torino`
--
ALTER TABLE `torino`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `udinese`
--
ALTER TABLE `udinese`
  ADD PRIMARY KEY (`ten`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
