-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2025 at 01:25 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ishak`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 9, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, '2025-07-31 05:42:23'),
(2, 0, 22, 'Admin', 'icon-server', '', NULL, NULL, '2025-07-31 05:42:23'),
(3, 2, 23, 'Users', 'icon-users', 'auth/users', NULL, NULL, '2025-07-31 05:42:23'),
(4, 2, 24, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, '2025-07-31 05:42:23'),
(5, 2, 25, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, '2025-07-31 05:42:23'),
(6, 2, 26, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, '2025-07-31 05:42:23'),
(7, 2, 27, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, '2025-07-31 05:42:23'),
(8, 0, 17, 'Helpers', 'icon-cogs', '', NULL, '2025-07-17 05:35:34', '2025-07-31 05:42:23'),
(9, 8, 18, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2025-07-17 05:35:34', '2025-07-31 05:42:23'),
(10, 8, 19, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2025-07-17 05:35:34', '2025-07-31 05:42:23'),
(11, 8, 20, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2025-07-17 05:35:34', '2025-07-31 05:42:23'),
(12, 8, 21, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2025-07-17 05:35:34', '2025-07-31 05:42:23'),
(13, 27, 6, 'Tourcategories', 'icon-file', 'tourcategories', NULL, '2025-07-18 04:41:54', '2025-07-31 05:42:23'),
(14, 27, 7, 'Tours', 'icon-file', 'tours', NULL, '2025-07-18 06:40:15', '2025-07-31 05:42:23'),
(15, 27, 8, 'Tourdetails', 'icon-file', 'tourdetails', NULL, '2025-07-23 00:15:09', '2025-07-31 05:42:23'),
(16, 0, 10, 'Book-tours', 'icon-file', 'book-tours', NULL, '2025-07-23 01:36:41', '2025-07-31 05:42:23'),
(17, 0, 11, 'Contacts', 'icon-file', 'contacts', NULL, '2025-07-23 01:37:54', '2025-07-23 01:37:54'),
(18, 19, 2, 'Galleries', 'icon-file', 'galleries', NULL, '2025-07-23 03:04:56', '2025-07-31 05:42:22'),
(19, 0, 1, 'Gallery', 'icon-air-freshener', NULL, NULL, '2025-07-23 03:05:27', '2025-07-31 05:42:22'),
(20, 19, 3, 'Videos', 'icon-file', 'videos', NULL, '2025-07-23 03:11:41', '2025-07-31 05:42:23'),
(21, 19, 4, 'Captured-moments', 'icon-file', 'captured-moments', NULL, '2025-07-28 02:26:02', '2025-07-31 05:42:23'),
(22, 0, 12, 'Customers', 'icon-file', 'customers', NULL, '2025-07-29 00:02:16', '2025-07-31 05:42:23'),
(23, 0, 13, 'Titles', 'icon-file', 'titles', NULL, '2025-07-30 01:11:16', '2025-07-31 05:42:23'),
(24, 0, 14, 'Inclusions', 'icon-file', 'inclusions', NULL, '2025-07-30 06:16:11', '2025-07-31 05:42:23'),
(25, 0, 15, 'Exclusions', 'icon-file', 'exclusions', NULL, '2025-07-30 06:24:08', '2025-07-31 05:42:23'),
(26, 0, 16, 'Infos', 'icon-file', 'infos', NULL, '2025-07-31 04:28:51', '2025-07-31 05:42:23'),
(27, 0, 5, 'Our Tour', 'icon-address-card', NULL, NULL, '2025-07-31 05:33:08', '2025-07-31 05:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-07-17 05:34:26', '2025-07-17 05:34:26'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-07-18 04:35:47', '2025-07-18 04:35:47'),
(3, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-18 04:39:00', '2025-07-18 04:39:00'),
(4, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"tourcategory\",\"model_name\":\"App\\\\Models\\\\Tourcategory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TourCategoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"1\":{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"0\":{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"seo_title\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"seo_description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"seo_keyword\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"status\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"bLFrjcdhyHEjpo7fj3FG1MP1twnZv6rzgWiXEUKU\"}', '2025-07-18 04:41:53', '2025-07-18 04:41:53'),
(5, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-18 04:41:56', '2025-07-18 04:41:56'),
(6, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-18 04:42:18', '2025-07-18 04:42:18'),
(7, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-18 05:01:43', '2025-07-18 05:01:43'),
(8, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-18 05:01:58', '2025-07-18 05:01:58'),
(9, 1, 'admin/tourcategories/create', 'GET', '127.0.0.1', '[]', '2025-07-18 05:02:24', '2025-07-18 05:02:24'),
(10, 1, 'admin/tourcategories/create', 'GET', '127.0.0.1', '[]', '2025-07-18 05:03:14', '2025-07-18 05:03:14'),
(11, 1, 'admin/tourcategories/create', 'GET', '127.0.0.1', '[]', '2025-07-18 05:04:03', '2025-07-18 05:04:03'),
(12, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-18 05:04:07', '2025-07-18 05:04:07'),
(13, 1, 'admin/tourcategories/create', 'GET', '127.0.0.1', '[]', '2025-07-18 05:04:08', '2025-07-18 05:04:08'),
(14, 1, 'admin/tourcategories', 'POST', '127.0.0.1', '{\"name\":\"First Day Tour\",\"slug\":null,\"seo_title\":\"First Day Tour Title\",\"seo_description\":\"First Day Tour Description\",\"seo_keyword\":\"First Day Tour Keywords\",\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"bLFrjcdhyHEjpo7fj3FG1MP1twnZv6rzgWiXEUKU\"}', '2025-07-18 05:04:43', '2025-07-18 05:04:43'),
(15, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-18 05:04:43', '2025-07-18 05:04:43'),
(16, 1, 'admin/tourcategories/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-18 05:04:47', '2025-07-18 05:04:47'),
(17, 1, 'admin/tourcategories/1', 'PUT', '127.0.0.1', '{\"name\":\"First Day Tour\",\"slug\":\"first-day-tour\",\"seo_title\":\"First Day Tour Title\",\"seo_description\":\"First Day Tour Description\",\"seo_keyword\":\"First Day Tour Keywords\",\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"bLFrjcdhyHEjpo7fj3FG1MP1twnZv6rzgWiXEUKU\",\"_method\":\"PUT\"}', '2025-07-18 05:50:58', '2025-07-18 05:50:58'),
(18, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-18 05:51:03', '2025-07-18 05:51:03'),
(19, 1, 'admin/tourcategories/create', 'GET', '127.0.0.1', '[]', '2025-07-18 06:08:53', '2025-07-18 06:08:53'),
(20, 1, 'admin/tourcategories', 'POST', '127.0.0.1', '{\"name\":\"Second Day Tour\",\"slug\":null,\"seo_title\":\"Second Day Tour Title\",\"seo_description\":\"Second Day Tour Description\",\"seo_keyword\":\"Second Day Tour Keywords\",\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"bLFrjcdhyHEjpo7fj3FG1MP1twnZv6rzgWiXEUKU\"}', '2025-07-18 06:09:34', '2025-07-18 06:09:34'),
(21, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-18 06:09:35', '2025-07-18 06:09:35'),
(22, 1, 'admin/tourcategories/create', 'GET', '127.0.0.1', '[]', '2025-07-18 06:28:46', '2025-07-18 06:28:46'),
(23, 1, 'admin/tourcategories', 'POST', '127.0.0.1', '{\"name\":\"Three Day Tour\",\"slug\":null,\"seo_title\":\"Three Day Tour Title\",\"seo_description\":\"Three Day Tour Description\",\"seo_keyword\":\"Three Day Tour Keywords\",\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"bLFrjcdhyHEjpo7fj3FG1MP1twnZv6rzgWiXEUKU\"}', '2025-07-18 06:30:40', '2025-07-18 06:30:40'),
(24, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-18 06:30:40', '2025-07-18 06:30:40'),
(25, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-18 06:32:01', '2025-07-18 06:32:01'),
(26, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-18 06:35:41', '2025-07-18 06:35:41'),
(27, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"tour\",\"model_name\":\"App\\\\Models\\\\Tour\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TourController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"0\":{\"name\":\"destination_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"thumnail_image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"banner_image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"gallery\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"short_description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"10\":{\"name\":\"days\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"7\":{\"name\":\"price\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"8\":{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"9\":{\"name\":\"itinerarys\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"11\":{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"bLFrjcdhyHEjpo7fj3FG1MP1twnZv6rzgWiXEUKU\"}', '2025-07-18 06:40:12', '2025-07-18 06:40:12'),
(28, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-18 06:40:16', '2025-07-18 06:40:16'),
(29, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-18 06:40:37', '2025-07-18 06:40:37'),
(30, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-18 06:40:41', '2025-07-18 06:40:41'),
(31, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-18 06:40:43', '2025-07-18 06:40:43'),
(32, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-18 07:25:52', '2025-07-18 07:25:52'),
(33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-07-22 23:20:46', '2025-07-22 23:20:46'),
(34, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-22 23:20:58', '2025-07-22 23:20:58'),
(35, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-22 23:21:04', '2025-07-22 23:21:04'),
(36, 1, 'admin/tours/create', 'GET', '127.0.0.1', '[]', '2025-07-22 23:21:06', '2025-07-22 23:21:06'),
(37, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 00:10:39', '2025-07-23 00:10:39'),
(38, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"tour_details_insert\",\"model_name\":\"App\\\\Models\\\\Tourdetails\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TourDetailsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"order_num\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"package_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"PRMnrq1iqtUCQ71zXI3qKQTOHOmcMB9CiIwKXOtU\"}', '2025-07-23 00:15:06', '2025-07-23 00:15:06'),
(39, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 00:15:11', '2025-07-23 00:15:11'),
(40, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 00:16:03', '2025-07-23 00:16:03'),
(41, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-07-23 00:16:06', '2025-07-23 00:16:06'),
(42, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-23 00:16:09', '2025-07-23 00:16:09'),
(43, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-23 00:16:11', '2025-07-23 00:16:11'),
(44, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-07-23 01:08:35', '2025-07-23 01:08:35'),
(45, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-23 01:09:03', '2025-07-23 01:09:03'),
(46, 1, 'admin/tours/create', 'GET', '127.0.0.1', '[]', '2025-07-23 01:09:07', '2025-07-23 01:09:07'),
(47, 1, 'admin/tours/create', 'GET', '127.0.0.1', '[]', '2025-07-23 01:20:57', '2025-07-23 01:20:57'),
(48, 1, 'admin/tours/create', 'GET', '127.0.0.1', '[]', '2025-07-23 01:21:29', '2025-07-23 01:21:29'),
(49, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-23 01:29:53', '2025-07-23 01:29:53'),
(50, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-23 01:29:55', '2025-07-23 01:29:55'),
(51, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-07-23 01:29:56', '2025-07-23 01:29:56'),
(52, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-23 01:29:58', '2025-07-23 01:29:58'),
(53, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 01:34:31', '2025-07-23 01:34:31'),
(54, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"book\",\"model_name\":\"App\\\\Models\\\\BookTour\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\BookTourController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"tour_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"phone\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"tour_date\",\"type\":\"date\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"message\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"PRMnrq1iqtUCQ71zXI3qKQTOHOmcMB9CiIwKXOtU\"}', '2025-07-23 01:36:40', '2025-07-23 01:36:40'),
(55, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 01:36:41', '2025-07-23 01:36:41'),
(56, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 01:36:52', '2025-07-23 01:36:52'),
(57, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"contact\",\"model_name\":\"App\\\\Models\\\\Contact\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ContactController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"phone\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"message\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"PRMnrq1iqtUCQ71zXI3qKQTOHOmcMB9CiIwKXOtU\"}', '2025-07-23 01:37:54', '2025-07-23 01:37:54'),
(58, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 01:37:55', '2025-07-23 01:37:55'),
(59, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 01:38:07', '2025-07-23 01:38:07'),
(60, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-07-23 01:38:52', '2025-07-23 01:38:52'),
(61, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 03:04:22', '2025-07-23 03:04:22'),
(62, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"gallery\",\"model_name\":\"App\\\\Models\\\\Gallery\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\GalleryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"PRMnrq1iqtUCQ71zXI3qKQTOHOmcMB9CiIwKXOtU\"}', '2025-07-23 03:04:55', '2025-07-23 03:04:55'),
(63, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 03:04:56', '2025-07-23 03:04:56'),
(64, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2025-07-23 03:05:09', '2025-07-23 03:05:09'),
(65, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-23 03:05:11', '2025-07-23 03:05:11'),
(66, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Gallery\",\"icon\":\"icon-air-freshener\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"PRMnrq1iqtUCQ71zXI3qKQTOHOmcMB9CiIwKXOtU\"}', '2025-07-23 03:05:27', '2025-07-23 03:05:27'),
(67, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-23 03:05:28', '2025-07-23 03:05:28'),
(68, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '[]', '2025-07-23 03:05:32', '2025-07-23 03:05:32'),
(69, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"19\",\"search_terms\":null,\"title\":\"Galleries\",\"icon\":\"icon-file\",\"uri\":\"galleries\",\"roles\":[null],\"permission\":null,\"_token\":\"PRMnrq1iqtUCQ71zXI3qKQTOHOmcMB9CiIwKXOtU\",\"_method\":\"PUT\"}', '2025-07-23 03:05:38', '2025-07-23 03:05:38'),
(70, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-23 03:05:38', '2025-07-23 03:05:38'),
(71, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-23 03:05:41', '2025-07-23 03:05:41'),
(72, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-23 03:05:45', '2025-07-23 03:05:45'),
(73, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-23 03:05:56', '2025-07-23 03:05:56'),
(74, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-07-23 03:05:58', '2025-07-23 03:05:58'),
(75, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 03:10:26', '2025-07-23 03:10:26'),
(76, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"video\",\"model_name\":\"App\\\\Models\\\\Video\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\VideoController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"video_link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"PRMnrq1iqtUCQ71zXI3qKQTOHOmcMB9CiIwKXOtU\"}', '2025-07-23 03:11:40', '2025-07-23 03:11:40'),
(77, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 03:11:41', '2025-07-23 03:11:41'),
(78, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-23 03:11:53', '2025-07-23 03:11:53'),
(79, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-23 03:11:57', '2025-07-23 03:11:57'),
(80, 1, 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '[]', '2025-07-23 03:11:59', '2025-07-23 03:11:59'),
(81, 1, 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"19\",\"search_terms\":null,\"title\":\"Videos\",\"icon\":\"icon-file\",\"uri\":\"videos\",\"roles\":[null],\"permission\":null,\"_token\":\"PRMnrq1iqtUCQ71zXI3qKQTOHOmcMB9CiIwKXOtU\",\"_method\":\"PUT\"}', '2025-07-23 03:12:03', '2025-07-23 03:12:03'),
(82, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-23 03:12:04', '2025-07-23 03:12:04'),
(83, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-23 03:12:06', '2025-07-23 03:12:06'),
(84, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2025-07-23 03:12:12', '2025-07-23 03:12:12'),
(85, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-23 03:12:39', '2025-07-23 03:12:39'),
(86, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-23 03:13:45', '2025-07-23 03:13:45'),
(87, 1, 'admin/galleries', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"alt\",\"type\":\"desc\"}}', '2025-07-23 03:13:46', '2025-07-23 03:13:46'),
(88, 1, 'admin/galleries', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"alt\",\"type\":\"asc\"}}', '2025-07-23 03:13:50', '2025-07-23 03:13:50'),
(89, 1, 'admin/galleries', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"alt\",\"type\":\"asc\"}}', '2025-07-23 03:13:54', '2025-07-23 03:13:54'),
(90, 1, 'admin/galleries/create', 'GET', '127.0.0.1', '[]', '2025-07-23 03:13:58', '2025-07-23 03:13:58'),
(91, 1, 'admin/galleries', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"alt\",\"type\":\"asc\"}}', '2025-07-23 03:14:00', '2025-07-23 03:14:00'),
(92, 1, 'admin/galleries', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2025-07-23 03:14:03', '2025-07-23 03:14:03'),
(93, 1, 'admin/galleries', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2025-07-23 03:14:04', '2025-07-23 03:14:04'),
(94, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-23 03:15:23', '2025-07-23 03:15:23'),
(95, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-07-23 03:20:05', '2025-07-23 03:20:05'),
(96, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-23 03:20:08', '2025-07-23 03:20:08'),
(97, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-07-25 23:45:34', '2025-07-25 23:45:34'),
(98, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-07-25 23:45:42', '2025-07-25 23:45:42'),
(99, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-25 23:45:49', '2025-07-25 23:45:49'),
(100, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-25 23:45:51', '2025-07-25 23:45:51'),
(101, 1, 'admin/tours/create', 'GET', '127.0.0.1', '[]', '2025-07-25 23:46:14', '2025-07-25 23:46:14'),
(102, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-07-26 03:38:59', '2025-07-26 03:38:59'),
(103, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-26 03:39:04', '2025-07-26 03:39:04'),
(104, 1, 'admin/tours/create', 'GET', '127.0.0.1', '[]', '2025-07-26 03:39:07', '2025-07-26 03:39:07'),
(105, 1, 'admin/tours', 'POST', '127.0.0.1', '{\"destination_id\":\"1\",\"search_terms\":null,\"title\":\"Non suscipit duis vo\",\"slug\":null,\"short_description\":\"Provident aliquid i\",\"days\":\"11\",\"price\":\"983\",\"description\":\"<p>In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.vIn case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.<\\/p>\",\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"is_featured\":null,\"_token\":\"JTMftFJgZr7nd3ZAcpax7Q7vvYXs5x3FjmloEIkZ\"}', '2025-07-26 03:39:43', '2025-07-26 03:39:43'),
(106, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-26 03:39:43', '2025-07-26 03:39:43'),
(107, 1, 'admin/tours/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-26 03:39:46', '2025-07-26 03:39:46'),
(108, 1, 'admin/tours/1', 'PUT', '127.0.0.1', '{\"destination_id\":\"1\",\"search_terms\":null,\"title\":\"Non suscipit duis vo\",\"slug\":\"non-suscipit-duis-vo\",\"short_description\":\"Provident aliquid i\",\"days\":\"11\",\"price\":\"983\",\"description\":\"<p>In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.vIn case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.<\\/p>\",\"tourdetailsinsert\":{\"new_1\":{\"order_num\":\"1\",\"name\":\"1\",\"description\":\"In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"order_num\":\"2\",\"name\":\"2\",\"description\":\"In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.\",\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"is_featured\":\"1\",\"is_featured_cb\":\"on\",\"_token\":\"JTMftFJgZr7nd3ZAcpax7Q7vvYXs5x3FjmloEIkZ\",\"_method\":\"PUT\"}', '2025-07-26 03:40:07', '2025-07-26 03:40:07'),
(109, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-26 03:40:07', '2025-07-26 03:40:07'),
(110, 1, 'admin/tours/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-26 03:40:09', '2025-07-26 03:40:09'),
(111, 1, 'admin/tours/1', 'PUT', '127.0.0.1', '{\"destination_id\":\"1\",\"search_terms\":null,\"title\":\"Non suscipit duis vo\",\"slug\":\"non-suscipit-duis-vo\",\"short_description\":\"Provident aliquid i\",\"days\":\"11\",\"price\":\"983\",\"description\":\"<p>In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.vIn case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.<\\/p>\",\"tourdetailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"1\",\"description\":\"In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"2\",\"description\":\"In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Ut non reprehenderit\",\"seo_description\":\"Qui omnis laborum E\",\"seo_keyword\":\"Eveniet illo Nam au\",\"is_featured\":\"on\",\"is_featured_cb\":\"on\",\"_token\":\"JTMftFJgZr7nd3ZAcpax7Q7vvYXs5x3FjmloEIkZ\",\"_method\":\"PUT\"}', '2025-07-26 03:40:16', '2025-07-26 03:40:16'),
(112, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-26 03:40:17', '2025-07-26 03:40:17'),
(113, 1, 'admin/tours/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-26 03:40:19', '2025-07-26 03:40:19'),
(114, 1, 'admin/tours/1', 'PUT', '127.0.0.1', '{\"destination_id\":\"1\",\"search_terms\":null,\"title\":\"Non suscipit duis vo\",\"slug\":\"non-suscipit-duis-vo\",\"short_description\":\"Provident aliquid i\",\"days\":\"11\",\"price\":\"983\",\"description\":\"<p>In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.vIn case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.<\\/p>\",\"tourdetailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"1\",\"description\":\"In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"2\",\"description\":\"In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Ut non reprehenderit\",\"seo_description\":\"Qui omnis laborum E\",\"seo_keyword\":\"Eveniet illo Nam au\",\"is_featured\":\"off\",\"_token\":\"JTMftFJgZr7nd3ZAcpax7Q7vvYXs5x3FjmloEIkZ\",\"_method\":\"PUT\"}', '2025-07-26 03:40:24', '2025-07-26 03:40:24'),
(115, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-26 03:40:25', '2025-07-26 03:40:25'),
(116, 1, 'admin/tours/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-26 03:40:26', '2025-07-26 03:40:26'),
(117, 1, 'admin/tours/1', 'PUT', '127.0.0.1', '{\"destination_id\":\"1\",\"search_terms\":null,\"title\":\"Non suscipit duis vo\",\"slug\":\"non-suscipit-duis-vo\",\"short_description\":\"Provident aliquid i\",\"days\":\"11\",\"price\":\"983\",\"description\":\"<p>In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.vIn case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.<\\/p>\",\"tourdetailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"1\",\"description\":\"In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"2\",\"description\":\"In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Ut non reprehenderit\",\"seo_description\":\"Qui omnis laborum E\",\"seo_keyword\":\"Eveniet illo Nam au\",\"is_featured\":\"on\",\"is_featured_cb\":\"on\",\"_token\":\"JTMftFJgZr7nd3ZAcpax7Q7vvYXs5x3FjmloEIkZ\",\"_method\":\"PUT\"}', '2025-07-26 03:40:30', '2025-07-26 03:40:30'),
(118, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-26 03:40:30', '2025-07-26 03:40:30'),
(119, 1, 'admin/tours/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-26 03:40:33', '2025-07-26 03:40:33'),
(120, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-07-28 00:31:49', '2025-07-28 00:31:49'),
(121, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-28 00:31:57', '2025-07-28 00:31:57'),
(122, 1, 'admin/galleries/create', 'GET', '127.0.0.1', '[]', '2025-07-28 00:32:03', '2025-07-28 00:32:03'),
(123, 1, 'admin/galleries', 'POST', '127.0.0.1', '{\"alt\":\"Hawa mahal\",\"_token\":\"I0hLnBX2bh0NrNSJms6qxBCcu9f6KbbTLlWDAP7w\"}', '2025-07-28 00:32:33', '2025-07-28 00:32:33'),
(124, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-28 00:32:34', '2025-07-28 00:32:34'),
(125, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-28 00:33:20', '2025-07-28 00:33:20'),
(126, 1, 'admin/galleries/create', 'GET', '127.0.0.1', '[]', '2025-07-28 00:34:23', '2025-07-28 00:34:23'),
(127, 1, 'admin/galleries', 'POST', '127.0.0.1', '{\"alt\":\"Architecturel city\",\"_token\":\"I0hLnBX2bh0NrNSJms6qxBCcu9f6KbbTLlWDAP7w\"}', '2025-07-28 00:34:57', '2025-07-28 00:34:57'),
(128, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-28 00:34:57', '2025-07-28 00:34:57'),
(129, 1, 'admin/galleries/create', 'GET', '127.0.0.1', '[]', '2025-07-28 00:35:03', '2025-07-28 00:35:03'),
(130, 1, 'admin/galleries', 'POST', '127.0.0.1', '{\"alt\":\"Allbert Hall\",\"_token\":\"I0hLnBX2bh0NrNSJms6qxBCcu9f6KbbTLlWDAP7w\"}', '2025-07-28 00:35:13', '2025-07-28 00:35:13'),
(131, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-28 00:35:14', '2025-07-28 00:35:14'),
(132, 1, 'admin/galleries/create', 'GET', '127.0.0.1', '[]', '2025-07-28 00:35:15', '2025-07-28 00:35:15'),
(133, 1, 'admin/galleries', 'POST', '127.0.0.1', '{\"alt\":\"Patrika Gate\",\"_token\":\"I0hLnBX2bh0NrNSJms6qxBCcu9f6KbbTLlWDAP7w\"}', '2025-07-28 00:35:45', '2025-07-28 00:35:45'),
(134, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-28 00:35:45', '2025-07-28 00:35:45'),
(135, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-28 01:01:21', '2025-07-28 01:01:21'),
(136, 1, 'admin/galleries/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-28 01:01:23', '2025-07-28 01:01:23'),
(137, 1, 'admin/galleries/1', 'PUT', '127.0.0.1', '{\"name\":\"Hawa Mahal\",\"content\":\"An unforgettable journey through the land of high passes,pristine lakes, and rugged beauty.\",\"alt\":\"Hawa mahal\",\"_token\":\"I0hLnBX2bh0NrNSJms6qxBCcu9f6KbbTLlWDAP7w\",\"_method\":\"PUT\"}', '2025-07-28 01:01:53', '2025-07-28 01:01:53'),
(138, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-28 01:01:57', '2025-07-28 01:01:57'),
(139, 1, 'admin/galleries/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-28 01:01:59', '2025-07-28 01:01:59'),
(140, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-28 01:02:05', '2025-07-28 01:02:05'),
(141, 1, 'admin/galleries/2/edit', 'GET', '127.0.0.1', '[]', '2025-07-28 01:02:08', '2025-07-28 01:02:08'),
(142, 1, 'admin/galleries/2', 'PUT', '127.0.0.1', '{\"name\":\"Architecturel city\",\"content\":\"An unforgettable journey through the land of high passes,pristine lakes, and rugged beauty.\",\"alt\":\"Architecturel city\",\"_token\":\"I0hLnBX2bh0NrNSJms6qxBCcu9f6KbbTLlWDAP7w\",\"_method\":\"PUT\"}', '2025-07-28 01:02:22', '2025-07-28 01:02:22'),
(143, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-28 01:02:22', '2025-07-28 01:02:22'),
(144, 1, 'admin/galleries/3/edit', 'GET', '127.0.0.1', '[]', '2025-07-28 01:02:25', '2025-07-28 01:02:25'),
(145, 1, 'admin/galleries/3', 'PUT', '127.0.0.1', '{\"name\":\"Allbert Hall\",\"content\":\"An unforgettable journey through the land of high passes,pristine lakes, and rugged beauty.\",\"alt\":\"Allbert Hall\",\"_token\":\"I0hLnBX2bh0NrNSJms6qxBCcu9f6KbbTLlWDAP7w\",\"_method\":\"PUT\"}', '2025-07-28 01:02:35', '2025-07-28 01:02:35'),
(146, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-28 01:02:36', '2025-07-28 01:02:36'),
(147, 1, 'admin/galleries/4/edit', 'GET', '127.0.0.1', '[]', '2025-07-28 01:02:39', '2025-07-28 01:02:39'),
(148, 1, 'admin/galleries/4', 'PUT', '127.0.0.1', '{\"name\":\"Patrika Gate\",\"content\":\"An unforgettable journey through the land of high passes,pristine lakes, and rugged beauty.\",\"alt\":\"Patrika Gate\",\"_token\":\"I0hLnBX2bh0NrNSJms6qxBCcu9f6KbbTLlWDAP7w\",\"_method\":\"PUT\"}', '2025-07-28 01:02:47', '2025-07-28 01:02:47'),
(149, 1, 'admin/galleries', 'GET', '127.0.0.1', '[]', '2025-07-28 01:02:47', '2025-07-28 01:02:47'),
(150, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-28 02:25:25', '2025-07-28 02:25:25'),
(151, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"capturedmoment\",\"model_name\":\"App\\\\Models\\\\CapturedMoment\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CapturedMomentController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"I0hLnBX2bh0NrNSJms6qxBCcu9f6KbbTLlWDAP7w\"}', '2025-07-28 02:25:59', '2025-07-28 02:25:59'),
(152, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-28 02:26:04', '2025-07-28 02:26:04'),
(153, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-28 02:27:30', '2025-07-28 02:27:30'),
(154, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-28 02:27:35', '2025-07-28 02:27:35'),
(155, 1, 'admin/auth/menu/21/edit', 'GET', '127.0.0.1', '[]', '2025-07-28 02:27:38', '2025-07-28 02:27:38'),
(156, 1, 'admin/auth/menu/21', 'PUT', '127.0.0.1', '{\"parent_id\":\"19\",\"search_terms\":null,\"title\":\"Captured-moments\",\"icon\":\"icon-file\",\"uri\":\"captured-moments\",\"roles\":[null],\"permission\":null,\"_token\":\"I0hLnBX2bh0NrNSJms6qxBCcu9f6KbbTLlWDAP7w\",\"_method\":\"PUT\"}', '2025-07-28 02:27:43', '2025-07-28 02:27:43'),
(157, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-28 02:27:43', '2025-07-28 02:27:43'),
(158, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-28 02:27:47', '2025-07-28 02:27:47'),
(159, 1, 'admin/captured-moments', 'GET', '127.0.0.1', '[]', '2025-07-28 02:27:50', '2025-07-28 02:27:50'),
(160, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-07-28 06:04:18', '2025-07-28 06:04:18'),
(161, 1, 'admin/captured-moments', 'GET', '127.0.0.1', '[]', '2025-07-28 06:04:23', '2025-07-28 06:04:23'),
(162, 1, 'admin/captured-moments/create', 'GET', '127.0.0.1', '[]', '2025-07-28 06:04:25', '2025-07-28 06:04:25'),
(163, 1, 'admin/captured-moments', 'POST', '127.0.0.1', '{\"_token\":\"Abd3Yp5I1cNOP2p3rX3OLrbWSCvNbyAOeSNWFd6y\"}', '2025-07-28 06:04:49', '2025-07-28 06:04:49'),
(164, 1, 'admin/captured-moments', 'GET', '127.0.0.1', '[]', '2025-07-28 06:04:49', '2025-07-28 06:04:49'),
(165, 1, 'admin/captured-moments/create', 'GET', '127.0.0.1', '[]', '2025-07-28 06:04:51', '2025-07-28 06:04:51'),
(166, 1, 'admin/captured-moments', 'POST', '127.0.0.1', '{\"_token\":\"Abd3Yp5I1cNOP2p3rX3OLrbWSCvNbyAOeSNWFd6y\"}', '2025-07-28 06:04:57', '2025-07-28 06:04:57'),
(167, 1, 'admin/captured-moments', 'GET', '127.0.0.1', '[]', '2025-07-28 06:04:58', '2025-07-28 06:04:58'),
(168, 1, 'admin/captured-moments/create', 'GET', '127.0.0.1', '[]', '2025-07-28 06:05:00', '2025-07-28 06:05:00'),
(169, 1, 'admin/captured-moments', 'POST', '127.0.0.1', '{\"_token\":\"Abd3Yp5I1cNOP2p3rX3OLrbWSCvNbyAOeSNWFd6y\"}', '2025-07-28 06:05:08', '2025-07-28 06:05:08'),
(170, 1, 'admin/captured-moments', 'GET', '127.0.0.1', '[]', '2025-07-28 06:05:09', '2025-07-28 06:05:09'),
(171, 1, 'admin/captured-moments/create', 'GET', '127.0.0.1', '[]', '2025-07-28 06:05:10', '2025-07-28 06:05:10'),
(172, 1, 'admin/captured-moments', 'POST', '127.0.0.1', '{\"_token\":\"Abd3Yp5I1cNOP2p3rX3OLrbWSCvNbyAOeSNWFd6y\"}', '2025-07-28 06:05:17', '2025-07-28 06:05:17'),
(173, 1, 'admin/captured-moments', 'GET', '127.0.0.1', '[]', '2025-07-28 06:05:18', '2025-07-28 06:05:18'),
(174, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2025-07-28 06:56:38', '2025-07-28 06:56:38'),
(175, 1, 'admin/videos/create', 'GET', '127.0.0.1', '[]', '2025-07-28 06:56:45', '2025-07-28 06:56:45'),
(176, 1, 'admin/videos', 'POST', '127.0.0.1', '{\"video_link\":\"https:\\/\\/www.youtube.com\\/watch?v=JgDNFQ2RaLQ&list=RD6swmTBVI83k&index=2&ab_channel=EdSheeran\",\"alt\":\"ed don\",\"_token\":\"Abd3Yp5I1cNOP2p3rX3OLrbWSCvNbyAOeSNWFd6y\"}', '2025-07-28 06:57:25', '2025-07-28 06:57:25'),
(177, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2025-07-28 06:57:26', '2025-07-28 06:57:26'),
(178, 1, 'admin/videos/create', 'GET', '127.0.0.1', '[]', '2025-07-28 06:57:35', '2025-07-28 06:57:35'),
(179, 1, 'admin/videos/create', 'GET', '127.0.0.1', '[]', '2025-07-28 06:58:19', '2025-07-28 06:58:19'),
(180, 1, 'admin/videos', 'POST', '127.0.0.1', '{\"video_link\":\"https:\\/\\/www.youtube.com\\/watch?v=JgDNFQ2RaLQ&list=RD6swmTBVI83k&index=2&ab_channel=EdSheeran\",\"alt\":\"hgjhghjg\",\"_token\":\"Abd3Yp5I1cNOP2p3rX3OLrbWSCvNbyAOeSNWFd6y\"}', '2025-07-28 06:58:34', '2025-07-28 06:58:34'),
(181, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2025-07-28 06:58:34', '2025-07-28 06:58:34'),
(182, 1, 'admin/videos/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-28 06:59:51', '2025-07-28 06:59:51'),
(183, 1, 'admin/videos/1', 'PUT', '127.0.0.1', '{\"video_link\":\"https:\\/\\/www.youtube.com\\/embed\\/OWBpbMLAhd4?si=klRQlyjHNJ2yp4az\",\"alt\":\"ed don\",\"_token\":\"Abd3Yp5I1cNOP2p3rX3OLrbWSCvNbyAOeSNWFd6y\",\"_method\":\"PUT\"}', '2025-07-28 06:59:55', '2025-07-28 06:59:55'),
(184, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2025-07-28 06:59:56', '2025-07-28 06:59:56'),
(185, 1, 'admin/videos/2/edit', 'GET', '127.0.0.1', '[]', '2025-07-28 06:59:58', '2025-07-28 06:59:58'),
(186, 1, 'admin/videos/2', 'PUT', '127.0.0.1', '{\"video_link\":\"https:\\/\\/www.youtube.com\\/embed\\/OWBpbMLAhd4?si=klRQlyjHNJ2yp4az\",\"alt\":\"hgjhghjg\",\"_token\":\"Abd3Yp5I1cNOP2p3rX3OLrbWSCvNbyAOeSNWFd6y\",\"_method\":\"PUT\"}', '2025-07-28 07:00:01', '2025-07-28 07:00:01'),
(187, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2025-07-28 07:00:01', '2025-07-28 07:00:01'),
(188, 1, 'admin/videos/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-28 07:02:40', '2025-07-28 07:02:40'),
(189, 1, 'admin/videos/1', 'PUT', '127.0.0.1', '{\"video_link\":\"https:\\/\\/www.youtube.com\\/embed\\/OWBpbMLAhd4\",\"alt\":\"ed don\",\"_token\":\"Abd3Yp5I1cNOP2p3rX3OLrbWSCvNbyAOeSNWFd6y\",\"_method\":\"PUT\"}', '2025-07-28 07:02:53', '2025-07-28 07:02:53'),
(190, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2025-07-28 07:02:53', '2025-07-28 07:02:53'),
(191, 1, 'admin/videos/2/edit', 'GET', '127.0.0.1', '[]', '2025-07-28 07:02:55', '2025-07-28 07:02:55'),
(192, 1, 'admin/videos/2', 'PUT', '127.0.0.1', '{\"video_link\":\"https:\\/\\/www.youtube.com\\/embed\\/OWBpbMLAhd4\",\"alt\":\"hgjhghjg\",\"_token\":\"Abd3Yp5I1cNOP2p3rX3OLrbWSCvNbyAOeSNWFd6y\",\"_method\":\"PUT\"}', '2025-07-28 07:03:00', '2025-07-28 07:03:00'),
(193, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2025-07-28 07:03:01', '2025-07-28 07:03:01'),
(194, 1, 'admin/videos/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-28 07:03:22', '2025-07-28 07:03:22'),
(195, 1, 'admin/videos/1', 'PUT', '127.0.0.1', '{\"video_link\":\"https:\\/\\/www.youtube.com\\/embed\\/HcOc7P5BMi4\",\"alt\":\"ed don\",\"_token\":\"Abd3Yp5I1cNOP2p3rX3OLrbWSCvNbyAOeSNWFd6y\",\"_method\":\"PUT\"}', '2025-07-28 07:03:34', '2025-07-28 07:03:34'),
(196, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2025-07-28 07:03:34', '2025-07-28 07:03:34'),
(197, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-07-29 00:00:11', '2025-07-29 00:00:11'),
(198, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-29 00:00:22', '2025-07-29 00:00:22'),
(199, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"customers\",\"model_name\":\"App\\\\Models\\\\Customers\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CustomersController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"star\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"message\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"KPOBISp0fUSzJobkjFOgcbkG3xEgOOgHxbbzJUfI\"}', '2025-07-29 00:02:15', '2025-07-29 00:02:15'),
(200, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-29 00:02:18', '2025-07-29 00:02:18'),
(201, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-29 00:02:36', '2025-07-29 00:02:36'),
(202, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-29 00:02:40', '2025-07-29 00:02:40'),
(203, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2025-07-29 00:02:49', '2025-07-29 00:02:49'),
(204, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-29 00:02:54', '2025-07-29 00:02:54'),
(205, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2025-07-29 00:03:24', '2025-07-29 00:03:24'),
(206, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2025-07-29 00:04:45', '2025-07-29 00:04:45'),
(207, 1, 'admin/customers/create', 'GET', '127.0.0.1', '[]', '2025-07-29 00:04:47', '2025-07-29 00:04:47'),
(208, 1, 'admin/customers', 'POST', '127.0.0.1', '{\"name\":\"Signe Wolf\",\"star\":\"5\",\"message\":\"Enim quis incididunt\",\"_token\":\"KPOBISp0fUSzJobkjFOgcbkG3xEgOOgHxbbzJUfI\"}', '2025-07-29 00:05:10', '2025-07-29 00:05:10'),
(209, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2025-07-29 00:05:11', '2025-07-29 00:05:11'),
(210, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2025-07-29 00:05:27', '2025-07-29 00:05:27'),
(211, 1, 'admin/customers/create', 'GET', '127.0.0.1', '[]', '2025-07-29 00:05:31', '2025-07-29 00:05:31'),
(212, 1, 'admin/customers', 'POST', '127.0.0.1', '{\"name\":\"Illiana Bishop\",\"star\":\"3.5\",\"message\":\"Aut ipsum mollitia p\",\"_token\":\"KPOBISp0fUSzJobkjFOgcbkG3xEgOOgHxbbzJUfI\"}', '2025-07-29 00:05:47', '2025-07-29 00:05:47'),
(213, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2025-07-29 00:05:47', '2025-07-29 00:05:47'),
(214, 1, 'admin/customers/create', 'GET', '127.0.0.1', '[]', '2025-07-29 00:05:49', '2025-07-29 00:05:49'),
(215, 1, 'admin/customers', 'POST', '127.0.0.1', '{\"name\":\"William Mullins\",\"star\":\"3\",\"message\":\"Culpa dolor est rep\",\"_token\":\"KPOBISp0fUSzJobkjFOgcbkG3xEgOOgHxbbzJUfI\"}', '2025-07-29 00:06:03', '2025-07-29 00:06:03'),
(216, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2025-07-29 00:06:04', '2025-07-29 00:06:04'),
(217, 1, 'admin/customers/create', 'GET', '127.0.0.1', '[]', '2025-07-29 00:06:05', '2025-07-29 00:06:05'),
(218, 1, 'admin/customers', 'POST', '127.0.0.1', '{\"name\":\"Daria Bishop\",\"star\":\"4\",\"message\":\"Est in dolore aut es\",\"_token\":\"KPOBISp0fUSzJobkjFOgcbkG3xEgOOgHxbbzJUfI\"}', '2025-07-29 00:06:17', '2025-07-29 00:06:17'),
(219, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2025-07-29 00:06:17', '2025-07-29 00:06:17'),
(220, 1, 'admin/customers/create', 'GET', '127.0.0.1', '[]', '2025-07-29 00:07:43', '2025-07-29 00:07:43'),
(221, 1, 'admin/customers', 'POST', '127.0.0.1', '{\"name\":\"Octavia Clay\",\"star\":\"2\",\"message\":\"Cillum repudiandae o\",\"_token\":\"KPOBISp0fUSzJobkjFOgcbkG3xEgOOgHxbbzJUfI\",\"after-save\":\"view\"}', '2025-07-29 00:07:56', '2025-07-29 00:07:56'),
(222, 1, 'admin/customers/5', 'GET', '127.0.0.1', '[]', '2025-07-29 00:07:57', '2025-07-29 00:07:57'),
(223, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2025-07-29 00:07:59', '2025-07-29 00:07:59'),
(224, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-29 00:38:23', '2025-07-29 00:38:23'),
(225, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-29 00:39:52', '2025-07-29 00:39:52'),
(226, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-29 00:40:16', '2025-07-29 00:40:16'),
(227, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-29 04:38:38', '2025-07-29 04:38:38'),
(228, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-29 04:39:09', '2025-07-29 04:39:09'),
(229, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-30 00:31:40', '2025-07-30 00:31:40'),
(230, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-30 00:31:44', '2025-07-30 00:31:44'),
(231, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2025-07-30 00:31:48', '2025-07-30 00:31:48'),
(232, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-07-30 00:31:50', '2025-07-30 00:31:50'),
(233, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-07-30 00:32:25', '2025-07-30 00:32:25'),
(234, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-07-30 00:32:54', '2025-07-30 00:32:54'),
(235, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-07-30 00:45:30', '2025-07-30 00:45:30'),
(236, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Contact\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchDelete\",\"_key\":\"1,2,3,4,5\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 00:45:38', '2025-07-30 00:45:38'),
(237, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-07-30 00:45:38', '2025-07-30 00:45:38'),
(238, 1, 'admin/contacts/1,2,3,4,5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 00:45:39', '2025-07-30 00:45:39'),
(239, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-07-30 00:45:39', '2025-07-30 00:45:39'),
(240, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-07-30 00:45:41', '2025-07-30 00:45:41'),
(241, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-30 01:03:50', '2025-07-30 01:03:50');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(242, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"title\",\"model_name\":\"App\\\\Models\\\\Title\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SeoTitleController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"seo_title_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_image_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_tour\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_tour\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_tour\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_image_tour\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_gallery\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_gallery\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_gallery\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_image_gallery\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_image_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 01:11:15', '2025-07-30 01:11:15'),
(243, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-30 01:11:18', '2025-07-30 01:11:18'),
(244, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-30 01:11:35', '2025-07-30 01:11:35'),
(245, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-07-30 01:11:37', '2025-07-30 01:11:37'),
(246, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-07-30 01:14:01', '2025-07-30 01:14:01'),
(247, 1, 'admin/titles/create', 'GET', '127.0.0.1', '[]', '2025-07-30 01:14:03', '2025-07-30 01:14:03'),
(248, 1, 'admin/titles/create', 'GET', '127.0.0.1', '[]', '2025-07-30 01:15:32', '2025-07-30 01:15:32'),
(249, 1, 'admin/titles/create', 'GET', '127.0.0.1', '[]', '2025-07-30 01:16:24', '2025-07-30 01:16:24'),
(250, 1, 'admin/titles', 'POST', '127.0.0.1', '{\"seo_title_home\":\"home title\",\"seo_des_home\":\"home description\",\"seo_key_home\":\"home keyword\",\"seo_title_tour\":\"tour title\",\"seo_des_tour\":\"tour description\",\"seo_key_tour\":\"tour keyword\",\"seo_title_gallery\":\"gallery title\",\"seo_des_gallery\":\"gallery description\",\"seo_key_gallery\":\"gallery keyword\",\"seo_title_contact\":\"Contact title\",\"seo_des_contact\":\"Contact Description\",\"seo_key_contact\":\"Contact Keyword\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\",\"after-save\":\"view\"}', '2025-07-30 01:21:25', '2025-07-30 01:21:25'),
(251, 1, 'admin/titles/1', 'GET', '127.0.0.1', '[]', '2025-07-30 01:21:25', '2025-07-30 01:21:25'),
(252, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-07-30 01:21:28', '2025-07-30 01:21:28'),
(253, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-07-30 01:23:01', '2025-07-30 01:23:01'),
(254, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-30 01:59:16', '2025-07-30 01:59:16'),
(255, 1, 'admin/tours/create', 'GET', '127.0.0.1', '[]', '2025-07-30 01:59:27', '2025-07-30 01:59:27'),
(256, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-30 02:00:58', '2025-07-30 02:00:58'),
(257, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-30 02:01:01', '2025-07-30 02:01:01'),
(258, 1, 'admin/tours/create', 'GET', '127.0.0.1', '[]', '2025-07-30 02:01:02', '2025-07-30 02:01:02'),
(259, 1, 'admin/tours', 'POST', '127.0.0.1', '{\"destination_id\":\"1\",\"search_terms\":null,\"title\":\"One Day Jaipur Food Tour\",\"slug\":null,\"short_description\":\"One Day Jaipur Food Tour \\u2013 A delicious day exploring Jaipur\\u2019s best local flavors! From royal Rajasthani thalis to hidden street food gems, experience the Pink City through its most iconic dishes in just one day.\",\"days\":\"1\",\"price\":\"1500\",\"description\":\"<p>Embark on a flavorful journey through Jaipur with our <strong>One Day Jaipur Food Tour<\\/strong>, perfect for food lovers who want to taste the true essence of Rajasthani cuisine. This guided tour takes you from traditional breakfast spots to royal-style lunches and ends with an unforgettable evening of street food adventures. Discover the rich culinary heritage of the Pink City, visit bustling markets, learn about local spices, and enjoy dishes like kachori, ghewar, laal maas, and more. Whether you&#39;re a first-time visitor or a returning traveler, this one-day culinary experience will leave your taste buds tingling and your heart full.<\\/p>\",\"tourdetailsinsert\":{\"new_1\":{\"order_num\":\"1\",\"name\":\"8:00 AM \\u2013 Pickup from Hotel\",\"description\":\"Start your day with a hotel pickup by your food guide who will brief you about Jaipur\\u2019s rich culinary heritage and the day\\u2019s exciting food stops.\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"order_num\":\"2\",\"name\":\"8:30 AM \\u2013 Traditional Rajasthani Breakfast\",\"description\":\"Enjoy crispy kachori, spicy aloo sabzi, jalebi, and sweet lassi at a popular local eatery like Lassiwala or Samrat Restaurant on MI Road.\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"order_num\":\"3\",\"name\":\"10:00 AM \\u2013 Visit Spice & Vegetable Market\",\"description\":\"Stroll through a bustling market to explore colorful spices, fresh vegetables, and local ingredients while learning about their uses in Rajasthani cuisine.\",\"id\":null,\"_remove_\":\"0\"},\"new_4\":{\"order_num\":\"4\",\"name\":\"11:30 AM \\u2013 Cultural Landmark Stop (Optional)\",\"description\":\"Make a short stop at Hawa Mahal or City Palace for a quick photo session and to soak in Jaipur\\u2019s architectural beauty between food tastings.\",\"id\":null,\"_remove_\":\"0\"},\"new_5\":{\"order_num\":\"5\",\"name\":\"1:00 PM \\u2013 Rajasthani Thali Lunch\",\"description\":\"Savor a traditional Rajasthani thali featuring dal baati churma, gatte ki sabzi, ker sangri, bajra roti, and more at a local restaurant like Thali House.\",\"id\":null,\"_remove_\":\"0\"},\"new_6\":{\"order_num\":\"6\",\"name\":\"2:30 PM \\u2013 Masala Chai Break\",\"description\":\"Relax with a cup of strong ginger masala chai and some crunchy snacks at a charming tea stall like Tapri Central or a local chaiwala.\",\"id\":null,\"_remove_\":\"0\"},\"new_7\":{\"order_num\":\"7\",\"name\":\"4:00 PM \\u2013 Traditional Sweet Stop\",\"description\":\"Delight your sweet tooth with famous Rajasthani desserts like ghewar, mawa kachori, and rasgulla from iconic sweet shops like LMB or Rawat.\",\"id\":null,\"_remove_\":\"0\"},\"new_8\":{\"order_num\":\"8\",\"name\":\"6:00 PM \\u2013 Evening Street Food Walk\",\"description\":\"Experience Jaipur\\u2019s buzzing street food scene with pani puri, pav bhaji, mirchi vada, and kulfi in markets like Bapu Bazaar or Masala Chowk.\",\"id\":null,\"_remove_\":\"0\"},\"new_9\":{\"order_num\":\"9\",\"name\":\"7:30 PM \\u2013 Food Souvenir Shopping (Optional)\",\"description\":\"Pick up unique local snacks, pickles, or spice blends as edible souvenirs to take a taste of Jaipur back home with you.\",\"id\":null,\"_remove_\":\"0\"},\"new_10\":{\"order_num\":\"10\",\"name\":\"8:00 PM \\u2013 Return to Hotel\",\"description\":\"End your flavorful journey with a hotel drop-off, full belly, and unforgettable memories of Jaipur\\u2019s vibrant food culture.\",\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":\"One Day Jaipur Food Tour | Taste Authentic Rajasthani Cuisine & Street Food\",\"seo_description\":\"Join our One Day Jaipur Food Tour and explore the Pink City\\u2019s best street food, traditional Rajasthani dishes, and sweet treats. A perfect culinary experience for food lovers in Jaipur!\",\"seo_keyword\":null,\"is_featured\":null,\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 02:10:21', '2025-07-30 02:10:21'),
(260, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-30 02:10:21', '2025-07-30 02:10:21'),
(261, 1, 'admin/tours/2/edit', 'GET', '127.0.0.1', '[]', '2025-07-30 02:10:27', '2025-07-30 02:10:27'),
(262, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-30 02:10:30', '2025-07-30 02:10:30'),
(263, 1, 'admin/tours/create', 'GET', '127.0.0.1', '[]', '2025-07-30 02:10:31', '2025-07-30 02:10:31'),
(264, 1, 'admin/tours', 'POST', '127.0.0.1', '{\"destination_id\":\"1\",\"search_terms\":null,\"title\":\"Half Day Jaipur Tour by Tuk Tuk\",\"slug\":null,\"short_description\":\"Half Day Jaipur Tour by Tuk Tuk \\u2013 Explore the vibrant heritage of the Pink City on a fun and flexible tuk tuk ride. Discover top landmarks, colorful bazaars, and local culture \\u2014 all in just half a day!\",\"days\":\"0.5\",\"price\":\"1000\",\"description\":\"<p>Get ready for an unforgettable ride through Jaipur&rsquo;s iconic streets with our Half Day Jaipur Tour by Tuk Tuk. Perfect for travelers short on time but big on curiosity, this experience takes you through the highlights of the Pink City &mdash; from majestic palaces to bustling bazaars. Your friendly tuk tuk driver and guide will navigate narrow alleys and grand boulevards, giving you an insider&#39;s view of Jaipur&rsquo;s rich history, local traditions, and vibrant street life. Whether it&#39;s your first time or a repeat visit, this tour promises colorful sights, cultural insights, and a whole lot of fun in just a few hours.<\\/p>\",\"tourdetailsinsert\":{\"new_1\":{\"order_num\":\"1\",\"name\":\"9:00 AM \\u2013 Hotel Pickup\",\"description\":\"Start your tour with a hotel pickup by your friendly tuk tuk driver, who will give a quick overview of the journey through Jaipur\\u2019s historic highlights.\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"order_num\":\"2\",\"name\":\"9:15 AM \\u2013 Hawa Mahal (Palace of Winds)\",\"description\":\"Stop by the iconic pink sandstone Hawa Mahal for a beautiful photo opportunity and learn about its royal architectural purpose for royal ladies.\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"order_num\":\"3\",\"name\":\"9:45 AM \\u2013 City Palace Visit\",\"description\":\"Explore the royal residence of Jaipur\\u2019s Maharajas featuring museums, ornate gates, grand courtyards, and centuries of royal artifacts and costumes.\",\"id\":null,\"_remove_\":\"0\"},\"new_4\":{\"order_num\":\"4\",\"name\":\"10:45 AM \\u2013 Jantar Mantar\",\"description\":\"Visit this UNESCO World Heritage Site with the world\\u2019s largest sundial and precise astronomical instruments used for star mapping in the 18th century.\",\"id\":null,\"_remove_\":\"0\"},\"new_5\":{\"order_num\":\"5\",\"name\":\"11:30 AM \\u2013 Local Bazaar Walk\",\"description\":\"Browse colorful bazaars like Johari or Bapu Bazaar, known for textiles, jewelry, traditional shoes, and local crafts \\u2013 or just enjoy a cultural walk.\",\"id\":null,\"_remove_\":\"0\"},\"new_6\":{\"order_num\":\"6\",\"name\":\"12:00 PM \\u2013 Optional Chai or Snack Break\",\"description\":\"Relax with a hot cup of masala chai and a light snack like a samosa at a local tea stall, loved by locals and visitors alike.\",\"id\":null,\"_remove_\":\"0\"},\"new_7\":{\"order_num\":\"7\",\"name\":\"12:45 PM \\u2013 Return to Hotel\",\"description\":\"End your half-day adventure with a drop back at your hotel or central Jaipur location, filled with cultural insights and tuk tuk fun.\",\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":\"Half Day Jaipur Tour by Tuk Tuk | Explore Top Attractions in Just 4 Hours\",\"seo_description\":\"Discover Jaipur\\u2019s top sights in just half a day with our Tuk Tuk tour. Visit Hawa Mahal, City Palace, bazaars, and more with a local guide. Perfect for short stays!\",\"seo_keyword\":null,\"is_featured\":null,\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 02:15:43', '2025-07-30 02:15:43'),
(265, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-30 02:15:44', '2025-07-30 02:15:44'),
(266, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-30 04:55:54', '2025-07-30 04:55:54'),
(267, 1, 'admin/tours/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-30 04:55:56', '2025-07-30 04:55:56'),
(268, 1, 'admin/tours/1', 'PUT', '127.0.0.1', '{\"destination_id\":\"1\",\"search_terms\":null,\"title\":\"Non suscipit duis vo\",\"slug\":\"non-suscipit-duis-vo\",\"short_description\":\"Provident aliquid i\",\"days\":\"11\",\"price\":\"983\",\"description\":\"<p>In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.vIn case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.<\\/p>\",\"tourdetailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"1\",\"description\":\"In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"2\",\"description\":\"In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Ut non reprehenderit\",\"seo_description\":\"Qui omnis laborum E\",\"seo_keyword\":\"Eveniet illo Nam au\",\"is_featured\":\"1\",\"is_featured_cb\":\"on\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\",\"_method\":\"PUT\"}', '2025-07-30 04:56:06', '2025-07-30 04:56:06'),
(269, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-30 04:56:06', '2025-07-30 04:56:06'),
(270, 1, 'admin/tours/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-30 04:56:09', '2025-07-30 04:56:09'),
(271, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-30 04:56:14', '2025-07-30 04:56:14'),
(272, 1, 'admin/tours/2/edit', 'GET', '127.0.0.1', '[]', '2025-07-30 04:56:16', '2025-07-30 04:56:16'),
(273, 1, 'admin/tours/2', 'PUT', '127.0.0.1', '{\"destination_id\":\"1\",\"search_terms\":null,\"title\":\"One Day Jaipur Food Tour\",\"slug\":\"one-day-jaipur-food-tour\",\"short_description\":\"One Day Jaipur Food Tour \\u2013 A delicious day exploring Jaipur\\u2019s best local flavors! From royal Rajasthani thalis to hidden street food gems, experience the Pink City through its most iconic dishes in just one day.\",\"days\":\"1\",\"price\":\"1500\",\"description\":\"<p>Embark on a flavorful journey through Jaipur with our <strong>One Day Jaipur Food Tour<\\/strong>, perfect for food lovers who want to taste the true essence of Rajasthani cuisine. This guided tour takes you from traditional breakfast spots to royal-style lunches and ends with an unforgettable evening of street food adventures. Discover the rich culinary heritage of the Pink City, visit bustling markets, learn about local spices, and enjoy dishes like kachori, ghewar, laal maas, and more. Whether you&#39;re a first-time visitor or a returning traveler, this one-day culinary experience will leave your taste buds tingling and your heart full.<\\/p>\",\"tourdetailsinsert\":{\"3\":{\"order_num\":\"1\",\"name\":\"8:00 AM \\u2013 Pickup from Hotel\",\"description\":\"Start your day with a hotel pickup by your food guide who will brief you about Jaipur\\u2019s rich culinary heritage and the day\\u2019s exciting food stops.\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"order_num\":\"2\",\"name\":\"8:30 AM \\u2013 Traditional Rajasthani Breakfast\",\"description\":\"Enjoy crispy kachori, spicy aloo sabzi, jalebi, and sweet lassi at a popular local eatery like Lassiwala or Samrat Restaurant on MI Road.\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"order_num\":\"3\",\"name\":\"10:00 AM \\u2013 Visit Spice & Vegetable Market\",\"description\":\"Stroll through a bustling market to explore colorful spices, fresh vegetables, and local ingredients while learning about their uses in Rajasthani cuisine.\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"order_num\":\"4\",\"name\":\"11:30 AM \\u2013 Cultural Landmark Stop (Optional)\",\"description\":\"Make a short stop at Hawa Mahal or City Palace for a quick photo session and to soak in Jaipur\\u2019s architectural beauty between food tastings.\",\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"order_num\":\"5\",\"name\":\"1:00 PM \\u2013 Rajasthani Thali Lunch\",\"description\":\"Savor a traditional Rajasthani thali featuring dal baati churma, gatte ki sabzi, ker sangri, bajra roti, and more at a local restaurant like Thali House.\",\"id\":\"7\",\"_remove_\":\"0\"},\"8\":{\"order_num\":\"6\",\"name\":\"2:30 PM \\u2013 Masala Chai Break\",\"description\":\"Relax with a cup of strong ginger masala chai and some crunchy snacks at a charming tea stall like Tapri Central or a local chaiwala.\",\"id\":\"8\",\"_remove_\":\"0\"},\"9\":{\"order_num\":\"7\",\"name\":\"4:00 PM \\u2013 Traditional Sweet Stop\",\"description\":\"Delight your sweet tooth with famous Rajasthani desserts like ghewar, mawa kachori, and rasgulla from iconic sweet shops like LMB or Rawat.\",\"id\":\"9\",\"_remove_\":\"0\"},\"10\":{\"order_num\":\"8\",\"name\":\"6:00 PM \\u2013 Evening Street Food Walk\",\"description\":\"Experience Jaipur\\u2019s buzzing street food scene with pani puri, pav bhaji, mirchi vada, and kulfi in markets like Bapu Bazaar or Masala Chowk.\",\"id\":\"10\",\"_remove_\":\"0\"},\"11\":{\"order_num\":\"9\",\"name\":\"7:30 PM \\u2013 Food Souvenir Shopping (Optional)\",\"description\":\"Pick up unique local snacks, pickles, or spice blends as edible souvenirs to take a taste of Jaipur back home with you.\",\"id\":\"11\",\"_remove_\":\"0\"},\"12\":{\"order_num\":\"10\",\"name\":\"8:00 PM \\u2013 Return to Hotel\",\"description\":\"End your flavorful journey with a hotel drop-off, full belly, and unforgettable memories of Jaipur\\u2019s vibrant food culture.\",\"id\":\"12\",\"_remove_\":\"0\"}},\"seo_title\":\"One Day Jaipur Food Tour | Taste Authentic Rajasthani Cuisine & Street Food\",\"seo_description\":\"Join our One Day Jaipur Food Tour and explore the Pink City\\u2019s best street food, traditional Rajasthani dishes, and sweet treats. A perfect culinary experience for food lovers in Jaipur!\",\"seo_keyword\":null,\"is_featured\":\"1\",\"is_featured_cb\":\"on\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\",\"_method\":\"PUT\"}', '2025-07-30 04:56:29', '2025-07-30 04:56:29'),
(274, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-30 04:56:29', '2025-07-30 04:56:29'),
(275, 1, 'admin/tours/3/edit', 'GET', '127.0.0.1', '[]', '2025-07-30 04:56:31', '2025-07-30 04:56:31'),
(276, 1, 'admin/tours/3', 'PUT', '127.0.0.1', '{\"destination_id\":\"1\",\"search_terms\":null,\"title\":\"Half Day Jaipur Tour by Tuk Tuk\",\"slug\":\"half-day-jaipur-tour-by-tuk-tuk\",\"short_description\":\"Half Day Jaipur Tour by Tuk Tuk \\u2013 Explore the vibrant heritage of the Pink City on a fun and flexible tuk tuk ride. Discover top landmarks, colorful bazaars, and local culture \\u2014 all in just half a day!\",\"days\":\"0.5\",\"price\":\"1000\",\"description\":\"<p>Get ready for an unforgettable ride through Jaipur&rsquo;s iconic streets with our Half Day Jaipur Tour by Tuk Tuk. Perfect for travelers short on time but big on curiosity, this experience takes you through the highlights of the Pink City &mdash; from majestic palaces to bustling bazaars. Your friendly tuk tuk driver and guide will navigate narrow alleys and grand boulevards, giving you an insider&#39;s view of Jaipur&rsquo;s rich history, local traditions, and vibrant street life. Whether it&#39;s your first time or a repeat visit, this tour promises colorful sights, cultural insights, and a whole lot of fun in just a few hours.<\\/p>\",\"tourdetailsinsert\":{\"13\":{\"order_num\":\"1\",\"name\":\"9:00 AM \\u2013 Hotel Pickup\",\"description\":\"Start your tour with a hotel pickup by your friendly tuk tuk driver, who will give a quick overview of the journey through Jaipur\\u2019s historic highlights.\",\"id\":\"13\",\"_remove_\":\"0\"},\"14\":{\"order_num\":\"2\",\"name\":\"9:15 AM \\u2013 Hawa Mahal (Palace of Winds)\",\"description\":\"Stop by the iconic pink sandstone Hawa Mahal for a beautiful photo opportunity and learn about its royal architectural purpose for royal ladies.\",\"id\":\"14\",\"_remove_\":\"0\"},\"15\":{\"order_num\":\"3\",\"name\":\"9:45 AM \\u2013 City Palace Visit\",\"description\":\"Explore the royal residence of Jaipur\\u2019s Maharajas featuring museums, ornate gates, grand courtyards, and centuries of royal artifacts and costumes.\",\"id\":\"15\",\"_remove_\":\"0\"},\"16\":{\"order_num\":\"4\",\"name\":\"10:45 AM \\u2013 Jantar Mantar\",\"description\":\"Visit this UNESCO World Heritage Site with the world\\u2019s largest sundial and precise astronomical instruments used for star mapping in the 18th century.\",\"id\":\"16\",\"_remove_\":\"0\"},\"17\":{\"order_num\":\"5\",\"name\":\"11:30 AM \\u2013 Local Bazaar Walk\",\"description\":\"Browse colorful bazaars like Johari or Bapu Bazaar, known for textiles, jewelry, traditional shoes, and local crafts \\u2013 or just enjoy a cultural walk.\",\"id\":\"17\",\"_remove_\":\"0\"},\"18\":{\"order_num\":\"6\",\"name\":\"12:00 PM \\u2013 Optional Chai or Snack Break\",\"description\":\"Relax with a hot cup of masala chai and a light snack like a samosa at a local tea stall, loved by locals and visitors alike.\",\"id\":\"18\",\"_remove_\":\"0\"},\"19\":{\"order_num\":\"7\",\"name\":\"12:45 PM \\u2013 Return to Hotel\",\"description\":\"End your half-day adventure with a drop back at your hotel or central Jaipur location, filled with cultural insights and tuk tuk fun.\",\"id\":\"19\",\"_remove_\":\"0\"}},\"seo_title\":\"Half Day Jaipur Tour by Tuk Tuk | Explore Top Attractions in Just 4 Hours\",\"seo_description\":\"Discover Jaipur\\u2019s top sights in just half a day with our Tuk Tuk tour. Visit Hawa Mahal, City Palace, bazaars, and more with a local guide. Perfect for short stays!\",\"seo_keyword\":null,\"is_featured\":\"1\",\"is_featured_cb\":\"on\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\",\"_method\":\"PUT\"}', '2025-07-30 04:56:40', '2025-07-30 04:56:40'),
(277, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-30 04:56:40', '2025-07-30 04:56:40'),
(278, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:18:59', '2025-07-30 05:18:59'),
(279, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:30:50', '2025-07-30 05:30:50'),
(280, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:31:23', '2025-07-30 05:31:23'),
(281, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:31:58', '2025-07-30 05:31:58'),
(282, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:32:16', '2025-07-30 05:32:16'),
(283, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:34:26', '2025-07-30 05:34:26'),
(284, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:36:31', '2025-07-30 05:36:31'),
(285, 1, 'admin/book-tours/create', 'GET', '127.0.0.1', '[]', '2025-07-30 05:36:35', '2025-07-30 05:36:35'),
(286, 1, 'admin/book-tours', 'POST', '127.0.0.1', '{\"tour_name\":\"Ori Padilla\",\"name\":\"Armando West\",\"email\":\"jedug@mailinator.com\",\"phone\":\"12711561871\",\"tour_date\":\"2006-01-01\",\"message\":\"Amet sed et blandit\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 05:36:42', '2025-07-30 05:36:42'),
(287, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:36:42', '2025-07-30 05:36:42'),
(288, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:37:34', '2025-07-30 05:37:34'),
(289, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:38:47', '2025-07-30 05:38:47'),
(290, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:39:11', '2025-07-30 05:39:11'),
(291, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:45:36', '2025-07-30 05:45:36'),
(292, 1, 'admin/tours/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-30 05:45:38', '2025-07-30 05:45:38'),
(293, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-30 05:45:50', '2025-07-30 05:45:50'),
(294, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-30 06:12:20', '2025-07-30 06:12:20'),
(295, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"inclusions\",\"model_name\":\"App\\\\Models\\\\Inclusions\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\InclusionsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"content\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 06:16:11', '2025-07-30 06:16:11'),
(296, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-30 06:16:12', '2025-07-30 06:16:12'),
(297, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-30 06:17:10', '2025-07-30 06:17:10'),
(298, 1, 'admin/inclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:17:13', '2025-07-30 06:17:13'),
(299, 1, 'admin/inclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:18:18', '2025-07-30 06:18:18'),
(300, 1, 'admin/inclusions/create', 'GET', '127.0.0.1', '[]', '2025-07-30 06:18:35', '2025-07-30 06:18:35'),
(301, 1, 'admin/inclusions', 'POST', '127.0.0.1', '{\"name\":\"Private Car\",\"content\":\"Private, air-conditioned car (Sedan, SUV, Van)\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 06:19:20', '2025-07-30 06:19:20'),
(302, 1, 'admin/inclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:19:21', '2025-07-30 06:19:21'),
(303, 1, 'admin/inclusions/create', 'GET', '127.0.0.1', '[]', '2025-07-30 06:19:26', '2025-07-30 06:19:26'),
(304, 1, 'admin/inclusions', 'POST', '127.0.0.1', '{\"name\":\"Pickup & drop\",\"content\":\"Private, air-conditioned car (Sedan, SUV, Van)\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 06:20:04', '2025-07-30 06:20:04'),
(305, 1, 'admin/inclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:20:04', '2025-07-30 06:20:04'),
(306, 1, 'admin/inclusions/create', 'GET', '127.0.0.1', '[]', '2025-07-30 06:20:07', '2025-07-30 06:20:07'),
(307, 1, 'admin/inclusions', 'POST', '127.0.0.1', '{\"name\":\"Water Bottle\",\"content\":\"Private, air-conditioned car (Sedan, SUV, Van)\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 06:20:23', '2025-07-30 06:20:23'),
(308, 1, 'admin/inclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:20:24', '2025-07-30 06:20:24'),
(309, 1, 'admin/inclusions/create', 'GET', '127.0.0.1', '[]', '2025-07-30 06:20:26', '2025-07-30 06:20:26'),
(310, 1, 'admin/inclusions', 'POST', '127.0.0.1', '{\"name\":\"Taxes & Parking\",\"content\":\"Private, air-conditioned car (Sedan, SUV, Van)\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 06:20:50', '2025-07-30 06:20:50'),
(311, 1, 'admin/inclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:20:50', '2025-07-30 06:20:50'),
(312, 1, 'admin/inclusions/create', 'GET', '127.0.0.1', '[]', '2025-07-30 06:20:53', '2025-07-30 06:20:53'),
(313, 1, 'admin/inclusions', 'POST', '127.0.0.1', '{\"name\":\"Personal Guide\",\"content\":\"Private, air-conditioned car (Sedan, SUV, Van)\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 06:21:34', '2025-07-30 06:21:34'),
(314, 1, 'admin/inclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:21:34', '2025-07-30 06:21:34'),
(315, 1, 'admin/inclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:21:51', '2025-07-30 06:21:51'),
(316, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-30 06:22:49', '2025-07-30 06:22:49'),
(317, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"exclusion\",\"model_name\":\"App\\\\Models\\\\Exclusion\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ExclusionController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"content\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 06:24:08', '2025-07-30 06:24:08'),
(318, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-30 06:24:09', '2025-07-30 06:24:09'),
(319, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-30 06:24:28', '2025-07-30 06:24:28'),
(320, 1, 'admin/exclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:24:32', '2025-07-30 06:24:32'),
(321, 1, 'admin/exclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:24:58', '2025-07-30 06:24:58'),
(322, 1, 'admin/exclusions/create', 'GET', '127.0.0.1', '[]', '2025-07-30 06:25:07', '2025-07-30 06:25:07'),
(323, 1, 'admin/exclusions', 'POST', '127.0.0.1', '{\"name\":\"Meals & Snacks\",\"content\":\"Private, air-conditioned car (Sedan, SUV, Van)\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 06:25:37', '2025-07-30 06:25:37'),
(324, 1, 'admin/exclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:25:37', '2025-07-30 06:25:37'),
(325, 1, 'admin/exclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:25:54', '2025-07-30 06:25:54'),
(326, 1, 'admin/exclusions/create', 'GET', '127.0.0.1', '[]', '2025-07-30 06:25:55', '2025-07-30 06:25:55'),
(327, 1, 'admin/exclusions', 'POST', '127.0.0.1', '{\"name\":\"Entry Fees\",\"content\":\"Private, air-conditioned car (Sedan, SUV, Van)\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 06:26:15', '2025-07-30 06:26:15'),
(328, 1, 'admin/exclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:26:15', '2025-07-30 06:26:15'),
(329, 1, 'admin/exclusions/create', 'GET', '127.0.0.1', '[]', '2025-07-30 06:26:17', '2025-07-30 06:26:17'),
(330, 1, 'admin/exclusions', 'POST', '127.0.0.1', '{\"name\":\"Travel Insurance\",\"content\":\"Private, air-conditioned car (Sedan, SUV, Van)\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 06:26:32', '2025-07-30 06:26:32'),
(331, 1, 'admin/exclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:26:32', '2025-07-30 06:26:32'),
(332, 1, 'admin/exclusions/create', 'GET', '127.0.0.1', '[]', '2025-07-30 06:26:34', '2025-07-30 06:26:34'),
(333, 1, 'admin/exclusions', 'POST', '127.0.0.1', '{\"name\":\"Personal Expenses\",\"content\":\"Private, air-conditioned car (Sedan, SUV, Van)\",\"_token\":\"1rhfU1PXB60jE0udzh1SDg2EWuKb0fe1JGoegqwk\"}', '2025-07-30 06:27:04', '2025-07-30 06:27:04'),
(334, 1, 'admin/exclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:27:04', '2025-07-30 06:27:04'),
(335, 1, 'admin/inclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:27:08', '2025-07-30 06:27:08'),
(336, 1, 'admin/exclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 06:27:09', '2025-07-30 06:27:09'),
(337, 1, 'admin/exclusions', 'GET', '127.0.0.1', '[]', '2025-07-30 07:48:52', '2025-07-30 07:48:52'),
(338, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 07:49:32', '2025-07-30 07:49:32'),
(339, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 07:49:35', '2025-07-30 07:49:35'),
(340, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 23:49:44', '2025-07-30 23:49:44'),
(341, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 23:49:50', '2025-07-30 23:49:50'),
(342, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 23:49:54', '2025-07-30 23:49:54'),
(343, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 23:53:51', '2025-07-30 23:53:51'),
(344, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-30 23:55:44', '2025-07-30 23:55:44'),
(345, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:07:08', '2025-07-31 00:07:08'),
(346, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:09:29', '2025-07-31 00:09:29'),
(347, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:11:42', '2025-07-31 00:11:42'),
(348, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:15:45', '2025-07-31 00:15:45'),
(349, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:15:58', '2025-07-31 00:15:58'),
(350, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:16:00', '2025-07-31 00:16:00'),
(351, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:17:06', '2025-07-31 00:17:06'),
(352, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:20:48', '2025-07-31 00:20:48'),
(353, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:21:07', '2025-07-31 00:21:07'),
(354, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:21:26', '2025-07-31 00:21:26'),
(355, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_BookTour\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchDelete\",\"_key\":\"1,2,3,4\",\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\"}', '2025-07-31 00:21:41', '2025-07-31 00:21:41'),
(356, 1, 'admin/book-tours/1,2,3,4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\"}', '2025-07-31 00:21:44', '2025-07-31 00:21:44'),
(357, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:21:45', '2025-07-31 00:21:45'),
(358, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:21:45', '2025-07-31 00:21:45'),
(359, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:27:23', '2025-07-31 00:27:23'),
(360, 1, 'admin/book-tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:36:48', '2025-07-31 00:36:48'),
(361, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-31 00:41:35', '2025-07-31 00:41:35'),
(362, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:41:36', '2025-07-31 00:41:36'),
(363, 1, 'admin/tours/2/edit', 'GET', '127.0.0.1', '[]', '2025-07-31 00:41:39', '2025-07-31 00:41:39'),
(364, 1, 'admin/tours/2', 'PUT', '127.0.0.1', '{\"destination_id\":\"2\",\"search_terms\":null,\"title\":\"One Day Jaipur Food Tour\",\"slug\":\"one-day-jaipur-food-tour\",\"short_description\":\"One Day Jaipur Food Tour \\u2013 A delicious day exploring Jaipur\\u2019s best local flavors! From royal Rajasthani thalis to hidden street food gems, experience the Pink City through its most iconic dishes in just one day.\",\"days\":\"1\",\"price\":\"1500\",\"description\":\"<p>Embark on a flavorful journey through Jaipur with our <strong>One Day Jaipur Food Tour<\\/strong>, perfect for food lovers who want to taste the true essence of Rajasthani cuisine. This guided tour takes you from traditional breakfast spots to royal-style lunches and ends with an unforgettable evening of street food adventures. Discover the rich culinary heritage of the Pink City, visit bustling markets, learn about local spices, and enjoy dishes like kachori, ghewar, laal maas, and more. Whether you&#39;re a first-time visitor or a returning traveler, this one-day culinary experience will leave your taste buds tingling and your heart full.<\\/p>\",\"tourdetailsinsert\":{\"3\":{\"order_num\":\"1\",\"name\":\"8:00 AM \\u2013 Pickup from Hotel\",\"description\":\"Start your day with a hotel pickup by your food guide who will brief you about Jaipur\\u2019s rich culinary heritage and the day\\u2019s exciting food stops.\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"order_num\":\"2\",\"name\":\"8:30 AM \\u2013 Traditional Rajasthani Breakfast\",\"description\":\"Enjoy crispy kachori, spicy aloo sabzi, jalebi, and sweet lassi at a popular local eatery like Lassiwala or Samrat Restaurant on MI Road.\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"order_num\":\"3\",\"name\":\"10:00 AM \\u2013 Visit Spice & Vegetable Market\",\"description\":\"Stroll through a bustling market to explore colorful spices, fresh vegetables, and local ingredients while learning about their uses in Rajasthani cuisine.\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"order_num\":\"4\",\"name\":\"11:30 AM \\u2013 Cultural Landmark Stop (Optional)\",\"description\":\"Make a short stop at Hawa Mahal or City Palace for a quick photo session and to soak in Jaipur\\u2019s architectural beauty between food tastings.\",\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"order_num\":\"5\",\"name\":\"1:00 PM \\u2013 Rajasthani Thali Lunch\",\"description\":\"Savor a traditional Rajasthani thali featuring dal baati churma, gatte ki sabzi, ker sangri, bajra roti, and more at a local restaurant like Thali House.\",\"id\":\"7\",\"_remove_\":\"0\"},\"8\":{\"order_num\":\"6\",\"name\":\"2:30 PM \\u2013 Masala Chai Break\",\"description\":\"Relax with a cup of strong ginger masala chai and some crunchy snacks at a charming tea stall like Tapri Central or a local chaiwala.\",\"id\":\"8\",\"_remove_\":\"0\"},\"9\":{\"order_num\":\"7\",\"name\":\"4:00 PM \\u2013 Traditional Sweet Stop\",\"description\":\"Delight your sweet tooth with famous Rajasthani desserts like ghewar, mawa kachori, and rasgulla from iconic sweet shops like LMB or Rawat.\",\"id\":\"9\",\"_remove_\":\"0\"},\"10\":{\"order_num\":\"8\",\"name\":\"6:00 PM \\u2013 Evening Street Food Walk\",\"description\":\"Experience Jaipur\\u2019s buzzing street food scene with pani puri, pav bhaji, mirchi vada, and kulfi in markets like Bapu Bazaar or Masala Chowk.\",\"id\":\"10\",\"_remove_\":\"0\"},\"11\":{\"order_num\":\"9\",\"name\":\"7:30 PM \\u2013 Food Souvenir Shopping (Optional)\",\"description\":\"Pick up unique local snacks, pickles, or spice blends as edible souvenirs to take a taste of Jaipur back home with you.\",\"id\":\"11\",\"_remove_\":\"0\"},\"12\":{\"order_num\":\"10\",\"name\":\"8:00 PM \\u2013 Return to Hotel\",\"description\":\"End your flavorful journey with a hotel drop-off, full belly, and unforgettable memories of Jaipur\\u2019s vibrant food culture.\",\"id\":\"12\",\"_remove_\":\"0\"}},\"seo_title\":\"One Day Jaipur Food Tour | Taste Authentic Rajasthani Cuisine & Street Food\",\"seo_description\":\"Join our One Day Jaipur Food Tour and explore the Pink City\\u2019s best street food, traditional Rajasthani dishes, and sweet treats. A perfect culinary experience for food lovers in Jaipur!\",\"seo_keyword\":null,\"is_featured\":\"1\",\"is_featured_cb\":\"on\",\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\",\"_method\":\"PUT\"}', '2025-07-31 00:41:44', '2025-07-31 00:41:44'),
(365, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:41:44', '2025-07-31 00:41:44'),
(366, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-31 00:42:02', '2025-07-31 00:42:02'),
(367, 1, 'admin/tourcategories/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\"}', '2025-07-31 00:42:05', '2025-07-31 00:42:05'),
(368, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-31 00:42:05', '2025-07-31 00:42:05'),
(369, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-07-31 00:50:30', '2025-07-31 00:50:30'),
(370, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-31 00:50:33', '2025-07-31 00:50:33'),
(371, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-07-31 01:28:14', '2025-07-31 01:28:14'),
(372, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-31 01:30:16', '2025-07-31 01:30:16'),
(373, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2025-07-31 01:30:20', '2025-07-31 01:30:20'),
(374, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-31 01:36:46', '2025-07-31 01:36:46'),
(375, 1, 'admin/tourcategories/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-31 01:36:48', '2025-07-31 01:36:48'),
(376, 1, 'admin/tourcategories/1', 'PUT', '127.0.0.1', '{\"name\":\"First Day Tour\",\"slug\":\"first-day-tour\",\"seo_title\":\"First Day Tour Title\",\"seo_description\":\"First Day Tour Description\",\"seo_keyword\":\"First Day Tour Keywords\",\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\",\"_method\":\"PUT\"}', '2025-07-31 01:37:04', '2025-07-31 01:37:04'),
(377, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-31 01:37:09', '2025-07-31 01:37:09'),
(378, 1, 'admin/tourcategories/2/edit', 'GET', '127.0.0.1', '[]', '2025-07-31 01:37:18', '2025-07-31 01:37:18'),
(379, 1, 'admin/tourcategories/2', 'PUT', '127.0.0.1', '{\"name\":\"Second Day Tour\",\"slug\":\"second-day-tour\",\"seo_title\":\"Second Day Tour Title\",\"seo_description\":\"Second Day Tour Description\",\"seo_keyword\":\"Second Day Tour Keywords\",\"status\":\"1\",\"status_cb\":\"on\",\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\",\"_method\":\"PUT\"}', '2025-07-31 01:37:47', '2025-07-31 01:37:47'),
(380, 1, 'admin/tourcategories', 'GET', '127.0.0.1', '[]', '2025-07-31 01:37:50', '2025-07-31 01:37:50'),
(381, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-31 01:39:11', '2025-07-31 01:39:11'),
(382, 1, 'admin/tours/1/edit', 'GET', '127.0.0.1', '[]', '2025-07-31 01:39:13', '2025-07-31 01:39:13'),
(383, 1, 'admin/tours', 'GET', '127.0.0.1', '[]', '2025-07-31 01:39:36', '2025-07-31 01:39:36'),
(384, 1, 'admin/tours/3/edit', 'GET', '127.0.0.1', '[]', '2025-07-31 01:39:38', '2025-07-31 01:39:38'),
(385, 1, 'admin/tours/3/edit', 'GET', '127.0.0.1', '[]', '2025-07-31 03:32:54', '2025-07-31 03:32:54'),
(386, 1, 'admin/tours/3/edit', 'GET', '127.0.0.1', '[]', '2025-07-31 03:33:15', '2025-07-31 03:33:15'),
(387, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2025-07-31 04:04:32', '2025-07-31 04:04:32'),
(388, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-31 04:04:35', '2025-07-31 04:04:35'),
(389, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"info\",\"model_name\":\"App\\\\Models\\\\Info\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\InfoController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"phone\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"whatsapp_phone\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"address\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"map\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"facebook_link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"youtube_link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"google_map_link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"instagram_link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"twitter_link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"linkedin_link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\"}', '2025-07-31 04:28:48', '2025-07-31 04:28:48'),
(390, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-31 04:28:53', '2025-07-31 04:28:53'),
(391, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-07-31 04:39:16', '2025-07-31 04:39:16'),
(392, 1, 'admin/infos', 'GET', '127.0.0.1', '[]', '2025-07-31 04:39:18', '2025-07-31 04:39:18'),
(393, 1, 'admin/infos/create', 'GET', '127.0.0.1', '[]', '2025-07-31 04:39:20', '2025-07-31 04:39:20'),
(394, 1, 'admin/infos', 'POST', '127.0.0.1', '{\"email\":\"wuwu@mailinator.com\",\"phone\":\"12777932858\",\"whatsapp_phone\":\"+1 (599) 624-5635\",\"address\":\"Enim corrupti incid\",\"map\":\"Non veniam et nulla\",\"facebook_link\":\"Est magna unde vel v\",\"youtube_link\":\"Eaque ipsum velit in\",\"google_map_link\":\"Labore omnis et aut\",\"instagram_link\":\"In temporibus molest\",\"twitter_link\":\"Qui non eum temporib\",\"linkedin_link\":\"Minima enim velit ma\",\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\"}', '2025-07-31 04:42:46', '2025-07-31 04:42:46'),
(395, 1, 'admin/infos', 'GET', '127.0.0.1', '[]', '2025-07-31 04:42:47', '2025-07-31 04:42:47'),
(396, 1, 'admin/tours/3/edit', 'GET', '127.0.0.1', '[]', '2025-07-31 05:04:24', '2025-07-31 05:04:24'),
(397, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-31 05:32:50', '2025-07-31 05:32:50'),
(398, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Our Tour\",\"icon\":\"icon-address-card\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\"}', '2025-07-31 05:33:08', '2025-07-31 05:33:08'),
(399, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-31 05:33:09', '2025-07-31 05:33:09'),
(400, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '[]', '2025-07-31 05:33:15', '2025-07-31 05:33:15'),
(401, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"27\",\"search_terms\":null,\"title\":\"Tours\",\"icon\":\"icon-file\",\"uri\":\"tours\",\"roles\":[null],\"permission\":null,\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\",\"_method\":\"PUT\"}', '2025-07-31 05:33:24', '2025-07-31 05:33:24'),
(402, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-31 05:33:24', '2025-07-31 05:33:24'),
(403, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '[]', '2025-07-31 05:33:38', '2025-07-31 05:33:38'),
(404, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"27\",\"search_terms\":null,\"title\":\"Tourcategories\",\"icon\":\"icon-file\",\"uri\":\"tourcategories\",\"roles\":[null],\"permission\":null,\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\",\"_method\":\"PUT\"}', '2025-07-31 05:33:44', '2025-07-31 05:33:44'),
(405, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-31 05:33:44', '2025-07-31 05:33:44'),
(406, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '[]', '2025-07-31 05:33:48', '2025-07-31 05:33:48'),
(407, 1, 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"27\",\"search_terms\":null,\"title\":\"Tourdetails\",\"icon\":\"icon-file\",\"uri\":\"tourdetails\",\"roles\":[null],\"permission\":null,\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\",\"_method\":\"PUT\"}', '2025-07-31 05:33:56', '2025-07-31 05:33:56'),
(408, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-31 05:33:57', '2025-07-31 05:33:57'),
(409, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-31 05:34:00', '2025-07-31 05:34:00'),
(410, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"19\\\",\\\"children\\\":[{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"20\\\"},{\\\"id\\\":\\\"21\\\"}]},{\\\"id\\\":\\\"27\\\",\\\"children\\\":[{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"15\\\"}]},{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"16\\\"},{\\\"id\\\":\\\"17\\\"},{\\\"id\\\":\\\"22\\\"},{\\\"id\\\":\\\"23\\\"},{\\\"id\\\":\\\"24\\\"},{\\\"id\\\":\\\"25\\\"},{\\\"id\\\":\\\"26\\\"},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]}]\",\"_token\":\"VT4bk0Czsu9kgwJlPkH0Or81JbOihq3oCNUXRQey\"}', '2025-07-31 05:42:22', '2025-07-31 05:42:22'),
(411, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-31 05:42:23', '2025-07-31 05:42:23'),
(412, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-07-31 05:42:25', '2025-07-31 05:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2025-07-17 05:35:34', '2025-07-17 05:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2025-07-17 05:33:18', '2025-07-17 05:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$zgih/l9eOs/DX7hoZN7qQO2pRJwC83mb46T63I3pzovoPPAbFasIS', 'Administrator', NULL, 'y7eK9RxZgB7pGvtlmzyOmuVCHgmXMZa1cDS0XkgtwMnzXljBErNMlU8whVKN', '2025-07-17 05:33:18', '2025-07-17 05:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(10) UNSIGNED NOT NULL,
  `tour_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_date` date DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `tour_name`, `name`, `email`, `phone`, `tour_date`, `message`, `created_at`, `updated_at`) VALUES
(5, 'Half Day Jaipur Tour by Tuk Tuk', 'Zachery Pruitt', 'waloby@mailinator.com', '+1 (572) 786-2891', '1977-01-27', 'Aut distinctio Aute', '2025-07-31 00:27:20', '2025-07-31 00:27:20'),
(6, 'Half Day Jaipur Tour by Tuk Tuk', 'Quinn Anderson', 'rexew@mailinator.com', '+1 (421) 154-5939', '1998-08-07', 'Maiores autem dolor', '2025-07-31 00:36:17', '2025-07-31 00:36:17'),
(7, 'One Day Jaipur Food Tour', 'Eaton Spears', 'rypocyd@mailinator.com', '+1 (355) 532-9564', '1980-12-01', 'Omnis nisi nisi labo', '2025-07-31 00:36:59', '2025-07-31 00:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `capturedmoment`
--

CREATE TABLE `capturedmoment` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `capturedmoment`
--

INSERT INTO `capturedmoment` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'images/slider-item-1.jpg', '2025-07-28 06:04:49', '2025-07-28 06:04:49'),
(2, 'images/img2.jpg', '2025-07-28 06:04:57', '2025-07-28 06:04:57'),
(3, 'images/indian-city.jpg', '2025-07-28 06:05:09', '2025-07-28 06:05:09'),
(4, 'images/tourist-curring.jpg', '2025-07-28 06:05:17', '2025-07-28 06:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `image`, `name`, `star`, `message`, `created_at`, `updated_at`) VALUES
(1, 'images/customer-1.png', 'Signe Wolf', '5', 'Enim quis incididunt', '2025-07-29 00:05:10', '2025-07-29 00:05:10'),
(2, 'images/user-3.png', 'Illiana Bishop', '3.5', 'Aut ipsum mollitia p', '2025-07-29 00:05:47', '2025-07-29 00:05:47'),
(3, 'images/user-2.png', 'William Mullins', '3', 'Culpa dolor est rep', '2025-07-29 00:06:03', '2025-07-29 00:06:03'),
(4, 'images/user-4.png', 'Daria Bishop', '4', 'Est in dolore aut es', '2025-07-29 00:06:17', '2025-07-29 00:06:17'),
(5, 'images/user-1.png', 'Octavia Clay', '2', 'Cillum repudiandae o', '2025-07-29 00:07:56', '2025-07-29 00:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `exclusion`
--

CREATE TABLE `exclusion` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exclusion`
--

INSERT INTO `exclusion` (`id`, `image`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'images/meals.png', 'Meals & Snacks', 'Private, air-conditioned car (Sedan, SUV, Van)', '2025-07-30 06:25:37', '2025-07-30 06:25:37'),
(2, 'images/income.png', 'Entry Fees', 'Private, air-conditioned car (Sedan, SUV, Van)', '2025-07-30 06:26:15', '2025-07-30 06:26:15'),
(3, 'images/travel.png', 'Travel Insurance', 'Private, air-conditioned car (Sedan, SUV, Van)', '2025-07-30 06:26:32', '2025-07-30 06:26:32'),
(4, 'images/tax.png', 'Personal Expenses', 'Private, air-conditioned car (Sedan, SUV, Van)', '2025-07-30 06:27:04', '2025-07-30 06:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `name`, `content`, `alt`, `created_at`, `updated_at`) VALUES
(1, 'images/hawa-mahal_1.jpg', 'Hawa Mahal', 'An unforgettable journey through the land of high passes,pristine lakes, and rugged beauty.', 'Hawa mahal', '2025-07-28 00:32:34', '2025-07-28 01:01:56'),
(2, 'images/architecturel-city-palace_1.jpg', 'Architecturel city', 'An unforgettable journey through the land of high passes,pristine lakes, and rugged beauty.', 'Architecturel city', '2025-07-28 00:34:57', '2025-07-28 01:02:22'),
(3, 'images/albert-hall_1.jpg', 'Allbert Hall', 'An unforgettable journey through the land of high passes,pristine lakes, and rugged beauty.', 'Allbert Hall', '2025-07-28 00:35:13', '2025-07-28 01:02:35'),
(4, 'images/patrika-gate.jpg', 'Patrika Gate', 'An unforgettable journey through the land of high passes,pristine lakes, and rugged beauty.', 'Patrika Gate', '2025-07-28 00:35:45', '2025-07-28 01:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `inclusions`
--

CREATE TABLE `inclusions` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inclusions`
--

INSERT INTO `inclusions` (`id`, `image`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'images/air-flow.png', 'Private Car', 'Private, air-conditioned car (Sedan, SUV, Van)', '2025-07-30 06:19:20', '2025-07-30 06:19:20'),
(2, 'images/location.png', 'Pickup & drop', 'Private, air-conditioned car (Sedan, SUV, Van)', '2025-07-30 06:20:04', '2025-07-30 06:20:04'),
(3, 'images/mineral-water.png', 'Water Bottle', 'Private, air-conditioned car (Sedan, SUV, Van)', '2025-07-30 06:20:24', '2025-07-30 06:20:24'),
(4, 'images/personal-guide.png', 'Taxes & Parking', 'Private, air-conditioned car (Sedan, SUV, Van)', '2025-07-30 06:20:50', '2025-07-30 06:20:50'),
(5, 'images/personal-guide_1.png', 'Personal Guide', 'Private, air-conditioned car (Sedan, SUV, Van)', '2025-07-30 06:21:34', '2025-07-30 06:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `email`, `phone`, `whatsapp_phone`, `address`, `map`, `facebook_link`, `youtube_link`, `google_map_link`, `instagram_link`, `twitter_link`, `linkedin_link`, `created_at`, `updated_at`) VALUES
(1, 'wuwu@mailinator.com', '12777932858', '+1 (599) 624-5635', 'Enim corrupti incid', 'Non veniam et nulla', 'Est magna unde vel v', 'Eaque ipsum velit in', 'Labore omnis et aut', 'In temporibus molest', 'Qui non eum temporib', 'Minima enim velit ma', '2025-07-31 04:42:47', '2025-07-31 04:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2025_07_18_101153_create_tourcategory_table', 2),
(7, '2025_07_18_121013_create_tour_table', 3),
(8, '2025_07_23_054507_create_tour_details_insert_table', 4),
(9, '2025_07_23_070640_create_book_table', 5),
(10, '2025_07_23_070754_create_contact_table', 6),
(11, '2025_07_23_083455_create_gallery_table', 7),
(12, '2025_07_23_084140_create_video_table', 8),
(13, '2025_07_28_075559_create_capturedmoment_table', 9),
(14, '2025_07_29_053215_create_customers_table', 10),
(15, '2025_07_30_064115_create_title_table', 11),
(16, '2025_07_30_114611_create_inclusions_table', 12),
(17, '2025_07_30_115408_create_exclusion_table', 13),
(18, '2025_07_31_095848_create_info_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(10) UNSIGNED NOT NULL,
  `seo_title_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_tour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_tour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_tour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image_tour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image_gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `seo_title_home`, `seo_des_home`, `seo_key_home`, `seo_image_home`, `seo_title_tour`, `seo_des_tour`, `seo_key_tour`, `seo_image_tour`, `seo_title_gallery`, `seo_des_gallery`, `seo_key_gallery`, `seo_image_gallery`, `seo_title_contact`, `seo_des_contact`, `seo_key_contact`, `seo_image_contact`, `created_at`, `updated_at`) VALUES
(1, 'home title', 'home description', 'home keyword', 'images/albert-hall_4.jpg', 'tour title', 'tour description', 'tour keyword', 'images/indian-culture.jpg', 'gallery title', 'gallery description', 'gallery keyword', 'images/indian-landscape.jpg', 'Contact title', 'Contact Description', 'Contact Keyword', 'images/patrika-gate_1.jpg', '2025-07-30 01:21:25', '2025-07-30 01:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `id` int(10) UNSIGNED NOT NULL,
  `destination_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerarys` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`id`, `destination_id`, `thumnail_image`, `banner_image`, `gallery`, `title`, `slug`, `short_description`, `days`, `price`, `description`, `itinerarys`, `created_at`, `updated_at`, `seo_title`, `seo_description`, `seo_keyword`, `is_featured`) VALUES
(1, '1', 'images/albert-hall.jpg', 'images/architecturel-city-palace.jpg', '[\"images\\/jamtar-mantar-jaipur.jpg\",\"images\\/city_palace_2.jpg\",\"images\\/8e_1.jpg\"]', 'Non suscipit duis vo', 'non-suscipit-duis-vo', 'Provident aliquid i', '11', '983', '<p>In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.vIn case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.</p>', NULL, '2025-07-26 03:39:43', '2025-07-30 04:56:06', 'Ut non reprehenderit', 'Qui omnis laborum E', 'Eveniet illo Nam au', 1),
(2, '2', 'images/Dal-Bati-Churma-1024x538.jpg', 'images/Dal-Bati-Churma-1024x538_1.jpg', '[\"images\\/caption_1.jpg\",\"images\\/best-street-food-in-jaipur-roaming-jack.webp\",\"images\\/Dal-Bati-Churma-1024x538_2.jpg\"]', 'One Day Jaipur Food Tour', 'one-day-jaipur-food-tour', 'One Day Jaipur Food Tour – A delicious day exploring Jaipur’s best local flavors! From royal Rajasthani thalis to hidden street food gems, experience the Pink City through its most iconic dishes in just one day.', '1', '1500', '<p>Embark on a flavorful journey through Jaipur with our <strong>One Day Jaipur Food Tour</strong>, perfect for food lovers who want to taste the true essence of Rajasthani cuisine. This guided tour takes you from traditional breakfast spots to royal-style lunches and ends with an unforgettable evening of street food adventures. Discover the rich culinary heritage of the Pink City, visit bustling markets, learn about local spices, and enjoy dishes like kachori, ghewar, laal maas, and more. Whether you&#39;re a first-time visitor or a returning traveler, this one-day culinary experience will leave your taste buds tingling and your heart full.</p>', NULL, '2025-07-30 02:10:21', '2025-07-31 00:41:44', 'One Day Jaipur Food Tour | Taste Authentic Rajasthani Cuisine & Street Food', 'Join our One Day Jaipur Food Tour and explore the Pink City’s best street food, traditional Rajasthani dishes, and sweet treats. A perfect culinary experience for food lovers in Jaipur!', NULL, 1),
(3, '1', 'images/8e.jpg', 'images/city_palace.jpg', '[\"images\\/city_palace_3.jpg\",\"images\\/jaipur-amer-fort-jal-mahal-stepwell-private-half-day-tour_IX0BK.jpg\",\"images\\/caption_2.jpg\"]', 'Half Day Jaipur Tour by Tuk Tuk', 'half-day-jaipur-tour-by-tuk-tuk', 'Half Day Jaipur Tour by Tuk Tuk – Explore the vibrant heritage of the Pink City on a fun and flexible tuk tuk ride. Discover top landmarks, colorful bazaars, and local culture — all in just half a day!', '0.5', '1000', '<p>Get ready for an unforgettable ride through Jaipur&rsquo;s iconic streets with our Half Day Jaipur Tour by Tuk Tuk. Perfect for travelers short on time but big on curiosity, this experience takes you through the highlights of the Pink City &mdash; from majestic palaces to bustling bazaars. Your friendly tuk tuk driver and guide will navigate narrow alleys and grand boulevards, giving you an insider&#39;s view of Jaipur&rsquo;s rich history, local traditions, and vibrant street life. Whether it&#39;s your first time or a repeat visit, this tour promises colorful sights, cultural insights, and a whole lot of fun in just a few hours.</p>', NULL, '2025-07-30 02:15:43', '2025-07-30 04:56:40', 'Half Day Jaipur Tour by Tuk Tuk | Explore Top Attractions in Just 4 Hours', 'Discover Jaipur’s top sights in just half a day with our Tuk Tuk tour. Visit Hawa Mahal, City Palace, bazaars, and more with a local guide. Perfect for short stays!', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tourcategory`
--

CREATE TABLE `tourcategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tourcategory`
--

INSERT INTO `tourcategory` (`id`, `image`, `name`, `slug`, `seo_title`, `seo_description`, `seo_keyword`, `status`, `created_at`, `updated_at`) VALUES
(1, 'images/hawa-mahal_2.jpg', 'First Day Tour', 'first-day-tour', 'First Day Tour Title', 'First Day Tour Description', 'First Day Tour Keywords', '1', '2025-07-18 05:04:43', '2025-07-31 01:37:09'),
(2, 'images/slider-item-3.jpg', 'Second Day Tour', 'second-day-tour', 'Second Day Tour Title', 'Second Day Tour Description', 'Second Day Tour Keywords', '1', '2025-07-18 06:09:34', '2025-07-31 01:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `tour_details_insert`
--

CREATE TABLE `tour_details_insert` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_details_insert`
--

INSERT INTO `tour_details_insert` (`id`, `order_num`, `name`, `description`, `package_id`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.', '1', '2025-07-26 03:40:07', '2025-07-26 03:40:07'),
(2, '2', '2', 'In case of complaints regarding products that come with a warranty from manufacturers, please refer the issue to them.', '1', '2025-07-26 03:40:07', '2025-07-26 03:40:07'),
(3, '1', '8:00 AM – Pickup from Hotel', 'Start your day with a hotel pickup by your food guide who will brief you about Jaipur’s rich culinary heritage and the day’s exciting food stops.', '2', '2025-07-30 02:10:21', '2025-07-30 02:10:21'),
(4, '2', '8:30 AM – Traditional Rajasthani Breakfast', 'Enjoy crispy kachori, spicy aloo sabzi, jalebi, and sweet lassi at a popular local eatery like Lassiwala or Samrat Restaurant on MI Road.', '2', '2025-07-30 02:10:21', '2025-07-30 02:10:21'),
(5, '3', '10:00 AM – Visit Spice & Vegetable Market', 'Stroll through a bustling market to explore colorful spices, fresh vegetables, and local ingredients while learning about their uses in Rajasthani cuisine.', '2', '2025-07-30 02:10:21', '2025-07-30 02:10:21'),
(6, '4', '11:30 AM – Cultural Landmark Stop (Optional)', 'Make a short stop at Hawa Mahal or City Palace for a quick photo session and to soak in Jaipur’s architectural beauty between food tastings.', '2', '2025-07-30 02:10:21', '2025-07-30 02:10:21'),
(7, '5', '1:00 PM – Rajasthani Thali Lunch', 'Savor a traditional Rajasthani thali featuring dal baati churma, gatte ki sabzi, ker sangri, bajra roti, and more at a local restaurant like Thali House.', '2', '2025-07-30 02:10:21', '2025-07-30 02:10:21'),
(8, '6', '2:30 PM – Masala Chai Break', 'Relax with a cup of strong ginger masala chai and some crunchy snacks at a charming tea stall like Tapri Central or a local chaiwala.', '2', '2025-07-30 02:10:21', '2025-07-30 02:10:21'),
(9, '7', '4:00 PM – Traditional Sweet Stop', 'Delight your sweet tooth with famous Rajasthani desserts like ghewar, mawa kachori, and rasgulla from iconic sweet shops like LMB or Rawat.', '2', '2025-07-30 02:10:21', '2025-07-30 02:10:21'),
(10, '8', '6:00 PM – Evening Street Food Walk', 'Experience Jaipur’s buzzing street food scene with pani puri, pav bhaji, mirchi vada, and kulfi in markets like Bapu Bazaar or Masala Chowk.', '2', '2025-07-30 02:10:21', '2025-07-30 02:10:21'),
(11, '9', '7:30 PM – Food Souvenir Shopping (Optional)', 'Pick up unique local snacks, pickles, or spice blends as edible souvenirs to take a taste of Jaipur back home with you.', '2', '2025-07-30 02:10:21', '2025-07-30 02:10:21'),
(12, '10', '8:00 PM – Return to Hotel', 'End your flavorful journey with a hotel drop-off, full belly, and unforgettable memories of Jaipur’s vibrant food culture.', '2', '2025-07-30 02:10:21', '2025-07-30 02:10:21'),
(13, '1', '9:00 AM – Hotel Pickup', 'Start your tour with a hotel pickup by your friendly tuk tuk driver, who will give a quick overview of the journey through Jaipur’s historic highlights.', '3', '2025-07-30 02:15:43', '2025-07-30 02:15:43'),
(14, '2', '9:15 AM – Hawa Mahal (Palace of Winds)', 'Stop by the iconic pink sandstone Hawa Mahal for a beautiful photo opportunity and learn about its royal architectural purpose for royal ladies.', '3', '2025-07-30 02:15:43', '2025-07-30 02:15:43'),
(15, '3', '9:45 AM – City Palace Visit', 'Explore the royal residence of Jaipur’s Maharajas featuring museums, ornate gates, grand courtyards, and centuries of royal artifacts and costumes.', '3', '2025-07-30 02:15:43', '2025-07-30 02:15:43'),
(16, '4', '10:45 AM – Jantar Mantar', 'Visit this UNESCO World Heritage Site with the world’s largest sundial and precise astronomical instruments used for star mapping in the 18th century.', '3', '2025-07-30 02:15:43', '2025-07-30 02:15:43'),
(17, '5', '11:30 AM – Local Bazaar Walk', 'Browse colorful bazaars like Johari or Bapu Bazaar, known for textiles, jewelry, traditional shoes, and local crafts – or just enjoy a cultural walk.', '3', '2025-07-30 02:15:43', '2025-07-30 02:15:43'),
(18, '6', '12:00 PM – Optional Chai or Snack Break', 'Relax with a hot cup of masala chai and a light snack like a samosa at a local tea stall, loved by locals and visitors alike.', '3', '2025-07-30 02:15:43', '2025-07-30 02:15:43'),
(19, '7', '12:45 PM – Return to Hotel', 'End your half-day adventure with a drop back at your hotel or central Jaipur location, filled with cultural insights and tuk tuk fun.', '3', '2025-07-30 02:15:43', '2025-07-30 02:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `image`, `video_link`, `alt`, `created_at`, `updated_at`) VALUES
(1, 'images/albert-hall_2.jpg', 'https://www.youtube.com/embed/HcOc7P5BMi4', 'ed don', '2025-07-28 06:57:26', '2025-07-28 07:03:34'),
(2, 'images/albert-hall_3.jpg', 'https://www.youtube.com/embed/OWBpbMLAhd4', 'hgjhghjg', '2025-07-28 06:58:34', '2025-07-28 07:03:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capturedmoment`
--
ALTER TABLE `capturedmoment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exclusion`
--
ALTER TABLE `exclusion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inclusions`
--
ALTER TABLE `inclusions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourcategory`
--
ALTER TABLE `tourcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_details_insert`
--
ALTER TABLE `tour_details_insert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `capturedmoment`
--
ALTER TABLE `capturedmoment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exclusion`
--
ALTER TABLE `exclusion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inclusions`
--
ALTER TABLE `inclusions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tourcategory`
--
ALTER TABLE `tourcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tour_details_insert`
--
ALTER TABLE `tour_details_insert`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
