-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 19, 2017 lúc 08:36 PM
-- Phiên bản máy phục vụ: 10.1.25-MariaDB
-- Phiên bản PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlythietbi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chungloai`
--

CREATE TABLE `chungloai` (
  `ChungLoaiID` int(255) NOT NULL,
  `TenLoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Create_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chungloai`
--

INSERT INTO `chungloai` (`ChungLoaiID`, `TenLoai`, `Create_at`) VALUES
(2, 'Laptop', '2017-12-11'),
(3, 'Phụ kiện Laptop', '2017-12-11'),
(5, 'Điện Thoại', '2017-12-11'),
(6, 'Phụ kiện di động', '2017-12-11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thietbi`
--

CREATE TABLE `thietbi` (
  `MaThietBi` int(255) NOT NULL,
  `TenThietBi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AnhThietBi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NhaSX` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DonViTinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Create_at` date DEFAULT NULL,
  `ChungLoaiID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thietbi`
--

INSERT INTO `thietbi` (`MaThietBi`, `TenThietBi`, `AnhThietBi`, `NoiDung`, `NhaSX`, `SoLuong`, `DonViTinh`, `DonGia`, `Create_at`, `ChungLoaiID`) VALUES
(3, 'iPhone 7/7Plus', 'iphone71.jpg', 'Màn hình Retina 4,7/5.5 inch. Chip Apple A10 Fusion, RAM 2/3 GB, ROM 32/128/256 GB. Hệ điều hành iOS 10. Camera 12 MP/7 MP.', 'Apple', '100', 'Cái', '17000000', '2017-12-14', 5),
(4, 'HTC U 11', 'HTC_U11.jpg', 'Màn hình Suprer LCD 5,5 inch, độ phân giải Quad HD. Chip Qualcomm Snapdragon 835. RAM 6 GB, ROM 128 GB.  Hệ điều hành Android 7.1 Camera 12 MP/16 MP. ', 'HTC', '100', 'Cái', '16900000', '2017-12-14', 5),
(5, ' Blackberry Keyone', 'Blackberry_Keyone.jpg', ' Blackberry Keyone: Màn hình IPS 4,5 inch, độ phân giải 1.620 x 1.080 pixel. Chip Qualcomm Snapdragon 625, RAM 3/4 GB, ROM 32/64 GB. Hệ điều hành Android 7.1 Camera 12 MP, f/2.0 và 8 MP, f/2.2 Bàn phím QWERTY Giá xách tay 13,9 triệu đồng.', ' Blackberry', '50', 'Cái', '9500000', '2017-12-14', 5),
(6, 'Google Pixel/Pixel XL', 'Google Pixel.jpg', 'Màn hình AMOLED 5 inch Full HF và 5,5 inch Quad HD. Chip Snapdragon 821, RAM 4 GB, ROM 32/128 GB. Hệ điều hành Android 7.1.  Camera 12 MP, khẩu độ f/2.0. Camera selfie 8 MP.', 'Pixel XL', '15', 'Cái', '9900000', '2017-12-14', 5),
(7, 'Thẻ nhớ Micro SD 8 GB Class 4', 'the-nho-microsd-8gb-class-4-8-300x300.jpg', 'Tốc độ đọc: 30 MB/s. Tốc độ ghi: 4 MB/s. Chép một video 1 GB vào thẻ nhớ trong gần 4 phút rưỡi. Tương thích với hầu hết tất cả thiết bị (điện thoại, máy tính bảng). Lưu trữ hơn 2.600 bài hát (1 bài ~3 MB).', 'Microsof', '200', 'Cái', '200000', '2017-12-14', 6),
(8, 'Pin sạc dự phòng 5.000 mAh ', 'pin-sac-du-phong-5000mah-evalu-roller-2-300x300.jpg', 'Thiết kế rất nhỏ gọn, tích hợp thêm đèn pin chiếu sáng. Sạc 2 lần thiết bị pin dưới 1.500 mAh, 1 lần dưới 3.500 mAh. Dễ dàng kiểm tra lại được dung lượng pin còn lại trong sạc. Sử dụng lõi pin Li-Ion an toàn. Sạc được cho mọi điện thoại và máy tính bảng. ', 'eValu Roller', '50', 'Cái', '299000', '2017-12-14', 6),
(9, 'ây cáp Micro USB B 0.4 m  OCC101', 'cap-micro-b-40cm-cliptec-wrist-bracelet-occ101-11-350x350.png', 'Có thể gắn lại thành 1 chiếc vòng để gắn móc khóa hay gắn tay. Chất lượng tương đương với hàng chính hãng. Dùng để truyền dữ liệu hay sạc pin (dùng với adapter riêng). Dây ngắn 40 cm vừa đủ để tạo sự thoải mái vừa sạc vừa dùng máy.', 'Cliptec Wrist Bracelet', '300', 'Cái', '90000', '2017-12-14', 6),
(10, 'Chuột có dây Genius DX-125 Đen', 'chuot-co-day-genius-dx-125-den-3-330x330.png', 'Thương hiệu Genius uy tín và lâu đời. Độ phân giải cao 1200 dpi cho khả năng lướt nhanh nhạy. Sử dụng được cho hệ điều hành Windows và MacOS. Thao tác được với tay trái hoặc phải bằng ứng dụng điều chỉnh riêng.', 'Dell', '100', 'Cái', '65000', '2017-12-14', 3),
(11, 'Tai nghe chụp IP-892', 'tai-nghe-chup-tai-kanen-ip-892-330x330.png', 'Lớp đệm tai êm và dày, giúp đeo tai thoải mái và hạn chế bị rách. Có thể kéo dãn tai nghe 4 cm để vừa vặn hơn khi sử dụng. Tương thích với hầu hết điện thoại hiện nay. Dây dài lên đến 150 cm thoải mái để vừa dùng máy vừa nghe nhạc.', 'Kanen ', '200', 'Cái', '300000', '2017-12-14', 3),
(12, 'Loa Vi Tính Bluetooth F380X - 2.1', 'loa-vi-tinh-fenda-f380x-1-2-300x300.jpg', 'Có đèn phát sáng đổi màu mặt trước loa rất đẹp mắt. Công suất 54W cho âm thanh phát lớn và ít nhiễu khi mở to. Rất nhiều cách để phát nhạc như bluetooth, NFC, thẻ nhớ... Chọn kênh để phát nhạc radio trực tiếp trên loa. Tích hợp nút chuyển/lùi bài hát, ngừ', 'Fenda ', '100', 'Cái', '1350000', '2017-12-14', 3),
(13, 'Laptop Lenovo IdeaPad', 'lenovo-ideapad-120s-11iap-450x300-1-450x300.jpg', 'CPU:	Intel Celeron, N3350, 1.10 GHz RAM:	2 GB, DDR4 (On board), 2400 MHz Ổ cứng:	eMMC: 32 GB Màn hình:	11.6 inch, HD (1366 x 768) Card màn hình:	Card đồ họa tích hợp, Intel® HD Graphics Cổng kết nối:	2 x USB 3.0, HDMI, USB Type-C Hệ điều hành:	Windows 10 ', 'Lenovo', '50', 'Cái', '5190000', '2017-12-14', 2),
(14, 'Laptop Asus X510UQ i5', 'asus-x510uq-i5-8250u-br63-dai-dien-450x300.jpg', 'CPU:	Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz RAM:	4 GB, DDR4 (2 khe), 2133 MHz Ổ cứng:	HDD: 1 TB Màn hình:	15.6 inch, HD (1366 x 768) Card màn hình:	Card đồ họa rời, NVIDIA GeForce 940MX, 2 GB Cổng kết nối:	2 x USB 2.0, HDMI, USB 3.0, USB Type-C H', 'Asus', '100', 'Cái', '15190000', '2017-12-14', 2),
(15, 'Laptop Dell Vostro 5568 i5', 'dell-vostro-5568-077m52-vangdong-450x300-450x300.png', 'CPU:	Intel Core i5 Kabylake, 7200U, 2.50 GHz RAM:	4 GB, DDR4 (2 khe), 2400 MHz Ổ cứng:	HDD: 1 TB Màn hình:	15.6 inch, HD (1366 x 768) Card màn hình:	Card đồ họa rời, NVIDIA GeForce 940MX, 2 GB Cổng kết nối:	3 x USB 3.0, HDMI, LAN (RJ45), USB 2.0, VGA (D-S', 'Dell', '100', 'Cái', '17990000', '2017-12-14', 2),
(16, 'Laptop Apple Macbook Air MQD32SA/A i5', 'apple-macbook-air-mqd32sa-a-i5-5350u-400-1-450x300-450x300.jpg', 'CPU:	Intel Core i5 Broadwell, 1.80 GHz RAM:	8 GB, DDR3L(On board), 1600 MHz Ổ cứng:	SSD: 128 GB Màn hình:	13.3 inch, WXGA+(1440 x 900) Card màn hình:	Card đồ họa tích hợp, Intel HD Graphics 6000 Cổng kết nối:	MagSafe 2, 2 x USB 3.0, Thunderbolt 2 Đặc biệt', 'Apple', '50', 'Cái', '22500000', '2017-12-14', 2),
(17, 'Laptop HP Envy 13 ad074TU i7 ', 'hp.jpg', 'CPU:	Intel Core i7 Kabylake, 7500U, 2.70 GHz RAM:	8 GB, DDR3 (on board), 1866 MHz Ổ cứng:	SSD: 256 GB, M2 Màn hình:	13.3 inch, Full HD (1920 x 1080) Card màn hình:	Card đồ họa tích hợp, Intel® HD Graphics 620 Cổng kết nối:	2 x USB 3.1, 2 x USB Type-C Đặc ', 'HP', '100', 'Cái', '24900000', '2017-12-18', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `UserID` int(255) NOT NULL,
  `UserName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `Password`, `Name`, `Email`, `Phone`) VALUES
(8, 'admin', 'admin', 'MyKieuLe', 'kieuqt98@gmail.com', '0123456789');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chungloai`
--
ALTER TABLE `chungloai`
  ADD PRIMARY KEY (`ChungLoaiID`);

--
-- Chỉ mục cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  ADD PRIMARY KEY (`MaThietBi`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chungloai`
--
ALTER TABLE `chungloai`
  MODIFY `ChungLoaiID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  MODIFY `MaThietBi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
