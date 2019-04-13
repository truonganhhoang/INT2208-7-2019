-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 08, 2019 lúc 07:17 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `forum_tutorial`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) UNSIGNED NOT NULL,
  `category_title` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `category_title`) VALUES
(1, 'Grammar'),
(2, 'Vocabulary'),
(3, 'Pronounce'),
(4, 'Writing'),
(5, 'Listening'),
(6, 'Speaking'),
(7, 'Reading');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `replies`
--

CREATE TABLE `replies` (
  `reply_id` int(3) UNSIGNED NOT NULL,
  `category_id` int(3) UNSIGNED NOT NULL,
  `subcategory_id` int(3) UNSIGNED NOT NULL,
  `topic_id` int(3) UNSIGNED NOT NULL,
  `author` varchar(16) NOT NULL,
  `comment` text NOT NULL,
  `date_posted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `replies`
--

INSERT INTO `replies` (`reply_id`, `category_id`, `subcategory_id`, `topic_id`, `author`, `comment`, `date_posted`) VALUES
(1, 1, 1, 1, 'o0ovano0o', 'this is test', '2019-04-04 00:00:00'),
(3, 1, 1, 1, 'o0ovano0o', 'i want to reply', '2019-04-04 00:00:00'),
(4, 1, 1, 1, 'o0ovano0o', 'it is ok', '2019-04-06 00:00:00'),
(5, 1, 1, 3, 'o0ovano0o', 'wao', '2019-04-06 00:00:00'),
(6, 1, 1, 1, 'o0ovano0o', 'sÆ¡n tÃ¹ng mtp', '2019-04-08 00:00:00'),
(7, 1, 1, 1, 'o0ovano0o', 'welcome to my website', '2019-04-08 23:01:28'),
(8, 1, 3, 5, 'o0ovano0o', 'i dont wanna love ya', '2019-04-08 23:44:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategories`
--

CREATE TABLE `subcategories` (
  `subcat_id` int(3) UNSIGNED NOT NULL,
  `parent_id` int(3) UNSIGNED NOT NULL,
  `subcategory_title` varchar(128) NOT NULL,
  `subcategory_desc` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `subcategories`
--

INSERT INTO `subcategories` (`subcat_id`, `parent_id`, `subcategory_title`, `subcategory_desc`) VALUES
(1, 1, 'The Relative Clauses', 'As the name suggests, these clauses give essential information to define or identify the person or thing we are talking about. Obviously, this is only necessary if there is more than one person or thing involved.'),
(2, 1, 'Conditional Clauses', 'A conditional clause is a type of subordinate clause, most commonly introduced by the conjunction if or unless.  Like most subordinate clauses introduced by a conjunction, the conditional clause can either go before the main '),
(3, 1, 'The Passive Voice', 'The passive voice in English is composed of two elements : the appropriate form of the verb \'to be\' + the past participle of the verb in question'),
(4, 2, 'Word Stress', 'BASIC RULES of word stress'),
(5, 3, 'Word Stress', 'BASIC RULES of word stress');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(8) UNSIGNED NOT NULL,
  `category_id` int(3) UNSIGNED NOT NULL,
  `subcategory_id` int(3) UNSIGNED NOT NULL,
  `author` varchar(16) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `date_posted` datetime NOT NULL,
  `views` int(5) UNSIGNED NOT NULL,
  `replies` int(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `topics`
--

INSERT INTO `topics` (`topic_id`, `category_id`, `subcategory_id`, `author`, `title`, `content`, `date_posted`, `views`, `replies`) VALUES
(1, 1, 1, 'o0ovano0o', 'Topic 1', 'i dont know', '2019-04-04 00:00:00', 77, 0),
(2, 1, 2, 'o0ovano0o', 'Topic 2', 'test', '2019-04-04 00:00:00', 4, 0),
(3, 1, 1, 'o0ovano0o', 'Topic 2', 'I just want to say that you suck!!!', '2019-04-04 00:00:00', 14, 0),
(4, 2, 4, 'o0ovano0o', 'Topic AweSome', 'i like you', '2019-04-06 23:26:57', 0, 0),
(5, 1, 3, 'o0ovano0o', 'Topic AweSome', 'i don know', '2019-04-08 23:44:32', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(8) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `gmail` varchar(30) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `gmail`, `password`) VALUES
(1, 'van005618@gmail.', '', 'van123'),
(2, 'van005618@gmail.', '', 'van123'),
(3, 'o0ovano0o', '', 'van123'),
(4, 'dominan', '', 'min99');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id` (`subcategory_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Chỉ mục cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subcat_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `replies`
--
ALTER TABLE `replies`
  MODIFY `reply_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subcat_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`cat_id`),
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`subcat_id`),
  ADD CONSTRAINT `replies_ibfk_3` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`topic_id`);

--
-- Các ràng buộc cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`cat_id`);

--
-- Các ràng buộc cho bảng `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`cat_id`),
  ADD CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`subcat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
