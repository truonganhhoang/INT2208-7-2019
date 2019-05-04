-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 04, 2019 lúc 04:37 PM
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
-- Cơ sở dữ liệu: `demo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ad_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ad_pass` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ad_name`, `ad_pass`) VALUES
('admin', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custom`
--

CREATE TABLE `custom` (
  `c_id` int(11) NOT NULL,
  `c_hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `c_diachi` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `c_sodt` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `c_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `custom`
--

INSERT INTO `custom` (`c_id`, `c_hoten`, `c_diachi`, `c_sodt`, `c_email`, `c_date`) VALUES
(21, '', '', '', '', '2012-11-19 17:22:23'),
(22, 'kh', 'hgkgh', 'khgk', '0329625697', '2019-04-28 20:22:38'),
(23, '', '', '', '', '2019-05-03 21:21:24'),
(24, 'kh', 'hgkgh', 'khgk', '0329625697', '2019-05-04 14:02:35'),
(25, '', '', '', '', '2019-05-04 14:44:18'),
(26, '', '', '', '', '2019-05-04 21:18:09'),
(27, '', '', '', '', '2019-05-04 21:20:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `p_loai` int(11) NOT NULL,
  `l_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`p_loai`, `l_name`) VALUES
(1, 'Macbook'),
(2, 'Dell'),
(3, 'ToShiBa'),
(4, 'Vaio'),
(5, 'Acer'),
(6, 'Hp'),
(7, 'Asus'),
(8, 'MSI'),
(9, 'Lenovo'),
(10, 'Alineware'),
(11, 'Xiaomi'),
(12, 'Sony');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mua`
--

CREATE TABLE `mua` (
  `m_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mua`
--

INSERT INTO `mua` (`m_id`, `c_id`, `p_id`) VALUES
(2, 24, 2),
(9, 24, 8),
(10, 24, 8),
(11, 24, 8),
(12, 24, 8),
(13, 24, 8),
(14, 24, 8),
(15, 24, 1),
(16, 24, 7),
(17, 24, 2),
(18, 25, 1),
(19, 27, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `o_id` int(100) NOT NULL,
  `p_id` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `c_name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_group` varchar(11) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL DEFAULT 'bình thường',
  `p_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `p_loai` int(11) NOT NULL,
  `p_cauhinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `p_ram` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `p_hdd` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `p_vga` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `p_gia` int(11) NOT NULL,
  `p_soluongconlai` int(20) NOT NULL,
  `p_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`p_id`, `p_group`, `p_name`, `p_loai`, `p_cauhinh`, `p_ram`, `p_hdd`, `p_vga`, `p_gia`, `p_soluongconlai`, `p_img`) VALUES
(1, 'bình thường', ' MACBOOK AIR', 1, 'Intel Core i5-3317U', '4GB DDR3', '64GB SSD (Flash storage)', 'Intel GMA HD 4000', 24000000, 15, 'p1.jpg'),
(2, 'hot', 'NOTEBOOK APPLE', 1, '1.4GHz Intel Core 2 Duo L2', '2GB of 1066MHz DDR3 SDRAM ', '128GB of flash storage', 'NVIDIA GeForce 320M', 30900000, 10, 'p2.jpg'),
(3, 'hot', 'APPLE MBAIR', 1, 'Intel Core i5  1.6GHz', '4GB (two 2GB SO-DIMMs)', '128GB Flash Storage', 'Intel HD Graphics 3000 processor', 32000000, 5, 'p3.jpg'),
(4, 'bình thường', 'MBR 13,6\"', 1, 'Intel Core i7 (3M Cache, 2.80GHz)', '4GB', '750GB', 'Intel HD Graphics 3000', 36500000, 18, 'p4.jpg'),
(5, 'bình thường', 'MACBOOK PRO', 1, '2.5GHz Quad-core Intel Core i5 ', '4GB (two 2GB SO-DIMMs) ', '500 GB Serial ATA 5400 rpm', 'Intel HD Graphics 4000', 29000000, 4, 'p5.jpg'),
(6, 'new', 'Dell Audi A4', 2, 'Intel Core i5-3210M 2.5GHz', '4GB RAM', '500GB HDD', 'VGA NVIDIA GeForce GT 630M', 13100000, 32, 'p6.jpg'),
(7, 'bình thường', 'Dell Insp 14', 2, 'Intel Core i3-350M 2.26GHz', '2GB RAM', '320GB HDD', 'VGA Intel HD Graphics', 7499000, 0, 'p7.jpg'),
(8, 'bình thường', 'Dell Vostro 1450', 2, 'Intel Core i5-2410M 2.3GHz', '4GB RAM', '500GB HDD', 'VGA ATI Radeon HD 6470', 12800000, 2, 'p8.jpg'),
(9, 'new', 'Toshiba Satellite', 3, 'Intel Core i3-380M 2.53GHz', '2GB RAM', '320GB HDD', 'VGA Intel HD Graphics', 8790000, 16, 'p9.jpg'),
(10, 'bình thường', 'Toshiba L745-1022U ', 3, 'Intel Core i5-2410M 2.3GHz', ' 2GB RAM', '500GB HDD', 'VGA Intel GMA HD 300', 13350000, 5, 'p10.jpg'),
(11, 'bình thường', 'Toshiba L840-1012 ', 3, 'Intel Core i3-2350M 2.3GHz', '2GB RAM', ' 500GB HDD', 'VGA Intel HD Graphics 3000', 9850000, 7, 'p11.jpg'),
(12, 'new', 'Sony VPC-EA21FX', 4, 'Intel Core i3-350 2.26GHz', '4GB RAM', '320GB HDD', 'VGA Intel HD Graphics', 10500000, 3, 'p12.jpg'),
(13, 'hot', 'Sony VPC-Z112GD', 4, 'Intel Core i5-520M 2.40GHz', '4GB RAM', '128GB SSD', 'VGA NVIDIA GeForce', 21000000, 11, 'p13.jpg'),
(14, 'new', 'Acer Aspire 4830 ', 5, 'Intel Core i5-2450M 2.5GHz', '2GB RAM', '750GB HDD', 'VGA Intel HD Graphics 3000', 10200000, 1, 'p14.jpg'),
(15, 'hot', 'Acer Aspire V3-471G', 5, 'Intel Core i5-3210M 2.5GHz', '2GB RAM', '500GB HDD', 'VGA NVIDIA GeForce GT 630M', 11000000, 3, 'p15.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `Name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `address` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `password`, `Name`, `Email`, `address`, `level`) VALUES
('admin', '21f69f83', 'Nguyen Thanh Trung', 'thanhtrunggvc@gmail.com', '63 Tran Quoc Vuong, Cau Giay, Ha Noi, Viet Nam', 1),
('adsa', '25f9e794323b453885f5181f1b624d0b', 'asfsf', '24242@gmail.com', '21412412', 0),
('thanhtrung', '25d55ad283aa400af464c76d713c07ad', 'Nguyen Thanh Trung', 'thanhtrunggvc@gmail.com', '63 Tran Quoc Vuong, Cau Giay, Ha Noi, Viet Nam', 0),
('thanhtrunggvc', '25f9e794323b453885f5181f1b624d0b', 'Nguyen Thanh Trung', 'thanhtrunggvc@gmail.com', '63 Tran Quoc Vuong, Cau Giay, Ha Noi, Viet Nam', 0),
('tt', '9996535e07258a7bbfd8b132435c5962', 'tess', '2424sa2@gmail.com', 'Ha Noi, Viet Nam', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `custom`
--
ALTER TABLE `custom`
  ADD PRIMARY KEY (`c_id`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`p_loai`);

--
-- Chỉ mục cho bảng `mua`
--
ALTER TABLE `mua`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `p_loai` (`p_loai`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `custom`
--
ALTER TABLE `custom`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `p_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `mua`
--
ALTER TABLE `mua`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `mua`
--
ALTER TABLE `mua`
  ADD CONSTRAINT `mua_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `custom` (`c_id`),
  ADD CONSTRAINT `mua_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`),
  ADD CONSTRAINT `mua_ibfk_3` FOREIGN KEY (`c_id`) REFERENCES `custom` (`c_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`p_loai`) REFERENCES `loai` (`p_loai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
