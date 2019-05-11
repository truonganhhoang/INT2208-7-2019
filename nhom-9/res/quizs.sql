-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2019 at 10:31 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `quizs`
--

CREATE TABLE `quizs` (
  `questions` varchar(200) COLLATE utf16_vietnamese_ci NOT NULL,
  `questionId` varchar(6) COLLATE utf16_vietnamese_ci NOT NULL,
  `optionA` text COLLATE utf16_vietnamese_ci NOT NULL,
  `optionB` text COLLATE utf16_vietnamese_ci NOT NULL,
  `optionC` text COLLATE utf16_vietnamese_ci NOT NULL,
  `optionD` text COLLATE utf16_vietnamese_ci NOT NULL,
  `trueAnswer` varchar(1) COLLATE utf16_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_vietnamese_ci;

--
-- Dumping data for table `quizs`
--

INSERT INTO `quizs` (`questions`, `questionId`, `optionA`, `optionB`, `optionC`, `optionD`, `trueAnswer`) VALUES
('Thời gian thực dân Pháp tiến hành khai thác thuộc địa lần thứ nhất ở Việt Nam khi nào?', '100001', '1858-1884', '1884-1896', '1896-1913', '1914-1918', 'C'),
('Trong đợt khai thác thuộc địa lần thứ nhất của thực dân Pháp ở nước ta có giai cấp mới nào được hình thành?', '100002', 'Giai cấp tư sản', 'Giai cấp tư sản và công nhân', 'Giai cấp công nhân ', 'Giai cấp tiểu tư sản', 'C'),
('Trước Chiến tranh thế giới thứ nhất, ở Việt Nam có những giai cấp nào?', '100003', 'Địa chủ phong kiến và nông dân', 'Địa chủ phong kiến, nông dân, tư sản, tiểu tư sản và công nhân', 'Địa chủ phong kiến, nông dân và công nhân ', 'Địa chủ phong kiến, nông dân và tiểu tư sản', 'C'),
('Dưới chế độ thực dân phong kiến, giai cấp nông dân Việt Nam có yêu cầu bức thiết nhất là gì?', '100004', 'Độc lập dân tộc ', 'Ruộng đất', 'Quyền bình đẳng nam, nữ', 'Được giảm tô, giảm tức', 'A'),
('Mâu thuẫn cơ bản và chủ yếu ở Việt Nam đầu thế kỷ XX là mâu thuẫn nào?', '100005', 'Mâu thuẫn giữa giai cấp nông dân với giai cấp địa chủ phong kiến', 'Mâu thuẫn giữa giai cấp công nhân với giai cấp tư sản', 'Mâu thuẫn giữa công nhân và nông dân với đế quốc và phong kiến', 'Mâu thuẫn giữa dân tộc Việt Nam với đế quốc xâm lược và tay sai của chúng ', 'D'),
('Đặc điểm ra đời của giai cấp công nhân Việt Nam như thế nào ?', '100006', 'Ra đời trước giai cấp tư sản, trong cuộc khai thác thuộc địa lần thứ nhất của thực dân Pháp.', 'Phần lớn xuất thân từ nông dân.', ' Chịu sự áp bức và bóc lột của đế quốc, phong kiến và tư sản', 'Cả a, b và c', 'B'),
('Những giai cấp bị trị ở Việt Nam dưới chế độ thuộc địa của đế quốc Pháp là:', '100007', ' Công nhân và nông dân', 'Công nhân, nông dân, tiểu tư sản ', 'Công nhân, nông dân, tiểu tư sản, tư sản dân tộc', 'Công nhân, nông dân, tiểu tư sản, tư sản dân tộc, địa chủ vừa và nhỏ', 'D'),
('Khi nào phong trào công nhân Việt Nam hoàn toàn trở thành một phong trào tự giác ?', '100008', 'Năm 1920 (tổ chức công hội ở Sài Gòn được thành lập)', 'Năm 1925(cuộc bãi công Ba Son)', 'Năm 1929 (sự ra đời ba tổ chức cộng sản)', 'Năm 1930(Đảng Cộng sản Việt Nam ra đời)', 'D'),
('Báo Đời sống công nhân là của tổ chức nào ?', '100009', 'Đảng Xã hội Pháp', 'Đảng Cộng sản Pháp', 'Tổng Liên đoàn Lao động Pháp ', 'Hội Liên hiệp thuộc địa', 'C'),
('Nguyễn ái Quốc lựa chọn con đường giải phóng dân tộc theo khuynh hướng chính trị vô sản vào thời gian nào ?', '100010', '1917', '1918', '1919', '1920', 'D');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quizs`
--
ALTER TABLE `quizs`
  ADD PRIMARY KEY (`questionId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
