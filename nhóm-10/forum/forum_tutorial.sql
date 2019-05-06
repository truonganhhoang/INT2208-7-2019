-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 15, 2019 lúc 06:32 AM
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
(1, 'Learn English'),
(2, 'Newsletter'),
(3, 'General Chat');

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
(9, 1, 1, 6, 'van1199', 'i don\'t comment to this post', '2019-04-09 23:18:11'),
(10, 1, 1, 6, 'van1199', 'jusst comment like a boss', '2019-04-10 22:49:52'),
(11, 1, 1, 6, 'van1199', 'this is a secret', '2019-04-10 22:51:34'),
(12, 1, 1, 6, 'van1199', 'comeent', '2019-04-10 22:53:30'),
(13, 1, 1, 6, 'van1199', 'completed', '2019-04-10 22:54:14'),
(14, 1, 1, 6, 'van1199', 'i want to comment', '2019-04-10 23:04:17');

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
(1, 1, 'Grammar', 'Irregular verbs? Reported speech? Passives? Where do we begin?.....Here!'),
(2, 1, 'Vocablury', 'Having problems with vocabulary? Tired of using the same words? Then let\'s learn some new ones together! Have your questions answered!'),
(3, 1, 'Listening', 'Not sure what you heard? Was it all a blur? Let\'s try and help you out.'),
(4, 1, 'Reading', 'Scanning? Reading for gist? Reading for detail? What did it say? How can we help?'),
(5, 1, 'Idioms', 'Are idioms \'not your cup of tea\'? Do they \'drive you nuts\'? Are they a \'labour of love\'? Let\'s talk about it!'),
(6, 1, 'Phrasal Verbs', 'Want to \'pick up\' some phrasal verbs? Need to \'brush up\' on some? Don\'t \'mess about\'! Come on!'),
(7, 2, 'Competitions', ''),
(8, 3, 'Hobbies and Interests\r\n', 'Movies? Music? Sport? Travel? Come in here to talk about what interests you.'),
(9, 3, 'Personal', 'Who are you? Introduce yourself and make some new English-speaking friends.'),
(10, 3, 'Discuss this site', 'Want to kiss us or do you want to kick us? Let us know what you think of our site!'),
(11, 1, 'Writing', 'Not sure what you write? Let\'s try and help you out.');

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
(6, 1, 1, 'van1199', 'Topic AweSome', 'this is awesome!!!!!', '2019-04-09 23:16:43', 77, 6),
(8, 1, 2, 'van1199', ' i want to ask ', 'omg i wantto The best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is to create it. â€“ Abraham LincolnThe best way to predict the future is ', '2019-04-10 22:49:18', 14, 0),
(10, 1, 5, 'van1199', ' i want to ask ', 'cwegregtrwh', '2019-04-11 00:43:58', 13, 0),
(12, 1, 3, 'van1199', ' i want to ask ', 'sdfsdgrmgrg', '2019-04-12 00:00:58', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(8) UNSIGNED NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(64) NOT NULL,
  `point` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `point`) VALUES
(1, 'UDict Admin', 'nhom10-xinhgai', 1000000),
(3, 'o0ovano0o', 'van123', 0),
(4, 'dominan', 'min99', 0),
(16, 'van1199', 'van123', 14),
(28, 'user1', 'user1', 0),
(29, 'user2', 'user2', 0),
(30, 'user3', 'user3', 0),
(31, 'user4', 'user4', 0),
(32, 'user5', 'user5', 0),
(34, 'user6', 'user6', 0),
(35, 'user7', 'user7', 0);

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
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `replies`
--
ALTER TABLE `replies`
  MODIFY `reply_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subcat_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
