-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 04:43 PM
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
-- Database: `clb_duc`
--

-- --------------------------------------------------------

--
-- Table structure for table `augsburg`
--

CREATE TABLE `augsburg` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `augsburg`
--

INSERT INTO `augsburg` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Augsburg', 'Dusseldorf', 2, 1, 'LogoCLB\\Bundesliga\\augsburg.png', 'LogoCLB\\Bundesliga\\dusseldorf.png'),
(2, 'Augsburg', 'Monchengladbach', 1, 1, 'LogoCLB\\Bundesliga\\augsburg.png', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(3, 'Augsburg', 'Mainz', 1, 2, 'LogoCLB\\Bundesliga\\augsburg.png', 'LogoCLB\\Bundesliga\\mainz05.png');

-- --------------------------------------------------------

--
-- Table structure for table `bayerleverkusen`
--

CREATE TABLE `bayerleverkusen` (
  `vong` int(11) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayerleverkusen`
--

INSERT INTO `bayerleverkusen` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, ' Bayer Leverkusen', 'Monchengladbach', 0, 2, 'LogoCLB\\Bundesliga\\bayer-leverkusen.png', 'LogoCLB\\Bundesliga\\monchengladbach.png'),
(2, ' Bayer Leverkusen', 'Wolfsburg', 1, 3, 'LogoCLB\\Bundesliga\\bayer-leverkusen.png', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(3, ' Bayer Leverkusen', 'Bayern Munich', 1, 3, 'LogoCLB\\Bundesliga\\bayer-leverkusen.png', 'LogoCLB\\Bundesliga\\bayern-munich.png');

-- --------------------------------------------------------

--
-- Table structure for table `bayernmunich`
--

CREATE TABLE `bayernmunich` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayernmunich`
--

INSERT INTO `bayernmunich` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Bayern Munich', 'Hoffenheim', 3, 1, 'LogoCLB\\Bundesliga\\bayern-munich.png', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(2, 'Bayern Munich', 'Stuttgart', 3, 0, 'LogoCLB\\Bundesliga\\bayern-munich.png', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(3, 'Bayern Munich', 'Bayer Leverkusen', 3, 1, 'LogoCLB\\Bundesliga\\bayern-munich.png', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png');

-- --------------------------------------------------------

--
-- Table structure for table `dortmund`
--

CREATE TABLE `dortmund` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dortmund`
--

INSERT INTO `dortmund` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Dortmund', 'RB Leipzig', 4, 1, 'LogoCLB\\Bundesliga\\dortmund.png', 'LogoCLB\\Bundesliga\\leipzig.png'),
(2, 'Dortmund', 'Hannover', 0, 0, 'LogoCLB\\Bundesliga\\dortmund.png', 'LogoCLB\\Bundesliga\\hannover.png'),
(3, 'Dortmund', 'Eintracht Frankfurt', 3, 1, 'LogoCLB\\Bundesliga\\dortmund.png', 'LogoCLB\\Bundesliga\\frankfurt.png');

-- --------------------------------------------------------

--
-- Table structure for table `dusseldorf`
--

CREATE TABLE `dusseldorf` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dusseldorf`
--

INSERT INTO `dusseldorf` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Dusseldorf', 'Augsburg', 1, 2, 'LogoCLB\\Bundesliga\\dusseldorf.png', 'LogoCLB\\Bundesliga\\augsburg.png'),
(2, 'Dusseldorf', 'RB Leipzig', 1, 1, 'LogoCLB\\Bundesliga\\dusseldorf.png', 'LogoCLB\\Bundesliga\\leipzig.png'),
(3, 'Dusseldorf', 'Hoffenheim', 2, 1, 'LogoCLB\\Bundesliga\\dusseldorf.png', 'LogoCLB\\Bundesliga\\hoffenheim.png');

-- --------------------------------------------------------

--
-- Table structure for table `frankfurt`
--

CREATE TABLE `frankfurt` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frankfurt`
--

INSERT INTO `frankfurt` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Eintracht Frankfurt', 'Freiburg', 2, 0, 'LogoCLB\\Bundesliga\\frankfurt.png', 'LogoCLB\\Bundesliga\\freiburg.png'),
(2, 'Eintracht Frankfurt', 'Werder Bremen', 1, 2, 'LogoCLB\\Bundesliga\\frankfurt.png', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(3, 'Eintracht Frankfurt', 'Dortmund', 1, 3, 'LogoCLB\\Bundesliga\\frankfurt.png', 'LogoCLB\\Bundesliga\\dortmund.png');

-- --------------------------------------------------------

--
-- Table structure for table `freiburg`
--

CREATE TABLE `freiburg` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `freiburg`
--

INSERT INTO `freiburg` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Freiburg', 'Eintracht Frankfurt', 0, 2, 'LogoCLB\\Bundesliga\\freiburg.png', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(2, 'Freiburg', 'Hoffenheim', 1, 3, 'LogoCLB\\Bundesliga\\freiburg.png', 'LogoCLB\\Bundesliga\\hoffenheim.png'),
(3, 'Freiburg', 'Stuttgart', 3, 3, 'LogoCLB\\Bundesliga\\freiburg.png', 'LogoCLB\\Bundesliga\\stuttgart.png');

-- --------------------------------------------------------

--
-- Table structure for table `hannover`
--

CREATE TABLE `hannover` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hannover`
--

INSERT INTO `hannover` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Hannover', 'Werder Bremen', 1, 1, 'LogoCLB\\Bundesliga\\hannover.png', 'LogoCLB\\Bundesliga\\werder-bremen.png'),
(2, 'Hannover', 'Dortmund', 0, 0, 'LogoCLB\\Bundesliga\\hannover.png', 'LogoCLB\\Bundesliga\\dortmund.png'),
(3, 'Hannover', 'RB Leipzig', 2, 3, 'LogoCLB\\Bundesliga\\hannover.png', 'LogoCLB\\Bundesliga\\leipzig.png');

-- --------------------------------------------------------

--
-- Table structure for table `herthaberlin`
--

CREATE TABLE `herthaberlin` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `herthaberlin`
--

INSERT INTO `herthaberlin` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Hertha Berlin', 'Nurnberg', 1, 0, 'LogoCLB\\Bundesliga\\hertha-berlin.png', 'LogoCLB\\Bundesliga\\nurnberg.png'),
(2, 'Hertha Berlin', 'Schalke', 2, 0, 'LogoCLB\\Bundesliga\\hertha-berlin.png', 'LogoCLB\\Bundesliga\\schalke04.png'),
(3, 'Hertha Berlin ', 'Wolfsburg', 2, 2, 'LogoCLB\\Bundesliga\\hertha-berlin.png', 'LogoCLB\\Bundesliga\\wolfsburg.png');

-- --------------------------------------------------------

--
-- Table structure for table `hoffenheim`
--

CREATE TABLE `hoffenheim` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoffenheim`
--

INSERT INTO `hoffenheim` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Hoffenheim', 'Bayern Munich', 1, 3, 'LogoCLB\\Bundesliga\\hoffenheim.png', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(2, 'Hoffenheim', 'Freiburg', 3, 1, 'LogoCLB\\Bundesliga\\hoffenheim.png', 'LogoCLB\\Bundesliga\\freiburg.png'),
(3, 'Hoffenheim', 'Dusseldorf', 1, 2, 'LogoCLB\\Bundesliga\\hoffenheim.png', 'LogoCLB\\Bundesliga\\dusseldorf.png');

-- --------------------------------------------------------

--
-- Table structure for table `leipzig`
--

CREATE TABLE `leipzig` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leipzig`
--

INSERT INTO `leipzig` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'RB Leipzig', 'Eintracht Frankfurt', 1, 1, 'LogoCLB\\Bundesliga\\leipzig.png', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(2, 'RB Leipzig', 'Stuttgart', 2, 0, 'LogoCLB\\Bundesliga\\leipzig.png', 'LogoCLB\\Bundesliga\\stuttgart.png'),
(3, 'RB Leipzig', 'Hoffenheim', 2, 1, 'LogoCLB\\Bundesliga\\leipzig.png', 'LogoCLB\\Bundesliga\\hoffenheim.png');

-- --------------------------------------------------------

--
-- Table structure for table `mainz05`
--

CREATE TABLE `mainz05` (
  `vong` varchar(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainz05`
--

INSERT INTO `mainz05` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
('1', 'Mainz', 'Stuttgart', 1, 0, 'LogoCLB\\Bundesliga\\mainz05.png', 'LogoCLB\\Bundesliga\\stuttgart.png'),
('2', 'Mainz', 'Nurnberg', 1, 1, 'LogoCLB\\Bundesliga\\mainz05.png', 'LogoCLB\\Bundesliga\\nurnberg.png'),
('3', 'Mainz', 'Augsburg', 2, 1, 'LogoCLB\\Bundesliga\\mainz05.png', 'LogoCLB\\Bundesliga\\augsburg.png');

-- --------------------------------------------------------

--
-- Table structure for table `monchengladbach`
--

CREATE TABLE `monchengladbach` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monchengladbach`
--

INSERT INTO `monchengladbach` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Monchengladbach', 'Bayer Leverkusen', 2, 0, 'LogoCLB\\Bundesliga\\monchengladbach.png', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(2, 'Monchengladbach', 'Augsburg', 1, 1, 'LogoCLB\\Bundesliga\\monchengladbach.png', 'LogoCLB\\Bundesliga\\augsburg.png'),
(3, 'Monchengladbach', 'Schalke', 2, 1, 'LogoCLB\\Bundesliga\\monchengladbach.png', 'LogoCLB\\Bundesliga\\schalke04.png');

-- --------------------------------------------------------

--
-- Table structure for table `nurnberg`
--

CREATE TABLE `nurnberg` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurnberg`
--

INSERT INTO `nurnberg` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Nurnberg', 'Hertha Berlin', 0, 1, 'LogoCLB\\Bundesliga\\nurnberg.png', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(2, 'Nurnberg', 'Mainz', 1, 1, 'LogoCLB\\Bundesliga\\nurnberg.png', 'LogoCLB\\Bundesliga\\mainz05.png'),
(3, 'Nurnberg', 'Werder Bremen', 1, 1, 'LogoCLB\\Bundesliga\\nurnberg.png', 'LogoCLB\\Bundesliga\\werder-bremen.png');

-- --------------------------------------------------------

--
-- Table structure for table `schalke04`
--

CREATE TABLE `schalke04` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schalke04`
--

INSERT INTO `schalke04` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Schalke', 'Wolfsburg', 1, 2, 'LogoCLB\\Bundesliga\\schalke04.png', 'LogoCLB\\Bundesliga\\wolfsburg.png'),
(2, 'Schalke', 'Hertha Berlin', 0, 2, 'LogoCLB\\Bundesliga\\schalke04.png', 'LogoCLB\\Bundesliga\\hertha-berlin.png'),
(3, 'Schalke', 'Monchengladbach', 1, 2, 'LogoCLB\\Bundesliga\\schalke04.png', 'LogoCLB\\Bundesliga\\monchengladbach.png');

-- --------------------------------------------------------

--
-- Table structure for table `stuttgart`
--

CREATE TABLE `stuttgart` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stuttgart`
--

INSERT INTO `stuttgart` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Stuttgart', 'Mainz', 0, 1, 'LogoCLB\\Bundesliga\\stuttgart.png', 'LogoCLB\\Bundesliga\\mainz05.png'),
(2, 'Stuttgart', 'Bayern Munich', 0, 3, 'LogoCLB\\Bundesliga\\stuttgart.png', 'LogoCLB\\Bundesliga\\bayern-munich.png'),
(3, 'Stuttgart', 'Freiburg', 3, 3, 'LogoCLB\\Bundesliga\\stuttgart.png', 'LogoCLB\\Bundesliga\\freiburg.png');

-- --------------------------------------------------------

--
-- Table structure for table `werderbremen`
--

CREATE TABLE `werderbremen` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `werderbremen`
--

INSERT INTO `werderbremen` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Werder Bremen', 'Hannover', 1, 1, 'LogoCLB\\Bundesliga\\werder-bremen.png', 'LogoCLB\\Bundesliga\\hannover.png'),
(2, 'Werder Bremen', 'Eintracht Frankfurt', 2, 1, 'LogoCLB\\Bundesliga\\werder-bremen.png', 'LogoCLB\\Bundesliga\\frankfurt.png'),
(3, 'Werder Bremen', 'Nurnberg', 1, 1, 'LogoCLB\\Bundesliga\\werder-bremen.png', 'LogoCLB\\Bundesliga\\nurnberg.png');

-- --------------------------------------------------------

--
-- Table structure for table `wolfsburg`
--

CREATE TABLE `wolfsburg` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wolfsburg`
--

INSERT INTO `wolfsburg` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`) VALUES
(1, 'Wolfsburg', 'Schalke', 2, 1, 'LogoCLB\\Bundesliga\\wolfsburg.png', 'LogoCLB\\Bundesliga\\schalke04.png'),
(2, 'Wolfsburg', 'Bayer Leverkusen', 3, 1, 'LogoCLB\\Bundesliga\\wolfsburg.png', 'LogoCLB\\Bundesliga\\bayer-leverkusen.png'),
(3, 'Wolfsburg', 'Hertha Berlin', 2, 2, 'LogoCLB\\Bundesliga\\wolfsburg.png', 'LogoCLB\\Bundesliga\\hertha-berlin.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
