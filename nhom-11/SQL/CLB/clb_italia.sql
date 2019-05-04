-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2019 at 04:26 PM
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
-- Database: `clb_italia`
--

-- --------------------------------------------------------

--
-- Table structure for table `acmilan`
--

CREATE TABLE `acmilan` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acmilan`
--

INSERT INTO `acmilan` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'AC Milan', 'Genoa', 2, 1, 'LogoCLB\\Series A\\AC Milan.png', 'LogoCLB\\Series A\\Genoa.png', 'H'),
(2, 'AC Milan', 'Napoli', 2, 3, 'LogoCLB\\Series A\\AC Milan.png', 'LogoCLB\\Series A\\Napoli.png', 'A'),
(3, 'AC Milan', 'AS Roma', 2, 1, 'LogoCLB\\Series A\\AC Milan.png', 'LogoCLB\\Series A\\AS Roma.png', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `asroma`
--

CREATE TABLE `asroma` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asroma`
--

INSERT INTO `asroma` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'AS Roma', 'Torino', 1, 0, 'LogoCLB\\Series A\\AS Roma.png', 'LogoCLB\\Series A\\Torino.png', 'A'),
(2, 'AS Roma', 'Atalanta', 3, 3, 'LogoCLB\\Series A\\AS Roma.png', 'LogoCLB\\Series A\\atalanta.png', 'H'),
(3, 'AS Roma', 'AC Milan', 1, 2, 'LogoCLB\\Series A\\AS Roma.png', 'LogoCLB\\Series A\\AC Milan.png', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `atalanta`
--

CREATE TABLE `atalanta` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atalanta`
--

INSERT INTO `atalanta` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Atalanta', 'Frosinone', 4, 0, 'LogoCLB\\Series A\\atalanta.png', 'LogoCLB\\Series A\\Frosinone.png', 'H'),
(2, 'Atalanta', 'AS Roma', 3, 3, 'LogoCLB\\Series A\\atalanta.png', 'LogoCLB\\Series A\\AS Roma.png', 'A'),
(3, 'Atalanta', 'Cagliari', 0, 1, 'LogoCLB\\Series A\\atalanta.png', 'LogoCLB\\Series A\\cagliari.png', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `bologna`
--

CREATE TABLE `bologna` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bologna`
--

INSERT INTO `bologna` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Bologna', 'S.P.A.L', 0, 1, 'LogoCLB\\Series A\\bologna.png', 'LogoCLB\\Series A\\S.P.A.L.png', 'H'),
(2, 'Bologna', 'Frosinone', 0, 0, 'LogoCLB\\Series A\\bologna.png', 'LogoCLB\\Series A\\Frosinone.png', 'A'),
(3, 'Bologna', 'Internazionale', 0, 3, 'LogoCLB\\Series A\\bologna.png', 'LogoCLB\\Series A\\Internazionale.png', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `cagliari`
--

CREATE TABLE `cagliari` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cagliari`
--

INSERT INTO `cagliari` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Cagliari', 'Empoli', 0, 2, 'LogoCLB\\Series A\\cagliari.png', 'LogoCLB\\Series A\\Empoli.png', 'A'),
(2, 'Cagliari', 'Sassuolo', 2, 2, 'LogoCLB\\Series A\\cagliari.png', 'LogoCLB\\Series A\\sassuolo.png', 'H'),
(3, 'Cagliari', 'Atalanta', 1, 0, 'LogoCLB\\Series A\\cagliari.png', 'LogoCLB\\Series A\\atalanta.png', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `chievo`
--

CREATE TABLE `chievo` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chievo`
--

INSERT INTO `chievo` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Chievo Verona', 'Juventus', 2, 3, 'LogoCLB\\Series A\\Chievo Verona.png', 'LogoCLB\\Series A\\Juventus.png', 'H'),
(2, 'Chievo Verona', 'Fiorentina', 1, 6, 'LogoCLB\\Series A\\Chievo Verona.png', 'LogoCLB\\Series A\\Fiorentina.png', 'A'),
(3, 'Chievo Verona', 'Empoli', 0, 0, 'LogoCLB\\Series A\\Chievo Verona.png', 'LogoCLB\\Series A\\Empoli.png', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `empoli`
--

CREATE TABLE `empoli` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empoli`
--

INSERT INTO `empoli` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Empoli', 'Cagliari', 2, 0, 'LogoCLB\\Series A\\Empoli.png', 'LogoCLB\\Series A\\cagliari.png', 'H'),
(2, 'Empoli', 'Genoa', 1, 2, 'LogoCLB\\Series A\\Empoli.png', 'LogoCLB\\Series A\\Genoa.png', 'A'),
(3, 'Empoli', 'Chievo Verona', 0, 0, 'LogoCLB\\Series A\\Empoli.png', 'LogoCLB\\Series A\\Chievo Verona.png', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `fiorentina`
--

CREATE TABLE `fiorentina` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fiorentina`
--

INSERT INTO `fiorentina` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Fiorentina', 'Sampdoria', 1, 1, 'LogoCLB\\Series A\\Fiorentina.png', 'LogoCLB\\Series A\\Sampdoria.png', 'A'),
(2, 'Fiorentina', 'Chievo Verona', 6, 1, 'LogoCLB\\Series A\\Fiorentina.png', 'LogoCLB\\Series A\\Chievo Verona.png', 'H'),
(3, 'Fiorentina', 'Udinese', 1, 0, 'LogoCLB\\Series A\\Fiorentina.png', 'LogoCLB\\Series A\\Udinese.png', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `frosinone`
--

CREATE TABLE `frosinone` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frosinone`
--

INSERT INTO `frosinone` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Frosinone', 'Atalanta', 0, 4, 'LogoCLB\\Series A\\Frosinone.png', 'LogoCLB\\Series A\\atalanta.png', 'A'),
(2, 'Frosinone', 'Bologna', 0, 0, 'LogoCLB\\Series A\\Frosinone.png', 'LogoCLB\\Series A\\bologna.png', 'H'),
(3, 'Frosinone', 'Lazio', 0, 1, 'LogoCLB\\Series A\\Frosinone.png', 'LogoCLB\\Series A\\SS Lazio.png', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `genoa`
--

CREATE TABLE `genoa` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genoa`
--

INSERT INTO `genoa` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Genoa', 'AC Milan', 1, 2, 'LogoCLB\\Series A\\Genoa.png', 'LogoCLB\\Series A\\AC Milan.png', 'A'),
(2, 'Genoa', 'Empoli', 2, 1, 'LogoCLB\\Series A\\Genoa.png', 'LogoCLB\\Series A\\Empoli.png', 'H'),
(3, 'Genoa', 'Sassuolo', 3, 5, 'LogoCLB\\Series A\\Genoa.png', 'LogoCLB\\Series A\\sassuolo.png', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `intermilan`
--

CREATE TABLE `intermilan` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intermilan`
--

INSERT INTO `intermilan` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Internazionale', 'Sassuolo', 0, 1, 'LogoCLB\\Series A\\Internazionale.png', 'LogoCLB\\Series A\\sassuolo.png', 'A'),
(2, 'Internazionale', 'Torino', 2, 2, 'LogoCLB\\Series A\\Internazionale.png', 'LogoCLB\\Series A\\Torino.png', 'H'),
(3, 'Internazionale', 'Bologna', 3, 0, 'LogoCLB\\Series A\\Internazionale.png', 'LogoCLB\\Series A\\bologna.png', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `juventus`
--

CREATE TABLE `juventus` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `juventus`
--

INSERT INTO `juventus` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Juventus', 'Chievo Verona', 3, 2, 'LogoCLB\\Series A\\Juventus.png', 'LogoCLB\\Series A\\Chievo Verona.png', 'A'),
(2, 'Juventus', 'Lazio', 2, 0, 'LogoCLB\\Series A\\Juventus.png', 'LogoCLB\\Series A\\SS Lazio.png', 'H'),
(3, 'Juventus', 'AC Parma', 2, 1, 'LogoCLB\\Series A\\Juventus.png', 'LogoCLB\\Series A\\AC Parma.png', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `lazio`
--

CREATE TABLE `lazio` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lazio`
--

INSERT INTO `lazio` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Lazio', 'Napoli', 1, 2, 'LogoCLB\\Series A\\SS Lazio.png', 'LogoCLB\\Series A\\Napoli.png', 'H'),
(2, 'Lazio', 'Juventus', 0, 2, 'LogoCLB\\Series A\\SS Lazio.png', 'LogoCLB\\Series A\\Juventus.png', 'A'),
(3, 'Lazio', 'Frosinone', 1, 0, 'LogoCLB\\Series A\\SS Lazio.png', 'LogoCLB\\Series A\\Frosinone.png', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `napoli`
--

CREATE TABLE `napoli` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `napoli`
--

INSERT INTO `napoli` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Napoli', 'Lazio', 2, 1, 'LogoCLB\\Series A\\Napoli.png', 'LogoCLB\\Series A\\SS Lazio.png', 'A'),
(2, 'Napoli', 'AC Milan', 3, 2, 'LogoCLB\\Series A\\Napoli.png', 'LogoCLB\\Series A\\AC Milan.png', 'H'),
(3, 'Napoli', 'Sampdoria', 0, 0, 'LogoCLB\\Series A\\Napoli.png', 'LogoCLB\\Series A\\Sampdoria.png', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `parma`
--

CREATE TABLE `parma` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parma`
--

INSERT INTO `parma` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'AC Parma', 'Udinese', 2, 2, 'LogoCLB\\Series A\\AC Parma.png', 'LogoCLB\\Series A\\Udinese.png', 'H'),
(2, 'AC Parma', 'S.P.A.L', 0, 1, 'LogoCLB\\Series A\\AC Parma.png', 'LogoCLB\\Series A\\S.P.A.L.png', 'A'),
(3, 'AC Parma', 'Juventus', 1, 2, 'LogoCLB\\Series A\\AC Parma.png', 'LogoCLB\\Series A\\Juventus.png', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `sampdoria`
--

CREATE TABLE `sampdoria` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sampdoria`
--

INSERT INTO `sampdoria` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Sampdoria', 'Fiorentina', 1, 1, 'LogoCLB\\Series A\\Sampdoria.png', 'LogoCLB\\Series A\\Fiorentina.png', 'H'),
(2, 'Sampdoria', 'Udinese', 0, 1, 'LogoCLB\\Series A\\Sampdoria.png', 'LogoCLB\\Series A\\Udinese.png', 'A'),
(3, 'Sampdoria', 'Napoli', 0, 0, 'LogoCLB\\Series A\\Sampdoria.png', 'LogoCLB\\Series A\\Napoli.png', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `sassuolo`
--

CREATE TABLE `sassuolo` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sassuolo`
--

INSERT INTO `sassuolo` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Sassuolo', 'Internazionale', 1, 0, 'LogoCLB\\Series A\\sassuolo.png', 'LogoCLB\\Series A\\Internazionale.png', 'H'),
(2, 'Sassuolo', 'Cagliari', 2, 2, 'LogoCLB\\Series A\\sassuolo.png', 'LogoCLB\\Series A\\cagliari.png', 'A'),
(3, 'Sassuolo', 'Genoa', 5, 3, 'LogoCLB\\Series A\\sassuolo.png', 'LogoCLB\\Series A\\Genoa.png', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `spal`
--

CREATE TABLE `spal` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spal`
--

INSERT INTO `spal` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'S.P.A.L', 'Bologna', 1, 0, 'LogoCLB\\Series A\\S.P.A.L.png', 'LogoCLB\\Series A\\bologna.png', 'A'),
(2, 'S.P.A.L', 'AC Parma', 1, 0, 'LogoCLB\\Series A\\S.P.A.L.png', 'LogoCLB\\Series A\\AC Parma.png', 'H'),
(3, 'S.P.A.L', 'Torino', 0, 1, 'LogoCLB\\Series A\\S.P.A.L.png', 'LogoCLB\\Series A\\Torino.png', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `torino`
--

CREATE TABLE `torino` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `torino`
--

INSERT INTO `torino` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Torino', 'AS Roma', 0, 1, 'LogoCLB\\Series A\\Torino.png', 'LogoCLB\\Series A\\AS Roma.png', 'H'),
(2, 'Torino', 'Internazionale', 2, 2, 'LogoCLB\\Series A\\Torino.png', 'LogoCLB\\Series A\\Internazionale.png', 'A'),
(3, 'Torino', 'S.P.A.L', 1, 0, 'LogoCLB\\Series A\\Torino.png', 'LogoCLB\\Series A\\S.P.A.L.png', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `udinese`
--

CREATE TABLE `udinese` (
  `vong` int(2) NOT NULL,
  `doibong` varchar(20) NOT NULL,
  `doithu` varchar(20) NOT NULL,
  `banthang` int(2) NOT NULL,
  `banbai` int(2) NOT NULL,
  `logo_doibong` varchar(50) NOT NULL,
  `logo_doithu` varchar(50) NOT NULL,
  `san` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `udinese`
--

INSERT INTO `udinese` (`vong`, `doibong`, `doithu`, `banthang`, `banbai`, `logo_doibong`, `logo_doithu`, `san`) VALUES
(1, 'Udinese', 'AC Parma', 2, 2, 'LogoCLB\\Series A\\Udinese.png', 'LogoCLB\\Series A\\AC Parma.png', 'A'),
(2, 'Udinese', 'Sampdoria', 1, 0, 'LogoCLB\\Series A\\Udinese.png', 'LogoCLB\\Series A\\Sampdoria.png', 'H'),
(3, 'Udinese', 'Fiorentina', 0, 1, 'LogoCLB\\Series A\\Udinese.png', 'LogoCLB\\Series A\\Fiorentina.png', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acmilan`
--
ALTER TABLE `acmilan`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `asroma`
--
ALTER TABLE `asroma`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `atalanta`
--
ALTER TABLE `atalanta`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `bologna`
--
ALTER TABLE `bologna`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `cagliari`
--
ALTER TABLE `cagliari`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `chievo`
--
ALTER TABLE `chievo`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `empoli`
--
ALTER TABLE `empoli`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `fiorentina`
--
ALTER TABLE `fiorentina`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `frosinone`
--
ALTER TABLE `frosinone`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `genoa`
--
ALTER TABLE `genoa`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `intermilan`
--
ALTER TABLE `intermilan`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `juventus`
--
ALTER TABLE `juventus`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `lazio`
--
ALTER TABLE `lazio`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `napoli`
--
ALTER TABLE `napoli`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `parma`
--
ALTER TABLE `parma`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `sampdoria`
--
ALTER TABLE `sampdoria`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `sassuolo`
--
ALTER TABLE `sassuolo`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `spal`
--
ALTER TABLE `spal`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `torino`
--
ALTER TABLE `torino`
  ADD PRIMARY KEY (`vong`);

--
-- Indexes for table `udinese`
--
ALTER TABLE `udinese`
  ADD PRIMARY KEY (`vong`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
