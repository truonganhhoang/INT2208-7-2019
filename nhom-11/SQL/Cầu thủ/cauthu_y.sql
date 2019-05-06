-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2019 at 05:25 AM
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
  `vitri` varchar(2) NOT NULL,
  `banthang` int(11) NOT NULL,
  `kientao` int(11) NOT NULL,
  `thedo` int(11) NOT NULL,
  `thevang` int(11) NOT NULL,
  `clb` varchar(50) NOT NULL,
  `logo_clb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acmilan`
--

INSERT INTO `acmilan` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(2, 'Davide Calabria', 'Italia', 'DF', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(4, 'Jose Mauri', 'Italia', 'MF', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(5, 'Giacomo Bonaventura', 'Italia', 'MF', 1, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(7, 'Samu Castillejo', 'Spain', 'MF', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(8, 'Jesus Fernandez Saez', 'Spain', 'FW', 0, 0, 0, 1, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(9, 'Gonzalo Higuain', 'Argentina', 'FW', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(10, 'Hakan Calhanoglu', 'Turkey', 'MF', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(11, 'Fabio Borini', 'Italia', 'FW', 0, 1, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(12, 'Andrea Conti', 'Italia', 'FW', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(13, 'Alessio Romagnoli', 'Italia', 'DF', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(14, 'Tiemoue Bakayoko', 'France', 'MF', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(16, 'Andrea Bertolacci', 'Italia', 'MF', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(17, 'Cristian Zapata', 'Colombia', 'DF', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(19, 'Krzysztof Piatek', 'Poland', 'FW', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(20, 'Ignazio Abate', 'Italia', 'DF', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(22, 'Mateo Musacchio', 'Argentina', 'DF', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(25, 'Pepe Reina', 'Spain', 'GK', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(35, 'Alessandro Plizzari', 'Italia', 'GK', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(63, 'Patrick Cutrone', 'Italia', 'FW', 1, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(68, 'Ricardo Rodriguez', 'Switzerland', 'DF', 0, 1, 0, 1, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png'),
(99, 'Gianluigi Donnarumma', 'Italia', 'GK', 0, 0, 0, 0, 'AC Milan', 'LogoCLB\\Series A\\AC Milan.png');

-- --------------------------------------------------------

--
-- Table structure for table `atalanta`
--

CREATE TABLE `atalanta` (
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
-- Dumping data for table `atalanta`
--

INSERT INTO `atalanta` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Etrit Berisha', 'Albania', 'GK', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(2, 'Rafael Toloi', 'Brazil', 'DF', 0, 1, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(4, 'Luca Valzania', 'Italia', 'MF', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(5, 'Andrea Masiello', 'Italia', 'DF', 0, 1, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(6, 'Jose Luis Palomino', 'Argentina', 'DF', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(7, 'Arkadiusz Reca', 'Poland', 'DF', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(8, 'Robin Gosens', 'Germany', 'DF', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(9, 'Andreas Cornelius', 'Denmark', 'FW', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(10, 'Alejandro Gomez', 'Argentina', 'MF', 2, 2, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(11, 'Remo Freuler', 'Switzerland', 'MF', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(13, 'Davide Bettella', 'Italia', 'DF', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(15, 'Marten de Roon', 'Netherlands', 'MF', 0, 0, 0, 1, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(17, 'Roberto Piccoli', 'Italia', 'FW', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(20, 'Marco Tumminello', 'Italia', 'FW', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(22, 'Matteo Pessina', 'Italia', 'MF', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(24, 'Emiliano Rigoni', 'Argentina', 'MF', 2, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(31, 'Francesco Rossi', 'Italia', 'GK', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(72, 'Josip Ilicic', 'Slovenia', 'FW', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(91, 'Duvan Zapata', 'Colombia', 'FW', 0, 1, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(95, 'Pierluigi Gollini', 'Italia', 'GK', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png'),
(99, 'Musa Barrow', 'Gambia', 'FW', 0, 0, 0, 0, 'Atalanta', 'LogoCLB\\Series A\\atalanta.png');

-- --------------------------------------------------------

--
-- Table structure for table `bologna`
--

CREATE TABLE `bologna` (
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
-- Dumping data for table `bologna`
--

INSERT INTO `bologna` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Junior Costa', 'Brazil', 'GK', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(3, 'Giancarlo Gonzalez', 'Costa Rica', 'DF', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(4, 'Lyanco', 'Brazil', 'DF', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(5, 'Erick Pulgar', 'Chile', 'DF', 0, 0, 0, 1, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(6, 'Nehuen Paz', 'Argentina', 'DF', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(7, 'Riccardo Orsolini', 'Italia', 'FW', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(8, 'Adam Nagy', 'Hungary', 'MF', 0, 0, 1, 2, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(9, 'Federico Santander', 'Paraguay', 'FW', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(10, 'Nicola Sansone', 'Italia', 'FW', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(11, 'Ladislav Krejci', 'Czech', 'MF', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(14, 'Federico Mattiello', 'Italia', 'DF', 0, 0, 0, 1, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(15, 'Ibrahima Mbaye', 'Senegal', 'DF', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(16, 'Andrea Poli', 'Italia', 'MF', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(20, 'Simone Edera', 'Italia', 'FW', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(21, 'Roberto Soriano', 'Italia', 'MF', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(22, 'Mattia Destro', 'Italia', 'FW', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(24, 'Rodrigo Palacio', 'Argentina', 'FW', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(28, 'Lukasz Skorupski', 'Poland', 'GK', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(29, 'Antonio Santurro', 'Italia', 'GK', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(31, 'Blerim Dzemaili', 'Switzerland', 'MF', 0, 0, 0, 1, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png'),
(32, 'Mattias Svanberg', 'Sweden', 'MF', 0, 0, 0, 0, 'Bologna FC', 'LogoCLB\\Series A\\Bologna.png');

-- --------------------------------------------------------

--
-- Table structure for table `cagliari`
--

CREATE TABLE `cagliari` (
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
-- Dumping data for table `cagliari`
--

INSERT INTO `cagliari` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(9, 'Alberto Cerri', 'Italy', 'FW', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(35, 'Alessandro Marongiu', 'Italy', 'FW', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(23, 'Christian Oliva', 'Uruguay', 'MF', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(77, 'Cyril Thereau', 'France', 'FW', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(4, 'Daniele Dessena', 'Italy', 'MF', 0, 0, 0, 1, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(17, 'Diego Farias', 'Brazil', 'FW', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(19, 'Fabio Pisacane', 'Italy', 'DF', 0, 0, 0, 1, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(12, 'Fabrizio Cacciatore', 'Italy', 'DF', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(6, 'Filip Bradaric', 'Croatia', 'MF', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(10, 'Joao Pedro Silva', 'Portugal', 'DF', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(30, 'Leonardo Pavoletti', 'Italy', 'FW', 2, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(8, 'Luca Cigarini', 'Italy', 'MF', 0, 0, 0, 1, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(3, 'Luca Pellegrini', 'Italy', 'DF', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(25, 'Marco Sau', 'Italy', 'FW', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(2, 'Marko Pajac', 'Croatia', 'MF', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(18, 'Nicolò Barella', 'Italy', 'MF', 1, 0, 0, 2, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(1, 'Rafael Andrade Pinheiro', 'Brazil', 'GK', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(15, 'Ragnar Klavan', 'Estonia', 'DF', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(12, 'Riccardo Daga', 'Italy', 'GK', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(16, 'Simone Aresti', 'Italy', 'GK', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png'),
(14, 'Valter Birsa', 'Slovenia', 'MF', 0, 0, 0, 0, 'Cagliari Calcio', 'LogoCLB\\Series A\\cagliari.png');

-- --------------------------------------------------------

--
-- Table structure for table `chievo`
--

CREATE TABLE `chievo` (
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
-- Dumping data for table `chievo`
--

INSERT INTO `chievo` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Adrian Semper', 'Croatia', 'GK', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(2, 'Ezequiel Schelotto', 'Italy', 'MF', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(3, 'Strahinja Tanasijevic', 'Serbia', 'DF', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(4, 'Nicola Rigoni', 'Italy', 'MF', 0, 0, 0, 1, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(5, 'Federico Barba', 'Italy', 'DF', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(6, 'Nicolas Frey', 'France', 'DF', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(7, 'Lucas Piazon', 'Brazil', 'MF', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(8, 'Ivan Radovanovic', 'Serbia', 'MF', 0, 0, 0, 2, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(9, 'Mariusz Stepinski', 'Poland', 'FW', 1, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(10, 'Manuel Pucciarelli', 'Italy', 'FW', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(11, 'Mehdi Leris', 'France', 'FW', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(12, 'Bostjan Cesar', 'Slovenia', 'DF', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(13, 'Sofian Kiyine', 'Belgium', 'MF', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(14, 'Mattia Bani', 'Italy', 'DF', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(15, 'Luca Rossettini', 'Italy', 'DF', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(16, 'Andrea Seculin', 'Italy', 'GK', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(17, 'Emanuele Giaccherini', 'Italy', 'MF', 1, 1, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(20, 'Filip Djordjevic', 'Serbia', 'FW', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(25, 'Sergej Grubac', 'Montenegro', 'FW', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(31, 'Sergio Pellissier', 'Italy', 'FW', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png'),
(67, 'Elia Caprile', 'Italy', 'GK', 0, 0, 0, 0, 'Chievo Verona', 'LogoCLB\\Series A\\Chievo Verona.png');

-- --------------------------------------------------------

--
-- Table structure for table `empoli`
--

CREATE TABLE `empoli` (
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
-- Dumping data for table `empoli`
--

INSERT INTO `empoli` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Ivan Provedel', 'Italy', 'GK', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(2, 'Giovanni Di Lorenzo', 'Italy', 'DF', 0, 1, 0, 1, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(4, 'Matteo Brighi', 'Italy', 'MF', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(5, 'Frederic Veseli', 'Switzerland', 'DF', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(6, 'Marko Pajac', 'Croatia', 'MF', 0, 1, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(7, 'Levan Mchedlidze', 'Gruzia', 'FW', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(8, 'Hamed Junior Traore', 'Ivory Coast', 'MF', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(9, 'Alejandro Rodriguez', 'Spain', 'MF', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(10, 'Ismael Bennacer', 'France', 'MF', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(11, 'Francesco Caputo', 'Italy', 'FW', 1, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(13, 'Luca Antonelli', 'Italy', 'DF', 0, 0, 0, 1, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(17, 'Lorenzo Lollo', 'Italy', 'MF', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(19, 'Arnel Jakupovic', 'Austria', 'FW', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(20, 'Antonino La Gumina', 'Italy', 'FW', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(21, 'Pietro Terracciano', 'Italy', 'GK', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(22, 'Domenico Maietta', 'Italy', 'DF', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(23, 'Manuel Pasqual', 'Italy', 'DF', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(26, 'Matias Silvestre', 'Argentina', 'DF', 0, 0, 0, 1, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(37, 'Dimitri Oberlin', 'Switzerland', 'FW', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(40, 'Gianluca Saro', 'Italy', 'GK', 0, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png'),
(66, 'Samuel Mraz', 'Slovakia', 'FW', 1, 0, 0, 0, 'Empoli FC', 'LogoCLB\\Series A\\Empoli.png');

-- --------------------------------------------------------

--
-- Table structure for table `fiorentina`
--

CREATE TABLE `fiorentina` (
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
-- Dumping data for table `fiorentina`
--

INSERT INTO `fiorentina` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Alban Lafont', 'France', 'GK', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(2, 'Vincent Laurini', 'France', 'DF', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(3, 'Cristiano Biraghi', 'Italy', 'MF', 0, 1, 0, 1, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(4, 'Nikola Milenkovic', 'Serbia', 'DF', 1, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(5, 'Federico Ceccherini', 'Italy', 'DF', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(6, 'Christian Noregaard', 'Germany', 'MF', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(7, 'Valentin Eysseric', 'France', 'MF', 0, 1, 0, 1, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(8, 'Gerson', 'Brazil', 'MF', 1, 1, 0, 1, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(9, 'Giovanni Pablo Simeone', 'Argentina', 'FW', 1, 1, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(10, 'Marko Pjaca', 'Croatia', 'FW', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(11, 'Kevin Mirallas', 'Belgium', 'MF', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(14, 'Bryan Dabo', 'France', 'MF', 0, 0, 0, 1, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(15, 'Maximiliano Olivera', 'Uruguay', 'DF', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(16, 'David Hancko', 'Slovakia', 'DF', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(20, 'German Alejandro Pezzella', 'Argentina', 'DF', 0, 0, 0, 1, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(23, 'Pietro Terracciano', 'Italy', 'GK', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(26, 'Edimilson Fernandes', 'Switzerland', 'FW', 0, 0, 0, 1, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(27, 'Martin Graiciar', 'Czech', 'FW', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(28, 'Dusan Vlahovic', 'Serbia', 'FW', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(29, 'Luis Muriel', 'Colombia', 'FW', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png'),
(33, 'Federico Brancolini', 'Italy', 'GK', 0, 0, 0, 0, 'ACF Fiorentina', 'LogoCLB\\Series A\\Fiorentina.png');

-- --------------------------------------------------------

--
-- Table structure for table `frosinone`
--

CREATE TABLE `frosinone` (
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
-- Dumping data for table `frosinone`
--

INSERT INTO `frosinone` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(14, 'Andrea Errico', 'Italy', 'MF', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(3, 'Christian Molinaro', 'Italy', 'DF', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(9, 'Daniel Ciofani', 'Italy', 'FW', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(10, 'Danilo Soddimo', 'Italy', 'FW', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(6, 'Edoardo Goldaniga', 'Italy', 'DF', 0, 0, 0, 1, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(18, 'Federico Dionisi', 'Italy', 'FW', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(22, 'Francesco Bardi', 'Italy', 'GK', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(17, 'Francesco Zampano', 'Italy', 'DF', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(15, 'Lorenzo Ariaudo', 'Italy', 'DF', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(19, 'Luca Matarese', 'Italy', 'MF', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(7, 'Luca Paganini', 'Italy', 'FW', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(16, 'Luca Valzania', 'Italy', 'MF', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(57, 'Marco Sportiello', 'Italy', 'GK', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(5, 'Mirko Gori', 'Italy', 'MF', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(23, 'Nicolo Brighenti', 'Italy', 'DF', 0, 0, 0, 1, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(2, 'Paolo Ghiglione', 'Italy', 'FW', 0, 0, 0, 1, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(12, 'Pier Paolo Salvati', 'Italy', 'GK', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(8, 'Raffaele Maiello', 'Italy', 'MF', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(4, 'Rai Vloet', 'Netherlands', 'MF', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(4, 'Stefan Simic', 'Czech', 'DF', 0, 0, 0, 0, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png'),
(11, 'Stipe Perica', 'Croatia', 'FW', 0, 0, 0, 2, 'Frosinone Calcio', 'LogoCLB\\Series A\\Frosinone.png');

-- --------------------------------------------------------

--
-- Table structure for table `genoa`
--

CREATE TABLE `genoa` (
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
-- Dumping data for table `genoa`
--

INSERT INTO `genoa` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Federico Marchetti', 'Italy', 'GK', 0, 0, 0, 1, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(2, 'Nicolas Spolli', 'Argentina', 'DF', 0, 0, 0, 1, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(3, 'Koray Gunter', 'Germany', 'DF', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(4, 'Domenico Criscito', 'Italy', 'DF', 0, 3, 0, 2, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(5, 'Lisandro Lopez', 'Argentina', 'DF', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(8, 'Romulo', 'Italy', 'MF', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(9, 'Krzysztof Piatek', 'Poland', 'FW', 4, 0, 0, 1, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(10, 'Gianluca Lapadula', 'Italy', 'FW', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(11, 'Christian Kouame', 'Ivory Coast', 'FW', 1, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(13, 'Giuseppe Pezzella', 'Italy', 'DF', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(14, 'Davide Biraschi', 'Italy', 'DF', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(15, 'Luca Mazzitelli', 'Italy', 'MF', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(18, 'Esteban Rolon', 'Argentina', 'MF', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(19, 'Goran Pandev', 'Macedonia', 'FW', 1, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(21, 'Ivan Radovanovic', 'Serbia', 'MF', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(22, 'Darko Lazovic', 'Serbia', 'MF', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(23, 'Alessandro Russo', 'Italy', 'GK', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(24, 'Daniel Bessa', 'Brazil', 'FW', 0, 0, 0, 2, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(25, 'Rok Vodisek', 'Slovenia', 'GK', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(27, 'Stefano Sturaro', 'Italy', 'MF', 0, 0, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png'),
(39, 'Andrea Favilli', 'Italy', 'FW', 0, 2, 0, 0, 'Genoa CFC', 'LogoCLB\\Series A\\Genoa.png');

-- --------------------------------------------------------

--
-- Table structure for table `inter`
--

CREATE TABLE `inter` (
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
-- Dumping data for table `inter`
--

INSERT INTO `inter` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Samir Handanovic', 'Slovenia', 'GK', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(2, 'Sime Vrsaljko', 'Croatia', 'DF', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(5, 'Roberto Gagliardini', 'Italy', 'MF', 0, 0, 0, 1, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(6, 'Stefan de Vrij', 'Netherlands', 'DF', 1, 0, 0, 1, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(7, 'Yann Karamoh', 'France', 'MF', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(8, 'Matias Vecino', 'Uruguay', 'MF', 0, 0, 0, 1, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(9, 'Mauro Icardi', 'Argentina', 'FW', 0, 1, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(10, 'Lautaro Martinez', 'Argentina', 'FW', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(11, 'Keita Balde', 'Senegal', 'FW', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(13, 'Andrea Ranocchia', 'Italy', 'DF', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(14, 'Radja Nainggolan', 'Belgium', 'MF', 1, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(15, 'Joao Mario', 'Portugal', 'MF', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(16, 'Matteo Politano', 'Italy', 'MF', 0, 2, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(18, 'Kwadwo Asamoah', 'Ghana', 'DF', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(21, 'Cedric Soares', 'Portugal', 'DF', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(23, 'Joao Miranda', 'Brazil', 'DF', 0, 0, 0, 1, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(27, 'Daniele Padelli', 'Italy', 'GK', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(44, 'Ivan Perisic', 'Croatia', 'MF', 2, 1, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(46, 'Tommaso Berni', 'Italy', 'GK', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(61, 'Facundo Colidio', 'Argentina', 'FW', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png'),
(74, 'Anthony Salcedo Mora', 'Italy', 'FW', 0, 0, 0, 0, 'Internazionale', 'LogoCLB\\Series A\\Internazionale.png');

-- --------------------------------------------------------

--
-- Table structure for table `juventus`
--

CREATE TABLE `juventus` (
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
-- Dumping data for table `juventus`
--

INSERT INTO `juventus` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Wojciech Szczesny', 'Poland', 'GK', 0, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(2, 'Mattia De Sciglio', 'Italy', 'DF', 0, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(3, 'Giorgio Chiellini', 'Italy', 'DF', 0, 1, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(4, 'Medhi Benatia', 'Morocco', 'DF', 0, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(5, 'Miralem Pjanic', 'Bosnia-Herzegovina', 'MF', 1, 0, 0, 1, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(6, 'Sami Khedira', 'Germany', 'MF', 1, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(7, 'Cristiano Ronaldo', 'Portugal', 'FW', 0, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(10, 'Paulo Dybala', 'Argentina', 'FW', 0, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(11, 'Douglas Costa', 'Brazil', 'FW', 0, 0, 0, 1, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(12, 'Alex Sandro', 'Brazil', 'DF', 0, 1, 0, 1, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(14, 'Blaise Matuidi', 'France', 'MF', 1, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(15, 'Andrea Barzagli', 'Italy', 'DF', 0, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(16, 'Juan Cuadrado', 'Colombia', 'FW', 0, 0, 0, 1, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(17, 'Mario Mandzukic', 'Crotia', 'FW', 2, 1, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(18, 'Moise Kean', 'Italy', 'FW', 0, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(19, 'Leonardo Bonucci', 'Italy', 'DF', 0, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(21, 'Carlo Pinsoglio', 'Italy', 'GK', 0, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(22, 'Mattia Perin', 'Italy', 'GK', 0, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(23, 'Emre Can', 'Germany', 'MF', 0, 0, 0, 1, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(30, 'Rodrigo Bentancur Colman', 'Uruguay', 'MF', 0, 0, 0, 0, 'Juventus', 'LogoCLB\\Series A\\Juventus.png'),
(33, 'Federico Bernardeschi', 'Italy', 'MF', 1, 0, 0, 1, 'Juventus', 'LogoCLB\\Series A\\Juventus.png');

-- --------------------------------------------------------

--
-- Table structure for table `lazio`
--

CREATE TABLE `lazio` (
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
-- Dumping data for table `lazio`
--

INSERT INTO `lazio` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Thomas Strakosha', 'Albania', 'GK', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(3, 'Luiz Felipe', 'Brazil', 'DF', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(4, 'Patricio Gabarron', 'Spain', 'DF', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(5, 'Jordan Lukaku', 'Belgium', 'DF', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(7, 'Valon Berisha', 'Norway', 'MF', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(8, 'Dusan Basta', 'Serbia', 'DF', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(9, 'Alessandro Rossi', 'Italy', 'FW', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(10, 'Luis Alberto', 'Spain', 'MF', 1, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(11, 'Carlos Correa', 'Brazil', 'MF', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(13, 'Wallace Fortuna Santos', 'Brazil', 'DF', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(14, 'Riza Durmisi', 'Denmark', 'DF', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(16, 'Marco Parolo', 'Italy', 'MF', 0, 0, 0, 2, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(17, 'Ciro Immobile', 'Italy', 'FW', 1, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(20, 'Felipe Caicedo', 'Ecuador', 'FW', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(21, 'Sergej Milinkovic-Savic', 'Serbia', 'MF', 0, 0, 0, 1, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(23, 'Guido Guerrieri', 'Italy', 'GK', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(24, 'Silvio Proto', 'Belgium', 'GK', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(25, 'Milan Badelj', 'Croatia', 'MF', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(27, 'Romulo', 'Italy', 'MF', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(30, 'Pedro Lomba Neto', 'Portugal', 'FW', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png'),
(49, 'Jorge Silva', 'Brazil', 'FW', 0, 0, 0, 0, 'S.S. Lazio', 'LogoCLB\\Series A\\SS Lazio.png');

-- --------------------------------------------------------

--
-- Table structure for table `napoli`
--

CREATE TABLE `napoli` (
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
-- Dumping data for table `napoli`
--

INSERT INTO `napoli` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Alex Meret', 'Italy', 'GK', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(2, 'Kevin Malcuit', 'France', 'DF', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(3, 'Karim Zedadka', 'France', 'MF', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(5, 'Allan Marques Loureiro', 'Brazil', 'MF', 0, 2, 0, 1, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(6, 'Mario Rui', 'Portugal', 'DF', 0, 0, 0, 1, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(7, 'Jose Callejon', 'Spain', 'FW', 0, 2, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(8, 'Fabian Ruiz', 'Spain', 'MF', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(9, 'Simone Verdi', 'Italy', 'FW', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(11, 'Adam Ounas', 'France', 'FW', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(13, 'Sebastiano Luperto', 'Italy', 'DF', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(14, 'Dries Mertens', 'Belgium', 'FW', 1, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(17, 'Marek Hamsik', 'Slovakia', 'MF', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(18, 'Gianluca Gaetano', 'Italy', 'MF', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(19, 'Nikola Maksimovic', 'Serbia', 'DF', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(20, 'Piotr Zielinski', 'Poland', 'MF', 2, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(21, 'Vlad Chiriches', 'Romania', 'DF', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(22, 'Alessandro D\'Andrea', 'Italy', 'GK', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(23, 'Elseid Hysaj', 'Albania', 'DF', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(24, 'Lorenzo Insigne', 'Italy', 'FW', 1, 0, 0, 1, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(25, 'David Ospina Ramirez', 'Colombia', 'GK', 0, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png'),
(99, 'Arkadiusz Milik', 'Poland', 'FW', 1, 0, 0, 0, 'SSC Napoli', 'LogoCLB\\Series A\\Napoli.png');

-- --------------------------------------------------------

--
-- Table structure for table `parma`
--

CREATE TABLE `parma` (
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
-- Dumping data for table `parma`
--

INSERT INTO `parma` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Pierluigi Frattali', 'Italia', 'GK', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(2, 'Simone Iacoponi', 'Italia', 'DF', 0, 0, 0, 1, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(3, 'Federico Dimarco', 'Italia', 'DF', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(5, 'Leo Stulac', 'Slovenia', 'FW', 0, 0, 0, 1, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(7, 'Alessio Da Cruz', 'Netherlands', 'MF', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(8, 'Abdou Lahad Diakhate', 'Senegal ', 'MF', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(9, 'Fabio Ceravolo', 'Italia', 'FW', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(10, 'Amato Ciciretti', 'Italia', 'MF', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(11, 'Gianni Munari', 'Italia', 'MF', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(13, 'Francisco Sierralta', 'Chile', 'DF', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(14, 'Jose Machin Dicombo', 'Spain', 'MF', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(17, 'Antonino Barilla', 'Italia', 'MF', 1, 0, 0, 1, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(22, 'Eduardo Bruno Alves', 'Potugal', 'DF', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(23, 'Marcello Gazzola', 'Italia', 'DF', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(27, 'Gervinho', 'Ivory Coast', 'FW', 1, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(28, 'Riccardo Gagliolo', 'Italia', 'DF', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(31, 'Gabriel Brazao', 'Brazil', 'GK', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(45, 'Roberto Inglese', 'Italia', 'FW', 1, 1, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(52, 'Carl Davordzie', 'Ghana', 'FW', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(55, 'Luigi Sepe', 'Italia', 'GK', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png'),
(77, 'Jonathan Ludovic Biabiany', 'France', 'FW', 0, 0, 0, 0, 'Parma Calcio', 'LogoCLB\\Series A\\AC Parma.png');

-- --------------------------------------------------------

--
-- Table structure for table `roma`
--

CREATE TABLE `roma` (
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
-- Dumping data for table `roma`
--

INSERT INTO `roma` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Robin Olsen', 'Sweden', 'GK', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(2, 'Rick Karsdorp', 'Netherlands', 'DF', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(3, 'Luca Pellegrin', 'Italia', 'DF', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(5, 'Juan Jesus', 'Brazil', 'DF', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(6, 'Kevin Strootman', 'Netherlands', 'MF', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(8, 'Diego Perotti', 'Argentina', 'FW', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(9, 'Edin Dzeko', 'Bosnia-Herzegovina', 'FW', 1, 1, 0, 1, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(11, 'Aleksandar Kolarov', 'Serbia', 'DF', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(14, 'Patrik Schick', 'Czech', 'FW', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(15, 'Ivan Marcano', 'Spain', 'DF', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(16, 'Daniele De Rossi', 'Italia', 'MF', 0, 0, 0, 1, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(17, 'Cengiz Under', 'Turkey', 'FW', 0, 1, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(18, 'Davide Santon', 'Italia', 'DF', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(24, 'Alessandro Florenzi', 'Italia', 'MF', 1, 0, 0, 1, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(27, 'Javier Pastore', 'Argentina', 'MF', 1, 1, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(34, 'Justin Kluivert', 'Netherlands', 'FW', 0, 1, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(42, 'Steven N\'Zonzi', 'France', 'MF', 0, 0, 0, 2, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(52, 'Andrea Marcucci', 'Italia', 'MF', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(54, 'Gianmarco Cangiano', 'Italia', 'FW', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(63, 'Daniel Fuzato', 'Brazil', 'GK', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png'),
(77, 'Stefano Greco', 'Italia', 'GK', 0, 0, 0, 0, 'AS Roma', 'LogoCLB\\Series A\\AS Roma.png');

-- --------------------------------------------------------

--
-- Table structure for table `sampdoria`
--

CREATE TABLE `sampdoria` (
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
-- Dumping data for table `sampdoria`
--

INSERT INTO `sampdoria` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Emil Audero', 'Italy', 'GK', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(3, 'Joachim Andersen', 'Denmark', 'DF', 0, 1, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(4, 'Ronaldo Vieira', 'Brazil', 'MF', 0, 0, 0, 1, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(5, 'Riccardo Saponara', 'Italy', 'MF', 0, 1, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(6, 'Albin Ekdal', 'Sweden', 'MF', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(7, 'Jacopo Sala', 'Italy', 'MF', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(8, 'Edgar Barreto', 'Paraguay', 'MF', 0, 1, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(10, 'Dennis Praet', 'Belgium', 'MF', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(11, 'Gaston Ramirez', 'Uruguay', 'MF', 0, 1, 0, 2, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(15, 'Omar Colley', 'Gambia', 'DF', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(17, 'Gianluca Caprari', 'Italy', 'FW', 1, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(18, 'Maxime Leverbe', 'France', 'DF', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(19, 'Vasco Regini', 'Italy', 'DF', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(20, 'Marco Sau', 'Italy', 'FW', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(22, 'Carlos Eugenio Tavares', 'Brazil', 'DF', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(23, 'Manolo Gabbiadini', 'Italy', 'FW', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(24, 'Bartosz Bereszynski', 'Poland', 'DF', 0, 1, 0, 1, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(25, 'Alex Ferrari', 'Italia', 'DF', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(27, 'Fabio Quagliarella', 'Italy', 'FW', 2, 2, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(33, 'Rafael Cabral Barbosa', 'Brazil', 'GK', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(72, 'Vid Belec', 'Slovenia', 'GK', 0, 0, 0, 0, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png'),
(92, 'Gregoire Defrel', 'France', 'FW', 3, 0, 0, 1, 'Sampdoria', 'LogoCLB\\Series A\\Sampdoria.png');

-- --------------------------------------------------------

--
-- Table structure for table `sassuolo`
--

CREATE TABLE `sassuolo` (
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
-- Dumping data for table `sassuolo`
--

INSERT INTO `sassuolo` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(2, 'Marlon Santos', 'Brazil', 'DF', 0, 0, 1, 2, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(3, 'Merih Demiral', 'Turkey', 'DF', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(4, 'Francesco Magnanelli', 'Italy', 'MF', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(5, 'Mauricio Lemos', 'Uruguay', 'DF', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(6, 'Rogerio', 'Brazil', 'DF', 0, 0, 0, 2, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(9, 'Filip Duricic', 'Serbia', 'MF', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(10, 'Alessandro Matri', 'Italy', 'FW', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(11, 'Gianluca Scamacca', 'Italy', 'FW', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(12, 'Stefano Sensi', 'Italia', 'MF', 0, 0, 0, 2, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(13, 'Federico Peluso', 'Italy', 'DF', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(17, 'Leonardo Sernicola', 'Italy', 'DF', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(18, 'Giacomo Raspadori', 'Italy', 'FW', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(19, 'Jens Odgaard', 'Denmark', 'FW', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(20, 'Jeremie Boga', 'France', 'FW', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(25, 'Domenico Berardi', 'Italy', 'FW', 2, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(27, 'Kevin-Prince Boateng', 'Ghana', 'MF', 2, 0, 0, 1, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(28, 'Giacomo Satalino', 'Italy', 'GK', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(32, 'Alfred Duncan', 'Ghana', 'MF', 0, 0, 0, 2, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(47, 'Andrea Consigli', 'Italy', 'GK', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(68, 'Mehdi Bourabia', 'France', 'MF', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png'),
(79, 'Gianluca Pegolo', 'Italy', 'GK', 0, 0, 0, 0, 'Sassuolo Calcio', 'LogoCLB\\Series A\\sassuolo.png');

-- --------------------------------------------------------

--
-- Table structure for table `spal`
--

CREATE TABLE `spal` (
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
-- Dumping data for table `spal`
--

INSERT INTO `spal` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Alfred Gomis', 'Senegal', 'GK', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(3, 'Johan Djourou', 'Switzerland', 'DF', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(4, 'Thiago Cionek', 'Poland', 'DF', 0, 0, 0, 1, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(5, 'Lorenco Simic', 'Croatia', 'DF', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(6, 'Simone Missiroli', 'Italy', 'MF', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(7, 'Mirco Antenucci', 'Italy', 'FW', 1, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(8, 'Mattia Valoti', 'Italy', 'MF', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(10, 'Sergio Floccari', 'Italy', 'FW', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(11, 'Alessandro Murgia', 'Italia', 'MF', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(12, 'Andrea Fulignati', 'Italy', 'GK', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(13, 'Vasco Regini', 'Italy', 'DF', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(14, 'Kevin Bonifazi', 'Italy', 'DF', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(15, 'Gabriele Moncini', 'Italy', 'FW', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(16, 'Mirko Valdifiori', 'Italy', 'MF', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(17, 'Giacomo Poluzzi', 'Italy', 'GK', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(19, 'Jasmin Kurtic', 'Slovenia', 'MF', 1, 0, 0, 1, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(23, 'Francesco Vicari', 'Italy', 'DF', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(28, 'Pasquale Schiattarella', 'Italy', 'MF', 0, 0, 0, 2, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(37, 'Andrea Petagna', 'Italy', 'FW', 0, 0, 0, 1, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(43, 'Alberto Paloschi', 'Italy', 'FW', 0, 0, 0, 0, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png'),
(93, 'Mohamed Fares', 'France', 'FW', 0, 0, 0, 1, 'SPAL 2013 Ferrara', 'LogoCLB\\Series A\\S.P.A.L.png');

-- --------------------------------------------------------

--
-- Table structure for table `torino`
--

CREATE TABLE `torino` (
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
-- Dumping data for table `torino`
--

INSERT INTO `torino` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Salvador Ichazo', 'Uruguay', 'GK', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(3, 'Lyanco', 'Brazil', 'DF', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(5, 'Armando Izzo', 'Italy', 'DF', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(6, 'Roberto Soriano', 'Italy', 'MF', 0, 1, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(7, 'Sasa Lukic', 'Serbia', 'MF', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(8, 'Daniele Baselli', 'Italia', 'MF', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(9, 'Andrea Belotti', 'Italy', 'FW', 1, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(10, 'Adem Ljajic', 'Serbia', 'MF', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(11, 'Simone Zaza', 'Italy', 'FW', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(14, 'Iago Falqué', 'Italy', 'FW', 0, 1, 0, 1, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(15, 'Cristian Ansaldi', 'Argentina', 'DF', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(17, 'Wilfried Stephane Singo', 'Ivory Coast', 'DF', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(19, 'Vitalie Domacan', 'Moldova', 'FW', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(20, 'Simone Edera', 'Italy', 'FW', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(21, 'Alejandro Berenguer Remiro', 'Spain', 'FW', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(23, 'Souahilo Meite', 'France', 'MF', 0, 0, 0, 1, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(24, 'Emiliano Moretti', 'Italy', 'DF', 0, 0, 0, 2, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(25, 'Antonio Rosati', 'Italy', 'GK', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(33, 'Nicolas N\'Koulou', 'Cameroon', 'DF', 1, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(39, 'Salvatore Sirigu', 'Italy', 'GK', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png'),
(72, 'Vincenzo Millico', 'Italy', 'FW', 0, 0, 0, 0, 'Torino FC', 'LogoCLB\\Series A\\Torino.png');

-- --------------------------------------------------------

--
-- Table structure for table `udinese`
--

CREATE TABLE `udinese` (
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
-- Dumping data for table `udinese`
--

INSERT INTO `udinese` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(72, 'Antonín Barák', 'Czech Republic', 'MF', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(17, 'Bram Nuytinck', 'Netherland', 'DF', 0, 0, 0, 1, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(16, 'Darwin Machis', 'Venezuela', 'FW', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(8, 'Emmanuel Agyemang-Badu', 'Ghana', 'MF', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(9, 'Felipe Vizeu Carmo', 'Brazil', 'FW', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(7, 'Giuseppe Pezzella', 'Italy', 'DF', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(19, 'Jens Larsen', 'Denmark', 'MF', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(1, 'Juan Musso', 'Argentina', 'GK', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(15, 'Kevin Lasagna', 'Italy', 'FW', 0, 0, 0, 1, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(41, 'Milos Bocic', 'Serbia', 'FW', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(2, 'Molla Wague', 'France', 'DF', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(4, 'Nicholas Opoku', 'Ghana', 'DF', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(14, 'Petar Micin', 'Serbia', 'MF', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(10, 'Rodrigo de Paul', 'Argentina', 'FW', 2, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(3, 'Samir Santos', 'Brazil', 'DF', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(27, 'Samuele Perisan', 'Italy', 'GK', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(6, 'Seko Fofana', 'France', 'MF', 1, 1, 0, 1, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(22, 'Simone Scuffet', 'Italy', 'GK', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(13, 'Svante Ingelsson', 'Sweden', 'MF', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(11, 'Valon Behrami', 'Switzerland', 'MF', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png'),
(5, 'William Ekong', 'Nigeria', 'DF', 0, 0, 0, 0, 'Udinese Calcio', 'LogoCLB\\Series A\\Udinese.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
