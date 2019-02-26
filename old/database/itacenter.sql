-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th2 26, 2019 lúc 11:13 AM
-- Phiên bản máy phục vụ: 5.6.41-cll-lve
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webdepnh_atrang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Tin Tức', 'tin-tuc', '2018-06-07 10:31:30', '2018-06-07 10:31:30'),
(2, NULL, 2, 'Thông Báo', 'thong-bao', '2018-06-07 10:31:48', '2018-06-07 10:31:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `center_classes`
--

CREATE TABLE `center_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_code` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `school_year` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `regular_class_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `center_classes`
--

INSERT INTO `center_classes` (`id`, `class_code`, `school_year`, `created_at`, `updated_at`, `regular_class_type_id`) VALUES
(11, 'MOS1K3_06', '2018-2019', '2019-02-25 21:03:43', '2019-02-25 21:03:43', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `center_class_types`
--

CREATE TABLE `center_class_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `center_class_types`
--

INSERT INTO `center_class_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'MOS 1', '2018-06-30 20:20:27', '2018-06-30 20:20:27'),
(2, 'MOS 2', '2018-06-30 20:20:35', '2018-06-30 20:20:35'),
(3, 'Lớp luyện thi', '2019-02-25 19:53:59', '2019-02-25 19:53:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses_fronts`
--

CREATE TABLE `courses_fronts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `galleries` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `courses_fronts`
--

INSERT INTO `courses_fronts` (`id`, `name`, `description`, `image`, `icon`, `created_at`, `updated_at`, `body`, `galleries`) VALUES
(1, 'THIẾT KẾ THỜI TRANG NHÍ', 'Khóa học giúp cho các em thỏa mãn với ước mơ sáng tạo về thời trang. Với nội dung cô đọng, gần gũi, khóa học sẽ cung cấp kiến thức nền tảng, phát triển tính thẩm mỹ và tư duy thời trang để giúp các em thực hiện ước mơ sau này của mình.', 'courses-fronts/August2018/inxlD8aDKE29HBJhVjJz.png', 'courses-fronts/August2018/klG2rXRd4eiKBbZaQKxM.png', '2018-05-21 23:22:00', '2018-09-30 17:12:25', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"color: #000000;\"><strong><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif;\">TẠI SAO N&Ecirc;N THAM GIA KH&Oacute;A THIẾT KẾ THỜI TRANG NH&Iacute;?</span></strong></span></p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif; color: #000000;\">Khung giờ học linh hoạt, học vi&ecirc;n chủ động về thời gian</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif; color: #000000;\">Kh&ocirc;ng cần năng khiếu, chỉ cần y&ecirc;u th&iacute;ch thời trang</span></li>\r\n<li><span style=\"font-size: 10.5pt; line-height: 115%; font-family: Verdana, sans-serif; color: #000000;\">Phương ph&aacute;p dạy linh hoạt với từng dộ tuổi v&agrave; đối tượng</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span><strong><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif; color: #000000;\">Sau khi ho&agrave;n tất kh&oacute;a học, học vi&ecirc;n sẽ đạt được:</span></strong></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"color: #000000;\">Tư duy thẩm mỹ về thời trang</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif; color: #000000;\">Kỹ năng về h&igrave;nh họa: biết ph&aacute;c thảo dựng h&igrave;nh người mẫu, hiểu về bố cục, đường n&eacute;t, h&igrave;nh khối, đậm nhạt</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif; color: #000000;\">Kỹ năng về m&agrave;u sắc: c&aacute;ch pha m&agrave;u, phối m&agrave;u</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-family: Verdana, sans-serif; color: #000000;\">Kỹ năng sử dụng chất liệu v&agrave; phối hợp trang phục</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-family: Verdana, sans-serif; color: #000000;\">Thiết kế được trang phục cho b&uacute;p b&ecirc; Barbie</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"color: #000000;\"><strong><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif;\">ĐỐI TƯỢNG THAM GIA</span></strong></span></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif; color: #000000;\">Từ 6 tuổi trở l&ecirc;n</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif; color: #000000;\">Kh&ocirc;ng cần năng khiếu, chỉ cần y&ecirc;u th&iacute;ch m&ocirc;n học</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"color: #000000;\"><strong><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif;\">CHI TIẾT KH&Oacute;A HỌC</span></strong></span></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif; color: #000000;\">KH&Aacute;I QU&Aacute;T VỀ THỜI TRANG: Hiểu được c&aacute;c kh&aacute;i niệm cơ bản về thời trang, phong c&aacute;ch...</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif; color: #000000;\">C&Aacute;C PHƯƠNG PH&Aacute;P THIẾT KẾ: Vẽ khối cơ bản, ph&aacute;c thảo d&aacute;ng người</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif; color: #000000;\">PHA M&Agrave;U, PHỐI M&Agrave;U: Kỹ thuật pha m&agrave;u, trang tr&iacute;, vẽ c&aacute;ch điệu hoa l&aacute;, động vật...</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-family: Verdana, sans-serif; color: #000000;\">PH&Aacute;C THẢO THỜI TRANG: Ph&aacute;c thảo trang phục theo c&aacute;c phong c&aacute;ch, chủ đề, lứa tuổi...</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-family: Verdana, sans-serif; color: #000000;\">THỰC H&Agrave;NH TR&Ecirc;N GIẤY: Cắt mẫu người v&agrave; trang phục bằng giấy, kết hợp trang phục cho mẫu giấy</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-family: Verdana, sans-serif; color: #000000;\">THỰC H&Agrave;NH TR&Ecirc;N VẢI: Vẽ họa tiết tr&ecirc;n vải, thực h&agrave;nh cắt may</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-family: Verdana, sans-serif; color: #000000;\">PHỐI HỢP CHẤT LIỆU, PHỤ KIỆN: C&aacute;ch kết hợp c&aacute;c phụ liệu may, s&aacute;ng tạo c&aacute;c phụ kiện ph&ugrave; hợp với trang phục</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-family: Verdana, sans-serif; color: #000000;\">TR&Igrave;NH DIỄN: Tự thiết kế trang phục, phụ kiện cho m&igrave;nh v&agrave; tr&igrave;nh diễn</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span><strong><span style=\"font-size: 10.5pt; color: #000000;\">THỜI GIAN V&Agrave; HỌC PH&Iacute;:</span></strong></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif; color: #000000;\">THỜI GIAN: S&aacute;ng thứ 7 v&agrave; Chủ nhật, từ 8h30-10h</span></li>\r\n<li><span style=\"font-size: 10.5pt; color: #000000;\">HỌC PH&Iacute;: 680.000đ/ 15 buổi</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 14.2pt; line-height: 19.0pt; mso-pagination: none; layout-grid-mode: char;\"><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>', '[\"courses-fronts\\/October2018\\/SYBrfC14XISp9hor1WdM.JPG\",\"courses-fronts\\/October2018\\/vVWcK4QK9v0X2RVjetSn.jpg\",\"courses-fronts\\/October2018\\/ieLETHotRKOCjpso8Jjn.JPG\",\"courses-fronts\\/October2018\\/AI6UsaanWm3UGUjWbTfR.JPG\",\"courses-fronts\\/October2018\\/Mz0yJE41QIu3DwLmXOqp.JPG\",\"courses-fronts\\/October2018\\/0v1OnTyaYWrJQEpRYFaz.JPG\",\"courses-fronts\\/October2018\\/lmMy17AUzKm1TAgogqel.JPG\"]'),
(2, 'MỸ THUẬT CƠ BẢN', 'Khóa học mở ra một không gian cho các bé thư giãn, đầy hào hứng mỗi khi đến lớp. Đến với lớp học không chỉ là học mà còn là dịp để các bé khám phá bản thân qua từng nét vẽ, qua cách cảm nhận từng chất liệu, là nơi học hỏi, giao lưu đầy ắp tiếng cười...', 'courses-fronts/January2019/a0Y9q3SUe3shiFeUOH2L.png', 'courses-front/May2018/2pecldAGkE7AJdFGpFvB.png', '2018-05-22 00:51:00', '2019-01-06 20:36:46', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #444444;\">TẠI SAO N&Ecirc;N THAM GIA KH&Oacute;A HỘI HỌA THIẾU NHI?</span></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Khung giờ học linh hoạt, học vi&ecirc;n chủ động về thời gian</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Kh&ocirc;ng cần năng khiếu, chỉ cần c&oacute; sở th&iacute;ch, hứng th&uacute; với việc vẽ</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l4 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Phương ph&aacute;p dạy linh hoạt với từng dộ tuổi v&agrave; đối tượng</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #444444;\">Sau khi ho&agrave;n tất kh&oacute;a học, học vi&ecirc;n sẽ đạt được:</span></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l2 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Kỹ năng về h&igrave;nh họa: biết dựng h&igrave;nh, hiểu về bố cục, đường n&eacute;t, h&igrave;nh khối, đậm nhạt</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l2 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Kỹ năng về m&agrave;u sắc: c&aacute;ch pha m&agrave;u, phối m&agrave;u</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l2 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Nhận thức về chất liệu: ch&igrave;, m&agrave;u s&aacute;p, m&agrave;u nước, acrylic..., s&aacute;ng tạo trong vận dụng c&aacute;c chất liệu đa dạng</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l2 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Kỹ năng l&agrave;m thủ c&ocirc;ng với c&aacute;c chất liệu, loại h&igrave;nh đa dạng</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #444444;\">ĐỐI TƯỢNG THAM GIA</span></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l3 level1 lfo3; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Từ 4 tuổi trở l&ecirc;n</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l3 level1 lfo3; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Kh&ocirc;ng cần năng khiếu, chỉ cần y&ecirc;u th&iacute;ch m&ocirc;n học</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #444444;\">CHI TIẾT KH&Oacute;A HỌC</span></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo4; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">DỰNG H&Igrave;NH: Vẽ ch&igrave; v&agrave; l&ecirc;n mảng s&aacute;ng tối c&aacute;c khối cơ bản</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo4; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">PHA M&Agrave;U, PHỐI M&Agrave;U: vẽ tĩnh vật, tả thực hoa l&aacute;, c&acirc;y cỏ trong thi&ecirc;n nhi&ecirc;n</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo4; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">L&Agrave;M TRANH BẰNG CHẤT LIỆU: Kết hợp đa dạng chất liệu, kỹ thuật để tạo th&agrave;nh bức tranh đầy s&aacute;ng tạo</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo4; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">VẼ NGƯỜI: Ch&acirc;n dung, to&agrave;n th&acirc;n&nbsp;</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo4; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">THỦ C&Ocirc;NG: L&agrave;m vật trang tr&iacute; với nhiều chất liệu đa dạng: đinh, gỗ, vải, hoa l&aacute; kh&ocirc;....</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo4; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">VẼ TRANH PHONG CẢNH: T&igrave;m hiểu c&aacute;c nguy&ecirc;n tắc phối m&agrave;u, bố cục, s&aacute;ng t&aacute;c tranh...</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #444444;\">TH&Ograve;I GIAN V&Agrave; HỌC PH&Iacute;:</span></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l1 level1 lfo5; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">THỜI GIAN: S&aacute;ng thứ 7 v&agrave; Chủ nhật, từ 8h30-10h</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #444444;\">HỌC PH&Iacute;: 400.000đ/ 10 buổi</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #444444;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;550.000đ/ 15 buổi</span></p>', '[\"courses-fronts\\/October2018\\/xsQe7fJSrBae5HWRPq7N.jpg\",\"courses-fronts\\/October2018\\/qQpcLjAjUIKRGaSywwpT.jpg\",\"courses-fronts\\/October2018\\/j9ylOtq9yt7geVgnoR74.JPG\",\"courses-fronts\\/October2018\\/Zm42Iv5ZebSZ8mo6C0qe.JPG\",\"courses-fronts\\/October2018\\/PtHwbxcaC7lvYBEsob1Q.JPG\",\"courses-fronts\\/October2018\\/K4rE4G37GYHvyRkx0erV.JPG\",\"courses-fronts\\/October2018\\/mKiEs8GJbKafGJWsoIR3.JPG\"]'),
(3, 'LẬP TRÌNH WEB LÀNH NGHỀ', 'Khoá học cung cấp kiến thức, kỹ năng cần thiết và kinh nghiệm thực tế để xây dựng ứng dụng Web động.', 'courses-fronts/August2018/V9R8nvD3vtW1aOv4VzvO.jpg', 'courses-front/May2018/NCIEBU8hwELJuZ5npnl2.png', '2018-05-22 00:52:00', '2018-08-29 08:05:52', '<p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold;\">Mục ti&ecirc;u kh&oacute;a học lập tr&igrave;nh web với PHP &amp; MySQL:</span></p>\r\n<ul style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n<li style=\"box-sizing: border-box; padding: 0px 0px 6px; margin: 0px 0px 0px 20px; line-height: 20px;\">Cung cấp kiến thức về cơ sở dữ liệu MySQL.</li>\r\n<li style=\"box-sizing: border-box; padding: 0px 0px 6px; margin: 0px 0px 0px 20px; line-height: 20px;\">Cung cấp kiến thức, kỹ năng cần thiết v&agrave; kinh nghiệm thực tế để x&acirc;y dựng ứng dụng Web động tr&ecirc;n PHP c&oacute; truy xuất cơ sở dữ liệu MySQL.</li>\r\n<li style=\"box-sizing: border-box; padding: 0px 0px 6px; margin: 0px 0px 0px 20px; line-height: 20px;\">Cung cấp kiến thức cơ bản về Template Engine v&agrave; m&ocirc; h&igrave;nh MVC trong PHP.</li>\r\n<li style=\"box-sizing: border-box; padding: 0px 0px 6px; margin: 0px 0px 0px 20px; line-height: 20px;\">Chia sẻ kinh nghiệm bảo mật ứng dụng Web.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold;\">Cam Kết Chất Lượng Đ&agrave;o Tạo</span></p>\r\n<ul style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n<li style=\"box-sizing: border-box; padding: 0px 0px 6px; margin: 0px 0px 0px 20px; line-height: 20px;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #000000;\">Cam kết cho học vi&ecirc;n được học lại ho&agrave;n to&agrave;n&nbsp;</span><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #e53333;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold;\">MIỄN PH&Iacute;</span></span><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #000000;\">&nbsp;kh&oacute;a sau nếu khi kết th&uacute;c kh&oacute;a học m&agrave; học vi&ecirc;n chưa đạt được kết quả như mong muốn.&nbsp;</span><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: inherit; font-size: 18px; font-style: inherit; line-height: inherit; vertical-align: baseline; color: #006600;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: inherit; font-size: 18px; font-style: inherit; line-height: inherit; vertical-align: baseline; color: #006600;\">&nbsp;</span></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; font-family: Helvetica, Arial, sans-serif; font-size: 15px; vertical-align: baseline; color: #636b75; text-align: justify; display: inline !important;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: inherit; font-size: 12px; font-style: inherit; line-height: inherit; vertical-align: baseline; color: #000000;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: inherit; font-style: inherit; line-height: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: inherit; font-style: inherit; line-height: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: inherit; font-style: inherit; line-height: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; line-height: 24px;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; line-height: 21px;\">Ph&ograve;ng học&nbsp;<span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: #e53333;\">M&aacute;y&nbsp;Lạnh</span></span>, m&agrave;n h&igrave;nh LCD, m&aacute;y cấu h&igrave;nh mạnh, đầy đủ trang thiết bị phục vụ học tập.</span></span></span></span></span></span></p>\r\n</li>\r\n<li style=\"box-sizing: border-box; padding: 0px 0px 6px; margin: 0px 0px 0px 20px; line-height: 20px;\"><u style=\"box-sizing: border-box; padding: 0px; margin: 0px;\">Ưu đ&atilde;i học ph&iacute;</u>: Khi đăng k&yacute; 2 m&ocirc;n học c&ugrave;ng l&uacute;c học vi&ecirc;n sẽ được&nbsp;<span style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: red;\">GIẢM 10%</span>&nbsp;học ph&iacute; cho một m&ocirc;n học c&oacute; học ph&iacute; cao hơn.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold;\">Thời gian &amp; Học ph&iacute;</span></p>\r\n<ul style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n<li style=\"box-sizing: border-box; padding: 0px 0px 6px; margin: 0px 0px 0px 20px; line-height: 20px;\">Thời gian học: mỗi tuần 3 buổi, mỗi buổi 3 tiết, học li&ecirc;n tục trong v&ograve;ng 4 th&aacute;ng.</li>\r\n<li style=\"box-sizing: border-box; padding: 0px 0px 6px; margin: 0px 0px 0px 20px; line-height: 20px;\">Tổng số tiết: 144 tiết học trực tiếp trong ph&ograve;ng m&aacute;y.</li>\r\n<li style=\"box-sizing: border-box; padding: 0px 0px 6px; margin: 0px 0px 0px 20px; line-height: 20px;\">Học ph&iacute;: 3.500.000&nbsp;đồng</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold;\">Đối tượng học:</span></p>\r\n<ul style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n<li style=\"box-sizing: border-box; padding: 0px 0px 6px; margin: 0px 0px 0px 20px; line-height: 20px;\">Học vi&ecirc;n đ&atilde; học qua lớp \"Kỹ thuật lập tr&igrave;nh PHP\" hoặc c&oacute; kiến thức tương đương.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; text-align: center;\"><img style=\"box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; vertical-align: middle; max-width: 100%;\" title=\"Lập tr&igrave;nh web với php v&agrave; mysql\" src=\"http://key.com.vn/upload/article/contents/lap-trinh-web-voi-php-mysql-1.png\" alt=\"Lập tr&igrave;nh web với php v&agrave; mysql\" /></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold;\">Nội dung kh&oacute;a học:</span></p>\r\n<p><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Phần 1 &ndash; 72 tiết: Lập tr&igrave;nh ứng dụng quản l&yacute; tr&ecirc;n Web</span></p>\r\n<p>- Cơ sở dữ liệu MySQL<br />- Giới thiệu v&agrave; hướng dẫn sử dụng phpMyAdmin<br />- Thiết kế, x&acirc;y dựng cơ sở dữ liệu cho ứng dụng với MySQL<br />- Thao t&aacute;c truy vấn, cập nhật dữ liệu bằng ng&ocirc;n ngữ SQL.<br />- Backup, Restore cơ sở dữ liệu.<br />- Kết hợp PHP &amp; MySQL.<br />- Sử dụng thư viện mysql.<br />- Sử dụng thư viện PDO.<br />- Viết c&ocirc;ng cụ quản trị website (trang admin).<br />- Hiển thị, sắp xếp dữ liệu, &hellip;<br />- Thiết kế, x&acirc;y dựng c&aacute;c m&ocirc; h&igrave;nh v&agrave; chức năng c&oacute; thể sử dụng lại cho nhiều ứng dụng Web kh&aacute;c nhau.<br />- Kỹ thuật lưu tập trung c&aacute;c th&ocirc;ng tin cấu h&igrave;nh.<br />- C&aacute;c lớp, h&agrave;m hỗ trợ kết nối cơ sở dữ liệu.<br />- C&aacute;c lớp, h&agrave;m xử l&yacute; nghiệp vụ.</p>\r\n<p><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Phần 2 &ndash; 72 tiết: Đồ &aacute;n thực tế</span></p>\r\n<p>- Thiết kế v&agrave; sử dụng template.<br />- Tổ chức Website.<br />- Thiết kế v&agrave; xử l&yacute; c&aacute;c trang.<br />- Một số hướng dẫn cần thiết ngo&agrave;i chương tr&igrave;nh:<br />- T&iacute;ch hợp c&aacute;c bộ soạn thảo WYSIWYG th&acirc;n thiện với người d&ugrave;ng.<br />- Ứng dụng c&ocirc;ng nghệ Ajax với jQuery.<br />- Hỗ trợ trực tuyến với Yahoo Messenger hoặc Skype.<br />- Triển khai Upload ứng dụng Website l&ecirc;n Host.</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold;\">Kết quả đạt được sau kh&oacute;a học, học vi&ecirc;n sẽ c&oacute; khả năng:</span></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">- Sử dụng th&agrave;nh thạo ng&ocirc;n ngữ SQL để x&acirc;y dựng v&agrave; thao t&aacute;c tr&ecirc;n cơ sở dữ liệu MySQL.<br />- X&acirc;y dựng ho&agrave;n chỉnh ứng dụng Web với HTML, CSS, JavaScript, PHP &amp; MySQL.</p>', NULL),
(6, 'CHỨNG CHỈ MOS', 'Bài thi được thực hiện hiện trực tuyến, với hơn 25 ngôn ngữ được xây dựng và được Việt hóa bài thi.', 'courses-fronts/January2019/mgbAIKxfXThpoyjla8Cx.jpg', 'courses-front/May2018/eLAFeZnN2LWY8ErO4XPu.png', '2018-05-22 00:54:00', '2019-01-06 20:40:39', '<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\"><strong style=\"margin: 0px; padding: 0px;\">1. MOS l&agrave; g&igrave;?</strong></span></span></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\"><strong style=\"margin: 0px; padding: 0px;\">MOS: Microsoft Office&nbsp; Specialist</strong>&nbsp;&nbsp;l&agrave; b&agrave;i thi đ&aacute;nh gi&aacute; kỹ năng tin học văn ph&ograve;ng được sử dụng rộng r&atilde;i nhất tr&ecirc;n thế giới với hơn 1 triệu b&agrave;i thi được tổ chức h&agrave;ng năm.</span></span></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">B&agrave;i thi MOS được s&aacute;ng tạo bởi Microsoft&nbsp; v&agrave; triển khai bởi Certiport (Hoa Kỳ). B&agrave;i thi được thực hiện hiện trực tuyến, với hơn 25 ng&ocirc;n ngữ được x&acirc;y dựng v&agrave; được được Việt h&oacute;a b&agrave;i thi, gi&aacute;o tr&igrave;nh đ&atilde; được IIG Việt Nam bi&ecirc;n soạn dựa tr&ecirc;n thực tế tại Việt Nam.</span></span></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">MOS l&agrave; chứng chỉ duy nhất x&aacute;c nhận kỹ năng sử dụng phần mềm tin học văn ph&ograve;ng Microsoft Office v&agrave; do Microsoft trực tiếp cấp chứng chỉ.</span></span></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">C&aacute;c cấp độ của chứng chỉ MOS</span></span></p>\r\n<ul style=\"margin: 0px; padding: 0px 0px 0px 15px; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\">\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">&nbsp;Specialist: Chứng nhận kỹ năng cơ bản trong c&aacute;c sản phẩm Microsoft Office: Word, Excel, PowerPoint, Access, Outlook.</span></span></li>\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">&nbsp;Expert: Chứng nhận kỹ năng cao cấp trong Microsoft Word v&agrave; Microsoft Excel.</span></span></li>\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">&nbsp;Master: &nbsp;Chứng nhận kỹ năng tổng thể to&agrave;n diện cao cấp nhất trong sử dụng Microsoft Office. Y&ecirc;u cầu 4 b&agrave;i thi: Word Expert, Excel Expert, PowerPoint v&agrave; một trong 2 b&agrave;i thi: Outlook hoặc Access.</span></span></li>\r\n</ul>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">&nbsp;<br style=\"margin: 0px; padding: 0px;\" /><strong style=\"margin: 0px; padding: 0px;\">2. Thời gian l&agrave;m b&agrave;i thi</strong><br style=\"margin: 0px; padding: 0px;\" />Mỗi b&agrave;i thi 50 ph&uacute;t</span></span></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\"><strong style=\"margin: 0px; padding: 0px;\">3. Nội dung c&aacute;c b&agrave;i thi</strong></span></span></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">Chứng chỉ MOS do Microsoft ch&iacute;nh thức cấp cho c&aacute;c chương tr&igrave;nh tr&igrave;nh ứng dụng tin học văn ph&ograve;ng bao gồm</span></span></p>\r\n<ul style=\"margin: 0px; padding: 0px 0px 0px 15px; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\">\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">C&aacute;c b&agrave;i thi MOS 2010: Word&reg;2010,&nbsp;<span style=\"margin: 0px; padding: 0px;\">Excel&reg;&nbsp;</span>2010, PowerPoint&reg; 2010, Access&reg; 2010, Outlook&reg; 2010, SharePoint&reg; 2010, Word 2010 Expert, Excel&reg; 2010 Expert</span></span></li>\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">C&aacute;c b&agrave;i thi MOS 2013: Word&reg;2013, Excel&reg; 2013, PowerPoint&reg; 2013, Access&reg; 2013, Outlook&reg; 2013, Word 2013 Expert, Excel&reg; 2013 Expert</span></span></li>\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">C&aacute;c b&agrave;i thi MOS 2016: Word&reg;2016, Excel&reg; 2016, PowerPoint&reg; 2016, Access&reg; 2016, Outlook&reg; 2016, Word 2016 Expert, Excel&reg; 2016 Expert</span></span></li>\r\n</ul>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">&nbsp;<img style=\"margin: 0px auto; padding: 0px; border: 0px none; display: block;\" src=\"http://www.iigvietnam.com/userfiles/image/cac%20san%20pham/bai%20thi.png\" alt=\"\" border=\"0\" /></span></span></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\"><strong style=\"margin: 0px; padding: 0px;\">4. Lợi &iacute;ch của b&agrave;i thi MOS</strong></span></span></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">Được c&ocirc;ng nhận rộng r&atilde;i tr&ecirc;n thế giới, chứng chỉ MOS gi&uacute;p bạn chứng tỏ được năng lực một c&aacute;ch dễ d&agrave;ng. Cho d&ugrave; bạn đang t&igrave;m kiếm một c&ocirc;ng việc, một cơ hội thăng tiến trong sự nghiệp hay theo đuổi một mục ti&ecirc;u học tập, MOS l&agrave; c&ocirc;ng cụ hữu hiệu để bạn khẳng định bản th&acirc;n v&agrave; tiến xa hơn trong m&ocirc;i trường học tập v&agrave; l&agrave;m việc cạnh tranh.&nbsp;</span></span></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\"><strong style=\"margin: 0px; padding: 0px;\">*Đối với người t&igrave;m việc</strong></span></span></p>\r\n<ul style=\"margin: 0px; padding: 0px 0px 0px 15px; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\">\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">MOS gi&uacute;p bạn nổi bật để gi&agrave;nh được c&ocirc;ng việc m&agrave; bạn mong muốn. Một nghi&ecirc;n cứu cho thấy c&aacute;c ứng vi&ecirc;n c&oacute; chứng chỉ MOS kh&ocirc;ng những t&igrave;m được c&ocirc;ng việc nhanh hơn m&agrave; thu nhập của họ cũng cao hơn khoảng 12% so với những người kh&ocirc;ng c&oacute; chứng chỉ n&agrave;y</span></span></li>\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">MOS l&agrave; chứng nhận r&otilde; r&agrave;ng nhất cho việc bạn đ&atilde; được đ&agrave;o tạo th&agrave;nh thạo về chương tr&igrave;nh tin học văn ph&ograve;ng của Microsoft.</span></span></li>\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">Đối với những người đang t&igrave;m kiếm cơ hội thăng tiến</span></span></li>\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">Tăng mức lương k&igrave; vọng. Nghi&ecirc;n cứu cho thấy 82% số người sở hữu MOS đạt được mức lương cao hơn so với trước khi c&oacute; chứng chỉ n&agrave;y.</span></span></li>\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">Khẳng định vị thế ti&ecirc;n phong trong c&ocirc;ng ty như một chuy&ecirc;n gia tin học văn ph&ograve;ng.</span></span></li>\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">Mang lại nhiều cơ hội nghề nghiệp. 88% c&aacute;c nh&agrave; quản l&yacute; cho rằng những nh&acirc;n vi&ecirc;n sở hữu chứng chỉ MOS sẽ c&oacute; lợi thế hơn trong việc tuyển dụng v&agrave; đề bạt, điều n&agrave;y cũng đồng nghĩa với sự gia tăng của mức lương v&agrave; sự t&ocirc;n trọng từ ph&iacute;a c&aacute;c đồng nghiệp kh&aacute;c.</span></span></li>\r\n</ul>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\"><strong style=\"margin: 0px; padding: 0px;\">*Đối với sinh vi&ecirc;n</strong></span></span></p>\r\n<ul style=\"margin: 0px; padding: 0px 0px 0px 15px; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\">\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">MOS l&agrave; chứng chỉ đ&aacute;nh gi&aacute; kỹ năng nghệ nghiệp được c&ocirc;ng nhận tr&ecirc;n to&agrave;n cầu</span></span></li>\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">Chứng minh được năng lực sử dụng m&aacute;y t&iacute;nh đặc biệt trong mội trường l&agrave;m việc</span></span></li>\r\n</ul>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\"><strong style=\"margin: 0px; padding: 0px;\">5. Thời hạn</strong>&nbsp;<br style=\"margin: 0px; padding: 0px;\" /></span></span></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Chứng chỉ MOS c&oacute; gi&aacute; trị v&ocirc; thời hạn ( gi&aacute; trị trọn đời)</span></span><strong style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\" /></strong></span></span></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\"><strong style=\"margin: 0px; padding: 0px;\">6. Chứng chỉ</strong></span></span></p>\r\n<ul style=\"margin: 0px; padding: 0px 0px 0px 15px; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\">\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">Th&iacute; sinh ho&agrave;n th&agrave;nh b&agrave;i thi n&agrave;o sẽ c&oacute; chứng chỉ của b&agrave;i thi đ&oacute; (Specialist)</span></span></li>\r\n</ul>\r\n<ul style=\"margin: 0px; padding: 0px 0px 0px 15px; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\">\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">&nbsp;Ngay sau khi ho&agrave;n th&agrave;nh b&agrave;i thi, th&iacute; sinh sẽ biết điểm v&agrave; c&oacute; thể tải về chứng chỉ online tr&ecirc;n website:&nbsp;</span></span><span style=\"margin: 0px; padding: 0px; color: #0000ff;\"><a style=\"margin: 0px; padding: 0px; color: #0000ff; text-decoration-line: none;\" href=\"http://www.certiport.com/\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">www.certiport.com</span></span></a></span><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">&nbsp;c&oacute; m&atilde; x&aacute;c nhận.</span></span></li>\r\n<li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\">Mẫu chứng chỉ tham khảo</span></span></li>\r\n</ul>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\"><span style=\"margin: 0px; padding: 0px; font-size: small;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\"><img style=\"margin: 0px auto; padding: 0px; border: 0px none; display: block;\" src=\"http://www.iigvietnam.com/images/anh/MOS%20Certi.jpg\" width=\"550\" border=\"0\" /></span></span></p>\r\n<p>&nbsp;</p>', NULL),
(7, 'LẬP TRÌNH WEB CƠ BẢN PHP', 'Kiến thức nền tảng và kỹ năng cơ bản về thiết kế web và lập trình web mã nguồn mở PHP.', 'courses-fronts/January2019/hra7H2MdDBzRSBnAXySD.jpg', 'courses-fronts/August2018/z8Af3iQlmTOP9GleJsZm.png', '2018-08-02 19:04:00', '2019-01-06 20:41:44', '<p><strong>SẼ RẤT HỮU &Iacute;CH NẾU BẠN L&Agrave;:</strong></p>\r\n<p>Học sinh, sinh vi&ecirc;n, người đ&atilde; đi l&agrave;m&hellip; y&ecirc;u th&iacute;ch CNTT đ&atilde; c&oacute; kiến thức cơ bản về Tin học văn ph&ograve;ng v&agrave; sử dụng Internet.</p>\r\n<p><strong>BẠN SẼ NHẬN ĐƯỢC G&Igrave; QUA KH&Oacute;A HỌC?</strong></p>\r\n<p>Sau khi ho&agrave;n th&agrave;nh kh&oacute;a học, bạn sẽ c&oacute; khả năng:</p>\r\n<p style=\"padding-left: 30px;\">- Ph&acirc;n t&iacute;ch bố cục của website<br />- Sử dụng HTML v&agrave; CSS để tạo layout v&agrave; style chung<br />- Sử dụng HTML5 &amp; CSS3 trong thiết kế trang web<br />- Ho&agrave;n chỉnh Web layout<br />- &Aacute;p dụng c&aacute;c kiến thức cơ bản về lập tr&igrave;nh PHP trong việc giải quyết c&aacute;c b&agrave;i to&aacute;n đơn giản.</p>\r\n<p><strong>KHOẢN ĐẦU TƯ D&Agrave;NH CHO KH&Oacute;A HỌC:</strong></p>\r\n<p style=\"padding-left: 30px;\">- 5 tuần, 3 giờ x 2-3 buổi/ tuần<br />- Tổng số giờ: 30 giờ Học ph&iacute;: 1.200.000 đồng</p>\r\n<p><strong>CHƯƠNG TR&Igrave;NH HỌC:</strong></p>\r\n<p style=\"padding-left: 30px;\">- Tổng quan về lập tr&igrave;nh Web<br />- Tổng quan, m&ocirc;i trường l&agrave;m việc HTML<br />- X&acirc;y dựng trang web với HTML<br />- C&aacute;c tag cơ bản<br />- Định dạng trang HTML<br />- Định dạng văn bản, hiển thị c&aacute;c k&yacute; tự đặc biệt thường d&ugrave;ng<br />- H&igrave;nh ảnh, danh s&aacute;ch, li&ecirc;n kết Bảng biểu<br />- X&acirc;y dựng trang với web HTML5<br />- Cấu tr&uacute;c cơ bản HTML5 C&aacute;c t&iacute;nh năng mới Thẻ form<br />- Sử dụng CSS trong trang web<br />- C&aacute;c loại CSS Tạo v&agrave; sử dụng c&aacute;c CSS Một số style thường d&ugrave;ng<br />- Sử dụng CSS3 trong trang web<br />- Một số thuộc t&iacute;nh mới trong CSS3<br />- X&acirc;y dựng layout web<br />- Ph&acirc;n t&iacute;ch layout X&acirc;y dựng layout<br />- Tổng quan lập tr&igrave;nh PHP<br />- Giới thiệu Biến, hằng, to&aacute;n tử<br />- Phạm vi hoạt động của biến<br />- Tham chiếu Phạm vi hoạt động của biến<br />- Cấu tr&uacute;c điều kiện<br />- Cấu tr&uacute;c rẽ nh&aacute;nh if To&aacute;n tử ?: Cấu tr&uacute;c chọn lựa switch<br />- Cấu tr&uacute;c lặp for foreach while do &hellip; while<br />- Sử dụng break v&agrave; continue trong cấu tr&uacute;c lặp&nbsp;</p>\r\n<p><strong>LỊCH HỌC:</strong></p>\r\n<p style=\"padding-left: 30px;\">- Tối 2-4-6 hoặc 3-5-7 h&agrave;ng tuần (18h00 - 21h00)</p>', '[]');
INSERT INTO `courses_fronts` (`id`, `name`, `description`, `image`, `icon`, `created_at`, `updated_at`, `body`, `galleries`) VALUES
(9, 'WORKSHOP HỘI HỌA', 'Dành cho tất cả các bạn yêu thích nghệ thuật hội họa, mong muốn tìm hiểu và tự mình tạo ra những tác phẩm hội họa. Tại đây các bạn sẽ được hướng dẫn chi tiết để có thể học được những kỹ thuật hội họa cơ bản nhất để hoàn thiện một bức tranh.', 'courses-fronts/January2019/vweQW6aKor34ldQfli0g.jpg', 'courses-fronts/August2018/eHK9ydO3Xq16BjxVzikA.png', '2018-08-23 03:33:00', '2019-01-06 20:33:56', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #444444;\">TẠI SAO N&Ecirc;N THAM GIA KH&Oacute;A WORKSHOP VẼ CHO NGƯỜI LỚN?</span></strong></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Kh&ocirc;ng giới hạn đối tượng, d&ugrave; chưa cầm cọ vẽ bao giờ</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Gi&aacute;o vi&ecirc;n hướng dẫn chi tiết, tận t&igrave;nh từng bước</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Khơi dậy đam m&ecirc;, sự tự tin</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Đem lại gi&acirc;y ph&uacute;t thư gi&atilde;n</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Sau buổi học c&oacute; thể tạo ra một bức tranh ho&agrave;n chỉnh đem về</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #444444;\">ĐỐI TƯỢNG THAM GIA</span></strong></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l2 level1 lfo2; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Kh&ocirc;ng giới hạn đối tượng, từ 6 tuổi trở l&ecirc;n</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #444444;\">NỘI DUNG WORKSHOP</span></strong></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l1 level1 lfo3; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Trong v&ograve;ng 3 tiếng đồng hồ, gi&aacute;o vi&ecirc;n sẽ hướng dẫn vẽ một t&aacute;c phẩm hội họa c&oacute; sẵn hoặc học vi&ecirc;n tự s&aacute;ng t&aacute;c.</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l1 level1 lfo3; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Học vi&ecirc;n được hướng dẫn c&aacute;ch dựng h&igrave;nh, c&aacute;ch pha m&agrave;u, đi n&eacute;t cọ...</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l1 level1 lfo3; tab-stops: list .5in;\"><span style=\"font-family: Verdana, sans-serif;\">Vật liệu: m&agrave;u acrylic, toan</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #444444;\">THỜI GIAN V&Agrave; HỌC PH&Iacute;:</span></strong></p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l3 level1 lfo4; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Thời gian: 3-4 tiếng</span></li>\r\n<li class=\"MsoNormal\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l3 level1 lfo4; tab-stops: list .5in;\"><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">Học ph&iacute;: 350.000đ/ buổi, bao gồm tất cả dụng cụ. Học vi&ecirc;n kh&ocirc;ng phải đem g&igrave; đến lớp.</span></li>\r\n</ul>', '[\"courses-fronts\\/October2018\\/3YjHErCed5Rhd6SwIE3v.png\",\"courses-fronts\\/October2018\\/ni9RXFo7pcLj5CvyTWC3.jpg\",\"courses-fronts\\/October2018\\/kTMybhVPtTONQQ5Kdz2N.jpg\",\"courses-fronts\\/October2018\\/3n1Kx5VmTgCKXjFt00Rq.jpg\",\"courses-fronts\\/October2018\\/gsLffo93a98tP7UhHTP0.jpg\"]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '{}', 7),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 11),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 4),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '{}', 5),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '{}', 6),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 8),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 9),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 10),
(63, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(64, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(65, 8, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, NULL, 5),
(66, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 3),
(67, 8, 'icon', 'image', 'Icon', 0, 1, 1, 1, 1, 1, NULL, 4),
(68, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 8),
(69, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(70, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(71, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(72, 9, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, NULL, 4),
(73, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 3),
(74, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(75, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(76, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(77, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(78, 10, 'testimonial', 'text_area', 'Testimonial', 1, 1, 1, 1, 1, 1, NULL, 3),
(79, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 4),
(80, 10, 'job', 'text', 'Job', 0, 1, 1, 1, 1, 1, NULL, 5),
(81, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(82, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(83, 8, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, NULL, 6),
(84, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(85, 11, 'mssv', 'text', 'Student Code', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"unique:students,mssv\"}}', 2),
(86, 11, 'fullname', 'text', 'Fullname', 1, 1, 1, 1, 1, 1, NULL, 3),
(87, 11, 'birthday', 'date', 'Birthday', 1, 0, 1, 1, 1, 1, NULL, 4),
(88, 11, 'regular_class_id', 'text', 'Regular Class Id', 1, 1, 1, 1, 1, 1, NULL, 7),
(89, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, NULL, 8),
(90, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(91, 12, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, NULL, 1),
(92, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(93, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(94, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(96, 11, 'has_certificate', 'select_dropdown', 'Has Certificate', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"No\",\"1\":\"Yes\"}}', 6),
(97, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(98, 13, 'class_code', 'text', 'Class Code (Name)', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"unique:center_classes,class_code\"}}', 2),
(100, 13, 'school_year', 'text', 'School Year (YYYY-YYYY)', 1, 1, 1, 1, 1, 1, NULL, 4),
(101, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, NULL, 6),
(102, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(103, 13, 'center_class_belongstomany_student_relationship', 'relationship', 'Students', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Student\",\"table\":\"students\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"mssv\",\"pivot_table\":\"students_center_classes\",\"pivot\":\"1\",\"taggable\":\"on\"}', 5),
(105, 11, 'student_belongsto_regular_class_relationship', 'relationship', 'Regular Class', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\RegularClass\",\"table\":\"regular_classes\",\"type\":\"belongsTo\",\"column\":\"regular_class_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(110, 16, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, NULL, 1),
(111, 16, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(112, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(113, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(114, 13, 'regular_class_type_id', 'text', 'Class Type', 1, 1, 1, 1, 1, 1, NULL, 8),
(115, 13, 'center_class_belongsto_center_class_type_relationship', 'relationship', 'Class Type', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CenterClassType\",\"table\":\"center_class_types\",\"type\":\"belongsTo\",\"column\":\"regular_class_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(116, 9, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, NULL, 5),
(117, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(118, 17, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(119, 17, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:galleries,slug\"}}', 3),
(120, 17, 'gallery', 'multiple_images', 'Gallery', 0, 1, 1, 1, 1, 1, NULL, 4),
(121, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 1, NULL, 5),
(122, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(123, 8, 'galleries', 'multiple_images', 'Galleries', 0, 1, 1, 1, 1, 1, NULL, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-04-28 07:37:26', '2018-05-25 22:05:00'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-04-28 07:37:27', '2018-05-25 08:23:00'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(8, 'courses_fronts', 'courses-fronts', 'Courses Front', 'Courses Fronts', NULL, 'App\\CoursesFront', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":\"id\"}', '2018-05-22 00:59:03', '2018-05-22 00:59:03'),
(9, 'services_fronts', 'services-fronts', 'Services Front', 'Services Fronts', 'voyager-brush', 'App\\ServicesFront', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":\"id\"}', '2018-05-23 02:14:37', '2018-05-23 02:14:37'),
(10, 'testimonials_fronts', 'testimonials-fronts', 'Testimonials Front', 'Testimonials Fronts', 'voyager-bubble-hear', 'App\\TestimonialsFront', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":\"id\"}', '2018-05-23 02:33:03', '2018-05-23 02:33:03'),
(11, 'students', 'students', 'Student', 'Students', 'voyager-study', 'App\\Student', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":\"id\"}', '2018-06-02 22:44:33', '2019-02-25 19:21:32'),
(12, 'regular_classes', 'regular-classes', 'Regular Class', 'Regular Classes', 'voyager-home', 'App\\RegularClass', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":\"id\"}', '2018-06-02 22:47:40', '2018-06-02 22:49:25'),
(13, 'center_classes', 'center-classes', 'Center Class', 'Center Classes', NULL, 'App\\CenterClass', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":\"id\"}', '2018-06-04 22:23:31', '2018-06-04 22:23:31'),
(16, 'center_class_types', 'center-class-types', 'Center Class Type', 'Center Class Types', 'voyager-study', 'App\\CenterClassType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-30 20:19:46', '2018-06-30 20:19:46'),
(17, 'galleries', 'galleries', 'Gallery', 'Galleries', 'voyager-images', 'App\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-07 02:06:59', '2018-08-07 02:06:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `slug`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Galleries for news page', 'galleries-for-news-page', '[\"galleries\\/August2018\\/YM5E636dCmZ0Qy2godV6.jpg\",\"galleries\\/August2018\\/OtRKi9hE4mvMXbZpsdII.jpg\",\"galleries\\/August2018\\/SSXsAoq683tVbDKPVeZv.jpg\",\"galleries\\/August2018\\/LRlBlz0CI3bH0aJfsGf0.jpg\",\"galleries\\/August2018\\/EylF4iX2wGiRugtk0tCQ.jpg\",\"galleries\\/August2018\\/EPpc1XhaS5mDBKCnBSQW.jpg\"]', '2018-08-07 02:07:55', '2018-08-12 07:06:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(2, 'frontend', '2018-05-02 09:40:26', '2018-05-02 09:40:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-04-28 07:37:26', '2018-04-28 07:37:26', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 9, '2018-04-28 07:37:26', '2018-08-07 00:59:24', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 8, '2018-04-28 07:37:26', '2018-08-07 00:59:24', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2018-04-28 07:37:26', '2018-08-07 00:59:20', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2018-04-28 07:37:26', '2018-08-07 00:59:20', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-04-28 07:37:26', '2018-08-07 00:58:53', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-04-28 07:37:26', '2018-08-07 00:59:00', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-04-28 07:37:26', '2018-08-07 00:59:00', 'voyager.compass.index', NULL),
(9, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2018-04-28 07:37:26', '2018-08-07 00:59:24', 'voyager.settings.index', NULL),
(10, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 23, 5, '2018-04-28 07:37:26', '2018-05-29 18:27:45', 'voyager.categories.index', NULL),
(11, 1, 'Posts', '', '_self', 'voyager-news', NULL, 23, 4, '2018-04-28 07:37:27', '2018-05-29 18:27:45', 'voyager.posts.index', NULL),
(12, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 10, '2018-04-28 07:37:27', '2018-08-07 00:59:24', 'voyager.pages.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 4, '2018-04-28 07:37:27', '2018-08-07 00:59:00', 'voyager.hooks', NULL),
(15, 2, 'Trang Chủ', '', '_self', NULL, '#000000', NULL, 1, '2018-05-02 09:41:23', '2018-07-29 02:35:19', 'frontend.pages.home', NULL),
(16, 2, 'Giới Thiệu', '', '_self', NULL, '#000000', NULL, 2, '2018-05-02 09:41:43', '2018-07-29 02:35:19', 'frontend.pages.about', NULL),
(17, 2, 'Khóa Học', '', '_self', NULL, '#000000', NULL, 3, '2018-05-02 09:41:57', '2018-07-29 02:35:19', 'frontend.pages.courses', NULL),
(18, 2, 'Tin Tức', '', '_self', NULL, '#000000', NULL, 5, '2018-05-02 09:42:11', '2018-07-29 02:35:22', 'frontend.pages.news', NULL),
(20, 2, 'Liên Hệ', '', '_self', NULL, '#000000', NULL, 8, '2018-05-02 09:42:43', '2019-01-14 09:27:20', 'frontend.pages.contact', NULL),
(22, 1, 'Courses', '', '_self', 'voyager-study', '#000000', 23, 1, '2018-05-22 00:59:03', '2018-05-22 04:02:31', 'voyager.courses-fronts.index', 'null'),
(23, 1, 'Custom Site', '', '_self', 'voyager-tv', '#000000', NULL, 2, '2018-05-22 04:01:16', '2018-08-07 00:58:53', NULL, ''),
(24, 1, 'Services', '', '_self', 'voyager-brush', '#000000', 23, 2, '2018-05-23 02:14:37', '2018-05-23 02:15:10', 'voyager.services-fronts.index', 'null'),
(25, 1, 'Testimonials', '', '_self', 'voyager-bubble-hear', '#000000', 23, 3, '2018-05-23 02:33:03', '2018-05-23 02:33:19', 'voyager.testimonials-fronts.index', 'null'),
(26, 1, 'Center Data', '', '_self', 'voyager-data', '#000000', NULL, 3, '2018-06-02 21:32:22', '2018-08-07 00:59:03', NULL, ''),
(27, 1, 'Students', '', '_self', 'voyager-study', NULL, 26, 1, '2018-06-02 22:44:33', '2018-06-04 22:24:02', 'voyager.students.index', NULL),
(28, 1, 'Regular Classes', '', '_self', 'voyager-home', '#000000', 26, 4, '2018-06-02 22:47:40', '2018-06-30 20:48:08', 'voyager.regular-classes.index', 'null'),
(29, 1, 'Center Classes', '', '_self', 'voyager-company', '#000000', 26, 2, '2018-06-04 22:23:31', '2018-06-04 22:24:44', 'voyager.center-classes.index', 'null'),
(30, 1, 'Statistic', '', '_self', 'voyager-pie-chart', '#000000', NULL, 4, '2018-06-30 19:53:34', '2018-08-07 00:59:11', 'backend.statistic.index', 'null'),
(32, 1, 'Center Class Types', '', '_self', 'voyager-study', NULL, 26, 3, '2018-06-30 20:19:46', '2018-06-30 20:48:08', 'voyager.center-class-types.index', NULL),
(33, 2, 'Dịch vụ', '', '_self', NULL, '#000000', NULL, 4, '2018-07-29 02:35:05', '2018-07-29 02:35:22', 'frontend.pages.services', NULL),
(34, 2, 'Qui trình', '', '_self', NULL, '#000000', NULL, 7, '2019-01-14 09:25:20', '2019-01-14 09:27:20', 'frontend.pages.rule', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2016_01_01_000000_create_pages_table', 2),
(28, '2016_01_01_000000_create_posts_table', 2),
(29, '2016_02_15_204651_create_categories_table', 2),
(30, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(2, 'browse_bread', NULL, '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(3, 'browse_database', NULL, '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(4, 'browse_media', NULL, '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(5, 'browse_compass', NULL, '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(6, 'browse_menus', 'menus', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(7, 'read_menus', 'menus', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(8, 'edit_menus', 'menus', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(9, 'add_menus', 'menus', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(10, 'delete_menus', 'menus', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(11, 'browse_roles', 'roles', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(12, 'read_roles', 'roles', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(13, 'edit_roles', 'roles', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(14, 'add_roles', 'roles', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(15, 'delete_roles', 'roles', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(16, 'browse_users', 'users', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(17, 'read_users', 'users', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(18, 'edit_users', 'users', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(19, 'add_users', 'users', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(20, 'delete_users', 'users', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(21, 'browse_settings', 'settings', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(22, 'read_settings', 'settings', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(23, 'edit_settings', 'settings', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(24, 'add_settings', 'settings', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(25, 'delete_settings', 'settings', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(26, 'browse_categories', 'categories', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(27, 'read_categories', 'categories', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(28, 'edit_categories', 'categories', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(29, 'add_categories', 'categories', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(30, 'delete_categories', 'categories', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(31, 'browse_posts', 'posts', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(32, 'read_posts', 'posts', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(33, 'edit_posts', 'posts', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(34, 'add_posts', 'posts', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(35, 'delete_posts', 'posts', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(36, 'browse_pages', 'pages', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(37, 'read_pages', 'pages', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(38, 'edit_pages', 'pages', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(39, 'add_pages', 'pages', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(40, 'delete_pages', 'pages', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(41, 'browse_hooks', NULL, '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(47, 'browse_courses_fronts', 'courses_fronts', '2018-05-22 00:59:03', '2018-05-22 00:59:03'),
(48, 'read_courses_fronts', 'courses_fronts', '2018-05-22 00:59:03', '2018-05-22 00:59:03'),
(49, 'edit_courses_fronts', 'courses_fronts', '2018-05-22 00:59:03', '2018-05-22 00:59:03'),
(50, 'add_courses_fronts', 'courses_fronts', '2018-05-22 00:59:03', '2018-05-22 00:59:03'),
(51, 'delete_courses_fronts', 'courses_fronts', '2018-05-22 00:59:03', '2018-05-22 00:59:03'),
(52, 'browse_services_fronts', 'services_fronts', '2018-05-23 02:14:37', '2018-05-23 02:14:37'),
(53, 'read_services_fronts', 'services_fronts', '2018-05-23 02:14:37', '2018-05-23 02:14:37'),
(54, 'edit_services_fronts', 'services_fronts', '2018-05-23 02:14:37', '2018-05-23 02:14:37'),
(55, 'add_services_fronts', 'services_fronts', '2018-05-23 02:14:37', '2018-05-23 02:14:37'),
(56, 'delete_services_fronts', 'services_fronts', '2018-05-23 02:14:37', '2018-05-23 02:14:37'),
(57, 'browse_testimonials_fronts', 'testimonials_fronts', '2018-05-23 02:33:03', '2018-05-23 02:33:03'),
(58, 'read_testimonials_fronts', 'testimonials_fronts', '2018-05-23 02:33:03', '2018-05-23 02:33:03'),
(59, 'edit_testimonials_fronts', 'testimonials_fronts', '2018-05-23 02:33:03', '2018-05-23 02:33:03'),
(60, 'add_testimonials_fronts', 'testimonials_fronts', '2018-05-23 02:33:03', '2018-05-23 02:33:03'),
(61, 'delete_testimonials_fronts', 'testimonials_fronts', '2018-05-23 02:33:03', '2018-05-23 02:33:03'),
(62, 'browse_students', 'students', '2018-06-02 22:44:33', '2018-06-02 22:44:33'),
(63, 'read_students', 'students', '2018-06-02 22:44:33', '2018-06-02 22:44:33'),
(64, 'edit_students', 'students', '2018-06-02 22:44:33', '2018-06-02 22:44:33'),
(65, 'add_students', 'students', '2018-06-02 22:44:33', '2018-06-02 22:44:33'),
(66, 'delete_students', 'students', '2018-06-02 22:44:33', '2018-06-02 22:44:33'),
(67, 'browse_regular_classes', 'regular_classes', '2018-06-02 22:47:40', '2018-06-02 22:47:40'),
(68, 'read_regular_classes', 'regular_classes', '2018-06-02 22:47:40', '2018-06-02 22:47:40'),
(69, 'edit_regular_classes', 'regular_classes', '2018-06-02 22:47:40', '2018-06-02 22:47:40'),
(70, 'add_regular_classes', 'regular_classes', '2018-06-02 22:47:40', '2018-06-02 22:47:40'),
(71, 'delete_regular_classes', 'regular_classes', '2018-06-02 22:47:40', '2018-06-02 22:47:40'),
(72, 'browse_center_classes', 'center_classes', '2018-06-04 22:23:31', '2018-06-04 22:23:31'),
(73, 'read_center_classes', 'center_classes', '2018-06-04 22:23:31', '2018-06-04 22:23:31'),
(74, 'edit_center_classes', 'center_classes', '2018-06-04 22:23:31', '2018-06-04 22:23:31'),
(75, 'add_center_classes', 'center_classes', '2018-06-04 22:23:31', '2018-06-04 22:23:31'),
(76, 'delete_center_classes', 'center_classes', '2018-06-04 22:23:31', '2018-06-04 22:23:31'),
(82, 'browse_center_class_types', 'center_class_types', '2018-06-30 20:19:46', '2018-06-30 20:19:46'),
(83, 'read_center_class_types', 'center_class_types', '2018-06-30 20:19:46', '2018-06-30 20:19:46'),
(84, 'edit_center_class_types', 'center_class_types', '2018-06-30 20:19:46', '2018-06-30 20:19:46'),
(85, 'add_center_class_types', 'center_class_types', '2018-06-30 20:19:46', '2018-06-30 20:19:46'),
(86, 'delete_center_class_types', 'center_class_types', '2018-06-30 20:19:46', '2018-06-30 20:19:46'),
(87, 'browse_galleries', 'galleries', '2018-08-07 02:06:59', '2018-08-07 02:06:59'),
(88, 'read_galleries', 'galleries', '2018-08-07 02:06:59', '2018-08-07 02:06:59'),
(89, 'edit_galleries', 'galleries', '2018-08-07 02:06:59', '2018-08-07 02:06:59'),
(90, 'add_galleries', 'galleries', '2018-08-07 02:06:59', '2018-08-07 02:06:59'),
(91, 'delete_galleries', 'galleries', '2018-08-07 02:06:59', '2018-08-07 02:06:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Triển khai Đề án đổi mới giáo dục áp chuẩn Tin học quốc tế IC3/ MOS', NULL, 'Sáng ngày 21/02/2017 tại thành phố Đà Nẵng, Tổ chức Giáo dục IIG Việt Nam ...', '<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\" align=\"center\"><span style=\"margin: 0px; padding: 0px; font-size: 12.16px;\">S&aacute;ng ng&agrave;y 21/02/2017 tại th&agrave;nh phố Đ&agrave; Nẵng, Tổ chức Gi&aacute;o dục IIG Việt Nam v&agrave; Hệ thống Gi&aacute;o dục Chất lượng cao Skyline đ&atilde; k&yacute; kết bi&ecirc;n bản ghi nhớ hợp t&aacute;c giữa hai b&ecirc;n về việc &aacute;p dụng chuẩn Tin học Quốc tế cho C&aacute;n bộ Gi&aacute;o vi&ecirc;n v&agrave; học sinh của hệ thống gi&aacute;o dục CLC Skyline.</span></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">Tới tham dự buổi lễ, về ph&iacute;a Ng&agrave;nh GD&amp;ĐT c&oacute; b&agrave; Trần Thị Th&uacute;y H&agrave; - Trưởng ph&ograve;ng Ph&ograve;ng GD&amp;ĐT quận Hải Ch&acirc;u; về ph&iacute;a Hệ thống Gi&aacute;o dục CLC Skyline c&oacute;&nbsp; b&agrave; L&ecirc; Thị Nam Phương - Chủ tịch Hội đồng quản trị c&ugrave;ng c&aacute;c c&aacute;n bộ quản l&yacute; v&agrave; gi&aacute;o vi&ecirc;n thuộc c&aacute;c trường trong Hệ thống; về ph&iacute;a Tổ chức Gi&aacute;o dục IIG Việt Nam c&oacute; &ocirc;ng Đo&agrave;n Hồng Nam - Chủ tịch HĐQT C&ocirc;ng Ty IIG Việt Nam-, &ocirc;ng T&ocirc;n Thất Duy -&nbsp; Gi&aacute;m đốc IIG Việt Nam chi nh&aacute;nh tại Đ&agrave; Nẵng v&agrave; c&aacute;n bộ, nh&acirc;n vi&ecirc;n IIG Việt Nam.</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">Trong bối cảnh to&agrave;n cầu h&oacute;a, Tin học l&agrave; c&ocirc;ng cụ kh&ocirc;ng thể thiếu để hội nhập với m&ocirc;i trường học tập v&agrave; l&agrave;m việc Quốc tế. Do vậy, y&ecirc;u cầu đặt ra l&agrave; l&agrave;m sao để n&acirc;ng cao chất lượng dạy v&agrave; học Tin học trong nh&agrave; trường? Đ&acirc;y cũng ch&iacute;nh l&agrave; một trong những mục ti&ecirc;u h&agrave;ng đầu m&agrave; Hệ thống Gi&aacute;o dục Chất lượng cao Sky-line hướng đến, nhằm trang bị kiến thức, kỹ năng cho học sinh tr&ecirc;n con đường hội nhập. Tr&ecirc;n cơ sở đ&oacute;, Skyline đ&atilde; hợp t&aacute;c với Tổ chức Gi&aacute;o dục IIG Việt Nam - Đại diện của Viện Khảo th&iacute; Gi&aacute;o dục Hoa Kỳ (ETS) - với gần 20 năm kinh nghiệm trong lĩnh vực gi&aacute;o dục v&agrave; khảo th&iacute; nhằm cung cấp giải ph&aacute;p tối ưu về đ&agrave;o tạo, n&acirc;ng cao chất lượng giảng dạy v&agrave; c&ocirc;ng cụ đ&aacute;nh gi&aacute; cho học sinh khi c&aacute;c em ho&agrave;n th&agrave;nh chương tr&igrave;nh cấp học để nhận được c&aacute;c chứng chỉ Tin học (IC3 SPARK; IC3 V&Agrave; MOS) theo chuẩn Quốc tế.</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\"><img style=\"margin: 0px auto; padding: 0px; border: 0px none; display: block;\" src=\"http://www.iigvietnam.com/images/anhtintuc/Skyline1a.jpg\" alt=\"\" border=\"0\" /></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\" align=\"center\"><em style=\"margin: 0px; padding: 0px;\">&Ocirc;ng Đo&agrave;n Hồng Nam, chủ tịch IIG Việt Nam ph&aacute;t biểu</em></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">Bi&ecirc;n bản ghi nhớ được k&yacute; kết tr&ecirc;n nguy&ecirc;n tắc đồng thuận, t&ocirc;n trọng lẫn nhau, hợp t&aacute;c để c&ugrave;ng ph&aacute;t triển, hướng tới trở th&agrave;nh đối t&aacute;c l&acirc;u d&agrave;i của cả hai b&ecirc;n.</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">Theo đ&oacute;, Skyline v&agrave; IIG hợp t&aacute;c triển khai c&aacute;c đề &aacute;n trong lĩnh vực Tin học, cụ thể như sau:</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">1. IIG Việt Nam sẽ phối hợp với Skyline tổ chức thi c&aacute;c chứng chỉ Tin học theo chuẩn quốc tế như: IC3 Spark, IC3 (Internet and Computing Core Certification), MOS (Microsoft Office Specialist).</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">2. Triển khai Đề &aacute;n &aacute;p dụng chuẩn Tin học cho học sinh v&agrave; C&aacute;n bộ gi&aacute;o vi&ecirc;n Skyline với một số nội dung ch&iacute;nh sau:</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\"><em style=\"margin: 0px; padding: 0px;\">a. Đối với học sinh</em>: Triển khai việc &aacute;p dụng c&aacute;c ti&ecirc;u chuẩn Tin học như sau:</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">- IC3 Spark cho học sinh Tiểu học từ lớp 3 đến lớp 5</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">- IC3 Spark bắt buộc cho học sinh THCS từ lớp 6 đến lớp 8</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">-&nbsp; IC3 bắt buộc cho học sinh THPT từ lớp 10 đến lớp 12.</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">- Triển khai việc &aacute;p dụng chuẩn MOS cho học sinh THPT c&aacute;c lớp n&acirc;ng cao.</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\"><em style=\"margin: 0px; padding: 0px;\">b. Đối với Gi&aacute;o vi&ecirc;n , nh&acirc;n vi&ecirc;n của Sky-line</em></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">- Tất cả gi&aacute;o vi&ecirc;n văn h&oacute;a v&agrave; c&aacute;n bộ- nh&acirc;n vi&ecirc;n được đ&agrave;o tạo kỹ năng v&agrave; chuẩn h&oacute;a theo chuẩn IC3 v&agrave; MOS Power Point.</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">- Tất cả gi&aacute;o vi&ecirc;n giảng dạy Tin học được tập huấn phương ph&aacute;p giảng dạy Tin học theo định hướng IC3 Spark, IC3, MOS.</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">Tổ chức Gi&aacute;o dục IIG Việt Nam sẽ cung cấp t&agrave;i liệu giảng dạy li&ecirc;n quan v&agrave; to&agrave;n bộ phần mềm &ocirc;n luyện để Sky-Line đưa v&agrave;o giảng dạy nhằm đạt kết quả tốt nhất trong việc chuẩn h&oacute;a tr&igrave;nh đ&ocirc; Tin học cho học sinh. Bắt đầu từ năm học 2017 &ndash; 2018, Sky-line c&ocirc;ng bố thực hiện giảng dạy theo chuẩn đầu ra về tr&igrave;nh độ Tin học, trong đ&oacute;, học sinh tốt nghiệp cấp THCS sẽ đạt chứng chỉ IC3 Spark; cấp THPT đạt IC3. Tất cả học sinh THCS v&agrave; THPT đều sẽ thi chứng chỉ tương ứng tr&igrave;nh độ v&agrave;o cuối học kỳ II (v&agrave;o Th&aacute;ng 4 h&agrave;ng năm, bắt đầu từ năm 2018).</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">&nbsp;<img style=\"margin: 0px auto; padding: 0px; border: 0px none; display: block;\" src=\"http://www.iigvietnam.com/images/anhtintuc/Skyline2a.jpg\" alt=\"\" border=\"0\" /></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\" align=\"center\"><em style=\"margin: 0px; padding: 0px;\">&Ocirc;ng Đo&agrave;n Hồng Nam- Chủ tịch IIG Việt Nam v&agrave; b&agrave; L&ecirc; Thị Nam Phương-</em>&nbsp;<em style=\"margin: 0px; padding: 0px;\">Chủ tịch Hội đồng quản trị Skyline c&ugrave;ng k&yacute; kết MOU.</em></p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">Lễ k&yacute; kết hợp t&aacute;c giữa IIG Việt Nam v&agrave; hệ thống gi&aacute;o dục Skyline l&agrave; bước ngoặt quan trọng trong việc mở rộng đ&agrave;o tạo Tin học cho học sinh c&aacute;c cấp đ&aacute;p ứng ti&ecirc;u chuẩn Quốc tế.Với sự hỗ trợ tối đa từ ph&iacute;a IIG Việt Nam,&nbsp; việc &aacute;p chuẩn Tin học Quốc tế trong nh&agrave; trường sẽ kh&ocirc;ng chỉ gi&uacute;p cho c&aacute;c thầy c&ocirc;, chuy&ecirc;n gia gi&aacute;o dục đ&aacute;nh gi&aacute; đ&uacute;ng năng lực học sinh, đổi mới v&agrave; cải thiện chất lượng dạy m&agrave; c&ograve;n gi&uacute;p cho c&aacute;c em học sinh được ph&aacute;t triển to&agrave;n diện, c&oacute; bước đệm vững chắc khi tham gia bất kỳ chương tr&igrave;nh đ&agrave;o tạo n&agrave;o trong v&agrave; ngo&agrave;i nước.&nbsp;&nbsp;</p>\r\n<p style=\"margin: 8px 0px; padding: 0px; line-height: 1.7em; color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12px;\">Nguồn: IIG Việt Nam</p>', 'posts/June2018/DJbNvhAFEFGBBYNkkLO3.jpg', 'trien-khai-de-an-doi-moi-giao-duc-ap-chuan-tin-hoc-quoc-te-ic3-mos', NULL, NULL, 'PUBLISHED', 0, '2018-06-07 10:33:41', '2018-08-02 19:44:13'),
(2, 1, 2, 'Mở lớp mos 1, mos 2, luyện mos tháng 8/2018', NULL, 'Trung tâm thông báo về việc mở các lớp mos 1, mos 2 và luyên thi mos vào đầu tháng 8', '<p>Trung t&acirc;m th&ocirc;ng b&aacute;o tới c&aacute;c bạn sinh vi&ecirc;n Ng&ocirc;n ngữ Anh v&agrave; Quản trị dịch vụ du lịch v&agrave; lữ h&agrave;nh về việc mở c&aacute;c lớp mos 1, mos 2 v&agrave; luy&ecirc;n thi mos v&agrave;o&nbsp;đầu th&aacute;ng 8 tới, cụ thể như sau:</p>\r\n<p><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">Thời gian đăng k&yacute;: từ ng&agrave;y ra th&ocirc;ng b&aacute;o tới hết ng&agrave;y 20/08/2018</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fe4/1/16/270f.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline; font-size: 0px; width: 0px; font-family: inherit;\">✏️</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">Thời gian học: bắt đầu v&agrave;o 23/08/2018</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fe4/1/16/270f.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline; font-size: 0px; width: 0px; font-family: inherit;\">✏️</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">Học phần:</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">- Mos 1</span><span class=\"text_exposed_show\" style=\"display: inline; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><br />- Mos 2<br />- Luyện thi mos word<br />- Luyện thi mos excel<br /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: inherit;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fe4/1/16/270f.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline; font-size: 0px; width: 0px; font-family: inherit;\">✏️</span></span>Đăng k&yacute; online tại:&nbsp;<a style=\"color: #365899; cursor: pointer; text-decoration-line: none; font-family: inherit;\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fbit.ly%2Fdkhocmos&amp;h=AT3b04EjjFrVvVfmxWgdMUCTFhnMmdorA0Cj1mVJK0Z3PhsEd3PyuNleazHo6L9HvJzcLPyAIL68gDWxiCVmw6ZZ-HdKA3P5AMABmtvEYVrNBseZCmN-KY5KiJOR48Cg2f2Wfiv_nPNbWKdISNoiD7bEtQ\" target=\"_blank\" rel=\"noopener nofollow\" data-ft=\"{&quot;tn&quot;:&quot;-U&quot;}\" data-lynx-mode=\"asynclazy\">http://bit.ly/dkhocmos</a><br /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: inherit;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fe4/1/16/270f.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline; font-size: 0px; width: 0px; font-family: inherit;\">✏️</span></span>Thời hạn nộp học ph&iacute; tới hết ng&agrave;y 20/08/2018<br /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: inherit;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f8d/1/16/1f621.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline; font-size: 0px; width: 0px; font-family: inherit;\">?</span></span>Lưu &yacute;: Đăng k&yacute; trực tuyến tại link ph&iacute;a tr&ecirc;n v&agrave; nộp học ph&iacute; tại trung t&acirc;m CNTT&amp;MTUD, số 01 Nguyễn Ch&aacute;nh, Nha Trang, Kh&aacute;nh ho&agrave;.<br />Mọi thắc mắc cần hỏi đ&aacute;p li&ecirc;n hệ trực tiếp qua facebook Trung t&acirc;m hoặc gọi trực tiếp tới 01632557270 (Thầy Kh&aacute;nh)</span></p>', 'posts/June2018/Pe0xB0tQuNeGXRD6VAOn.jpg', 'mo-lop-mos-1-mos-2-luyen-mos-thang-8-2018', NULL, NULL, 'PUBLISHED', 0, '2018-06-07 10:34:57', '2018-08-12 06:48:49'),
(3, 1, 2, 'Khuyến mãi mua tài khoản ôn thi gmetrix', NULL, 'Chương trình khuyến mãi tài khoản Gmetrix cho học viên ôn thi chứng chỉ quốc tế MOS', '<p style=\"margin: 0px 0px 6px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\">Để tạo điều kiện cho c&aacute;c bạn c&oacute; được kết quả cao trong đợt thi chứng chỉ MOS quốc tế sắp tới, Trung t&acirc;m mở đợt khuyến m&atilde;i mua t&agrave;i khoản gmetrix để &ocirc;n thi với gi&aacute; ưu đ&atilde;i như sau:<br />1. Mua 1 t&agrave;i khoản: 300k<br />2. Mua 5 đến 10 t&agrave;i khoản: 250k<br />3. Mua 10 đến 20 t&agrave;i khoản: 200k<br />4. Mua 20 đến 50 t&agrave;i khoản 100k<span class=\"text_exposed_show\" style=\"display: inline; font-family: inherit;\"><br />5. Mua tr&ecirc;n 50 t&agrave;i khoản li&ecirc;n hệ trực tiếp Trung t&acirc;m để c&oacute; gi&aacute; bất ngờ.</span></p>\r\n<div class=\"text_exposed_show\" style=\"display: inline; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\">\r\n<p style=\"margin: 0px 0px 6px; font-family: inherit;\">C&aacute;c bạn h&atilde;y nhanh tay tập hợp bạn b&egrave; v&agrave; gửi danh s&aacute;ch mua t&agrave;i khoản về Trung t&acirc;m để được mua với gi&aacute; ưu đ&atilde;i tr&ecirc;n.<br />Lưu &yacute;: C&oacute; thể gửi danh s&aacute;ch bằng file trực tiếp qua facebook trung t&acirc;m hoặc li&ecirc;n hệ trực tiếp thầy Kh&aacute;nh (01632 55 72 70)</p>\r\n</div>', 'posts/August2018/GhiS1gh47gfOtwhzPpLv.jpg', 'khuyen-mai-mua-tai-khoan-on-thi-gmetrix', NULL, NULL, 'PUBLISHED', 0, '2018-07-29 12:38:40', '2018-08-12 06:48:08'),
(4, 1, 1, 'Chứng chỉ tin học A, B, C được cấp sau 10/8/2016 sẽ không có hiệu lực', NULL, 'Một số thông tin về chứng chỉ MOS và hiệu lực của chứng chỉ Tin hoc văn phòng A, B, C.', '<h2 style=\"margin: 40px 0px 25px; padding: 0px 0px 10px; line-height: 1.4em; font-family: \'Source Sans Pro\'; font-weight: normal; color: #6b809d; font-size: 26px; border-bottom: 4px double #eeeeee; letter-spacing: 1px; clear: both; text-align: left;\"><span style=\"margin: 0px 0px 30px; padding: 0px; font-size: 12pt; font-family: arial, helvetica, sans-serif; color: #000000;\">Bắt đầu từ h&ocirc;m nay ngày 10/8/2016, Th&ocirc;ng tư li&ecirc;n tịch số 17/2016/TTLT-BGDĐT-BTTTT giữa B&ocirc;̣ Giáo dục &amp; Đào tạo với B&ocirc;̣ Th&ocirc;ng Tin Truy&ecirc;̀n Th&ocirc;ng quy định v&ecirc;̀ vi&ecirc;̣c thi, c&acirc;́p chứng chỉ c&ocirc;ng ngh&ecirc;̣ th&ocirc;ng tin chính thức có hi&ecirc;̣u lực.<br style=\"margin: 0px 0px 30px; padding: 0px;\" />N&ocirc;̣i dung th&ocirc;ng tư quy định dừng vi&ecirc;̣c đào tạo, thi và c&acirc;́p chứng chỉ Tin học A, B, C. Theo đ&oacute;, những chứng chỉ Tin học A, B, C được c&acirc;́p sau ngày 10.8 sẽ kh&ocirc;ng còn giá trị.</span></h2>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; color: #0d0d0d; font-family: Georgia, \'Times New Roman\', Times, serif; font-size: 13.6px; text-align: justify;\"><a style=\"margin: 0px 0px 30px; padding: 0px; text-decoration-line: none; outline: none; color: #525151;\" href=\"http://tinhocmos.edu.vn/wp-content/uploads/2016/08/chung-chi-tin-hoc-a-b-c-duoc-cap-sau-ngay-10-08-2016-se-khong-con-gia-tri.png\"><img class=\"aligncenter wp-image-4904 size-full\" style=\"margin: 0px auto 15px; padding: 0px; border: 0px; max-width: 100%; height: auto; box-sizing: border-box; text-align: center; display: block;\" title=\"Chứng chỉ tin học A, B, C được cấp sau ng&agrave;y 10/08/2016 sẽ kh&ocirc;ng c&ograve;n gi&aacute; trị\" src=\"http://tinhocmos.edu.vn/wp-content/uploads/2016/08/chung-chi-tin-hoc-a-b-c-duoc-cap-sau-ngay-10-08-2016-se-khong-con-gia-tri.png\" sizes=\"(max-width: 768px) 100vw, 768px\" srcset=\"http://tinhocmos.edu.vn/wp-content/uploads/2016/08/chung-chi-tin-hoc-a-b-c-duoc-cap-sau-ngay-10-08-2016-se-khong-con-gia-tri.png 768w, http://tinhocmos.edu.vn/wp-content/uploads/2016/08/chung-chi-tin-hoc-a-b-c-duoc-cap-sau-ngay-10-08-2016-se-khong-con-gia-tri-300x164.png 300w\" alt=\"chung-chi-tin-hoc-a-b-c-duoc-cap-sau-ngay-10-08-2016-se-khong-con-gia-tri\" width=\"768\" height=\"420\" /></a></p>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; color: #0d0d0d; font-family: Georgia, \'Times New Roman\', Times, serif; font-size: 13.6px; text-align: justify;\"><span style=\"margin: 0px 0px 30px; padding: 0px; font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Thay vào đó sẽ tri&ecirc;̉n khai đào taọ, thi và c&acirc;́p&nbsp;<span style=\"margin: 0px 0px 30px; padding: 0px; color: #0000ff;\"><strong style=\"margin: 0px 0px 30px; padding: 0px;\"><a style=\"margin: 0px 0px 30px; padding: 0px; text-decoration-line: none; outline: none; color: #0000ff;\" href=\"http://tinhocmos.edu.vn/khoa-hoc-tin-hoc-ic3-gs4/\">chứng chỉ chu&acirc;̉n sử dụng CNTT</a></strong></span>&nbsp;theo Th&ocirc;ng tư 03/2014/TT-BTTTT</span>.</p>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; color: #0d0d0d; font-family: Georgia, \'Times New Roman\', Times, serif; font-size: 13.6px; text-align: justify;\"><span style=\"margin: 0px 0px 30px; padding: 0px; font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><span style=\"margin: 0px 0px 30px; padding: 0px; color: #0000ff;\"><strong style=\"margin: 0px 0px 30px; padding: 0px;\"><a style=\"margin: 0px 0px 30px; padding: 0px; text-decoration-line: none; outline: none; color: #0000ff;\" href=\"http://tinhocmos.edu.vn/ve-chung-toi-thi-mos/\" target=\"_blank\" rel=\"noopener noreferrer\">Trung t&acirc;m tin học MOS</a></strong></span>, Viện Kinh tế v&agrave; Thương mại Quốc tế của Đại học Ngoại Thương H&agrave; Nội k&yacute; kết với IIG Việt Nam về việc sử dụng b&agrave;i thi MOS để đ&aacute;nh gi&aacute; Tin học cho học vi&ecirc;n.</span></p>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; color: #0d0d0d; font-family: Georgia, \'Times New Roman\', Times, serif; font-size: 13.6px; text-align: justify;\"><img class=\"aligncenter\" style=\"margin: 0px auto 15px; padding: 0px; border: 0px; max-width: 100%; height: auto; box-sizing: border-box; text-align: center; display: block;\" title=\"Chứng chỉ tin học A, B, C được cấp sau ng&agrave;y 10/08/2016 sẽ kh&ocirc;ng c&ograve;n gi&aacute; trị\" src=\"http://tinhocmos.edu.vn/wp-content/uploads/2015/06/iig-1024x753.jpg\" alt=\"trung-tam-tin-hoc-van-phong-mos\" width=\"1024\" height=\"753\" /></p>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; color: #0d0d0d; font-family: Georgia, \'Times New Roman\', Times, serif; font-size: 13.6px; text-align: justify;\"><strong style=\"margin: 0px 0px 30px; padding: 0px;\"><span style=\"margin: 0px 0px 30px; padding: 0px; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">C&ocirc;ng văn x&aacute;c nhận chứng chỉ IC3 ph&ugrave; hợp chuẩn CNTT theo&nbsp;th&ocirc;ng tư số 03/2014/TT-BTTTT; Th&ocirc;ng tư số 11/2014/TT-BNV tại Việt Nam (<a style=\"margin: 0px 0px 30px; padding: 0px; text-decoration-line: none; outline: none; color: #525151;\" href=\"https://drive.google.com/file/d/0B_1KLC6UUybVLW1WRHUtWFRwS2s/view?usp=sharing\" target=\"_blank\" rel=\"noopener noreferrer\">tại đ&acirc;y</a>)</span></strong></p>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; color: #0d0d0d; font-family: Georgia, \'Times New Roman\', Times, serif; font-size: 13.6px; text-align: justify;\"><a style=\"margin: 0px 0px 30px; padding: 0px; text-decoration-line: none; outline: none; color: #525151;\" href=\"http://tinhocmos.edu.vn/wp-content/uploads/2016/08/chung-chi-tin-hoc-a-b-c-duoc-cap-sau-ngay-10-08-2016-se-khong-con-gia-tri-2.png\"><img class=\"aligncenter wp-image-4911 size-large\" style=\"margin: 0px auto 15px; padding: 0px; border: 0px; max-width: 100%; height: auto; box-sizing: border-box; text-align: center; display: block;\" title=\"Chứng chỉ tin học A, B, C được cấp sau ng&agrave;y 10/08/2016 sẽ kh&ocirc;ng c&ograve;n gi&aacute; trị\" src=\"http://tinhocmos.edu.vn/wp-content/uploads/2016/08/chung-chi-tin-hoc-a-b-c-duoc-cap-sau-ngay-10-08-2016-se-khong-con-gia-tri-2-548x1024.png\" sizes=\"(max-width: 548px) 100vw, 548px\" srcset=\"http://tinhocmos.edu.vn/wp-content/uploads/2016/08/chung-chi-tin-hoc-a-b-c-duoc-cap-sau-ngay-10-08-2016-se-khong-con-gia-tri-2-548x1024.png 548w, http://tinhocmos.edu.vn/wp-content/uploads/2016/08/chung-chi-tin-hoc-a-b-c-duoc-cap-sau-ngay-10-08-2016-se-khong-con-gia-tri-2-161x300.png 161w, http://tinhocmos.edu.vn/wp-content/uploads/2016/08/chung-chi-tin-hoc-a-b-c-duoc-cap-sau-ngay-10-08-2016-se-khong-con-gia-tri-2.png 797w\" alt=\"chung-chi-tin-hoc-a-b-c-duoc-cap-sau-ngay-10-08-2016-se-khong-con-gia-tri-2\" width=\"548\" height=\"1024\" /></a></p>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; color: #0d0d0d; font-family: Georgia, \'Times New Roman\', Times, serif; font-size: 13.6px; text-align: justify;\">&nbsp;</p>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; color: #0d0d0d; font-family: Georgia, \'Times New Roman\', Times, serif; font-size: 13.6px; text-align: justify;\">&nbsp;</p>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; color: #0d0d0d; font-family: Georgia, \'Times New Roman\', Times, serif; font-size: 13.6px; text-align: justify;\"><span style=\"margin: 0px 0px 30px; padding: 0px; font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Xem chi tiết về th&ocirc;ng tư 17/2016/TTLT-BGDĐT-BTTTT tại link sau:</span><br style=\"margin: 0px 0px 30px; padding: 0px;\" /><span style=\"margin: 0px 0px 30px; padding: 0px; font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><a style=\"margin: 0px 0px 30px; padding: 0px; text-decoration-line: none; outline: none; color: #525151;\" href=\"http://pbc.moet.gov.vn/?page=1.9&amp;view=1331\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">http://pbc.moet.gov.vn/?page=1.9&amp;view=1331</a></span></p>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; color: #0d0d0d; font-family: Georgia, \'Times New Roman\', Times, serif; font-size: 13.6px; text-align: justify;\"><span style=\"margin: 0px 0px 30px; padding: 0px; font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Xem chi tiết về th&ocirc;ng tư 03/2014/TT-BTTTT:</span><br style=\"margin: 0px 0px 30px; padding: 0px;\" /><span style=\"margin: 0px 0px 30px; padding: 0px; font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><a style=\"margin: 0px 0px 30px; padding: 0px; text-decoration-line: none; outline: none; color: #525151;\" href=\"http://moj.gov.vn/vbpq/lists/vn%20bn%20php%20lut/view_detail.aspx?itemid=28959#Dieu_1\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">http://moj.gov.vn/vbpq/lists/vn%20bn%20php%20lut/view_detail.aspx?itemid=28959#Dieu_1</a></span></p>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; color: #0d0d0d; font-family: Georgia, \'Times New Roman\', Times, serif; font-size: 13.6px; text-align: justify;\"><span style=\"margin: 0px 0px 30px; padding: 0px; font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Đ&acirc;y l&agrave; c&acirc;u trả lời cho bạn n&agrave;o c&ograve;n băn khoăn giữa&nbsp;<em style=\"margin: 0px 0px 30px; padding: 0px;\">chứng chỉ tin học A, B, C</em>&nbsp;với&nbsp;<em style=\"margin: 0px 0px 30px; padding: 0px;\">chứng chỉ quốc tế IC3</em>&nbsp;nh&eacute;.</span></p>', 'posts/July2018/QVcf9xGP0mWA6lJk38fl.jpg', 'chung-chi-tin-hoc-a-b-c-d-oc-cap-sau-10-8-2016-se-khong-co-hieu-luc', NULL, NULL, 'PUBLISHED', 0, '2018-07-29 12:49:37', '2018-07-29 12:49:37'),
(5, 1, 2, 'Thông báo v/v tiếp tục đăng ký học mos 2 và nộp tiền học phí', NULL, 'Các bạn tiếp tục đăng ký mos 2 trong tháng 8/2018 để trung tâm chốt danh sách', '<p><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\"><strong>Th&ocirc;ng b&aacute;o</strong>: Thời gian c&ograve;n một tuần để c&aacute;c bạn đăng k&yacute; học lớp <strong>MOS 2</strong> trong 08/2018 tới, c&aacute;c bạn n&agrave;o muốn tham gia v&agrave;o 2 lớp n&agrave;y c&oacute; thể đăng k&yacute; tiếp, c&aacute;c bạn đ&atilde; đăng k&yacute; buổi kh&aacute;c nhưng c&aacute;c lớp đ&oacute; kh&ocirc;ng mở được cũng c&oacute; thể sắp xếp thời gian để đăng k&yacute; lại v&agrave;o 2 lớp n&agrave;y để học, cụ thể như sau:</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f1c/1/16/1f5b1.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline; font-size: 0px; width: 0px; font-family: inherit;\">?️</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">Thời gian học:</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Lớp MOS2_01: s&aacute;ng thứ 3 v&agrave; s&aacute;ng thứ 5 (7h00-10h20)</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Lớp MOS2_02: s&aacute;ng thứ 7 v&agrave; s&aacute;ng CN (7h00-10h20)</span><br style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\" /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f1c/1/16/1f5b1.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline; font-size: 0px; width: 0px; font-family: inherit;\">?️</span></span><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">Thời gian đăng k&yacute;: tới&nbsp;</span><span class=\"text_exposed_show\" style=\"display: inline; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\">hết ng&agrave;y 20/8/2018<br /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: inherit;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f1c/1/16/1f5b1.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline; font-size: 0px; width: 0px; font-family: inherit;\">?️</span></span>Học ph&iacute;: nộp tại Trung t&acirc;m CNTT&amp;MTUD tới hết ng&agrave;y 20/08/2018<br /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: inherit;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f1c/1/16/1f5b1.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline; font-size: 0px; width: 0px; font-family: inherit;\">?️</span></span>Đăng k&yacute; trực tuyến tại:&nbsp;<a style=\"color: #365899; cursor: pointer; font-family: inherit;\" href=\"https://bit.ly/dkhocmos\" target=\"_blank\" rel=\"noopener nofollow\" data-ft=\"{&quot;tn&quot;:&quot;-U&quot;}\" data-lynx-mode=\"asynclazy\" data-lynx-uri=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fbit.ly%2Fdkhocmos&amp;h=AT0UqG3PzbRW7v1Jm3iR34Uwoa_koGqSaZYToNyQDiQwdirS8j_yydAzmVmrdLNpT_2wUKlo0KjShd-yeptrpwKntGAjcuiP6ZbNvORnQOa8CGeA-yLm_VPDWHXUv6cSBWga7TBc7S8tB3ft9s0_VM7aRA\">http://bit.ly/dkhocmos</a><br />Lưu &yacute;: C&aacute;c bạn đ&atilde; đăng k&yacute; li&ecirc;n hệ trực tiếp tại trung t&acirc;m để nộp học ph&iacute; v&agrave; chốt danh s&aacute;ch lớp.</span></p>', 'posts/August2018/EeyMM9F4vndICj6jXq0V.jpg', 'thong-bao-v-v-tiep-tuc-d-ng-ky-hoc-mos-2-va-nop-tien-hoc-phi', NULL, NULL, 'PUBLISHED', 0, '2018-08-12 06:47:34', '2018-08-12 06:47:34'),
(6, 1, 2, 'Thông báo về lịch học MOS 2 đợt tháng 8/2018.', NULL, 'Theo dự kiến lịch học Trung tâm đã đưa ra khi đăng ký lớp mos 2 là bắt đầu học vào tuần sau (1-2/9/2018).', '<p>Theo dự kiến lịch học Trung t&acirc;m đ&atilde; đưa ra khi đăng k&yacute; lớp mos 2 l&agrave; bắt đầu học v&agrave;o tuần sau (1-2/9/2018). Nhưng v&igrave; thứ 7 v&agrave; chủ nhật tr&ugrave;ng ng&agrave;y nghỉ lễ Quốc Kh&aacute;nh (2-9) n&ecirc;n Trung t&acirc;m sẽ dời lịch học lại 1 tuần. Nay trung t&acirc;m CNTT&amp;MTUD th&ocirc;ng b&aacute;o đến c&aacute;c bạn sinh vi&ecirc;n đ&atilde; đăng k&yacute; v&agrave; đ&oacute;ng học ph&iacute; lớp mos 2 đợt th&aacute;ng 8 lịch học cụ thể như sau:</p>\r\n<p><strong>Thời gian bắt đầu học</strong>: 08/09/2018</p>\r\n<p><strong>Địa điểm</strong>: Ph&ograve;ng m&aacute;y 1 cơ sở 1</p>\r\n<p><strong>Tiết 1 đến tiết 4</strong> (7h00-10h20)</p>\r\n<p><strong>Học phần</strong>: MOS 2 (Excel 2010)</p>\r\n<p><strong>Lưu &yacute;</strong>: Mọi thắc mắc inbox facebook Trung t&acirc;m facebook/ttudcntt hoặc li&ecirc;n hệ trực tiếp thầy Kh&aacute;nh (0866.08.09.08)</p>', 'posts/August2018/EdKLEisj33ZI9giMlMFK.jpg', 'thong-bao-ve-lich-hoc-mos-2-dot-thang-8-2018', NULL, NULL, 'PUBLISHED', 0, '2018-08-20 17:29:18', '2018-08-20 17:31:38'),
(7, 5, 2, 'Thông báo mở lớp MOS 2, Luyện thi MOS đợt 1 năm học 2018-2019', NULL, 'Thông báo về việc mở lớp mos 2 và luyện thi mos để chuẩn bị cho đợt thi mos quốc tế vào tháng 11/2018', '<div class=\"f_vbkznkwxj u_vbkzngyqc clearfix\" style=\"margin-bottom: -1px; zoom: 1; font-family: Helvetica, Arial, sans-serif; color: #1d2129; font-size: 12px;\">&nbsp;</div>\r\n<div id=\"js_1dy\" class=\"_5pbx userContent _3576\" style=\"line-height: 1.38; margin-top: 6px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\" data-ft=\"{&quot;tn&quot;:&quot;K&quot;}\">\r\n<div class=\"text_exposed_root text_exposed\" style=\"display: inline; font-family: inherit;\">&nbsp;</div>\r\n<div id=\"id_5b7e1b75653751516164717\" class=\"text_exposed_root text_exposed\" style=\"display: inline; font-family: inherit;\"><br />TH&Ocirc;NG B&Aacute;O:<br />Tuyển sinh lớp MOS 2 (Excel) v&agrave; luyện thi MOS cho đợt thi 11/2018.<br />Trung t&acirc;m sẽ mở c&aacute;c lớp như sau:<br />1. S&aacute;ng thứ 2 v&agrave; thứ 6&nbsp;<br />2. S&aacute;ng thứ 3 v&agrave; thứ 5<span class=\"text_exposed_show\" style=\"display: inline;\"><br />3. Chiều thứ 2 v&agrave; thứ 6<br />4. Chiều thứ 3 v&agrave; thứ 5<br /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: inherit;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ff8/1/16/1f469_200d_1f4bb.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline; font-size: 0px; width: 0px; font-family: inherit;\">?&zwj;?</span></span>Bắt đầu học từ 8/9/2018.<br /><span class=\"_5mfr _47e3\" style=\"line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: inherit;\"><img class=\"img\" style=\"border: 0px; vertical-align: -3px;\" role=\"presentation\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fb5/1/16/1f468_200d_1f3eb.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" style=\"display: inline; font-size: 0px; width: 0px; font-family: inherit;\">?&zwj;?</span></span>&nbsp;Hạn ch&oacute;t nộp học ph&iacute;: 30/8/2018.</span></div>\r\n<div class=\"text_exposed_root text_exposed\" style=\"display: inline; font-family: inherit;\">&nbsp;</div>\r\n<div class=\"text_exposed_root text_exposed\" style=\"display: inline; font-family: inherit;\"><span class=\"text_exposed_show\" style=\"display: inline;\">Link đăng k&yacute;: https://forms.office.com/Pages/ResponsePage.aspx?id=RNw6xD_nxE6KKe9vMSVKzIRjAnSjaI5Gq7LP4RcPnBJUNzVBTkoxUzZBV0pYUFhHUzlZNkZURENWMi4u</span></div>\r\n<div class=\"text_exposed_root text_exposed\" style=\"display: inline; font-family: inherit;\">&nbsp;</div>\r\n</div>', 'posts/August2018/lI3hTu8HNxiXKXp6u8mO.jpg', 'thong-bao-mo-lop-mos-2-luyen-thi-mos-dot-1-n-m-hoc-2018-2019', NULL, NULL, 'PUBLISHED', 0, '2018-08-22 19:36:08', '2018-08-22 20:09:19'),
(8, 1, 2, 'Lớp học chiều thứ 6', NULL, 'Các bậc phụ huynh đang lo lắng mỗi chiều thứ 6 khi con đã tan trường sớm mà mình vẫn chưa sắp xếp đưuọc công việc để đến đón con thì phải làm sao? Vì biết được nỗi lo ấy, trung tâm đã mở ra lướp học Chiều thứ 6 giúp cho bố mẹ yên tâm về công việc của mình.', '<p>C&aacute;c bậc phụ huynh đang lo lắng mỗi chiều thứ 6 khi con đ&atilde; tan trường sớm m&agrave; m&igrave;nh vẫn chưa sắp xếp đưuọc c&ocirc;ng việc để đến đ&oacute;n con th&igrave; phải l&agrave;m sao? V&igrave; biết được nỗi lo ấy, trung t&acirc;m đ&atilde; mở ra lướp học Chiều thứ 6 gi&uacute;p cho bố mẹ y&ecirc;n t&acirc;m về c&ocirc;ng việc của m&igrave;nh.</p>\r\n<p>Đến với lớp học chiều thứ 6 gi&uacute;p c&aacute;c b&eacute; c&oacute; những buổi học l&iacute; th&uacute; c&ugrave;ng vui chơi học hỏi những điều bổ &iacute;ch với c&aacute;c bạn v&agrave; giảng vi&ecirc;n của trung t&acirc;m.</p>\r\n<p>Đặc biệt hơn ở lớp học n&agrave;y đ&oacute; ch&iacute;nh l&agrave; dịch vụ đưa đ&oacute;n c&aacute;c b&eacute; từ trường sang lớp học an to&agrave;n.&nbsp;</p>\r\n<p>Thời gian: từ 15h30 - 17h00 thứ 6 h&agrave;ng tuần</p>\r\n<p>Học ph&iacute;: 60.000 đồng/ buổi.</p>\r\n<p>Qu&yacute; phụ huynh nhanh tay đăng k&iacute; cho c&aacute;c b&eacute; tham gia v&agrave;o lớp học chiều thứ 6 nh&eacute;!</p>\r\n<p>&nbsp;</p>', 'posts/August2018/HPdAUPAnw1YkmC69HfJe.jpg', 'lop-hoc-chieu-thu-6', NULL, NULL, 'PUBLISHED', 0, '2018-08-28 01:52:07', '2018-08-28 01:52:07'),
(9, 5, 2, 'Danh sách SV đăng ký thi chứng chỉ MOS tháng 11/2018', NULL, 'Trung tâm CNTT&MTUD thông báo danh sách sinh viên đã đăng ký thi chứng chỉ Tin học văn phòng Quốc tế MOS tháng 11/2018 đến thời điểm hiện tại như sau (danh sách sẽ được cập nhật thường xuyên)', '<p>Trung t&acirc;m CNTT&amp;MTUD th&ocirc;ng b&aacute;o danh s&aacute;ch sinh vi&ecirc;n đ&atilde; đăng k&yacute; thi chứng chỉ Tin học văn ph&ograve;ng Quốc tế MOS th&aacute;ng 11/2018 đến thời điểm hiện tại như sau (danh s&aacute;ch sẽ được cập nhật thường xuy&ecirc;n)</p>\r\n<p>Sinh vi&ecirc;n truy cập v&agrave;o link:</p>\r\n<p>http:/bit.ly/dkthimosdot1_view</p>\r\n<p>Trung t&acirc;m nhận đăng k&yacute; thi đến hết ng&agrave;y 10/10/2018 tại văn ph&ograve;ng trung t&acirc;m.</p>\r\n<p>&nbsp;</p>\r\n<p>Tr&acirc;n trọng.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'posts/September2018/8XpPNHka7jsr2qeq42GC.jpg', 'danh-sach-sv-d-ng-ky-thi-chung-chi-mos-thang-11-2018', NULL, NULL, 'PUBLISHED', 0, '2018-09-05 19:51:05', '2018-09-05 20:41:30'),
(10, 5, 2, 'Thông báo kỳ thi chứng chỉ Tin học văn phòng MOS 11/2018', NULL, 'Trung tâm CNTT gửi thông báo kỳ thi Tin học văn phòng MOS 11/2018.\r\n\r\nHạn chót đăng ký: 10/10/2018', '<p>Trung t&acirc;m CNTT gửi th&ocirc;ng b&aacute;o kỳ thi Tin học văn ph&ograve;ng MOS 11/2018.</p>\r\n<p>Hạn ch&oacute;t đăng k&yacute;: 10/10/2018</p>\r\n<p>&nbsp;</p>', 'posts/September2018/q7VSW22gnTStnr2hRUD4.jpg', 'thong-bao-ky-thi-chung-chi-tin-hoc-v-n-phong-mos-11-2018', NULL, NULL, 'PUBLISHED', 0, '2018-09-05 21:20:05', '2018-09-05 21:20:53'),
(12, 5, 1, 'Sơ đồ quá trình học Tin học MOS tại trung tâm CNTT&MTUD', NULL, NULL, '<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\">LƯU ĐỒ QU&Aacute; TR&Igrave;NH HỌC TIN HỌC MOS</strong></p>\r\n<p class=\"MsoNormal\">D&agrave;nh cho sinh vi&ecirc;n: <span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Đại học Quản trị dịch vụ du lịch v&agrave; lữ h&agrave;nh</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-tab-count: 4;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>Đại học Ng&ocirc;n ngữ Anh</p>\r\n<p class=\"MsoFooter\" style=\"margin-left: 36.0pt; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\">&uuml;<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp; </span></span><!--[endif]--><em><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt;\">C&aacute;c &ocirc; m&agrave;u xanh l&agrave; sinh vi&ecirc;n t&ugrave;y chọn</span></em></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoFooter\" style=\"margin-left: 36.0pt; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\">&uuml;<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp; </span></span><!--[endif]--><em><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt;\">C&aacute;c &ocirc; m&agrave;u v&agrave;ng l&agrave; bắt buộc học/đạt được theo y&ecirc;u cầu của CTĐT v&agrave; Chuẩn đầu ra</span></em></p>\r\n<p>&nbsp;</p>', 'posts/September2018/pPP76v1IRHI7tRAAUIXy.png', 's-do-qua-trinh-hoc-tin-hoc-mos-tai-trung-tam-cnttandmtud', NULL, NULL, 'PUBLISHED', 0, '2018-09-06 19:37:19', '2018-09-06 19:37:19');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(13, 5, 2, 'Thông báo đăng ký  Tin học đại cương MOS1 - Đợt 1 Năm học 2018-2019', NULL, NULL, '<table class=\"MsoTableGrid\" style=\"border-collapse: collapse; border: none; height: 97px;\" border=\"0\" width=\"700\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes;\">\r\n<td style=\"width: 314.625px; padding: 0cm 5.4pt;\" valign=\"top\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><span style=\"font-size: 11.0pt; mso-bidi-font-size: 13.0pt; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">TRƯỜNG ĐH KH&Aacute;NH H&Ograve;A</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 11.0pt; mso-bidi-font-size: 13.0pt; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">TRUNG T&Acirc;M C&Ocirc;NG NGHỆ TH&Ocirc;NG TIN &amp; MỸ THUẬT ỨNG DỤNG</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><span style=\"font-size: 11.0pt; mso-bidi-font-size: 13.0pt; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">-----------</span></p>\r\n</td>\r\n<td style=\"width: 356.625px; padding: 0cm 5.4pt;\" valign=\"top\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 11.0pt; mso-bidi-font-size: 13.0pt; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">CỘNG H&Ograve;A X&Atilde; HỘI CHỦ NGHĨA VIỆT NAM</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 11.0pt; mso-bidi-font-size: 13.0pt; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Độc lập &ndash; Tự do &ndash; Hạnh ph&uacute;c</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal;\" align=\"center\"><span style=\"font-size: 11.0pt; mso-bidi-font-size: 13.0pt; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">--------------</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"right\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 13.0pt; line-height: 115%; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Kh&aacute;nh H&ograve;a, ng&agrave;y 17 th&aacute;ng 09 năm 2018</span></em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 16.0pt; mso-bidi-font-size: 11.0pt; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">TH&Ocirc;NG B&Aacute;O</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 14.0pt; mso-bidi-font-size: 11.0pt; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">V/v đăng k&yacute; học Tin học Đại cương hướng chuẩn MOS 1</span></em></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: normal;\" align=\"center\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 14.0pt; mso-bidi-font-size: 11.0pt; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>(<span style=\"background: white;\">Microsoft Office Specialist 1)</span></span></em></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 49.65pt; text-align: justify; text-indent: 18.0pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; background: white;\">K&iacute;nh gửi: <span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>- Khoa Ngoại ngữ</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 49.65pt; text-align: justify; text-indent: 18.0pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; background: white;\"><span style=\"mso-tab-count: 3;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>- Khoa Du lịch</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 18.0pt;\"><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; background: white;\">Thực hiện chức năng nhiệm vụ của Trung t&acirc;m CNTT&amp;MTƯD, nhằm tạo điều kiện cho sinh vi&ecirc;n ng&agrave;nh Ng&ocirc;n ngữ Anh v&agrave; Quản trị dịch vụ du lịch lữ h&agrave;nh hệ đại học sắp xếp kế hoạch học tập đ&aacute;p ứng chuẩn đầu ra Tin học, Trung t&acirc;m th&ocirc;ng b&aacute;o về việc đăng<span style=\"mso-spacerun: yes;\">&nbsp; </span>k&yacute; học lớp Tin học Đại cương MOS 1 cụ thể như sau:</span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify; text-indent: -18.0pt; mso-line-height-alt: 9.5pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Thời gian đăng k&yacute;:</span></strong><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"> Từ ng&agrave;y ra th&ocirc;ng b&aacute;o đến hết ng&agrave;y <strong style=\"mso-bidi-font-weight: normal;\">23/09/2018.</strong></span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; text-indent: -18.0pt; mso-line-height-alt: 9.5pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">H&igrave;nh thức đăng k&yacute;:</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-line-height-alt: 9.5pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"><span style=\"mso-list: Ignore;\">a.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">SV điền th&ocirc;ng tin đăng k&yacute; online theo địa chỉ: </span><a href=\"http://bit.ly/dkmos1k3dot1\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\';\">http://bit.ly/dkmos1k3dot1</span></strong></a></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-line-height-alt: 9.5pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"><span style=\"mso-list: Ignore;\">b.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Sau khi điền th&ocirc;ng tin đăng k&yacute; online, sinh vi&ecirc;n đến văn ph&ograve;ng Trung t&acirc;m CNTT&amp;MTƯD (Cơ sở 1) để nộp học ph&iacute; x&aacute;c nhận học (Nếu học lại)</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-line-height-alt: 9.5pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"><span style=\"mso-list: Ignore;\">c.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Hạn ch&oacute;t nộp học ph&iacute;: <strong style=\"mso-bidi-font-weight: normal;\">24/9/2018</strong></span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; text-indent: -18.0pt; mso-line-height-alt: 9.5pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Thời gian học:</span></strong><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"> Bắt đầu từ ng&agrave;y 01/10/2018.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; text-indent: -18.0pt; mso-line-height-alt: 9.5pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Lịch học cụ thể: </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; mso-line-height-alt: 9.5pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">- </span></strong><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Học v&agrave;o chiều thứ 2 v&agrave; chiều thứ 4 từ 13h00 đến 16h30 (2 lớp)</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; mso-line-height-alt: 9.5pt;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">- Học v&agrave;o chiều thứ 3 v&agrave; chiều thứ 5 từ 13h00 đến 16h30 (1 lớp)</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; mso-line-height-alt: 9.5pt;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">- Học v&agrave;o chiều thứ 6 v&agrave; chiều thứ 7 từ 13h00 đến 16h30 (1 lớp)</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; mso-line-height-alt: 9.5pt;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">- Học v&agrave;o tối thứ 2 v&agrave; tối thứ 4 từ 18h00 đến 20h30 (1 lớp)</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-align: justify; text-indent: -18.0pt; mso-line-height-alt: 9.5pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"><span style=\"mso-list: Ignore;\">5.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>Học ph&iacute;: </span></strong><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">825</span><span style=\"mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">.000 đồng/sinh vi&ecirc;n&nbsp; (Nếu học lại)</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 1.0cm; mso-line-height-alt: 9.5pt;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 1.0cm; mso-line-height-alt: 9.5pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><u><span style=\"font-size: 13.0pt;\">Ghi ch&uacute;</span></u></em></strong><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 13.0pt;\">:</span></em></strong><span style=\"font-size: 13.0pt;\"><span style=\"mso-spacerun: yes;\">&nbsp; </span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: -18.0pt; mso-line-height-alt: 9.5pt; mso-list: l1 level1 lfo2; tab-stops: list 54.0pt; margin: 0cm 0cm .0001pt 54.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 13.0pt;\">Ưu ti&ecirc;n xếp lịch cho SV đăng k&yacute; trước.</span></em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: -18.0pt; mso-line-height-alt: 9.5pt; mso-list: l1 level1 lfo2; tab-stops: list 54.0pt; margin: 0cm 0cm .0001pt 54.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 13.0pt;\">Nếu chưa hết thời gian đăng k&yacute; nhưng đ&atilde; đủ số lượng SV tr&ecirc;n mỗi lớp, TT sẽ kh&ocirc;ng nhận đăng k&yacute; mới.</span></em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: -18.0pt; mso-line-height-alt: 9.5pt; mso-list: l1 level1 lfo2; tab-stops: list 54.0pt; margin: 0cm 0cm .0001pt 54.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 13.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 13.0pt;\">Đối với sinh vi&ecirc;n học lại đ&atilde; đăng k&yacute; online nhưng chưa nộp học ph&iacute; cũng xem như chưa x&aacute;c nhận học, TT sẽ ưu ti&ecirc;n cho sinh vi&ecirc;n đăng k&yacute; v&agrave; nộp học ph&iacute; trước.</span></em></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 36.0pt; tab-stops: center 11.0cm;\"><span style=\"mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">PHỤ TR&Aacute;CH TRUNG T&Acirc;M</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 36.0pt; tab-stops: center 11.0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>(Đ&atilde; k&yacute;)</span></strong></p>', NULL, 'thong-bao-d-ng-ky-tin-hoc-dai-c-ng-mos1-dot-1-n-m-hoc-2018-2019', NULL, NULL, 'PUBLISHED', 0, '2018-09-16 18:28:18', '2018-09-16 18:36:46'),
(14, 5, 2, 'Danh sách SV học Tin học đại cương (MOS1) đợt 1 năm học 2018-2019', NULL, NULL, '<p>TH&Ocirc;NG B&Aacute;O</p>\r\n<p style=\"margin: 0px 0px 6px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\">DANH S&Aacute;CH SINH VI&Ecirc;N HỌC TIN HỌC ĐẠI CƯƠNG MOS1 - ĐỢT 1 NĂM HỌC 2018-2019</p>\r\n<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><a style=\"color: #365899; cursor: pointer; text-decoration-line: none; font-family: inherit;\" href=\"https://ukheduvn-my.sharepoint.com/:b:/g/personal/doanhuynhcamduyen_ms_ukh_edu_vn/EdYV3s7I4_dPrE_rRvq0SXwBQUVBaq7UcP9z_9Brhs9EQQ?e=27j7Ev\" target=\"_blank\" rel=\"noopener nofollow\" data-ft=\"{&quot;tn&quot;:&quot;-U&quot;}\" data-lynx-mode=\"async\" data-lynx-uri=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fukheduvn-my.sharepoint.com%2F%3Ab%3A%2Fg%2Fpersonal%2Fdoanhuynhcamduyen_ms_ukh_edu_vn%2FEdYV3s7I4_dPrE_rRvq0SXwBQUVBaq7UcP9z_9Brhs9EQQ%3Fe%3D27j7Ev&amp;h=AT1TirHLO2M79CCE86et1kwrXGq09Va8X_jOSefoLauFB0GDmyDfQMmNGKwEBMWHOR3HeaRZN68nBq9miwaK3h9cbSyWl0gKKEw5iPUQVrIBOdZGxJIqq6uF4w3zWQ8IOmMbT9vyAVmzyQ8rRpq1E2fRd2l5PewtwSEcE0WsJwSbu6tSlRmwBjQMVkPG0Bn7sfM0QIVbQCH9OjvQ-4Irh-pdTxdumW7cClHwpUKA_iOKH-MGTMloGlFlh_VaGRq_e9Rq04F9WyX1CsaAc4DyO9IosP7rdiia4Nh-moeR6hq-yKtGdyP4FZis5B5D1sR23SK2CgGuLRVjX_Q2LtN8MSKkFC1RXpAUXr1K7PtLSwYDGvPi-bpi_LuvhJCKHu2ON2vxY_apICBu75-dCPuWUixg5l2h5w\">https://ukheduvn-my.sharepoint.com/&hellip;/EdYV3s7I4_dPrE_rRvq0SX&hellip;</a></p>\r\n<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\">&nbsp;</p>\r\n<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\">Lưu &yacute;: THỜI GIAN BẮT ĐẦU HỌC TỪ 1/10/2018<span class=\"text_exposed_show\" style=\"display: inline; font-family: inherit;\"><br />1. Sinh vi&ecirc;n xem thời kh&oacute;a biểu, ph&ograve;ng học, giảng vi&ecirc;n ở đầu mỗi danh s&aacute;ch.<br />2. Số m&aacute;y t&iacute;nh c&oacute; hạn, đợt 1 trung t&acirc;m chỉ giảng dạy cho 200 sinh vi&ecirc;n đăng k&yacute; sớm nhất chia th&agrave;nh 5 lớp. </span></p>\r\n<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><span class=\"text_exposed_show\" style=\"display: inline; font-family: inherit;\">Sinh vi&ecirc;n chưa đăng k&yacute; được đợt 1 hoặc đ&atilde; đăng k&yacute; m&agrave; chưa c&oacute; trong danh s&aacute;ch sẽ học v&agrave;o đợt 2 của năm học v&agrave;o HK2.<br />3. Mọi thắc mắc vui l&ograve;ng li&ecirc;n hệ trực tiếp với trung t&acirc;m hoặc inbox.</span></p>', NULL, 'danh-sach-sv-hoc-tin-hoc-dai-c-ng-mos1-dot-1-n-m-hoc-2018-2019', NULL, NULL, 'PUBLISHED', 0, '2018-09-25 01:29:00', '2018-09-25 01:29:00'),
(15, 1, 2, 'DANH SÁCH SV HỌC TIN HỌC ĐẠI CƯƠNG (MOS1) ĐỢT 1 NĂM HỌC 2018-2019 (chốt ngày 29/9/18)', NULL, 'Danh sách sinh viên học tin học đại cương mos 1 tại Trung tâm chốt ngày 29/9/2018. Các bạn sinh viên theo dõi để tham gia đúng lịch học.', '<p style=\"box-sizing: border-box; margin: 0px 0px 6px; color: #1d2129; font-size: 15px; line-height: 25px; font-family: Helvetica, Arial, sans-serif;\">DANH S&Aacute;CH SINH VI&Ecirc;N HỌC TIN HỌC ĐẠI CƯƠNG MOS1 - ĐỢT 1 NĂM HỌC 2018-2019 chốt ng&agrave;y 29/9/2018.</p>\r\n<p style=\"box-sizing: border-box; margin: 6px 0px; color: #1d2129; font-size: 15px; line-height: 25px; font-family: Helvetica, Arial, sans-serif;\"><a href=\"https://ukheduvn-my.sharepoint.com/:x:/g/personal/tranvankhanh_ms_ukh_edu_vn/EYhKCRmZFG9CmCwDKsUIeUkBYNvsKu2My6yHgdYtZKpdhg?e=lCF8d4\">Click v&agrave;o đ&acirc;y để xem danh s&aacute;ch chi tiết</a></p>\r\n<p style=\"box-sizing: border-box; margin: 6px 0px; color: #1d2129; font-size: 15px; line-height: 25px; font-family: Helvetica, Arial, sans-serif;\">&nbsp;Lưu &yacute;: THỜI GIAN BẮT ĐẦU HỌC TỪ 1/10/2018<span class=\"text_exposed_show\" style=\"box-sizing: border-box; display: inline; font-family: inherit;\"><br style=\"box-sizing: border-box;\" />1. Sinh vi&ecirc;n xem thời kh&oacute;a biểu, ph&ograve;ng học, giảng vi&ecirc;n ở đầu mỗi danh s&aacute;ch.<br style=\"box-sizing: border-box;\" />2. Số m&aacute;y t&iacute;nh c&oacute; hạn, đợt 1 trung t&acirc;m chỉ giảng dạy cho 200 sinh vi&ecirc;n đăng k&yacute; sớm nhất chia th&agrave;nh 5 lớp.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 6px 0px; color: #1d2129; font-size: 15px; line-height: 25px; font-family: Helvetica, Arial, sans-serif;\"><span class=\"text_exposed_show\" style=\"box-sizing: border-box; display: inline; font-family: inherit;\">Sinh vi&ecirc;n chưa đăng k&yacute; được đợt 1 hoặc đ&atilde; đăng k&yacute; m&agrave; chưa c&oacute; trong danh s&aacute;ch sẽ học v&agrave;o đợt 2 của năm học v&agrave;o HK2.<br style=\"box-sizing: border-box;\" />3. Mọi thắc mắc vui l&ograve;ng li&ecirc;n hệ trực tiếp với trung t&acirc;m hoặc inbox.</span></p>', NULL, 'danh-sach-sv-hoc-tin-hoc-dai-c-ng-mos1-dot-1-n-m-hoc-2018-2019-chot-ngay-29-9-18', NULL, NULL, 'PUBLISHED', 0, '2018-09-28 19:02:17', '2018-09-28 19:02:39'),
(16, 5, 2, 'Lớp bồi dưỡng kỹ năng Tin học cho giáo viên năm học 2018-2019', NULL, NULL, '<p><img src=\"http://itacenter.net/storage/posts/October2018/0e44c1d7a7e7b88081d8a82f108ab728-0.jpg\" alt=\"\" width=\"1800\" height=\"1012\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://itacenter.net/storage/posts/October2018/0e44c1d7a7e7b88081d8a82f108ab728-11.jpg\" alt=\"\" width=\"1800\" height=\"1012\" /></p>', 'posts/October2018/5uVOL5eC5i5BuK9P5dHU.jpg', 'lop-boi-d-ong-ky-n-ng-tin-hoc-cho-giao-vien-n-m-hoc-2018-2019', NULL, NULL, 'PUBLISHED', 0, '2018-10-17 20:39:22', '2018-10-17 20:39:22'),
(17, 5, 2, 'Tổ chức thi thử miễn phí MOS', NULL, NULL, '<p style=\"margin: 0px 0px 6px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\">TH&Ocirc;NG B&Aacute;O:<br />Để hỗ trợ sinh vi&ecirc;n tự tin hơn để đăng k&yacute; thi MOS, trung t&acirc;m sẽ tổ chức buổi thi thử MIỄN PH&Iacute;.</p>\r\n<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\">Thời gian: 15h30 chiều ng&agrave;y 9/11/2018.<br />Địa điểm: Ph&ograve;ng m&aacute;y 1, cơ sở 1.</p>\r\n<div class=\"text_exposed_show\" style=\"display: inline;\">\r\n<p style=\"color: #1d2129; font-family: inherit; margin: 0px 0px 6px;\"><span class=\"_5mfr\" style=\"margin: 0px 1px; font-family: inherit;\"><span class=\"_6qdm\" style=\"background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://static.xx.fbcdn.net/images/emoji.php/v9/ffe/1.5/16/203c.png\');\">‼️</span></span><span class=\"_5mfr\" style=\"margin: 0px 1px; font-family: inherit;\"><span class=\"_6qdm\" style=\"background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://static.xx.fbcdn.net/images/emoji.php/v9/f8d/1.5/16/1f914.png\');\">🤔</span></span>Lưu &yacute;: SV cần suy nghĩ kỹ trước khi đăng k&yacute; v&agrave; ho&agrave;n to&agrave;n chịu tr&aacute;ch nhiệm về việc đăng k&yacute; thi thử, tr&aacute;nh việc đ&atilde; đăng k&yacute; thi thử nhưng vắng sẽ ảnh hưởng đến kế hoạch của trung t&acirc;m.<br />Trung t&acirc;m chỉ nhận 30 sinh vi&ecirc;n đăng k&yacute; đầu ti&ecirc;n.</p>\r\n<p style=\"color: #1d2129; font-family: inherit; margin: 6px 0px;\">SV đăng k&yacute; thi thử điền v&agrave;o mẫu sau:</p>\r\n<p style=\"margin: 6px 0px;\"><span style=\"color: #1d2129; font-family: Helvetica, Arial, sans-serif;\">https://forms.office.com/Pages/ResponsePage.aspx?id=RNw6xD_nxE6KKe9vMSVKzIRjAnSjaI5Gq7LP4RcPnBJUNDRRWDBPOVA3S1dTSTJRR0dHQ1ZEU0w1Ti4u</span></p>\r\n<p style=\"margin: 6px 0px;\">&nbsp;</p>\r\n</div>', NULL, 'to-chuc-thi-thu-mien-phi-mos', NULL, NULL, 'PUBLISHED', 0, '2018-10-29 21:09:02', '2018-10-29 21:09:49'),
(18, 5, 1, 'CHUYÊN MỤC GIẢI ĐÁP THẮC MẮC (PHẦN 1)', NULL, NULL, '<p style=\"margin: 0px 0px 6px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\">MOS 2 - NHỮNG C&Acirc;U HỎI THƯỜNG GẶP!!!</p>\r\n<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\"><span class=\"_5mfr\" style=\"margin: 0px 1px; font-family: inherit;\"><span class=\"_6qdm\" style=\"background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://static.xx.fbcdn.net/images/emoji.php/v9/fd3/1.5/16/2753.png?_nc_eui2=AeFYnQgUOPIwUcR2EmLzfGZFBYDwu3qwxU3_bgHIA-29Yh9iWQdRFcgzJ0TfifJASrGDvjvWJZ7la27BRPrlQdJNsSUKbfjSp3y-0KGNmMrzlA\');\">❓</span></span>&nbsp;MOS2 l&agrave; học c&aacute;i g&igrave;?<br />Học phần MOS2 l&agrave; học phần giảng dạy để sinh vi&ecirc;n đ&aacute;p ứng chuẩn đầu ra chứng chỉ MOS Excel theo quy định của nh&agrave; trường. Nội dung MOS2 gồm:<span class=\"text_exposed_show\" style=\"display: inline; font-family: inherit;\"><br /><span class=\"_5mfr\" style=\"margin: 0px 1px; font-family: inherit;\"><span class=\"_6qdm\" style=\"background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://static.xx.fbcdn.net/images/emoji.php/v9/faa/1.5/16/1f449.png?_nc_eui2=AeHO1cIet4KnM9rMcGerUJUgV1-e6D4slmW5j24Hn8H_1g4HHFR3k2dWA-70zyYlFCQRTkfMLiySFaZ8gw7jnOo2AcdeJmzKacq7PRyRQm9Ehw\');\">👉</span></span>Cung cấp cho sinh vi&ecirc;n những hiểu biết cơ bản nhất về xử l&yacute; bảng t&iacute;nh bằng Microsoft Excel.<br /><span class=\"_5mfr\" style=\"margin: 0px 1px; font-family: inherit;\"><span class=\"_6qdm\" style=\"background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://static.xx.fbcdn.net/images/emoji.php/v9/faa/1.5/16/1f449.png?_nc_eui2=AeHO1cIet4KnM9rMcGerUJUgV1-e6D4slmW5j24Hn8H_1g4HHFR3k2dWA-70zyYlFCQRTkfMLiySFaZ8gw7jnOo2AcdeJmzKacq7PRyRQm9Ehw\');\">👉</span></span>Thao t&aacute;c trang t&iacute;nh, sổ t&iacute;nh, nhập liệu, định dạng c&aacute;c kiểu dữ liệu, tr&igrave;nh b&agrave;y bảng t&iacute;nh; sử dụng c&ocirc;ng thức v&agrave; h&agrave;m trong bảng t&iacute;nh; sắp xếp, tr&iacute;ch lọc v&agrave; tổ chức dữ liệu; chia sẻ t&agrave;i liệu tr&ecirc;n Microsoft Excel.<br /><span class=\"_5mfr\" style=\"margin: 0px 1px; font-family: inherit;\"><span class=\"_6qdm\" style=\"background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://static.xx.fbcdn.net/images/emoji.php/v9/faa/1.5/16/1f449.png?_nc_eui2=AeHO1cIet4KnM9rMcGerUJUgV1-e6D4slmW5j24Hn8H_1g4HHFR3k2dWA-70zyYlFCQRTkfMLiySFaZ8gw7jnOo2AcdeJmzKacq7PRyRQm9Ehw\');\">👉</span></span>Đ&aacute;p ứng y&ecirc;u cầu kỹ năng sử dụng CNTT chuẩn n&acirc;ng cao (Excel) theo quy định của Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng, c&oacute; khả năng đạt chứng chỉ quốc tế về kỹ năng sử dụng c&aacute;c sản phẩm văn ph&ograve;ng của Microsoft cấp độ Specialist (Microsoft Office Specialist -MOS) phi&ecirc;n bản Microsoft Excel 2010.<br /><span class=\"_5mfr\" style=\"margin: 0px 1px; font-family: inherit;\"><span class=\"_6qdm\" style=\"background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://static.xx.fbcdn.net/images/emoji.php/v9/faa/1.5/16/1f449.png?_nc_eui2=AeHO1cIet4KnM9rMcGerUJUgV1-e6D4slmW5j24Hn8H_1g4HHFR3k2dWA-70zyYlFCQRTkfMLiySFaZ8gw7jnOo2AcdeJmzKacq7PRyRQm9Ehw\');\">👉</span></span>Tham gia đợt thi s&aacute;t hạch cấp chứng chỉ MOS phần Office Excel v&agrave; t&iacute;ch lũy đủ số lượng chứng chỉ MOS v&agrave; đạt chuẩn đầu ra Tin học.</span></p>\r\n<div class=\"text_exposed_show\" style=\"display: inline; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\">\r\n<p style=\"margin: 0px 0px 6px; font-family: inherit;\"><span class=\"_5mfr\" style=\"margin: 0px 1px; font-family: inherit;\"><span class=\"_6qdm\" style=\"background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://static.xx.fbcdn.net/images/emoji.php/v9/fd3/1.5/16/2753.png?_nc_eui2=AeFYnQgUOPIwUcR2EmLzfGZFBYDwu3qwxU3_bgHIA-29Yh9iWQdRFcgzJ0TfifJASrGDvjvWJZ7la27BRPrlQdJNsSUKbfjSp3y-0KGNmMrzlA\');\">❓</span></span>&nbsp;MOS2 c&oacute; đ&oacute;ng học ph&iacute; kh&ocirc;ng? Thời lượng học bao nhi&ecirc;u?<br />MOS 2 l&agrave; học phần phải đ&oacute;ng học ph&iacute; theo quy định của nh&agrave; trường. Thời lượng m&ocirc;n học l&agrave; 3 t&iacute;n chỉ. Học ph&iacute; quy định hiện tại l&agrave; 285.000 đồng/t&iacute;n chỉ.</p>\r\n<p style=\"margin: 6px 0px; font-family: inherit;\"><span class=\"_5mfr\" style=\"margin: 0px 1px; font-family: inherit;\"><span class=\"_6qdm\" style=\"background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://static.xx.fbcdn.net/images/emoji.php/v9/fd3/1.5/16/2753.png?_nc_eui2=AeFYnQgUOPIwUcR2EmLzfGZFBYDwu3qwxU3_bgHIA-29Yh9iWQdRFcgzJ0TfifJASrGDvjvWJZ7la27BRPrlQdJNsSUKbfjSp3y-0KGNmMrzlA\');\">❓</span></span>&nbsp;C&oacute; cần thiết phải học MOS2 kh&ocirc;ng?<br />C&Oacute; hoặc KH&Ocirc;NG l&agrave; t&ugrave;y thuộc v&agrave;o năng lực của sinh vi&ecirc;n. Với nội dung học MOS2 như tr&ecirc;n, sinh vi&ecirc;n sẽ được cung cấp đủ kiến thức v&agrave; kỹ năng để tham gia thi chứng chỉ MOS Excel 2010. Với sinh vi&ecirc;n đ&atilde; đủ TỰ TIN m&igrave;nh sẽ đạt được chứng chỉ MOS Excel 2010 th&igrave; c&oacute; thể đăng k&yacute; THI CHỨNG CHỈ MOS EXCEL 2010 trực tiếp m&agrave; kh&ocirc;ng cần đăng k&yacute; học.</p>\r\n<p style=\"margin: 6px 0px; font-family: inherit;\"><span class=\"_5mfr\" style=\"margin: 0px 1px; font-family: inherit;\"><span class=\"_6qdm\" style=\"background-repeat: no-repeat; background-size: contain; color: transparent; display: inline-block; text-shadow: none; vertical-align: text-bottom; font-family: inherit; height: 16px; width: 16px; font-size: 16px; background-image: url(\'https://static.xx.fbcdn.net/images/emoji.php/v9/fd3/1.5/16/2753.png?_nc_eui2=AeFYnQgUOPIwUcR2EmLzfGZFBYDwu3qwxU3_bgHIA-29Yh9iWQdRFcgzJ0TfifJASrGDvjvWJZ7la27BRPrlQdJNsSUKbfjSp3y-0KGNmMrzlA\');\">❓</span></span>&nbsp;MOS2 c&oacute; thi v&agrave; t&iacute;nh điểm kh&ocirc;ng?<br />MOS2 kh&ocirc;ng phải l&agrave; m&ocirc;n học c&oacute; t&iacute;nh điểm trong chương tr&igrave;nh đ&agrave;o tạo, v&igrave; vậy kh&ocirc;ng c&oacute; thi kết th&uacute;c học phần. Tuy nhi&ecirc;n học MOS 2 l&agrave; để đủ kiến thức để thi chứng chỉ MOS Excel.</p>\r\n<p style=\"margin: 6px 0px; font-family: inherit;\">&nbsp;</p>\r\n</div>', 'posts/January2019/HyNR1wEXVBNkqCaw4CDw.jpg', 'chuyen-muc-giai-dap-thac-mac-phan-1', NULL, NULL, 'PUBLISHED', 0, '2018-11-01 18:31:30', '2019-01-06 20:46:46');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(19, 5, 2, 'KẾ HOẠCH Học và thi Tin học văn phòng MOS - Năm học 2018-2019', NULL, NULL, '<p class=\"MsoNormal\" style=\"tab-stops: center 99.25pt 347.3pt; margin: 0cm -14.2pt .0001pt -1.0cm;\"><span style=\"color: #000000;\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-size: 12.0pt;\">TRƯỜNG ĐẠI HỌC KH&Aacute;NH H&Ograve;A<span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>CỘNG H&Ograve;A X&Atilde; HỘI CHỦ NGHĨA VIỆT NAM<strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></span></span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: center 99.25pt 347.3pt; margin: 0cm -14.2pt .0001pt -1.0cm;\"><span style=\"color: #000000;\"><span style=\"font-size: 12.0pt;\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;TRUNG T&Acirc;M CNTT v&agrave; MTUD<span style=\"mso-tab-count: 1;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></strong></span><strong style=\"mso-bidi-font-weight: normal;\">Độc lập &ndash; Tự do &ndash; Hạnh ph&uacute;c</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-top: 12.0pt; text-align: right; tab-stops: center 2.0cm;\" align=\"right\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"mso-tab-count: 3;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></em></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center; tab-stops: center 4.0cm;\" align=\"center\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 6.0pt; mso-bidi-font-size: 13.0pt;\">&nbsp;</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center; tab-stops: center 4.0cm;\" align=\"center\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 15.0pt; mso-bidi-font-size: 13.0pt;\">KẾ HOẠCH </span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 115%; tab-stops: center 4.0cm;\" align=\"center\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\">Đăng k&yacute; học v&agrave; thi chương tr&igrave;nh Tin học văn ph&ograve;ng quốc tế MOS (Microsoft Office Specialist) tại trung t&acirc;m C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Mỹ thuật ứng dụng </em></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center; line-height: 115%; tab-stops: center 4.0cm;\" align=\"center\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\">Năm học 2018-2019</em></strong></span></p>\r\n<p style=\"text-align: justify; text-indent: 18.0pt; line-height: 115%; margin: 6.0pt 0cm .0001pt 0cm;\"><span lang=\"DE\" style=\"font-size: 13pt; line-height: 115%; color: #000000;\">Căn cứ Quy chế đ&agrave;o tạo đại học v&agrave; cao đẳng hệ ch&iacute;nh quy theo hệ thống t&iacute;n chỉ do <span style=\"mso-spacerun: yes;\">&nbsp;</span>Hiệu trưởng trường Đại học Kh&aacute;nh H&ograve;a ban h&agrave;nh theo Quyết định số: 642 /QĐ-ĐHKH-ĐT ng&agrave;y 01 th&aacute;ng 08 năm 2016.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 18.0pt; line-height: 115%;\"><span lang=\"DE\" style=\"color: #000000;\">Căn cứ chuẩn đầu ra c&aacute;c ng&agrave;nh đ&agrave;o tạo tr&igrave;nh độ đại học v&agrave; cao đẳng do Hiệu trưởng trường Đại học Kh&aacute;nh H&ograve;a ban h&agrave;nh theo Quyết định số 597/QĐ-ĐHKH ng&agrave;y 16 th&aacute;ng 08 năm 2017.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 18.0pt; line-height: 115%;\"><span lang=\"DE\" style=\"color: #000000;\">Căn cứ Quyết định 998A/QĐ-ĐHKH-ĐT về Ban h&agrave;nh quy định về tổ chức đ&agrave;o tạo v&agrave; c&ocirc;ng nhận người học đạt năng lực Ngoại ngữ - Tin học khi tốt nghiệp.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 18.0pt; line-height: 115%;\"><span lang=\"DE\" style=\"color: #000000;\">Nhằm tạo điều kiện cho sinh vi&ecirc;n Đại học ng&agrave;nh Quản trị dịch vụ du lịch v&agrave; Lữ h&agrave;nh (QTDVDL&amp;LH) v&agrave; Ng&ocirc;n ngữ Anh (NNA) K03 v&agrave; sinh vi&ecirc;n c&aacute;c kh&oacute;a kh&aacute;c sắp xếp tốt kế hoạch học tập, tham gia kỳ thi chứng chỉ Tin học văn ph&ograve;ng MOS để đạt chuẩn đầu ra, đề nghị ban chủ nhiệm c&aacute;c khoa Du lịch v&agrave; Ngoại ngữ th&ocirc;ng b&aacute;o về việc đăng k&yacute; học Tin học tại Trung t&acirc;m C&ocirc;ng nghệ tin v&agrave; Mỹ thuật ứng dụng như sau:</span></p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left: 18.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l1 level1 lfo1;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong style=\"mso-bidi-font-weight: normal;\">Mục ti&ecirc;u, nội dung chương tr&igrave;nh</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\">1.1. Mục ti&ecirc;u</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 14.2pt; line-height: 115%;\"><span style=\"color: #000000;\">Sau khi ho&agrave;n th&agrave;nh xong chương tr&igrave;nh sinh vi&ecirc;n c&oacute; thể đăng k&yacute; tham dự kỳ thi cấp chứng Tin học văn ph&ograve;ng MOS do IIG Việt Nam tổ chức tại trường Đại học Kh&aacute;nh H&ograve;a để x&eacute;t chuẩn đầu ra khi tốt nghiệp.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\">1.2. Nội dung: </strong>chia l&agrave;m 2 học phần:</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"color: #000000;\">1.2.1.Học phần 1 (Tin học đại cương hướng chuẩn MOS1 - 3 t&iacute;n chỉ): Đ&acirc;y l&agrave; m&ocirc;n học Tin học đại cương trong chương tr&igrave;nh học v&agrave; bắt buộc phải ho&agrave;n th&agrave;nh trong năm học 2018-2019.</span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-pagination: none; mso-list: l4 level1 lfo2; layout-grid-mode: char; background: white; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Cung cấp cho sinh vi&ecirc;n những hiểu biết cơ bản nhất về c&ocirc;ng nghệ th&ocirc;ng tin, kiến tr&uacute;c m&aacute;y t&iacute;nh, hệ điều h&agrave;nh, mạng m&aacute;y t&iacute;nh v&agrave; sử dụng Internet; soạn thảo văn bản bằng Microsoft Word; tr&igrave;nh chiếu cơ bản với Microsoft PowerPoint.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-pagination: none; mso-list: l4 level1 lfo2; layout-grid-mode: char; background: white; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-style: italic;\">Thao t&aacute;c với hệ điều h&agrave;nh; c&aacute;ch quản l&yacute; thư mục/tập tin tr&ecirc;n m&aacute;y t&iacute;nh; thay đổi c&aacute;c t&ugrave;y chọn trong Control Panel; c&aacute;ch sử dụng Internet.</span></span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-pagination: none; mso-list: l4 level1 lfo2; layout-grid-mode: char; background: white; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-style: italic;\">Soạn thảo cơ bản Microsoft Word: qui c&aacute;ch tr&igrave;nh b&agrave;y, định dạng một văn bản, ch&egrave;n c&aacute;c đối tượng h&igrave;nh ảnh v&agrave; c&aacute;c kỹ thuật chia sẻ t&agrave;i liệu tr&ecirc;n Microsoft Word.</span></span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-pagination: none; mso-list: l4 level1 lfo2; layout-grid-mode: char; background: white; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-style: italic;\">X&acirc;y dựng, tổ chức, sử dụng c&aacute;c đối tượng minh họa cũng như việc sử dụng c&aacute;c hiệu ứng tr&ecirc;n Microsoft PowerPoint.</span></span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-pagination: none; mso-list: l4 level1 lfo2; layout-grid-mode: char; background: white; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Đ&aacute;p ứng y&ecirc;u cầu kỹ năng sử dụng CNTT chuẩn n&acirc;ng cao (Word) theo quy định của Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng, c&oacute; khả năng đạt chứng chỉ quốc tế về kỹ năng sử dụng c&aacute;c sản phẩm văn ph&ograve;ng của Microsoft cấp độ Specialist (Microsoft Office Specialist - MOS) phi&ecirc;n bản Microsoft Word 2010.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-pagination: none; mso-list: l4 level1 lfo2; layout-grid-mode: char; background: white; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Tham gia đợt thi s&aacute;t hạch cấp chứng chỉ MOS phần Office Word.<span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"color: #000000;\">1.2.2. Học phần 2 (MOS2 - 3 t&iacute;n chỉ)</span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-pagination: none; mso-list: l4 level1 lfo2; layout-grid-mode: char; background: white; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Cung cấp cho sinh vi&ecirc;n những hiểu biết cơ bản nhất về xử l&yacute; bảng t&iacute;nh bằng Microsoft Excel.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-pagination: none; mso-list: l4 level1 lfo2; layout-grid-mode: char; background: white; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-style: italic;\">Thao t&aacute;c trang t&iacute;nh, sổ t&iacute;nh, nhập liệu, định dạng c&aacute;c kiểu dữ liệu, tr&igrave;nh b&agrave;y bảng t&iacute;nh; sử dụng c&ocirc;ng thức v&agrave; h&agrave;m trong bảng t&iacute;nh; sắp xếp, tr&iacute;ch lọc v&agrave; tổ chức dữ liệu; chia sẻ t&agrave;i liệu tr&ecirc;n Microsoft Excel.</span></span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-pagination: none; mso-list: l4 level1 lfo2; layout-grid-mode: char; background: white; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Đ&aacute;p ứng y&ecirc;u cầu kỹ năng sử dụng CNTT chuẩn n&acirc;ng cao (Excel) theo quy định của Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng, c&oacute; khả năng đạt chứng chỉ quốc tế về kỹ năng sử dụng c&aacute;c sản phẩm văn ph&ograve;ng của Microsoft cấp độ Specialist (Microsoft Office Specialist -MOS) phi&ecirc;n bản Microsoft Excel 2010.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-pagination: none; mso-list: l4 level1 lfo2; layout-grid-mode: char; background: white; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Tham gia đợt thi s&aacute;t hạch cấp chứng chỉ MOS phần Office Excel v&agrave; t&iacute;ch lũy đủ số lượng chứng chỉ MOS v&agrave; đạt chuẩn đầu ra Tin học.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 18.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l1 level1 lfo1;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong style=\"mso-bidi-font-weight: normal;\">Lộ tr&igrave;nh học </strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\">2.1. MOS 1</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 14.2pt; line-height: 115%;\"><span style=\"color: #000000;\">Trong năm học 2018-2019, trung t&acirc;m CNTT&amp;MTUD tổ chức c&aacute;c đợt học Tin học đại cương MOS1 như sau:</span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Đợt 1: Bắt đầu đăng k&yacute; từ ng&agrave;y 17/09/2018, bắt đầu học ng&agrave;y 01/10/2018</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Đợt 2: Bắt đầu đăng k&yacute; từ ng&agrave;y 14/01/2019, bắt đầu học ng&agrave;y 25/02/2019</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Ngo&agrave;i 2 đợt đăng k&yacute; ch&iacute;nh thức, dựa v&agrave;o điều kiện ph&ograve;ng m&aacute;y thực tế, trung t&acirc;m c&oacute; thể sắp xếp th&ecirc;m 01 đợt học bổ sung v&agrave;o học kỳ h&egrave; nếu chưa giảng dạy hết cho sinh vi&ecirc;n Đại học QTDVDL&amp;LH v&agrave; NNA K03.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 18.0pt; line-height: 115%;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\">Lưu &yacute;:</strong></span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Số lượng lớp học dựa v&agrave;o t&igrave;nh h&igrave;nh ph&ograve;ng m&aacute;y t&iacute;nh thực tế</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Nếu sinh vi&ecirc;n kh&ocirc;ng chủ động đăng k&yacute; học trong cả 2 đợt học th&igrave; trung t&acirc;m sẽ chủ động xếp sinh vi&ecirc;n học v&agrave;o đợt học cuối c&ugrave;ng của năm học. </span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Nếu sinh vi&ecirc;n kh&ocirc;ng tham gia học xem như điểm m&ocirc;n Tin học đại cương l&agrave; 0 điểm.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\">2.2. MOS 2</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 14.2pt; line-height: 115%;\"><span style=\"color: #000000;\">Trong năm học n&agrave;y, trung t&acirc;m cũng mở c&aacute;c lớp MOS2 tương ứng c&aacute;c đợt đăng k&yacute; học như tr&ecirc;n. Ngo&agrave;i ra t&ugrave;y theo t&igrave;nh h&igrave;nh ph&ograve;ng m&aacute;y t&iacute;nh thực tế, trung t&acirc;m sẽ mở th&ecirc;m c&aacute;c lớp MOS2 kh&aacute;c trong suốt năm học để đ&aacute;p ứng nhu cầu học của sinh vi&ecirc;n.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 18.0pt; line-height: 115%;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\">Học ph&iacute;</strong></span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Sinh vi&ecirc;n kh&ocirc;ng đ&oacute;ng học ph&iacute; MOS1 nếu học lần đầu.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Sinh vi&ecirc;n phải đ&oacute;ng học ph&iacute; MOS2: 3TC x 275.000đ/1TC = 825.000đ</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 18.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l1 level1 lfo1;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong style=\"mso-bidi-font-weight: normal;\">Hướng dẫn đăng k&yacute; học</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 18.0pt; line-height: 115%;\"><span style=\"color: #000000;\">Sinh vi&ecirc;n theo d&otilde;i th&ocirc;ng b&aacute;o v&agrave; chủ động đăng k&yacute; học online theo link đăng k&yacute; trực tuyến m&agrave; trung t&acirc;m th&ocirc;ng b&aacute;o v&agrave;o đầu mỗi đợt học tại 3 k&ecirc;nh th&ocirc;ng tin:</span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span class=\"MsoHyperlink\"><span style=\"font-family: Symbol; text-decoration: none;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></span><!--[endif]-->Website của trung t&acirc;m: <a style=\"color: #000000;\" href=\"http://www.itacenter.net/\"><span style=\"mso-fareast-font-family: \'Times New Roman\';\">www.itacenter.net</span></a></span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span class=\"MsoHyperlink\"><span style=\"font-family: Symbol; text-decoration: none;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></span><!--[endif]-->Facebook của trung t&acirc;m: <a style=\"color: #000000;\" href=\"http://www.facebook.com/ttudcntt\"><span style=\"mso-fareast-font-family: \'Times New Roman\';\">www.facebook.com/ttudcntt</span></a></span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Email trung t&acirc;m gửi cho c&aacute;c khoa.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 18.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l1 level1 lfo1;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong>Một số ch&uacute; &yacute; khi đăng k&yacute; học</strong></span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Lịch học của sinh vi&ecirc;n đăng k&yacute; được ưu ti&ecirc;n cho những lớp theo đ&uacute;ng tiến độ của chương tr&igrave;nh đ&agrave;o tạo.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo3;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Nếu chưa hết thời gian đăng k&yacute; nhưng đ&atilde; đủ số lượng sinh vi&ecirc;n tr&ecirc;n mỗi lớp th&igrave; trung t&acirc;m sẽ kh&ocirc;ng nhận đăng k&yacute; mới.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 18.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l1 level1 lfo1;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><strong><span style=\"mso-list: Ignore;\">5.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong>H&igrave;nh thức đăng k&yacute;, kiểm tra v&agrave; đ&aacute;nh gi&aacute; kết quả học tập</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\">5.1. Thi chứng chỉ MOS</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 14.2pt; line-height: 115%;\"><span style=\"color: #000000;\">Sau khi ho&agrave;n th&agrave;nh 2 học phần, sinh vi&ecirc;n c&oacute; thể đến văn ph&ograve;ng trung t&acirc;m để đăng k&yacute; tham dự kỳ thi chứng chỉ MOS do IIG Việt Nam <strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\">tổ chức thường xuy&ecirc;n</em></strong> (khi đủ số lượng 100 th&iacute; sinh/lần thi) để ho&agrave;n th&agrave;nh chuẩn đầu ra khi x&eacute;t tốt nghiệp.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 14.2pt; line-height: 115%;\"><span style=\"color: #000000;\">Lệ ph&iacute; thi do IIG quy định: 800.000 đồng/b&agrave;i thi.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\">5.2. H&igrave;nh thức kiểm tra kết th&uacute;c học phần</strong></span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l2 level1 lfo4;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Mỗi một đợt học, trung t&acirc;m tổ chức 01 kỳ thi kết th&uacute;c học phần Tin học đại cương hướng chuẩn MOS1: nếu kh&ocirc;ng đạt th&igrave; sinh vi&ecirc;n phải đăng k&yacute; học lại (phải đ&oacute;ng học ph&iacute; học lại).</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l2 level1 lfo4;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Điểm thi n&agrave;y sẽ l&agrave;m kết quả đ&aacute;nh gi&aacute; học tập m&ocirc;n Tin học đại cương của sinh vi&ecirc;n ng&agrave;nh QTDVDL&amp;LH v&agrave; NNA hệ đại học.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\">5.3. Đối với sinh vi&ecirc;n đ&atilde; c&oacute; chứng chỉ MOS</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 14.2pt; line-height: 115%;\"><span style=\"color: #000000;\">Nếu sinh vi&ecirc;n đ&atilde; c&oacute; chứng chỉ Tin học văn ph&ograve;ng MOS c&ograve;n thời hạn th&igrave; photocopy c&ocirc;ng chứng nộp tại văn ph&ograve;ng trung t&acirc;m để x&aacute;c nhận như sau:</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"color: #000000;\">5.3.1. Chứng chỉ MOS cấp độ Specialist hoặc Expert về Microsoft Word v&agrave; Excel:</span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l3 level1 lfo5;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Ghi điểm miễn học phần Tin học đại cương 10 điểm<span style=\"mso-spacerun: yes;\">&nbsp; </span>(nếu chưa ho&agrave;n th&agrave;nh c&aacute;c học phần Tin học);</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l3 level1 lfo5;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Nếu t&iacute;ch lũy đủ số lượng sẽ c&ocirc;ng nhận đạt chuẩn đầu ra.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l3 level1 lfo5;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Trường x&eacute;t miễn học phần v&agrave;o đầu mỗi học kỳ.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"color: #000000;\">5.3.2. Chứng chỉ MOS cấp độ Master</span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l3 level1 lfo5;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Ghi điểm miễn học phần Tin học đại cương 10 điểm<span style=\"mso-spacerun: yes;\">&nbsp; </span>(nếu chưa ho&agrave;n th&agrave;nh c&aacute;c học phần Tin học);</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l3 level1 lfo5;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->C&ocirc;ng nhận đạt chuẩn đầu ra;</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l3 level1 lfo5;\"><span style=\"color: #000000;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol;\"><span style=\"mso-list: Ignore;\">-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Trường x&eacute;t miễn học phần v&agrave;o đầu mỗi học kỳ.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 14.2pt; line-height: 115%;\"><span style=\"color: #000000;\">Đề nghị Khoa Ngoại ngữ v&agrave; Khoa Du lịch phổ biến th&ocirc;ng b&aacute;o n&agrave;y đến sinh vi&ecirc;n c&aacute;c lớp ng&agrave;nh Quản trị dịch vụ du lịch v&agrave; lữ h&agrave;nh v&agrave; Ng&ocirc;n ngữ Anh hệ đại học để sinh vi&ecirc;n sắp xếp kế hoạch học tập.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%; tab-stops: center 354.4pt;\"><span style=\"color: #000000;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 11pt; line-height: 115%;\">&nbsp;</span></em></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%; tab-stops: center 354.4pt;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 12pt; line-height: 115%;\">Nơi nhận</span></em></strong><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 11pt; line-height: 115%;\">:<span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></em><strong style=\"mso-bidi-font-weight: normal;\">PHỤ TR&Aacute;CH TRUNG T&Acirc;M</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%; tab-stops: center 354.4pt;\"><span style=\"color: #000000;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 11pt; line-height: 115%;\">+Ban gi&aacute;m hiệu (để b&aacute;o c&aacute;o);<span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></em></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%; tab-stops: center 354.4pt;\"><span style=\"color: #000000;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 11pt; line-height: 115%;\">+Khoa Du lịch v&agrave; Khoa ngoại ngữ;</span></em></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%; tab-stops: center 354.4pt;\"><span style=\"color: #000000;\"><em style=\"mso-bidi-font-style: normal;\"><span style=\"font-size: 11pt; line-height: 115%;\">+Lưu: VT, TTCNTT&amp;MTUD.</span></em></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 1.0cm; line-height: 115%; tab-stops: center 354.4pt;\"><span style=\"color: #000000;\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 1.0cm; line-height: 115%; tab-stops: center 354.4pt;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ThS. Đo&agrave;n Huỳnh Cẩm Duy&ecirc;n</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 1.0cm; line-height: 115%; tab-stops: center 354.4pt;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 1.0cm; line-height: 115%; tab-stops: center 354.4pt;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 1.0cm; line-height: 115%; tab-stops: center 354.4pt;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\">&nbsp;</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 1.0cm; line-height: 115%; tab-stops: center 354.4pt;\"><span style=\"color: #000000;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></span></p>', NULL, 'ke-hoach-hoc-va-thi-tin-hoc-v-n-phong-mos-n-m-hoc-2018-2019', NULL, NULL, 'PUBLISHED', 0, '2018-11-04 18:54:45', '2018-11-04 19:01:20'),
(20, 1, 2, 'GIỚI THIỆU VỀ BÀI THI MOS 2013', NULL, NULL, '<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\">Theo th&ocirc;ng tin từ tổ chức IIG, IIG chỉ tổ chức thi MOS 2010 trong hết năm 2019, sau đ&oacute; sẽ bỏ b&agrave;i thi MOS 2010, chỉ tổ chức thi chứng chỉ MOS phi&ecirc;n bản Office 2013 trở l&ecirc;n.<br />V&igrave; vậy, trung t&acirc;m CNTT&amp;MTUD xin th&ocirc;ng b&aacute;o: Trung t&acirc;m sẽ chỉ tổ chức đ&agrave;o tạo v&agrave; thi chứng chỉ MOS 2010 cho đến hết năm học n&agrave;y.<br />Kể từ sau thời gian n&agrave;y, trung t&acirc;m sẽ chuyển qua giảng dạy MOS 2013.<span class=\"text_exposed_show\" style=\"display: inline; font-family: inherit;\"><br />Nay trung t&acirc;m th&ocirc;ng b&aacute;o để sinh vi&ecirc;n đ&atilde; học Word v&agrave; Excel 2010 sắp xếp kế hoạch học v&agrave; thi hợp l&yacute;, tr&aacute;nh việc phải học lại Word v&agrave; Excel 2013 để thi chứng chỉ.</span></p>\r\n<div class=\"text_exposed_show\" style=\"display: inline; font-family: Helvetica, Arial, sans-serif; color: #1d2129;\">\r\n<p style=\"margin: 0px 0px 6px; font-family: inherit;\">Trung t&acirc;m sẽ gửi th&ocirc;ng b&aacute;o bằng văn bản ch&iacute;nh thức đến c&aacute;c văn ph&ograve;ng khoa sau.</p>\r\n<p style=\"margin: 6px 0px; font-family: inherit;\"><a style=\"color: #365899; cursor: pointer; text-decoration-line: none; font-family: inherit;\" href=\"http://mos.edu.vn/gioi-thieu-ve-bai-thi-mos?fbclid=IwAR0qdTXwiGk0FEtaO9DilomQCa-rTDN2qzRNyHc-0D_m8bytoJwS-9zVYMU\" target=\"_blank\" rel=\"noopener nofollow\" data-ft=\"{&quot;tn&quot;:&quot;-U&quot;}\" data-lynx-mode=\"async\" data-lynx-uri=\"https://l.facebook.com/l.php?u=http%3A%2F%2Fmos.edu.vn%2Fgioi-thieu-ve-bai-thi-mos%3Ffbclid%3DIwAR0qdTXwiGk0FEtaO9DilomQCa-rTDN2qzRNyHc-0D_m8bytoJwS-9zVYMU&amp;h=AT0k1WcKucoXWS1g5BJdbOD3eSIcSfEGmk-NnzOjilAyr_CqyDR3Cxg_yXN7AC359ZtfQRZZVBKXnTwE8OI60_0fnFh5GQ3Gr32GIGIwj_C-tOcg26td24ze9IimD8hEYB3lmesvzqjMbbgp35ssQATw-SFsGMhtz9aevNWZWGPt1vAPJepXwe-AL9Nuv8g9KzSHUY4miHZxfpdWWgahCUQbz80-yVS8L7nntxYIaWFsTa27AtHTyAxoiGriSheHac-KNxH1vwYoy9g2KW4KzsUnqgzxrb0TZpXyNMzMgC5hAjD6Lhp0pE152b1iAoeXl56wuYZU5al65iuIsbOm89l1SFAd5sCBC-jfBruiF1sv--ddDrOK45GyOlrNJwbx7DgX3aRWsUMlaHICGoFXLoU2Ivet8LeEqZh4M6ntsdTIDCQ53LBE6hnVAuYIFN5u3LHVCJOok4BHs0K3ydFtsgzXxT--1h1Wl5GgmD1HWNuuUnzz2jWKBXpdymgloZh-IJhqoS_irNfYwH17CI0mzKQyn1k7hUcaZFTFxcRaOb_h6P1FJUIXnNfIzWX9scjWl1JTlpalPPplAa9ZXVh7pDwExx437E878q7q-6yy4nNuYdcBtp5LWCo6Kg2ODWv0ykrJ-mJO9LLe7o_UfrkudK5XIWqu9c2c7OLX1jU8IXi1jMpO14ol_nhYTPWa\">http://mos.edu.vn/gioi-thieu-ve-bai-thi-mos</a></p>\r\n</div>', NULL, 'gioi-thieu-ve-bai-thi-mos-2013', NULL, NULL, 'PUBLISHED', 0, '2019-01-06 20:44:00', '2019-01-06 20:44:00'),
(21, 1, 2, 'Danh sách sinh viên bị cấm thi Tin học đại cương đợt 1 năm học 2018-2019', NULL, NULL, '<p>Danh s&aacute;ch sinh vi&ecirc;n bị cấm thi&nbsp;đợt 1 năm học 2018-2019 học phần Tin học&nbsp;đại cương 1 (mos 1).</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/posts/January2019/11.PNG\" alt=\"\" width=\"756\" height=\"439\" /></p>', NULL, 'danh-sach-sinh-vien-bi-cam-thi-tin-hoc-dai-c-ng-dot-1-n-m-hoc-2018-2019', NULL, NULL, 'PUBLISHED', 0, '2019-01-08 20:40:52', '2019-01-14 20:27:44'),
(22, 1, 2, 'Đăng ký Tin học đại cương 1 - đợt 2 năm học 2018-2019', NULL, NULL, '<p>Trung t&acirc;m th&ocirc;ng b&aacute;o mở c&aacute;c lớp Tin học&nbsp;đại cương 1&nbsp;đợt 2 năm học 2018-2019 d&agrave;nh cho c&aacute;c bạn&nbsp;đợt 1 chưa&nbsp;được sắp lớp v&agrave; c&aacute;c bạn học lại.</p>\r\n<p>C&aacute;c bạn v&agrave;o link dưới&nbsp;đ&acirc;y&nbsp;để&nbsp;đăng k&yacute; online,&nbsp;đối với c&aacute;c bạn học lại sau khi&nbsp;đăng k&yacute; li&ecirc;n hệ trực tiếp tại trung t&acirc;m&nbsp;để nộp học ph&iacute; (275.000/1TC x 3 = 825.000) trước ng&agrave;y 25/01/2019.</p>\r\n<p>Hạn cuối&nbsp;để&nbsp;đăng k&yacute;: <span style=\"color: #ff0000;\">22/01/2019</span></p>\r\n<p>Lưu&nbsp;&yacute;:</p>\r\n<ul>\r\n<li>Lớp n&agrave;o&nbsp;đủ danh s&aacute;ch sẽ bị kho&aacute; v&agrave; sinh vi&ecirc;n kh&ocirc;ng&nbsp;được&nbsp;đăng k&yacute; v&agrave;o nửa.</li>\r\n<li>Khi&nbsp;đủ danh s&aacute;ch xếp lớp Trung t&acirc;m kh&ocirc;ng giải quyết c&aacute;c trường hợp kh&aacute;c.</li>\r\n</ul>\r\n<p>Click v&agrave;o&nbsp;đ&acirc;y&nbsp;để&nbsp;đăng k&yacute;: Hết hạn&nbsp;đăng k&yacute;.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://huflit.edu.vn/files/news/2018_05/article.png\" alt=\"Image result for th&Atilde;&acute;ng b&Atilde;&iexcl;o\" /></p>', NULL, 'd-ng-ky-tin-hoc-dai-c-ng-1-dot-2-n-m-hoc-2018-2019', NULL, NULL, 'PUBLISHED', 0, '2019-01-13 23:32:36', '2019-01-22 01:36:32'),
(24, 1, 2, 'Điểm bộ phận Tin học đại cương 1 - đợt 1 năm học 2018-2019', NULL, NULL, '<p>C&aacute;c bạn theo d&otilde;i&nbsp;điểm bộ phận của học phần Tin học&nbsp;đại cương 1 -&nbsp;đợt 1 năm học 2018-2019, c&oacute; bất k&igrave; thắc mắc g&igrave; về&nbsp;điểm li&ecirc;n hệ trực tiếp Trung t&acirc;m hoặc inbox qua fanpage&nbsp;để&nbsp;được giải&nbsp;đ&aacute;p.</p>\r\n<p>Hạn ch&oacute;t ng&agrave;y 20/01/2019 Trung t&acirc;m sẽ chốt v&agrave; kh&ocirc;ng chịu tr&aacute;ch nhiệm mọi sai s&oacute;t.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/posts/January2019/bp1.PNG\" alt=\"\" width=\"600\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/January2019/bp2.PNG\" alt=\"\" width=\"600\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/January2019/bp3.PNG\" alt=\"\" width=\"600\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/January2019/bp4.PNG\" alt=\"\" width=\"600\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/January2019/bp5.PNG\" alt=\"\" width=\"600\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/January2019/bp6.PNG\" alt=\"\" width=\"600\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/January2019/bp7.PNG\" alt=\"\" width=\"600\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/January2019/bp9.PNG\" alt=\"\" width=\"600\" /></p>', NULL, 'diem-bo-phan-tin-hoc-dai-c-ng-1-dot-1-n-m-hoc-2018-2019', NULL, NULL, 'PUBLISHED', 0, '2019-01-14 20:52:39', '2019-01-14 20:53:02'),
(25, 1, 2, 'Danh sách sinh viên - phòng thi Tin học đại cương 1 - đợt 1 năm học 2018-2019', NULL, NULL, '<p>Th&ocirc;ng b&aacute;o danh s&aacute;ch sinh vi&ecirc;n theo ph&ograve;ng thi v&agrave; ca thi, c&aacute;c bạn sinh vi&ecirc;n theo d&otilde;i&nbsp;để tham gia thi&nbsp;đ&uacute;ng giờ, ph&ograve;ng, ca thi qui&nbsp;định.</p>\r\n<p><strong><em>Ph&ograve;ng m&aacute;y 1 - ca 1: 7h00 - 8h00 ng&agrave;y 26/01/201</em><em>9</em></strong></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/posts/January2019/pm1-ca1.PNG\" alt=\"\" width=\"700\" /></p>\r\n<p><em><strong>Ph&ograve;ng m&aacute;y 3 - ca 1: 7h00 - 8h00 ng&agrave;y 26/01/2019</strong></em></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/posts/January2019/pm3-ca1.PNG\" alt=\"\" width=\"700\" /></p>\r\n<p><em><strong>Ph&ograve;ng m&aacute;y 1 - ca 2: 8h30 - 9h30 ng&agrave;y 26/01/2019</strong></em></p>\r\n<p><em><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/posts/January2019/pm1-ca2.PNG\" alt=\"\" width=\"700\" /></strong></em></p>\r\n<p><em><strong>Ph&ograve;ng m&aacute;y 3 - ca 2: 8h30 - 9h30 ng&agrave;y 26/01/2019</strong></em></p>\r\n<p style=\"text-align: center;\"><em><strong><img src=\"http://itacenter.net/storage/posts/January2019/pm3-ca2.PNG\" alt=\"\" width=\"700\" /></strong></em></p>\r\n<p><em><strong>Ph&ograve;ng m&aacute;y 1 - ca 3: 10h00 - 11h00 ng&agrave;y 26/01/2019</strong></em></p>\r\n<p style=\"text-align: center;\"><em><strong><img src=\"http://itacenter.net/storage/posts/January2019/pm1-ca3.PNG\" alt=\"\" width=\"700\" /></strong></em></p>\r\n<p><em><strong>Ph&ograve;ng m&aacute;y 3 - ca 3: 10h00 - 11h00 ng&agrave;y 26/01/2019</strong></em></p>\r\n<p style=\"text-align: center;\"><em><strong><img src=\"http://itacenter.net/storage/posts/January2019/pm3-ca3.PNG\" alt=\"\" width=\"700\" /></strong></em></p>\r\n<p style=\"text-align: left;\"><strong>Lưu&nbsp;&yacute;:&nbsp;</strong>Sinh vi&ecirc;n c&oacute; thắc mắc li&ecirc;n hệ trực tiếp trung t&acirc;m hoặc inbox qua fanpage&nbsp;để&nbsp;được giải quyết. Hết ng&agrave;y 20/01/2019 Trung t&acirc;m kh&ocirc;ng giả quyết mọi thắc mắc, sinh vi&ecirc;n chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm nếu c&oacute; sai s&oacute;t.</p>', NULL, 'danh-sach-sinh-vien-phong-thi-tin-hoc-dai-c-ng-1-dot-1-n-m-hoc-2018-2019', NULL, NULL, 'PUBLISHED', 0, '2019-01-16 20:33:47', '2019-01-16 20:33:47');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(26, 1, 2, 'Danh sách sinh viên đăng ký thành công và xếp lớp học phần Tin học đại cương 1 đợt 2.', NULL, NULL, '<p>Trung t&acirc;m th&ocirc;ng b&aacute;o danh s&aacute;ch sinh vi&ecirc;n&nbsp;đăng k&yacute; th&agrave;nh c&ocirc;ng học phần Tin học&nbsp;đại cương 1&nbsp;đợt 2 năm học 2018-2019 vừa rồi.</p>\r\n<p>C&aacute;c bạn theo thời gian, ph&ograve;ng học&nbsp;để tham gia&nbsp;đ&uacute;ng thời gian qui&nbsp;định:</p>\r\n<p>Học bắt&nbsp;đầu từ 25/02/2019.</p>\r\n<p><img src=\"http://itacenter.net/storage/posts/January2019/c2-4.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p><img src=\"http://itacenter.net/storage/posts/January2019/c2-4.2.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p><img src=\"http://itacenter.net/storage/posts/January2019/c3-5.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p><img src=\"http://itacenter.net/storage/posts/January2019/c3-5.2.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p><img src=\"http://itacenter.net/storage/posts/January2019/c6-7.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p><img src=\"http://itacenter.net/storage/posts/January2019/t2-4-6.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p><img src=\"http://itacenter.net/storage/posts/January2019/t3-5-7.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p>Danh s&aacute;ch gồm 7 lớp./.</p>\r\n<p>&nbsp;</p>', NULL, 'danh-sach-sinh-vien-d-ng-ky-thanh-cong-va-xep-lop-hoc-phan-tin-hoc-dai-c-ng-1-dot-2', NULL, NULL, 'PUBLISHED', 0, '2019-01-22 20:54:53', '2019-01-22 20:54:53'),
(27, 1, 2, 'Đợt đăng ký bổ sung học phần Tin học đại cương 1 đợt 2.', NULL, NULL, '<p>V&igrave; quyền lợi của c&aacute;c bạn sinh vi&ecirc;n hai ng&agrave;nh&nbsp;đại học Ng&ocirc;n ngữ Anh K03 v&agrave; Quản trị dịch vụ Du lịch - Lữ h&agrave;nh K03, nay Trung t&acirc;m tiếp tục cho c&aacute;c bạn c&ograve;n lại chưa&nbsp;đăng k&yacute; th&agrave;nh c&ocirc;ng&nbsp;đợt vừa rồi&nbsp;đăng k&yacute; bổ sung&nbsp;để&nbsp;được sắp xếp lớp cho học phần Tin học&nbsp;đại cương 1 - đợt 2 năm học 2018-2019.</p>\r\n<p>Nếu c&aacute;c bạn chưa c&oacute; t&ecirc;n trong danh s&aacute;ch&nbsp;đăng k&yacute; th&agrave;nh c&ocirc;ng vừa rồi vẫn kh&ocirc;ng tham gia&nbsp;đăng k&yacute;&nbsp;đợt bổ sung n&agrave;y Trung t&acirc;m sẽ sắp xếp c&aacute;c bạn v&agrave;o một lớp bất k&igrave; theo lịch của Trung t&acirc;m, c&aacute;c bạn kh&ocirc;ng tham gia học sẽ bị cấm thi v&agrave; học lại v&agrave;o năm sau</p>\r\n<p><span style=\"color: #ff0000;\">Lưu&nbsp;&yacute;: Tất cả c&aacute;c bạn&nbsp;đ&atilde;&nbsp;đăng k&yacute; v&agrave; c&oacute; t&ecirc;n trong danh s&aacute;ch&nbsp;đăng k&yacute; th&agrave;nh c&ocirc;ng&nbsp;ở tr&ecirc;n&nbsp;website v&agrave; fanpage kh&ocirc;ng&nbsp;được tham gia&nbsp;đăng k&yacute; bổ sung, bạn n&agrave;o&nbsp;đăng k&yacute; lại sẽ bị xo&aacute; bỏ kết quả&nbsp;đăng k&yacute; của 2 lần v&agrave; kh&ocirc;ng&nbsp;được sắp v&agrave;o bất k&igrave; lớp n&agrave;o kh&aacute;c.</span></p>\r\n<p><span style=\"color: #000000;\">Đăng k&yacute; bổ sung: <a href=\"https://forms.office.com/Pages/ResponsePage.aspx?id=RNw6xD_nxE6KKe9vMSVKzIRjAnSjaI5Gq7LP4RcPnBJURDZUVzBUVzRIQkg3OVBUWEVJWUhTV0Q0Wi4u\" target=\"_blank\" rel=\"noopener noreferrer\">Tại&nbsp;đ&acirc;y</a></span></p>\r\n<p><span style=\"color: #000000;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQDxANEBAQFRAPDxUVEBgPEBAPFRAQFRUWFxUVFRUYHCggGBolHRYVITUiJSkrLi4uFyAzODMsNygtLisBCgoKDg0OGxAQGy0lICYtLSstLS8tLi0tLy0tLS0uLS0tLSswLS0tLS0tLS8tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALIBGwMBEQACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABgEDBAUHAgj/xABLEAABAwICAwwGBQkHBQEAAAABAAIDBBEFEgYhMQcTFCJBUVRhgZKT0hZSU3GRoSMyNULRFWJygpSys7TBFzZDc3SDojNVY7HiJP/EABoBAQACAwEAAAAAAAAAAAAAAAABAgMEBQb/xAA8EQACAQMABwQIBQIGAwAAAAAAAQIDBBEFEhQhMVFSExVBoSIyYXGBkbHBMzTR4fAjQiQ1YnKCsiVDU//aAAwDAQACEQMRAD8A7igCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgLVRIWi451WbwslorLwew7VdTnxK48CjZWk2BCKSZLTR7UkBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBACgPDJWnYQoUkyXFrieJ5bFoG0n5KspY3FoxzvLyuUCAIAgLFW0ltgOUKlRZRem0pbzFmY8NGY6hzLFJSS3mWLi3uL1FFbjHl2e5XpxxvKVZZ3GWspiCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAoQjBrJYi11vgtaUWmbUZKSyXnRvu0nXYjYrOMsrJRSjh4M5ZzAEAQBAEBZnhz8tgOpUlHWLRlqnhtORsefgoUGvElzT8DIb1n+iyIoVQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQFuVhOx1vcFVrJKaRZNJfa8/BU7P2l+09hktGpZUYyqAIAgCAhW6liNZS0sdVSTGPLMGy8Rj8zXjUeMDaxA+KwV5SjHMTo6NpUqtVwqLO7cczbuhYr0s+FB5Vou5qczvLRdr0+bLg0/wAU6UfCh8qo7qpzLrRVr0+bLg09xTpR8KHyqu11eZbum16fNnsaeYn0o+FD5VG11eYWibTp82VGneJ9JPhQ+VRtlXmT3TadPmz16dYn0k+HD5VG2VuY7otOnzZX05xLpJ8OHyqNsrcye6LTp82VGnOJdJPhw+VNsrcx3RadPmx6c4l0k+HD5U2ytzHdFp0+bK+nOJdJPhxeVRttbmO6LTp82PTnEuknw4vKm21uY7otOnzY9OcS6SfDi8qbbW5jui06fNlPTjEuknw4vKp22tzHdNp0+bKjTnEuknw4vKo22tzHdFp0+bHpxiXST4UPlTba3Md0WnT5senGJdJPhxeVNtrcye6LTp82PTjEuknwofKm21uZHdFp0+bHpxiXST4UPlTba3Md0WnT5senGJdJPhQ+VNtrcx3RadPmx6cYl0k+HD5U22tzHdFp0+bHpxiXST4cXlTba3Md0WnT5sp6c4l0k+HD5VO21uY7otOnzZT06xLpJ8OHyptlbmO6LTp82V9OsS6SfDh8qbZW6h3RadPmyh06xLpJ8KHyptlbmO6LTp82eTp1ifST4cPlU7ZW5kd02nT5s8nTvE+lHwofKp2urzHdNp0+bKHT3E+lHwofKp2urzI7ptOnzZbOn2KdKPhQ+VWV1V5kPRVr0+bPDt0DFelHwofKrK6qcynddr0+bFNp3i8sscLKs5pZGsb9DDtc4D1etZYV6jaWTFU0dawi5OPBZ4s74wWABNyBrPOukeUPSAIAgIZuuOAwmYHa6WED3760/wDoFYLj1GdLRK/xUfj9DhbAuQz1yLzQqMui60KjLHtQSe2NuQOc21kD5lRxGcbzb4lgboImy52nYHjZZx2ZfWCtKGFkwUrhTlq4NUsZtBCCqApcbLpgFVACAIAgKoSEAQBAEAQBAEB5KkgIChPOpJLtFTGWRsTSAXHaSAAP6+5WSyzFUnqRbMjGsLNO5ozBzXC4OoHVtu2/zVpRwY6NXtEawqEZi24KyKlpwVkVZsNFHBuIUTnbBVR37wCz0X6aNO8WaE8cmfSgXZPEhAEAQHJd2rGQ50GHsd9X6Wa3IdkYPYXH4LRvJ8InoNC0PWqv3L7nNGLnM9AjYUuF1L2h7Keoew7HMgle08hsQLFSqU5LKRV3NGLxKaT95kDBavolV+zzeVR2FTpZG10OuPzR6GDVfRKr9nm8qq6NTpZO10OtfNFqKklex0jYpHMZfO5sb3NbYXOZwFhq161RQk1lIyutTjJRcll+0pJM9wa1ziQwWaCb5R1KrbZeMUnlIrT08kjskbHvda9o2OebDls0XtsSMZSeEiKlSFNZm0l7TzJG5ri1zS1zTZwcC0g8xB1hQ008MmMlJZT3F+gia+VjHl4YXDPvTDI/Ly5WjaeTtVqUVKWGUrzlCm5Rxnwy8I6C5xeHUj8LqBhu9BsbmQO4Q1zdYkN9ZueS3vvchdZ71quHo+Z5pei1VVZdrnes+j7uRzqojyvcwZrNcQMzSxxHIS07D1Lk1I6smj01KbnBN+TyvmUiic9wYxrnOdsDGlzjy6gNZVVFyeEWlOMVrSeEVqKd8bskjHsda9pGOYbHYbEXtqPwSUJR4oiFSE1mLyvYW1UuXpqSVjWvfFI1r/ql8b2NdqvxSRY6uZXdOSWWjHCtTm3GMk2iyqGQyKShmmNoopZP8uN7/jYalkjSnL1UYqlxSp+vJL4mTUYHWRjM+lqGjnMMlh7zbUrSt6q4xZihfW83hTXzNeViNoooBnU2EVUgDo6aoc0i4LYZCCOcG1issaNSXBGvO7oQeJTS+J4q8NqIdcsEzBzyRPYPiRZJUZx4omnc0qnqST+JiFYzOUQEyoa9mH0BdFTyuqpy3PJUUr2xRNOxrHOFndXOSTssF0YyVGllLe+aODUpSvLrE5pRXBJ72Q5zySXEnMTcm+u+291oOTbyd1RSWPApPK55zPcXE8rjdTnJVRUdyMmiwOrnGaGmme3nbG7Kfc46is0KFSXBGvVvKFN4nNIxq/Dp4DlmhljP/kY5t/cSLFRKlKPFF6VxSq+pJMwXBQXZazFpDmmzmkFp5iNYKyReHkxySawz6V0dxZlZSw1TDqkZr/NeNT2nrBBC7UJKUUzw1ei6NRwfgbJXMIQEZ010vhw6EkkOqHj6GMEXJ5HO5mDn7Fiq1VBG5aWc7iWFuXizgVXWSTyyVErs0kry55ta7j1cgXKqScnlnr6VONOKhHgijVhZnJLhWmVfTQsp4ZmtjZfKN6ida5LjrIvtJWaN1OKwjSq6Mt603OaeX7Sf6O6SVc2D11bJIDPAZt7dkYA3JCx7eKBY6yVvUaspUnJ8Th3VlSp3sKMfVePNkP8A7QMTP+O3wYfKtHbap2e5rTk/mbzQz7DxT/f/AJdi2LZ/4eXx+hoaSX/kKXw+pz9co9MTDcp+0T/pZP3o1vaP/EfuOLp38sv9y+5qNK2F2I1bWglzqlwaBtc4usAOslYLhZrNLmbdg1G0hJ8FHJMqp0WBUrGxtZJX1DTmc7kHKbeoDYBuq528q35atrDdxZxaaqaUrPWeKcf582Rcac4kHZuEk69higseq2XYtPba2eJ1e57TGNXzeSVvjhxyifMGNZXU4txdZJtcA87Ha7X2G/Mb7uIXVPPijkKVXRlwo5zB/wA+aIfoF9qUf+Y/+FItKzWKyO1pXGxzx7Pqic6bYa3EIZ3xNHCsPlLHC+t8eUPy9ocHDrBHKV0LqkqsXjijgaNuJWlSKn6k198ZOUX1LiHrzom6H9m4Z+p/AXVvPwY/A83on83V+P8A2NRoPo3HU75V1Ry0lPfNc5RI4C7ru5GtFiee461gtLdTzOfBG3pS+lRxRpeu/L9zJxfdBm/6NC1kEDNTCGNc4tGwhrhlYLclr9atVvmninuRjt9Cw9a4etJ8d5gU+nuJMcHGcPA2tkhiyn35Gg/NYlfVV4mxPQ1pJYUce5/qRyeUve+Rxu573OcedziST8SVqylrPLOnCKhFRXhuPCqWOnaQYvUUmEYY+nlMbnxxNcQ1jrt3gm3GB5QF2a1WVKhFxfL6HlbO2pV72rGosrf9TWaJaaVUlVHTVThNFUO3s5mRtLS7UDxWgEchB51htruc56s9+Ta0hoqjTpOrSWq1v4mh02wyOlrpYYgBGQ17Wj7geLlo6gb26iFr3dNQqNI39F15VrZSnxW4xNG8O4TWQU5BLXyDPb2beM/5AjtVLanr1EjNfVuxt5T8cbvezqeKSR4jHiWHNtnpywR/phgc0+4PaW9i7E2qqlDkeToKdpOlXfB/qcXB1XXCxg9wTXQLAIHxy4nWW4PT5soeOK4tF3PPrAbLcpXQs6Cx2k+BwNK3lRSVvS9Z8fj4GJi26HXSyF0D94i+4xrInm35znNNz7rBVqXtRv0dyMtDQ1CEf6i1nzNroppmap/5OxIRyx1Byte9rG8Y/VY4NABubAEWINlmoXPaPUqeJp3+jFQXbW+Vjw+5EtNcA4BVugaXGJzQ+Eu2lhJ4pPKQQR8OdYLil2c93A6Vhd7TRUnxW5kdeFiRuMle53pmcPlMMxJpJnDNb/BebDfB1W2jtW5b1tTc+ByNJWPbrWj6y8/Yd2palkrGyxva9jwCxzCHBzTsIIXRTzvR5aUXF4a3l1SQfKU9XJNIZZZHvkd9Z0ji4ntK5Em3xPcU4RgtWKwj1GsTM8TIasbLoutVGXR0fRH+72Ke+o/l4l07b8u/iedvv8ypf8fqznwXJPRnTdzqFkmE18cr8kb5ZGyPuBkYYIw51zqFhr1rq2aToNP2/Q8zpeUo3kJRWWksL4mH6KYP/wB1b4tP+Cx7Nb9f0NjvK+/+PkzeaHYHh8FVvlLXCaXeXNyCSF3EJbd1m69Vh8VsW9GlCWYSyaGkLu5q0tWrT1Vnjh8fiRyigD9InNdsFZI7tY1zh8wFqxWbvfzOlUk46KTXSvqY+6g8nEXDXZsMYHzOr4ql+/6nwMug0la55tkRWidgm+5LIRXStubOpiT1lr2WPZc/FdDR7eu17Dhaeiuwi/8AV9mWsKhDNIgxuwVk9uq7JT/VTSWLp+9lq8nLReX0x+qM2px3gOPVL3H6GVzGTC9gAY4yH+9p+RcryrdncvPB4MELPadGxx6yy183uNZui6PilqOERgbxUkublGpkm1zeax+sO3mWK9o6ktZcGbWh7ztqfZz9aP0/Y3O6H9mYZ7mfwFmvPwY/zwNTRH5yr8fqe6h5i0ZZl/xbB1uZ85J+WpS/RtNxSC7TSrz4N+SOcgXIHOuUll4PSt4RK/7OsR9WDxv/AJW73fU5o5Hfltyl8v3I5iVC+nmkp5bb5EQHZTmFyA7UeXUQtSrTdOWqzp0K0a1NVI8GYyxmU6rilBTT4VhzaqqFOxsURa42OZ282y6+q57F3JQhOhFTeOB5ChWrUryq6UNZ5e74+w8aN6PUUJdVUUzKypjad7a6WNjWOOq9gCWm3KbqKNClD0oPLLXt7cVcU661IvjhP7nPMemnfVTPqWls5kO+NP3DsDR1AWt1LlV3NzbnxPR2caUaMVSeY8yV7mkbYWVuJyj6OniLWnrAzyAdgYO1btjHVUqjOTpubqShbx4t5+yNboFjmTFGySPA4Y57X2Itvkjszf8AnYfrKlpUarNvxNjStqnaasV6mPLiYOm2Gimr54mizHO3xnJxZONYdQdmHYsV1T1KrRsaMr9tbRk+K3fL9iXY0wR6NU7W6hIyBzrarl7hI6/aVv1PRtt3sOPb+npWWfBy8jmBXJPTs8PeWguabObraRtDhrBHarw4opJZWGdN3aIgY6KX72eRv6rmtcfm0fFdS9XopnmtBtqpOPhg5S9c5HomY71liY2bnRbS+tw94bTuzxuOuF4c9jj+aBrafd81s06ko8Dn3dpSrLMtz5nZaDSqvkiZI7B6oOc25tLAB2B5Dh2hbiqS6Tz07akpNdovP7EQ0/3NWxtdWYe0hrReWEXdZvK6K/7vw5lgrUN2YnSsNJ5fZ1vg/wBTmUa57PQoyGLGy6LzVRlzpGiP93sU99R/LxLp235d/E87e/5lS/4/U56FyT0h0TQz7DxT/f8A5Zi6dt+Xl8foec0j/mFL4f8AY5+uUekJjuU/aJ/0sn70a39H/iP3HG07+WX+5fRmLiGIcGxqWp5IqxxdbaWEkOt2Eqs56lzrPmZKdHttHKmvGJt91TDHb5FiDONFLG1jiNYa4XLDfmcD8R1rNf0m8VEaegrhKLoS3POUQFcw9CdE3M6HeIqjFZuLEIy1l9V2N40jusXa0DrBXVsaepF1JHmtNVu1qRtob3nf72aDQ6pdNjNPM760s8rz1F0cpt81gtpa1xn3nQv6fZ2EoLwSXmi3ug/alX+kz+FGsd5+M/gX0T+Th8fqyR6IVbcRoJcHmcBJHH/+dx1nKDdpA/MNh+iQtu2mq1N0pcUczSFKVncq6p8G9/3+Y3QmObhmGseLPYWteOZzYSCPiCl4mqMUxoeSld1WuDz9S/ouG1+CzYc0jfobgBx5S8yRO917t/VKtQ/q27h4lL7Npfqu+D3/AGZziaFzHOje0tew2e1wsWuHIVypRcXhnpoTjOOtB5TN/oDI44nSguP1n7SfZSLas5SdZZZzdLQirSbS5fVFrTr7TrP81v8ADYq3v4zMmivycPj9WaJah0DoGm32NhXui/lyurdfl4/D6Hm9Gfnqvx/7EOwF721lM6K++cIjDLbTdwBHuIvfqutG3bVRY5nbvFF0J6/DD/bzJXuuNaKqBwAzGnOfnsHnLf8A5Lc0ilro5OgG+ymnwz9jbOxA4PhNJGYmvmnJLmyahx7yOzW25QWt+Cz6+z0Y7jSVHvC8m08JePu3Gl/tHkGsUNLcbPrD52WBaQ/0m93FF/8Asfy/czN0yNlTS0eJxi7XANcRyMkGZod7nAj3uWS8ipwjURg0NOVGvO3l/Gv2L+DMOJYE+jYRv9PZrRsuWOzxj3Obxb89+ZXp/wBa31VxMVy9j0iqr4Pf8+JzB7SCQQQQSCCLEEaiCOQrlNNbj1CaayuBsNHMGdW1UdK0HK43lOviQj65J5NWodZCz0KbnNI1L25VvRc3x4L3kk3YMVEtVFStOqlYS+1j9JJlNveGtb3ltXs02orwOXoSg405VX/d9DnzytRHaMnAsEmrqhtNA27nfWP3Y2XAL3dQWelBzeEalzcQoQ1pHd9ENCqXDmAsaH1BbaSVw4xPLlH3B1DtuunTpKB5S6vKld7+HIkqyGoCgOE7qWjraOsE0QtDV5ngAABkgIztFtg1g9pXNuqerLKPVaJunVp6suMfoRGNaTOui8wqjLoleB6TxQYZWYc6OUyVJlyubkyN3yJjBmu6+1vIFt0riMKTg+JzLixnUu4V01hY9+5kbC0DrEowHSaOnw+soXRyOfVb5lc3JlbniawZrkHaL6gtyjcRhScH4nKurCpWuoVk1hY8nkjS0jrG90NxxlDVGpkY97d5cy0eW93FpvxiBbirYta0aU8yNDSVpK5pakXjfneYGN1raiqnqGghs0rngOtcAnYbarrHWmpzckZ7Wk6VGNOXFLBvdG9M3U0XBKiIVFKQRlfYuaw/dGbU5v5p+K2aN44rVmso0LzRSqz7WlLVn9+fsZsTimj7TvwopnP272QS2/NldJkt8ll7W1T1sGrs2lGtRz3c8/dbzT6T6XS1rRA1jYaZhGWNh+tb6uciwIHI0Cw67Ba9xdOotVbkbtjoyFu9eT1pc+XuNdo5iLaWrgqntc5sLnEhlsxuxzdVyB95Y7eoqc1Jm1e0JV6EqceL/VFdJcSbV1c1UxrmtlLSA+2YWY1uuxI+6ouKiqVHJEWVCVChGnLiv1MXDa59PNHURGz4nZm32HkIPUQSD71WlNwkpIzV6Ma1N05cGSXTXS6LEIYY2RSsdFJmdnyWN2ltm2JO08oW3dXMasUkcvRujalrUlKTTTX3I9hGKTUsrZ4Xlrm7Rryvb6rxyhalOrKnLMTpXFtTuIak1+3uJidMsPqrGvw8GS1s8QY82GwB12vA26rlb+10Z/iR3nE7ru6D/wAPU3cs4/YQaTYPSuEtLQymVt8rn2GUkEanOe4jUSNQ5VMbm3g8wjvE9H39datWosfzkQ/GsRNVUzVRaGmZwJaDmDbNDQL8uxaFap2k3I7VrQ7ClGnnODBWI2CfR6V4bLR01JV01Q/g8bBxcoGdrMuYFsgNtu1dPaaMoKM09x516OvKdaVWlJLLf1zyLUWl2HUvGocOtLazXzltxfbZ13O7LhQrqjT/AA47y70Zd191eru5L+YIvUYo6erFXVFzgZGueGbRG03yMDjYC2oa+Vana69RSmdSNsqVB0qO7d/Mmw010lGITRvY17IomWa1+W+cm7nHKSORo7FkurhVWscEYNGWDtINSabfIjy1TpEoodKom4XLhc0Uji4P3pzQwtbc52F2ZwNw+51cllvU7iPYunI49XR9R3iuINY3Z+5pcDxuaimE8LtdrPa65ZI3mcAdfUeRYKNaVJ5Ru3dpTuYak/g+RLJtJMGrPpK2ikZObZ3Q3452a3sc1ztn3gt116FTfNHHVjf2/o0Z5j4b/s+BYqdOqemjdBhVIIsws6SUNzE8jrAkvPW49iO6hFYpotDRVWtLXup59n8+xAJZHOJc5xc5xJcXEuc4naSTrJPOtLLbyztKKisJYRjyHlV4lWd63N9GhQ0bHPa3hE4D5jYXAOtsd+YD53XXoU9SPtPH6Ruu3qvHqrcv1JcsxoBAEBBd2Oka/DDKRxoZ43NPNmdkP73yWvdLMDqaIm1cpc0ziTCuSz1iLzVRl0XWlUZY9KCT2CowSVBUE5K3QC6AXUAKQLoBdALoBdALoBdALoBdALoBdALoAoAJQgXU4JKXQg8kqQUKkg8kqQW3KyKstOKsihlYFSiespoD9WSoja7raXC/yus9JZkjWuZ6lKUl4I+mQF2Tw5VAEAQED3Za5seG70Txp542tHUw5yf+I+K17l4gdTREG7jW5JnEWOHOFy2j1aLzXBY2i6LjXKrRYuByrgkqCmCT1dQSLoQVuhIBUYIK3QC6YBS6YJF0wBdMEC6YJF0wQLpgkrdMAXTBAumALpgC6YBS6ApdSAgKXQHklTgg8lylIFtzlbBVlt7grpFS/gleIKumqCRaKeNzv0Q4X+V1mpbpJmtcw16Uo80fTzTcXXYPDlUAQBAYtZh0E1t+hiky3y75G2TLfba41bAoaT4lozlH1Xgw5MGoW7aSm/Z4/wAFjcYLijKq1Z8JP5nn8l0HRaf9nj/BRiny8i3aV+p/MvNwOjIvwSn7YI/wVlThyXyKbRW6382V/IVH0Wm8CP8ABT2UOSG0Vup/NnJcQwuOKaSIxMBY8j6jdl9S5c4JSaOpC6quK9JmPwSL2bO61U1Yltpq9THBIvZs7rU1Yjaa3UxwSL2bO438E1UNprdT+Y4LF7Nndb+CasRtNbqY4JF7NndampEbTW6mOCxezZ3QmrHkNprdTHBIvZs7rU1UNprdTHBIvZs7rU1ENprdTHBIvZs7rU1Yjaq3UxwSL2bO61NWPIbTW6mU4LF7NndamrEbTW6mOCRezZ3QmrEbVW6mOCRezZ3QmrEbTW6mOCR+zZ3Qo1Yk7TW6mV4JF7NndCnViRtNbqY4JF7NndampEbTW6mOCxezZ3W/gmpEbTW6mOCRezZ3WpqRG01upjgcXs2d1qaqG01upjgcXs2d1qaqG01upjgcXs2dxqasRtNXqZNNz/BIHtmkfTwuGZrW54mO1gEm1x1hbltSi020ad1dVcpaz+ZLvyDR9EpvAj/BbfZw5I1doq9T+bLcmD0TdtJT/s8f4KrjBeHkWVas/wC9/Nlv8l0HRab9nj/BR/T5E9pX6n8y63AKIi/A6btp4vwV9SPIo69XqfzNm0AAAbBstyBXMJVAEAQFqpkLW3HOqTeFktCOXgxJ58wAtZYpzyjNCGqy9RuBFrC4+ayU2mjHUTTMpZDGEBGdKtGeE/TRECYDWDqEgGy55D1rXr0NfeuJno1tTc+BBKvCaiI5ZIZAf0S4H3EaloypyXFG4qkXwZjGB/qP7rlGq+ROshvL/Uf3XKNV8hrIby/1H91yar5E5Q3l/qP7rk1XyGUU3l/qP7pU6r5EayPDgRtBHvBCjDJyil1AF0AugF0JF0AugGZAexG47Gu7GkqcMjKK7y/1H90qdV8iNZFd5f6j+65NV8hrIby/1H91yar5E5Q3l/qP7rk1XyI1kVFO87GP7GuTVlyGsuZucJ0VqZ3AuYY4+Vz9Rt1N2krLC3lLiYp14x4HRsOomQRNhjFmtHaTyk9ZXQjFRWEaMpOTyzKViChQGtmkBdcDUPmtaT3mzGLSL/CiSABa5G1ZO08DH2e4zFlMQQBAEBYq2ktsOcKlRZRem8PJ73kFoaRsCnVWMEazzk8xU4abi6iMEmTKbawXlcoEAQBAEATAFkAsgCA8uYDqIB94BUYQyafENF6SbWYg13PFxD8BqPwWKVGEvAyRrTj4kLxzRKanBkZ9JEPVHGaOdzf6halS3lHejap14y3Mjq1zOEBeo6SSZ4jiYXOPI0cnOeYdatGLk8IiUkllk3wnQVgGapfmPqxktaPe7afktyFql6xqTuX/AGkoo8MghFo4mN9zRftO0rZUIrgjA5yfFmUArFSqAIAgCAIAgCAICjhyKGCwylaOc+9VVNIu6jYqI9bXDkOtROO9MmEsJoyFkMYQBAEAQBAEAQBAEAQBAEAQBAEAQBAEBBNNNGQ0Oq4G2A1ysaNVuV4/qO1aVxR/uibdCt/bIiGH0b55WQxi7nmw5gOUnqC1YxcnhGzOWqss6vgWDR0kYYwXcfruO15/oOpdOnTUFhHOnNzeTZrIUCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAICjmggg7CNfWEBotHdHm0kk7xr3x9o+XLFtt8SfgFhp0lBtmWpVc0kb5ZjEEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQH//Z\" alt=\"Image result for th&Atilde;&acute;ng b&Atilde;&iexcl;o\" /></span></p>', NULL, 'dot-d-ng-ky-bo-sung-hoc-phan-tin-hoc-dai-c-ng-1-dot-2', NULL, NULL, 'PUBLISHED', 0, '2019-01-22 21:07:42', '2019-01-22 21:07:42'),
(28, 5, 2, 'THÔNG BÁO DỪNG BÀI THI MOS 2010 (IIG)', NULL, NULL, '<p>Trung t&acirc;m CNTT&amp;MTUD gửi đến học vi&ecirc;n th&ocirc;ng b&aacute;o của IIG Việt Nam về việc dừng cung cấp b&agrave;i thi MOS 2010.</p>\r\n<p>Học vi&ecirc;n xem kỹ th&ocirc;ng b&aacute;o để sắp xếp kế hoạch học tập cho ph&ugrave; hợp.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/posts/February2019/CV 1281 TB dừng b&agrave;i thi MOS 2010-1.jpg\" alt=\"\" width=\"700\" /></p>', 'posts/February2019/QzGZCPm1hnBTdUrpxJJA.jpg', 'thong-bao-dung-bai-thi-mos-2010-iig', NULL, NULL, 'PUBLISHED', 0, '2019-02-18 18:11:42', '2019-02-18 18:15:50'),
(29, 1, 2, 'Danh sách sinh viên - phòng học - Tin học đại cương 1 đợt 2 năm học 2018-2019.', NULL, NULL, '<p>Trung t&acirc;m CNTT&amp;MTUD th&ocirc;ng b&aacute;o&nbsp;đến c&aacute;c bạn sinh vi&ecirc;n K03 của hai ng&agrave;nh&nbsp;đại học Ng&ocirc;n ngữ Anh v&agrave; Quản trị DVDL-LH danh s&aacute;ch lớp, ph&ograve;ng học v&agrave; cơ sở&nbsp;để sinh vi&ecirc;n theo d&otilde;i v&agrave; tham gia học&nbsp;đ&uacute;ng theo qui&nbsp;định.</p>\r\n<p><span style=\"color: #ff0000;\"><strong>Lưu&nbsp;&yacute;</strong></span>: V&igrave; kh&ocirc;ng&nbsp;đủ ph&ograve;ng&nbsp;để mở lớp mỗi tuần 2 buổi n&ecirc;n trung t&acirc;m r&uacute;t lại học trong 15 tuần v&agrave; mỗi tuần một buổi 5 tiết.</p>\r\n<p><strong><span style=\"color: #ff0000;\">DANH S&Aacute;CH C&Aacute;C LỚP CỤ THỂ:</span></strong></p>\r\n<p><span style=\"color: #0000ff;\">1. MOS1K3_06</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/06.01.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/06.02.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p><span style=\"color: #0000ff;\">2. MOS1K3_07</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/07.01.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/07.02.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p><span style=\"color: #0000ff;\">3. MOS1K3_08</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/08.01.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/08.02.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p><span style=\"color: #0000ff;\">4. MOS1K3_09</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/09.01.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/09.02.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p><span style=\"color: #0000ff;\">5. MOS1K3_10</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/10.01.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/10.02.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p><span style=\"color: #0000ff;\">6. MOS1K3_11</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/11.01.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/11.02.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p><span style=\"color: #0000ff;\">7. MOS1K3_12</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/12.01.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/12.02.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p><span style=\"color: #0000ff;\">8. MOS1K3_13</span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/13.01.JPG\" alt=\"\" width=\"700\" /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><img src=\"http://itacenter.net/storage/posts/February2019/13.02.JPG\" alt=\"\" width=\"700\" /></span></p>', NULL, 'danh-sach-sinh-vien-phong-hoc-tin-hoc-dai-c-ng-1-dot-2-n-m-hoc-2018-2019', NULL, NULL, 'PUBLISHED', 0, '2019-02-18 18:40:28', '2019-02-19 20:32:00'),
(30, 1, 2, 'Kết quả thi kết thúc học phần Tin học đại cương 1 - đợt 1 năm học 2018-2019 ngày 26/01/2019.', NULL, 'Kết quả thi kết thúc học phần Tin học đại cương 1 đợt 1 năm học 2018-2019 khoá thi 26/01/2019.', '<p>Trung t&acirc;m th&ocirc;ng b&aacute;o&nbsp;đến sinh vi&ecirc;n kết quả thi kết th&uacute;c học phần Tin học&nbsp;đại cương 1&nbsp;đợt 1 kho&aacute; thi ng&agrave;y 26/01/2019.</p>\r\n<p>C&aacute;c bạn tham gia thi theo d&otilde;i kết quả, nếu c&oacute; bất k&igrave; thắc mắc về&nbsp;điểm li&ecirc;n hệ trực tiếp trung t&acirc;m v&agrave;o giờ h&agrave;nh ch&iacute;nh hoặc inbox fanpage&nbsp;để&nbsp;được giải&nbsp;đ&aacute;p thắc mắc.</p>\r\n<p>Đối với sinh vi&ecirc;n muốn ph&uacute;c khảo&nbsp;điểm phải l&agrave;m&nbsp;đơn xin ph&uacute;c khảo v&agrave; tr&igrave;nh trung t&acirc;m trong thời gian 3 ng&agrave;y kể từ ng&agrave;y c&ocirc;ng bố&nbsp;điểm. Hạn ch&oacute;t nhận&nbsp;đơn ph&uacute;c khảo&nbsp;đến hết ng&agrave;y 22/02/2019.</p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/February2019/1.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/February2019/2.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/February2019/48-75.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/February2019/76-103.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/February2019/104-130.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/February2019/6.JPG\" alt=\"\" width=\"700\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"http://itacenter.net/storage/posts/February2019/7.JPG\" alt=\"\" width=\"700\" /></p>', NULL, 'ket-qua-thi-ket-thuc-hoc-phan-tin-hoc-dai-c-ng-1-dot-1-n-m-hoc-2018-2019-ngay-26-01-2019', NULL, NULL, 'PUBLISHED', 0, '2019-02-18 20:42:24', '2019-02-19 01:39:46'),
(31, 5, 2, 'THÔNG BÁO ĐĂNG KÝ HỌC MOS1 VÀ MOS 2 ĐỢT BỔ SUNG (3/2019)', NULL, NULL, '<p>Trung t&acirc;m CNTT&amp;MTUD xin th&ocirc;ng b&aacute;o:</p>\r\n<p><strong>Tuyển sinh đăng k&yacute; học học Tin học đại cương MOS1 v&agrave; MOS 2 (Đợt bổ sung), cụ thể như sau:</strong></p>\r\n<p>1. Thời gian bắt đầu học: <span style=\"color: #0000ff;\">11/3/2019</span></p>\r\n<p>2. Lịch học cụ thể:</p>\r\n<p>- Lớp MOS 1 (Học lại): 1 lớp tối thứ 4 - 6</p>\r\n<p>- Lớp MOS 2: 1 lớp s&aacute;ng thứ 3-5 v&agrave; 1 lớp chiều thứ 6</p>\r\n<p>3. Hạn ch&oacute;t đăng k&yacute; v&agrave; nộp học ph&iacute;: <span style=\"color: #0000ff;\">8/3/2019.</span></p>\r\n<p>Lưu &yacute;:</p>\r\n<p>- S&aacute;ng học từ 7h00 - 10h30</p>\r\n<p>- Chiều học từ 13h00-17h20</p>\r\n<p>- Tối học từ 18h00 - 20h30</p>\r\n<p>- Sinh vi&ecirc;n đăng k&yacute; học v&agrave; đ&oacute;ng tiền trực tiếp tại văn ph&ograve;ng trung t&acirc;m (Gần cổng giữ xe CS1) trong giờ h&agrave;nh ch&iacute;nh</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, 'thong-bao-d-ng-ky-hoc-mos1-va-mos-2-dot-bo-sung-3-2019', NULL, NULL, 'PUBLISHED', 0, '2019-02-25 21:03:50', '2019-02-25 21:03:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regular_classes`
--

CREATE TABLE `regular_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regular_classes`
--

INSERT INTO `regular_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ngoại Ngữ', '2018-06-02 22:50:26', '2018-06-02 22:50:26'),
(2, 'Du Lịch', '2018-06-02 22:50:56', '2018-06-02 22:50:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-04-28 07:37:26', '2018-04-28 07:37:26'),
(2, 'Quantrivien', 'Quantrivien', '2018-04-28 07:37:26', '2018-08-21 01:33:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services_fronts`
--

CREATE TABLE `services_fronts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services_fronts`
--

INSERT INTO `services_fronts` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`, `body`) VALUES
(1, 'Thiết kế website trọn gói', 'Thiết kế website, đăng ký tên miền, đăng ký hosting, cài đặt ssl, quản trị website, cập nhật luôn dữ liệu cho khách hàng', 'services-fronts/May2018/4rx79U8I5Jn2e7IadX9I.jpg', '2018-05-23 02:17:00', '2018-08-08 19:06:37', '<div class=\"chitietsanpham-tieude\" style=\"overflow: hidden; color: #000000; font-family: Arial; font-size: 12px;\">\r\n<div class=\"chitietsanpham-boc\" style=\"overflow: hidden; margin-top: 10px; position: relative;\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Thiết kế website trọn g&oacute;i l&agrave; dịch vụ thiết kế website bao gồm c&aacute;c dịch vụ đi k&egrave;m như: Thiết kế website, đăng k&yacute; t&ecirc;n miền, đăng k&yacute; hosting, c&agrave;i đặt ssl, quản trị website, cập nhật lu&ocirc;n dữ liệu cho kh&aacute;ch h&agrave;ng.<br /> </span><span style=\"font-size: 16.0pt; mso-bidi-font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; color: red;\">Hiện tại ch&uacute;ng t&ocirc;i đang triển khai g&oacute;i website trọn g&oacute;i với c&aacute;c ưu đ&atilde;i:</span><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\"><br /> - Miễn ph&iacute; t&ecirc;n miền quốc tế (.com, .net, .org...) năm đầu<br /> - Miễn ph&iacute; hosting dung lượng lớn 2GB băng th&ocirc;ng kh&ocirc;ng giới hạn trong năm đầu.<br /> - Miễn ph&iacute; chứng nhận SSL 1 năm<br /> - Giảm 50% chi ph&iacute; cập nhật to&agrave;n bộ nội dung website lần đầu.&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 16.0pt; mso-bidi-font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; color: red;\">Ch&uacute;ng t&ocirc;i c&oacute;:</span></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-bottom: .0001pt; mso-add-space: auto; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Đội ngũ nh&acirc;n vi&ecirc;n tư vấn nhiệt t&igrave;nh v&agrave; năng động, am hiểu chuy&ecirc;n m&ocirc;n. Sẵn s&agrave;ng lắng nghe v&agrave; tư vấn cho kh&aacute;ch h&agrave;ng những yếu tố quan trọng trong website m&agrave; kh&aacute;ch h&agrave;ng cần thiết kế. Đảm bảo&nbsp;thiết kế website theo y&ecirc;u cầu&nbsp;của kh&aacute;ch h&agrave;ng, cũng như ch&acirc;n th&agrave;nh g&oacute;p &yacute; c&aacute;c điểm cần sửa, cần bổ sung.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: .0001pt; mso-add-space: auto; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Đội ngũ Designer s&aacute;ng tạo, năng lực l&agrave;m việc cao, gi&uacute;p biến những &yacute; tưởng của kh&aacute;ch h&agrave;ng th&agrave;nh những bản&nbsp;thiết kế website&nbsp;sinh động, độc đ&aacute;o. Sẵn s&agrave;ng chỉnh sửa&nbsp;thiết kế web theo y&ecirc;u cầu&nbsp;của qu&yacute; kh&aacute;ch cho đến khi qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-bottom: .0001pt; mso-add-space: auto; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Đội ngũ Coder tay nghề cứng với nhiều năm kinh nghiệm, th&agrave;nh thạo nhiều ng&ocirc;n ngữ lập tr&igrave;nh, c&oacute; thể ho&agrave;n th&agrave;nh nhiều chức năng kh&oacute;, nhiều dự &aacute;n lớn, đảm bảo website lu&ocirc;n hoạt động hiệu quả.&nbsp;Thiết kế web theo y&ecirc;u cầu&nbsp;v&agrave;&nbsp;chuẩn SEO, gi&uacute;p website của doanh nghiệp dễ d&agrave;ng đạt Top tr&ecirc;n bộ m&aacute;y t&igrave;m kiếm Google.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><strong><span style=\"font-size: 16.0pt; mso-bidi-font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; color: red;\">Quy tr&igrave;nh thiết kế website trọn g&oacute;i:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><strong><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Bước 1: Tiếp nhận y&ecirc;u cầu&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Sau khi nhận được những y&ecirc;u cầu của kh&aacute;ch h&agrave;ng, ch&uacute;ng t&ocirc;i sẽ t&igrave;m hiểu v&agrave; x&aacute;c nhận lại những y&ecirc;u cầu của kh&aacute;ch h&agrave;ng qua email hoặc điện thoại.<br /> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\"><strong>Bước 2: Tư vấn kh&aacute;ch h&agrave;ng v&agrave; b&aacute;o gi&aacute;</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Dựa v&agrave;o những th&ocirc;ng tin do kh&aacute;ch h&agrave;ng cung cấp, ch&uacute;ng t&ocirc;i ph&acirc;n t&iacute;ch để hiểu r&otilde; mục đ&iacute;ch, y&ecirc;u cầu, nguyện vọng ... của kh&aacute;ch h&agrave;ng.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Ch&uacute;ng t&ocirc;i tư vấn th&ecirc;m v&agrave; gửi b&aacute;o gi&aacute;<br /> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\"><strong>Bước 3: K&yacute; hợp đồng thiết kế website</strong>&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Sau khi đ&atilde; chốt được y&ecirc;u cầu v&agrave; chi ph&iacute; thiết kế website &nbsp;hai b&ecirc;n tiến h&agrave;nh k&yacute; kết hợp đồng</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Lập kế hoạch thực hiện dự &aacute;n:&nbsp;thời gian v&agrave; nh&acirc;n sự &nbsp;<br /> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\"><strong>Bước 4: Thiết kế giao diện</strong>&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Dựa tr&ecirc;n bản hồ sơ&nbsp;<a title=\"Thiết kế website\" href=\"https://tamnguyen.com.vn/\">thiết kế website</a>, chuy&ecirc;n gia thiết kế của ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh c&ocirc;ng việc thiết kế s&aacute;ng tạo giao diện cho website. Tại bước n&agrave;y kh&aacute;ch h&agrave;ng c&oacute; thể c&ugrave;ng bổ sung, đ&oacute;ng g&oacute;p &yacute; kiến để ho&agrave;n thiện bản thiết kế.<br /> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\"><strong>Bước 5: Duyệt giao diện Demo</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Gửi Demo giao diện đ&atilde; thiết kế cho kh&aacute;ch h&agrave;ng duyệt</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Kh&aacute;ch h&agrave;ng duyệt demo v&agrave; y&ecirc;u cầu chỉnh sửa đến khi h&agrave;i l&ograve;ng</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Chốt duyệt Demo giao diện website<br /> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\"><strong>Bước 6: &nbsp;Thiết kế cơ sở dữ liệu v&agrave; Lập tr&igrave;nh t&iacute;nh năng</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Sau khi giao diện được thiết kế xong, lập tr&igrave;nh vi&ecirc;n tiến h&agrave;nh cắt html v&agrave; l&ecirc;n layout với css.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Tiến h&agrave;nh gh&eacute;p code v&agrave; ho&agrave;n thiện c&aacute;c t&iacute;nh năng</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Cập nhật 1 số nội dung mẫu cho website&nbsp;<br /> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\"><strong>Bước 7:&nbsp;Ph&aacute;t h&agrave;nh bản Beta v&agrave; Kiểm thử&nbsp;</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Ch&uacute;ng t&ocirc;i up website l&ecirc;n server demo để phục vụ việc kiểm tra t&iacute;nh năng trước khi nghiệm thu</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Chạy thử c&aacute;c t&iacute;nh năng v&agrave; tiến h&agrave;nh sửa lỗi nếu c&oacute;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Bổ sung y&ecirc;u cầu v&agrave; lập tr&igrave;nh th&ecirc;m t&iacute;nh năng nếu cần&nbsp;<br /> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\"><strong>Bước 8:&nbsp;Chuyển giao v&agrave; Đ&agrave;o tạo&nbsp;</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Sau khi ho&agrave;n tất việc nghiệm thu, bản ph&aacute;t h&agrave;nh cuối sẽ được được đ&oacute;ng g&oacute;i v&agrave; triển khai tr&ecirc;n server hoặc hosting của kh&aacute;ch h&agrave;ng.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Triển khai c&ocirc;ng việc đ&agrave;o tạo, chuyển t&agrave;i liệu hướng dẫn sử dụng cho kh&aacute;ch h&agrave;ng.&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Hỗ trợ c&aacute;c vấn đề kỹ thuật ph&aacute;t sinh trong qu&aacute; tr&igrave;nh sử dụng.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Website được bảo h&agrave;nh trong 06 th&aacute;ng kể từ ng&agrave;y b&agrave;n giao. Nếu kh&aacute;ch h&agrave;ng d&ugrave;ng server hoặc hosting của ch&uacute;ng t&ocirc;i, việc bảo h&agrave;nh l&agrave; vĩnh viễn v&agrave; miễn ph&iacute;.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><strong><span style=\"font-size: 16.0pt; mso-bidi-font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; color: red;\">C&aacute;c ti&ecirc;u ch&iacute; gi&uacute;p website đạt&nbsp;hiệu quả</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Sản phẩm c&oacute; h&igrave;nh ảnh chất lượng, m&ocirc; tả cụ thể, nổi bật, gi&aacute; cả ph&ugrave; hợp.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Đầy đủ c&aacute;c t&iacute;nh năng hỗ trợ trực tuyến, giỏ h&agrave;ng, vận chuyển, thanh to&aacute;n online, li&ecirc;n kết facebook...</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Thường xuy&ecirc;n update sản phẩm mới, sản phẩm khuyến mại l&ecirc;n trang chủ, update b&agrave;i viết tư vấn...</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">C&aacute;c chức năng của website phải trực quan, thao t&aacute;c đơn giản cho người d&ugrave;ng truy cập website.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">C&oacute; sự tương t&aacute;c giữa kh&aacute;ch h&agrave;ng v&agrave; người b&aacute;n một c&aacute;ch dễ d&agrave;ng v&agrave; đơn giản.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\"><strong style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\"><span style=\"font-size: 16.0pt; mso-bidi-font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; color: red;\">Ch&iacute;nh s&aacute;ch ứu đ&atilde;i của ch&uacute;ng t&ocirc;i:</span></strong>&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Hiện tại ch&uacute;ng t&ocirc;i đang c&oacute; nhiều chương tr&igrave;nh khuyến m&atilde;i v&agrave; ch&iacute;nh s&aacute;ch ưu đ&atilde;i&nbsp; khi&nbsp;<a title=\"Thiết kế website\" href=\"https://tamnguyen.com.vn/Thiet-ke-website.html\">thiết kế website</a>&nbsp;tại c&ocirc;ng ty ch&uacute;ng t&ocirc;i, để qu&yacute; kh&aacute;ch c&oacute; c&aacute;i nh&igrave;n tổng quan hơn v&agrave; dễ d&agrave;ng tham khảo, ch&uacute;ng t&ocirc;i tổng hợp c&aacute;c ưu đ&atilde;i dưới đ&acirc;y:</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Tặng 1 t&ecirc;n miền .com&nbsp; hoặc .net trị gi&aacute;&nbsp;280.000 đ(Nếu đ&atilde; c&oacute; t&ecirc;n miền được tặng ph&iacute; gi&aacute; gia hạn dịch vụ 1 năm tiếp theo)</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Tặng 1 hosting dung lượng 2000MB, băng th&ocirc;ng&nbsp;Unlimited(1 năm)&nbsp;trị gi&aacute; 1,440,000đ</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt;\"><span style=\"font-size: 13.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Tặng chứng nhận SSL 1 năm miễn ph&iacute;(https) =&gt; Gi&uacute;p website bảo mật hơn v&agrave; được Google ưu ti&ecirc;n hơn tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm.&nbsp;Trị gi&aacute; 250,000đ</span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 14.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; color: red;\">TH&Ocirc;NG TIN LI&Ecirc;N HỆ</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; tab-stops: 70.9pt;\"><span style=\"font-size: 14.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Địa chỉ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: SỐ 01, NGUYỄN CH&Aacute;NH, NHA TRANG, KH&Aacute;NH HO&Agrave;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; tab-stops: 70.9pt;\"><span style=\"font-size: 14.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Phone &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: (02583) 523 490</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 14.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Email&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: TTCNTT_MTUD@MS.UKH.EDU.VN</span></p>\r\n</div>\r\n</div>'),
(2, 'Tư vấn thiết kế nội thất', 'Tu vấn và thi công trang trí nội thất.\r\nThiết kế có chuyên môn và kinh nghiệm, hiểu rõ nhu cầu khách hàng, cùng đồng hành với khách hàng để có được sản phẩm tốt nhất.', 'services-fronts/August2018/nbo4HpU93oObP1ODOgrH.jpg', '2018-05-23 02:17:00', '2018-08-27 02:47:13', '<p>Đang cập nhật ...&nbsp;</p>'),
(3, 'Cung cấp mặt hàng mỹ thuật', 'Đang cập nhật ...', 'services-fronts/May2018/ZBIjx9BU0k3SBdyKYwrW.jpg', '2018-05-23 02:18:00', '2018-08-08 19:05:53', '<p>Đang cập nhật ...&nbsp;</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'ITA Center', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/August2018/iIOPWLWjTioofpfaKOIN.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 28, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', NULL, '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'ITA Center', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Chào mừng bạn đến với ITA Center', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', NULL, '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', NULL, '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(12, 'home.banner_photo', 'Home Banner Image', 'settings/January2019/IdipPvaNK9NqkbWsaNj7.jpg', NULL, 'image', 8, 'Home'),
(15, 'home.courses_section_heading', 'Home Courses Section Heading', 'Khoá học của chúng tôi', NULL, 'text', 9, 'Home'),
(16, 'home.invite_section_heading', 'Home Invite Section Heading', 'Hãy đến với chúng tôi', NULL, 'text', 10, 'Home'),
(17, 'home.invite_section_content', 'Home Invite Section Content', 'Để tận hưởng các khoá học và dịch vụ tốt nhất', NULL, 'text', 11, 'Home'),
(18, 'home.invite_section_bg', 'Home Invite Section Background', 'settings/September2018/5Ib3kQaXl0JLZXOWKWz5.jpg', NULL, 'image', 12, 'Home'),
(20, 'home.why_section_heading', 'Home Why Section Heading', 'Lý do bạn nên chọn chúng tôi?', NULL, 'text', 13, 'Home'),
(23, 'home.why_section_content', 'Home Why Section Content', '<p>Với mục ti&ecirc;u mang đến cho c&aacute;c bạn học vi&ecirc;n c&aacute;c kho&aacute; học tốt nhất, ch&uacute;ng t&ocirc;i đ&atilde; sẵn s&agrave;ng mọi thứ để ch&agrave;o đ&oacute;n bạn:</p>\r\n<p>- Đội ngũ gi&aacute;o vi&ecirc;n tr&igrave;nh độ cao v&agrave; gi&agrave;u kinh nghiệm</p>\r\n<p>- Tư vấn chuy&ecirc;n nghiệp, nhiệt t&igrave;nh, th&acirc;n thiện</p>\r\n<p>- Cơ sở vật chất hiện đại</p>\r\n<p>- Chương tr&igrave;nh học phong ph&uacute;, lu&ocirc;n đổi mới</p>\r\n<p>- Khung giờ linh hoạt</p>', NULL, 'rich_text_box', 14, 'Home'),
(24, 'home.why_section_image', 'Home Why Section Image', 'settings/May2018/BgbfLwDfidvgOtLGfkda.jpg', NULL, 'image', 15, 'Home'),
(25, 'home.why_section_single1_icon', 'Home Why Section Single_1 (Icon)', '', NULL, 'image', 16, 'Home'),
(26, 'home.why_section_single2_icon', 'Home Why Section Single_2 (Icon)', '', NULL, 'image', 18, 'Home'),
(27, 'home.why_section_single3_icon', 'Home Why Section Single_3 (Icon)', '', NULL, 'image', 20, 'Home'),
(28, 'home.why_section_single1_title', 'Home Why Section Single_1 (Title)', 'Thời gian linh hoạt', NULL, 'text', 17, 'Home'),
(29, 'home.why_section_single2_title', 'Home Why Section Single_2 (Title)', 'Khoá học phong phú', NULL, 'text', 19, 'Home'),
(30, 'home.why_section_single3_title', 'Home Why Section Single_3 (Title)', 'Giảng viên tâm huyết', NULL, 'text', 21, 'Home'),
(31, 'home.services_section_heading', 'Home Services Section Heading', 'Dịch vụ của chúng tôi', NULL, 'text', 22, 'Home'),
(32, 'home.testimonials_section_heading', 'Home Testimonials Section Heading', 'Đánh giá của học viên', NULL, 'text', 23, 'Home'),
(33, 'home.testimonials_section_des', 'Home Testimonials Section Des', NULL, NULL, 'text', 24, 'Home'),
(36, 'site.footer_right', 'Footer Right', '<h2 class=\"widget_title\">Thông tin liên hệ</h2>\r\n<ul class=\"footer_contact\">\r\n    <li>Số 01, Nguyễn Chánh, Nha Trang, Khánh Hoà</li>\r\n    <li>(02583) 523 490</li>\r\n    <li>ttcntt_mtud@ms.ukh.edu.vn</li>\r\n</ul>', NULL, 'code_editor', 26, 'Site'),
(37, 'site.footer_left', 'Footer Left', '<h2 class=\"widget_title\">Về chúng tôi</h2>\r\n<p>Trung tâm Công nghệ thông tin và Mỹ thuật ứng dụng ra đời với mục đích đem lại cho các học viên những khóa học tốt nhất, cập nhật công nghệ mới, giúp học viên không chỉ học mà còn có cơ hội gặp gỡ tiếp xúc với xu thế của tương lai.</p>\r\n<ul class=\"footer_social\">\r\n    <li><a href=\"https://facebook.com/ttudcntt\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a></li>\r\n    <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></li>\r\n    <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-google-plus\"></i></a></li>\r\n    <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-linkedin\"></i></a></li>\r\n</ul>', NULL, 'code_editor', 4, 'Site'),
(38, 'site.footer_copyright', 'Footer Copyright', '© 2018 ITA CENTER. All rights reserved', NULL, 'text', 27, 'Site'),
(39, 'about.banner_image', 'About Banner Image', 'settings/May2018/OKHRlnvOrqXePahdkk78.jpg', NULL, 'image', 29, 'About'),
(40, 'about.block_left_heading', 'About Block Left (Heading)', 'Chào mừng bạn', NULL, 'text', 30, 'About'),
(41, 'about.block_left_content', 'About Block Left (Content)', '<p>Trung t&acirc;m C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Mỹ thuật ứng dụng ra đời với sự mệnh cao cả đem lại cho c&aacute;c học vi&ecirc;n những kh&oacute;a học tốt nhất, cập nhật c&ocirc;ng nghệ mới, gi&uacute;p học vi&ecirc;n kh&ocirc;ng chỉ học m&agrave; c&ograve;n c&oacute; cơ hội gặp gỡ tiếp x&uacute;c với xu thế của tương lai. Bạn sẽ c&oacute; đủ tự tin bước v&agrave;o cuộc sống khi c&oacute; đủ h&agrave;nh trang cho tương lại.</p>', NULL, 'rich_text_box', 31, 'About'),
(42, 'about.block_right_icon1', 'About Block Right ( Icon 1)', 'settings/May2018/4XZUK03RMhDgpfGN1VH4.png', NULL, 'image', 32, 'About'),
(43, 'about.block_right_icon2', 'About Block Right ( Icon 2)', 'settings/May2018/Sn5d2a3dUgGxONVUcMth.png', NULL, 'image', 35, 'About'),
(44, 'about.block_right_icon3', 'About Block Right ( Icon 3)', 'settings/May2018/wESWpFoaVB7g9nfg8xqH.png', NULL, 'image', 38, 'About'),
(45, 'about.block_right_heading1', 'About Block Right ( Heading 1)', 'CÔNG NGHỆ THÔNG TIN', NULL, 'text', 33, 'About'),
(46, 'about.block_right_heading2', 'About Block Right ( Heading 2)', 'MỸ THUẬT ỨNG DỤNG', NULL, 'text', 36, 'About'),
(47, 'about.block_right_heading3', 'About Block Right ( Heading 3)', 'THIẾT KẾ THỜI TRANG', NULL, 'text', 39, 'About'),
(48, 'about.block_right_content1', 'About Block Right ( Content 1)', 'Đào tạo tin học văn phòng, ngôn ngữ lập trình (ngôn ngữ Pascal, C, Java, Android ... ), chứng chỉ MOS ...', NULL, 'text_area', 34, 'About'),
(49, 'about.block_right_content2', 'About Block Right ( Content 2)', 'Đào tạo Mỹ thuật cơ bản cho trẻ em, các lớp học vẽ trên vãi, vẽ trên đá cuội và trên túi xách cá nhân ...', NULL, 'text_area', 37, 'About'),
(50, 'about.block_right_content3', 'About Block Right ( Content 3)', 'Chiêu sinh các khoá thời trang nhí dành cho các bạn trẻ từ 6 đến 13 tuổi, thiết kế váy áo cho búp bê ...', NULL, 'text_area', 40, 'About'),
(51, 'course.banner_image', 'Course Banner Image', 'settings/May2018/Yv1vojxVrtEcz9ZCLQ98.jpg', NULL, 'image', 41, 'Course'),
(52, 'course.course_section_heading', 'Course Section Heading', 'Khoá học của chúng tôi', NULL, 'text', 42, 'Course'),
(53, 'news.heading', 'News Heading', 'TIN TỨC ĐÀO TẠO', NULL, 'text', 44, 'News'),
(54, 'news.sub_heading', 'News Sub Heading', 'Cập nhạt tin tức mới về lĩnh vực giáo dục', NULL, 'text', 47, 'News'),
(55, 'notification.heading', 'Notification Heading', 'Thông báo mới nhất từ Trung tâm', NULL, 'text', 46, 'Notification'),
(56, 'notification.sub_heading', 'Notification Sub Heading', 'Cập nhật thông báo mới nhất đến các bạn học viên', NULL, 'text', 48, 'Notification'),
(59, 'news.paginate', 'News Paginate', '8', '{\r\n    \"default\" : \"2\",\r\n    \"options\" : {\r\n        \"2\": \"2\",\r\n        \"4\": \"4\",\r\n        \"6\": \"6\",\r\n        \"8\": \"8\",\r\n        \"10\": \"10\"\r\n    }\r\n}', 'select_dropdown', 51, 'News'),
(61, 'notification.paginate', 'Notification Paginate', '9', '{\r\n    \"default\" : \"3\",\r\n    \"options\" : {\r\n        \"3\": \"3\",\r\n        \"6\": \"6\",\r\n        \"9\": \"9\",\r\n        \"12\": \"12\"\r\n    }\r\n}', 'select_dropdown', 52, 'Notification'),
(62, 'contact.heading', 'Contact Heading', 'Hãy liên hệ với chúng tôi', NULL, 'text', 50, 'Contact'),
(64, 'news.banner_image', 'News Banner Image', 'settings/May2018/ycTTj7LXUMJ3Ab8EvyxF.jpg', NULL, 'image', 43, 'News'),
(65, 'notification.banner_image', 'Notification Banner Image', 'settings/May2018/zGXhC1M4e1NXvBhgsIvM.jpg', NULL, 'image', 45, 'Notification'),
(66, 'contact.banner_image', 'Contact Banner Image', 'settings/June2018/AzKupygm0TvXf9qoJPAL.jpg', NULL, 'image', 49, 'Contact'),
(68, 'contact.send_to_email', 'Contact Send To Email', 'tranvankhanh@ms.ukh.edu.vn', NULL, 'text', 54, 'Contact'),
(69, 'site.social_facebook', 'Social - Facebook', 'https://www.facebook.com/ttudcntt', NULL, 'text', 55, 'Site'),
(70, 'site.social_google', 'Social - Google+', 'https://www.facebook.com/ttudcntt', NULL, 'text', 56, 'Site'),
(71, 'site.social_youtube', 'Social - Youtube', 'https://www.facebook.com/ttudcntt', NULL, 'text', 57, 'Site'),
(72, 'site.bieumau-quitrinh', 'Biểu mẫu - Qui trình', '<h2><strong>Qui tr&igrave;nh hoạt&nbsp;động của Trung t&acirc;m theo chuẩn&nbsp;ISO.</strong></h2>\r\n<p>1. Giới thiệu</p>\r\n<p><a href=\"http://www.mediafire.com/file/lmnay73v70adlwh/1.TT_CNTT%2526MTU%25CC%259BD.pdf/file\" target=\"_blank\" rel=\"noopener noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/settings/January2019/Download_link.png\" alt=\"\" width=\"108\" height=\"38\" /></a></p>\r\n<p>2. Chức năng nhiệm vụ</p>\r\n<p><a href=\"http://www.mediafire.com/file/hnvnj2hppcng6x6/2.Chu%25CC%259B%25CC%2581c_na%25CC%2586ng_nhie%25CC%25A3%25CC%2582m_vu%25CC%25A3.pdf/file\" target=\"_blank\" rel=\"noopener noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/settings/January2019/Download_link.png\" alt=\"\" width=\"108\" height=\"38\" /></a></p>\r\n<p>3. Mục ti&ecirc;u chất lượng</p>\r\n<p><a href=\"http://www.mediafire.com/file/v57ka1z1bk59kg9/3.Mu%25CC%25A3c_tie%25CC%2582u_cha%25CC%2582%25CC%2581t_lu%25CC%259Bo%25CC%259B%25CC%25A3ng.pdf/file\" target=\"_blank\" rel=\"noopener noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/settings/January2019/Download_link.png\" alt=\"\" width=\"108\" height=\"38\" /></a></p>\r\n<p>4. Sơ&nbsp;đồ tổ chức</p>\r\n<p><a href=\"http://www.mediafire.com/file/6gk73cta9fuqvds/4.So%25CC%259B_%25C4%2591o%25CC%2582%25CC%2580_to%25CC%2582%25CC%2589_chu%25CC%259B%25CC%2581c.pdf/file\" target=\"_blank\" rel=\"noopener noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/settings/January2019/Download_link.png\" alt=\"\" width=\"108\" height=\"38\" /></a></p>\r\n<p>5. Qui tr&igrave;nh x&acirc;y dựng&nbsp;đề cương chi tiết</p>\r\n<p><a href=\"http://www.mediafire.com/file/vqsw1qxq33pq463/QT.01_Xa%25CC%2582y_du%25CC%259B%25CC%25A3ng_%25C4%2591e%25CC%2582%25CC%2580_cu%25CC%259Bo%25CC%259Bng_chi_tie%25CC%2582%25CC%2581t.pdf/file\" target=\"_blank\" rel=\"noopener noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/settings/January2019/Download_link.png\" alt=\"\" width=\"108\" height=\"38\" /></a></p>\r\n<p>6. Qui tr&igrave;nh lập danh s&aacute;ch lớp - thời kho&aacute; biểu</p>\r\n<p><a href=\"http://www.mediafire.com/file/bcwh0og5jqm7g65/QT.02_La%25CC%25A3%25CC%2582p_danh_sa%25CC%2581ch_lo%25CC%259B%25CC%2581p%252Ctho%25CC%259B%25CC%2580i_khoa%25CC%2581_bie%25CC%2582%25CC%2589u.pdf/file\" target=\"_blank\" rel=\"noopener noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/settings/January2019/Download_link.png\" alt=\"\" width=\"108\" height=\"38\" /></a></p>\r\n<p>7. Lập hợp&nbsp;đồng giảng dạy</p>\r\n<p><a href=\"http://www.mediafire.com/file/cbskah99staor9z/QT.03_La%25CC%25A3%25CC%2582p_ho%25CC%259B%25CC%25A3p_%25C4%2591o%25CC%2582%25CC%2580ng_gia%25CC%2589ng_da%25CC%25A3y.pdf/file\" target=\"_blank\" rel=\"noopener noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/settings/January2019/Download_link.png\" alt=\"\" width=\"108\" height=\"38\" /></a></p>\r\n<p>8. Ra&nbsp;đề thi</p>\r\n<p><a href=\"http://www.mediafire.com/file/0ra1pc4liwc789c/QT.04_Ra_%25C4%2591e%25CC%2582%25CC%2580_thi.pdf/file\" target=\"_blank\" rel=\"noopener noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/settings/January2019/Download_link.png\" alt=\"\" width=\"108\" height=\"38\" /></a></p>\r\n<p>9. Quản l&yacute; b&agrave;i thi</p>\r\n<p><a href=\"http://www.mediafire.com/file/rc0455ok2xe5952/QT.05_Qua%25CC%2589n_ly%25CC%2581_ba%25CC%2580i_thi.pdf/file\" target=\"_blank\" rel=\"noopener noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/settings/January2019/Download_link.png\" alt=\"\" width=\"108\" height=\"38\" /></a></p>\r\n<p>10. Quản l&yacute;&nbsp;điểm</p>\r\n<p><a href=\"http://www.mediafire.com/file/cdb437lfp7yrd35/QT.06_Qua%25CC%2589n_ly%25CC%2581_%25C4%2591ie%25CC%2582%25CC%2589m.pdf/file\" target=\"_blank\" rel=\"noopener noreferrer\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://itacenter.net/storage/settings/January2019/Download_link.png\" alt=\"\" width=\"108\" height=\"38\" /></a></p>', NULL, 'rich_text_box', 58, 'Site'),
(73, 'notification.img-notification', 'Image notification', 'settings/January2019/U3uxitWrTod6QlAdmqpL.jpg', NULL, 'image', 59, 'Notification');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `mssv` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `regular_class_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `has_certificate` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`id`, `mssv`, `fullname`, `birthday`, `regular_class_id`, `created_at`, `updated_at`, `has_certificate`) VALUES
(99, '18104299', 'Trần Thị Minh  Hoàng ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(100, '18104249', 'Lê Vy Kha', '', 2, '2019-02-25 19:00:57', NULL, 0),
(101, '18104179 ', 'Nguyễn Phương Thùy Linh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(102, '18104178', 'Trần Hoàng Lân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(103, '18106104', 'Nguyễn Hồng Bảo Ngọc', '', 1, '2019-02-25 19:00:57', NULL, 0),
(104, '18104005', 'Hồ Thị Thu Huyền', '', 2, '2019-02-25 19:00:57', NULL, 0),
(105, '18104259', 'Lê Phi  Minh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(106, '18106027', 'Huỳnh Thị Bảo Ngọc', '', 1, '2019-02-25 19:00:57', NULL, 0),
(107, '18106037', 'Võ Đức Thiện', '', 1, '2019-02-25 19:00:57', NULL, 0),
(108, '18104046', 'Trương Thị Ngọc  Sương', '', 2, '2019-02-25 19:00:57', NULL, 0),
(109, '18106086', 'Phạm Tống Khánh Linh', '', 1, '2019-02-25 19:00:57', NULL, 0),
(110, '18106012', 'Nguyễn Trương Ngọc Long', '', 1, '2019-02-25 19:00:57', NULL, 0),
(111, '18104104', 'Trần Đặng Công Minh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(112, '18106038', 'Nguyễn Thị Xuân Triệu', '', 1, '2019-02-25 19:00:57', NULL, 0),
(113, '18106073', 'Nguyễn Anh Thư', '', 1, '2019-02-25 19:00:57', NULL, 0),
(114, '18106060', 'Võ Thị Hoài  Thương', '', 1, '2019-02-25 19:00:57', NULL, 0),
(115, '18104145', 'Nguyễn Thị Thùy Trang ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(116, '18104079', 'Đoàn Thị Hoài  Thương', '', 2, '2019-02-25 19:00:57', NULL, 0),
(117, '18104080', 'Đặng Hồng  Thủy', '', 2, '2019-02-25 19:00:57', NULL, 0),
(118, '18104199', 'Trần Đặng Anh Thư', '', 2, '2019-02-25 19:00:57', NULL, 0),
(119, '18104233', 'Phạm Hữu Hoàng Vy', '', 2, '2019-02-25 19:00:57', NULL, 0),
(120, '18104007', 'Nguyễn Trung  Thành', '', 2, '2019-02-25 19:00:57', NULL, 0),
(121, '18104073', 'Nguyễn Đặng Hồng  Anh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(122, '18104106', 'Nguyễn Thị  Thuỷ ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(123, '18104027', 'Lê Thị Thanh Kiều', '', 2, '2019-02-25 19:00:57', NULL, 0),
(124, '18104262', 'Ngô Quang Huy', '', 2, '2019-02-25 19:00:57', NULL, 0),
(125, '18104147', 'Trần Minh Mỹ ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(126, '18104136', 'Nguyễn mai Hương', '', 2, '2019-02-25 19:00:57', NULL, 0),
(127, '18104156', 'Lê Thị Bích Việt', '', 2, '2019-02-25 19:00:57', NULL, 0),
(128, '18104116', 'Nguyễn Thảo Ngọc', '', 2, '2019-02-25 19:00:57', NULL, 0),
(129, '18104332', 'Trương Quang Thanh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(130, '18104169', 'Phan Thị Thúy Huyền', '', 2, '2019-02-25 19:00:57', NULL, 0),
(131, '18104095', 'Võ Hồng Yến Nhi', '', 2, '2019-02-25 19:00:57', NULL, 0),
(132, '18104160', 'Nguyễn Phạm Như  Ý', '', 2, '2019-02-25 19:00:57', NULL, 0),
(133, '18104096', 'Hoàng Nhật Linh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(134, '18104063', 'Dương Thị Phương Thanh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(135, '18104118', 'Võ Ngọc Như Quỳnh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(136, '18104223', 'Mai Hoàng  Vũ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(137, '18104186', 'Lương Thị Kim Nhàn', '', 2, '2019-02-25 19:00:57', NULL, 0),
(138, '18106087', 'Nguyễn Thị Minh  Thúy', '', 1, '2019-02-25 19:00:57', NULL, 0),
(139, '18104268', 'Lưk Lệ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(140, '18104244', 'Nguyễn Minh Nam', '', 2, '2019-02-25 19:00:57', NULL, 0),
(141, '18104081', 'Phạm Thị Mỹ  Linh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(142, '18106097', 'Nguyễn Trần Ngọc Diễm', '', 1, '2019-02-25 19:00:57', NULL, 0),
(143, '18104144', 'Đặng Thị Trúc Vy', '', 2, '2019-02-25 19:00:57', NULL, 0),
(144, '18104236', 'Phạm Thị Lanh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(145, '18104090', 'Phan Thuỵ Ngọc Yến', '', 2, '2019-02-25 19:00:57', NULL, 0),
(146, '18106025', 'Võ Hoài Nhật  Trâm', '', 1, '2019-02-25 19:00:57', NULL, 0),
(147, '18104142', 'Lê Thị Kiều Trang', '', 2, '2019-02-25 19:00:57', NULL, 0),
(148, '18104201', 'Ngô thị thu an An', '', 2, '2019-02-25 19:00:57', NULL, 0),
(149, '18104257', 'Phạm Thị Mỹ Linh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(150, '18134307', 'Đặng Thị Sương', '', 2, '2019-02-25 19:00:57', NULL, 0),
(151, '18106070', 'Liễu Hoàng Kim Trúc ', '', 1, '2019-02-25 19:00:57', NULL, 0),
(152, '18104213', 'Phạm Đức  Long', '', 2, '2019-02-25 19:00:57', NULL, 0),
(153, '18104026', 'Nguyễn Thị Phương Thảo', '', 2, '2019-02-25 19:00:57', NULL, 0),
(154, '18106091', 'Nguyễn Mai Ngọc Thạch', '', 1, '2019-02-25 19:00:57', NULL, 0),
(155, '18104310', 'Nguyễn Ngọc Bảo Ngân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(156, '18104277', 'Nguyễn Cao Huy Hoàng', '', 2, '2019-02-25 19:00:57', NULL, 0),
(157, '18104100', 'Tạ Quang Tuyến', '', 2, '2019-02-25 19:00:57', NULL, 0),
(158, '18104168', 'Nguyễn Thu Phương', '', 2, '2019-02-25 19:00:57', NULL, 0),
(159, '18104093', 'Nguyễn Thị Minh  Ngọc', '', 2, '2019-02-25 19:00:57', NULL, 0),
(160, '18104120', 'Đặng Lương Thảo  Nguyên', '', 2, '2019-02-25 19:00:57', NULL, 0),
(161, '18106102', 'Nguyễn Kim Lea  Logan', '', 1, '2019-02-25 19:00:57', NULL, 0),
(162, '18106013', 'Lê Thị Bích  Ngân', '', 1, '2019-02-25 19:00:57', NULL, 0),
(163, '18104316', 'Hoàng Thị Thúy  Vân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(164, '18104294', 'Tống Thị Mỹ Linh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(165, '18104019', 'Phan Ngọc  Vân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(166, '18104146', 'Lô Hoàng  Nhung', '', 2, '2019-02-25 19:00:57', NULL, 0),
(167, '18106019', 'Nguyễn Thị Thùy Dương', '', 1, '2019-02-25 19:00:57', NULL, 0),
(168, '18104176', 'Trần Nguyễn Hoàng  Lĩnh ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(169, '18104135', 'Đặng Hoài Sơn', '', 2, '2019-02-25 19:00:57', NULL, 0),
(170, '18104148', 'Nguyễn Hoàng Oanh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(171, '18104151', 'Đặng Khánh Vy', '', 2, '2019-02-25 19:00:57', NULL, 0),
(172, '18104075', 'Huỳnh Thị Thanh Hiền', '', 2, '2019-02-25 19:00:57', NULL, 0),
(173, '18104044', 'Nguyễn Thị Anh  Thư', '', 2, '2019-02-25 19:00:57', NULL, 0),
(174, '1804317', 'Nguyễn quốc  Việt ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(175, '18106034', 'Võ Nguyễn Thùy  Trang', '', 1, '2019-02-25 19:00:57', NULL, 0),
(176, '18104180', 'Hoàng thị ngọc Hiếu', '', 2, '2019-02-25 19:00:57', NULL, 0),
(177, '18104143', 'Nguyễn Thị Thu Ngân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(178, '18106003', 'Phạm Thị Hồng Anh', '', 1, '2019-02-25 19:00:57', NULL, 0),
(179, '18104322', 'Nguyễn Thị Nhật  Huyền', '', 2, '2019-02-25 19:00:57', NULL, 0),
(180, '18104141', 'Phạm Bảo Ngọc', '', 2, '2019-02-25 19:00:57', NULL, 0),
(181, '18104133', 'Hà Khánh Thư', '', 2, '2019-02-25 19:00:57', NULL, 0),
(182, '18104132', 'Nguyễn Bảo Ngân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(183, '18104065', 'Huỳnh Bảo Duyên', '', 2, '2019-02-25 19:00:57', NULL, 0),
(184, '18104022', 'Huỳnh Chí Khang', '', 2, '2019-02-25 19:00:57', NULL, 0),
(185, '18104111', 'Võ Thị Hoài Như', '', 2, '2019-02-25 19:00:57', NULL, 0),
(186, '18104042', 'Nguyễn Ngọc Quỳnh Trâm', '', 2, '2019-02-25 19:00:57', NULL, 0),
(187, '18104023', 'Đoàn Ngọc Hồng  Phúc', '', 2, '2019-02-25 19:00:57', NULL, 0),
(188, '1804002', 'Nguyễn Lê Da Linh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(189, '18104069', 'Trương Huỳnh Thanh  Trúc', '', 2, '2019-02-25 19:00:57', NULL, 0),
(190, '18104125', 'Phan Thanh Tuấn', '', 2, '2019-02-25 19:00:57', NULL, 0),
(191, '18104037', 'Nguyễn Đức Trí ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(192, '18104139', 'Ngô Thị Thanh  Thảo', '', 2, '2019-02-25 19:00:57', NULL, 0),
(193, '18104300', 'Võ thị mỹ Huyền', '', 2, '2019-02-25 19:00:57', NULL, 0),
(194, '18106114', 'Phạm Quân Bảo', '', 1, '2019-02-25 19:00:57', NULL, 0),
(195, '18104333', 'Hà Ngọc Linh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(196, '18104092', 'Bùi Thị Mỹ  Hương', '', 2, '2019-02-25 19:00:57', NULL, 0),
(197, '18106108', 'Ngô Quang Nam', '', 1, '2019-02-25 19:00:57', NULL, 0),
(198, '18104130', 'Nguyễn Thu Hồng', '', 2, '2019-02-25 19:00:57', NULL, 0),
(199, '18106048', 'Nguyễn Ngọc Mỹ Ngân', '', 1, '2019-02-25 19:00:57', NULL, 0),
(200, '18106120', 'Lê Ngọc Hân', '', 1, '2019-02-25 19:00:57', NULL, 0),
(201, '18104261', 'Nguyễn Tuyết Trang Trang', '', 2, '2019-02-25 19:00:57', NULL, 0),
(202, '18104200', 'Phạm Kim Ngân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(203, '18104198', 'Nguyễn Hữu Chí Luân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(204, '18104238', 'Nguyễn Thị Mỹ Hoa', '', 2, '2019-02-25 19:00:57', NULL, 0),
(205, '18106061', 'Lê Thị Thu Hương', '', 1, '2019-02-25 19:00:57', NULL, 0),
(206, '18104281', 'Châu Thị Hồng Nhung', '', 2, '2019-02-25 19:00:57', NULL, 0),
(207, '18106075', 'Phan Gia Bảo', '', 1, '2019-02-25 19:00:57', NULL, 0),
(208, '18104234', 'Trần Thị Phương  Uyên', '', 2, '2019-02-25 19:00:57', NULL, 0),
(209, '18104174', 'Lê Thị  Nhung', '', 2, '2019-02-25 19:00:57', NULL, 0),
(210, '18104267', 'Nguyễn Thị Kim Ngọc Ngọc', '', 2, '2019-02-25 19:00:57', NULL, 0),
(211, '18104258', 'Nguyễn Thị Kim  Thùy', '', 2, '2019-02-25 19:00:57', NULL, 0),
(212, '18104211', 'Nguyễn Quốc Hạ Vy', '', 2, '2019-02-25 19:00:57', NULL, 0),
(213, '18104153', 'Nguyễn Hoàng Hải', '', 2, '2019-02-25 19:00:57', NULL, 0),
(214, '18104301', 'Dương Ngọc Thu  Hồng', '', 2, '2019-02-25 19:00:57', NULL, 0),
(215, '18104015', 'Đỗ Đàm Huyền  Trân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(216, '18104113', 'Dương Thị Kim Oanh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(217, '18104243', 'Đoàn Thị Thanh  Trà', '', 2, '2019-02-25 19:00:57', NULL, 0),
(218, '18104226', 'Nguyễn Mạnh Hà', '', 2, '2019-02-25 19:00:57', NULL, 0),
(219, '18104288', 'Nguyễn Võ Thục Quyên', '', 2, '2019-02-25 19:00:57', NULL, 0),
(220, '18104114', 'Nguyễn Huyền My', '', 2, '2019-02-25 19:00:57', NULL, 0),
(221, '18104062', 'Bùi Thị  Bình', '', 2, '2019-02-25 19:00:57', NULL, 0),
(222, '18104024', 'Trần Thị Thanh Dân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(223, '18106116', 'Trần Lâm Ngọc Anh', '', 1, '2019-02-25 19:00:57', NULL, 0),
(224, '18104140', 'Châu Quang Tiến', '', 2, '2019-02-25 19:00:57', NULL, 0),
(225, '14104099', 'Nguyễn Minh Tiến', '', 2, '2019-02-25 19:00:57', NULL, 0),
(226, '18104247', 'Lê Thị Trà My', '', 2, '2019-02-25 19:00:57', NULL, 0),
(227, '17504279', 'Phạm Thị Tường Vi', '', 2, '2019-02-25 19:00:57', NULL, 0),
(228, '14104173', 'Lê Quý Kiên', '', 2, '2019-02-25 19:00:57', NULL, 0),
(229, '18106050', 'Trịnh Thị Hà  Trang', '', 1, '2019-02-25 19:00:57', NULL, 0),
(230, '18106069', 'Trần Bảo  Ngọc', '', 1, '2019-02-25 19:00:57', NULL, 0),
(231, '17504322', 'Nguyễn Ngọc Băng Thanh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(232, '18104008', 'Nguyễn Yến Vy', '', 2, '2019-02-25 19:00:57', NULL, 0),
(233, '18104119', 'Phạm Trần Bảo Phúc', '', 2, '2019-02-25 19:00:57', NULL, 0),
(234, '18104072', 'Trần Văn Tới', '', 2, '2019-02-25 19:00:57', NULL, 0),
(235, '18104189', 'Trần Thanh Uyên', '', 2, '2019-02-25 19:00:57', NULL, 0),
(236, '18104191', 'Lê Trần Bảo Trân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(237, '18104216', 'Lê Minh  Huy', '', 2, '2019-02-25 19:00:57', NULL, 0),
(238, '18104228', 'Trần Thị Bích Nhật', '', 2, '2019-02-25 19:00:57', NULL, 0),
(239, '18104302', 'Lê Thị Thúy Ngân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(240, '18104057', 'Mai Quốc  Thắng', '', 2, '2019-02-25 19:00:57', NULL, 0),
(241, '18104245', 'Dương Tấn Nhân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(242, '18104303', 'Nguyễn Thị Thuý Vy', '', 2, '2019-02-25 19:00:57', NULL, 0),
(243, '18104016', 'Ngô Thanh Lam', '', 2, '2019-02-25 19:00:57', NULL, 0),
(244, '18104181', 'Huỳnh Ngọc Thảo', '', 2, '2019-02-25 19:00:57', NULL, 0),
(245, '18104209', 'Nguyễn thị thu Uyên', '', 2, '2019-02-25 19:00:57', NULL, 0),
(246, '18104311', 'Trần Ngọc Uyển Nhi', '', 2, '2019-02-25 19:00:57', NULL, 0),
(247, '18104237', 'Trần Lê Bích  Ngọc', '', 2, '2019-02-25 19:00:57', NULL, 0),
(248, '17504178', 'Nguyễn Ngọc Bích Phượng', '', 2, '2019-02-25 19:00:57', NULL, 0),
(249, '18104183', 'Nguyễn Quốc Toàn', '', 2, '2019-02-25 19:00:57', NULL, 0),
(250, '18104225', 'Nguyễn Thị Thanh  Hà ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(251, '18104059', 'Hồ Vân Anh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(252, '18104068', 'Nguyễn Lê Yến Thương', '', 2, '2019-02-25 19:00:57', NULL, 0),
(253, '18106043', 'Nguyễn Đặng Thanh  Hương', '', 1, '2019-02-25 19:00:57', NULL, 0),
(254, '18104108', 'Nguyễn Nam Sơn', '', 2, '2019-02-25 19:00:57', NULL, 0),
(255, '18106029', 'Trương Thị Thanh Nhàn', '', 1, '2019-02-25 19:00:57', NULL, 0),
(256, '18106028', 'Nguyễn Thị Thu Hồng', '2019-02-26', 1, '2019-02-25 19:00:00', '2019-02-25 19:39:05', 1),
(257, '18104215', 'Huỳnh Thị Diệu My', '2019-02-26', 2, '2019-02-25 19:00:00', '2019-02-25 19:39:58', 1),
(258, '18106105', 'Nguyễn Thị Ngọc  Ánh ', '', 1, '2019-02-25 19:00:57', NULL, 0),
(259, '18106119', 'Nguyễn Thị Ngọc  Ánh ', '', 1, '2019-02-25 19:00:57', NULL, 0),
(260, '18104296', 'Trần Nguyễn Nhật  Xuân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(261, '18104137', 'Huỳnh Hồng Nhung ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(262, '18104282', 'Phùng Hữu  Danh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(263, '18006056', 'Trần Thanh Tú', '', 1, '2019-02-25 19:00:57', NULL, 0),
(264, '18104077', 'Huỳnh Trung Nghĩa Nghĩa', '', 2, '2019-02-25 19:00:57', NULL, 0),
(265, '18104205', 'Phạm Nguyễn Hồng  Anh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(266, '18104020', 'Đặng thành  Danh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(267, '18104154', 'Cao Ngọc Cang', '', 2, '2019-02-25 19:00:57', NULL, 0),
(268, '18104162', 'Nguyễn Thị Ngọc Thuý', '', 2, '2019-02-25 19:00:57', NULL, 0),
(269, '18104204', 'Phạm Thị Hảo  Trâm', '', 2, '2019-02-25 19:00:57', NULL, 0),
(270, '17506065', 'Nguyễn uyên  Phương ', '', 1, '2019-02-25 19:00:57', NULL, 0),
(271, '18104242', 'Nguyễn Ngọc Linh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(272, '18104013', 'Nguyễn Trung Hiếu', '', 2, '2019-02-25 19:00:57', NULL, 0),
(273, '18104035', 'Phạm Bảo Trân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(274, '18104271', 'Trần Thị Yến  Thanh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(275, '18104246', 'Trần Thị Nhật Quỳnh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(276, '18104025', 'Nguyễn Hoàng Khánh  Duy', '', 2, '2019-02-25 19:00:57', NULL, 0),
(277, '18106026', 'Nguyễn Hồng Ngọc Diệp', '', 1, '2019-02-25 19:00:57', NULL, 0),
(278, '18104207', 'Trương Thị Kim Hồng', '', 2, '2019-02-25 19:00:57', NULL, 0),
(279, '18106066', 'Trần Thu Hương  Quỳnh', '', 1, '2019-02-25 19:00:57', NULL, 0),
(280, '18106032', 'Nguyễn Đông Gia  Hưng', '', 1, '2019-02-25 19:00:57', NULL, 0),
(281, '18106036', 'Dương Nguyễn Huyền Trân', '', 1, '2019-02-25 19:00:57', NULL, 0),
(282, '18106056', 'Trần Thanh Tú', '', 1, '2019-02-25 19:00:57', NULL, 0),
(283, '18106030', 'Nguyễn thị ngọc Nhi', '', 1, '2019-02-25 19:00:57', NULL, 0),
(284, '18104054', 'Hoàng thị kim Thoả', '', 2, '2019-02-25 19:00:57', NULL, 0),
(285, '18104235', 'Nguyễn Thị Ngọc Mỹ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(286, '18106118', 'Lê Kim Ngân', '', 1, '2019-02-25 19:00:57', NULL, 0),
(287, '18104321', 'Trịnh Thanh Lâm', '', 2, '2019-02-25 19:00:57', NULL, 0),
(288, '18104167', 'Nguyễn Thị Khánh Ly', '', 2, '2019-02-25 19:00:57', NULL, 0),
(289, '18104172', 'Trần nhật Thịnh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(290, '18104064', 'Ngô Thị Thùy', '', 2, '2019-02-25 19:00:57', NULL, 0),
(291, '18104058', 'Phạm Thị Thuỷ Tiên', '', 2, '2019-02-25 19:00:57', NULL, 0),
(292, '18104263', 'Nguyễn Văn Tiến', '', 2, '2019-02-25 19:00:57', NULL, 0),
(293, '18106057', 'Nguyễn Ngọc Ý Nhi', '', 1, '2019-02-25 19:00:57', NULL, 0),
(294, '18104224', 'Mai Thị Mỹ Vân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(295, '18104088', 'Mai Thị Yến  Thi', '', 2, '2019-02-25 19:00:57', NULL, 0),
(296, '18106047', 'Nguyễn Ngọc Gia  Quý', '', 1, '2019-02-25 19:00:57', NULL, 0),
(297, '18274037', 'Huỳnh Thị Ngọc Mai', '', 1, '2019-02-25 19:00:57', NULL, 0),
(298, '18274006', 'Nguyễn Thanh Trúc  Nhi', '', 1, '2019-02-25 19:00:57', NULL, 0),
(299, '18104107', 'Đỗ Yến  Nhi', '', 2, '2019-02-25 19:00:57', NULL, 0),
(300, '18104102', 'Hồ Nhật Hà', '', 2, '2019-02-25 19:00:57', NULL, 0),
(301, '18106130', 'Nguyễn Quốc Đạt', '', 1, '2019-02-25 19:00:57', NULL, 0),
(302, '18104287', 'Phạm Thị Kim Nga ', '', 2, '2019-02-25 19:00:57', NULL, 0),
(303, '18274021', 'Trần Huỳnh Minh Trang', '', 1, '2019-02-25 19:00:57', NULL, 0),
(304, '18274026', 'Lê Thị Trung Thủy', '', 1, '2019-02-25 19:00:57', NULL, 0),
(305, '18104048', 'Trần Thị Mỹ Hương', '', 2, '2019-02-25 19:00:57', NULL, 0),
(306, '18106072', 'Võ Thục Hoài Nhi', '', 1, '2019-02-25 19:00:57', NULL, 0),
(307, '17504321', 'Nguyễn Quốc Phúc', '', 2, '2019-02-25 19:00:57', NULL, 0),
(308, '18104185', 'Phạm Hoàng Hải', '', 2, '2019-02-25 19:00:57', NULL, 0),
(309, '18104240', 'Nguyễn thị thanh  Trang', '', 2, '2019-02-25 19:00:57', NULL, 0),
(310, '18104155', 'Nguyễn Xuân Thương', '', 2, '2019-02-25 19:00:57', NULL, 0),
(311, '18104089', 'Ngô Thị Thu Trinh', '', 2, '2019-02-25 19:00:57', NULL, 0),
(312, '18104010', 'Nguyễn Ngọc Kiều  My', '', 2, '2019-02-25 19:00:57', NULL, 0),
(313, '18263048', 'Nguyễn Hoàng Kim Phụng', '', 2, '2019-02-25 19:00:57', NULL, 0),
(314, '18104230', 'ngô hữu  Ngọc', '', 2, '2019-02-25 19:00:57', NULL, 0),
(315, '18104256', 'Nguyễn nữ nhật Pháp', '', 2, '2019-02-25 19:00:57', NULL, 0),
(316, '18106127', 'Phạm thị ái Xuân', '', 1, '2019-02-25 19:00:57', NULL, 0),
(317, '18106042', 'Trần Thị Mai Thy', '', 1, '2019-02-25 19:00:57', NULL, 0),
(318, '18104212', 'Phạm Thị Thu Hiền', '', 2, '2019-02-25 19:00:57', NULL, 0),
(319, '18104292', 'Phạm Trần Thanh Trà', '', 2, '2019-02-25 19:00:57', NULL, 0),
(320, '18104043', 'Nguyễn Thành Nhân', '', 2, '2019-02-25 19:00:57', NULL, 0),
(321, '18104278', 'Trần Nguyễn Trà Giang', '', 2, '2019-02-25 19:00:57', NULL, 0),
(322, '18106082', 'Vương Huy Khang', '', 1, '2019-02-25 19:00:57', NULL, 0),
(323, '18104076', 'Ngô Tiểu Trà My', '', 1, '2019-02-25 19:00:57', NULL, 0),
(324, '18104273', 'Nguyễn Lê Xuân Tài', '', 1, '2019-02-25 19:00:57', NULL, 0),
(325, '18104171', 'Nguyễn Huỳnh Thảo  Trinh', '', 1, '2019-02-25 19:00:57', NULL, 0),
(326, '18104285', 'Nguyễn Huỳnh Nhật Trâm ', '', 1, '2019-02-25 19:00:57', NULL, 0),
(327, '18106115', 'Dương Thị Thảo Nguyên', '', 1, '2019-02-25 19:00:57', NULL, 0),
(328, '18104115', 'Phan Quang Huy', '', 1, '2019-02-25 19:00:57', NULL, 0),
(329, '18104091', 'Nguyễn Đức  Tùng', '', 1, '2019-02-25 19:00:57', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students_center_classes`
--

CREATE TABLE `students_center_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `center_class_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `test_score` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `students_center_classes`
--

INSERT INTO `students_center_classes` (`id`, `student_id`, `center_class_id`, `created_at`, `updated_at`, `test_score`) VALUES
(78, 101, 11, NULL, NULL, NULL),
(79, 102, 11, NULL, NULL, NULL),
(80, 103, 11, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `testimonials_fronts`
--

CREATE TABLE `testimonials_fronts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `testimonial` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `testimonials_fronts`
--

INSERT INTO `testimonials_fronts` (`id`, `name`, `testimonial`, `image`, `job`, `created_at`, `updated_at`) VALUES
(1, 'Hùng Mạnh', 'Tôi thấy hài lòng với cách truyền đạt của giảng viên, rất nhiệt tình và thân thiện. Sau khoá học tin học văn phòng tôi đã làm việc hiệu quả hơn.', 'testimonials-fronts/May2018/V4ABaLXmxxTJJXekDvb6.jpg', 'Quản lý khách sạn', '2018-05-23 02:35:00', '2018-07-29 12:25:46'),
(2, 'Lan Anh', 'Khoá học giúp tôi rất nhiêu trong công việc hiện tại, giảng viên nhiệt tình và thân thiện. Cở sở vật chất khá tốt, đảm bảo trong quá trình hoc tập tại Trung tâm.', 'testimonials-fronts/May2018/NNFsMKPhFcms3P2ADl2z.jpg', 'Lễ tân', '2018-05-23 02:35:00', '2018-07-29 12:24:13'),
(3, 'Khánh Ngân - 7 tuổi', 'Con rất háo hức mỗi khi đến lớp! Lớp học rất vui. Trước đây con không tự tin, nhưng bây giờ con thấy tự tin hơn vì con đã biết vẽ nhiều thứ.', 'testimonials-fronts/August2018/yk14uD4wPVVxtjTgb5Bm.JPG', 'HỘI HỌA THIẾU NHI', '2018-08-23 03:39:40', '2018-08-23 03:39:40'),
(4, 'Thảo Ngân - 7 tuổi', 'Con rất vui khi học ở đây! Cô giáo tốt bụng, chỉ cho con nhiều thứ. Vô năm học mới con muốn tiếp tục học nữa!', 'testimonials-fronts/August2018/aNWYC25c01FrEK1zbKMe.JPG', 'HỘI HỌA THIẾU NHI', '2018-08-27 02:13:58', '2018-08-27 02:13:58'),
(5, 'Phụ huynh em Phong Linh', 'Giáo viên dạy nhiệt tình, khơi dậy đam mê của học sinh!', NULL, 'HỘI HỌA THIẾU NHI', '2018-08-27 02:18:00', '2018-08-27 02:18:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(22, 'menu_items', 'title', 11, 'pt', 'Publicações', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(24, 'menu_items', 'title', 10, 'pt', 'Categorias', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(25, 'menu_items', 'title', 12, 'pt', 'Páginas', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(30, 'menu_items', 'title', 9, 'pt', 'Configurações', '2018-04-28 07:37:27', '2018-04-28 07:37:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$GcPQwmg8DrDvchAZ.DhyKOqdZCCL6s1E3cYdn7Sx83lBJ/mLtYVx2', '9iXlrJMW7SEIlUyJyWOwuTgqLxXhJFKuSB0SfvpDQ1Fyr08ahcDNzaRDqaYh', NULL, '2018-04-28 07:37:27', '2018-04-28 07:37:27'),
(2, 1, 'camnguyen', 'vonguyen9563@gmail.com', 'users/default.png', '$2y$10$00of9jkQ7OjyzsNV0t11Red7q.8zouq556zbzFnrBNsrB/zPYFMdy', 'kJSRpZp7VQSO2EYZQKpaNqIbbaGLESbLX1LiHWm98UDCwj9ctpBsSyBWieWk', '{\"locale\":\"en\"}', '2018-08-21 01:33:58', '2018-08-21 07:11:50'),
(5, 1, 'Cam Duyen', 'doanhuynhcamduyen@ms.ukh.edu.vn', 'users/default.png', '$2y$10$t6ipqf5H2npnj2nvZJvC9eAhL91UUE71m/edKLa8QmzrtY5t4HsBO', 'cRLGWuRR4v0oLEz1GHddvtnaF8d5FC8H3mZxwjqNM8gd8fyZE45uHRewVRRQ', '{\"locale\":\"en\"}', '2018-08-21 07:13:20', '2018-08-22 20:00:49'),
(6, 1, 'Thuy Tien', 'tranthithuytien@ms.ukh.edu.vn', 'users/default.png', '$2y$10$4in1BmmJ8o56UX7OX1W25uLTQ34JAYBYdku/WbP4pBVbFSsFBwRRi', NULL, '{\"locale\":\"al\"}', '2018-08-21 07:13:56', '2018-08-21 07:13:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 1),
(5, 1),
(6, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `center_classes`
--
ALTER TABLE `center_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `center_classes_class_code_unique` (`class_code`),
  ADD KEY `center_classes_school_year_index` (`school_year`),
  ADD KEY `center_classes_regular_class_type_id_index` (`regular_class_type_id`);

--
-- Chỉ mục cho bảng `center_class_types`
--
ALTER TABLE `center_class_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `center_classes_type_name_index` (`name`);

--
-- Chỉ mục cho bảng `courses_fronts`
--
ALTER TABLE `courses_fronts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `galleries_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `regular_classes`
--
ALTER TABLE `regular_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regular_classes_name_index` (`name`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `services_fronts`
--
ALTER TABLE `services_fronts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_mssv_unique` (`mssv`),
  ADD KEY `students_fullname_index` (`fullname`),
  ADD KEY `students_has_certificate_index` (`has_certificate`);

--
-- Chỉ mục cho bảng `students_center_classes`
--
ALTER TABLE `students_center_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_center_classes_student_id_index` (`student_id`),
  ADD KEY `students_center_classes_center_class_id_index` (`center_class_id`),
  ADD KEY `students_center_classes_test_score_index` (`test_score`);

--
-- Chỉ mục cho bảng `testimonials_fronts`
--
ALTER TABLE `testimonials_fronts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `center_classes`
--
ALTER TABLE `center_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `center_class_types`
--
ALTER TABLE `center_class_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `courses_fronts`
--
ALTER TABLE `courses_fronts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `regular_classes`
--
ALTER TABLE `regular_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `services_fronts`
--
ALTER TABLE `services_fronts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT cho bảng `students_center_classes`
--
ALTER TABLE `students_center_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `testimonials_fronts`
--
ALTER TABLE `testimonials_fronts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `students_center_classes`
--
ALTER TABLE `students_center_classes`
  ADD CONSTRAINT `students_center_classes_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `students_center_classes_ibfk_2` FOREIGN KEY (`center_class_id`) REFERENCES `center_classes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
