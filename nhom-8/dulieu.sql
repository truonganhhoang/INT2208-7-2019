-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2019 at 01:09 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dulieu`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(50) NOT NULL,
  `username` varchar(250) COLLATE utf8_bin NOT NULL,
  `firstname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(50) COLLATE utf8_bin NOT NULL,
  `comment` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `debai`
--

CREATE TABLE `debai` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `link` text COLLATE utf8_bin NOT NULL,
  `mon` text COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `debai`
--

INSERT INTO `debai` (`id`, `name`, `link`, `mon`, `date`) VALUES
(1, 'Đề thi Toán THPT Quốc gia 2017', 'https://photo-2-baomoi.zadn.vn/w700_r1/17/06/22/229/22589305/1_261254.jpg', 'toan', '2019-05-02'),
(2, 'Đề thi chính thức môn Toán THPT quốc gia 2016', 'https://media.tinmoi.vn/2016/07/01/de-thi-mon-toan-thpt-quoc-gia-2016%201.jpg', 'toan', '2019-04-24'),
(3, 'ĐỀ THI VÀ ĐÁP ÁN MÔN TOÁN KÌ THI THPT QUỐC GIA 2015', 'http://luyenthidaminh.vn/uploads/news/dethidapan/thpt/toan/2015/de-toan-qg2015.jpg', 'toan', '2019-04-17'),
(4, 'ĐỀ THI MÔN VĂN KÌ THI THPT QUỐC GIA 2018', 'https://znews-photo.zadn.vn/w660/Uploaded/Ycgmvlbp/2018_06_24/de_van_Zing.jpg', 'van', '2019-05-03'),
(5, 'Đề thi thử THPT Quốc gia môn Văn 2018 - Chuyên Bắc Ninh lần 1', 'https://images.tuyensinh247.com/picture/2017/1028/de-thi-thu-van-chuyen-bac-ninh-result.jpg', 'van', '2019-04-29'),
(6, 'Đề thi môn Văn THPT quốc gia 2017', 'https://znews-photo.zadn.vn/w660/Uploaded/Ycgmvlbp/2017_06_21/2_zing.jpg', 'van', '2019-05-01'),
(8, 'Đề thi minh họa môn tiếng Anh kỳ thi THPT quốc gia 2018', 'http://f.imgs.vietnamnet.vn/2018/01/24/12/de-thi-minh-hoa-mon-toan-ky-thi-thpt-quoc-gia-2018.jpg', 'anh', '2019-05-03'),
(9, 'Đề thi thử THPT quốc gia 2018 môn Tiếng Anh THPT chuyên Sư phạm', 'http://static.ioe.goplay.vn/ioenews/VTCEdu/image/e-tap-chi/uploads/20186/41329fdf-fc09-450e-b44c-d8128388271d_2148_mon_anh_de_thi_thu_chuan_bi_ki_thi_THPT_QG_2018_THPT_chuyen_DHSP_Ha_Noi_TIENGANHTHPT_p1.jpg', 'anh', '2019-04-18'),
(10, 'Đề thi THPT Quốc Gia 2018 môn Anh', 'https://images.tuyensinh247.com/picture/2018/0626/1_28.jpg', 'anh', '2019-04-17'),
(11, 'Đề thi Vật lý THPT quốc gia 2018', 'https://znews-photo.zadn.vn/w660/Uploaded/Ycgmvlbp/2018_06_27/dia_ly_Zing_1.jpg', 'ly', '2019-05-02'),
(12, 'Đề thi thử môn Lý ôn thi THPT Quốc Gia 2018 lần ', 'https://blogvatly.com/wp-content/uploads/2017/11/2-de-thi-thu-mon-Vat-Ly-luyen-thi-THPT-Quoc-Gia-2018-lan-1png_Page1.png', 'ly', '2019-04-19'),
(13, 'Đề thi Vật lý chính thức THPT quốc gia 2017', 'https://znews-photo.zadn.vn/w660/Uploaded/jbvunte/2017_06_23/Vat_Ly_201page001.jpg', 'ly', '2019-04-23'),
(14, 'ĐỀ VÀ ĐÁP ÁN KỲ THI QUỐC GIA MÔN HÓA 2015', 'http://luyenthidaminh.vn/uploads/news/dethidapan/thpt/hoa/de-hoa-qg2015-01.jpg', 'hoa', '2019-05-02'),
(15, 'Đề thi THPT Quốc gia môn Hóa năm 2018 - Mã đề 209', 'https://img.toanhoc247.com/picture/2018/0626/hoa-1-result.jpg', 'hoa', '2019-05-22'),
(16, 'Đề thi thử THPT Quốc gia 2017 môn Hóa - THPT Chuyên Lương Thế Vinh', 'https://images.tuyensinh247.com/picture/article/2017/0417/hoa-luong-the-vinh1.jpg', 'hoa', '2019-04-26'),
(17, 'Đề thi minh họa môn Sinh học THPT quốc gia 2017', 'https://xmedia.nguoiduatin.vn/2016/10/5/9689/4de-mhsinhk17-1-page-001-1475670333.jpg', 'sinh', '2019-05-01'),
(18, 'Đề thi Sinh học THPT quốc gia 2017', 'https://media.kenhtuyensinh.vn/images/2017/de-sinh-1.jpg', 'sinh', '2019-04-27'),
(19, 'Đề thi Sinh học THPT quốc gia 2018', 'https://ttol.vietnamnetjsc.vn/images/2018/06/26/10/46/sinhoczING.jpg', 'sinh', '2019-04-26'),
(20, 'ĐỀ VÀ ĐÁP ÁN MÔN LỊCH SỬ KÌ THI THPT QUỐC GIA 2015', 'http://luyenthidaminh.vn/uploads/news/dethidapan/thpt/su/de-su-mhtn-2015.jpg', 'su', '2019-04-29'),
(21, 'Đề thi minh họa môn Sử THPT QG 2019', 'https://images.tuyensinh247.com/picture/2018/1206/mon-su-minh-hoa-1.jpg', 'su', '2019-04-26'),
(22, 'ĐỀ VÀ ĐÁP ÁN MÔN LỊCH SỬ KÌ THI THPT QUỐC GIA 2015', 'http://luyenthidaminh.vn/uploads/news/dethidapan/thpt/su/de-su-qg2015.jpg', 'su', '2019-05-02'),
(23, 'ĐỀ VÀ ĐÁP ÁN MÔN ĐỊA LÝ KÌ THI THPT QUỐC GIA 2015', 'http://luyenthidaminh.vn/uploads/news/dethidapan/thpt/dia/de-dia-qg2015.jpg', 'dia', '2019-04-02'),
(24, 'Đề thi thử THPT quốc gia 2018 môn Địa lý', 'https://media.tintucvietnam.vn/uploads/medias/2018/01/25/1024x1024/de-thi-thu-thpt-quoc-gia-2018-mon-dia-ly-bb-baaad88eF0.jpg?v=1516874778267', 'dia', '2019-04-10'),
(25, 'Đề thi môn Địa THPT Quốc gia 2017', 'https://images.tuyensinh247.com/picture/2017/0624/dia-301-2-result.jpg', 'dia', '2019-05-01'),
(26, 'Đề thi thử THPT quốc gia 2017 môn GDCD', 'http://storage.googleapis.com/littlezeros/media/1478847705388.jpg', 'gdcd', '2019-05-02'),
(27, 'Đề thi và đáp án môn GDCD THPT Quốc Gia 2018', 'https://dichvumobile.vn/wp-content/uploads/2018/06/1de-thi-va-dap-an-mon-gdcd-thpt-quoc-gia-2018.jpg', 'gdcd', '2019-04-17'),
(28, 'Đề thi minh họa THPT quốc gia 2017 môn GDCD', 'https://photo-1-baomoi.zadn.vn/w1000_r1/2017_05_14_30_22270683/00acf5c51d83f4ddad92.jpg', 'gdcd', '2019-04-16'),
(29, 'Đề thi tham khảo môn Tiếng Nhật kỳ thi THPT quốc gia 2017', 'http://a9.vietbao.vn/images/vn999/22/2017/05/20170514-de-thi-tham-khao-mon-tieng-nhat-ky-thi-thpt-quoc-gia-2017-1.jpg', 'nhat', '2019-05-02'),
(30, 'Đề thi và đáp án môn tiếng Nhật THPT quốc gia 2015', 'http://storage.googleapis.com/littlezeros/media/1467348719147.jpg', 'nhat', '2019-04-17'),
(31, 'Đề thi thử THPT quốc gia 2018 môn Tiếng Nhật', 'https://media.tintucvietnam.vn/uploads/medias/2018/01/27/1024x1024/de-thi-thu-thpt-quoc-gia-2018-mon-tieng-nhat-bb-baaacFEzKP.jpg?v=1517020355289', 'nhat', '2019-04-25'),
(32, 'Đề thi thử THPT quốc gia 2018 môn Tiếng Pháp', 'https://media.tintucvietnam.vn/uploads/medias/2018/01/26/1024x1024/de-thi-thu-thpt-quoc-gia-2018-mon-tieng-phap-bb-baaadDxIkV.jpg?v=1516959170723', 'phap', '2019-04-17'),
(33, 'Đề thi THPT quốc gia 2015 môn tiếng Pháp', 'http://storage.googleapis.com/littlezeros/media/1464857450005.jpg', 'phap', '2019-05-03'),
(34, 'Đề thi minh hoạ THPT Quốc gia năm 2019: Tiếng Pháp', 'https://kenh14cdn.com/2018/12/6/11detiengphapthamkhaok19-1-1544075227637207218513.jpg', 'phap', '2019-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `title` text COLLATE utf8_bin NOT NULL,
  `image` text COLLATE utf8_bin NOT NULL,
  `link` text COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`title`, `image`, `link`, `date`) VALUES
('Vì sao sinh viên được nâng điểm thi THPT quốc gia không bị đuổi học?', 'https://cdn.vietnammoi.vn/stores/news_dataimages/luannv/012018/07/08/in_article/4253_1_63932.jpg', 'https://news.zing.vn/vi-sao-sinh-vien-duoc-nang-diem-thi-thpt-quoc-gia-khong-bi-duoi-hoc-post935490.html', '2019-05-03'),
('Thi THPT quốc gia: Có thí sinh đăng ký 20 nguyện vọng', 'http://img.docbao.vn/images/w340/2019/04/13/vi-sao-sinh-vien-duoc-nang-diem-thi-thpt-quoc-gia-khong-bi-duoi-hoc.jpg', 'https://news.zing.vn/thi-thpt-quoc-gia-co-thi-sinh-dang-ky-20-nguyen-vong-post937917.html', '2019-04-28'),
('Bộ Công an sẽ có quy định đặc thù để hạn chế gian lận thi cử', 'https://znews-photo.zadn.vn/w660/Uploaded/Ycgmvlbp/2019_04_17/gian_lan_thi.jpg', 'https://news.zing.vn/bo-cong-an-se-co-quy-dinh-dac-thu-de-han-che-gian-lan-thi-cu-post936765.html', '2019-04-30'),
('Lịch thi THPT Quốc gia 2019 - Chính thức từ Bộ Giáo dục', 'http://kenh28.vn/wp-content/uploads/2019/04/nhieu-sinh-vien-dh-ngoai-thuong-kinh-te-quoc-dan-y-ha-noi-bi-duoi-hoc-do-duoc-sua-diem-thi-thpt-quoc-gia-2018-2.jpg', 'https://tin.tuyensinh247.com/lich-thi-thpt-quoc-gia-nam-2019-chi-tiet-bo-gd-c24a41718.html', '2019-04-29'),
('ĐH Quốc gia Hà Nội chính thức công bố phương án tuyển sinh năm 2019', 'https://image-us.24h.com.vn/upload/1-2019/images/2019-01-05/dH-Quoc-gia-Ha-Noi-chinh-thuc-cong-bo-phuong-an-tuyen-sinh-nam-2019-1-1546652929-870-width490height276.jpg', 'https://www.24h.com.vn/giao-duc-du-hoc/dh-quoc-gia-ha-noi-chinh-thuc-cong-bo-phuong-an-tuyen-sinh-nam-2019-c216a1018754.html', '2019-05-01'),
('Phương án tuyển sinh của khoa Quốc tế, Đại học Quốc gia Hà Nội 2019\r\n', 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BBRN59i.img?h=416&w=624&m=6&q=60&o=f&l=f&x=266&y=253', 'https://www.msn.com/vi-vn/news/techandscience/ph%C6%B0%C6%A1ng-%C3%A1n-tuy%E1%BB%83n-sinh-c%E1%BB%A7a-khoa-qu%E1%BB%91c-t%E1%BA%BF-%C4%91%E1%BA%A1i-h%E1%BB%8Dc-qu%E1%BB%91c-gia-h%C3%A0-n%E1%BB%99i-2019/ar-BBRN0Gw', '2019-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `firstname` varchar(100) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(100) COLLATE utf8_bin NOT NULL,
  `passwords` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `debai`
--
ALTER TABLE `debai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `debai`
--
ALTER TABLE `debai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
