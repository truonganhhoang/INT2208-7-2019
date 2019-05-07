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
-- Database: `cauthu_tbn`
--

-- --------------------------------------------------------

--
-- Table structure for table `alaves`
--

CREATE TABLE `alaves` (
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
-- Dumping data for table `alaves`
--

INSERT INTO `alaves` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Pacheco', 'Spain', 'GK', 0, 0, 0, 1, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(2, 'Vigaray', 'Spain', 'DF', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(3, 'Duarte', 'Spain', 'DF', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(5, 'Laguardia', 'Spain', 'DF', 0, 0, 0, 1, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(6, 'Guillermo Maripán', 'Chile', 'DF', 0, 0, 0, 1, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(7, 'Álex Blanco', 'Spain', 'FW', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(8, 'Pina', 'Spain', 'MF', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(9, 'Diego Rolán', 'Uruguay', 'FW', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(10, 'John Guidetti', 'Sweden', 'FW', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(11, 'Takashi Inui', 'Japan', 'MF', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(12, 'Rodrigo Ely', 'Italy', 'DF', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(13, 'Antonio Sivera', 'Spain', 'GK', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(15, 'Ximo Navarro', 'Spain', 'DF', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(16, 'Jonathan Calleri', 'Argentina', 'FW', 0, 0, 0, 1, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(17, 'Adrián Marín', 'Spain', 'DF', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(18, 'Borja Bastón', 'Spain', 'MF', 1, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(19, 'Manu García', 'Spain', 'MF', 0, 0, 0, 2, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(20, 'Darko Brašanac', 'Serbia', 'MF', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(23, 'Jony', 'Spain', 'MF', 0, 1, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png'),
(27, 'Antonio Perera', 'Spain', 'MF', 0, 0, 0, 0, 'CD Alavés', 'LogoCLB\\La Liga\\alaves.png');

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
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
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Adán', 'Spain', 'GK', 0, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(2, 'Diego Godín', 'Uruguay', 'DF', 0, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(3, 'Filipe Luís', 'Brazil', 'DF', 0, 0, 0, 1, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(4, 'Santiago Arias	', 'Colombia', 'DF', 0, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(5, 'Thomas Partey', 'Ghana', 'MF', 0, 0, 0, 2, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(6, 'Koke', 'Spain', 'MF', 0, 0, 0, 1, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(7, 'Antoine Griezmann', 'France', 'FW', 1, 1, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(8, 'Saúl', 'Spain', 'MF', 0, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(9, 'Nikola Kalinic', 'Croatia', 'FW', 0, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(10, 'Ángel Correa', 'Argentina', 'FW', 1, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(11, 'Thomas Lemar', 'France', 'MF', 0, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(13, 'Jan Oblak', 'Slovenia', 'GK', 0, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(15, 'Stefan Savic', 'Montenegro', 'DF', 0, 1, 1, 2, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(19, 'Diego Costa', 'Spain', 'FW', 0, 0, 0, 1, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(20, 'Juanfran', 'Spain', 'DF', 0, 0, 0, 1, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(21, 'Lucas Hernández', 'France', 'DF', 0, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(22, 'Morata', 'Spain', 'FW', 0, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(23, 'Vitolo', 'Spain', 'FW', 0, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(24, 'José Giménez', 'Uruguay', 'DF', 0, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png'),
(47, 'Joaquín Muñoz', 'Spain', 'FW', 0, 0, 0, 0, 'Atlético Madrid', 'LogoCLB\\La Liga\\atleticomadrid.png');

-- --------------------------------------------------------

--
-- Table structure for table `barcelona`
--

CREATE TABLE `barcelona` (
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
-- Dumping data for table `barcelona`
--

INSERT INTO `barcelona` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Marc-André ter Stege', 'Germany', 'GK', 0, 0, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(2, 'Nélson Semedo', 'Portugal', 'DF', 0, 0, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(3, 'Piqué', 'Spain', 'DF', 0, 0, 0, 1, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(4, 'Ivan Rakitic', 'Croatia', 'MF', 1, 1, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(5, 'Busquets', 'Spain', 'MF', 0, 0, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(6, 'Jean-Clair Todibo', 'France', 'DF', 0, 0, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(7, 'Coutinho', 'Brazil', 'MF', 1, 1, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(8, 'Arthur', 'Brazil', 'MF', 0, 1, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(9, 'Luis Suárez', 'Uruguay', 'FW', 2, 2, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(10, 'Lionel Messi', 'Argentina', 'FW', 4, 2, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(11, 'Ousmane Dembélé', 'France', 'FW', 2, 0, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(13, 'Jasper Cillessen', 'Netherlands', 'GK', 0, 0, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(14, 'Malcom', 'Brazil', 'FW', 0, 0, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(15, 'Clément Lenglet', 'France', 'DF', 0, 0, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(18, 'Jordi Alba', 'Spain', 'DF', 1, 1, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(20, 'Sergi Roberto', 'Spain', 'MF', 0, 1, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(22, 'Arturo Vidal', 'Chile', 'MF', 0, 0, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(23, 'Samuel Umtiti', 'France', 'DF', 0, 0, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(24, 'Thomas Vermaelen', 'Belgium', 'DF', 0, 0, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png'),
(27, 'Juan Miranda', 'Spain', 'DF', 0, 0, 0, 0, 'FC Barcelona', 'LogoCLB\\La Liga\\barcelona.png');

-- --------------------------------------------------------

--
-- Table structure for table `bilbao`
--

CREATE TABLE `bilbao` (
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
-- Dumping data for table `bilbao`
--

INSERT INTO `bilbao` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Remiro', 'Spain', 'GK', 0, 0, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(2, 'Kenan Kodro', 'Bosnia', 'FW', 0, 0, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(4, 'Iñigo Martínez', 'Spain', 'DF', 0, 0, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(6, 'San José', 'Spain', 'DF', 0, 0, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(7, 'Beñat', 'Spain', 'MF', 0, 0, 0, 1, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(8, 'Iturraspe', 'Spain', 'MF', 0, 0, 0, 1, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(9, 'Williams', 'Spain', 'FW', 0, 2, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(10, 'Muniain', 'Spain', 'FW', 2, 0, 0, 1, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(11, 'Córdoba', 'Spain', 'MF', 0, 0, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(12, 'Yuri', 'Spain', 'DF', 1, 0, 0, 2, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(13, 'Iago Herrerín', 'Spain', 'GK', 0, 0, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(14, 'Susaeta', 'Spain', 'MF', 1, 1, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(17, 'Mikel Rico', 'Spain', 'MF', 0, 0, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(18, 'De Marcos', 'Spain', 'DF', 0, 0, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(19, 'Ibai', 'Spain', 'FW', 0, 0, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(20, 'Aduriz', 'Spain', 'FW', 0, 0, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(21, 'Capa', 'Spain', 'DF', 0, 0, 0, 1, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(22, 'Raúl García', 'Spain', 'MF', 0, 1, 0, 1, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(24, 'Balenziaga', 'Spain', 'DF', 0, 0, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png'),
(30, 'Guruzeta', 'Spain', 'FW', 0, 0, 0, 0, 'Athletic Bilbao', 'LogoCLB\\La Liga\\athleticbilbao.png');

-- --------------------------------------------------------

--
-- Table structure for table `celtavigo`
--

CREATE TABLE `celtavigo` (
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
-- Dumping data for table `celtavigo`
--

INSERT INTO `celtavigo` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Sergio Álvarez', 'Spain', 'GK', 0, 0, 0, 1, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(2, 'Hugo Mallo', 'Spain', 'DF', 0, 0, 0, 2, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(3, 'David Costas', 'Spain', 'DF', 0, 0, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(4, 'Néstor Araujo', 'Mexico', 'DF', 0, 0, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(5, 'Okay Yokuslu', 'Turkey', 'MF', 0, 0, 0, 1, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(6, 'Nemanja Radoja', 'Serbia', 'MF', 0, 0, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(7, 'Emre Mor', 'Turkey', 'FW', 0, 0, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(8, 'Fran Beltrán', 'Spain', 'MF', 0, 0, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(9, 'Maximiliano Gómez', 'Uruguay', 'FW', 2, 2, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(10, 'Iago Aspas', 'Spain', 'FW', 1, 0, 0, 1, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(11, 'Pione Sisto', 'Denmark', 'FW', 1, 1, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(12, 'Wesley Hoedt', 'Hà Lan', 'DF', 0, 0, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(13, 'Rubén Blanco', 'Spain', 'GK', 0, 0, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(14, 'Stanislav Lobotka', 'Slovakia', 'MF', 0, 0, 0, 1, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(17, 'Juncà', 'Spain', 'DF', 0, 0, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(18, 'Mathias Jensen', 'Denmark', 'MF', 0, 0, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(19, 'Sofiane Boufal', 'Morocco', 'MF', 0, 0, 0, 1, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(21, 'Jozabed', 'Spain', 'MF', 0, 0, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(22, 'Gustavo Cabral', 'Argentina', 'DF', 0, 0, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png'),
(29, 'Manu Apeh', 'Nigeria', 'FW', 0, 0, 0, 0, 'Celta Vigo', 'LogoCLB\\La Liga\\celtavigo.png');

-- --------------------------------------------------------

--
-- Table structure for table `eibar`
--

CREATE TABLE `eibar` (
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
-- Dumping data for table `eibar`
--

INSERT INTO `eibar` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Marko Dmitrovic', 'Serbia', 'GK', 0, 0, 0, 1, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(2, 'Jordi Calavera', 'Spain', 'DF', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(3, 'Bigas', 'Spain', 'DF', 0, 0, 0, 1, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(4, 'Iván Ramis', 'Spain', 'DF', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(5, 'Gonzalo Escalante', 'Argentina', 'MF', 1, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(6, 'Sergio Álvarez', 'Spain', 'MF', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(8, 'Pape Diop', 'Senegal', 'MF', 0, 0, 0, 1, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(9, 'Sergi Enrich', 'Spain', 'FW', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(12, 'Paulo Oliveira', 'Spain', 'DF', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(13, 'Riesgo', 'Spain', 'GK', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(14, 'Fabián Orellana', 'Chile', 'FW', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(15, 'Cote', 'Spain', 'DF', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(16, 'Pablo de Blasis', 'Argentina	', 'MF', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(17, 'Kike García', 'Spain', 'FW', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(19, 'Charles', 'Brazil', 'FW', 1, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(20, 'Cucurella', 'Spain', 'DF', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(21, 'Pedro León', 'Spain', 'MF', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(22, 'Pere Milla', 'Spain', 'FW', 0, 0, 0, 0, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(23, 'Arbilla', 'Spain', 'DF', 0, 1, 0, 1, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png'),
(24, 'Joan Jordán', 'Spain', 'MF', 0, 1, 0, 1, 'SD Eibar', 'LogoCLB\\La Liga\\eibar.png');

-- --------------------------------------------------------

--
-- Table structure for table `espanyol`
--

CREATE TABLE `espanyol` (
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
-- Dumping data for table `espanyol`
--

INSERT INTO `espanyol` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Roberto', 'Spain', 'GK', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(4, 'Víctor Sánchez', 'Spain', 'MF', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(5, 'Naldo', 'Brazil', 'DF', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(6, 'Óscar Duarte', 'Costa Rica', 'DF', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(7, 'Borja Iglesias', 'Spain', 'FW', 1, 0, 0, 1, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(8, 'Roberto Rosales', 'Venezuela', 'DF', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(9, 'Sergio García', 'Spain', 'FW', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(10, 'Sergi Darder', 'Spain', 'MF', 0, 0, 0, 1, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(11, 'Facundo Ferreyra', 'Argentina', 'FW', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(12, 'Dídac Vilà', 'Spain', 'DF', 0, 0, 0, 1, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(13, 'Diego López', 'Spain', 'GK', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(15, 'David López', 'Spain', 'MF', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(16, 'Javi López', 'Spain', 'DF', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(17, 'Hernán Pérez', 'Paraguay', 'MF', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(18, 'Álex López', 'Spain', 'MF', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(19, 'Pablo Piatti', 'Argentina', 'FW', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(20, 'Puado', 'Spain', 'FW', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(22, 'Mario Hermoso', 'Spain', 'DF', 1, 0, 0, 1, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(23, 'Granero', 'Spain', 'MF', 1, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png'),
(27, 'Lluís López', 'Spain', 'DF', 0, 0, 0, 0, 'Espanyol', 'LogoCLB\\La Liga\\espanyol.png');

-- --------------------------------------------------------

--
-- Table structure for table `getafe`
--

CREATE TABLE `getafe` (
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
-- Dumping data for table `getafe`
--

INSERT INTO `getafe` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Leandro Chichizola', 'Argentina', 'GK', 0, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(2, 'Dakonam Djené', 'Togo', 'DF', 0, 0, 0, 3, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(3, 'Antunes', 'Portugal', 'DF', 0, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(4, 'Bruno', 'Spain', 'DF', 0, 0, 0, 1, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(5, 'Markel Bergara', 'Spain', 'MF', 0, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(6, 'Leandro Cabrera', 'Uruguay', 'DF', 0, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(7, 'Mata', 'Spain', 'FW', 0, 1, 0, 1, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(8, 'Portillo', 'Spain', 'MF', 0, 0, 0, 1, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(9, 'Ángel', 'Spain', 'FW', 1, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(10, 'Gaku Shibasaki', 'Japan', 'MF', 0, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(11, 'Amath Diedhiou', 'Senegal', 'FW', 0, 0, 0, 1, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(12, 'Samu Sáiz', 'Spain', 'FW', 0, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(13, 'David Soria', 'Spain', 'GK', 0, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(15, 'Sebastián Cristóforo', 'Uruguay', 'MF', 0, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(16, 'Mathieu Flamini', 'Pháp', 'MF', 0, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(18, 'Mauro Arambarri', 'Uruguay', 'MF', 0, 0, 0, 1, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(19, 'Molina', 'Spain', 'FW', 1, 0, 0, 1, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(21, 'Ignasi Miquel', 'Spain', 'DF', 0, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(22, 'Damián Suárez', 'Uruguay', 'DF', 0, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png'),
(27, 'Hugo Duro', 'Spain', 'FW', 0, 0, 0, 0, 'Getafe CF', 'LogoCLB\\La Liga\\getafe.png');

-- --------------------------------------------------------

--
-- Table structure for table `girona`
--

CREATE TABLE `girona` (
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
-- Dumping data for table `girona`
--

INSERT INTO `girona` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Iraizoz', 'Spain', 'GK', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(2, 'Bernardo Espinosa', 'Colombia', 'DF', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(3, 'Johan Mojica', 'Colombia', 'FW', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(4, 'Ramalho', 'Spain', 'DF', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(5, 'Pedro Alcalá', 'Spain', 'DF', 0, 0, 0, 1, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(6, 'Álex Granell', 'Spain', 'MF', 0, 0, 0, 1, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(7, 'Cristhian Stuani', 'Uruguay', 'FW', 1, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(8, 'Pere Pons', 'Spain', 'MF', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(10, 'Borja García', 'Spain', 'MF', 1, 1, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(11, 'Aday', 'Spain', 'MF', 0, 0, 0, 1, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(13, 'Yassine Bounou', 'Morocco', 'GK', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(14, 'Raúl García', 'Spain', 'DF', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(17, 'Patrick Roberts', 'Anh', 'FW', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(19, 'Anthony Lozano', 'Honduras', 'FW', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(21, 'Carles Planas', 'Spain', 'DF', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(22, 'Seydou Doumbia', 'Ivory Coast', 'FW', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(23, 'Aleix García', 'Spain', 'MF', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(24, 'Pedro Porro', 'Spain', 'FW', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(27, 'Kévin Soni', 'Cameroon', 'MF', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png'),
(28, 'Èric Montes', 'Spain', 'DF', 0, 0, 0, 0, 'Girona FC', 'LogoCLB\\La Liga\\girona.png');

-- --------------------------------------------------------

--
-- Table structure for table `huesca`
--

CREATE TABLE `huesca` (
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
-- Dumping data for table `huesca`
--

INSERT INTO `huesca` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Javi Varas', 'Spain', 'GK', 0, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(2, 'Martín Mantovani', 'Argentina', 'DF', 0, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(3, 'Etxeita', 'Spain', 'DF', 0, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(4, 'Diéguez', 'Spain', 'DF', 0, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(5, 'Juan Aguilera', 'Spain', 'MF', 0, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(6, 'Moi Gómez', 'Spain', 'MF', 0, 1, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(7, 'David Ferreiro', 'Spain', 'MF', 0, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(8, 'Melero', 'Spain', 'MF', 0, 0, 0, 1, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(9, 'Juan Hernández', 'Colombia', 'FW', 1, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(10, 'Camacho', 'Spain', 'MF', 0, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(11, 'Álex Gallar', 'Spain', 'FW', 3, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(12, 'Javi Galán', 'Spain', 'FW', 0, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(13, 'Santamaría', 'Spain', 'GK', 0, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(14, 'Pulido', 'Spain', 'DF', 0, 1, 0, 1, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(16, 'Luisinho', 'Portugal', 'MF', 0, 0, 0, 1, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(18, 'Pablo Insua', 'Spain', 'DF', 0, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(20, 'Juanpi Añor', 'Venezuela', 'MF', 0, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(22, 'Enric Gallego', 'Spain', 'FW', 0, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(23, 'Damián Musto', 'Argentina', 'FW', 0, 0, 0, 2, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png'),
(24, 'Miramón', 'Spain', 'DF', 1, 0, 0, 0, 'SD Huesca', 'LogoCLB\\La Liga\\huesca.png');

-- --------------------------------------------------------

--
-- Table structure for table `leganes`
--

CREATE TABLE `leganes` (
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
-- Dumping data for table `leganes`
--

INSERT INTO `leganes` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Cuéllar', 'Spain', 'GK', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(2, 'Juanfran', 'Spain', 'DF', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(3, 'Bustinza', 'Spain', 'DF', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(4, 'Diego Reyes', 'Mexico', 'DF', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(5, 'Jonathan Silva', 'Argentina', 'DF', 1, 0, 0, 2, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(6, 'Gumbau', 'Spain', 'MF', 0, 1, 0, 1, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(8, 'Recio', 'Spain', 'MF', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(9, 'Guido Carrillo', 'Argentina', 'FW', 1, 0, 0, 1, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(10, 'Nabil El Zhar', 'France', 'MF', 2, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(12, 'Allan Nyom', 'Cameroon', 'DF', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(13, 'Andrés Prieto', 'Spain', 'GK', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(14, 'Vasyl Kravets', 'Ukraine', 'DF', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(16, 'José Arnáiz', 'Spain', 'MF', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(18, 'Sabin', 'Spain', 'FW', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(19, 'Ezequiel Munoz', 'Argentina', 'DF', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(20, 'Michael Santos', 'Uruguay', 'FW', 0, 1, 0, 2, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(21, 'Rubén Pérez', 'Spain', 'MF', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(23, 'Mikel Vesga', 'Spain', 'MF', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(25, 'Martin Braithwaite', 'Denmark', 'FW', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png'),
(26, 'Youssef En-Nesyri', 'Morocco', 'FW', 0, 0, 0, 0, 'CD Leganés', 'LogoCLB\\La Liga\\leganes.png');

-- --------------------------------------------------------

--
-- Table structure for table `levante`
--

CREATE TABLE `levante` (
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
-- Dumping data for table `levante`
--

INSERT INTO `levante` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Koke Vegas', 'Spain', 'GK', 0, 0, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(2, 'Borja Mayoral', 'Spain', 'FW', 0, 0, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(3, 'Tono García', 'Spain', 'DF', 0, 0, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(4, 'Róber	', 'Spain', 'DF', 0, 0, 0, 1, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(5, 'Cheick Doukouré', 'Ivory Coast', 'MF', 0, 0, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(6, 'Chema', 'Spain', 'DF', 0, 0, 0, 1, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(7, 'Moses Simon', 'Nigeria', 'FW', 0, 0, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(9, 'Roger', 'Spain', 'FW', 3, 0, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(10, 'Enis Bardhi', 'North Macedonia', 'MF', 0, 1, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(11, 'Morales', 'Spain', 'MF', 3, 0, 0, 2, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(12, 'Coke', 'Spain', 'DF', 0, 0, 1, 2, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(13, 'Oier', 'Spain', 'GK', 0, 0, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(15, 'Sergio Postigo', 'Spain', 'DF', 0, 0, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(16, 'Rubén Rochina', 'Spain', 'FW', 0, 0, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(17, 'Nikola Vukcevic', 'Montenegro', 'MF', 0, 0, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(18, 'Erick Cabaco', 'Uruguay', 'DF', 0, 0, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(20, 'Raphael Dwamena', 'Ghana', 'FW', 0, 1, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(22, 'Antonio Luna', 'Spain', 'DF', 0, 0, 0, 1, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(23, 'Jason', 'Spain', 'MF', 0, 1, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png'),
(26, 'Genís Montolio', 'Spain', 'DF', 0, 0, 0, 0, 'Levante UD', 'LogoCLB\\La Liga\\levante.png');

-- --------------------------------------------------------

--
-- Table structure for table `realbetis`
--

CREATE TABLE `realbetis` (
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
-- Dumping data for table `realbetis`
--

INSERT INTO `realbetis` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Joel', 'Spain', 'GK', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(2, 'Francis', 'Spain', 'DF', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(3, 'Javi García', 'Spain', 'MF', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(4, 'Zouhair Feddal', 'Morocco', 'DF', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(5, 'Bartra', 'Spain', 'DF', 0, 0, 0, 1, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(6, 'Canales', 'Spain', 'MF', 0, 0, 0, 1, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(7, 'Sergio León', 'Spain', 'FW', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(10, 'Jesé', 'Spain', 'FW', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(11, 'Cristian Tello', 'Spain', 'FW', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(12, 'Sidnei', 'Brazil', 'DF', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(13, 'Pau López', 'Spain', 'GK', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(14, 'William Carvalho', 'Portugal', 'MF', 0, 0, 0, 1, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(16, 'Loren', 'Spain', 'FW', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(17, 'Joaquín', 'Spain', 'MF', 1, 0, 0, 1, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(19, 'Barragán', 'Spain', 'DF', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(21, 'Giovani Lo Celso', 'Argentina', 'MF', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(22, 'Diego Lainez', 'Mexico', 'FW', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(23, 'Aïssa Mandi', 'Algeria', 'DF', 0, 1, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(32, 'Édgar González', 'Spain', 'DF', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png'),
(34, 'Wilfrid Kaptoum', 'Cameroon', 'MF', 0, 0, 0, 0, 'Real Betis', 'LogoCLB\\La Liga\\realbetis.png');

-- --------------------------------------------------------

--
-- Table structure for table `realmadrid`
--

CREATE TABLE `realmadrid` (
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
-- Dumping data for table `realmadrid`
--

INSERT INTO `realmadrid` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Keylor Navas', 'Costa Rica	', 'GK', 0, 0, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(2, 'Dani Carvajal', 'Spain', 'DF', 1, 1, 0, 1, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(4, 'Sergio Ramos', 'Spain', 'DF', 2, 0, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(5, 'Raphaël Varane', 'Pháp', 'DF', 0, 0, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(6, 'Nacho', 'Spain', 'DF', 0, 0, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(8, 'Toni Kroos', 'Germany', 'MF', 0, 0, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(9, 'Karim Benzema', 'Pháp', 'FW', 4, 0, 0, 1, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(10, 'Luka Modric', 'Croatia', 'MF', 0, 1, 0, 1, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(11, 'Gareth Bale', 'Wales', 'FW', 3, 1, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(12, 'Marcelo', 'Brazil', 'DF', 0, 0, 0, 1, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(14, 'Casemiro	', 'Brazil', 'MF', 0, 0, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(17, 'Lucas Vázquez', 'Spain', 'FW', 0, 0, 0, 1, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(19, 'Odriozola', 'Spain', 'DF', 0, 0, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(20, 'Marco Asensio', 'Spain', 'MF', 0, 1, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(21, 'Brahim Díaz', 'Spain', 'MF', 0, 0, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(22, 'Isco', 'Spain', 'MF', 0, 1, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(24, 'Dani Ceballos', 'Spain', 'MF', 0, 0, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(25, 'Thibaut Courtois', 'Belgium', 'GK', 0, 0, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(27, 'Cristo', 'Spain', 'FW', 0, 0, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png'),
(28, 'Vinicius Júnior', 'Brazil', 'FW', 0, 0, 0, 0, 'Real Madrid', 'LogoCLB\\La Liga\\real.png');

-- --------------------------------------------------------

--
-- Table structure for table `sevilla`
--

CREATE TABLE `sevilla` (
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
-- Dumping data for table `sevilla`
--

INSERT INTO `sevilla` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Tomás Vaclík', 'Czech Republic', 'GK', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(3, 'Sergi Gómez', 'Spain', 'DF', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(4, 'Simon Kjær', 'Denmark', 'DF', 0, 0, 0, 2, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(6, 'Daniel Carriço', 'Portugal', 'DF', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(7, 'Roque Mesa', 'Spain', 'MF', 0, 0, 1, 2, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(8, 'Nolito', 'Spain', 'FW', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(9, 'Wissam Ben Yedder', 'Pháp', 'FW', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(10, 'Éver Banega', 'Argentina', 'MF', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(11, 'Aleix Vidal', 'Spain', 'MF', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(12, 'André Silva', 'Portugal', 'FW', 3, 0, 0, 1, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(13, 'Juan Soriano', 'Spain', 'GK', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(15, 'Maxime Gonalons', 'Pháp', 'MF', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(16, 'Jesús Navas', 'Spain', 'MF', 0, 1, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(18, 'Escudero	', 'Spain', 'DF', 0, 1, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(19, 'Munir', 'Spain', 'FW', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(21, 'Quincy Promes', 'Hà Lan', 'FW', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(22, 'Franco Vázquez', 'Italy', 'MF', 1, 1, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(23, 'Guilherme Arana', 'Brazil', 'DF', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(25, 'Gabriel Mercado', 'Argentina', 'DF', 0, 1, 0, 2, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png'),
(40, 'Javi Vázquez', 'Spain', 'FW', 0, 0, 0, 0, 'Sevilla FC', 'LogoCLB\\La Liga\\sevilla.png');

-- --------------------------------------------------------

--
-- Table structure for table `sociedad`
--

CREATE TABLE `sociedad` (
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
-- Dumping data for table `sociedad`
--

INSERT INTO `sociedad` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Gerónimo Rulli', 'Argentina', 'GK', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(2, 'Joseba Zaldúa', 'Spain', 'DF', 0, 1, 0, 2, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(3, 'Llorente', 'Spain', 'DF', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(4, 'Illarra', 'Spain', 'MF', 1, 0, 0, 1, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(6, 'Héctor Moreno', 'Mexico', 'DF', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(7, 'Juanmi', 'Spain', 'FW', 1, 0, 0, 3, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(8, 'Mikel Merino', 'Spain', 'MF', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(10, 'Mikel Oyarzabal', 'Spain', 'FW', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(11, 'Adnan Januzaj', 'Belgium', 'MF', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(12, 'Willian José', 'Brazil', 'FW', 2, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(13, 'Moyá', 'Spain', 'GK', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(15, 'Aritz Elustondo', 'Spain', 'DF', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(16, 'Martín Merquelanz', 'Spain', 'MF', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(17, 'Zurutuza', 'Spain', 'MF', 1, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(18, 'Andoni Gorosabel', 'Spain', 'DF', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(19, 'Theo Hernández', 'Pháp', 'DF', 0, 0, 0, 1, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(22, 'Raúl Navas', 'Spain', 'DF', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(23, 'Jon Guridi', 'Spain', 'MF', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(24, 'Sandro', 'Spain', 'FW', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png'),
(25, 'Luca Sangalli', 'Spain', 'MF', 0, 0, 0, 0, 'Real Sociedad', 'LogoCLB\\La Liga\\sociedad.png');

-- --------------------------------------------------------

--
-- Table structure for table `valencia`
--

CREATE TABLE `valencia` (
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
-- Dumping data for table `valencia`
--

INSERT INTO `valencia` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Jaume', 'Spain', 'GK', 0, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(4, 'Facundo Roncaglia', 'Argentina', 'DF', 0, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(5, 'Gabriel Paulista', 'Brazil', 'DF', 0, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(6, 'Geoffrey Kondogbia', 'Pháp', 'MF', 0, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(7, 'Gonçalo Guedes', 'Portugal', 'FW', 0, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(8, 'Carlos Soler', 'Spain', 'MF', 0, 1, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(9, 'Kevin Gameiro', 'Pháp', 'FW', 0, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(10, 'Parejo', 'Spain', 'MF', 1, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(11, 'Denis Cheryshev', 'Nga', 'FW', 1, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(12, 'Mouctar Diakhaby', 'Pháp', 'DF', 0, 0, 0, 1, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(13, 'Neto', 'Brazil', 'GK', 0, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(14, 'Gayà', 'Spain', 'DF', 0, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(17, 'Francis Coquelin', 'Pháp', 'MF', 0, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(18, 'Daniel Wass', 'Denmark', 'MF', 0, 1, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(19, 'Rodrigo', 'Spain', 'FW', 1, 0, 0, 1, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(21, 'Cristiano Piccini', 'Italy', 'DF', 0, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(22, 'Santi Mina', 'Spain', 'FW', 0, 0, 0, 1, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(23, 'Rubén Sobrino', 'Spain', 'FW', 0, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(24, 'Ezequiel Garay', 'Argentina', 'DF', 0, 0, 0, 1, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png'),
(32, 'Álex Centelles', 'Spain', 'DF', 0, 0, 0, 0, 'Valencia CF', 'LogoCLB\\La Liga\\valencia.png');

-- --------------------------------------------------------

--
-- Table structure for table `valladolid`
--

CREATE TABLE `valladolid` (
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
-- Dumping data for table `valladolid`
--

INSERT INTO `valladolid` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Jordi Masip', 'Spain', 'GK', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(2, 'Joaquín', 'Spain', 'DF', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(3, 'Moisés Delgado', 'Spain', 'DF', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(4, 'Kiko Olivas', 'Spain', 'DF', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(5, 'Fernando Calero', 'Spain', 'DF', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(6, 'Luismi', 'Spain', 'MF', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(8, 'Borja', 'Spain', 'MF', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(9, 'Enes Ünal', 'Turkey', 'FW', 0, 0, 0, 1, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(10, 'Óscar Plano', 'Spain', 'FW', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(11, 'Daniele Verde', 'Italy', 'FW', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(12, 'Sergi Guardiola', 'Spain', 'MF', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(13, 'Yoel', 'Spain', 'GK', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(14, 'Alcaraz', 'Spain', 'MF', 0, 0, 0, 1, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(15, 'Pablo Hervías', 'Spain', 'FW', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(17, 'Javi Moyano', 'Spain', 'DF', 0, 0, 0, 1, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(19, 'Toni Villa', 'Spain', 'MF', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(20, 'Duje Cop', 'Croatia', 'FW', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(21, 'Míchel', 'Spain', 'MF', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(22, 'Nacho', 'Spain', 'DF', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png'),
(27, 'Miguel', 'Spain', 'FW', 0, 0, 0, 0, 'Real Valladolid', 'LogoCLB\\La Liga\\valladolid.png');

-- --------------------------------------------------------

--
-- Table structure for table `vallecano`
--

CREATE TABLE `vallecano` (
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
-- Dumping data for table `vallecano`
--

INSERT INTO `vallecano` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Alberto', 'Spain', 'GK', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(2, 'Tito', 'Spain', 'DF', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(3, 'Uche Agbo', 'Nigeria', 'MF', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(4, 'Medrán', 'Spain', 'MF', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(6, 'Elustondo', 'Spain', 'MF', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(7, 'Álex Moreno', 'Spain', 'MF', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(8, 'Óscar Trejo', 'Argentina', 'FW', 0, 1, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(9, 'Raúl de Tomás', 'Spain', 'FW', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(10, 'Gaël Kakuta', 'Pháp', 'FW', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(11, 'Embarba', 'Spain', 'FW', 1, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(12, 'Giannelli Imbula', 'France', 'MF', 1, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(13, 'Stole Dimitrievski', 'North Macedonia', 'GK', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(15, 'Mario Suárez', 'Spain', 'MF', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(16, 'Jordi Amat', 'Spain', 'DF', 0, 0, 0, 1, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(17, 'Luis Advíncula', 'Peru', 'MF', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(18, 'Álvaro García', 'Spain', 'MF', 0, 0, 0, 1, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(20, 'Emiliano Velázquez', 'Spain', 'DF', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(21, 'Abdoulaye Ba', 'Senegal', 'DF', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(23, 'Gálvez', 'Spain', 'DF', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png'),
(28, 'Akieme', 'Spain', 'DF', 0, 0, 0, 0, 'Rayo Vallecano', 'LogoCLB\\La Liga\\rayo.png');

-- --------------------------------------------------------

--
-- Table structure for table `villarreal`
--

CREATE TABLE `villarreal` (
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
-- Dumping data for table `villarreal`
--

INSERT INTO `villarreal` (`soao`, `ten`, `quoctich`, `vitri`, `banthang`, `kientao`, `thedo`, `thevang`, `clb`, `logo_clb`) VALUES
(1, 'Asenjo', 'Spain', 'GK', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(2, 'Mario', 'Spain', 'DF', 0, 0, 0, 2, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(3, 'Álvaro González', 'Spain', 'DF', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(4, 'Funes Mori', 'Argentina', 'DF', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(5, 'Santiago Cáseres', 'Argentina', 'MF', 0, 1, 0, 1, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(6, 'Víctor Ruiz', 'Spain', 'DF', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(7, 'Gerard', 'Spain', 'FW', 1, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(8, 'Pablo Fornals', 'Spain', 'MF', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(9, 'Carlos Bacca', 'Colombia', 'FW', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(11, 'Jaume Costa', 'Spain', 'DF', 0, 0, 0, 1, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(14, 'Trigueros', 'Spain', 'MF', 0, 0, 0, 1, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(15, 'Miguelón Llambrich', 'Spain', 'DF', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(16, 'Pedraza', 'Spain', 'FW', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(17, 'Karl Toko Ekambi', 'Cameroon', 'FW', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(19, 'Santi Cazorla', 'Spain', 'MF', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(21, 'Bruno Soriano', 'Spain', 'MF', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(22, 'Dani Raba', 'Spain', 'MF', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(23, 'Daniele Bonera', 'Italy', 'DF', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(25, 'Mariano Barbosa', 'Argentina', 'GK', 0, 0, 0, 0, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png'),
(28, 'Manu Morlanes', 'Spain', 'MF', 0, 0, 0, 1, 'Villarreal CF', 'LogoCLB\\La Liga\\villareal.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
