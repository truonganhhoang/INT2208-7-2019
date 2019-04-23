-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 23, 2019 lúc 03:27 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `n6shop_database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `Name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `address` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `password`, `Name`, `Email`, `address`) VALUES
('admin', '21f69f83dcc2b2c5346f9c996bf412eb', 'Nguyen Thanh Trung', 'thanhtrunggvc@gmail.com', '63 Tran Quoc Vuong, Cau Giay, Ha Noi, Viet Nam'),
('dsf', '0244e0b239de091515c2406440c5ad00', 'dsfd', 'dsas@gmail.com', '0'),
('hihi', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Thanh Trung', 'abssc@gmail.com', '0'),
('huhu', 'e10adc3949ba59abbe56e057f20f883e', 'Ä‘áº¡t', 'vvv@gmail.com', '20'),
('ntt', 'c4ca4238a0b923820dcc509a6f75849b', 'Nguyá»…n ThÃ nh Trung', 'GS, GV, NB, VN', 'ntt@gmail.com'),
('thanhtrung', '25f9e794323b453885f5181f1b624d0b', 'Nguyen Thanh Trung', '63 Tran Quoc Vuong, Cau Giay, Ha Noi, Viet Nam', 'hihi@gmail.com'),
('thanhtrung1', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Thanh Trung', 'abcsss@gmail.com', '0'),
('trung', '25f9e794323b453885f5181f1b624d0b', 'nguyen trung', 'abv@gmail.com', '0'),
('tt', '9996535e07258a7bbfd8b132435c5962', 'tess', '2424sa2@gmail.com', 'Ha Noi, Viet Nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
