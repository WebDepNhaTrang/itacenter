-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th7 04, 2018 lúc 05:18 PM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_itacenter`
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
(3, 'MOS2-001', '2018-2019', '2018-06-04 22:26:47', '2018-06-30 20:30:22', 2),
(4, 'MOS1-001', '2018-2019', '2018-06-07 11:17:55', '2018-06-30 20:30:16', 1);

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
(2, 'MOS 2', '2018-06-30 20:20:35', '2018-06-30 20:20:35');

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
  `body` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `courses_fronts`
--

INSERT INTO `courses_fronts` (`id`, `name`, `description`, `image`, `icon`, `created_at`, `updated_at`, `body`) VALUES
(1, 'THIẾT KẾ THỜI TRANG NHÍ', 'Till the one day when the lady met this fellow and they knew it was much more than a hunch. It\'s time to put on makeup.', 'courses-front/May2018/6PiO9M6CqU8iSOygzxxR.png', 'courses-front/May2018/oxdXhJ1L4pRu1udtOuUd.png', '2018-05-21 23:22:00', '2018-07-04 08:08:10', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(2, 'MỸ THUẬT CƠ BẢN', 'Till the one day when the lady met this fellow and they knew it was much more than a hunch. It\'s time to put on makeup.', 'courses-front/May2018/a8v4pMF8ZlmKcrwjgZwY.png', 'courses-front/May2018/2pecldAGkE7AJdFGpFvB.png', '2018-05-22 00:51:00', '2018-07-04 08:08:01', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(3, 'THIẾT KẾ WEBSITE', 'Till the one day when the lady met this fellow and they knew it was much more than a hunch. It\'s time to put on makeup.', 'courses-front/May2018/k1vs2GWVZOlrxa53nsqw.png', 'courses-front/May2018/NCIEBU8hwELJuZ5npnl2.png', '2018-05-22 00:52:00', '2018-07-04 08:07:45', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(4, 'LẬP TRÌNH IOS', 'Till the one day when the lady met this fellow and they knew it was much more than a hunch. It\'s time to put on makeup.', 'courses-front/May2018/rXYtBNNaPfQ9OuQiztPF.png', 'courses-front/May2018/35dhU22kZ1YdxbLy6z4b.png', '2018-05-22 00:52:00', '2018-07-04 08:07:36', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(5, 'LẬP TRÌNH ANDROID', 'Till the one day when the lady met this fellow and they knew it was much more than a hunch. It\'s time to put on makeup.', 'courses-front/May2018/4o5KJAdtDsNTp65vBs7L.png', 'courses-front/May2018/B57NAF1lywfB6eNPKdjH.png', '2018-05-22 00:53:00', '2018-07-04 08:07:30', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(6, 'CHỨNG CHỈ MOS', 'Till the one day when the lady met this fellow and they knew it was much more than a hunch. It\'s time to put on makeup.', 'courses-front/May2018/W0LODNTLUZe0TZZZExLS.png', 'courses-front/May2018/eLAFeZnN2LWY8ErO4XPu.png', '2018-05-22 00:54:00', '2018-07-04 08:07:19', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');

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
(68, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(69, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
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
(116, 9, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, NULL, 5);

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
(11, 'students', 'students', 'Student', 'Students', 'voyager-study', 'App\\Student', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":\"id\"}', '2018-06-02 22:44:33', '2018-06-02 22:44:33'),
(12, 'regular_classes', 'regular-classes', 'Regular Class', 'Regular Classes', 'voyager-home', 'App\\RegularClass', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":\"id\"}', '2018-06-02 22:47:40', '2018-06-02 22:49:25'),
(13, 'center_classes', 'center-classes', 'Center Class', 'Center Classes', NULL, 'App\\CenterClass', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":\"id\"}', '2018-06-04 22:23:31', '2018-06-04 22:23:31'),
(16, 'center_class_types', 'center-class-types', 'Center Class Type', 'Center Class Types', 'voyager-study', 'App\\CenterClassType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-30 20:19:46', '2018-06-30 20:19:46');

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
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-04-28 07:37:26', '2018-04-28 20:41:58', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-04-28 07:37:26', '2018-04-28 07:37:26', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-04-28 07:37:26', '2018-04-28 07:37:26', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2018-04-28 07:37:26', '2018-05-25 08:08:35', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-04-28 07:37:26', '2018-04-28 20:41:58', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-04-28 07:37:26', '2018-04-28 20:41:58', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-04-28 07:37:26', '2018-04-28 20:41:58', 'voyager.compass.index', NULL),
(9, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2018-04-28 07:37:26', '2018-05-25 08:08:35', 'voyager.settings.index', NULL),
(10, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 23, 5, '2018-04-28 07:37:26', '2018-05-29 18:27:45', 'voyager.categories.index', NULL),
(11, 1, 'Posts', '', '_self', 'voyager-news', NULL, 23, 4, '2018-04-28 07:37:27', '2018-05-29 18:27:45', 'voyager.posts.index', NULL),
(12, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 5, '2018-04-28 07:37:27', '2018-05-25 08:08:35', 'voyager.pages.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 4, '2018-04-28 07:37:27', '2018-04-28 20:41:58', 'voyager.hooks', NULL),
(15, 2, 'Trang Chủ', '', '_self', NULL, '#000000', NULL, 10, '2018-05-02 09:41:23', '2018-05-02 09:41:23', 'frontend.pages.home', NULL),
(16, 2, 'Giới Thiệu', '', '_self', NULL, '#000000', NULL, 11, '2018-05-02 09:41:43', '2018-05-02 09:41:43', 'frontend.pages.about', NULL),
(17, 2, 'Khóa Học', '', '_self', NULL, '#000000', NULL, 12, '2018-05-02 09:41:57', '2018-05-02 09:41:57', 'frontend.pages.courses', NULL),
(18, 2, 'Tin Tức', '', '_self', NULL, '#000000', NULL, 13, '2018-05-02 09:42:11', '2018-05-02 09:42:11', 'frontend.pages.news', NULL),
(19, 2, 'Thông Báo', '', '_self', NULL, '#000000', NULL, 14, '2018-05-02 09:42:23', '2018-05-02 09:42:23', 'frontend.pages.notification', NULL),
(20, 2, 'Liên Hệ', '', '_self', NULL, '#000000', NULL, 15, '2018-05-02 09:42:43', '2018-05-02 09:42:43', 'frontend.pages.contact', NULL),
(22, 1, 'Courses', '', '_self', 'voyager-study', '#000000', 23, 1, '2018-05-22 00:59:03', '2018-05-22 04:02:31', 'voyager.courses-fronts.index', 'null'),
(23, 1, 'Custom Site', '', '_self', 'voyager-tv', '#000000', NULL, 8, '2018-05-22 04:01:16', '2018-05-25 08:08:35', NULL, ''),
(24, 1, 'Services', '', '_self', 'voyager-brush', '#000000', 23, 2, '2018-05-23 02:14:37', '2018-05-23 02:15:10', 'voyager.services-fronts.index', 'null'),
(25, 1, 'Testimonials', '', '_self', 'voyager-bubble-hear', '#000000', 23, 3, '2018-05-23 02:33:03', '2018-05-23 02:33:19', 'voyager.testimonials-fronts.index', 'null'),
(26, 1, 'Center Data', '', '_self', 'voyager-data', '#000000', NULL, 9, '2018-06-02 21:32:22', '2018-06-04 22:14:52', NULL, ''),
(27, 1, 'Students', '', '_self', 'voyager-study', NULL, 26, 1, '2018-06-02 22:44:33', '2018-06-04 22:24:02', 'voyager.students.index', NULL),
(28, 1, 'Regular Classes', '', '_self', 'voyager-home', '#000000', 26, 4, '2018-06-02 22:47:40', '2018-06-30 20:48:08', 'voyager.regular-classes.index', 'null'),
(29, 1, 'Center Classes', '', '_self', 'voyager-company', '#000000', 26, 2, '2018-06-04 22:23:31', '2018-06-04 22:24:44', 'voyager.center-classes.index', 'null'),
(30, 1, 'Statistic', '', '_self', 'voyager-pie-chart', '#000000', NULL, 10, '2018-06-30 19:53:34', '2018-07-03 09:21:54', 'backend.statistic.index', 'null'),
(32, 1, 'Center Class Types', '', '_self', 'voyager-study', NULL, 26, 3, '2018-06-30 20:19:46', '2018-06-30 20:48:08', 'voyager.center-class-types.index', NULL);

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
(86, 'delete_center_class_types', 'center_class_types', '2018-06-30 20:19:46', '2018-06-30 20:19:46');

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
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1);

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
(1, 1, 1, 'Tin tức 1', NULL, 'Excerpt tin tức 1', '<p>Content Tin tức 1</p>', 'posts/June2018/DJbNvhAFEFGBBYNkkLO3.jpg', 'tin-tuc-1', NULL, NULL, 'PUBLISHED', 0, '2018-06-07 10:33:41', '2018-06-07 10:33:41'),
(2, 1, 2, 'Thông báo 1', NULL, 'Excerpt Thông báo 1', '<p>Content&nbsp;Th&ocirc;ng b&aacute;o 1</p>', 'posts/June2018/Pe0xB0tQuNeGXRD6VAOn.jpg', 'thong-bao-1', NULL, NULL, 'PUBLISHED', 0, '2018-06-07 10:34:57', '2018-06-07 10:34:57');

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
(2, 'user', 'Normal User', '2018-04-28 07:37:26', '2018-04-28 07:37:26');

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
(1, 'Thiết kế website trọn gói', 'Here\'s the story of a lovely lady who was bringing up three very lovely girls.', 'services-fronts/May2018/4rx79U8I5Jn2e7IadX9I.jpg', '2018-05-23 02:17:00', '2018-07-04 08:14:43', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(2, 'Tư vấn thiết kế nội thất', 'Here\'s the story of a lovely lady who was bringing up three very lovely girls.', 'services-fronts/May2018/gD3QHgdRX7rEcbiEryAG.jpg', '2018-05-23 02:17:00', '2018-07-04 08:12:51', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(3, 'Cung cấp mặt hàng mỹ thuật', 'Here\'s the story of a lovely lady who was bringing up three very lovely girls.', 'services-fronts/May2018/ZBIjx9BU0k3SBdyKYwrW.jpg', '2018-05-23 02:18:00', '2018-07-04 08:12:43', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');

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
(3, 'site.logo', 'Site Logo', 'settings/May2018/hdQ3GkfUFcCKQbSafGGY.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 28, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', NULL, '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'ITA Center', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Chào mừng bạn đến với ITA Center', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', NULL, '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', NULL, '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(12, 'home.banner_photo', 'Home Banner Image', 'settings/May2018/9VYDhfLrJ3tJQ0HgSp1n.png', NULL, 'image', 8, 'Home'),
(13, 'home.banner_title', 'Home Banner Title', 'GIÁO DỤC LÀ CHÌA KHOÁ THÀNH CÔNG!', NULL, 'text', 6, 'Home'),
(14, 'home.banner_content', 'Home Banner Content', 'Love exciting and new. Come aboard were expecting you. Love life\'s sweetest reward Let it flow it floats back to you. Texas tea. A man is born he\'s a man of means you knew.', NULL, 'text_area', 7, 'Home'),
(15, 'home.courses_section_heading', 'Home Courses Section Heading', 'Khoá học của chúng tôi', NULL, 'text', 9, 'Home'),
(16, 'home.invite_section_heading', 'Home Invite Section Heading', 'Hãy đến với chúng tôi', NULL, 'text', 10, 'Home'),
(17, 'home.invite_section_content', 'Home Invite Section Content', 'Để tận hưởng các khoá học và dịch vụ tốt nhất', NULL, 'text', 11, 'Home'),
(18, 'home.invite_section_bg', 'Home Invite Section Background', 'settings/May2018/e5v1NdEJKs8E7bQBsxs4.jpg', NULL, 'image', 12, 'Home'),
(20, 'home.why_section_heading', 'Home Why Section Heading', 'Lý do bạn nên chọn chúng tôi?', NULL, 'text', 13, 'Home'),
(23, 'home.why_section_content', 'Home Why Section Content', 'The ship set ground on the shore of this uncharted desert isle with Gilligan the Skipper too the millionaire and his wife. These days are all Happy and Free. These days are all share them with me.\r\n<br>It\'s time to put on makeup. It\'s time to dress up right. It\'s time to raise the curtain on the Muppet Show tonight?', NULL, 'text_area', 14, 'Home'),
(24, 'home.why_section_image', 'Home Why Section Image', 'settings/May2018/BgbfLwDfidvgOtLGfkda.jpg', NULL, 'image', 15, 'Home'),
(25, 'home.why_section_single1_icon', 'Home Why Section Single_1 (Icon)', 'settings/May2018/I2Ni1YB8PsHeC8isx3WQ.png', NULL, 'image', 16, 'Home'),
(26, 'home.why_section_single2_icon', 'Home Why Section Single_2 (Icon)', 'settings/May2018/8SezKyZeNdkwsLDbmbCz.png', NULL, 'image', 18, 'Home'),
(27, 'home.why_section_single3_icon', 'Home Why Section Single_3 (Icon)', 'settings/May2018/npnZm4ghCDzOgJshSRtB.png', NULL, 'image', 20, 'Home'),
(28, 'home.why_section_single1_title', 'Home Why Section Single_1 (Title)', 'Experienced Faculty', NULL, 'text', 17, 'Home'),
(29, 'home.why_section_single2_title', 'Home Why Section Single_2 (Title)', 'Popular Courses', NULL, 'text', 19, 'Home'),
(30, 'home.why_section_single3_title', 'Home Why Section Single_3 (Title)', 'Guaranteed Career', NULL, 'text', 21, 'Home'),
(31, 'home.services_section_heading', 'Home Services Section Heading', 'Dịch vụ của chúng tôi', NULL, 'text', 22, 'Home'),
(32, 'home.testimonials_section_heading', 'Home Testimonials Section Heading', 'Đánh giá của học viên', NULL, 'text', 23, 'Home'),
(33, 'home.testimonials_section_des', 'Home Testimonials Section Des', NULL, NULL, 'text', 24, 'Home'),
(36, 'site.footer_right', 'Footer Right', '<h2 class=\"widget_title\">Thông tin liên hệ</h2>\r\n<ul class=\"footer_contact\">\r\n    <li>Số 01, Nguyễn Chánh, Nha Trang, Khánh Hoà</li>\r\n    <li>+01 123 456 78</li>\r\n    <li>+01 123 456 78</li>\r\n    <li>ttcntt_mtud@ms.ukh.edu.vn</li>\r\n</ul>', NULL, 'code_editor', 26, 'Site'),
(37, 'site.footer_left', 'Footer Left', '<h2 class=\"widget_title\">Về chúng tôi</h2>\r\n<p>Trung tâm Công nghệ thông tin và Mỹ thuật ứng dụng ra đời với sự mệnh cao cả đem lại cho các học viên những khóa học tốt nhất, cập nhật công nghệ mới, giúp học viên không chỉ học mà còn có cơ hội gặp gỡ tiếp xúc với xu thế của tương lai.</p>\r\n<ul class=\"footer_social\">\r\n    <li><a href=\"https://facebook.com\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a></li>\r\n    <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></li>\r\n    <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-google-plus\"></i></a></li>\r\n    <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-linkedin\"></i></a></li>\r\n</ul>', NULL, 'code_editor', 4, 'Site'),
(38, 'site.footer_copyright', 'Footer Copyright', '© 2018 ITA CENTER. All rights reserved', NULL, 'text', 27, 'Site'),
(39, 'about.banner_image', 'About Banner Image', 'settings/May2018/OKHRlnvOrqXePahdkk78.jpg', NULL, 'image', 29, 'About'),
(40, 'about.block_left_heading', 'About Block Left (Heading)', 'Chào mừng bạn', NULL, 'text', 30, 'About'),
(41, 'about.block_left_content', 'About Block Left (Content)', 'Trung tâm Công nghệ thông tin và Mỹ thuật ứng dụng ra đời với sự mệnh cao cả đem lại cho các học viên những khóa học tốt nhất, cập nhật công nghệ mới, giúp học viên không chỉ học mà còn có cơ hội gặp gỡ tiếp xúc với xu thế của tương lai. Bạn sẽ có đủ tự tin bước vào cuộc sống khi có đủ hành trang cho tương lại.', NULL, 'text_area', 31, 'About'),
(42, 'about.block_right_icon1', 'About Block Right ( Icon 1)', 'settings/May2018/4XZUK03RMhDgpfGN1VH4.png', NULL, 'image', 32, 'About'),
(43, 'about.block_right_icon2', 'About Block Right ( Icon 2)', 'settings/May2018/Sn5d2a3dUgGxONVUcMth.png', NULL, 'image', 35, 'About'),
(44, 'about.block_right_icon3', 'About Block Right ( Icon 3)', 'settings/May2018/wESWpFoaVB7g9nfg8xqH.png', NULL, 'image', 38, 'About'),
(45, 'about.block_right_heading1', 'About Block Right ( Heading 1)', 'CÔNG NGHỆ THÔNG TIN', NULL, 'text', 33, 'About'),
(46, 'about.block_right_heading2', 'About Block Right ( Heading 2)', 'MỸ THUẬT ỨNG DỤNG', NULL, 'text', 36, 'About'),
(47, 'about.block_right_heading3', 'About Block Right ( Heading 3)', 'THIẾT KẾ THỜI TRANG', NULL, 'text', 39, 'About'),
(48, 'about.block_right_content1', 'About Block Right ( Content 1)', 'You would see the biggest gift would be from me and the card attached would say thank you for being a friend.', NULL, 'text_area', 34, 'About'),
(49, 'about.block_right_content2', 'About Block Right ( Content 2)', 'On your mark get set and go now. Got a dream and we just know now we\'re gonna make our dream come true.', NULL, 'text_area', 37, 'About'),
(50, 'about.block_right_content3', 'About Block Right ( Content 3)', 'Just sit right back and you\'ll hear a tale a tale of a fateful trip that started from this tropic port aboard this tiny ship.', NULL, 'text_area', 40, 'About'),
(51, 'course.banner_image', 'Course Banner Image', 'settings/May2018/Yv1vojxVrtEcz9ZCLQ98.jpg', NULL, 'image', 41, 'Course'),
(52, 'course.course_section_heading', 'Course Section Heading', 'Khoá học của chúng tôi', NULL, 'text', 42, 'Course'),
(53, 'news.heading', 'News Heading', 'Information About Alumni', NULL, 'text', 44, 'News'),
(54, 'news.sub_heading', 'News Sub Heading', 'Check out the details of alumni', NULL, 'text', 47, 'News'),
(55, 'notification.heading', 'Notification Heading', 'Thông báo từ Trung tâm', NULL, 'text', 46, 'Notification'),
(56, 'notification.sub_heading', 'Notification Sub Heading', 'Cập nhật mới nhất đến các bạn học viên', NULL, 'text', 48, 'Notification'),
(59, 'news.paginate', 'News Paginate', '2', '{\r\n    \"default\" : \"2\",\r\n    \"options\" : {\r\n        \"2\": \"2\",\r\n        \"4\": \"4\",\r\n        \"6\": \"6\",\r\n        \"8\": \"8\",\r\n        \"10\": \"10\"\r\n    }\r\n}', 'select_dropdown', 51, 'News'),
(61, 'notification.paginate', 'Notification Paginate', '3', '{\r\n    \"default\" : \"3\",\r\n    \"options\" : {\r\n        \"3\": \"3\",\r\n        \"6\": \"6\",\r\n        \"9\": \"9\",\r\n        \"12\": \"12\"\r\n    }\r\n}', 'select_dropdown', 52, 'Notification'),
(62, 'contact.heading', 'Contact Heading', 'Hãy liên hệ với chúng tôi', NULL, 'text', 50, 'Contact'),
(63, 'contact.image', 'Contact Image', 'settings/May2018/hx7FCSmZ4xObzuIm39b2.jpg', NULL, 'image', 53, 'Contact'),
(64, 'news.banner_image', 'News Banner Image', 'settings/May2018/ycTTj7LXUMJ3Ab8EvyxF.jpg', NULL, 'image', 43, 'News'),
(65, 'notification.banner_image', 'Notification Banner Image', 'settings/May2018/zGXhC1M4e1NXvBhgsIvM.jpg', NULL, 'image', 45, 'Notification'),
(66, 'contact.banner_image', 'Contact Banner Image', 'settings/June2018/AzKupygm0TvXf9qoJPAL.jpg', NULL, 'image', 49, 'Contact'),
(68, 'contact.send_to_email', 'Contact Send To Email', 'chithien175@gmail.com', NULL, 'text', 54, 'Contact');

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
(20, '17504018', 'Đinh Quốc Cường', '1999-03-04', 2, '2018-06-17 09:20:00', '2018-06-30 20:32:31', 0),
(21, '17504256', 'Bùi Thị Minh Hậu', '1999-07-17 00:00:00', 1, '2018-06-17 09:20:03', NULL, 0),
(22, '17504064', 'Trương Thành Nam', '1999-03-01 00:00:00', 1, '2018-06-17 09:20:03', NULL, 0),
(23, '17504133', 'Huỳnh Nguyễn Bảo Ngọc', '1999-02-04 00:00:00', 1, '2018-06-17 09:20:03', NULL, 0),
(24, '17504141', 'Trần Thanh Nguyệt', '1999-04-11 00:00:00', 1, '2018-06-17 09:20:03', NULL, 0),
(25, '17504128', 'Huỳnh Uyển Nhi', '1999-06-12 00:00:00', 1, '2018-06-17 09:20:03', NULL, 0);

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
(10, 20, 4, NULL, '2018-07-03 09:22:29', 2),
(11, 21, 4, NULL, '2018-07-03 09:22:29', 4),
(12, 22, 4, NULL, '2018-07-03 09:22:29', 7),
(13, 20, 3, NULL, '2018-07-03 09:22:43', 4),
(14, 21, 3, NULL, '2018-07-03 09:22:43', 5),
(15, 22, 3, NULL, '2018-07-03 09:22:43', 9),
(16, 23, 3, NULL, '2018-07-03 09:22:43', 7),
(17, 24, 3, NULL, '2018-07-03 09:22:43', 4),
(18, 25, 3, NULL, '2018-07-03 09:22:43', 3);

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
(1, 'Thien Pham', 'when the odds are against him and their dangers work to do. The Love Boat soon will be making another run. The Love Boat promises something for everyone', 'testimonials-fronts/May2018/V4ABaLXmxxTJJXekDvb6.jpg', 'Business Management', '2018-05-23 02:35:12', '2018-05-23 02:35:12'),
(2, 'Khanh Tran', 'when the odds are against him and their dangers work to do. The Love Boat soon will be making another run. The Love Boat promises something for everyone', 'testimonials-fronts/May2018/NNFsMKPhFcms3P2ADl2z.jpg', 'Business Management', '2018-05-23 02:35:47', '2018-05-23 02:35:47');

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
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$GcPQwmg8DrDvchAZ.DhyKOqdZCCL6s1E3cYdn7Sx83lBJ/mLtYVx2', 'Lo45cTCZyaEjticDCbrL2m9h57dc4jFZHOGlqNy5FUrk6fVGwr37eoaU4Wgs', NULL, '2018-04-28 07:37:27', '2018-04-28 07:37:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `center_class_types`
--
ALTER TABLE `center_class_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `courses_fronts`
--
ALTER TABLE `courses_fronts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `regular_classes`
--
ALTER TABLE `regular_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `students_center_classes`
--
ALTER TABLE `students_center_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `testimonials_fronts`
--
ALTER TABLE `testimonials_fronts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
