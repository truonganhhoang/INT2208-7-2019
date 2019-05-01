-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 30, 2019 at 04:30 PM
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
-- Database: `quiz_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questionNumber` int(10) NOT NULL,
  `optionA` text NOT NULL,
  `optionB` text NOT NULL,
  `optionC` text NOT NULL,
  `optionD` text NOT NULL,
  `quizNumber` int(10) NOT NULL,
  `trueAnswer` text NOT NULL,
  `questionContent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`questionNumber`, `optionA`, `optionB`, `optionC`, `optionD`, `quizNumber`, `trueAnswer`, `questionContent`) VALUES
(100001, '1858-1884', '1884-1896', '1896-1913', '1914-1918', 1, 'C', 'Thời gian thực dân Pháp tiến hành khai thác thuộc địa lần thứ nhất ở Việt Nam khi nào?'),
(100002, 'Giai cấp tư sản', 'Giai cấp tư sản và công nhân', 'Giai cấp công nhân ', 'Giai cấp tiểu tư sản', 1, 'C', 'Trong đợt khai thác thuộc địa lần thứ nhất của thực dân Pháp ở nước ta có giai cấp mới nào được hình thành?'),
(100003, 'Địa chủ phong kiến và nông dân', 'Địa chủ phong kiến, nông dân, tư sản, tiểu tư sản và công nhân', 'Địa chủ phong kiến, nông dân và công nhân ', 'Địa chủ phong kiến, nông dân và tiểu tư sản', 1, 'C', 'Trước Chiến tranh thế giới thứ nhất, ở Việt Nam có những giai cấp nào?'),
(100004, 'Độc lập dân tộc ', 'Ruộng đất', 'Quyền bình đẳng nam, nữ', 'Được giảm tô, giảm tức', 1, 'A', 'Dưới chế độ thực dân phong kiến, giai cấp nông dân Việt Nam có yêu cầu bức thiết nhất là gì?'),
(100005, 'Mâu thuẫn giữa giai cấp nông dân với giai cấp địa chủ phong kiến', 'Mâu thuẫn giữa giai cấp công nhân với giai cấp tư sản', 'Mâu thuẫn giữa công nhân và nông dân với đế quốc và phong kiến', 'Mâu thuẫn giữa dân tộc Việt Nam với đế quốc xâm lược và tay sai của chúng ', 1, 'D', 'Mâu thuẫn cơ bản và chủ yếu ở Việt Nam đầu thế kỷ XX là mâu thuẫn nào?'),
(100006, 'Ra đời trước giai cấp tư sản, trong cuộc khai thác thuộc địa lần thứ nhất của thực dân Pháp.', 'Phần lớn xuất thân từ nông dân.', ' Chịu sự áp bức và bóc lột của đế quốc, phong kiến và tư sản', 'Cả a, b và c', 1, 'B', 'Đặc điểm ra đời của giai cấp công nhân Việt Nam như thế nào ?'),
(100007, ' Công nhân và nông dân', 'Công nhân, nông dân, tiểu tư sản ', 'Công nhân, nông dân, tiểu tư sản, tư sản dân tộc', 'Công nhân, nông dân, tiểu tư sản, tư sản dân tộc, địa chủ vừa và nhỏ', 1, 'D', 'Những giai cấp bị trị ở Việt Nam dưới chế độ thuộc địa của đế quốc Pháp là:'),
(100008, 'Năm 1920 (tổ chức công hội ở Sài Gòn được thành lập)', 'Năm 1925(cuộc bãi công Ba Son)', 'Năm 1929 (sự ra đời ba tổ chức cộng sản)', 'Năm 1930(Đảng Cộng sản Việt Nam ra đời)', 1, 'D', 'Khi nào phong trào công nhân Việt Nam hoàn toàn trở thành một phong trào tự giác ?'),
(100009, 'Đảng Xã hội Pháp', 'Đảng Cộng sản Pháp', 'Tổng Liên đoàn Lao động Pháp ', 'Hội Liên hiệp thuộc địa', 1, 'C', 'Báo Đời sống công nhân là của tổ chức nào ?'),
(100010, '1917', '1918', '1919', '1920', 1, 'D', 'Nguyễn ái Quốc lựa chọn con đường giải phóng dân tộc theo khuynh hướng chính trị vô sản vào thời gian nào ?');

-- --------------------------------------------------------

--
-- Table structure for table `quizs`
--

CREATE TABLE `quizs` (
  `quizNumber` int(6) NOT NULL,
  `catalogy` text NOT NULL,
  `language` text NOT NULL,
  `questionQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quizs`
--

INSERT INTO `quizs` (`quizNumber`, `catalogy`, `language`, `questionQuantity`) VALUES
(1, 'Revolutionary Line of the Communist Party of Vietnam.', 'Vietnamese', 10);

-- --------------------------------------------------------

--
-- Table structure for table `submit`
--

CREATE TABLE `submit` (
  `submitNumber` int(10) NOT NULL,
  `userNumber` int(10) NOT NULL,
  `quizNumber` int(10) NOT NULL,
  `submitDate` date NOT NULL,
  `totalScore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `submitdetail`
--

CREATE TABLE `submitdetail` (
  `submitNumber` int(10) NOT NULL,
  `questionNumber` int(10) NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userNumber` int(10) NOT NULL,
  `userName` text NOT NULL,
  `password` text NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `avatarLink` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userNumber`, `userName`, `password`, `firstName`, `lastName`, `avatarLink`) VALUES
(1, 'nhom-9', '123456', 'nhom-9', 'nhom-9', 'https://res.cloudinary.com/refind-inc/image/twitter_name/w_200,h_200,c_fill,q_auto,f_auto,d_refind:avatar.png/ismonkeyuser');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionNumber`),
  ADD KEY `r2_1` (`quizNumber`);

--
-- Indexes for table `quizs`
--
ALTER TABLE `quizs`
  ADD PRIMARY KEY (`quizNumber`);

--
-- Indexes for table `submit`
--
ALTER TABLE `submit`
  ADD PRIMARY KEY (`submitNumber`),
  ADD KEY `r1_1` (`quizNumber`),
  ADD KEY `r1_2` (`userNumber`);

--
-- Indexes for table `submitdetail`
--
ALTER TABLE `submitdetail`
  ADD PRIMARY KEY (`submitNumber`,`questionNumber`),
  ADD KEY `r3_1` (`questionNumber`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userNumber`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `r2_1` FOREIGN KEY (`quizNumber`) REFERENCES `quizs` (`quizNumber`);

--
-- Constraints for table `submit`
--
ALTER TABLE `submit`
  ADD CONSTRAINT `r1_1` FOREIGN KEY (`quizNumber`) REFERENCES `quizs` (`quizNumber`),
  ADD CONSTRAINT `r1_2` FOREIGN KEY (`userNumber`) REFERENCES `users` (`userNumber`);

--
-- Constraints for table `submitdetail`
--
ALTER TABLE `submitdetail`
  ADD CONSTRAINT `r3_1` FOREIGN KEY (`questionNumber`) REFERENCES `questions` (`questionNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
