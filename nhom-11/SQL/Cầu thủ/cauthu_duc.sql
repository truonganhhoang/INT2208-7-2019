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
  `vitri` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `augsburg`
--

INSERT INTO `augsburg` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Andreas Luthe', 'Germany', 'GK'),
(3, 'Kostas Stafylidis', 'Greece', 'DF'),
(4, 'Daniel Opare', 'Ghana', 'DF'),
(5, 'Reece Oxford', 'England', 'DF'),
(6, 'Jeffrey Gouweleeuw', 'Netherlands', 'DF'),
(8, 'Markus Feulner', 'Germany', 'MF'),
(10, 'Daniel Baier', 'Germany', 'MF'),
(11, 'Michael Gregoritsch', 'Austria', 'FW'),
(15, 'Piotr Trochowski', 'Germany', 'MF'),
(16, 'Christoph Janker', 'Germany', 'DF'),
(17, 'Jonathan Schmid', 'France', 'MF'),
(21, 'Sergio Cordova', 'Venezuela ', 'FW'),
(23, 'Marco Richter', 'Germany', 'FW'),
(25, 'Killian Jakob', 'Germany', 'DF'),
(26, 'Bastian Kurz', 'Germany', 'MF'),
(29, 'Marco Schuster', 'Germany', 'MF'),
(30, 'Caiuby', 'Brazil', 'FW'),
(34, 'Georg Teigl', 'Austria', 'MF'),
(35, 'Seong-hoon Cheon', 'Korea', 'FW'),
(37, 'Maurice Malone', 'Germany', 'FW'),
(38, 'Kevin Danso', 'Ghana', 'MF'),
(40, 'Gregor Kobel', 'Switzerland', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `bayerleverkusen`
--

CREATE TABLE `bayerleverkusen` (
  `soao` int(2) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayerleverkusen`
--

INSERT INTO `bayerleverkusen` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Lukas Hradecky', 'Finland', 'GK'),
(3, 'Panagiotis Retsos', 'Greece', 'DF'),
(4, 'Jonathan Tah', 'Germany', 'DF'),
(5, 'Sven Bender', 'Germany', 'DF'),
(6, 'Aleksandar Dragovic', 'Austria', 'DF'),
(7, 'Paulo Sampaio Filho', 'Brazil', 'MF'),
(8, 'Lars Bender', 'Germany', 'MF'),
(9, 'Leon Bailey', 'Jamaica', 'FW'),
(11, 'Stefan Kiessling', 'Germany', 'FW'),
(13, 'Lucas Nicolas Alario', 'Argentina', 'FW'),
(16, 'Tin Jedvaj', 'Croatia', 'DF'),
(17, 'Sebastian Boenisch', 'Poland', 'DF'),
(18, 'Wendell Nascimento B', 'Brazil', 'DF'),
(20, 'Charles Aranguiz', 'Chile', 'MF'),
(21, 'Dominik Kohr', 'Germany', 'MF'),
(22, 'Vladlen Yurchenko', 'Ukraine', 'MF'),
(24, 'Thorsten Kirschbaum', 'Germany', 'GK'),
(27, 'Robbie Kruse', 'Australia', 'FW'),
(31, 'Kevin Volland', 'Germany', 'FW'),
(37, 'Herdi Bukusu', 'Congo DR', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `bayernmunich`
--

CREATE TABLE `bayernmunich` (
  `soao` int(2) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayernmunich`
--

INSERT INTO `bayernmunich` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Manuel Neuer', 'Germany', 'GK'),
(2, 'Sandro Wagner', 'Germany', 'FW'),
(4, 'Niklas Sule', 'Germany', 'DF'),
(5, 'Mats Hummels', 'Germany', 'DF'),
(6, 'Thiago Alcantara', 'Spain', 'MF'),
(7, 'Franck Ribery', 'France', 'MF'),
(8, 'Javi Martinez Aguina', 'Spain ', 'MF'),
(9, 'Robert Lewandowski', 'Poland', 'FW'),
(10, 'Arjen Robben', 'Netherlands', 'MF'),
(11, 'James Rodriguez', 'Colombia', 'MF'),
(13, 'Rafinha', 'Brazil', 'DF'),
(14, 'Xabi Alonso', 'Spain', 'MF'),
(17, 'Jerome Boateng', 'Germany', 'DF'),
(22, 'Tom Starke', 'Germany', 'GK'),
(25, 'Thomas Muller', 'Germany', 'FW'),
(27, 'David Alaba', 'Austria', 'DF'),
(31, 'Lucas Scholl', 'Germany', 'MF'),
(32, 'Joshua Kimmich', 'Germany', 'DF'),
(35, 'Renato Sanches', 'Portugal', 'MF'),
(38, 'Felix Pohl', 'Germany', 'DF'),
(40, 'Maximilian Franzke', 'Germany', 'FW'),
(42, 'Angelos Oikonomou', 'Greece', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `dortmund`
--

CREATE TABLE `dortmund` (
  `soao` int(2) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dortmund`
--

INSERT INTO `dortmund` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Roman Weidenfeller', 'Germany', 'GK'),
(2, 'Dan-Axel Zagadou', 'France', 'DF'),
(3, 'Amos Pieper', 'Germany', 'DF'),
(4, 'Abdou Diallo', 'France', 'DF'),
(5, 'Achraf Hakimi', 'Spain', 'DF'),
(6, 'Thomas Delaney', 'Denmark', 'MF'),
(7, 'Jadon Sancho', 'England', 'FW'),
(9, 'Paco Alcacer', 'Spain', 'FW'),
(10, 'Mario Gotze', 'Germany', 'MF'),
(11, 'Marco Reus', 'Germany', 'MF'),
(13, 'Raphael Guerreiro', 'France', 'DF'),
(16, 'Manuel Akanji', 'Switzerland', 'DF'),
(17, 'Sergio Gomez', 'Spain', 'MF'),
(22, 'Christian Pulisic', 'USA', 'MF'),
(23, 'Shinji Kagawa', 'Japan ', 'MF'),
(24, 'Marian Sarr', 'Germany', 'DF'),
(25, 'Luca Unbehaun', 'Germany', 'GK'),
(26, 'Lukasz Piszczek', 'Poland', 'DF'),
(28, 'Axel Witsel', 'Belgium', 'MF'),
(32, 'Dzenis Burnic', 'Germany', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `dusseldorf`
--

CREATE TABLE `dusseldorf` (
  `soao` int(2) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dusseldorf`
--

INSERT INTO `dusseldorf` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Michael Rensing', 'Germany', 'GK'),
(3, 'Andre Hoffmann', 'Germany', 'DF'),
(5, 'Kaan Ayhan', 'Turkey', 'DF'),
(6, 'Alfredo Morales', 'Germany', 'DF'),
(8, 'Jerome Kiesewetter', 'USA', 'FW'),
(9, 'Mike van Duinen', 'Netherlands', 'FW'),
(10, 'Marvin Ducksch', 'Germany', 'FW'),
(11, 'Kenan Karaman', 'Germany', 'FW'),
(13, 'Adam Bodzek', 'Germany', 'MF'),
(14, 'Markus Suttner', 'Austria', 'DF'),
(16, 'Jaroslav Drobny', 'Czech', 'GK'),
(19, 'Lars Unnerstall', 'Germany', 'GK'),
(20, 'Dodi Lukebakio', 'Belgium', 'MF'),
(22, 'Kevin Stoger', 'Austria', 'MF'),
(23, 'Ben Halloran', 'Australia', 'MF'),
(25, 'Matthias Zimmermann', 'Germany', 'DF'),
(27, 'Stefan Reisinger', 'Germany', 'FW'),
(28, 'Rouwen Hennings', 'Germany', 'FW'),
(31, 'Marcel Sobottka', 'Germany', 'DF'),
(34, 'Evans Nyarko', 'Germany', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `frankfurt`
--

CREATE TABLE `frankfurt` (
  `soao` int(2) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `quoctich` varchar(20) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frankfurt`
--

INSERT INTO `frankfurt` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Frederik Ronnow', 'Denmark', 'GK'),
(2, 'Obite Evan N\'Dicka', 'France', 'DF'),
(3, 'Christopher Schorch', 'Germany', 'DF'),
(4, 'Ante Rebic', 'Croatia', 'MF'),
(5, 'Gelson Fernandes', 'Switzerland', 'MF'),
(6, 'Jonathan De Guzman', 'Netherlands', 'MF'),
(7, 'Danny Blum', 'Germany', 'MF'),
(9, 'Sebastian Haller', 'France', 'FW'),
(10, 'Filip Kostic', 'Serbia', 'MF'),
(11, 'Mijat Gacinovic', 'Serbia', 'MF'),
(13, 'Carlos Salcedo Herna', 'Mexico', 'DF'),
(14, 'La\'Vere Corbin-Ong', 'Canada ', 'DF'),
(15, 'Jetro Willems', 'Netherlands', 'DF'),
(18, 'Almamy Toure', 'Mali', 'DF'),
(19, 'David Abraham', 'Argentina', 'DF'),
(20, 'Fabian-Herbert Burde', 'Germany', 'MF'),
(21, 'Marc Stendera', 'Germany', 'MF'),
(22, 'Timothy Chandler', 'USA', 'DF'),
(23, 'Bamba Anderson', 'Brazil', 'DF'),
(24, 'Danny da Costa', 'Germany', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `freiburg`
--

CREATE TABLE `freiburg` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `freiburg`
--

INSERT INTO `freiburg` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Alexander Schwolow', 'Germany', 'GK'),
(3, 'Philipp Lienhart', 'Austria', 'DF'),
(5, 'Manuel Gulde', 'Germany', 'DF'),
(6, 'Amir Abrashi', 'Albania', 'MF'),
(7, 'Florian Niederlechner', 'Germany', 'FW'),
(8, 'Mike Frantz', 'Germany', 'FW'),
(9, 'Lucas Holer', 'Germany', 'FW'),
(11, 'Luca Waldschmidt', 'Germany', 'FW'),
(13, 'Marco Terrazzino', 'Italy', 'FW'),
(14, 'Patrick Kammerbauer', 'Germany', 'DF'),
(15, 'Pascal Stenzel', 'Germany', 'DF'),
(16, 'Yoric Ravet', 'France', 'FW'),
(17, 'Lukas Kubler', 'Germany', 'DF'),
(18, 'Nils Petersen', 'Germany', 'FW'),
(20, 'Jerome Gondorf', 'Germany', 'MF'),
(21, 'Brandon Borrello', 'Austrilia', 'MF'),
(23, 'Dominique Heintz', 'Germany', 'DF'),
(25, 'Robin Koch', 'Germany', 'DF'),
(26, 'Mark Flekken', 'Netherlands', 'GK'),
(27, 'Nicolas Hofler', 'Germany', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `hannover96`
--

CREATE TABLE `hannover96` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hannover96`
--

INSERT INTO `hannover96` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Philipp Tschauner', 'Germany', 'GK'),
(2, 'Josip Elez', 'Croatia', 'DF'),
(3, 'Miiko Albornoz', 'Chile', 'DF'),
(4, 'Julian Korb', 'Germany', 'DF'),
(5, 'Felipe Trevizan Martins', 'Brazil', 'DF'),
(6, 'Marvin Bakalorz', 'Germany', 'MF'),
(7, 'Edgar Prib', 'Germany', 'MF'),
(8, 'Walace Souza Silva', 'Brazil', 'MF'),
(9, 'Jonathas de Jesus', 'Brazil', 'FW'),
(10, 'Genki Haraguchi', 'Japan', 'FW'),
(11, 'Takuma Asano', 'Japan', 'FW'),
(13, 'Takuma Asano', 'Togo', 'MF'),
(14, 'Kevin Akpoguma', 'Germany', 'DF'),
(16, 'Sebastian Soto', 'USA', 'FW'),
(17, 'Bobby Wood', 'USA', 'FW'),
(18, 'Iver Fossum', 'Germany', 'MF'),
(19, 'Samuel Radlinger', 'Austria', 'GK'),
(21, 'Nicolai Muller', 'Germany', 'MF'),
(22, 'Matthias Ostrzolek', 'Germany', 'DF'),
(24, 'Niclas Fullkrug', 'Germany', 'FW'),
(25, 'Oliver Sorg', 'Germany', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `herthaberlin`
--

CREATE TABLE `herthaberlin` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `herthaberlin`
--

INSERT INTO `herthaberlin` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Thomas Kraft', 'Germany', 'GK'),
(2, 'Peter Pekarik', 'Slovakia', 'DF'),
(3, 'Per Skjelbred', 'Noway', 'MF'),
(4, 'Karim Rekik', 'Netherlands', 'DF'),
(5, 'Niklas Stark', 'Germany', 'MF'),
(6, 'Vladimir Darida', 'Czech', 'MF'),
(7, 'Alexander Esswein', 'Germany', 'FW'),
(8, 'Salomon Kalou', 'Ivory Coast', 'FW'),
(10, 'Ondrej Duda', 'Slovakia', 'MF'),
(11, 'Matthew Leckie', 'Australia', 'FW'),
(12, 'Dennis Smarsch', 'Germany', 'GK'),
(13, 'Klünter Lukas', 'Germany', 'DF'),
(14, 'Pascal Kopke', 'Germany', 'FW'),
(15, 'Marko Grujic', 'Serbia', 'MF'),
(16, 'Javairo Dilrosun', 'Netherlands', 'MF'),
(17, 'Maximilian Mittelstadt', 'Germany', 'DF'),
(19, 'Vedad Ibisevic', 'Bosnia-Herzegovina', 'FW'),
(20, 'Valentino Lazaro', 'Austria', 'MF'),
(25, 'Jordan Torunarigha', 'Germany', 'DF'),
(27, 'Davie Selke', 'Germany', 'FW'),
(28, 'Fabian Lustenberger', 'Switzerland', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `hoffenheim`
--

CREATE TABLE `hoffenheim` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoffenheim`
--

INSERT INTO `hoffenheim` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Oliver Baumann', 'Germany', 'GK'),
(2, 'Joshua Brenet', 'Netherlands', 'DF'),
(3, 'Pavel Kaderabek', 'Czech', 'DF'),
(4, 'Ermin Bicakcic', 'Bosnia-Herzegovina', 'DF'),
(6, 'Havard Nordtveit', 'Norway', 'MF'),
(8, 'Dennis Geiger', 'Germany', 'MF'),
(9, 'Reiss Nelson', 'England', 'FW'),
(10, 'Kerem Demirbay', 'Germany', 'MF'),
(11, 'Florian Grillitsch', 'Austria', 'MF'),
(13, 'Leonardo Bittencourt', 'Germany', 'MF'),
(15, 'Kasim Adams Nuhu', 'Ghana', 'DF'),
(16, 'Nico Schulz', 'Germany', 'DF'),
(18, 'Moody Chana', 'Germany', 'DF'),
(19, 'Ishak Belfodil', 'France', 'FW'),
(21, 'Benjamin Hubner', 'Germany', 'DF'),
(22, 'Kevin Vogt', 'Germany', 'MF'),
(23, 'Felipe Rodrigues Pires', 'Brazil', 'MF'),
(26, 'David Otto', 'Germany', 'FW'),
(27, 'Andrej Kramaric', 'Croatia', 'FW'),
(28, 'Szalai Ádám', 'Hungary', 'FW'),
(33, 'Alexander Stolz', 'Germany', 'GK'),
(34, 'Joelinton', 'Brazil', 'FW'),
(44, 'Nicolas Wahling', 'Germany', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `leipzig`
--

CREATE TABLE `leipzig` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leipzig`
--

INSERT INTO `leipzig` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Gulácsi Péter', 'Hungary', 'GK'),
(3, 'Marcelo Saracchi', 'Uruguay', 'DF'),
(4, 'Willi Orban', 'Germany', 'DF'),
(5, 'Dayot Upamecano', 'France', 'DF'),
(6, 'Ibrahima Konate', 'France', 'DF'),
(7, 'Marcel Sabitzer', 'Austria', 'FW'),
(8, 'Amadou Haidara', 'Mali', 'MF'),
(9, 'Yussuf Poulsen', 'Denmark', 'FW'),
(10, 'Emil Forsberg', 'Sweden', 'MF'),
(11, 'Timo Werner', 'Germany', 'FW'),
(13, 'Stefan Ilsanker', 'Austria', 'MF'),
(14, 'Tyler Adams', 'USA', 'MF'),
(16, 'Lukas Klostermann', 'Germany', 'DF'),
(17, 'Armindo Tue Bangna', 'Portugal', 'FW'),
(18, 'Emile Smith Rowe', 'England', 'FW'),
(20, 'Matheus Cunha', 'Brazil', 'FW'),
(21, 'Marius Muller', 'Germany', 'GK'),
(22, 'Nordi Mukiele Mulere', 'France', 'DF'),
(23, 'Marcel Halstenberg', 'Germany', 'DF'),
(26, 'Niclas Stierlin', 'Germany', 'MF'),
(27, 'Konrad Laimer', 'Austria ', 'MF'),
(29, 'Jean-Kevin Augustin', 'France', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `mainz05`
--

CREATE TABLE `mainz05` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainz05`
--

INSERT INTO `mainz05` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(2, 'Giulio Donati', 'Italy', 'DF'),
(3, 'Aaron Martin', 'England', 'DF'),
(5, 'Jean-Paul Boetius', 'Netherlands', 'MF'),
(6, 'Danny Latza', 'Germany', 'DF'),
(7, 'Robin Quaison', 'Swenden', 'MF'),
(8, 'Levin Oztunali', 'Germany', 'MF'),
(9, 'Jean-Philippe Mateta', 'France', 'FW'),
(10, 'Alexandru Maxim', 'Romania', 'MF'),
(14, 'Pierre Kunde', 'Cameroon', 'MF'),
(16, 'Stefan Bell', 'Germany', 'DF'),
(18, 'Daniel Brosinski', 'Germany', 'MF'),
(19, 'Moussa Niakhate', 'France', 'DF'),
(20, 'Anthony Ujah', 'Nigeria', 'FW'),
(21, 'Karim Onisiwo', 'Austria', 'MF'),
(22, 'Heinz Muller', 'Germany', 'GK'),
(23, 'Phillipp Mwene', 'Austria', 'DF'),
(24, 'Gaetan Bussmann', 'France', 'DF'),
(28, 'Issah Abass', 'Ghana', 'FW'),
(29, 'Jonathan Burkardt', 'Germany', 'FW'),
(33, 'Jannik Huth', 'Germany', 'GK'),
(34, 'Bote Baku', 'Germany', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `monchengladbach`
--

CREATE TABLE `monchengladbach` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monchengladbach`
--

INSERT INTO `monchengladbach` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Yann Sommer', 'Switzerland', 'GK'),
(3, 'Michael Lang', 'Switzerland', 'DF'),
(5, 'Tobias Strobl', 'Germany', 'DF'),
(6, 'Christoph Kramer', 'Germany', 'MF'),
(7, 'Patrick Herrmann', 'Germany', 'FW'),
(8, 'Denis Lemi Zakaria Lako Lado', 'Switzerland', 'MF'),
(10, 'Thorgan Hazard', 'Belgium', 'MF'),
(11, 'Rafael De Araujo', 'Brazil', 'FW'),
(13, 'Lars Stindl', 'Germany', 'MF'),
(14, 'Alassane Plea', 'France', 'FW'),
(15, 'Louis Beyer', 'Germany', 'DF'),
(16, 'Ibrahima Traore', 'Guinea', 'MF'),
(17, 'Oscar Wendt', 'Sweden', 'DF'),
(18, 'Josip Drmic', 'Switzerland', 'FW'),
(19, 'Fabian Johnson', 'USA', 'DF'),
(21, 'Tobias Sippel', 'Germany', 'GK'),
(22, 'Laszlo Benes', 'Slovakia', 'MF'),
(23, 'Jonas Hofmann', 'Germany', 'MF'),
(24, 'Tony Jantschke', 'Germany', 'DF'),
(26, 'Torben Musel', 'Germany', 'FW'),
(27, 'Mickael Cuisance', 'France', 'MF'),
(28, 'Matthias Ginter', 'Germany', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `nurnberg`
--

CREATE TABLE `nurnberg` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurnberg`
--

INSERT INTO `nurnberg` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Fabian Bredlow', 'Germany', 'GK'),
(2, 'Kevin Goden', 'Germany', 'DF'),
(4, 'Ewerton Almeida', 'Brazil', 'DF'),
(7, 'Edgard Nicaise Constant', 'Cameroon', 'FW'),
(8, 'Robert Bauer', 'Germany', 'MF'),
(9, 'Mikael Ishak', 'Sweden', 'FW'),
(10, 'Sebastian Kerk', 'Germany', 'MF'),
(11, 'Adam Zrelak', 'Slovakia', 'FW'),
(14, 'Yuya Kubo', 'Japan', 'FW'),
(16, 'Ivo Ilicevic', 'Croatia', 'MF'),
(17, 'Löwen Eduard', 'Germany', 'DF'),
(18, 'Hanno Behrens', 'Germany', 'MF'),
(19, 'Torles Knoll', 'Germany', 'FW'),
(20, 'Lukas Jager', 'Austria', 'DF'),
(21, 'Federico Palacios Martinez', 'Germany', 'FW'),
(22, 'Enrico Valentini', 'Italy', 'MF'),
(23, 'Tim Leibold', 'Germany', 'DF'),
(24, 'Virgil Misidjan', 'Netherlands', 'FW'),
(26, 'Christian Mathenia', 'Germany', 'GK'),
(28, 'Lukas Muhl', 'Germany', 'DF'),
(29, 'Patrick Erras', 'Germany', 'MF'),
(33, 'Georg Margreitter', 'Austria', 'DF');

-- --------------------------------------------------------

--
-- Table structure for table `schalke04`
--

CREATE TABLE `schalke04` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schalke04`
--

INSERT INTO `schalke04` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Ralf Fahrmann', 'Germany', 'GK'),
(2, 'Weston McKennie', 'USA', 'MF'),
(3, 'Hamza Mendyl', 'Morocco', 'DF'),
(5, 'Matija Nastasic', 'Serbia', 'DF'),
(6, 'Omar Mascarell', 'Spain', 'MF'),
(7, 'Marc Uth', 'Germany', 'FW'),
(8, 'Suat Serdar', 'Germany', 'MF'),
(9, 'Franco di Santo', 'Argentina', 'FW'),
(10, 'Nabil Bentaleb', 'Algeria', 'MF'),
(11, 'Yevhen Konoplyanka', 'Ukraine', 'MF'),
(13, 'Sebastian Rudy', 'Germany', 'DF'),
(14, 'Abdul Rahman', 'Indonesia', 'DF'),
(15, 'Ahmed Kutucu', 'Germany', 'MF'),
(17, 'Benjamin Stambouli', 'France', 'MF'),
(18, 'Daniel Caligiuri', 'Germany', 'MF'),
(19, 'Guido Burgstaller', 'Austria', 'FW'),
(21, 'Sascha Riether', 'Germany', 'DF'),
(22, 'Steven Skrzybski', 'Germany', 'FW'),
(23, 'Cedric Teuchert', 'Germany', 'FW'),
(24, 'Bastian Oczipka', 'Germany', 'DF'),
(35, 'Alexander Nubel', 'Germany', 'GK'),
(36, 'Breel Donald Embolo', 'Cameroon', 'FW'),
(40, 'Haji Wright', 'USA', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `stuttgart`
--

CREATE TABLE `stuttgart` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stuttgart`
--

INSERT INTO `stuttgart` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Ron-Robert Zieler', 'Germany', 'GK'),
(2, 'Emiliano Insua', 'Argentina', 'DF'),
(3, 'Dennis Aogo', 'Germany', 'DF'),
(4, 'Marc-Oliver Kempf', 'Germany', 'DF'),
(5, 'Timo Baumgartl', 'Germany', 'DF'),
(6, 'Santiago Caseres', 'Argentina', 'MF'),
(7, 'Pablo Maffeo Becerra', 'Spain', 'DF'),
(8, 'Gonzalo Castro', 'Germany', 'MF'),
(9, 'Steven Zuber', 'Switzerland', 'MF'),
(10, 'Daniel Didavi', 'Germany', 'MF'),
(11, 'Anastasios Donis', 'Greece', 'FW'),
(13, 'Jens Grahl', 'Germany', 'GK'),
(14, 'Alexander Esswein', 'Germany', 'FW'),
(17, 'Erik Thommy', 'Germany', 'MF'),
(18, 'Ozan Kabak', 'Turkey', 'DF'),
(19, 'Chadrac Akolo', 'Congo DR', 'FW'),
(20, 'Christian Gentner', 'Germany', 'MF'),
(21, 'Benjamin Pavard', 'France', 'MF'),
(22, 'Nicolas Gonzalez', 'Argentina', 'FW'),
(23, 'Antonis Aidonis', 'Germany', 'DF'),
(25, 'Leon Dajaku', 'Germany', 'FW'),
(27, 'Mario Gomez', 'Germany', 'FW');

-- --------------------------------------------------------

--
-- Table structure for table `werderbremen`
--

CREATE TABLE `werderbremen` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `werderbremen`
--

INSERT INTO `werderbremen` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Jiri Pavlenka', 'Czech', 'GK'),
(2, 'Felix Beijmo', 'Sweden', 'DF'),
(4, 'Claudio Pizarro', 'Peru ', 'FW'),
(5, 'Ludwig Augustinsson', 'Sweden', 'DF'),
(6, 'Kevin Mohwald', 'Germany', 'MF'),
(7, 'Florian Kainz', 'Austria', 'MF'),
(8, 'Yuya Osako', 'Japan', 'FW'),
(9, 'Martin Harnik', 'Austria', 'MF'),
(10, 'Max Kruse', 'Germany', 'FW'),
(11, 'Milot Rashica', 'Kosovo', 'FW'),
(13, 'Milos Veljkovic', 'Switzerland', 'DF'),
(15, 'Sebastian Langkamp', 'Germany', 'DF'),
(17, 'Nuri Sahin', 'Turkey', 'MF'),
(18, 'Niklas Moisander', 'Finland', 'DF'),
(19, 'Joshua Sargent', 'USA', 'FW'),
(20, 'Aron Johannsson', 'USA', 'FW'),
(23, 'Theodor Gebre Selassie', 'Czech', 'DF'),
(27, 'Stefanos Kapino', 'Greece', 'GK'),
(30, 'Davy Klaassen', 'Netherlands', 'MF'),
(34, 'Jean-Manuel Mbom', 'Germany', 'MF'),
(35, 'Maximilian Eggestein', 'Germany', 'MF'),
(44, 'Philipp Bargfrede', 'Germany', 'MF');

-- --------------------------------------------------------

--
-- Table structure for table `wolfsburg`
--

CREATE TABLE `wolfsburg` (
  `soao` int(2) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `vitri` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wolfsburg`
--

INSERT INTO `wolfsburg` (`soao`, `ten`, `quoctich`, `vitri`) VALUES
(1, 'Koen Casteels', 'Belgium', 'GK'),
(2, 'William Asevedo Furtado', 'Brazil', 'DF'),
(3, 'Paul Verhaegh', 'Netherlands', 'DF'),
(4, 'Ignacio Camacho', 'Spain', 'MF'),
(5, 'Jeffrey Bruma', 'Netherlands', 'DF'),
(7, 'Josip Brekalo', 'Croatia', 'FW'),
(8, 'Renato Steffen', 'Switzerland', 'MF'),
(9, 'Wout Weghorst', 'Netherlands', 'FW'),
(10, 'Yunus Malli', 'Germany', 'MF'),
(11, 'Felix Klaus', 'Germany', 'FW'),
(12, 'Pavao Pervan', 'Austria', 'GK'),
(13, 'Yannick Gerhardt', 'Germany', 'MF'),
(14, 'Admir Mehmedi', 'Switzerland', 'FW'),
(15, 'Jerome Roussillon', 'France', 'MF'),
(16, 'Jakub Blaszczykowski', 'Poland', 'MF'),
(17, 'Felix Uduokhai', 'Germany', 'DF'),
(23, 'Josuha Guilavogui', 'France', 'MF'),
(24, 'Sebastian Jung', 'Spain', 'DF'),
(25, 'Brooks John Anthony', 'USA', 'DF'),
(27, 'Maximilian Arnold', 'Germany', 'MF'),
(31, 'Robin Knoche', 'Germany', 'DF'),
(33, 'Daniel Ginczek', 'Germany', 'FW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bayernmunich`
--
ALTER TABLE `bayernmunich`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `dortmund`
--
ALTER TABLE `dortmund`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `dusseldorf`
--
ALTER TABLE `dusseldorf`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `frankfurt`
--
ALTER TABLE `frankfurt`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `freiburg`
--
ALTER TABLE `freiburg`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `hannover96`
--
ALTER TABLE `hannover96`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `herthaberlin`
--
ALTER TABLE `herthaberlin`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `hoffenheim`
--
ALTER TABLE `hoffenheim`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `leipzig`
--
ALTER TABLE `leipzig`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `mainz05`
--
ALTER TABLE `mainz05`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `monchengladbach`
--
ALTER TABLE `monchengladbach`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `nurnberg`
--
ALTER TABLE `nurnberg`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `schalke04`
--
ALTER TABLE `schalke04`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `stuttgart`
--
ALTER TABLE `stuttgart`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `werderbremen`
--
ALTER TABLE `werderbremen`
  ADD PRIMARY KEY (`soao`);

--
-- Indexes for table `wolfsburg`
--
ALTER TABLE `wolfsburg`
  ADD PRIMARY KEY (`soao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
