-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2019 at 06:47 PM
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
-- Database: `db_wolf`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderID` int(10) NOT NULL,
  `productID` int(10) NOT NULL,
  `quantityOrderred` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderID`, `productID`, `quantityOrderred`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 4, 1),
(1, 5, 1),
(1, 6, 1),
(1, 8, 1),
(1, 10, 1),
(2, 1, 1),
(2, 6, 1),
(2, 10, 1),
(2, 11, 1),
(3, 2, 1),
(4, 2, 1),
(4, 5, 1),
(4, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(10) NOT NULL,
  `orderDate` date NOT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending',
  `customerID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `orderDate`, `shippedDate`, `status`, `customerID`) VALUES
(1, '2019-05-07', '2019-05-07', 'shipped', 3),
(2, '2019-05-07', NULL, 'pending', 4),
(3, '2019-05-07', NULL, 'pending', 5),
(4, '2019-05-07', NULL, 'pending', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `customerID` int(10) NOT NULL,
  `checkNumber` varchar(50) NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productlines`
--

CREATE TABLE `productlines` (
  `productLineID` int(10) NOT NULL,
  `productLineName` varchar(15) NOT NULL,
  `productLineDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productlines`
--

INSERT INTO `productlines` (`productLineID`, `productLineName`, `productLineDescription`) VALUES
(1, 'Vans', 'Với mức giá không quá đắt đỏ cùng quá nhiều ưu điểm như đơn giản nhưng vẫn mang những nét rất riêng, dễ phối hợp nhiều phong cách cùng chất lượng được chăm chút, không khó hiểu khi từ lâu Vans đã luôn được yêu thích và có những fan cuồng nhiệt hay còn gọi là Vansaholic. '),
(2, 'Adidas', 'Trong số các ông lớn trong làng giày thể thao, không thể không kể tên Adidas – Gã khổng lồ đến từ Đức và cũng là hãng giày thể thao đứng thứ hai thế giới về doanh thu.. Đã có thời điểm Adidas tỏ ra tụt hậu so với các hãng giày thể thao khác như Nike, Under Armour Inc… Nhưng hiện tại hãng đang có sự phục hồi với những mẫu giày mới được ra mắt như : NMD, Tubular, Ultraboost và Alphabounce.\r\n\r\n'),
(3, 'Converse', 'Converse là một thương hiệu giày nổi tiếng hàng đầu thế giới, với những thiết kế vượt thời gian trường tồn. Nó chưa bao giờ lạc hậu cả, nó là mẫu giày thịnh hành nhất thế giới, phù hợp với mọi tầng lớp xã hội, kết hợp được với rất nhiều trang phục.Giày converse quá phổ biến, theo thống kê có đến 60% dân số Mỹ đều sở hữu ít nhất một đôi Converse. Ở Mỹ, sở hữu 1 đôi giày Converse All Star được xem là một biểu tượng văn hóa tinh thần Mỹ như là thức ăn nhanh McDonald\'s, ô tô Ford, nước ngọt Coca-Cola.'),
(4, 'Palladium', 'Trước khi tràn về Việt Nam như một cơn gió, thương hiệu giày Palladium đã càn quét thị trường thời trang New York, London, Nhật Bản và cả kinh đô thời trang của Pháp với phong cách bụi bặm nhưng lại đậm chất thành thị, cá tính.\r\nVới cách thiết kế độc đáo hơn hẳn so với các dòng giày đương thời cùng việc dễ dàng trong việc mix trang phục và giá cả hợp lí đã khiến giày Palladium nổi lên một cách rầm rộ trong thời gian dài và vẫn bền bỉ đến tận ngày nay.'),
(5, 'Nike', 'Thương hiệu giày thể thao Nike được biết đến là thương hiệu giày thể thao được ưa chuộng hàng đầu thế giới và là một đại diện của nền văn hóa và phong cách Mỹ. Nhắc đến Nike, ta không thể không biết biết logo mang tính biểu tượng nhất thế giới và câu slogan kinh điển “just do it”');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` int(10) NOT NULL,
  `productName` varchar(99) NOT NULL,
  `productLineID` int(10) NOT NULL,
  `productImg1` varchar(99) NOT NULL,
  `productImg2` varchar(99) NOT NULL,
  `productImg3` varchar(99) NOT NULL,
  `productPrice` int(19) NOT NULL,
  `productDescription` text NOT NULL,
  `approved` int(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productCode`, `productName`, `productLineID`, `productImg1`, `productImg2`, `productImg3`, `productPrice`, `productDescription`, `approved`, `created_at`, `updated_at`) VALUES
(1, 'Vans Old Skool', 1, 'vn-0d3hy28_vn-0d3hy28_blk_01_20290.jpg', '2.jpeg', 'van3.jpg', 1485001, 'Thiết kế Vans Old Skool Classic trắng đen kinh điển, sử dụng kết hợp chất liệu vải Canvas mềm, nhẹ ở thân giày và chất liệu da lộn ở mũi giày và đế giày mang đến cho bạn sự thoải mái khi di chuyển. Đế cao su chuyên dùng cho bộ môn trượt ván đảm bảo độ bền chắc và có độ bám tốt. Khả năng kết hợp nhiều outfit mà không sợ bị lệch tông.', 1, '2019-04-29 10:03:35', '2019-05-04 05:18:37'),
(2, 'Vans ERA Get The Real', 1, 'VN0A38FRTO3-DRAKE-500x500.jpg', 'VN0A38FRTO3-DRAKE2-650x650.jpg', 'VN0A38FRTO3-DRAKE4-650x650.jpg', 1305000, 'Giữ nguyên kiểu dáng của dòng Vans Era với lót đệm cổ chân êm ái để di chuyển linh hoạt. Điểm nhấn ở sản phẩm là tên dòng giày GET THE REAL #95 được đặt ở bên hông đế giày tạo sự khác biệt. Đồng thời lưỡi gà màu đen nằm dưới phần Upper đỏ khiến đôi giày càng trở nên bắt mắt và đặc biệt.', 1, '2019-04-29 10:06:05', '2019-05-05 04:19:09'),
(4, 'Vans ComfyCush Era', 1, 'VN0A3WM9VNO-DRAKE-650x650.jpg', 'VN0A3WM9VNO-DRAKE4-650x650.jpg', 'VN0A3WM9VNO-DRAKE3-650x650.jpg', 1980000, 'Ứng dụng công nghệ ComfyCush vào đôi giày Vans Era có phần đệm ở cổ chân. Đặc biệt là sự kết hợp của 2 tone màu tương phản Vàng - Xanh khá nổi bật. Vans ComfyCush Era đã mang đến cho người dùng một trải nghiệm khác biệt với trọng lượng vô cùng nhẹ. Đặc biệt là sự cải tiến toàn bộ nội thất bên trong đôi giày, giúp bạn linh hoạt, nhẹ nhàng hơn trong việc di chuyển.', 1, '2019-04-29 10:10:00', '2019-04-29 17:38:08'),
(5, 'Converse Chuck Taylor All Star Limo Leather', 3, '163339C-DRAKE-650x650.jpg', 'IMG_3087-copy-650x650.jpg', 'IMG_3088-copy-650x650.jpg', 1530000, 'Mạnh mẽ - Bí ẩn - Cá tính là những từ dành cho thiết kế mới mẻ, độc đáo này. Toàn bộ thân giày được làm từ chất liệu da cao cấp có độ bền bỉ, giúp bạn dễ dàng vệ sinh. Điểm nhấn của sản phẩm là phần dây giày được thiết kế theo dạng tròn có màu vàng nổi bật trên nền đen.', 1, '2019-04-29 10:12:21', '2019-04-29 17:38:39'),
(6, 'Chuck Taylor All Star 1970s Vintage Canvas', 3, '163297C-DRAKE-650x650.jpg', 'IMG_1628-copy-650x650.jpg', 'IMG_1633-650x650.jpg', 1530000, 'Vẫn là màu vàng best-seller của nhà Converse, tuy nhiên lần này lại là tone vàng vintage kết hợp với thiết kế cổ điển của dòng Chuck 1970s. Với đế giày cao, trắng ngà và dây giày có phần thanh mảnh hơn, form giày cứng cáp cùng chất liệu vải êm nhẹ, chắc chắn đây là siêu phẩm bạn phải sở hữu.', 1, '2019-04-29 10:14:26', '2019-04-29 17:39:30'),
(7, 'Chuck Taylor All Star Leather', 3, '131274-650x650.jpg', 'IMG_4659-650x650.jpg', 'IMG_4661-650x650.jpg', 1350000, 'Với thiết kế cổ điển được ưa chuộng của dòng Classic đi kèm với chất liệu da mềm nhẹ, có độ bóng, phần để cao su bền chắc cùng đường viền đen đặc trưng. Phiên bản màu đen bằng da của Converse Classic cổ thấp chắc chắn là item đơn giản phù hợp với mọi phong cách đáng để bạn sở hữu.', 1, '2019-04-29 10:15:55', '2019-05-03 13:51:53'),
(8, 'Palladium Pampalicious Blossom', 4, '96205-676-M-DRAKE-1-650x650.jpg', '96205-676-M-DRAKE6-650x650.jpg', '96205-676-M-DRAKE5-650x650.jpg', 1710000, 'Ngọt ngào với tone màu Hồng Blossom cực nữ tính với chất liệu vải Canvas bền chắc. Điểm đặc biệt chính là phần đế giày và một vài chi tiết trang trí được thiết kế trong suốt, đồng bộ với thân giày cho bạn sản phẩm độc đáo, bắt mắt. Diện item này với mọi outfit bạn sẽ trở nên cực kỳ thời trang và sành điệu.', 1, '2019-04-29 13:00:30', '2019-04-29 13:00:30'),
(9, 'Palladium Pallabrouse Hiker Boots', 4, '75333-219-M-650x650.jpg', 'IMG_6570-copy-650x650.jpg', 'IMG_6555-copy-650x650.jpg', 1750000, 'Với tone màu nâu mạnh mẽ và phấn đế được làm từ chất liệu Gum cùng kiểu dáng cổ bẻ theo phong cách \"đường phố\"', 1, '2019-04-29 13:02:34', '2019-04-29 13:02:34'),
(10, 'Adidas EQT Bask Adv', 2, 'MG_6037.jpg', 'MG_6039.jpg', 'MG_6040.jpg', 1950000, 'Mẫu giày hót hòn họt, đẹp dã man. Mua đê mua đê', 1, '2019-04-29 13:20:19', '2019-04-29 13:20:19'),
(11, 'GIÀY NIKE AIR MAX 270 \"TRIPLE BLACK', 5, 'giay_nike_air_27_c_black_sdl651505877_7_3c272_4f51d2a047df4a7aac2fbaf2e807e628_1024x1024.jpg', 'nike-air-max-270-triple-black-on-feet-look-3.jpg', 'nike-air-max-270-triple-black-release-closer-look-05-1024x719.jpg', 2750000, 'Đây là một trong những dòng giày Nike mới được sản xuất dựa trên công nghệ đế Air nổi tiếng, với thiết kế hiện đại và cực kỳ êm ái !', 1, '2019-04-29 13:23:49', '2019-04-29 13:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `address`, `phone`) VALUES
(1, 'NgocUET', 'nguyenkhacngoc089@gmail.com', 1, NULL, '$2y$10$IHmx04VJ5Pj5YGXEMCE17.tr/irRTlOvyfxZc.I7VPgnd.bGeKIra', NULL, '2019-04-23 12:06:47', '2019-04-29 02:05:35', NULL, NULL),
(2, 'Nguyen Khac Ngoc', 'nguyenngoc99uet@gmail.com', 0, NULL, '$2y$10$WIR4VdxyuLak5L9d4FBb8O1wbOyDLHs/lKRBQKcHJOxoM5KS9xC2a', NULL, '2019-05-05 03:40:51', '2019-05-05 03:40:51', 'Ha Noi.', '0373965279'),
(3, 'Liemdz vcl', 'liemdz@gmail.com', 0, NULL, '$2y$10$qdFGdjttlrIGpYkygP4HFOsi2mWOSwMxirJGu0yL1kCEDc0FFN9RC', NULL, '2019-05-05 13:52:12', '2019-05-05 13:52:12', 'Phu Tho', '113'),
(4, 'Khánh Sky', 'khanhdanchoi@gmail.com', 0, NULL, '$2y$10$m9.6NES.EXdq.trkikTXgeVF5jk.9QhbhmlM6tAGBZU25tYxVKL2K', NULL, '2019-05-06 23:50:44', '2019-05-06 23:50:44', 'Bắc Ninh', '113'),
(5, 'Khá Bảnh', 'banhIdol@gmail.com', 0, NULL, '$2y$10$M0EDThh7hHgTJw2vzkH.Z.Wb6pRrSFIGgL9oYu4Qsg5nBrdNeqOia', NULL, '2019-05-06 23:51:36', '2019-05-06 23:51:36', 'Bắc Ninh', '114');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderID`,`productID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`customerID`,`checkNumber`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `productlines`
--
ALTER TABLE `productlines`
  ADD PRIMARY KEY (`productLineID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productCode`),
  ADD KEY `productLineID` (`productLineID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productlines`
--
ALTER TABLE `productlines`
  MODIFY `productLineID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productCode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `products` (`productCode`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productLineID`) REFERENCES `productlines` (`productLineID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
