-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2019 at 02:01 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varbinary(4000) NOT NULL,
  `gia_sp` int(50) NOT NULL,
  `like_sp` int(20) NOT NULL,
  `dislike_sp` int(20) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username_cm` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time_cm` datetime NOT NULL,
  `avatar_cm` varbinary(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhgia`
--

INSERT INTO `danhgia` (`name`, `img`, `gia_sp`, `like_sp`, `dislike_sp`, `username`, `comment`, `username_cm`, `time_cm`, `avatar_cm`) VALUES
('Äiá»‡n thoáº¡i Samsung Galaxy S10+', 0x73616d73756e672d67616c6178792d7331302d706c75732d312e6a7067, 20990, 1, 0, 'BlackMah1fake', '', '', '0000-00-00 00:00:00', ''),
('Äiá»‡n thoáº¡i Samsung Galaxy M20 (3GB32GB)', 0x73616d73756e672d67616c6178792d7331302d706c75732d312e6a7067, 4990, 0, 1, 'vantuanfake', '', '', '0000-00-00 00:00:00', ''),
('Äiá»‡n thoáº¡i Samsung Galaxy M20 (3GB32GB)', 0x73616d73756e672d67616c6178792d7331302d706c75732d312e6a7067, 0, 0, 0, '', 'Ä‘áº¹p', 'vantuan', '2019-05-05 15:22:43', 0x73616d73756e672d67616c6178792d733130652d3667622d31323867622d6469646f6e67766965742e6a7067),
('Äiá»‡n thoáº¡i Samsung Galaxy M20 (3GB32GB)', 0x73616d73756e672d67616c6178792d7331302d706c75732d312e6a7067, 0, 0, 0, '', 'hay', 'phamlong', '2019-05-05 15:23:32', 0x7370342e6a7067),
('Äiá»‡n thoáº¡i Samsung Galaxy Note 9', 0xc49069e1bb876e2074686fe1baa1692053616d73756e672047616c617879204e6f746520392e6a7067, 0, 0, 0, '', 'dgsdb', 'phamlong', '2019-05-05 18:25:10', 0x7370342e6a7067),
('Äiá»‡n thoáº¡i Samsung Galaxy M20 (3GB32GB)', 0x73616d73756e672d67616c6178792d7331302d706c75732d312e6a7067, 0, 0, 0, '', 'vdvdsv', 'phamlong', '2019-05-05 18:25:20', 0x7370342e6a7067),
('Äiá»‡n thoáº¡i Samsung Galaxy M20 (3GB32GB)', 0x73616d73756e672d67616c6178792d7331302d706c75732d312e6a7067, 4990, 0, 1, 'phamlongfake', '', '', '0000-00-00 00:00:00', ''),
('Äiá»‡n thoáº¡i Samsung Galaxy Note 9', 0xc49069e1bb876e2074686fe1baa1692053616d73756e672047616c617879204e6f746520392e6a7067, 15990, 0, 1, 'phamlongfake', '', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `thongtinnguoidung`
--

CREATE TABLE `thongtinnguoidung` (
  `stt` int(20) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varbinary(40000) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thongtinnguoidung`
--

INSERT INTO `thongtinnguoidung` (`stt`, `username`, `password`, `avatar`, `date_created`) VALUES
(23, 'phamlong6', '123456', 0x35313436373631335f323536383530343631333136353937375f323939333633363436393234343935323537365f6e2e6a7067, '2019-05-01 10:18:29'),
(24, 'hungmanh', '123456', 0x35313436373631335f323536383530343631333136353937375f323939333633363436393234343935323537365f6e2e6a7067, '2019-05-01 09:58:40'),
(27, 'Blackone', '123456', 0x5869616f6d69205265646d69203520333247422052616d203347422e6a7067, '2019-05-05 09:44:42'),
(30, 'BlackMah1', '123456', 0x35313436373631335f323536383530343631333136353937375f323939333633363436393234343935323537365f6e2e6a7067, '2019-05-01 10:16:08'),
(31, 'manh14', '123456', 0x7370312e6a7067, '2019-05-05 01:37:40'),
(32, 'phamlong', '654321', 0x7370342e6a7067, '2019-05-05 09:01:32'),
(33, 'pham54387', 'manh19', 0x7370342e6a7067, '2019-05-05 09:02:36'),
(34, 'vantuan', '1234567', 0x73616d73756e672d67616c6178792d733130652d3667622d31323867622d6469646f6e67766965742e6a7067, '2019-05-05 15:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `thongtinsanpham`
--

CREATE TABLE `thongtinsanpham` (
  `ma_sp` int(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varbinary(40000) NOT NULL,
  `loai_sp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `giatien` int(50) NOT NULL,
  `noidung_sp` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `username_themsp` text COLLATE utf8_unicode_ci NOT NULL,
  `time_sp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thongtinsanpham`
--

INSERT INTO `thongtinsanpham` (`ma_sp`, `name`, `img`, `loai_sp`, `giatien`, `noidung_sp`, `username_themsp`, `time_sp`) VALUES
(1, 'Äiá»‡n thoáº¡i Samsung Galaxy Note 9', 0xc49069e1bb876e2074686fe1baa1692053616d73756e672047616c617879204e6f746520392e6a7067, 'Laptop - Thiáº¿t bá»‹ IT', 15990, 'Ä‘iá»‡n thoáº¡i', 'phamlong', '2019-05-05 15:00:00'),
(2, 'Äiá»‡n thoáº¡i Samsung Galaxy M20 (3GB32GB)', 0x73616d73756e672d67616c6178792d7331302d706c75732d312e6a7067, 'Laptop - Thiáº¿t bá»‹ IT', 4990, 'sdfsdfsdfsd', 'vantuan', '2019-05-05 15:21:19'),
(3, 'gáº»dhhdf', 0x35313436373631335f323536383530343631333136353937375f323939333633363436393234343935323537365f6e2e6a7067, 'SÃ¡ch', 4990, 'gfdfdhdfhf', 'phamlong', '2019-05-05 18:47:45'),
(4, 'bfbfdbdf', 0x73616d73756e672d67616c6178792d733130652d3667622d31323867622d6469646f6e67766965742e6a7067, 'SÃ¡ch', 24234, 'dffdgdfg', 'phamlong', '2019-05-05 18:56:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `thongtinnguoidung`
--
ALTER TABLE `thongtinnguoidung`
  ADD PRIMARY KEY (`stt`);

--
-- Indexes for table `thongtinsanpham`
--
ALTER TABLE `thongtinsanpham`
  ADD PRIMARY KEY (`ma_sp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `thongtinnguoidung`
--
ALTER TABLE `thongtinnguoidung`
  MODIFY `stt` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `thongtinsanpham`
--
ALTER TABLE `thongtinsanpham`
  MODIFY `ma_sp` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
