-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2023 at 02:44 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lis_360`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Group test was created', 'App\\Models\\Group', 1, 'App\\Models\\User', 1, '[]', '2023-08-19 07:40:45', '2023-08-19 07:40:45'),
(2, 'default', 'Group test was updated', 'App\\Models\\Group', 1, 'App\\Models\\User', 1, '[]', '2023-08-19 07:40:45', '2023-08-19 07:40:45'),
(3, 'default', 'User was updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', '2023-09-22 10:02:29', '2023-09-22 10:02:29'),
(4, 'default', 'Doctor was created', 'App\\Models\\Doctor', 1, 'App\\Models\\User', 1, '[]', '2023-09-23 06:50:49', '2023-09-23 06:50:49'),
(5, 'default', 'Doctor was deleted', 'App\\Models\\Doctor', 1, 'App\\Models\\User', 1, '[]', '2023-09-23 06:54:54', '2023-09-23 06:54:54'),
(6, 'default', 'Doctor was created', 'App\\Models\\Doctor', 2, 'App\\Models\\User', 1, '[]', '2023-09-23 06:56:26', '2023-09-23 06:56:26'),
(7, 'default', 'User was updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', '2023-09-25 08:00:38', '2023-09-25 08:00:38'),
(8, 'default', 'User was updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', '2023-09-25 08:00:43', '2023-09-25 08:00:43'),
(9, 'default', 'User was updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', '2023-09-25 08:01:03', '2023-09-25 08:01:03'),
(10, 'default', 'User was updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', '2023-09-25 08:01:07', '2023-09-25 08:01:07'),
(11, 'default', 'User was updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', '2023-09-25 08:01:09', '2023-09-25 08:01:09'),
(12, 'default', 'Group test was created', 'App\\Models\\Group', 2, 'App\\Models\\User', 1, '[]', '2023-09-25 08:47:56', '2023-09-25 08:47:56'),
(13, 'default', 'Group test was updated', 'App\\Models\\Group', 2, 'App\\Models\\User', 1, '[]', '2023-09-25 08:47:56', '2023-09-25 08:47:56'),
(14, 'default', 'Group test was created', 'App\\Models\\Group', 3, 'App\\Models\\User', 1, '[]', '2023-09-26 05:28:02', '2023-09-26 05:28:02'),
(15, 'default', 'Group test was created', 'App\\Models\\Group', 4, 'App\\Models\\User', 1, '[]', '2023-09-26 05:28:32', '2023-09-26 05:28:32'),
(16, 'default', 'Group test was updated', 'App\\Models\\Group', 4, 'App\\Models\\User', 1, '[]', '2023-09-26 05:28:32', '2023-09-26 05:28:32'),
(17, 'default', 'Group test was created', 'App\\Models\\Group', 5, 'App\\Models\\User', 1, '[]', '2023-09-26 05:28:59', '2023-09-26 05:28:59'),
(18, 'default', 'Group test was updated', 'App\\Models\\Group', 5, 'App\\Models\\User', 1, '[]', '2023-09-26 05:28:59', '2023-09-26 05:28:59'),
(19, 'default', 'Group test was created', 'App\\Models\\Group', 6, 'App\\Models\\User', 1, '[]', '2023-09-26 05:29:25', '2023-09-26 05:29:25'),
(20, 'default', 'Group test was updated', 'App\\Models\\Group', 6, 'App\\Models\\User', 1, '[]', '2023-09-26 05:29:25', '2023-09-26 05:29:25'),
(21, 'default', 'Group test was created', 'App\\Models\\Group', 7, 'App\\Models\\User', 1, '[]', '2023-09-26 05:29:45', '2023-09-26 05:29:45'),
(22, 'default', 'Group test was updated', 'App\\Models\\Group', 7, 'App\\Models\\User', 1, '[]', '2023-09-26 05:29:45', '2023-09-26 05:29:45'),
(23, 'default', 'Group test was created', 'App\\Models\\Group', 8, 'App\\Models\\User', 1, '[]', '2023-09-26 05:29:58', '2023-09-26 05:29:58'),
(24, 'default', 'Group test was updated', 'App\\Models\\Group', 8, 'App\\Models\\User', 1, '[]', '2023-09-26 05:29:58', '2023-09-26 05:29:58'),
(25, 'default', 'Group test was created', 'App\\Models\\Group', 9, 'App\\Models\\User', 1, '[]', '2023-09-26 05:30:14', '2023-09-26 05:30:14'),
(26, 'default', 'Group test was updated', 'App\\Models\\Group', 9, 'App\\Models\\User', 1, '[]', '2023-09-26 05:30:14', '2023-09-26 05:30:14'),
(27, 'default', 'Group test was created', 'App\\Models\\Group', 10, 'App\\Models\\User', 1, '[]', '2023-09-26 05:30:32', '2023-09-26 05:30:32'),
(28, 'default', 'Group test was updated', 'App\\Models\\Group', 10, 'App\\Models\\User', 1, '[]', '2023-09-26 05:30:34', '2023-09-26 05:30:34'),
(29, 'default', 'Group test was created', 'App\\Models\\Group', 11, 'App\\Models\\User', 1, '[]', '2023-09-26 05:31:24', '2023-09-26 05:31:24'),
(30, 'default', 'Group test was updated', 'App\\Models\\Group', 11, 'App\\Models\\User', 1, '[]', '2023-09-26 05:31:24', '2023-09-26 05:31:24'),
(31, 'default', 'Group test was created', 'App\\Models\\Group', 12, 'App\\Models\\User', 1, '[]', '2023-09-26 05:31:43', '2023-09-26 05:31:43'),
(32, 'default', 'Group test was updated', 'App\\Models\\Group', 12, 'App\\Models\\User', 1, '[]', '2023-09-26 05:31:43', '2023-09-26 05:31:43'),
(33, 'default', 'Group test was updated', 'App\\Models\\Group', 12, 'App\\Models\\User', 1, '[]', '2023-09-26 05:31:43', '2023-09-26 05:31:43'),
(34, 'default', 'Group test was created', 'App\\Models\\Group', 13, 'App\\Models\\User', 1, '[]', '2023-09-26 05:38:50', '2023-09-26 05:38:50'),
(35, 'default', 'Group test was updated', 'App\\Models\\Group', 13, 'App\\Models\\User', 1, '[]', '2023-09-26 05:38:50', '2023-09-26 05:38:50'),
(36, 'default', 'Group test was created', 'App\\Models\\Group', 14, 'App\\Models\\User', 1, '[]', '2023-09-26 05:39:05', '2023-09-26 05:39:05'),
(37, 'default', 'Group test was updated', 'App\\Models\\Group', 14, 'App\\Models\\User', 1, '[]', '2023-09-26 05:39:05', '2023-09-26 05:39:05'),
(38, 'default', 'Group test was created', 'App\\Models\\Group', 15, 'App\\Models\\User', 1, '[]', '2023-09-26 05:43:47', '2023-09-26 05:43:47'),
(39, 'default', 'Group test was updated', 'App\\Models\\Group', 15, 'App\\Models\\User', 1, '[]', '2023-09-26 05:43:47', '2023-09-26 05:43:47'),
(40, 'default', 'Group test was deleted', 'App\\Models\\Group', 15, 'App\\Models\\User', 1, '[]', '2023-09-26 07:23:56', '2023-09-26 07:23:56'),
(41, 'default', 'Group test was updated', 'App\\Models\\Group', 13, 'App\\Models\\User', 1, '[]', '2023-09-26 07:27:59', '2023-09-26 07:27:59'),
(42, 'default', 'Group test was updated', 'App\\Models\\Group', 13, 'App\\Models\\User', 1, '[]', '2023-09-26 07:27:59', '2023-09-26 07:27:59'),
(43, 'default', 'User was updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', '2023-09-28 06:33:50', '2023-09-28 06:33:50'),
(44, 'default', 'Group test was updated', 'App\\Models\\Group', 14, 'App\\Models\\User', 1, '[]', '2023-09-28 06:37:25', '2023-09-28 06:37:25'),
(45, 'default', 'Group test was updated', 'App\\Models\\Group', 14, 'App\\Models\\User', 1, '[]', '2023-09-28 06:37:25', '2023-09-28 06:37:25'),
(46, 'default', 'Group test was updated', 'App\\Models\\Group', 12, 'App\\Models\\User', 1, '[]', '2023-09-28 06:41:19', '2023-09-28 06:41:19'),
(47, 'default', 'Group test was updated', 'App\\Models\\Group', 12, 'App\\Models\\User', 1, '[]', '2023-09-28 06:41:19', '2023-09-28 06:41:19'),
(48, 'default', 'Group test was updated', 'App\\Models\\Group', 12, 'App\\Models\\User', 1, '[]', '2023-09-28 06:43:32', '2023-09-28 06:43:32'),
(49, 'default', 'Group test was updated', 'App\\Models\\Group', 12, 'App\\Models\\User', 1, '[]', '2023-09-28 06:45:27', '2023-09-28 06:45:27'),
(50, 'default', 'Group test was updated', 'App\\Models\\Group', 13, 'App\\Models\\User', 1, '[]', '2023-09-28 06:46:24', '2023-09-28 06:46:24'),
(51, 'default', 'Group test was created', 'App\\Models\\Group', 16, 'App\\Models\\User', 1, '[]', '2023-09-28 08:06:29', '2023-09-28 08:06:29'),
(52, 'default', 'Group test was updated', 'App\\Models\\Group', 16, 'App\\Models\\User', 1, '[]', '2023-09-28 08:06:30', '2023-09-28 08:06:30'),
(53, 'default', 'Group test was updated', 'App\\Models\\Group', 16, 'App\\Models\\User', 1, '[]', '2023-09-28 08:06:31', '2023-09-28 08:06:31'),
(54, 'default', 'Group test was created', 'App\\Models\\Group', 17, 'App\\Models\\User', 1, '[]', '2023-09-28 08:09:39', '2023-09-28 08:09:39'),
(55, 'default', 'Group test was updated', 'App\\Models\\Group', 17, 'App\\Models\\User', 1, '[]', '2023-09-28 08:09:39', '2023-09-28 08:09:39'),
(56, 'default', 'Group test was updated', 'App\\Models\\Group', 17, 'App\\Models\\User', 1, '[]', '2023-09-28 08:09:40', '2023-09-28 08:09:40'),
(57, 'default', 'Group test was created', 'App\\Models\\Group', 18, 'App\\Models\\User', 1, '[]', '2023-09-28 08:11:23', '2023-09-28 08:11:23'),
(58, 'default', 'Group test was updated', 'App\\Models\\Group', 18, 'App\\Models\\User', 1, '[]', '2023-09-28 08:11:23', '2023-09-28 08:11:23'),
(59, 'default', 'Group test was created', 'App\\Models\\Group', 19, 'App\\Models\\User', 1, '[]', '2023-09-28 08:11:41', '2023-09-28 08:11:41'),
(60, 'default', 'Group test was updated', 'App\\Models\\Group', 19, 'App\\Models\\User', 1, '[]', '2023-09-28 08:11:41', '2023-09-28 08:11:41'),
(61, 'default', 'Group test was created', 'App\\Models\\Group', 20, 'App\\Models\\User', 1, '[]', '2023-09-28 08:15:16', '2023-09-28 08:15:16'),
(62, 'default', 'Group test was updated', 'App\\Models\\Group', 20, 'App\\Models\\User', 1, '[]', '2023-09-28 08:15:16', '2023-09-28 08:15:16'),
(63, 'default', 'Group test was updated', 'App\\Models\\Group', 20, 'App\\Models\\User', 1, '[]', '2023-09-28 08:15:16', '2023-09-28 08:15:16'),
(64, 'default', 'Group test was created', 'App\\Models\\Group', 21, 'App\\Models\\User', 1, '[]', '2023-09-28 08:21:44', '2023-09-28 08:21:44'),
(65, 'default', 'Group test was updated', 'App\\Models\\Group', 21, 'App\\Models\\User', 1, '[]', '2023-09-28 08:21:44', '2023-09-28 08:21:44'),
(66, 'default', 'Group test was updated', 'App\\Models\\Group', 21, 'App\\Models\\User', 1, '[]', '2023-09-28 08:21:44', '2023-09-28 08:21:44'),
(67, 'default', 'Group test was created', 'App\\Models\\Group', 22, 'App\\Models\\User', 1, '[]', '2023-09-28 08:24:45', '2023-09-28 08:24:45'),
(68, 'default', 'Group test was updated', 'App\\Models\\Group', 22, 'App\\Models\\User', 1, '[]', '2023-09-28 08:24:45', '2023-09-28 08:24:45'),
(69, 'default', 'Group test was deleted', 'App\\Models\\Group', 22, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:47', '2023-09-28 08:25:47'),
(70, 'default', 'Group test was deleted', 'App\\Models\\Group', 21, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:47', '2023-09-28 08:25:47'),
(71, 'default', 'Group test was deleted', 'App\\Models\\Group', 20, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:47', '2023-09-28 08:25:47'),
(72, 'default', 'Group test was deleted', 'App\\Models\\Group', 19, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:47', '2023-09-28 08:25:47'),
(73, 'default', 'Group test was deleted', 'App\\Models\\Group', 18, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:47', '2023-09-28 08:25:47'),
(74, 'default', 'Group test was deleted', 'App\\Models\\Group', 17, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:47', '2023-09-28 08:25:47'),
(75, 'default', 'Group test was deleted', 'App\\Models\\Group', 16, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:47', '2023-09-28 08:25:47'),
(76, 'default', 'Group test was deleted', 'App\\Models\\Group', 14, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:47', '2023-09-28 08:25:47'),
(77, 'default', 'Group test was deleted', 'App\\Models\\Group', 13, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:47', '2023-09-28 08:25:47'),
(78, 'default', 'Group test was deleted', 'App\\Models\\Group', 12, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:47', '2023-09-28 08:25:47'),
(79, 'default', 'Group test was deleted', 'App\\Models\\Group', 11, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:58', '2023-09-28 08:25:58'),
(80, 'default', 'Group test was deleted', 'App\\Models\\Group', 10, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:58', '2023-09-28 08:25:58'),
(81, 'default', 'Group test was deleted', 'App\\Models\\Group', 9, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:58', '2023-09-28 08:25:58'),
(82, 'default', 'Group test was deleted', 'App\\Models\\Group', 8, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:58', '2023-09-28 08:25:58'),
(83, 'default', 'Group test was deleted', 'App\\Models\\Group', 7, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:58', '2023-09-28 08:25:58'),
(84, 'default', 'Group test was deleted', 'App\\Models\\Group', 6, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:58', '2023-09-28 08:25:58'),
(85, 'default', 'Group test was deleted', 'App\\Models\\Group', 5, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:58', '2023-09-28 08:25:58'),
(86, 'default', 'Group test was deleted', 'App\\Models\\Group', 4, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:58', '2023-09-28 08:25:58'),
(87, 'default', 'Group test was deleted', 'App\\Models\\Group', 2, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:58', '2023-09-28 08:25:58'),
(88, 'default', 'Group test was deleted', 'App\\Models\\Group', 1, 'App\\Models\\User', 1, '[]', '2023-09-28 08:25:58', '2023-09-28 08:25:58'),
(89, 'default', 'Group test was created', 'App\\Models\\Group', 23, 'App\\Models\\User', 1, '[]', '2023-09-28 08:26:25', '2023-09-28 08:26:25'),
(90, 'default', 'Group test was updated', 'App\\Models\\Group', 23, 'App\\Models\\User', 1, '[]', '2023-09-28 08:26:25', '2023-09-28 08:26:25'),
(91, 'default', 'Group test was updated', 'App\\Models\\Group', 23, 'App\\Models\\User', 1, '[]', '2023-09-28 08:26:25', '2023-09-28 08:26:25'),
(92, 'default', 'Group test was created', 'App\\Models\\Group', 24, 'App\\Models\\User', 1, '[]', '2023-09-28 08:34:13', '2023-09-28 08:34:13'),
(93, 'default', 'Group test was updated', 'App\\Models\\Group', 24, 'App\\Models\\User', 1, '[]', '2023-09-28 08:34:13', '2023-09-28 08:34:13'),
(94, 'default', 'Group test was updated', 'App\\Models\\Group', 24, 'App\\Models\\User', 1, '[]', '2023-09-28 08:34:13', '2023-09-28 08:34:13'),
(95, 'default', 'User was updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', '2023-09-28 08:34:25', '2023-09-28 08:34:25'),
(96, 'default', 'Group test was created', 'App\\Models\\Group', 25, 'App\\Models\\User', 1, '[]', '2023-09-28 08:37:26', '2023-09-28 08:37:26'),
(97, 'default', 'Group test was updated', 'App\\Models\\Group', 25, 'App\\Models\\User', 1, '[]', '2023-09-28 08:37:26', '2023-09-28 08:37:26'),
(98, 'default', 'Group test was updated', 'App\\Models\\Group', 25, 'App\\Models\\User', 1, '[]', '2023-09-28 08:37:27', '2023-09-28 08:37:27'),
(99, 'default', 'Group test was created', 'App\\Models\\Group', 26, 'App\\Models\\User', 1, '[]', '2023-09-28 08:45:57', '2023-09-28 08:45:57'),
(100, 'default', 'Group test was updated', 'App\\Models\\Group', 26, 'App\\Models\\User', 1, '[]', '2023-09-28 08:45:57', '2023-09-28 08:45:57'),
(101, 'default', 'Group test was updated', 'App\\Models\\Group', 26, 'App\\Models\\User', 1, '[]', '2023-09-28 08:45:57', '2023-09-28 08:45:57'),
(102, 'default', 'Group test was created', 'App\\Models\\Group', 27, 'App\\Models\\User', 1, '[]', '2023-09-28 09:02:34', '2023-09-28 09:02:34'),
(103, 'default', 'Group test was updated', 'App\\Models\\Group', 27, 'App\\Models\\User', 1, '[]', '2023-09-28 09:02:34', '2023-09-28 09:02:34'),
(104, 'default', 'Group test was updated', 'App\\Models\\Group', 27, 'App\\Models\\User', 1, '[]', '2023-09-28 09:02:34', '2023-09-28 09:02:34'),
(105, 'default', 'Group test was created', 'App\\Models\\Group', 28, 'App\\Models\\User', 1, '[]', '2023-09-28 09:04:51', '2023-09-28 09:04:51'),
(106, 'default', 'Group test was updated', 'App\\Models\\Group', 28, 'App\\Models\\User', 1, '[]', '2023-09-28 09:04:51', '2023-09-28 09:04:51'),
(107, 'default', 'Group test was updated', 'App\\Models\\Group', 28, 'App\\Models\\User', 1, '[]', '2023-09-28 09:04:51', '2023-09-28 09:04:51'),
(108, 'default', 'Group test was created', 'App\\Models\\Group', 29, 'App\\Models\\User', 1, '[]', '2023-09-28 09:05:47', '2023-09-28 09:05:47'),
(109, 'default', 'Group test was updated', 'App\\Models\\Group', 29, 'App\\Models\\User', 1, '[]', '2023-09-28 09:05:47', '2023-09-28 09:05:47'),
(110, 'default', 'Group test was updated', 'App\\Models\\Group', 29, 'App\\Models\\User', 1, '[]', '2023-09-28 09:05:47', '2023-09-28 09:05:47'),
(111, 'default', 'Group test was created', 'App\\Models\\Group', 30, 'App\\Models\\User', 1, '[]', '2023-09-28 09:06:56', '2023-09-28 09:06:56'),
(112, 'default', 'Group test was updated', 'App\\Models\\Group', 30, 'App\\Models\\User', 1, '[]', '2023-09-28 09:06:56', '2023-09-28 09:06:56'),
(113, 'default', 'Group test was updated', 'App\\Models\\Group', 30, 'App\\Models\\User', 1, '[]', '2023-09-28 09:06:57', '2023-09-28 09:06:57'),
(114, 'default', 'Group test was created', 'App\\Models\\Group', 31, 'App\\Models\\User', 1, '[]', '2023-09-28 09:10:27', '2023-09-28 09:10:27'),
(115, 'default', 'Group test was updated', 'App\\Models\\Group', 31, 'App\\Models\\User', 1, '[]', '2023-09-28 09:10:27', '2023-09-28 09:10:27'),
(116, 'default', 'Group test was updated', 'App\\Models\\Group', 31, 'App\\Models\\User', 1, '[]', '2023-09-28 09:10:27', '2023-09-28 09:10:27'),
(117, 'default', 'Group test was created', 'App\\Models\\Group', 32, 'App\\Models\\User', 1, '[]', '2023-09-28 09:12:58', '2023-09-28 09:12:58'),
(118, 'default', 'Group test was updated', 'App\\Models\\Group', 32, 'App\\Models\\User', 1, '[]', '2023-09-28 09:12:58', '2023-09-28 09:12:58'),
(119, 'default', 'Group test was updated', 'App\\Models\\Group', 32, 'App\\Models\\User', 1, '[]', '2023-09-28 09:12:58', '2023-09-28 09:12:58'),
(120, 'default', 'Group test was deleted', 'App\\Models\\Group', 32, 'App\\Models\\User', 1, '[]', '2023-09-29 06:48:57', '2023-09-29 06:48:57'),
(121, 'default', 'Group test was deleted', 'App\\Models\\Group', 31, 'App\\Models\\User', 1, '[]', '2023-09-29 06:48:57', '2023-09-29 06:48:57'),
(122, 'default', 'Group test was deleted', 'App\\Models\\Group', 30, 'App\\Models\\User', 1, '[]', '2023-09-29 06:48:57', '2023-09-29 06:48:57'),
(123, 'default', 'Group test was deleted', 'App\\Models\\Group', 29, 'App\\Models\\User', 1, '[]', '2023-09-29 06:48:57', '2023-09-29 06:48:57'),
(124, 'default', 'Group test was deleted', 'App\\Models\\Group', 28, 'App\\Models\\User', 1, '[]', '2023-09-29 06:48:57', '2023-09-29 06:48:57'),
(125, 'default', 'Group test was deleted', 'App\\Models\\Group', 27, 'App\\Models\\User', 1, '[]', '2023-09-29 06:48:57', '2023-09-29 06:48:57'),
(126, 'default', 'Group test was deleted', 'App\\Models\\Group', 26, 'App\\Models\\User', 1, '[]', '2023-09-29 06:48:57', '2023-09-29 06:48:57'),
(127, 'default', 'Group test was deleted', 'App\\Models\\Group', 25, 'App\\Models\\User', 1, '[]', '2023-09-29 06:48:57', '2023-09-29 06:48:57'),
(128, 'default', 'Group test was deleted', 'App\\Models\\Group', 24, 'App\\Models\\User', 1, '[]', '2023-09-29 06:48:57', '2023-09-29 06:48:57'),
(129, 'default', 'Group test was deleted', 'App\\Models\\Group', 23, 'App\\Models\\User', 1, '[]', '2023-09-29 06:48:57', '2023-09-29 06:48:57'),
(130, 'default', 'Group test was created', 'App\\Models\\Group', 33, 'App\\Models\\User', 1, '[]', '2023-09-29 06:50:28', '2023-09-29 06:50:28'),
(131, 'default', 'Group test was updated', 'App\\Models\\Group', 33, 'App\\Models\\User', 1, '[]', '2023-09-29 06:50:28', '2023-09-29 06:50:28'),
(132, 'default', 'Group test was updated', 'App\\Models\\Group', 33, 'App\\Models\\User', 1, '[]', '2023-09-29 06:50:28', '2023-09-29 06:50:28'),
(133, 'default', 'Group test was created', 'App\\Models\\Group', 34, 'App\\Models\\User', 1, '[]', '2023-09-29 06:52:23', '2023-09-29 06:52:23'),
(134, 'default', 'Group test was updated', 'App\\Models\\Group', 34, 'App\\Models\\User', 1, '[]', '2023-09-29 06:52:23', '2023-09-29 06:52:23'),
(135, 'default', 'Group test was updated', 'App\\Models\\Group', 34, 'App\\Models\\User', 1, '[]', '2023-09-29 06:52:25', '2023-09-29 06:52:25'),
(136, 'default', 'Group test was created', 'App\\Models\\Group', 35, 'App\\Models\\User', 1, '[]', '2023-09-29 06:56:07', '2023-09-29 06:56:07'),
(137, 'default', 'Group test was updated', 'App\\Models\\Group', 35, 'App\\Models\\User', 1, '[]', '2023-09-29 06:56:07', '2023-09-29 06:56:07'),
(138, 'default', 'Group test was updated', 'App\\Models\\Group', 35, 'App\\Models\\User', 1, '[]', '2023-09-29 06:56:07', '2023-09-29 06:56:07'),
(139, 'default', 'Group test was created', 'App\\Models\\Group', 36, 'App\\Models\\User', 1, '[]', '2023-09-29 06:59:26', '2023-09-29 06:59:26'),
(140, 'default', 'Group test was updated', 'App\\Models\\Group', 36, 'App\\Models\\User', 1, '[]', '2023-09-29 06:59:26', '2023-09-29 06:59:26'),
(141, 'default', 'Group test was updated', 'App\\Models\\Group', 36, 'App\\Models\\User', 1, '[]', '2023-09-29 06:59:26', '2023-09-29 06:59:26'),
(142, 'default', 'Group test was created', 'App\\Models\\Group', 37, 'App\\Models\\User', 1, '[]', '2023-09-29 07:00:32', '2023-09-29 07:00:32'),
(143, 'default', 'Group test was updated', 'App\\Models\\Group', 37, 'App\\Models\\User', 1, '[]', '2023-09-29 07:00:32', '2023-09-29 07:00:32'),
(144, 'default', 'Group test was updated', 'App\\Models\\Group', 37, 'App\\Models\\User', 1, '[]', '2023-09-29 07:00:32', '2023-09-29 07:00:32'),
(145, 'default', 'Group test was created', 'App\\Models\\Group', 38, 'App\\Models\\User', 1, '[]', '2023-09-29 07:01:51', '2023-09-29 07:01:51'),
(146, 'default', 'Group test was updated', 'App\\Models\\Group', 38, 'App\\Models\\User', 1, '[]', '2023-09-29 07:01:51', '2023-09-29 07:01:51'),
(147, 'default', 'Group test was updated', 'App\\Models\\Group', 38, 'App\\Models\\User', 1, '[]', '2023-09-29 07:01:51', '2023-09-29 07:01:51'),
(148, 'default', 'Group test was created', 'App\\Models\\Group', 39, 'App\\Models\\User', 1, '[]', '2023-09-29 07:02:08', '2023-09-29 07:02:08'),
(149, 'default', 'Group test was updated', 'App\\Models\\Group', 39, 'App\\Models\\User', 1, '[]', '2023-09-29 07:02:08', '2023-09-29 07:02:08'),
(150, 'default', 'Group test was updated', 'App\\Models\\Group', 39, 'App\\Models\\User', 1, '[]', '2023-09-29 07:02:08', '2023-09-29 07:02:08'),
(151, 'default', 'Group test was created', 'App\\Models\\Group', 40, 'App\\Models\\User', 1, '[]', '2023-09-29 07:02:50', '2023-09-29 07:02:50'),
(152, 'default', 'Group test was updated', 'App\\Models\\Group', 40, 'App\\Models\\User', 1, '[]', '2023-09-29 07:02:50', '2023-09-29 07:02:50'),
(153, 'default', 'Group test was updated', 'App\\Models\\Group', 40, 'App\\Models\\User', 1, '[]', '2023-09-29 07:02:51', '2023-09-29 07:02:51'),
(154, 'default', 'Group test was created', 'App\\Models\\Group', 41, 'App\\Models\\User', 1, '[]', '2023-09-29 07:03:25', '2023-09-29 07:03:25'),
(155, 'default', 'Group test was updated', 'App\\Models\\Group', 41, 'App\\Models\\User', 1, '[]', '2023-09-29 07:03:26', '2023-09-29 07:03:26'),
(156, 'default', 'Group test was updated', 'App\\Models\\Group', 41, 'App\\Models\\User', 1, '[]', '2023-09-29 07:03:42', '2023-09-29 07:03:42'),
(157, 'default', 'Group test was created', 'App\\Models\\Group', 42, 'App\\Models\\User', 1, '[]', '2023-09-29 07:07:37', '2023-09-29 07:07:37'),
(158, 'default', 'Group test was updated', 'App\\Models\\Group', 42, 'App\\Models\\User', 1, '[]', '2023-09-29 07:07:37', '2023-09-29 07:07:37'),
(159, 'default', 'Group test was updated', 'App\\Models\\Group', 42, 'App\\Models\\User', 1, '[]', '2023-09-29 07:07:37', '2023-09-29 07:07:37'),
(160, 'default', 'Group test was created', 'App\\Models\\Group', 43, 'App\\Models\\User', 1, '[]', '2023-09-29 07:08:51', '2023-09-29 07:08:51'),
(161, 'default', 'Group test was deleted', 'App\\Models\\Group', 42, 'App\\Models\\User', 1, '[]', '2023-09-29 07:09:36', '2023-09-29 07:09:36'),
(162, 'default', 'Group test was deleted', 'App\\Models\\Group', 41, 'App\\Models\\User', 1, '[]', '2023-09-29 07:09:36', '2023-09-29 07:09:36'),
(163, 'default', 'Group test was deleted', 'App\\Models\\Group', 40, 'App\\Models\\User', 1, '[]', '2023-09-29 07:09:36', '2023-09-29 07:09:36'),
(164, 'default', 'Group test was deleted', 'App\\Models\\Group', 39, 'App\\Models\\User', 1, '[]', '2023-09-29 07:09:36', '2023-09-29 07:09:36'),
(165, 'default', 'Group test was deleted', 'App\\Models\\Group', 38, 'App\\Models\\User', 1, '[]', '2023-09-29 07:09:36', '2023-09-29 07:09:36'),
(166, 'default', 'Group test was deleted', 'App\\Models\\Group', 37, 'App\\Models\\User', 1, '[]', '2023-09-29 07:09:36', '2023-09-29 07:09:36'),
(167, 'default', 'Group test was deleted', 'App\\Models\\Group', 36, 'App\\Models\\User', 1, '[]', '2023-09-29 07:09:36', '2023-09-29 07:09:36'),
(168, 'default', 'Group test was deleted', 'App\\Models\\Group', 35, 'App\\Models\\User', 1, '[]', '2023-09-29 07:09:36', '2023-09-29 07:09:36'),
(169, 'default', 'Group test was deleted', 'App\\Models\\Group', 34, 'App\\Models\\User', 1, '[]', '2023-09-29 07:09:36', '2023-09-29 07:09:36'),
(170, 'default', 'Group test was deleted', 'App\\Models\\Group', 33, 'App\\Models\\User', 1, '[]', '2023-09-29 07:09:36', '2023-09-29 07:09:36'),
(171, 'default', 'Group test was created', 'App\\Models\\Group', 44, 'App\\Models\\User', 1, '[]', '2023-09-29 07:10:05', '2023-09-29 07:10:05'),
(172, 'default', 'Group test was created', 'App\\Models\\Group', 45, 'App\\Models\\User', 1, '[]', '2023-09-29 07:16:08', '2023-09-29 07:16:08'),
(173, 'default', 'Group test was created', 'App\\Models\\Group', 46, 'App\\Models\\User', 1, '[]', '2023-09-29 07:22:50', '2023-09-29 07:22:50'),
(174, 'default', 'Group test was created', 'App\\Models\\Group', 47, 'App\\Models\\User', 1, '[]', '2023-09-29 07:24:13', '2023-09-29 07:24:13'),
(175, 'default', 'Group test was created', 'App\\Models\\Group', 48, 'App\\Models\\User', 1, '[]', '2023-09-29 07:24:44', '2023-09-29 07:24:44'),
(176, 'default', 'Group test was created', 'App\\Models\\Group', 49, 'App\\Models\\User', 1, '[]', '2023-09-29 07:27:00', '2023-09-29 07:27:00'),
(177, 'default', 'Group test was created', 'App\\Models\\Group', 50, 'App\\Models\\User', 1, '[]', '2023-09-29 07:38:45', '2023-09-29 07:38:45'),
(178, 'default', 'Group test was updated', 'App\\Models\\Group', 50, 'App\\Models\\User', 1, '[]', '2023-09-29 07:38:45', '2023-09-29 07:38:45'),
(179, 'default', 'Group test was updated', 'App\\Models\\Group', 50, 'App\\Models\\User', 1, '[]', '2023-09-29 07:38:45', '2023-09-29 07:38:45'),
(180, 'default', 'Group test was deleted', 'App\\Models\\Group', 50, 'App\\Models\\User', 1, '[]', '2023-09-29 07:41:09', '2023-09-29 07:41:09'),
(181, 'default', 'Group test was created', 'App\\Models\\Group', 51, 'App\\Models\\User', 1, '[]', '2023-09-29 07:42:32', '2023-09-29 07:42:32'),
(182, 'default', 'Group test was updated', 'App\\Models\\Group', 51, 'App\\Models\\User', 1, '[]', '2023-09-29 07:42:32', '2023-09-29 07:42:32'),
(183, 'default', 'Group test was updated', 'App\\Models\\Group', 51, 'App\\Models\\User', 1, '[]', '2023-09-29 07:42:32', '2023-09-29 07:42:32'),
(184, 'default', 'Group test was created', 'App\\Models\\Group', 52, 'App\\Models\\User', 1, '[]', '2023-09-29 07:45:14', '2023-09-29 07:45:14'),
(185, 'default', 'Group test was updated', 'App\\Models\\Group', 52, 'App\\Models\\User', 1, '[]', '2023-09-29 07:45:15', '2023-09-29 07:45:15'),
(186, 'default', 'Group test was deleted', 'App\\Models\\Group', 52, 'App\\Models\\User', 1, '[]', '2023-09-29 07:47:07', '2023-09-29 07:47:07'),
(187, 'default', 'Group test was deleted', 'App\\Models\\Group', 51, 'App\\Models\\User', 1, '[]', '2023-09-29 07:47:07', '2023-09-29 07:47:07'),
(188, 'default', 'Group test was created', 'App\\Models\\Group', 53, 'App\\Models\\User', 1, '[]', '2023-09-29 07:47:34', '2023-09-29 07:47:34'),
(189, 'default', 'Group test was updated', 'App\\Models\\Group', 53, 'App\\Models\\User', 1, '[]', '2023-09-29 07:47:34', '2023-09-29 07:47:34'),
(190, 'default', 'Group test was updated', 'App\\Models\\Group', 53, 'App\\Models\\User', 1, '[]', '2023-09-29 07:47:34', '2023-09-29 07:47:34'),
(191, 'default', 'Group test was deleted', 'App\\Models\\Group', 53, 'App\\Models\\User', 1, '[]', '2023-09-29 07:51:02', '2023-09-29 07:51:02'),
(192, 'default', 'Group test was created', 'App\\Models\\Group', 54, 'App\\Models\\User', 1, '[]', '2023-09-29 07:52:11', '2023-09-29 07:52:11'),
(193, 'default', 'Group test was updated', 'App\\Models\\Group', 54, 'App\\Models\\User', 1, '[]', '2023-09-29 07:52:11', '2023-09-29 07:52:11'),
(194, 'default', 'Group test was updated', 'App\\Models\\Group', 54, 'App\\Models\\User', 1, '[]', '2023-09-29 07:52:11', '2023-09-29 07:52:11'),
(195, 'default', 'Group test was created', 'App\\Models\\Group', 55, 'App\\Models\\User', 1, '[]', '2023-09-29 07:54:20', '2023-09-29 07:54:20'),
(196, 'default', 'Group test was updated', 'App\\Models\\Group', 55, 'App\\Models\\User', 1, '[]', '2023-09-29 07:54:20', '2023-09-29 07:54:20'),
(197, 'default', 'Group test was updated', 'App\\Models\\Group', 55, 'App\\Models\\User', 1, '[]', '2023-09-29 07:54:21', '2023-09-29 07:54:21'),
(198, 'default', 'Group test was deleted', 'App\\Models\\Group', 55, 'App\\Models\\User', 1, '[]', '2023-09-29 07:55:43', '2023-09-29 07:55:43'),
(199, 'default', 'Group test was deleted', 'App\\Models\\Group', 54, 'App\\Models\\User', 1, '[]', '2023-09-29 07:55:51', '2023-09-29 07:55:51'),
(200, 'default', 'Group test was created', 'App\\Models\\Group', 56, 'App\\Models\\User', 1, '[]', '2023-09-29 07:56:19', '2023-09-29 07:56:19'),
(201, 'default', 'Group test was updated', 'App\\Models\\Group', 56, 'App\\Models\\User', 1, '[]', '2023-09-29 07:56:19', '2023-09-29 07:56:19'),
(202, 'default', 'Group test was updated', 'App\\Models\\Group', 56, 'App\\Models\\User', 1, '[]', '2023-09-29 07:56:19', '2023-09-29 07:56:19'),
(203, 'default', 'Group test was created', 'App\\Models\\Group', 57, 'App\\Models\\User', 1, '[]', '2023-09-29 07:59:07', '2023-09-29 07:59:07'),
(204, 'default', 'Group test was updated', 'App\\Models\\Group', 57, 'App\\Models\\User', 1, '[]', '2023-09-29 07:59:07', '2023-09-29 07:59:07'),
(205, 'default', 'Group test was updated', 'App\\Models\\Group', 57, 'App\\Models\\User', 1, '[]', '2023-09-29 07:59:07', '2023-09-29 07:59:07'),
(206, 'default', 'Group test was deleted', 'App\\Models\\Group', 57, 'App\\Models\\User', 1, '[]', '2023-09-29 08:01:49', '2023-09-29 08:01:49'),
(207, 'default', 'Group test was deleted', 'App\\Models\\Group', 56, 'App\\Models\\User', 1, '[]', '2023-09-29 08:01:49', '2023-09-29 08:01:49'),
(208, 'default', 'Group test was created', 'App\\Models\\Group', 58, 'App\\Models\\User', 1, '[]', '2023-09-29 08:04:00', '2023-09-29 08:04:00'),
(209, 'default', 'Group test was updated', 'App\\Models\\Group', 58, 'App\\Models\\User', 1, '[]', '2023-09-29 08:04:00', '2023-09-29 08:04:00'),
(210, 'default', 'Group test was created', 'App\\Models\\Group', 59, 'App\\Models\\User', 1, '[]', '2023-09-29 08:05:24', '2023-09-29 08:05:24'),
(211, 'default', 'Group test was updated', 'App\\Models\\Group', 59, 'App\\Models\\User', 1, '[]', '2023-09-29 08:05:24', '2023-09-29 08:05:24'),
(212, 'default', 'Group test was updated', 'App\\Models\\Group', 59, 'App\\Models\\User', 1, '[]', '2023-09-29 08:05:24', '2023-09-29 08:05:24'),
(213, 'default', 'Group test was created', 'App\\Models\\Group', 60, 'App\\Models\\User', 1, '[]', '2023-09-29 08:07:06', '2023-09-29 08:07:06'),
(214, 'default', 'Group test was updated', 'App\\Models\\Group', 60, 'App\\Models\\User', 1, '[]', '2023-09-29 08:07:06', '2023-09-29 08:07:06'),
(215, 'default', 'Group test was updated', 'App\\Models\\Group', 60, 'App\\Models\\User', 1, '[]', '2023-09-29 08:07:06', '2023-09-29 08:07:06'),
(216, 'default', 'Group test was created', 'App\\Models\\Group', 61, 'App\\Models\\User', 1, '[]', '2023-09-29 08:33:33', '2023-09-29 08:33:33'),
(217, 'default', 'Group test was updated', 'App\\Models\\Group', 61, 'App\\Models\\User', 1, '[]', '2023-09-29 08:33:33', '2023-09-29 08:33:33'),
(218, 'default', 'Group test was updated', 'App\\Models\\Group', 61, 'App\\Models\\User', 1, '[]', '2023-09-29 08:33:33', '2023-09-29 08:33:33'),
(219, 'default', 'Group test was created', 'App\\Models\\Group', 62, 'App\\Models\\User', 1, '[]', '2023-09-29 08:34:32', '2023-09-29 08:34:32'),
(220, 'default', 'Group test was updated', 'App\\Models\\Group', 62, 'App\\Models\\User', 1, '[]', '2023-09-29 08:34:32', '2023-09-29 08:34:32'),
(221, 'default', 'Group test was updated', 'App\\Models\\Group', 62, 'App\\Models\\User', 1, '[]', '2023-09-29 08:34:32', '2023-09-29 08:34:32'),
(222, 'default', 'Group test was updated', 'App\\Models\\Group', 62, 'App\\Models\\User', 1, '[]', '2023-09-29 08:34:32', '2023-09-29 08:34:32'),
(223, 'default', 'Group test was created', 'App\\Models\\Group', 63, 'App\\Models\\User', 1, '[]', '2023-09-29 08:37:42', '2023-09-29 08:37:42'),
(224, 'default', 'Group test was updated', 'App\\Models\\Group', 63, 'App\\Models\\User', 1, '[]', '2023-09-29 08:37:42', '2023-09-29 08:37:42'),
(225, 'default', 'Group test was updated', 'App\\Models\\Group', 63, 'App\\Models\\User', 1, '[]', '2023-09-29 08:37:42', '2023-09-29 08:37:42'),
(226, 'default', 'Group test was updated', 'App\\Models\\Group', 63, 'App\\Models\\User', 1, '[]', '2023-09-29 08:37:43', '2023-09-29 08:37:43'),
(227, 'default', 'Group test was deleted', 'App\\Models\\Group', 63, 'App\\Models\\User', 1, '[]', '2023-09-29 08:44:11', '2023-09-29 08:44:11'),
(228, 'default', 'Group test was deleted', 'App\\Models\\Group', 62, 'App\\Models\\User', 1, '[]', '2023-09-29 08:44:11', '2023-09-29 08:44:11'),
(229, 'default', 'Group test was deleted', 'App\\Models\\Group', 61, 'App\\Models\\User', 1, '[]', '2023-09-29 08:44:11', '2023-09-29 08:44:11'),
(230, 'default', 'Group test was deleted', 'App\\Models\\Group', 60, 'App\\Models\\User', 1, '[]', '2023-09-29 08:44:11', '2023-09-29 08:44:11'),
(231, 'default', 'Group test was deleted', 'App\\Models\\Group', 59, 'App\\Models\\User', 1, '[]', '2023-09-29 08:44:11', '2023-09-29 08:44:11'),
(232, 'default', 'Group test was deleted', 'App\\Models\\Group', 58, 'App\\Models\\User', 1, '[]', '2023-09-29 08:44:11', '2023-09-29 08:44:11'),
(233, 'default', 'Group test was created', 'App\\Models\\Group', 64, 'App\\Models\\User', 1, '[]', '2023-09-29 08:44:53', '2023-09-29 08:44:53'),
(234, 'default', 'Group test was updated', 'App\\Models\\Group', 64, 'App\\Models\\User', 1, '[]', '2023-09-29 08:44:53', '2023-09-29 08:44:53'),
(235, 'default', 'Group test was updated', 'App\\Models\\Group', 64, 'App\\Models\\User', 1, '[]', '2023-09-29 08:44:53', '2023-09-29 08:44:53'),
(236, 'default', 'Group test was updated', 'App\\Models\\Group', 64, 'App\\Models\\User', 1, '[]', '2023-09-29 08:44:53', '2023-09-29 08:44:53'),
(237, 'default', 'Group test was updated', 'App\\Models\\Group', 64, 'App\\Models\\User', 1, '[]', '2023-09-29 09:31:54', '2023-09-29 09:31:54'),
(238, 'default', 'Group test was updated', 'App\\Models\\Group', 64, 'App\\Models\\User', 1, '[]', '2023-09-29 09:31:54', '2023-09-29 09:31:54'),
(239, 'default', 'Group test was deleted', 'App\\Models\\Group', 64, 'App\\Models\\User', 1, '[]', '2023-10-02 07:29:53', '2023-10-02 07:29:53'),
(240, 'default', 'Patient was created', 'App\\Models\\Patient', 2, 'App\\Models\\User', 1, '[]', '2023-10-02 07:31:19', '2023-10-02 07:31:19'),
(241, 'default', 'Patient was updated', 'App\\Models\\Patient', 2, 'App\\Models\\User', 1, '[]', '2023-10-02 07:31:19', '2023-10-02 07:31:19'),
(242, 'default', 'Group test was created', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-02 07:33:51', '2023-10-02 07:33:51'),
(243, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-02 07:33:51', '2023-10-02 07:33:51'),
(244, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-02 07:33:52', '2023-10-02 07:33:52'),
(245, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-02 07:34:36', '2023-10-02 07:34:36'),
(246, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-02 07:34:36', '2023-10-02 07:34:36'),
(247, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-02 08:43:12', '2023-10-02 08:43:12'),
(248, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-02 08:43:12', '2023-10-02 08:43:12'),
(249, 'default', 'Patient was created', 'App\\Models\\Patient', 3, 'App\\Models\\User', 1, '[]', '2023-10-03 05:50:07', '2023-10-03 05:50:07'),
(250, 'default', 'Patient was updated', 'App\\Models\\Patient', 3, 'App\\Models\\User', 1, '[]', '2023-10-03 05:50:07', '2023-10-03 05:50:07'),
(251, 'default', 'Patient was updated', 'App\\Models\\Patient', 3, 'App\\Models\\User', 1, '[]', '2023-10-03 06:00:22', '2023-10-03 06:00:22'),
(252, 'default', 'Patient was created', 'App\\Models\\Patient', 4, 'App\\Models\\User', 1, '[]', '2023-10-03 06:20:03', '2023-10-03 06:20:03'),
(253, 'default', 'Patient was updated', 'App\\Models\\Patient', 4, 'App\\Models\\User', 1, '[]', '2023-10-03 06:20:03', '2023-10-03 06:20:03'),
(254, 'default', 'Patient was deleted', 'App\\Models\\Patient', 4, 'App\\Models\\User', 1, '[]', '2023-10-03 06:20:20', '2023-10-03 06:20:20'),
(255, 'default', 'Patient was created', 'App\\Models\\Patient', 5, 'App\\Models\\User', 1, '[]', '2023-10-03 06:22:22', '2023-10-03 06:22:22'),
(256, 'default', 'Patient was updated', 'App\\Models\\Patient', 5, 'App\\Models\\User', 1, '[]', '2023-10-03 06:23:10', '2023-10-03 06:23:10'),
(257, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:28:39', '2023-10-03 06:28:39'),
(258, 'default', 'Doctor was updated', 'App\\Models\\Doctor', 2, 'App\\Models\\User', 1, '[]', '2023-10-03 06:33:38', '2023-10-03 06:33:38'),
(259, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:35:44', '2023-10-03 06:35:44'),
(260, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:36:12', '2023-10-03 06:36:12'),
(261, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:36:27', '2023-10-03 06:36:27'),
(262, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:36:27', '2023-10-03 06:36:27'),
(263, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:39:53', '2023-10-03 06:39:53'),
(264, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:39:53', '2023-10-03 06:39:53'),
(265, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:39:54', '2023-10-03 06:39:54'),
(266, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:41:02', '2023-10-03 06:41:02'),
(267, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:42:09', '2023-10-03 06:42:09'),
(268, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:42:30', '2023-10-03 06:42:30'),
(269, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:42:52', '2023-10-03 06:42:52'),
(270, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:44:15', '2023-10-03 06:44:15'),
(271, 'default', 'Setting was updated', 'App\\Models\\Setting', 6, 'App\\Models\\User', 1, '[]', '2023-10-03 06:45:21', '2023-10-03 06:45:21'),
(272, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:45:52', '2023-10-03 06:45:52'),
(273, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:47:03', '2023-10-03 06:47:03'),
(274, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:47:50', '2023-10-03 06:47:50'),
(275, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:48:46', '2023-10-03 06:48:46'),
(276, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:48:55', '2023-10-03 06:48:55'),
(277, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:51:05', '2023-10-03 06:51:05'),
(278, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:51:30', '2023-10-03 06:51:30'),
(279, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:52:00', '2023-10-03 06:52:00'),
(280, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:52:16', '2023-10-03 06:52:16'),
(281, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:58:26', '2023-10-03 06:58:26'),
(282, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:59:26', '2023-10-03 06:59:26'),
(283, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-03 06:59:42', '2023-10-03 06:59:42'),
(284, 'default', 'Setting was updated', 'App\\Models\\Setting', 8, 'App\\Models\\User', 1, '[]', '2023-10-14 09:25:59', '2023-10-14 09:25:59'),
(285, 'default', 'Setting was updated', 'App\\Models\\Setting', 8, 'App\\Models\\User', 1, '[]', '2023-10-14 09:31:07', '2023-10-14 09:31:07'),
(286, 'default', 'Setting was updated', 'App\\Models\\Setting', 8, 'App\\Models\\User', 1, '[]', '2023-10-14 09:31:29', '2023-10-14 09:31:29'),
(287, 'default', 'Setting was updated', 'App\\Models\\Setting', 8, 'App\\Models\\User', 1, '[]', '2023-10-14 22:27:26', '2023-10-14 22:27:26'),
(288, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-15 16:06:51', '2023-10-15 16:06:51'),
(289, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-15 16:06:51', '2023-10-15 16:06:51'),
(290, 'default', 'Group test was updated', 'App\\Models\\Group', 65, 'App\\Models\\User', 1, '[]', '2023-10-17 06:57:52', '2023-10-17 06:57:52'),
(291, 'default', 'Group test was created', 'App\\Models\\Group', 66, 'App\\Models\\User', 1, '[]', '2023-10-19 04:07:29', '2023-10-19 04:07:29'),
(292, 'default', 'Group test was updated', 'App\\Models\\Group', 66, 'App\\Models\\User', 1, '[]', '2023-10-19 04:07:29', '2023-10-19 04:07:29'),
(293, 'default', 'Group test was updated', 'App\\Models\\Group', 66, 'App\\Models\\User', 1, '[]', '2023-10-19 04:07:32', '2023-10-19 04:07:32'),
(294, 'default', 'Group test was created', 'App\\Models\\Group', 67, 'App\\Models\\User', 1, '[]', '2023-10-19 08:32:15', '2023-10-19 08:32:15'),
(295, 'default', 'Group test was updated', 'App\\Models\\Group', 67, 'App\\Models\\User', 1, '[]', '2023-10-19 08:32:15', '2023-10-19 08:32:15'),
(296, 'default', 'Group test was updated', 'App\\Models\\Group', 67, 'App\\Models\\User', 1, '[]', '2023-10-19 08:32:15', '2023-10-19 08:32:15'),
(297, 'default', 'Group test was updated', 'App\\Models\\Group', 67, 'App\\Models\\User', 1, '[]', '2023-10-19 08:32:16', '2023-10-19 08:32:16'),
(298, 'default', 'Group test was created', 'App\\Models\\Group', 68, 'App\\Models\\User', 1, '[]', '2023-10-19 08:44:03', '2023-10-19 08:44:03'),
(299, 'default', 'Group test was updated', 'App\\Models\\Group', 68, 'App\\Models\\User', 1, '[]', '2023-10-19 08:44:03', '2023-10-19 08:44:03'),
(300, 'default', 'Group test was updated', 'App\\Models\\Group', 68, 'App\\Models\\User', 1, '[]', '2023-10-19 08:44:03', '2023-10-19 08:44:03'),
(301, 'default', 'Group test was updated', 'App\\Models\\Group', 68, 'App\\Models\\User', 1, '[]', '2023-10-19 08:44:04', '2023-10-19 08:44:04'),
(302, 'default', 'Group test was created', 'App\\Models\\Group', 69, 'App\\Models\\User', 1, '[]', '2023-10-19 08:58:38', '2023-10-19 08:58:38'),
(303, 'default', 'Group test was updated', 'App\\Models\\Group', 69, 'App\\Models\\User', 1, '[]', '2023-10-19 08:58:38', '2023-10-19 08:58:38'),
(304, 'default', 'Group test was updated', 'App\\Models\\Group', 69, 'App\\Models\\User', 1, '[]', '2023-10-19 08:58:38', '2023-10-19 08:58:38'),
(305, 'default', 'Group test was created', 'App\\Models\\Group', 70, 'App\\Models\\User', 1, '[]', '2023-10-19 09:01:28', '2023-10-19 09:01:28'),
(306, 'default', 'Group test was updated', 'App\\Models\\Group', 70, 'App\\Models\\User', 1, '[]', '2023-10-19 09:01:28', '2023-10-19 09:01:28'),
(307, 'default', 'Group test was updated', 'App\\Models\\Group', 70, 'App\\Models\\User', 1, '[]', '2023-10-19 09:01:28', '2023-10-19 09:01:28'),
(308, 'default', 'Group test was created', 'App\\Models\\Group', 71, 'App\\Models\\User', 1, '[]', '2023-10-19 09:04:39', '2023-10-19 09:04:39'),
(309, 'default', 'Group test was updated', 'App\\Models\\Group', 71, 'App\\Models\\User', 1, '[]', '2023-10-19 09:04:39', '2023-10-19 09:04:39'),
(310, 'default', 'Group test was updated', 'App\\Models\\Group', 71, 'App\\Models\\User', 1, '[]', '2023-10-19 09:04:39', '2023-10-19 09:04:39'),
(311, 'default', 'Group test was created', 'App\\Models\\Group', 72, 'App\\Models\\User', 1, '[]', '2023-10-19 09:11:50', '2023-10-19 09:11:50'),
(312, 'default', 'Group test was updated', 'App\\Models\\Group', 72, 'App\\Models\\User', 1, '[]', '2023-10-19 09:11:50', '2023-10-19 09:11:50'),
(313, 'default', 'Group test was updated', 'App\\Models\\Group', 72, 'App\\Models\\User', 1, '[]', '2023-10-19 09:11:51', '2023-10-19 09:11:51'),
(314, 'default', 'Group test was updated', 'App\\Models\\Group', 72, 'App\\Models\\User', 1, '[]', '2023-10-19 09:11:51', '2023-10-19 09:11:51'),
(315, 'default', 'Group test was created', 'App\\Models\\Group', 73, 'App\\Models\\User', 1, '[]', '2023-10-19 09:13:13', '2023-10-19 09:13:13'),
(316, 'default', 'Group test was updated', 'App\\Models\\Group', 73, 'App\\Models\\User', 1, '[]', '2023-10-19 09:13:13', '2023-10-19 09:13:13'),
(317, 'default', 'Group test was updated', 'App\\Models\\Group', 73, 'App\\Models\\User', 1, '[]', '2023-10-19 09:13:14', '2023-10-19 09:13:14'),
(318, 'default', 'Group test was created', 'App\\Models\\Group', 74, 'App\\Models\\User', 1, '[]', '2023-10-19 09:17:10', '2023-10-19 09:17:10'),
(319, 'default', 'Group test was updated', 'App\\Models\\Group', 74, 'App\\Models\\User', 1, '[]', '2023-10-19 09:17:10', '2023-10-19 09:17:10'),
(320, 'default', 'Group test was updated', 'App\\Models\\Group', 74, 'App\\Models\\User', 1, '[]', '2023-10-19 09:17:11', '2023-10-19 09:17:11'),
(321, 'default', 'Group test was created', 'App\\Models\\Group', 75, 'App\\Models\\User', 1, '[]', '2023-10-19 09:19:55', '2023-10-19 09:19:55'),
(322, 'default', 'Group test was updated', 'App\\Models\\Group', 75, 'App\\Models\\User', 1, '[]', '2023-10-19 09:19:55', '2023-10-19 09:19:55'),
(323, 'default', 'Group test was updated', 'App\\Models\\Group', 75, 'App\\Models\\User', 1, '[]', '2023-10-19 09:19:55', '2023-10-19 09:19:55'),
(324, 'default', 'Group test was deleted', 'App\\Models\\Group', 75, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:28', '2023-10-19 18:39:28'),
(325, 'default', 'Group test was deleted', 'App\\Models\\Group', 74, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:28', '2023-10-19 18:39:28'),
(326, 'default', 'Group test was deleted', 'App\\Models\\Group', 73, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:28', '2023-10-19 18:39:28'),
(327, 'default', 'Group test was deleted', 'App\\Models\\Group', 72, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:28', '2023-10-19 18:39:28'),
(328, 'default', 'Group test was deleted', 'App\\Models\\Group', 71, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:28', '2023-10-19 18:39:28'),
(329, 'default', 'Group test was deleted', 'App\\Models\\Group', 70, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:28', '2023-10-19 18:39:28'),
(330, 'default', 'Group test was deleted', 'App\\Models\\Group', 69, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:28', '2023-10-19 18:39:28'),
(331, 'default', 'Group test was deleted', 'App\\Models\\Group', 68, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:28', '2023-10-19 18:39:28'),
(332, 'default', 'Group test was deleted', 'App\\Models\\Group', 67, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:28', '2023-10-19 18:39:28'),
(333, 'default', 'Group test was deleted', 'App\\Models\\Group', 66, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:28', '2023-10-19 18:39:28'),
(334, 'default', 'Group test was created', 'App\\Models\\Group', 76, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(335, 'default', 'Group test was updated', 'App\\Models\\Group', 76, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(336, 'default', 'Group test was updated', 'App\\Models\\Group', 76, 'App\\Models\\User', 1, '[]', '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(337, 'default', 'Group test was created', 'App\\Models\\Group', 77, 'App\\Models\\User', 1, '[]', '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(338, 'default', 'Group test was updated', 'App\\Models\\Group', 77, 'App\\Models\\User', 1, '[]', '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(339, 'default', 'Group test was created', 'App\\Models\\Group', 78, 'App\\Models\\User', 1, '[]', '2023-10-19 18:41:25', '2023-10-19 18:41:25'),
(340, 'default', 'Group test was updated', 'App\\Models\\Group', 78, 'App\\Models\\User', 1, '[]', '2023-10-19 18:41:25', '2023-10-19 18:41:25'),
(341, 'default', 'Group test was updated', 'App\\Models\\Group', 78, 'App\\Models\\User', 1, '[]', '2023-10-19 18:41:27', '2023-10-19 18:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adjustment_products`
--

CREATE TABLE `adjustment_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adjustment_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `antibiotics`
--

CREATE TABLE `antibiotics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commercial_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` double(8,2) DEFAULT NULL,
  `lng` double(8,2) DEFAULT NULL,
  `zoom_level` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show_header_image` tinyint(1) NOT NULL DEFAULT 0,
  `show_watermark_image` tinyint(1) NOT NULL DEFAULT 0,
  `show_footer_image` tinyint(1) NOT NULL DEFAULT 0,
  `header_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watermark_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_footer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `address`, `phone`, `lat`, `lng`, `zoom_level`, `deleted_at`, `created_at`, `updated_at`, `show_header_image`, `show_watermark_image`, `show_footer_image`, `header_image`, `watermark_image`, `footer_image`, `report_footer`) VALUES
(1, 'Main Branch', 'USA', '00', 27.77, 30.88, 8, NULL, '2023-08-19 06:34:23', '2023-08-19 06:34:23', 0, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch_products`
--

CREATE TABLE `branch_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `initial_quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `alert_quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hematology', '2023-08-19 06:34:24', '2023-08-19 06:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` int(10) UNSIGNED DEFAULT NULL,
  `to` int(10) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_type` int(11) DEFAULT NULL,
  `discount_percentage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_prices`
--

CREATE TABLE `contract_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `priceable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priceable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `nationality`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'Afghan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(2, 'Albania', 'Albanian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(3, 'Aland Islands', 'Aland Islander', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(4, 'Algeria', 'Algerian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(5, 'American Samoa', 'American Samoan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(6, 'Andorra', 'Andorran', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(7, 'Angola', 'Angolan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(8, 'Anguilla', 'Anguillan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(9, 'Antarctica', 'Antarctican', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(10, 'Antigua and Barbuda', 'Antiguan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(11, 'Argentina', 'Argentinian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(12, 'Armenia', 'Armenian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(13, 'Aruba', 'Aruban', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(14, 'Australia', 'Australian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(15, 'Austria', 'Austrian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(16, 'Azerbaijan', 'Azerbaijani', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(17, 'Bahamas', 'Bahamian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(18, 'Bahrain', 'Bahraini', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(19, 'Bangladesh', 'Bangladeshi', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(20, 'Barbados', 'Barbadian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(21, 'Belarus', 'Belarusian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(22, 'Belgium', 'Belgian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(23, 'Belize', 'Belizean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(24, 'Benin', 'Beninese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(25, 'Saint Barthelemy', 'Saint Barthelmian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(26, 'Bermuda', 'Bermudan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(27, 'Bhutan', 'Bhutanese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(28, 'Bolivia', 'Bolivian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(29, 'Bosnia and Herzegovina', 'Bosnian / Herzegovinian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(30, 'Botswana', 'Botswanan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(31, 'Bouvet Island', 'Bouvetian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(32, 'Brazil', 'Brazilian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(33, 'British Indian Ocean Territory', 'British Indian Ocean Territory', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(34, 'Brunei Darussalam', 'Bruneian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(35, 'Bulgaria', 'Bulgarian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(36, 'Burkina Faso', 'Burkinabe', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(37, 'Burundi', 'Burundian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(38, 'Cambodia', 'Cambodian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(39, 'Cameroon', 'Cameroonian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(40, 'Canada', 'Canadian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(41, 'Cape Verde', 'Cape Verdean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(42, 'Cayman Islands', 'Caymanian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(43, 'Central African Republic', 'Central African', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(44, 'Chad', 'Chadian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(45, 'Chile', 'Chilean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(46, 'China', 'Chinese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(47, 'Christmas Island', 'Christmas Islander', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(48, 'Cocos (Keeling) Islands', 'Cocos Islander', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(49, 'Colombia', 'Colombian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(50, 'Comoros', 'Comorian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(51, 'Congo', 'Congolese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(52, 'Cook Islands', 'Cook Islander', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(53, 'Costa Rica', 'Costa Rican', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(54, 'Croatia', 'Croatian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(55, 'Cuba', 'Cuban', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(56, 'Cyprus', 'Cypriot', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(57, 'Curaçao', 'Curacian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(58, 'Czech Republic', 'Czech', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(59, 'Denmark', 'Danish', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(60, 'Djibouti', 'Djiboutian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(61, 'Dominica', 'Dominican', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(62, 'Dominican Republic', 'Dominican', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(63, 'Ecuador', 'Ecuadorian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(64, 'Egypt', 'Egyptian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(65, 'El Salvador', 'Salvadoran', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(66, 'Equatorial Guinea', 'Equatorial Guinean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(67, 'Eritrea', 'Eritrean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(68, 'Estonia', 'Estonian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(69, 'Ethiopia', 'Ethiopian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(70, 'Falkland Islands (Malvinas)', 'Falkland Islander', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(71, 'Faroe Islands', 'Faroese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(72, 'Fiji', 'Fijian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(73, 'Finland', 'Finnish', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(74, 'France', 'French', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(75, 'French Guiana', 'French Guianese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(76, 'French Polynesia', 'French Polynesian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(77, 'French Southern and Antarctic Lands', 'French', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(78, 'Gabon', 'Gabonese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(79, 'Gambia', 'Gambian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(80, 'Georgia', 'Georgian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(81, 'Germany', 'German', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(82, 'Ghana', 'Ghanaian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(83, 'Gibraltar', 'Gibraltar', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(84, 'Guernsey', 'Guernsian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(85, 'Greece', 'Greek', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(86, 'Greenland', 'Greenlandic', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(87, 'Grenada', 'Grenadian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(88, 'Guadeloupe', 'Guadeloupe', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(89, 'Guam', 'Guamanian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(90, 'Guatemala', 'Guatemalan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(91, 'Guinea', 'Guinean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(92, 'Guinea-Bissau', 'Guinea-Bissauan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(93, 'Guyana', 'Guyanese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(94, 'Haiti', 'Haitian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(95, 'Heard and Mc Donald Islands', 'Heard and Mc Donald Islanders', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(96, 'Honduras', 'Honduran', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(97, 'Hong Kong', 'Hongkongese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(98, 'Hungary', 'Hungarian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(99, 'Iceland', 'Icelandic', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(100, 'India', 'Indian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(101, 'Isle of Man', 'Manx', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(102, 'Indonesia', 'Indonesian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(103, 'Iran', 'Iranian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(104, 'Iraq', 'Iraqi', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(105, 'Ireland', 'Irish', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(106, 'Israel', 'Israeli', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(107, 'Italy', 'Italian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(108, 'Ivory Coast', 'Ivory Coastian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(109, 'Jersey', 'Jersian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(110, 'Jamaica', 'Jamaican', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(111, 'Japan', 'Japanese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(112, 'Jordan', 'Jordanian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(113, 'Kazakhstan', 'Kazakh', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(114, 'Kenya', 'Kenyan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(115, 'Kiribati', 'I-Kiribati', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(116, 'Korea(North Korea)', 'North Korean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(117, 'Korea(South Korea)', 'South Korean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(118, 'Kosovo', 'Kosovar', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(119, 'Kuwait', 'Kuwaiti', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(120, 'Kyrgyzstan', 'Kyrgyzstani', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(121, 'Lao PDR', 'Laotian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(122, 'Latvia', 'Latvian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(123, 'Lebanon', 'Lebanese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(124, 'Lesotho', 'Basotho', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(125, 'Liberia', 'Liberian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(126, 'Libya', 'Libyan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(127, 'Liechtenstein', 'Liechtenstein', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(128, 'Lithuania', 'Lithuanian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(129, 'Luxembourg', 'Luxembourger', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(130, 'Sri Lanka', 'Sri Lankian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(131, 'Macau', 'Macanese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(132, 'Macedonia', 'Macedonian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(133, 'Madagascar', 'Malagasy', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(134, 'Malawi', 'Malawian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(135, 'Malaysia', 'Malaysian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(136, 'Maldives', 'Maldivian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(137, 'Mali', 'Malian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(138, 'Malta', 'Maltese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(139, 'Marshall Islands', 'Marshallese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(140, 'Martinique', 'Martiniquais', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(141, 'Mauritania', 'Mauritanian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(142, 'Mauritius', 'Mauritian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(143, 'Mayotte', 'Mahoran', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(144, 'Mexico', 'Mexican', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(145, 'Micronesia', 'Micronesian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(146, 'Moldova', 'Moldovan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(147, 'Monaco', 'Monacan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(148, 'Mongolia', 'Mongolian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(149, 'Montenegro', 'Montenegrin', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(150, 'Montserrat', 'Montserratian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(151, 'Morocco', 'Moroccan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(152, 'Mozambique', 'Mozambican', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(153, 'Myanmar', 'Myanmarian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(154, 'Namibia', 'Namibian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(155, 'Nauru', 'Nauruan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(156, 'Nepal', 'Nepalese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(157, 'Netherlands', 'Dutch', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(158, 'Netherlands Antilles', 'Dutch Antilier', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(159, 'New Caledonia', 'New Caledonian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(160, 'New Zealand', 'New Zealander', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(161, 'Nicaragua', 'Nicaraguan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(162, 'Niger', 'Nigerien', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(163, 'Nigeria', 'Nigerian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(164, 'Niue', 'Niuean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(165, 'Norfolk Island', 'Norfolk Islander', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(166, 'Northern Mariana Islands', 'Northern Marianan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(167, 'Norway', 'Norwegian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(168, 'Oman', 'Omani', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(169, 'Pakistan', 'Pakistani', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(170, 'Palau', 'Palauan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(171, 'Palestine', 'Palestinian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(172, 'Panama', 'Panamanian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(173, 'Papua New Guinea', 'Papua New Guinean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(174, 'Paraguay', 'Paraguayan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(175, 'Peru', 'Peruvian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(176, 'Philippines', 'Filipino', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(177, 'Pitcairn', 'Pitcairn Islander', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(178, 'Poland', 'Polish', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(179, 'Portugal', 'Portuguese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(180, 'Puerto Rico', 'Puerto Rican', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(181, 'Qatar', 'Qatari', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(182, 'Reunion Island', 'Reunionese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(183, 'Romania', 'Romanian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(184, 'Russian', 'Russian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(185, 'Rwanda', 'Rwandan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(186, 'Saint Kitts and Nevis', 'Kittitian/Nevisian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(187, 'Saint Martin (French part)', 'St. Martian(French)', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(188, 'Sint Maarten (Dutch part)', 'St. Martian(Dutch)', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(189, 'Saint Pierre and Miquelon', 'St. Pierre and Miquelon', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(190, 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(191, 'Samoa', 'Samoan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(192, 'San Marino', 'Sammarinese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(193, 'Sao Tome and Principe', 'Sao Tomean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(194, 'Saudi Arabia', 'Saudi Arabian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(195, 'Senegal', 'Senegalese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(196, 'Serbia', 'Serbian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(197, 'Seychelles', 'Seychellois', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(198, 'Sierra Leone', 'Sierra Leonean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(199, 'Singapore', 'Singaporean', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(200, 'Slovakia', 'Slovak', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(201, 'Slovenia', 'Slovenian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(202, 'Solomon Islands', 'Solomon Island', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(203, 'Somalia', 'Somali', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(204, 'South Africa', 'South African', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(205, 'South Georgia and the South Sandwich', 'South Georgia and the South Sandwich', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(206, 'South Sudan', 'South Sudanese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(207, 'Spain', 'Spanish', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(208, 'Saint Helena', 'St. Helenian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(209, 'Sudan', 'Sudanese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(210, 'Suriname', 'Surinamese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(211, 'Svalbard and Jan Mayen', 'Svalbardian/Jan Mayenian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(212, 'Swaziland', 'Swazi', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(213, 'Sweden', 'Swedish', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(214, 'Switzerland', 'Swiss', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(215, 'Syria', 'Syrian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(216, 'Taiwan', 'Taiwanese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(217, 'Tajikistan', 'Tajikistani', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(218, 'Tanzania', 'Tanzanian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(219, 'Thailand', 'Thai', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(220, 'Timor-Leste', 'Timor-Lestian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(221, 'Togo', 'Togolese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(222, 'Tokelau', 'Tokelaian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(223, 'Tonga', 'Tongan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(224, 'Trinidad and Tobago', 'Trinidadian/Tobagonian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(225, 'Tunisia', 'Tunisian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(226, 'Turkey', 'Turkish', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(227, 'Turkmenistan', 'Turkmen', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(228, 'Turks and Caicos Islands', 'Turks and Caicos Islands', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(229, 'Tuvalu', 'Tuvaluan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(230, 'Uganda', 'Ugandan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(231, 'Ukraine', 'Ukrainian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(232, 'United Arab Emirates', 'Emirati', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(233, 'United Kingdom', 'British', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(234, 'United States', 'American', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(235, 'US Minor Outlying Islands', 'US Minor Outlying Islander', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(236, 'Uruguay', 'Uruguayan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(237, 'Uzbekistan', 'Uzbek', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(238, 'Vanuatu', 'Vanuatuan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(239, 'Venezuela', 'Venezuelan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(240, 'Vietnam', 'Vietnamese', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(241, 'Virgin Islands (U.S.)', 'American Virgin Islander', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(242, 'Vatican City', 'Vatican', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(243, 'Wallis and Futuna Islands', 'Wallisian/Futunan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(244, 'Western Sahara', 'Sahrawian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(245, 'Yemen', 'Yemeni', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(246, 'Zambia', 'Zambian', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(247, 'Zimbabwe', 'Zimbabwean', '2023-08-19 06:34:22', '2023-08-19 06:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `cultures`
--

CREATE TABLE `cultures` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precautions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cultures`
--

INSERT INTO `cultures` (`id`, `name`, `sample_type`, `precautions`, `price`, `deleted_at`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Blood Culture', NULL, NULL, 100, NULL, '2023-08-19 06:34:24', '2023-08-19 06:34:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `culture_comments`
--

CREATE TABLE `culture_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `culture_id` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `culture_options`
--

CREATE TABLE `culture_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `culture_options`
--

INSERT INTO `culture_options` (`id`, `value`, `parent_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Organism', 0, NULL, NULL, NULL),
(2, 'Colony Count', 0, NULL, NULL, NULL),
(3, 'Condition', 0, NULL, NULL, NULL),
(4, 'opt 1', 1, NULL, NULL, NULL),
(5, 'opt 2', 1, NULL, NULL, NULL),
(6, 'opt 1', 2, NULL, NULL, NULL),
(7, 'opt 2', 2, NULL, NULL, NULL),
(8, 'opt 1', 3, NULL, NULL, NULL),
(9, 'opt 2', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `culture_prices`
--

CREATE TABLE `culture_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `culture_id` int(11) NOT NULL DEFAULT 0,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `culture_prices`
--

INSERT INTO `culture_prices` (`id`, `culture_id`, `branch_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100.00, '2023-08-19 06:34:24', '2023-08-19 06:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `iso`, `name`, `symbol`) VALUES
(1, 'AED', 'United Arab Emirates Dirham', 'د.إ'),
(2, 'AFN', 'Afghan Afghani', '؋'),
(3, 'ALL', 'Albanian Lek', 'L'),
(4, 'AMD', 'Armenian Dram', 'դր.'),
(5, 'ANG', 'Netherlands Antillean Gulden', 'ƒ'),
(6, 'AOA', 'Angolan Kwanza', 'Kz'),
(7, 'ARS', 'Argentine Peso', '$'),
(8, 'AUD', 'Australian Dollar', '$'),
(9, 'AWG', 'Aruban Florin', 'ƒ'),
(10, 'AZN', 'Azerbaijani Manat', 'null'),
(11, 'BAM', 'Bosnia and Herzegovina Convertible Mark', 'КМ'),
(12, 'BBD', 'Barbadian Dollar', '$'),
(13, 'BDT', 'Bangladeshi Taka', '৳'),
(14, 'BGN', 'Bulgarian Lev', 'лв'),
(15, 'BHD', 'Bahraini Dinar', 'ب.د'),
(16, 'BIF', 'Burundian Franc', 'Fr'),
(17, 'BMD', 'Bermudian Dollar', '$'),
(18, 'BND', 'Brunei Dollar', '$'),
(19, 'BOB', 'Bolivian Boliviano', 'Bs.'),
(20, 'BRL', 'Brazilian Real', 'R$'),
(21, 'BSD', 'Bahamian Dollar', '$'),
(22, 'BTN', 'Bhutanese Ngultrum', 'Nu.'),
(23, 'BWP', 'Botswana Pula', 'P'),
(24, 'BYR', 'Belarusian Ruble', 'Br'),
(25, 'BZD', 'Belize Dollar', '$'),
(26, 'CAD', 'Canadian Dollar', '$'),
(27, 'CDF', 'Congolese Franc', 'Fr'),
(28, 'CHF', 'Swiss Franc', 'Fr'),
(29, 'CLF', 'Unidad de Fomento', 'UF'),
(30, 'CLP', 'Chilean Peso', '$'),
(31, 'CNY', 'Chinese Renminbi Yuan', '¥'),
(32, 'COP', 'Colombian Peso', '$'),
(33, 'CRC', 'Costa Rican Colón', '₡'),
(34, 'CUC', 'Cuban Convertible Peso', '$'),
(35, 'CUP', 'Cuban Peso', '$'),
(36, 'CVE', 'Cape Verdean Escudo', '$'),
(37, 'CZK', 'Czech Koruna', 'Kč'),
(38, 'DJF', 'Djiboutian Franc', 'Fdj'),
(39, 'DKK', 'Danish Krone', 'kr'),
(40, 'DOP', 'Dominican Peso', '$'),
(41, 'DZD', 'Algerian Dinar', 'د.ج'),
(42, 'EGP', 'Egyptian Pound', 'ج.م'),
(43, 'ERN', 'Eritrean Nakfa', 'Nfk'),
(44, 'ETB', 'Ethiopian Birr', 'Br'),
(45, 'EUR', 'Euro', '€'),
(46, 'FJD', 'Fijian Dollar', '$'),
(47, 'FKP', 'Falkland Pound', '£'),
(48, 'GBP', 'British Pound', '£'),
(49, 'GEL', 'Georgian Lari', 'ლ'),
(50, 'GHS', 'Ghanaian Cedi', '₵'),
(51, 'GIP', 'Gibraltar Pound', '£'),
(52, 'GMD', 'Gambian Dalasi', 'D'),
(53, 'GNF', 'Guinean Franc', 'Fr'),
(54, 'GTQ', 'Guatemalan Quetzal', 'Q'),
(55, 'GYD', 'Guyanese Dollar', '$'),
(56, 'HKD', 'Hong Kong Dollar', '$'),
(57, 'HNL', 'Honduran Lempira', 'L'),
(58, 'HRK', 'Croatian Kuna', 'kn'),
(59, 'HTG', 'Haitian Gourde', 'G'),
(60, 'HUF', 'Hungarian Forint', 'Ft'),
(61, 'IDR', 'Indonesian Rupiah', 'Rp'),
(62, 'ILS', 'Israeli New Sheqel', '₪'),
(63, 'INR', 'Indian Rupee', '₹'),
(64, 'IQD', 'Iraqi Dinar', 'ع.د'),
(65, 'IRR', 'Iranian Rial', '﷼'),
(66, 'ISK', 'Icelandic Króna', 'kr'),
(67, 'JMD', 'Jamaican Dollar', '$'),
(68, 'JOD', 'Jordanian Dinar', 'د.ا'),
(69, 'JPY', 'Japanese Yen', '¥'),
(70, 'KES', 'Kenyan Shilling', 'KSh'),
(71, 'KGS', 'Kyrgyzstani Som', 'som'),
(72, 'KHR', 'Cambodian Riel', '៛'),
(73, 'KMF', 'Comorian Franc', 'Fr'),
(74, 'KPW', 'North Korean Won', '₩'),
(75, 'KRW', 'South Korean Won', '₩'),
(76, 'KWD', 'Kuwaiti Dinar', 'د.ك'),
(77, 'KYD', 'Cayman Islands Dollar', '$'),
(78, 'KZT', 'Kazakhstani Tenge', '〒'),
(79, 'LAK', 'Lao Kip', '₭'),
(80, 'LBP', 'Lebanese Pound', 'ل.ل'),
(81, 'LKR', 'Sri Lankan Rupee', '₨'),
(82, 'LRD', 'Liberian Dollar', '$'),
(83, 'LSL', 'Lesotho Loti', 'L'),
(84, 'LTL', 'Lithuanian Litas', 'Lt'),
(85, 'LVL', 'Latvian Lats', 'Ls'),
(86, 'LYD', 'Libyan Dinar', 'ل.د'),
(87, 'MAD', 'Moroccan Dirham', 'د.م.'),
(88, 'MDL', 'Moldovan Leu', 'L'),
(89, 'MGA', 'Malagasy Ariary', 'Ar'),
(90, 'MKD', 'Macedonian Denar', 'ден'),
(91, 'MMK', 'Myanmar Kyat', 'K'),
(92, 'MNT', 'Mongolian Tögrög', '₮'),
(93, 'MOP', 'Macanese Pataca', 'P'),
(94, 'MRO', 'Mauritanian Ouguiya', 'UM'),
(95, 'MUR', 'Mauritian Rupee', '₨'),
(96, 'MVR', 'Maldivian Rufiyaa', 'MVR'),
(97, 'MWK', 'Malawian Kwacha', 'MK'),
(98, 'MXN', 'Mexican Peso', '$'),
(99, 'MYR', 'Malaysian Ringgit', 'RM'),
(100, 'MZN', 'Mozambican Metical', 'MTn'),
(101, 'NAD', 'Namibian Dollar', '$'),
(102, 'NGN', 'Nigerian Naira', '₦'),
(103, 'NIO', 'Nicaraguan Córdoba', 'C$'),
(104, 'NOK', 'Norwegian Krone', 'kr'),
(105, 'NPR', 'Nepalese Rupee', '₨'),
(106, 'NZD', 'New Zealand Dollar', '$'),
(107, 'OMR', 'Omani Rial', 'ر.ع.'),
(108, 'PAB', 'Panamanian Balboa', 'B/.'),
(109, 'PEN', 'Peruvian Nuevo Sol', 'S/.'),
(110, 'PGK', 'Papua New Guinean Kina', 'K'),
(111, 'PHP', 'Philippine Peso', '₱'),
(112, 'PKR', 'Pakistani Rupee', '₨'),
(113, 'PLN', 'Polish Złoty', 'zł'),
(114, 'PYG', 'Paraguayan Guaraní', '₲'),
(115, 'QAR', 'Qatari Riyal', 'ر.ق'),
(116, 'RON', 'Romanian Leu', 'Lei'),
(117, 'RSD', 'Serbian Dinar', 'РСД'),
(118, 'RUB', 'Russian Ruble', 'р.'),
(119, 'RWF', 'Rwandan Franc', 'FRw'),
(120, 'SAR', 'Saudi Riyal', 'ر.س'),
(121, 'SBD', 'Solomon Islands Dollar', '$'),
(122, 'SCR', 'Seychellois Rupee', '₨'),
(123, 'SDG', 'Sudanese Pound', '£'),
(124, 'SEK', 'Swedish Krona', 'kr'),
(125, 'SGD', 'Singapore Dollar', '$'),
(126, 'SHP', 'Saint Helenian Pound', '£'),
(127, 'SKK', 'Slovak Koruna', 'Sk'),
(128, 'SLL', 'Sierra Leonean Leone', 'Le'),
(129, 'SOS', 'Somali Shilling', 'Sh'),
(130, 'SRD', 'Surinamese Dollar', '$'),
(131, 'SSP', 'South Sudanese Pound', '£'),
(132, 'STD', 'São Tomé and Príncipe Dobra', 'Db'),
(133, 'SVC', 'Salvadoran Colón', '₡'),
(134, 'SYP', 'Syrian Pound', '£S'),
(135, 'SZL', 'Swazi Lilangeni', 'L'),
(136, 'THB', 'Thai Baht', '฿'),
(137, 'TJS', 'Tajikistani Somoni', 'ЅМ'),
(138, 'TMT', 'Turkmenistani Manat', 'T'),
(139, 'TND', 'Tunisian Dinar', 'د.ت'),
(140, 'TOP', 'Tongan Paʻanga', 'T$'),
(141, 'TRY', 'Turkish Lira', 'TL'),
(142, 'TTD', 'Trinidad and Tobago Dollar', '$'),
(143, 'TWD', 'New Taiwan Dollar', '$'),
(144, 'TZS', 'Tanzanian Shilling', 'Sh'),
(145, 'UAH', 'Ukrainian Hryvnia', '₴'),
(146, 'UGX', 'Ugandan Shilling', 'USh'),
(147, 'USD', 'United States Dollar', '$'),
(148, 'UYU', 'Uruguayan Peso', '$'),
(149, 'UZS', 'Uzbekistani Som', 'null'),
(150, 'VEF', 'Venezuelan Bolívar', 'Bs F'),
(151, 'VND', 'Vietnamese Đồng', '₫'),
(152, 'VUV', 'Vanuatu Vatu', 'Vt'),
(153, 'WST', 'Samoan Tala', 'T'),
(154, 'XAF', 'Central African Cfa Franc', 'Fr'),
(155, 'XAG', 'Silver (Troy Ounce)', 'oz t'),
(156, 'XAU', 'Gold (Troy Ounce)', 'oz t'),
(157, 'XCD', 'East Caribbean Dollar', '$'),
(158, 'XDR', 'Special Drawing Rights', 'SDR'),
(159, 'XOF', 'West African Cfa Franc', 'Fr'),
(160, 'XPF', 'Cfp Franc', 'Fr'),
(161, 'YER', 'Yemeni Rial', '﷼'),
(162, 'ZAR', 'South African Rand', 'R'),
(163, 'ZMK', 'Zambian Kwacha', 'ZK'),
(164, 'ZMW', 'Zambian Kwacha', 'ZK');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `code`, `name`, `phone`, `email`, `address`, `deleted_at`, `created_at`, `updated_at`, `commission`) VALUES
(2, 'DR20230923001', 'Dr Syarif', '0881026697527', 'syarif@gmail.com', 'jl sulawasi 2944 Jawa Timur', NULL, '2023-09-23 06:56:26', '2023-10-03 06:33:37', 10);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `subtotal` double(8,2) NOT NULL DEFAULT 0.00,
  `total` double(8,2) NOT NULL DEFAULT 0.00,
  `paid` double(8,2) NOT NULL DEFAULT 0.00,
  `due` double(8,2) NOT NULL DEFAULT 0.00,
  `done` tinyint(1) NOT NULL DEFAULT 0,
  `report_pdf` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_pdf` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_commission` double NOT NULL DEFAULT 0,
  `uploaded_report` tinyint(1) NOT NULL DEFAULT 0,
  `sample_collection_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signed_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `branch_id`, `patient_id`, `doctor_id`, `contract_id`, `discount`, `subtotal`, `total`, `paid`, `due`, `done`, `report_pdf`, `receipt_pdf`, `created_at`, `updated_at`, `barcode`, `doctor_commission`, `uploaded_report`, `sample_collection_date`, `signed_by`, `created_by`) VALUES
(3, NULL, 1, 2, NULL, 0.00, 30.00, 30.00, 0.00, 30.00, 0, NULL, NULL, '2023-09-26 05:28:02', '2023-09-26 05:28:02', NULL, 0, 0, '2023-09-26 00:00', NULL, NULL),
(43, NULL, 1, 2, NULL, 0.00, 130.00, 130.00, 0.00, 130.00, 0, NULL, NULL, '2023-09-29 07:08:51', '2023-09-29 07:08:51', NULL, 0, 0, '2023-09-29 00:00', NULL, NULL),
(44, NULL, 1, 2, NULL, 0.00, 130.00, 130.00, 0.00, 130.00, 0, NULL, NULL, '2023-09-29 07:10:05', '2023-09-29 07:10:05', NULL, 0, 0, '2023-09-29 00:00', NULL, NULL),
(45, NULL, 1, 2, NULL, 0.00, 30.00, 30.00, 0.00, 30.00, 0, NULL, NULL, '2023-09-29 07:16:07', '2023-09-29 07:16:07', NULL, 0, 0, '2023-09-29 00:00', NULL, NULL),
(46, NULL, 1, 2, NULL, 0.00, 30.00, 30.00, 0.00, 30.00, 0, NULL, NULL, '2023-09-29 07:22:50', '2023-09-29 07:22:50', NULL, 0, 0, '2023-09-29 00:00', NULL, NULL),
(47, NULL, 1, 2, NULL, 0.00, 30.00, 30.00, 0.00, 30.00, 0, NULL, NULL, '2023-09-29 07:24:13', '2023-09-29 07:24:13', NULL, 0, 0, '2023-09-29 00:00', NULL, NULL),
(48, NULL, 1, 2, NULL, 0.00, 30.00, 30.00, 0.00, 30.00, 0, NULL, NULL, '2023-09-29 07:24:44', '2023-09-29 07:24:44', NULL, 0, 0, '2023-09-29 00:00', NULL, NULL),
(49, NULL, 1, 2, NULL, 0.00, 30.00, 30.00, 0.00, 30.00, 0, NULL, NULL, '2023-09-29 07:27:00', '2023-09-29 07:27:00', NULL, 0, 0, '2023-09-29 00:00', NULL, NULL),
(65, 1, 2, 2, NULL, 0.00, 130.00, 130.00, 0.00, 130.00, 0, 'http://127.0.0.1:8000/uploads/pdf/report_65.pdf', 'http://127.0.0.1:8000/uploads/pdf/receipt_65.pdf', '2023-10-02 07:33:51', '2023-10-17 06:57:52', '478165', 0, 0, '2023-10-02 00:00', 1, 1),
(76, 1, 1, 2, NULL, 0.00, 130.00, 130.00, 0.00, 130.00, 0, NULL, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55', '724176', 13, 0, '2023-10-20 00:00', NULL, 1),
(77, 1, 2, NULL, NULL, 0.00, 130.00, 130.00, 0.00, 130.00, 0, NULL, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44', '284777', 0, 0, '2023-10-20 00:00', NULL, 1),
(78, 1, 2, NULL, NULL, 0.00, 130.00, 130.00, 0.00, 130.00, 0, NULL, 'http://127.0.0.1:8002/uploads/pdf/receipt_78.pdf', '2023-10-19 18:41:25', '2023-10-19 18:41:27', '284578', 0, 0, '2023-10-20 00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_cultures`
--

CREATE TABLE `group_cultures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `culture_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `done` tinyint(1) NOT NULL DEFAULT 0,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_cultures`
--

INSERT INTO `group_cultures` (`id`, `group_id`, `culture_id`, `price`, `done`, `comment`, `created_at`, `updated_at`, `package_id`) VALUES
(43, 65, 1, 100.00, 0, NULL, '2023-10-02 07:33:51', '2023-10-02 07:33:51', NULL),
(54, 76, 1, 100.00, 0, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55', NULL),
(55, 77, 1, 100.00, 0, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44', NULL),
(56, 78, 1, 100.00, 0, NULL, '2023-10-19 18:41:25', '2023-10-19 18:41:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_culture_options`
--

CREATE TABLE `group_culture_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_culture_id` int(11) DEFAULT NULL,
  `culture_option_id` int(11) DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_culture_options`
--

INSERT INTO `group_culture_options` (`id`, `group_culture_id`, `culture_option_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2023-08-19 07:40:45', '2023-08-19 07:40:45'),
(2, 1, 2, NULL, '2023-08-19 07:40:45', '2023-08-19 07:40:45'),
(3, 1, 3, NULL, '2023-08-19 07:40:45', '2023-08-19 07:40:45'),
(4, 2, 1, NULL, '2023-09-25 08:47:56', '2023-09-25 08:47:56'),
(5, 2, 2, NULL, '2023-09-25 08:47:56', '2023-09-25 08:47:56'),
(6, 2, 3, NULL, '2023-09-25 08:47:56', '2023-09-25 08:47:56'),
(7, 3, 1, NULL, '2023-09-26 05:43:47', '2023-09-26 05:43:47'),
(8, 3, 2, NULL, '2023-09-26 05:43:47', '2023-09-26 05:43:47'),
(9, 3, 3, NULL, '2023-09-26 05:43:47', '2023-09-26 05:43:47'),
(10, 4, 1, NULL, '2023-09-28 08:06:31', '2023-09-28 08:06:31'),
(11, 4, 2, NULL, '2023-09-28 08:06:31', '2023-09-28 08:06:31'),
(12, 4, 3, NULL, '2023-09-28 08:06:31', '2023-09-28 08:06:31'),
(13, 5, 1, NULL, '2023-09-28 08:09:39', '2023-09-28 08:09:39'),
(14, 5, 2, NULL, '2023-09-28 08:09:39', '2023-09-28 08:09:39'),
(15, 5, 3, NULL, '2023-09-28 08:09:39', '2023-09-28 08:09:39'),
(16, 6, 1, NULL, '2023-09-28 08:11:23', '2023-09-28 08:11:23'),
(17, 6, 2, NULL, '2023-09-28 08:11:23', '2023-09-28 08:11:23'),
(18, 6, 3, NULL, '2023-09-28 08:11:23', '2023-09-28 08:11:23'),
(19, 7, 1, NULL, '2023-09-28 08:11:41', '2023-09-28 08:11:41'),
(20, 7, 2, NULL, '2023-09-28 08:11:41', '2023-09-28 08:11:41'),
(21, 7, 3, NULL, '2023-09-28 08:11:41', '2023-09-28 08:11:41'),
(22, 8, 1, NULL, '2023-09-28 08:15:16', '2023-09-28 08:15:16'),
(23, 8, 2, NULL, '2023-09-28 08:15:16', '2023-09-28 08:15:16'),
(24, 8, 3, NULL, '2023-09-28 08:15:16', '2023-09-28 08:15:16'),
(25, 9, 1, NULL, '2023-09-28 08:21:44', '2023-09-28 08:21:44'),
(26, 9, 2, NULL, '2023-09-28 08:21:44', '2023-09-28 08:21:44'),
(27, 9, 3, NULL, '2023-09-28 08:21:44', '2023-09-28 08:21:44'),
(28, 10, 1, NULL, '2023-09-28 08:24:45', '2023-09-28 08:24:45'),
(29, 10, 2, NULL, '2023-09-28 08:24:45', '2023-09-28 08:24:45'),
(30, 10, 3, NULL, '2023-09-28 08:24:45', '2023-09-28 08:24:45'),
(31, 11, 1, NULL, '2023-09-28 08:26:25', '2023-09-28 08:26:25'),
(32, 11, 2, NULL, '2023-09-28 08:26:25', '2023-09-28 08:26:25'),
(33, 11, 3, NULL, '2023-09-28 08:26:25', '2023-09-28 08:26:25'),
(34, 12, 1, NULL, '2023-09-28 08:34:13', '2023-09-28 08:34:13'),
(35, 12, 2, NULL, '2023-09-28 08:34:13', '2023-09-28 08:34:13'),
(36, 12, 3, NULL, '2023-09-28 08:34:13', '2023-09-28 08:34:13'),
(37, 13, 1, NULL, '2023-09-28 08:37:26', '2023-09-28 08:37:26'),
(38, 13, 2, NULL, '2023-09-28 08:37:26', '2023-09-28 08:37:26'),
(39, 13, 3, NULL, '2023-09-28 08:37:26', '2023-09-28 08:37:26'),
(40, 14, 1, NULL, '2023-09-28 08:45:57', '2023-09-28 08:45:57'),
(41, 14, 2, NULL, '2023-09-28 08:45:57', '2023-09-28 08:45:57'),
(42, 14, 3, NULL, '2023-09-28 08:45:57', '2023-09-28 08:45:57'),
(43, 15, 1, NULL, '2023-09-28 09:02:34', '2023-09-28 09:02:34'),
(44, 15, 2, NULL, '2023-09-28 09:02:34', '2023-09-28 09:02:34'),
(45, 15, 3, NULL, '2023-09-28 09:02:34', '2023-09-28 09:02:34'),
(46, 16, 1, NULL, '2023-09-28 09:04:51', '2023-09-28 09:04:51'),
(47, 16, 2, NULL, '2023-09-28 09:04:51', '2023-09-28 09:04:51'),
(48, 16, 3, NULL, '2023-09-28 09:04:51', '2023-09-28 09:04:51'),
(49, 17, 1, NULL, '2023-09-28 09:05:47', '2023-09-28 09:05:47'),
(50, 17, 2, NULL, '2023-09-28 09:05:47', '2023-09-28 09:05:47'),
(51, 17, 3, NULL, '2023-09-28 09:05:47', '2023-09-28 09:05:47'),
(52, 18, 1, NULL, '2023-09-28 09:06:56', '2023-09-28 09:06:56'),
(53, 18, 2, NULL, '2023-09-28 09:06:56', '2023-09-28 09:06:56'),
(54, 18, 3, NULL, '2023-09-28 09:06:56', '2023-09-28 09:06:56'),
(55, 19, 1, NULL, '2023-09-28 09:10:27', '2023-09-28 09:10:27'),
(56, 19, 2, NULL, '2023-09-28 09:10:27', '2023-09-28 09:10:27'),
(57, 19, 3, NULL, '2023-09-28 09:10:27', '2023-09-28 09:10:27'),
(58, 20, 1, NULL, '2023-09-28 09:12:58', '2023-09-28 09:12:58'),
(59, 20, 2, NULL, '2023-09-28 09:12:58', '2023-09-28 09:12:58'),
(60, 20, 3, NULL, '2023-09-28 09:12:58', '2023-09-28 09:12:58'),
(61, 21, 1, NULL, '2023-09-29 06:50:28', '2023-09-29 06:50:28'),
(62, 21, 2, NULL, '2023-09-29 06:50:28', '2023-09-29 06:50:28'),
(63, 21, 3, NULL, '2023-09-29 06:50:28', '2023-09-29 06:50:28'),
(64, 22, 1, NULL, '2023-09-29 06:52:24', '2023-09-29 06:52:24'),
(65, 22, 2, NULL, '2023-09-29 06:52:24', '2023-09-29 06:52:24'),
(66, 22, 3, NULL, '2023-09-29 06:52:24', '2023-09-29 06:52:24'),
(67, 23, 1, NULL, '2023-09-29 06:56:07', '2023-09-29 06:56:07'),
(68, 23, 2, NULL, '2023-09-29 06:56:07', '2023-09-29 06:56:07'),
(69, 23, 3, NULL, '2023-09-29 06:56:07', '2023-09-29 06:56:07'),
(70, 24, 1, NULL, '2023-09-29 06:59:26', '2023-09-29 06:59:26'),
(71, 24, 2, NULL, '2023-09-29 06:59:26', '2023-09-29 06:59:26'),
(72, 24, 3, NULL, '2023-09-29 06:59:26', '2023-09-29 06:59:26'),
(73, 25, 1, NULL, '2023-09-29 07:00:32', '2023-09-29 07:00:32'),
(74, 25, 2, NULL, '2023-09-29 07:00:32', '2023-09-29 07:00:32'),
(75, 25, 3, NULL, '2023-09-29 07:00:32', '2023-09-29 07:00:32'),
(76, 26, 1, NULL, '2023-09-29 07:01:51', '2023-09-29 07:01:51'),
(77, 26, 2, NULL, '2023-09-29 07:01:51', '2023-09-29 07:01:51'),
(78, 26, 3, NULL, '2023-09-29 07:01:51', '2023-09-29 07:01:51'),
(79, 27, 1, NULL, '2023-09-29 07:02:08', '2023-09-29 07:02:08'),
(80, 27, 2, NULL, '2023-09-29 07:02:08', '2023-09-29 07:02:08'),
(81, 27, 3, NULL, '2023-09-29 07:02:08', '2023-09-29 07:02:08'),
(82, 28, 1, NULL, '2023-09-29 07:02:50', '2023-09-29 07:02:50'),
(83, 28, 2, NULL, '2023-09-29 07:02:50', '2023-09-29 07:02:50'),
(84, 28, 3, NULL, '2023-09-29 07:02:50', '2023-09-29 07:02:50'),
(85, 29, 1, NULL, '2023-09-29 07:03:27', '2023-09-29 07:03:27'),
(86, 29, 2, NULL, '2023-09-29 07:03:28', '2023-09-29 07:03:28'),
(87, 29, 3, NULL, '2023-09-29 07:03:29', '2023-09-29 07:03:29'),
(88, 30, 1, NULL, '2023-09-29 07:07:37', '2023-09-29 07:07:37'),
(89, 30, 2, NULL, '2023-09-29 07:07:37', '2023-09-29 07:07:37'),
(90, 30, 3, NULL, '2023-09-29 07:07:37', '2023-09-29 07:07:37'),
(91, 31, 1, NULL, '2023-09-29 07:45:15', '2023-09-29 07:45:15'),
(92, 31, 2, NULL, '2023-09-29 07:45:15', '2023-09-29 07:45:15'),
(93, 31, 3, NULL, '2023-09-29 07:45:15', '2023-09-29 07:45:15'),
(94, 32, 1, NULL, '2023-09-29 07:52:11', '2023-09-29 07:52:11'),
(95, 32, 2, NULL, '2023-09-29 07:52:11', '2023-09-29 07:52:11'),
(96, 32, 3, NULL, '2023-09-29 07:52:11', '2023-09-29 07:52:11'),
(97, 33, 1, NULL, '2023-09-29 07:54:20', '2023-09-29 07:54:20'),
(98, 33, 2, NULL, '2023-09-29 07:54:20', '2023-09-29 07:54:20'),
(99, 33, 3, NULL, '2023-09-29 07:54:20', '2023-09-29 07:54:20'),
(100, 34, 1, NULL, '2023-09-29 07:56:19', '2023-09-29 07:56:19'),
(101, 34, 2, NULL, '2023-09-29 07:56:19', '2023-09-29 07:56:19'),
(102, 34, 3, NULL, '2023-09-29 07:56:19', '2023-09-29 07:56:19'),
(103, 35, 1, NULL, '2023-09-29 07:59:07', '2023-09-29 07:59:07'),
(104, 35, 2, NULL, '2023-09-29 07:59:07', '2023-09-29 07:59:07'),
(105, 35, 3, NULL, '2023-09-29 07:59:07', '2023-09-29 07:59:07'),
(106, 36, 1, NULL, '2023-09-29 08:04:00', '2023-09-29 08:04:00'),
(107, 36, 2, NULL, '2023-09-29 08:04:00', '2023-09-29 08:04:00'),
(108, 36, 3, NULL, '2023-09-29 08:04:00', '2023-09-29 08:04:00'),
(109, 37, 1, NULL, '2023-09-29 08:05:24', '2023-09-29 08:05:24'),
(110, 37, 2, NULL, '2023-09-29 08:05:24', '2023-09-29 08:05:24'),
(111, 37, 3, NULL, '2023-09-29 08:05:24', '2023-09-29 08:05:24'),
(112, 38, 1, NULL, '2023-09-29 08:07:06', '2023-09-29 08:07:06'),
(113, 38, 2, NULL, '2023-09-29 08:07:06', '2023-09-29 08:07:06'),
(114, 38, 3, NULL, '2023-09-29 08:07:06', '2023-09-29 08:07:06'),
(115, 39, 1, NULL, '2023-09-29 08:33:33', '2023-09-29 08:33:33'),
(116, 39, 2, NULL, '2023-09-29 08:33:33', '2023-09-29 08:33:33'),
(117, 39, 3, NULL, '2023-09-29 08:33:33', '2023-09-29 08:33:33'),
(118, 40, 1, NULL, '2023-09-29 08:34:32', '2023-09-29 08:34:32'),
(119, 40, 2, NULL, '2023-09-29 08:34:32', '2023-09-29 08:34:32'),
(120, 40, 3, NULL, '2023-09-29 08:34:32', '2023-09-29 08:34:32'),
(121, 41, 1, NULL, '2023-09-29 08:37:42', '2023-09-29 08:37:42'),
(122, 41, 2, NULL, '2023-09-29 08:37:42', '2023-09-29 08:37:42'),
(123, 41, 3, NULL, '2023-09-29 08:37:42', '2023-09-29 08:37:42'),
(124, 42, 1, NULL, '2023-09-29 08:44:53', '2023-09-29 08:44:53'),
(125, 42, 2, NULL, '2023-09-29 08:44:53', '2023-09-29 08:44:53'),
(126, 42, 3, NULL, '2023-09-29 08:44:53', '2023-09-29 08:44:53'),
(127, 43, 1, NULL, '2023-10-02 07:33:51', '2023-10-02 07:33:51'),
(128, 43, 2, NULL, '2023-10-02 07:33:51', '2023-10-02 07:33:51'),
(129, 43, 3, NULL, '2023-10-02 07:33:51', '2023-10-02 07:33:51'),
(130, 44, 1, NULL, '2023-10-19 04:07:29', '2023-10-19 04:07:29'),
(131, 44, 2, NULL, '2023-10-19 04:07:29', '2023-10-19 04:07:29'),
(132, 44, 3, NULL, '2023-10-19 04:07:29', '2023-10-19 04:07:29'),
(133, 45, 1, NULL, '2023-10-19 08:32:15', '2023-10-19 08:32:15'),
(134, 45, 2, NULL, '2023-10-19 08:32:15', '2023-10-19 08:32:15'),
(135, 45, 3, NULL, '2023-10-19 08:32:15', '2023-10-19 08:32:15'),
(136, 46, 1, NULL, '2023-10-19 08:44:03', '2023-10-19 08:44:03'),
(137, 46, 2, NULL, '2023-10-19 08:44:03', '2023-10-19 08:44:03'),
(138, 46, 3, NULL, '2023-10-19 08:44:03', '2023-10-19 08:44:03'),
(139, 47, 1, NULL, '2023-10-19 08:58:38', '2023-10-19 08:58:38'),
(140, 47, 2, NULL, '2023-10-19 08:58:38', '2023-10-19 08:58:38'),
(141, 47, 3, NULL, '2023-10-19 08:58:38', '2023-10-19 08:58:38'),
(142, 48, 1, NULL, '2023-10-19 09:01:28', '2023-10-19 09:01:28'),
(143, 48, 2, NULL, '2023-10-19 09:01:28', '2023-10-19 09:01:28'),
(144, 48, 3, NULL, '2023-10-19 09:01:28', '2023-10-19 09:01:28'),
(145, 49, 1, NULL, '2023-10-19 09:04:39', '2023-10-19 09:04:39'),
(146, 49, 2, NULL, '2023-10-19 09:04:39', '2023-10-19 09:04:39'),
(147, 49, 3, NULL, '2023-10-19 09:04:39', '2023-10-19 09:04:39'),
(148, 50, 1, NULL, '2023-10-19 09:11:50', '2023-10-19 09:11:50'),
(149, 50, 2, NULL, '2023-10-19 09:11:50', '2023-10-19 09:11:50'),
(150, 50, 3, NULL, '2023-10-19 09:11:50', '2023-10-19 09:11:50'),
(151, 51, 1, NULL, '2023-10-19 09:13:13', '2023-10-19 09:13:13'),
(152, 51, 2, NULL, '2023-10-19 09:13:13', '2023-10-19 09:13:13'),
(153, 51, 3, NULL, '2023-10-19 09:13:13', '2023-10-19 09:13:13'),
(154, 52, 1, NULL, '2023-10-19 09:17:10', '2023-10-19 09:17:10'),
(155, 52, 2, NULL, '2023-10-19 09:17:10', '2023-10-19 09:17:10'),
(156, 52, 3, NULL, '2023-10-19 09:17:10', '2023-10-19 09:17:10'),
(157, 53, 1, NULL, '2023-10-19 09:19:55', '2023-10-19 09:19:55'),
(158, 53, 2, NULL, '2023-10-19 09:19:55', '2023-10-19 09:19:55'),
(159, 53, 3, NULL, '2023-10-19 09:19:55', '2023-10-19 09:19:55'),
(160, 54, 1, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(161, 54, 2, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(162, 54, 3, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(163, 55, 1, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(164, 55, 2, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(165, 55, 3, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(166, 56, 1, NULL, '2023-10-19 18:41:25', '2023-10-19 18:41:25'),
(167, 56, 2, NULL, '2023-10-19 18:41:25', '2023-10-19 18:41:25'),
(168, 56, 3, NULL, '2023-10-19 18:41:25', '2023-10-19 18:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `group_culture_results`
--

CREATE TABLE `group_culture_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_culture_id` int(11) DEFAULT NULL,
  `antibiotic_id` int(11) DEFAULT NULL,
  `sensitivity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_packages`
--

CREATE TABLE `group_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `commission` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_payments`
--

CREATE TABLE `group_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_tests`
--

CREATE TABLE `group_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `has_results` tinyint(1) NOT NULL DEFAULT 0,
  `has_entered` tinyint(1) NOT NULL DEFAULT 0,
  `done` tinyint(1) NOT NULL DEFAULT 0,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruangan_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_tests`
--

INSERT INTO `group_tests` (`id`, `group_id`, `test_id`, `price`, `has_results`, `has_entered`, `done`, `comment`, `ruangan_id`, `created_at`, `updated_at`, `package_id`) VALUES
(56, 65, 1, 30.00, 1, 0, 1, '2332', NULL, '2023-10-02 07:33:51', '2023-10-15 16:06:51', NULL),
(67, 76, 1, 30.00, 1, 0, 0, NULL, 1, '2023-10-19 18:39:55', '2023-10-19 18:39:55', NULL),
(68, 77, 1, 30.00, 1, 0, 0, NULL, 1, '2023-10-19 18:40:44', '2023-10-19 18:40:44', NULL),
(69, 78, 1, 30.00, 1, 0, 0, NULL, 1, '2023-10-19 18:41:25', '2023-10-19 18:41:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_test_results`
--

CREATE TABLE `group_test_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_test_id` int(11) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_test_results`
--

INSERT INTO `group_test_results` (`id`, `group_test_id`, `test_id`, `result`, `status`, `created_at`, `updated_at`) VALUES
(496, 56, 2, NULL, 'menunggu validasi', '2023-10-17 18:57:46', '2023-10-17 18:57:46'),
(497, 56, 3, NULL, 'menunggu validasi', '2023-10-16 13:35:30', '2023-10-16 13:35:30'),
(498, 56, 4, NULL, 'menunggu validasi', '2023-10-16 13:35:30', '2023-10-16 13:35:30'),
(499, 56, 5, '74,3', 'menunggu validasi', '2023-10-16 13:35:30', '2023-10-16 13:35:30'),
(500, 56, 6, '25,3', 'menunggu validasi', '2023-10-16 13:35:30', '2023-10-16 13:35:30'),
(501, 56, 7, '34,1', 'menunggu validasi', '2023-10-16 13:35:30', '2023-10-16 13:35:30'),
(502, 56, 8, '13,6', 'menunggu validasi', '2023-10-16 13:35:30', '2023-10-16 13:35:30'),
(503, 56, 9, NULL, 'menunggu validasi', '2023-10-16 13:35:30', '2023-10-16 13:35:30'),
(504, 56, 10, '10,8', 'menunggu validasi', '2023-10-16 13:35:30', '2023-10-16 13:35:30'),
(505, 56, 11, NULL, 'menunggu validasi', '2023-10-16 13:35:30', '2023-10-16 13:35:30'),
(506, 56, 12, '15,5', 'menunggu validasi', '2023-10-16 13:35:30', '2023-10-16 13:35:30'),
(617, 67, 2, NULL, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(618, 67, 3, NULL, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(619, 67, 4, NULL, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(620, 67, 5, NULL, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(621, 67, 6, NULL, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(622, 67, 7, NULL, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(623, 67, 8, NULL, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(624, 67, 9, NULL, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(625, 67, 10, NULL, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(626, 67, 11, NULL, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(627, 67, 12, NULL, NULL, '2023-10-19 18:39:55', '2023-10-19 18:39:55'),
(628, 68, 2, NULL, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(629, 68, 3, NULL, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(630, 68, 4, NULL, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(631, 68, 5, NULL, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(632, 68, 6, NULL, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(633, 68, 7, NULL, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(634, 68, 8, NULL, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(635, 68, 9, NULL, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(636, 68, 10, NULL, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(637, 68, 11, NULL, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(638, 68, 12, NULL, NULL, '2023-10-19 18:40:44', '2023-10-19 18:40:44'),
(639, 69, 2, NULL, NULL, '2023-10-19 18:41:26', '2023-10-19 18:41:26'),
(640, 69, 3, NULL, NULL, '2023-10-19 18:41:26', '2023-10-19 18:41:26'),
(641, 69, 4, NULL, NULL, '2023-10-19 18:41:26', '2023-10-19 18:41:26'),
(642, 69, 5, NULL, NULL, '2023-10-19 18:41:26', '2023-10-19 18:41:26'),
(643, 69, 6, NULL, NULL, '2023-10-19 18:41:26', '2023-10-19 18:41:26'),
(644, 69, 7, NULL, NULL, '2023-10-19 18:41:26', '2023-10-19 18:41:26'),
(645, 69, 8, NULL, NULL, '2023-10-19 18:41:26', '2023-10-19 18:41:26'),
(646, 69, 9, NULL, NULL, '2023-10-19 18:41:26', '2023-10-19 18:41:26'),
(647, 69, 10, NULL, NULL, '2023-10-19 18:41:26', '2023-10-19 18:41:26'),
(648, 69, 11, NULL, NULL, '2023-10-19 18:41:26', '2023-10-19 18:41:26'),
(649, 69, 12, NULL, NULL, '2023-10-19 18:41:26', '2023-10-19 18:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `iso`, `active`, `created_at`, `updated_at`, `rtl`) VALUES
(1, 'ar', 1, NULL, NULL, 1),
(2, 'en', 1, NULL, NULL, 0),
(3, 'de', 1, NULL, NULL, 0),
(4, 'es', 1, NULL, NULL, 0),
(5, 'et', 1, NULL, NULL, 0),
(6, 'fa', 1, NULL, NULL, 1),
(7, 'fr', 1, NULL, NULL, 0),
(8, 'id', 1, NULL, NULL, 0),
(9, 'it', 1, NULL, NULL, 0),
(10, 'nl', 1, NULL, NULL, 0),
(11, 'de', 1, NULL, NULL, 0),
(12, 'pl', 1, NULL, NULL, 0),
(13, 'pt', 1, NULL, NULL, 0),
(14, 'ro', 1, NULL, NULL, 0),
(15, 'ru', 1, NULL, NULL, 0),
(16, 'th', 1, NULL, NULL, 0),
(17, 'tr', 1, NULL, NULL, 0),
(18, 'pt-br', 1, NULL, NULL, 0),
(19, 'zh-cn', 1, NULL, NULL, 0),
(20, 'zh-tw', 1, NULL, NULL, 0);

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
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2020_06_291_023147_create_patients_table', 1),
(7, '2020_06_29_0231471_create_group_tests_table', 1),
(8, '2020_06_29_0231471_create_groups_table', 1),
(9, '2020_06_29_023147_create_antibiotics_table', 1),
(10, '2020_06_29_023147_create_cultures_table', 1),
(11, '2020_06_29_023147_create_currencies_table', 1),
(12, '2020_06_29_023147_create_doctors_table', 1),
(13, '2020_06_29_023147_create_failed_jobs_table', 1),
(14, '2020_06_29_023147_create_group_culture_results_table', 1),
(15, '2020_06_29_023147_create_group_cultures_table', 1),
(16, '2020_06_29_023147_create_group_test_results_table', 1),
(17, '2020_06_29_023147_create_password_resets_table', 1),
(18, '2020_06_29_023147_create_permissions_table', 1),
(19, '2020_06_29_023147_create_role_permissions_table', 1),
(20, '2020_06_29_023147_create_roles_table', 1),
(21, '2020_06_29_023147_create_settings_table', 1),
(22, '2020_06_29_023147_create_user_roles_table', 1),
(23, '2020_06_29_023147_create_users_table', 1),
(24, '2020_07_14_164944_create_chats_table', 1),
(25, '2020_07_19_0402311212_create_visits_table', 1),
(26, '2020_07_23_00134911_create_branches_table', 1),
(27, '2020_07_25_0846441_create_contracts_table', 1),
(28, '2020_07_26_174857_create_expenses_table', 1),
(29, '2020_07_26_180427_create_expense_categories_table', 1),
(30, '2020_09_19_01584112_create_component_options_table', 1),
(31, '2020_09_21_081815_create_tests_table', 1),
(32, '2020_09_21_090444_create_culture_options_table', 1),
(33, '2020_09_22_000304_create_activity_log_table', 1),
(34, '2020_09_23_06421111_create_group_culture_options', 1),
(35, '2020_09_28_005305_create_modules_table', 1),
(36, '2020_10_13_163657_create_languages_table', 1),
(37, '2021_01_07_055724_add_direction_to_languages_table', 1),
(38, '2021_03_11_152345_add_barcode_to_groups_table', 1),
(39, '2021_03_12_112340_add_commission_to_doctors', 1),
(40, '2021_03_12_120501_add_doctor_commission_to_groups_table', 1),
(41, '2021_03_12_121735_add_doctor_id_to_expenses_table', 1),
(42, '2021_03_13_032624_add_code_to_doctors_table', 1),
(43, '2021_03_13_175226_add_signature_to_users_table', 1),
(44, '2021_05_12_193953_add_package_id_to_group_tests_table', 1),
(45, '2021_05_12_194042_add_package_id_to_group_cultures_table', 1),
(46, '2021_05_28_105728_create_user_branches_table', 1),
(47, '2021_05_28_113458_create_test_prices_table', 1),
(48, '2021_05_28_113529_create_culture_prices_table', 1),
(49, '2021_05_28_125253_add_branch_id_to_visits_table', 1),
(50, '2021_05_28_142427_add_branch_id_to_expenses_table', 1),
(51, '2021_06_12_075326_create_test_reference_ranges_table', 1),
(52, '2021_06_12_184639_create_categories_table', 1),
(53, '2021_06_12_184720_add_category_id_to_tests_table', 1),
(54, '2021_06_12_184727_add_category_id_to_cultures_table', 1),
(55, '2021_06_13_171408_add_contract_id_to_patients_table', 1),
(56, '2021_06_13_184314_create_payment_methods_table', 1),
(57, '2021_06_13_184337_create_group_payments_table', 1),
(58, '2021_06_14_072123_create_packages_table', 1),
(59, '2021_06_14_072131_create_package_tests_table', 1),
(60, '2021_06_14_072309_create_group_packages_table', 1),
(61, '2021_06_14_080139_create_package_prices_table', 1),
(62, '2021_06_15_035744_create_visit_tests_table', 1),
(63, '2021_06_16_183823_add_uploaded_report_to_groups_table', 1),
(64, '2021_06_16_232212_create_tests_comments_table', 1),
(65, '2021_06_16_232219_create_cultures_comments_table', 1),
(66, '2021_06_25_235409_create_suppliers_table', 1),
(67, '2021_06_25_235539_create_products_table', 1),
(68, '2021_06_25_235942_create_purchases_table', 1),
(69, '2021_06_26_000131_create_purchase_products_table', 1),
(70, '2021_06_26_001001_create_purchase_payments_table', 1),
(71, '2021_06_27_125125_create_contract_prices_table', 1),
(72, '2021_07_09_025111_create_adjustments_table', 1),
(73, '2021_07_09_025123_create_adjustment_products_table', 1),
(74, '2021_07_09_034224_create_transfers_table', 1),
(75, '2021_07_09_034231_create_transfer_products_table', 1),
(76, '2021_07_09_123804_create_test_consumptions_table', 1),
(77, '2021_07_09_133358_create_product_consumptions_table', 1),
(78, '2021_07_17_033804_create_branch_products_table', 1),
(79, '2021_07_17_073127_add_sample_collection_date_to_groups_table', 1),
(80, '2021_07_22_040846_add_them_to_users_table', 1),
(81, '2021_07_22_055647_add_them_to_patients_table', 1),
(82, '2021_10_04_021711_add_discount_type_to_contracts_table', 1),
(83, '2021_10_22_022306_add_visit_address_to_visits_table', 1),
(84, '2021_10_26_082731_create_timezones_table', 1),
(85, '2021_10_27_040345_add_fields_to_patients_table', 1),
(86, '2021_10_27_045332_create_countries_table', 1),
(87, '2021_10_28_024423_add_fields_to_groups_table', 1),
(88, '2021_10_28_034114_add_avatar_to_users_table', 1),
(89, '2021_10_28_060759_add_to_branches_table', 1),
(90, '2021_10_29_070027_add_soft_deletes_to_users_table', 1),
(91, '2021_10_30_070706_create_jobs_table', 1),
(92, '2021_10_31_045402_add_last_activity_to_users_table', 1),
(93, '2021_10_31_051833_add_last_activity_to_patients_table', 1),
(94, '2021_10_31_103307_add_footer_to_branches_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', '2023-10-03 04:36:14', '2023-10-03 04:36:14'),
(2, 'categories', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(3, 'tests', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(4, 'cultures', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(5, 'packages', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(6, 'antibiotics', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(7, 'culture options', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(8, 'doctors', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(9, 'groups tests', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(10, 'patients', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(11, 'Medical reports', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(12, 'Reports', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(13, 'roles', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(14, 'users', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(15, 'price list', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(16, 'test data', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(17, 'accounting reports', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(18, 'payment methods', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(19, 'Home visits', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(20, 'Branches', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(21, 'contracts', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(22, 'expense categories', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(23, 'Expenses', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(24, 'Backups', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(25, 'setting', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(26, 'Chat', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(27, 'Actvity logs', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(28, 'Translation', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(29, 'Suppliers', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(30, 'Products', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(31, 'Purchases', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(32, 'Adjustments', '2023-10-03 04:36:15', '2023-10-03 04:36:15'),
(33, 'Transfers', '2023-10-03 04:36:16', '2023-10-03 04:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_data`
--

CREATE TABLE `order_data` (
  `ID` int(11) NOT NULL,
  `KODETRANSAKSI` varchar(128) DEFAULT NULL,
  `TIMESTAMP` timestamp NULL DEFAULT current_timestamp(),
  `DATE_TIME_STAMP` timestamp NULL DEFAULT current_timestamp(),
  `DEVICE_ID1` varchar(128) DEFAULT NULL,
  `PATIENT_ID_OPT` varchar(32) DEFAULT NULL,
  `PATIENT_NAME` varchar(128) DEFAULT NULL,
  `PATIENT_NAME_LAST` varchar(128) DEFAULT NULL,
  `PATIENT_NAME_FIRST` varchar(128) DEFAULT NULL,
  `PATIENT_BIRTHDATE` varchar(128) DEFAULT NULL,
  `PATIENT_SEX` varchar(12) DEFAULT NULL,
  `RESULT_SEQ_NUM` varchar(12) DEFAULT NULL,
  `RESULT_TEST_ID` varchar(32) DEFAULT NULL,
  `RESULT_VALUE` varchar(32) DEFAULT NULL,
  `RESULT_UNIT` varchar(32) DEFAULT NULL,
  `RESULT_ABNORMAL_FLAG` varchar(32) DEFAULT NULL,
  `RESULT_STATUS` varchar(32) DEFAULT NULL,
  `RESULT_DATE` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `precautions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_prices`
--

CREATE TABLE `package_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_tests`
--

CREATE TABLE `package_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `testable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_activity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `code`, `name`, `gender`, `dob`, `phone`, `email`, `address`, `deleted_at`, `created_at`, `updated_at`, `contract_id`, `theme`, `country_id`, `national_id`, `passport_no`, `avatar`, `last_activity`) VALUES
(1, '123144', 'patient', 'male', '1995-08-28', '00', 'patient@360lims.com', 'USA', NULL, '2023-08-19 06:34:24', '2023-08-19 06:34:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '087769', 'RUSNI', 'male', '1980-10-01', '0912131331', 'rusni@gmail.com', 'jl jauh', NULL, '2023-10-02 07:31:19', '2023-10-02 07:31:19', NULL, NULL, '102', '121313141414', '113', NULL, NULL),
(3, '232442111', 'test', 'male', '1990-10-02', '082424', 'test@gmail.com', '123', NULL, '2023-10-03 05:50:07', '2023-10-03 06:00:22', NULL, NULL, '102', '12', '13', NULL, NULL),
(4, NULL, 'biru', 'male', '2009-10-30', '081331313', 'biru@gmail.com', '12', '2023-10-03 06:20:20', '2023-10-03 06:20:03', '2023-10-03 06:20:20', NULL, NULL, '102', '313133', '133', NULL, NULL),
(5, '2342445', 'biru', 'male', '2012-10-25', '12313', 'biru@gmail.com', '13', NULL, '2023-10-03 06:22:22', '2023-10-03 06:23:10', NULL, NULL, '102', '1313131', '12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `module_id`, `name`, `key`, `created_at`, `updated_at`) VALUES
(1, 1, 'View general statistics', 'view_general_statistics', NULL, NULL),
(2, 1, 'View income statistics', 'view_income_statistics', NULL, NULL),
(3, 1, 'View tests statistics', 'view_tests_statistics', NULL, NULL),
(4, 1, 'View best income packages', 'view_best_income_packages', NULL, NULL),
(5, 1, 'View best income tests', 'view_best_income_tests', NULL, NULL),
(6, 1, 'View best income cultures', 'view_best_income_cultures', NULL, NULL),
(7, 1, 'View online admins', 'view_online_admins', NULL, NULL),
(8, 1, 'View online patients', 'view_online_patients', NULL, NULL),
(9, 1, 'View today home visits', 'view_today_visits', NULL, NULL),
(10, 2, 'View', 'view_category', NULL, NULL),
(11, 2, 'Create', 'create_category', NULL, NULL),
(12, 2, 'Edit', 'edit_category', NULL, NULL),
(13, 2, 'Delete', 'delete_category', NULL, NULL),
(14, 3, 'View', 'view_test', NULL, NULL),
(15, 3, 'Create', 'create_test', NULL, NULL),
(16, 3, 'Edit', 'edit_test', NULL, NULL),
(17, 3, 'Delete', 'delete_test', NULL, NULL),
(18, 4, 'View', 'view_culture', NULL, NULL),
(19, 4, 'Create', 'create_culture', NULL, NULL),
(20, 4, 'Edit', 'edit_culture', NULL, NULL),
(21, 4, 'Delete', 'delete_culture', NULL, NULL),
(22, 5, 'View', 'view_package', NULL, NULL),
(23, 5, 'Create', 'create_package', NULL, NULL),
(24, 5, 'Edit', 'edit_package', NULL, NULL),
(25, 5, 'Delete', 'delete_package', NULL, NULL),
(26, 6, 'View', 'view_antibiotic', NULL, NULL),
(27, 6, 'Create', 'create_antibiotic', NULL, NULL),
(28, 6, 'Edit', 'edit_antibiotic', NULL, NULL),
(29, 6, 'Delete', 'delete_antibiotic', NULL, NULL),
(30, 7, 'View', 'view_culture_option', NULL, NULL),
(31, 7, 'Create', 'create_culture_option', NULL, NULL),
(32, 7, 'Edit', 'edit_culture_option', NULL, NULL),
(33, 7, 'Delete', 'delete_culture_option', NULL, NULL),
(34, 8, 'View', 'view_doctor', NULL, NULL),
(35, 8, 'Create', 'create_doctor', NULL, NULL),
(36, 8, 'Edit', 'edit_doctor', NULL, NULL),
(37, 8, 'Delete', 'delete_doctor', NULL, NULL),
(38, 9, 'View', 'view_group', NULL, NULL),
(39, 9, 'Create', 'create_group', NULL, NULL),
(40, 9, 'Edit', 'edit_group', NULL, NULL),
(41, 9, 'Delete', 'delete_group', NULL, NULL),
(42, 10, 'View', 'view_patient', NULL, NULL),
(43, 10, 'Create', 'create_patient', NULL, NULL),
(44, 10, 'Edit', 'edit_patient', NULL, NULL),
(45, 10, 'Delete', 'delete_patient', NULL, NULL),
(46, 11, 'View', 'view_medical_report', NULL, NULL),
(47, 11, 'Create', 'create_medical_report', NULL, NULL),
(48, 11, 'Edit', 'edit_medical_report', NULL, NULL),
(49, 11, 'Delete', 'delete_medical_report', NULL, NULL),
(50, 11, 'Sign', 'sign_medical_report', NULL, NULL),
(51, 12, 'View accounting report', 'view_accounting_report', NULL, NULL),
(52, 12, 'View doctor report', 'view_doctor_report', NULL, NULL),
(53, 12, 'View supplier report', 'view_supplier_report', NULL, NULL),
(54, 12, 'View purchase report', 'view_purchase_report', NULL, NULL),
(55, 12, 'View inventory report', 'view_inventory_report', NULL, NULL),
(56, 12, 'View product report', 'view_product_report', NULL, NULL),
(57, 13, 'View', 'view_role', NULL, NULL),
(58, 13, 'Create', 'create_role', NULL, NULL),
(59, 13, 'Edit', 'edit_role', NULL, NULL),
(60, 13, 'Delete', 'delete_role', NULL, NULL),
(61, 14, 'View', 'view_user', NULL, NULL),
(62, 14, 'Create', 'create_user', NULL, NULL),
(63, 14, 'Edit', 'edit_user', NULL, NULL),
(64, 14, 'Delete', 'delete_user', NULL, NULL),
(65, 15, 'View tests prices', 'view_test_prices', NULL, NULL),
(66, 15, 'update tests prices', 'update_test_prices', NULL, NULL),
(67, 15, 'View cultures prices', 'view_culture_prices', NULL, NULL),
(68, 15, 'Update cultures prices', 'update_culture_prices', NULL, NULL),
(69, 15, 'View packages prices', 'view_package_prices', NULL, NULL),
(70, 15, 'Update packages prices', 'update_package_prices', NULL, NULL),
(71, 16, 'View Test Data 1', 'view_test_data_1', NULL, NULL),
(72, 16, 'View Test Data 2', 'view_test_data_2', NULL, NULL),
(73, 17, 'View', 'view_accounting_reports', NULL, NULL),
(74, 17, 'Generate', 'generate_report_accounting', NULL, NULL),
(75, 18, 'View', 'view_payment_method', NULL, NULL),
(76, 18, 'Create', 'create_payment_method', NULL, NULL),
(77, 18, 'Edit', 'edit_payment_method', NULL, NULL),
(78, 18, 'Delete', 'delete_payment_method', NULL, NULL),
(79, 19, 'View', 'view_visit', NULL, NULL),
(80, 19, 'Create', 'create_visit', NULL, NULL),
(81, 19, 'Edit', 'edit_visit', NULL, NULL),
(82, 19, 'Delete', 'delete_visit', NULL, NULL),
(83, 20, 'View', 'view_branch', NULL, NULL),
(84, 20, 'Create', 'create_branch', NULL, NULL),
(85, 20, 'Edit', 'edit_branch', NULL, NULL),
(86, 20, 'Delete', 'delete_branch', NULL, NULL),
(87, 21, 'View', 'view_contract', NULL, NULL),
(88, 21, 'Create', 'create_contract', NULL, NULL),
(89, 21, 'Edit', 'edit_contract', NULL, NULL),
(90, 21, 'Delete', 'delete_contract', NULL, NULL),
(91, 22, 'View', 'view_expense_category', NULL, NULL),
(92, 22, 'Create', 'create_expense_category', NULL, NULL),
(93, 22, 'Edit', 'edit_expense_category', NULL, NULL),
(94, 22, 'Delete', 'delete_expense_category', NULL, NULL),
(95, 23, 'View', 'view_expense', NULL, NULL),
(96, 23, 'Create', 'create_expense', NULL, NULL),
(97, 23, 'Edit', 'edit_expense', NULL, NULL),
(98, 23, 'Delete', 'delete_expense', NULL, NULL),
(99, 24, 'View', 'view_backup', NULL, NULL),
(100, 24, 'Create', 'create_backup', NULL, NULL),
(101, 24, 'Delete', 'delete_backup', NULL, NULL),
(102, 25, 'Update', 'view_setting', NULL, NULL),
(103, 26, 'View', 'view_chat', NULL, NULL),
(104, 27, 'View', 'view_activity_log', NULL, NULL),
(105, 27, 'Clear', 'clear_activity_log', NULL, NULL),
(106, 28, 'View', 'view_translation', NULL, NULL),
(107, 28, 'Edit', 'edit_translation', NULL, NULL),
(108, 29, 'View', 'view_supplier', NULL, NULL),
(109, 29, 'Create', 'create_supplier', NULL, NULL),
(110, 29, 'Edit', 'edit_supplier', NULL, NULL),
(111, 29, 'Delete', 'delete_supplier', NULL, NULL),
(112, 30, 'View', 'view_product', NULL, NULL),
(113, 30, 'Create', 'create_product', NULL, NULL),
(114, 30, 'Edit', 'edit_product', NULL, NULL),
(115, 30, 'Delete', 'delete_product', NULL, NULL),
(116, 31, 'View', 'view_purchase', NULL, NULL),
(117, 31, 'Create', 'create_purchase', NULL, NULL),
(118, 31, 'Edit', 'edit_purchase', NULL, NULL),
(119, 31, 'Delete', 'delete_purchase', NULL, NULL),
(120, 32, 'View', 'view_adjustment', NULL, NULL),
(121, 32, 'Create', 'create_adjustment', NULL, NULL),
(122, 32, 'Edit', 'edit_adjustment', NULL, NULL),
(123, 32, 'Delete', 'delete_adjustment', NULL, NULL),
(124, 33, 'View', 'view_transfer', NULL, NULL),
(125, 33, 'Create', 'create_transfer', NULL, NULL),
(126, 33, 'Edit', 'edit_transfer', NULL, NULL),
(127, 33, 'Delete', 'delete_transfer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_consumptions`
--

CREATE TABLE `product_consumptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `testable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `subtotal` double(8,2) NOT NULL DEFAULT 0.00,
  `tax` double(8,2) NOT NULL DEFAULT 0.00,
  `total` double(8,2) NOT NULL DEFAULT 0.00,
  `paid` double(8,2) NOT NULL DEFAULT 0.00,
  `due` double(8,2) NOT NULL DEFAULT 0.00,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payments`
--

CREATE TABLE `purchase_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_products`
--

CREATE TABLE `purchase_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `total_price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', '2023-08-19 06:34:23', '2023-08-19 06:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(2, 1, 2, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(3, 1, 3, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(4, 1, 4, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(5, 1, 5, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(6, 1, 6, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(7, 1, 7, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(8, 1, 8, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(9, 1, 9, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(10, 1, 10, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(11, 1, 11, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(12, 1, 12, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(13, 1, 13, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(14, 1, 14, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(15, 1, 15, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(16, 1, 16, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(17, 1, 17, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(18, 1, 18, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(19, 1, 19, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(20, 1, 20, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(21, 1, 21, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(22, 1, 22, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(23, 1, 23, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(24, 1, 24, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(25, 1, 25, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(26, 1, 26, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(27, 1, 27, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(28, 1, 28, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(29, 1, 29, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(30, 1, 30, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(31, 1, 31, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(32, 1, 32, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(33, 1, 33, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(34, 1, 34, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(35, 1, 35, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(36, 1, 36, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(37, 1, 37, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(38, 1, 38, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(39, 1, 39, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(40, 1, 40, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(41, 1, 41, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(42, 1, 42, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(43, 1, 43, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(44, 1, 44, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(45, 1, 45, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(46, 1, 46, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(47, 1, 47, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(48, 1, 48, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(49, 1, 49, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(50, 1, 50, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(51, 1, 51, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(52, 1, 52, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(53, 1, 53, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(54, 1, 54, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(55, 1, 55, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(56, 1, 56, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(57, 1, 57, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(58, 1, 58, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(59, 1, 59, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(60, 1, 60, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(61, 1, 61, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(62, 1, 62, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(63, 1, 63, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(64, 1, 64, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(65, 1, 65, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(66, 1, 66, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(67, 1, 67, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(68, 1, 68, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(69, 1, 69, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(70, 1, 70, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(71, 1, 71, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(72, 1, 72, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(73, 1, 73, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(74, 1, 74, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(75, 1, 75, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(76, 1, 76, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(77, 1, 77, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(78, 1, 78, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(79, 1, 79, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(80, 1, 80, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(81, 1, 81, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(82, 1, 82, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(83, 1, 83, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(84, 1, 84, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(85, 1, 85, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(86, 1, 86, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(87, 1, 87, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(88, 1, 88, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(89, 1, 89, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(90, 1, 90, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(91, 1, 91, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(92, 1, 92, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(93, 1, 93, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(94, 1, 94, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(95, 1, 95, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(96, 1, 96, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(97, 1, 97, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(98, 1, 98, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(99, 1, 99, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(100, 1, 100, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(101, 1, 101, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(102, 1, 102, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(103, 1, 103, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(104, 1, 104, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(105, 1, 105, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(106, 1, 106, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(107, 1, 107, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(108, 1, 108, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(109, 1, 109, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(110, 1, 110, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(111, 1, 111, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(112, 1, 112, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(113, 1, 113, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(114, 1, 114, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(115, 1, 115, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(116, 1, 116, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(117, 1, 117, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(118, 1, 118, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(119, 1, 119, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(120, 1, 120, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(121, 1, 121, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(122, 1, 122, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(123, 1, 123, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(124, 1, 124, '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(125, 1, 125, '2023-08-19 06:34:23', '2023-08-19 06:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan_m`
--

CREATE TABLE `ruangan_m` (
  `id` int(11) NOT NULL,
  `kode_ruangan` varchar(20) NOT NULL,
  `nama_ruangan` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruangan_m`
--

INSERT INTO `ruangan_m` (`id`, `kode_ruangan`, `nama_ruangan`, `status`, `created_at`, `updated_at`) VALUES
(1, '5666', 'IGD Darurat', 1, '2023-10-19 09:48:54', '2023-10-19 03:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'info', '{\"name\":\"360LIMS\",\"currency\":\"USD\",\"address\":\"Address\",\"phone\":\"+99\",\"email\":\"support@360lims.com\",\"website\":\"https:\\/\\/www.360lims.com\",\"timezone\":\"Europe\\/London\",\"language\":\"en\",\"footer\":\"All rights are reserved\",\"socials\":{\"facebook\":\"#\",\"twitter\":\"#\",\"instagram\":\"#\",\"youtube\":\"#\"},\"preloader\":\"preloader.gif\"}', NULL, NULL),
(2, 'barcode', '{\"type\":\"CODE11\",\"width\":60,\"height\":150}', NULL, NULL),
(3, 'reports', '{\"show_header\":true,\"show_footer\":true,\"show_signature\":true,\"show_qrcode\":true,\"show_avatar\":true,\"margin-top\":\"0\",\"margin-right\":\"20\",\"margin-bottom\":\"20\",\"margin-left\":\"20\",\"content-margin-top\":\"280\",\"content-margin-bottom\":\"220\",\"qrcode-dimension\":120,\"branch_name\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"branch_info\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"patient_title\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"patient_data\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"test_title\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"test_name\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"test_head\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"result\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"unit\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"reference_range\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"status\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"comment\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"signature\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"antibiotic_name\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"sensitivity\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"commercial_name\":{\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\"},\"report_footer\":{\"border-width\":1,\"border-color\":\"black\",\"background-color\":\"white\",\"color\":\"#000000\",\"font-size\":\"12\",\"font-family\":\"sans-serif\",\"text-align\":\"center\"},\"report_header\":{\"border-width\":1,\"border-color\":\"black\",\"background-color\":\"white\",\"text-align\":\"center\"}}', NULL, NULL),
(4, 'emails', '{\"host\":\"\",\"port\":\"\",\"username\":\"\",\"password\":\"\",\"encryption\":\"\",\"from_address\":\"\",\"from_name\":\"\",\"header_color\":\"#c43e00\",\"footer_color\":\"#363636\",\"patient_code\":{\"active\":false,\"subject\":\"Patient Code\",\"body\":\"Welcome , {patient_name}<br>Your patient code is : {patient_code}\"},\"reset_password\":{\"active\":false,\"subject\":\"Reset your password\",\"body\":\"Reset your password\"},\"receipt\":{\"active\":false,\"subject\":\"Order receipt\",\"body\":\"Welcome {patient_name},<br> your receipt is attached\"},\"report\":{\"active\":false,\"subject\":\"Medical report\",\"body\":\"welcome , {patient_name}<br>you report is attached\"}}', NULL, NULL),
(5, 'sms', '{\"gateway\":\"nexmo\",\"twilio\":{\"sid\":\"\",\"token\":\"\",\"from\":\"\"},\"nexmo\":{\"key\":\"\",\"secret\":\"\"},\"textLocal\":{\"key\":\"\",\"sender\":\"\"},\"infobip\":{\"base_url\":\"\",\"from\":\"\",\"key\":\"\"},\"patient_code\":{\"active\":false,\"message\":\"welcome {patient_name} , your patient code is {patient_code}\"},\"tests_notification\":{\"active\":false,\"message\":\"welcome {patient_name} , your tests are ready now .. you can check tests by using your patient code : {patient_code}\"}}', NULL, NULL),
(6, 'whatsapp', '{\"receipt\":{\"active\":true,\"message\":\"welcome {patient_name} , receipt link is {receipt_link}\"},\"report\":{\"active\":true,\"message\":\"welcome {patient_name} , tests report link is {report_link}\"}}', NULL, '2023-10-03 06:45:21'),
(7, 'api_keys', '{\"google_map\":\"\"}', NULL, NULL),
(8, 'transfer_otomatis_settings', '{\"status\":true}', NULL, '2023-10-14 22:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcut` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_range` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `separated` tinyint(1) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `title` tinyint(1) DEFAULT 0,
  `precautions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `parent_id`, `name`, `shortcut`, `sample_type`, `unit`, `reference_range`, `type`, `separated`, `price`, `status`, `title`, `precautions`, `created_at`, `updated_at`, `deleted_at`, `category_id`) VALUES
(1, 0, 'Complete Blood Count', 'CBC', 'blood', NULL, NULL, '', 0, 30, 0, 0, NULL, '2023-08-19 06:34:24', '2023-08-19 06:34:24', NULL, 1),
(2, 1, 'hgb-hemoglobin', NULL, 'blood', 'g/dl', '', 'text', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(3, 1, 'hct-hematocrit', NULL, 'blood', '%', '', 'text', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(4, 1, 'RBC-Erythrocytes', NULL, 'blood', 'million/µl', '', 'text', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(5, 1, 'MCV', NULL, 'blood', 'fl', '', 'text', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(6, 1, 'MCH', NULL, 'blood', 'pg', '', 'text', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(7, 1, 'MCHC', NULL, 'blood', 'g/dl', '', 'text', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(8, 1, 'RDW-CV', NULL, 'blood', '%', '', 'text', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(9, 1, 'pit-platelet', NULL, 'blood', '10^3/µ', '', 'text', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(10, 1, 'MPV', NULL, 'blood', 'fl', '', 'text', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(11, 1, 'PCT-PLATELETCRIT', NULL, 'blood', '%', '', 'text', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(12, 1, 'PDW', NULL, 'blood', '%', '', 'text', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_comments`
--

CREATE TABLE `test_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_consumptions`
--

CREATE TABLE `test_consumptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `testable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_data`
--

CREATE TABLE `test_data` (
  `ID` int(11) NOT NULL,
  `KODETRANSAKSI` varchar(128) DEFAULT NULL,
  `TIMESTAMP` timestamp NULL DEFAULT current_timestamp(),
  `DATE_TIME_STAMP` timestamp NULL DEFAULT current_timestamp(),
  `DEVICE_ID1` varchar(128) DEFAULT NULL,
  `PATIENT_ID_OPT` varchar(32) DEFAULT NULL,
  `PATIENT_NAME` varchar(128) DEFAULT NULL,
  `PATIENT_NAME_LAST` varchar(128) DEFAULT NULL,
  `PATIENT_NAME_FIRST` varchar(128) DEFAULT NULL,
  `PATIENT_BIRTHDATE` varchar(128) DEFAULT NULL,
  `PATIENT_SEX` varchar(12) DEFAULT NULL,
  `RESULT_SEQ_NUM` varchar(12) DEFAULT NULL,
  `RESULT_TEST_ID` varchar(32) DEFAULT NULL,
  `RESULT_VALUE` varchar(32) DEFAULT NULL,
  `RESULT_UNIT` varchar(32) DEFAULT NULL,
  `RESULT_ABNORMAL_FLAG` varchar(32) DEFAULT NULL,
  `RESULT_STATUS` varchar(32) DEFAULT NULL,
  `RESULT_DATE` varchar(32) DEFAULT NULL,
  `Barcode` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_data`
--

INSERT INTO `test_data` (`ID`, `KODETRANSAKSI`, `TIMESTAMP`, `DATE_TIME_STAMP`, `DEVICE_ID1`, `PATIENT_ID_OPT`, `PATIENT_NAME`, `PATIENT_NAME_LAST`, `PATIENT_NAME_FIRST`, `PATIENT_BIRTHDATE`, `PATIENT_SEX`, `RESULT_SEQ_NUM`, `RESULT_TEST_ID`, `RESULT_VALUE`, `RESULT_UNIT`, `RESULT_ABNORMAL_FLAG`, `RESULT_STATUS`, `RESULT_DATE`, `Barcode`) VALUES
(278, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '1', 'WBC', '7,58', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(279, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '2', 'RBC', '5,04', '10*6/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(280, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '3', 'HGB', '13,3', 'g/dL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(281, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '4', 'HCT', '39,6', '%', 'L', 'N', '16/08/2023 18:01:59', '478165'),
(282, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '5', 'MCV', '78,6', 'fL', 'L', 'N', '16/08/2023 18:01:59', '478165'),
(283, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '6', 'MCH', '26,4', 'pg', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(284, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '7', 'MCHC', '33,6', 'g/dL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(285, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '1', 'WBC', '2,16', '10*3/uL', 'L', 'N', '16/08/2023 16:56:37', '478165'),
(286, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '8', 'PLT', '207', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(287, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '2', 'RBC', '4,78', '10*6/uL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(288, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '9', 'NEUT%', '72,3', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(289, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '3', 'HGB', '12,1', 'g/dL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(290, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '10', 'LYMPH%', '9,4', '%', 'L', 'N', '16/08/2023 18:01:59', '478165'),
(291, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '4', 'HCT', '35,5', '%', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(292, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '11', 'MONO%', '16', '%', 'H', 'N', '16/08/2023 18:01:59', '478165'),
(293, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '5', 'MCV', '74,3', 'fL', 'L', 'N', '16/08/2023 16:56:37', '478165'),
(294, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '12', 'EO%', '1,2', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(295, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '6', 'MCH', '25,3', 'pg', 'L', 'N', '16/08/2023 16:56:37', '478165'),
(296, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '13', 'BASO%', '1,1', '%', 'H', 'N', '16/08/2023 18:01:59', '478165'),
(297, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '7', 'MCHC', '34,1', 'g/dL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(298, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '14', 'NEUT#', '5,49', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(299, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '8', 'PLT', '27', '10*3/uL', 'L', 'N', '16/08/2023 16:56:37', '478165'),
(300, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '15', 'LYMPH#', '0,71', '10*3/uL', 'L', 'N', '16/08/2023 18:01:59', '478165'),
(301, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '9', 'RDW-SD', '37,2', 'fL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(302, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '16', 'MONO#', '1,21', '10*3/uL', 'H', 'N', '16/08/2023 18:01:59', '478165'),
(303, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '10', 'RDW-CV', '13,6', '%', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(304, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '17', 'EO#', '0,09', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(305, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '11', 'MICROR', '11,4', '%', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(306, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '18', 'BASO#', '0,08', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(307, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '12', 'MACROR', '3,8', '%', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(308, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '19', 'IG%', '0,3', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(309, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '13', 'PDW', '15,5', 'fL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(310, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '20', 'IG#', '0,02', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(311, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '14', 'MPV', '10,8', 'fL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(312, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '21', 'RDW-SD', '37,6', 'fL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(313, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '15', 'P-LCR', '33,1', '%', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(314, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '22', 'RDW-CV', '13,1', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(315, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '16', 'PCT', '0,03', '%', 'L', 'N', '16/08/2023 16:56:37', '478165'),
(316, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '23', 'MICROR', '6', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(317, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '17', 'Leukocytopenia', NULL, '', 'A', 'N', '16/08/2023 16:56:37', '478165'),
(318, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '24', 'MACROR', '4,3', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(319, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '18', 'Thrombocytopenia', NULL, '', 'A', 'N', '16/08/2023 16:56:37', '478165'),
(320, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '25', 'PDW', '17', 'fL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(321, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '19', 'RBC_Agglutination?', '60', '', NULL, 'N', '16/08/2023 16:56:37', '478165'),
(322, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '26', 'MPV', '12,7', 'fL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(323, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '20', 'Turbidity/HGB_Interference?', '90', '', NULL, 'N', '16/08/2023 16:56:37', '478165'),
(324, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '27', 'P-LCR', '44,3', '%', 'H', 'N', '16/08/2023 18:01:59', '478165'),
(325, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '21', 'Iron_Deficiency?', '90', '', NULL, 'N', '16/08/2023 16:56:37', '478165'),
(326, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '28', 'PCT', '0,26', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(327, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '22', 'HGB_Defect?', '100', '', 'A', 'N', '16/08/2023 16:56:37', '478165'),
(328, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '29', 'Lymphopenia', NULL, '', 'A', 'N', '16/08/2023 18:01:59', '478165'),
(329, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '23', 'Fragments?', '0', '', NULL, 'N', '16/08/2023 16:56:37', '478165'),
(330, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '30', 'Monocytosis', NULL, '', 'A', 'N', '16/08/2023 18:01:59', '478165'),
(331, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '24', 'PLT_Clumps?', '0', '', NULL, 'N', '16/08/2023 16:56:37', '478165'),
(332, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '31', 'Blasts/Abn_Lympho?', '80', '', NULL, 'N', '16/08/2023 18:01:59', '478165'),
(333, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '25', 'Positive_Morph', NULL, '', 'A', 'N', '16/08/2023 16:56:37', '478165'),
(334, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '32', 'Left_Shift?', '0', '', NULL, 'N', '16/08/2023 18:01:59', '478165'),
(335, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '26', 'Positive_Count', NULL, '', 'A', 'N', '16/08/2023 16:56:37', '478165'),
(336, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '33', 'Atypical_Lympho?', '10', '', NULL, 'N', '16/08/2023 18:01:59', '478165'),
(337, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '27', 'SCAT_WDF-CBC', NULL, '', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(338, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '34', 'NRBC?', '0', '', NULL, 'N', '16/08/2023 18:01:59', '478165'),
(339, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '28', 'SCAT_WDF-CBC(FSCW-FSC)', NULL, '', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(340, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '35', 'RBC_Agglutination?', '60', '', NULL, 'N', '16/08/2023 18:01:59', '478165'),
(341, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '29', 'DIST_RBC', NULL, '', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(342, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '36', 'Turbidity/HGB_Interference?', '90', '', NULL, 'N', '16/08/2023 18:01:59', '478165'),
(343, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '30', 'DIST_PLT', NULL, '', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(344, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '37', 'Iron_Deficiency?', '80', '', NULL, 'N', '16/08/2023 18:01:59', '478165'),
(345, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '31', 'DIST_RBC(NORMAL)', NULL, '', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(346, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '38', 'HGB_Defect?', '90', '', NULL, 'N', '16/08/2023 18:01:59', '478165'),
(347, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '32', 'DIST_PLT(NORMAL)', NULL, '', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(348, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '39', 'Fragments?', '0', '', NULL, 'N', '16/08/2023 18:01:59', '478165'),
(349, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '33', 'WBC-C', '2,16', '10*3/uL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(350, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '40', 'PLT_Clumps?', '0', '', NULL, 'N', '16/08/2023 18:01:59', '478165'),
(351, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '34', 'RDW-SD_RESEARCH', '37,2', 'fL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(352, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '41', 'Positive_Diff', NULL, '', 'A', 'N', '16/08/2023 18:01:59', '478165'),
(353, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '35', 'RDW-CV_RESEARCH', '13,6', '%', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(354, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '42', 'SCAT_WDF', NULL, '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(355, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '36', 'PLT-I', '27', '10*3/uL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(356, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '43', 'SCAT_WDF-CBC', NULL, '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(357, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '37', 'TNC-C', '2,16', '10*3/uL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(358, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '44', 'SCAT_WDF(SSC-FSC)', NULL, '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(359, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '38', 'TNC', '2,16', '10*3/uL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(360, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '45', 'SCAT_WDF(FSC-SFL)', NULL, '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(361, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '39', 'PDW_RESEARCH', '15,5', 'fL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(362, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '46', 'SCAT_WDF(FSCW-FSC)', NULL, '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(363, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '40', 'P-LCR_RESEARCH', '33,1', '%', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(364, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '47', 'SCAT_WDF-CBC(FSCW-FSC)', NULL, '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(365, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '41', 'PCT_RESEARCH', '0,03', '%', 'L', 'N', '16/08/2023 16:56:37', '478165'),
(366, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '48', 'DIST_RBC', NULL, '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(367, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '42', 'HGB-BLANK', '6088', '', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(368, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '49', 'DIST_PLT', NULL, '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(369, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '50', 'DIST_RBC(NORMAL)', NULL, '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(370, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '43', 'HGB-SAMPLE', '7301', '', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(371, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '51', 'DIST_PLT(NORMAL)', NULL, '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(372, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '44', 'R-MFV', '75,3', 'fL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(373, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '52', 'WBC-C', '7,64', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(374, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '45', 'S-RBC', '0', '10*6/uL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(375, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '53', 'WBC-D', '7,58', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(376, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '46', 'S-MCV', '0', 'fL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(377, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '54', 'NEUT#&E&', '5,47', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(378, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '47', 'L-RBC', '0', '10*6/uL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(379, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '55', 'NEUT%&E&', '72', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(380, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '48', 'L-MCV', '0', 'fL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(381, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '56', 'LYMP#&E&', '0,7', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(382, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '49', 'P-MFV', '7,2', 'fL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(383, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '57', 'LYMP%&E&', '9,3', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(384, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '50', 'IRBC-WDF#', '0', '', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(385, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '58', 'HFLC#', '0,01', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(386, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '51', 'HGB_NONSI', '12,1', 'g/dL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(387, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '59', 'HFLC%', '0,1', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(388, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '52', 'HGB_SI', '7,5', 'mmol/L', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(389, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '60', 'NRBC#', '0,01', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(390, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '53', 'HGB_SI2', '7,52', 'mmol/L', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(391, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '61', 'NRBC%', '0,1', '/100WBC', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(392, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '087769', 'RUSNI', 'RUSNI', NULL, '16/02/2005', 'F', '54', 'HGB_NONSI2', '12,13', 'g/dL', 'N', 'N', '16/08/2023 16:56:37', '478165'),
(393, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '62', 'RDW-SD_RESEARCH', '37,6', 'fL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(394, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '63', 'RDW-CV_RESEARCH', '13,1', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(395, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '64', 'PLT-I', '207', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(396, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '65', 'TNC-C', '7,64', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(397, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '66', 'TNC-D', '7,58', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(398, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '67', 'TNC', '7,58', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(399, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '68', 'LYMPH%_RESEARCH', '9,4', '%', 'L', 'N', '16/08/2023 18:01:59', '478165'),
(400, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '69', 'MONO%_RESEARCH', '16', '%', 'H', 'N', '16/08/2023 18:01:59', '478165'),
(401, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '70', 'NEUT%_RESEARCH', '72,3', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(402, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '71', 'EO%_RESEARCH', '1,2', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(403, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '72', 'BASO%_RESEARCH', '1,1', '%', 'H', 'N', '16/08/2023 18:01:59', '478165'),
(404, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '73', 'LYMPH#_RESEARCH', '0,71', '10*3/uL', 'L', 'N', '16/08/2023 18:01:59', '478165'),
(405, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '74', 'MONO#_RESEARCH', '1,21', '10*3/uL', 'H', 'N', '16/08/2023 18:01:59', '478165'),
(406, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '75', 'NEUT#_RESEARCH', '5,49', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(407, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '76', 'EO#_RESEARCH', '0,09', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(408, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '77', 'BASO#_RESEARCH', '0,08', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(409, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '78', 'PDW_RESEARCH', '17', 'fL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(410, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '79', 'P-LCR_RESEARCH', '44,3', '%', 'H', 'N', '16/08/2023 18:01:59', '478165'),
(411, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '80', 'PCT_RESEARCH', '0,26', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(412, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '81', 'IG%_RESEARCH', '0,3', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(413, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '82', 'IG#_RESEARCH', '0,02', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(414, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '83', 'NE-SSC', '149', 'ch', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(415, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '84', 'NE-SFL', '47,9', 'ch', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(416, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '85', 'NE-FSC', '85,2', 'ch', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(417, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '86', 'LY-X', '82,7', 'ch', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(418, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '87', 'LY-Y', '71,7', 'ch', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(419, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '88', 'LY-Z', '60,7', 'ch', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(420, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '89', 'MO-X', '118,3', 'ch', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(421, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '90', 'MO-Y', '96', 'ch', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(422, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '91', 'MO-Z', '59,8', 'ch', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(423, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '92', 'NE-WX', '315', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(424, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '93', 'NE-WY', '606', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(425, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '94', 'NE-WZ', '634', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(426, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '95', 'LY-WX', '520', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(427, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '96', 'LY-WY', '781', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(428, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '97', 'LY-WZ', '478', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(429, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '98', 'MO-WX', '279', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(430, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '99', 'MO-WY', '791', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(431, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '100', 'MO-WZ', '735', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(432, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '101', 'HGB-BLANK', '6173', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(433, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '102', 'HGB-SAMPLE', '7499', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(434, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '103', 'R-MFV', '79,8', 'fL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(435, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '104', 'S-RBC', '0', '10*6/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(436, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '105', 'S-MCV', '0', 'fL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(437, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '106', 'L-RBC', '0', '10*6/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(438, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '107', 'L-MCV', '0', 'fL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(439, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '108', 'P-MFV', '9,8', 'fL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(440, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '109', 'WDF-X', '149', 'ch', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(441, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '110', 'WDF-Y', '47,9', 'ch', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(442, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '111', 'WDF-Z', '85,2', 'ch', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(443, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '112', 'WDF-WX', '483', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(444, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '113', 'WDF-WY', '1628', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(445, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '114', 'IRBC-WDF#', '0', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(446, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '115', 'DLT-WBCD', '0,99', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(447, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '116', 'WBC-D2', '7,583', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(448, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '117', 'TNC-D2', '7,583', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(449, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '118', 'HGB_NONSI', '13,3', 'g/dL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(450, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '119', 'HGB_SI', '8,2', 'mmol/L', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(451, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '120', 'HGB_SI2', '8,23', 'mmol/L', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(452, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '121', 'WDF_TOTAL_COUNT', '28886', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(453, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '122', 'WDF_PLOT_COUNT', '6524', '', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(454, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '123', 'HGB_NONSI2', '13,26', 'g/dL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(455, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '124', 'LY-BF1#', '0', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(456, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '125', 'LY-BF2#', '0,711', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(457, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '126', 'MO-BF1#', '0', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(458, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '127', 'MO-BF2#', '0', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(459, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '128', 'MO-BF3#', '1,211', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(460, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '129', 'HF-BF1#', '0', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(461, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '130', 'HF-BF2#', '0', '10*3/uL', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(462, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '131', 'LY-BF1%', '0', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(463, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '132', 'LY-BF2%', '9,4', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(464, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '133', 'MO-BF1%', '0', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(465, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '134', 'MO-BF2%', '0', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(466, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '135', 'MO-BF3%', '16', '%', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(467, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '136', 'HF-BF1%', '0', '/100WBC', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(468, NULL, NULL, '2023-08-16 15:26:30', 'XN-450', '015954', 'FERLANUS', 'FERLANUS', NULL, '07/02/1984', 'M', '137', 'HF-BF2%', '0', '/100WBC', 'N', 'N', '16/08/2023 18:01:59', '478165'),
(469, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '1', 'WBC', '13,77', '10*3/uL', 'H', 'N', '16/08/2023 16:54:33', '478165'),
(470, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '2', 'RBC', '4,08', '10*6/uL', 'L', 'N', '16/08/2023 16:54:33', '478165'),
(471, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '3', 'HGB', '11,1', 'g/dL', 'L', 'N', '16/08/2023 16:54:33', '478165'),
(472, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '4', 'HCT', '31,6', '%', 'L', 'N', '16/08/2023 16:54:33', '478165'),
(473, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '5', 'MCV', '77,5', 'fL', 'L', 'N', '16/08/2023 16:54:33', '478165'),
(474, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '6', 'MCH', '27,2', 'pg', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(475, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '7', 'MCHC', '35,1', 'g/dL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(476, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '8', 'PLT', '59', '10*3/uL', 'L', 'N', '16/08/2023 16:54:33', '478165'),
(477, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '9', 'RDW-SD', '42,5', 'fL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(478, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '10', 'RDW-CV', '14,8', '%', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(479, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '11', 'MICROR', '8,8', '%', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(480, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '12', 'MACROR', '3,6', '%', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(481, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '13', 'PDW', '14,9', 'fL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(482, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '14', 'MPV', '11,4', 'fL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(483, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '15', 'P-LCR', '39', '%', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(484, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '16', 'PCT', '0,07', '%', 'L', 'N', '16/08/2023 16:54:33', '478165'),
(485, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '17', 'Thrombocytopenia', NULL, '', 'A', 'N', '16/08/2023 16:54:33', '478165'),
(486, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '18', 'RBC_Agglutination?', '60', '', NULL, 'N', '16/08/2023 16:54:33', '478165'),
(487, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '19', 'Turbidity/HGB_Interference?', '90', '', NULL, 'N', '16/08/2023 16:54:33', '478165'),
(488, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '20', 'Iron_Deficiency?', '80', '', NULL, 'N', '16/08/2023 16:54:33', '478165'),
(489, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '21', 'HGB_Defect?', '90', '', NULL, 'N', '16/08/2023 16:54:33', '478165'),
(490, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '22', 'Fragments?', '0', '', NULL, 'N', '16/08/2023 16:54:33', '478165'),
(491, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '23', 'PLT_Clumps?', '20', '', NULL, 'N', '16/08/2023 16:54:33', '478165'),
(492, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '24', 'Positive_Count', NULL, '', 'A', 'N', '16/08/2023 16:54:33', '478165'),
(493, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '25', 'SCAT_WDF-CBC', NULL, '', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(494, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '26', 'SCAT_WDF-CBC(FSCW-FSC)', NULL, '', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(495, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '27', 'DIST_RBC', NULL, '', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(496, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '28', 'DIST_PLT', NULL, '', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(497, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '29', 'DIST_RBC(NORMAL)', NULL, '', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(498, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '30', 'DIST_PLT(NORMAL)', NULL, '', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(499, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '31', 'WBC-C', '13,77', '10*3/uL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(500, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '32', 'RDW-SD_RESEARCH', '42,5', 'fL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(501, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '33', 'RDW-CV_RESEARCH', '14,8', '%', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(502, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '34', 'PLT-I', '59', '10*3/uL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(503, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '35', 'TNC-C', '13,77', '10*3/uL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(504, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '36', 'TNC', '13,77', '10*3/uL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(505, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '37', 'PDW_RESEARCH', '14,9', 'fL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(506, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '38', 'P-LCR_RESEARCH', '39', '%', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(507, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '39', 'PCT_RESEARCH', '0,07', '%', 'L', 'N', '16/08/2023 16:54:33', '478165'),
(508, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '40', 'HGB-BLANK', '6112', '', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(509, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '41', 'HGB-SAMPLE', '7225', '', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(510, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '42', 'R-MFV', '78', 'fL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(511, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '43', 'S-RBC', '0', '10*6/uL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(512, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '44', 'S-MCV', '0', 'fL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(513, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '45', 'L-RBC', '0', '10*6/uL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(514, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '46', 'L-MCV', '0', 'fL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(515, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '47', 'P-MFV', '9,6', 'fL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(516, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '48', 'IRBC-WDF#', '0', '', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(517, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '49', 'HGB_NONSI', '11,1', 'g/dL', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(518, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '50', 'HGB_SI', '6,9', 'mmol/L', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(519, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '51', 'HGB_SI2', '6,9', 'mmol/L', 'N', 'N', '16/08/2023 16:54:33', '478165'),
(520, NULL, NULL, '2023-08-16 15:26:34', 'XN-450', '087410', 'KEMPES', 'KEMPES', NULL, '05/04/1972', 'M', '52', 'HGB_NONSI2', '11,13', 'g/dL', 'N', 'N', '16/08/2023 16:54:33', '478165');

-- --------------------------------------------------------

--
-- Table structure for table `test_options`
--

CREATE TABLE `test_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_prices`
--

CREATE TABLE `test_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` int(11) NOT NULL DEFAULT 0,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_prices`
--

INSERT INTO `test_prices` (`id`, `test_id`, `branch_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 30.00, '2023-08-19 06:34:24', '2023-08-19 06:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `test_reference_ranges`
--

CREATE TABLE `test_reference_ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age_from` double DEFAULT NULL,
  `age_from_days` double DEFAULT NULL,
  `age_to` double DEFAULT NULL,
  `age_to_days` double DEFAULT NULL,
  `critical_low_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normal_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normal_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `critical_high_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `name`, `timezone`, `created_at`, `updated_at`) VALUES
(1, '(GMT-10:00) America/Adak (Hawaii-Aleutian Standard Time)', 'America/Adak', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(2, '(GMT-10:00) America/Atka (Hawaii-Aleutian Standard Time)', 'America/Atka', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(3, '(GMT-9:00) America/Anchorage (Alaska Standard Time)', 'America/Anchorage', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(4, '(GMT-9:00) America/Juneau (Alaska Standard Time)', 'America/Juneau', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(5, '(GMT-9:00) America/Nome (Alaska Standard Time)', 'America/Nome', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(6, '(GMT-9:00) America/Yakutat (Alaska Standard Time)', 'America/Yakutat', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(7, '(GMT-8:00) America/Dawson (Pacific Standard Time)', 'America/Dawson', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(8, '(GMT-8:00) America/Ensenada (Pacific Standard Time)', 'America/Ensenada', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(9, '(GMT-8:00) America/Los_Angeles (Pacific Standard Time)', 'America/Los_Angeles', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(10, '(GMT-8:00) America/Tijuana (Pacific Standard Time)', 'America/Tijuana', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(11, '(GMT-8:00) America/Vancouver (Pacific Standard Time)', 'America/Vancouver', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(12, '(GMT-8:00) America/Whitehorse (Pacific Standard Time)', 'America/Whitehorse', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(13, '(GMT-8:00) Canada/Pacific (Pacific Standard Time)', 'Canada/Pacific', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(14, '(GMT-8:00) Canada/Yukon (Pacific Standard Time)', 'Canada/Yukon', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(15, '(GMT-8:00) Mexico/BajaNorte (Pacific Standard Time)', 'Mexico/BajaNorte', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(16, '(GMT-7:00) America/Boise (Mountain Standard Time)', 'America/Boise', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(17, '(GMT-7:00) America/Cambridge_Bay (Mountain Standard Time)', 'America/Cambridge_Bay', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(18, '(GMT-7:00) America/Chihuahua (Mountain Standard Time)', 'America/Chihuahua', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(19, '(GMT-7:00) America/Dawson_Creek (Mountain Standard Time)', 'America/Dawson_Creek', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(20, '(GMT-7:00) America/Denver (Mountain Standard Time)', 'America/Denver', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(21, '(GMT-7:00) America/Edmonton (Mountain Standard Time)', 'America/Edmonton', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(22, '(GMT-7:00) America/Hermosillo (Mountain Standard Time)', 'America/Hermosillo', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(23, '(GMT-7:00) America/Inuvik (Mountain Standard Time)', 'America/Inuvik', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(24, '(GMT-7:00) America/Mazatlan (Mountain Standard Time)', 'America/Mazatlan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(25, '(GMT-7:00) America/Phoenix (Mountain Standard Time)', 'America/Phoenix', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(26, '(GMT-7:00) America/Shiprock (Mountain Standard Time)', 'America/Shiprock', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(27, '(GMT-7:00) America/Yellowknife (Mountain Standard Time)', 'America/Yellowknife', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(28, '(GMT-7:00) Canada/Mountain (Mountain Standard Time)', 'Canada/Mountain', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(29, '(GMT-7:00) Mexico/BajaSur (Mountain Standard Time)', 'Mexico/BajaSur', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(30, '(GMT-6:00) America/Belize (Central Standard Time)', 'America/Belize', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(31, '(GMT-6:00) America/Cancun (Central Standard Time)', 'America/Cancun', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(32, '(GMT-6:00) America/Chicago (Central Standard Time)', 'America/Chicago', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(33, '(GMT-6:00) America/Costa_Rica (Central Standard Time)', 'America/Costa_Rica', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(34, '(GMT-6:00) America/El_Salvador (Central Standard Time)', 'America/El_Salvador', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(35, '(GMT-6:00) America/Guatemala (Central Standard Time)', 'America/Guatemala', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(36, '(GMT-6:00) America/Knox_IN (Central Standard Time)', 'America/Knox_IN', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(37, '(GMT-6:00) America/Managua (Central Standard Time)', 'America/Managua', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(38, '(GMT-6:00) America/Menominee (Central Standard Time)', 'America/Menominee', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(39, '(GMT-6:00) America/Merida (Central Standard Time)', 'America/Merida', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(40, '(GMT-6:00) America/Mexico_City (Central Standard Time)', 'America/Mexico_City', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(41, '(GMT-6:00) America/Monterrey (Central Standard Time)', 'America/Monterrey', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(42, '(GMT-6:00) America/Rainy_River (Central Standard Time)', 'America/Rainy_River', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(43, '(GMT-6:00) America/Rankin_Inlet (Central Standard Time)', 'America/Rankin_Inlet', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(44, '(GMT-6:00) America/Regina (Central Standard Time)', 'America/Regina', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(45, '(GMT-6:00) America/Swift_Current (Central Standard Time)', 'America/Swift_Current', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(46, '(GMT-6:00) America/Tegucigalpa (Central Standard Time)', 'America/Tegucigalpa', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(47, '(GMT-6:00) America/Winnipeg (Central Standard Time)', 'America/Winnipeg', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(48, '(GMT-6:00) Canada/Central (Central Standard Time)', 'Canada/Central', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(49, '(GMT-6:00) Canada/East-Saskatchewan (Central Standard Time)', 'Canada/East-Saskatchewan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(50, '(GMT-6:00) Canada/Saskatchewan (Central Standard Time)', 'Canada/Saskatchewan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(51, '(GMT-6:00) Chile/EasterIsland (Easter Is. Time)', 'Chile/EasterIsland', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(52, '(GMT-6:00) Mexico/General (Central Standard Time)', 'Mexico/General', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(53, '(GMT-5:00) America/Atikokan (Eastern Standard Time)', 'America/Atikokan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(54, '(GMT-5:00) America/Bogota (Colombia Time)', 'America/Bogota', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(55, '(GMT-5:00) America/Cayman (Eastern Standard Time)', 'America/Cayman', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(56, '(GMT-5:00) America/Coral_Harbour (Eastern Standard Time)', 'America/Coral_Harbour', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(57, '(GMT-5:00) America/Detroit (Eastern Standard Time)', 'America/Detroit', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(58, '(GMT-5:00) America/Fort_Wayne (Eastern Standard Time)', 'America/Fort_Wayne', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(59, '(GMT-5:00) America/Grand_Turk (Eastern Standard Time)', 'America/Grand_Turk', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(60, '(GMT-5:00) America/Guayaquil (Ecuador Time)', 'America/Guayaquil', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(61, '(GMT-5:00) America/Havana (Cuba Standard Time)', 'America/Havana', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(62, '(GMT-5:00) America/Indianapolis (Eastern Standard Time)', 'America/Indianapolis', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(63, '(GMT-5:00) America/Iqaluit (Eastern Standard Time)', 'America/Iqaluit', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(64, '(GMT-5:00) America/Jamaica (Eastern Standard Time)', 'America/Jamaica', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(65, '(GMT-5:00) America/Lima (Peru Time)', 'America/Lima', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(66, '(GMT-5:00) America/Louisville (Eastern Standard Time)', 'America/Louisville', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(67, '(GMT-5:00) America/Montreal (Eastern Standard Time)', 'America/Montreal', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(68, '(GMT-5:00) America/Nassau (Eastern Standard Time)', 'America/Nassau', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(69, '(GMT-5:00) America/New_York (Eastern Standard Time)', 'America/New_York', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(70, '(GMT-5:00) America/Nipigon (Eastern Standard Time)', 'America/Nipigon', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(71, '(GMT-5:00) America/Panama (Eastern Standard Time)', 'America/Panama', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(72, '(GMT-5:00) America/Pangnirtung (Eastern Standard Time)', 'America/Pangnirtung', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(73, '(GMT-5:00) America/Port-au-Prince (Eastern Standard Time)', 'America/Port-au-Prince', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(74, '(GMT-5:00) America/Resolute (Eastern Standard Time)', 'America/Resolute', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(75, '(GMT-5:00) America/Thunder_Bay (Eastern Standard Time)', 'America/Thunder_Bay', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(76, '(GMT-5:00) America/Toronto (Eastern Standard Time)', 'America/Toronto', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(77, '(GMT-5:00) Canada/Eastern (Eastern Standard Time)', 'Canada/Eastern', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(78, '(GMT-4:-30) America/Caracas (Venezuela Time)', 'America/Caracas', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(79, '(GMT-4:00) America/Anguilla (Atlantic Standard Time)', 'America/Anguilla', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(80, '(GMT-4:00) America/Antigua (Atlantic Standard Time)', 'America/Antigua', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(81, '(GMT-4:00) America/Aruba (Atlantic Standard Time)', 'America/Aruba', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(82, '(GMT-4:00) America/Asuncion (Paraguay Time)', 'America/Asuncion', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(83, '(GMT-4:00) America/Barbados (Atlantic Standard Time)', 'America/Barbados', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(84, '(GMT-4:00) America/Blanc-Sablon (Atlantic Standard Time)', 'America/Blanc-Sablon', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(85, '(GMT-4:00) America/Boa_Vista (Amazon Time)', 'America/Boa_Vista', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(86, '(GMT-4:00) America/Campo_Grande (Amazon Time)', 'America/Campo_Grande', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(87, '(GMT-4:00) America/Cuiaba (Amazon Time)', 'America/Cuiaba', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(88, '(GMT-4:00) America/Curacao (Atlantic Standard Time)', 'America/Curacao', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(89, '(GMT-4:00) America/Dominica (Atlantic Standard Time)', 'America/Dominica', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(90, '(GMT-4:00) America/Eirunepe (Amazon Time)', 'America/Eirunepe', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(91, '(GMT-4:00) America/Glace_Bay (Atlantic Standard Time)', 'America/Glace_Bay', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(92, '(GMT-4:00) America/Goose_Bay (Atlantic Standard Time)', 'America/Goose_Bay', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(93, '(GMT-4:00) America/Grenada (Atlantic Standard Time)', 'America/Grenada', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(94, '(GMT-4:00) America/Guadeloupe (Atlantic Standard Time)', 'America/Guadeloupe', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(95, '(GMT-4:00) America/Guyana (Guyana Time)', 'America/Guyana', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(96, '(GMT-4:00) America/Halifax (Atlantic Standard Time)', 'America/Halifax', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(97, '(GMT-4:00) America/La_Paz (Bolivia Time)', 'America/La_Paz', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(98, '(GMT-4:00) America/Manaus (Amazon Time)', 'America/Manaus', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(99, '(GMT-4:00) America/Marigot (Atlantic Standard Time)', 'America/Marigot', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(100, '(GMT-4:00) America/Martinique (Atlantic Standard Time)', 'America/Martinique', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(101, '(GMT-4:00) America/Moncton (Atlantic Standard Time)', 'America/Moncton', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(102, '(GMT-4:00) America/Montserrat (Atlantic Standard Time)', 'America/Montserrat', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(103, '(GMT-4:00) America/Port_of_Spain (Atlantic Standard Time)', 'America/Port_of_Spain', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(104, '(GMT-4:00) America/Porto_Acre (Amazon Time)', 'America/Porto_Acre', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(105, '(GMT-4:00) America/Porto_Velho (Amazon Time)', 'America/Porto_Velho', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(106, '(GMT-4:00) America/Puerto_Rico (Atlantic Standard Time)', 'America/Puerto_Rico', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(107, '(GMT-4:00) America/Rio_Branco (Amazon Time)', 'America/Rio_Branco', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(108, '(GMT-4:00) America/Santiago (Chile Time)', 'America/Santiago', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(109, '(GMT-4:00) America/Santo_Domingo (Atlantic Standard Time)', 'America/Santo_Domingo', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(110, '(GMT-4:00) America/St_Barthelemy (Atlantic Standard Time)', 'America/St_Barthelemy', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(111, '(GMT-4:00) America/St_Kitts (Atlantic Standard Time)', 'America/St_Kitts', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(112, '(GMT-4:00) America/St_Lucia (Atlantic Standard Time)', 'America/St_Lucia', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(113, '(GMT-4:00) America/St_Thomas (Atlantic Standard Time)', 'America/St_Thomas', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(114, '(GMT-4:00) America/St_Vincent (Atlantic Standard Time)', 'America/St_Vincent', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(115, '(GMT-4:00) America/Thule (Atlantic Standard Time)', 'America/Thule', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(116, '(GMT-4:00) America/Tortola (Atlantic Standard Time)', 'America/Tortola', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(117, '(GMT-4:00) America/Virgin (Atlantic Standard Time)', 'America/Virgin', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(118, '(GMT-4:00) Antarctica/Palmer (Chile Time)', 'Antarctica/Palmer', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(119, '(GMT-4:00) Atlantic/Bermuda (Atlantic Standard Time)', 'Atlantic/Bermuda', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(120, '(GMT-4:00) Atlantic/Stanley (Falkland Is. Time)', 'Atlantic/Stanley', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(121, '(GMT-4:00) Brazil/Acre (Amazon Time)', 'Brazil/Acre', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(122, '(GMT-4:00) Brazil/West (Amazon Time)', 'Brazil/West', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(123, '(GMT-4:00) Canada/Atlantic (Atlantic Standard Time)', 'Canada/Atlantic', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(124, '(GMT-4:00) Chile/Continental (Chile Time)', 'Chile/Continental', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(125, '(GMT-3:-30) America/St_Johns (Newfoundland Standard Time)', 'America/St_Johns', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(126, '(GMT-3:-30) Canada/Newfoundland (Newfoundland Standard Time)', 'Canada/Newfoundland', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(127, '(GMT-3:00) America/Araguaina (Brasilia Time)', 'America/Araguaina', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(128, '(GMT-3:00) America/Bahia (Brasilia Time)', 'America/Bahia', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(129, '(GMT-3:00) America/Belem (Brasilia Time)', 'America/Belem', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(130, '(GMT-3:00) America/Buenos_Aires (Argentine Time)', 'America/Buenos_Aires', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(131, '(GMT-3:00) America/Catamarca (Argentine Time)', 'America/Catamarca', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(132, '(GMT-3:00) America/Cayenne (French Guiana Time)', 'America/Cayenne', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(133, '(GMT-3:00) America/Cordoba (Argentine Time)', 'America/Cordoba', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(134, '(GMT-3:00) America/Fortaleza (Brasilia Time)', 'America/Fortaleza', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(135, '(GMT-3:00) America/Godthab (Western Greenland Time)', 'America/Godthab', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(136, '(GMT-3:00) America/Jujuy (Argentine Time)', 'America/Jujuy', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(137, '(GMT-3:00) America/Maceio (Brasilia Time)', 'America/Maceio', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(138, '(GMT-3:00) America/Mendoza (Argentine Time)', 'America/Mendoza', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(139, '(GMT-3:00) America/Miquelon (Pierre & Miquelon Standard Time)', 'America/Miquelon', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(140, '(GMT-3:00) America/Montevideo (Uruguay Time)', 'America/Montevideo', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(141, '(GMT-3:00) America/Paramaribo (Suriname Time)', 'America/Paramaribo', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(142, '(GMT-3:00) America/Recife (Brasilia Time)', 'America/Recife', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(143, '(GMT-3:00) America/Rosario (Argentine Time)', 'America/Rosario', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(144, '(GMT-3:00) America/Santarem (Brasilia Time)', 'America/Santarem', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(145, '(GMT-3:00) America/Sao_Paulo (Brasilia Time)', 'America/Sao_Paulo', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(146, '(GMT-3:00) Antarctica/Rothera (Rothera Time)', 'Antarctica/Rothera', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(147, '(GMT-3:00) Brazil/East (Brasilia Time)', 'Brazil/East', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(148, '(GMT-2:00) America/Noronha (Fernando de Noronha Time)', 'America/Noronha', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(149, '(GMT-2:00) Atlantic/South_Georgia (South Georgia Standard Time)', 'Atlantic/South_Georgia', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(150, '(GMT-2:00) Brazil/DeNoronha (Fernando de Noronha Time)', 'Brazil/DeNoronha', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(151, '(GMT-1:00) America/Scoresbysund (Eastern Greenland Time)', 'America/Scoresbysund', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(152, '(GMT-1:00) Atlantic/Azores (Azores Time)', 'Atlantic/Azores', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(153, '(GMT-1:00) Atlantic/Cape_Verde (Cape Verde Time)', 'Atlantic/Cape_Verde', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(154, '(GMT+0:00) Africa/Abidjan (Greenwich Mean Time)', 'Africa/Abidjan', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(155, '(GMT+0:00) Africa/Accra (Ghana Mean Time)', 'Africa/Accra', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(156, '(GMT+0:00) Africa/Bamako (Greenwich Mean Time)', 'Africa/Bamako', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(157, '(GMT+0:00) Africa/Banjul (Greenwich Mean Time)', 'Africa/Banjul', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(158, '(GMT+0:00) Africa/Bissau (Greenwich Mean Time)', 'Africa/Bissau', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(159, '(GMT+0:00) Africa/Casablanca (Western European Time)', 'Africa/Casablanca', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(160, '(GMT+0:00) Africa/Conakry (Greenwich Mean Time)', 'Africa/Conakry', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(161, '(GMT+0:00) Africa/Dakar (Greenwich Mean Time)', 'Africa/Dakar', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(162, '(GMT+0:00) Africa/El_Aaiun (Western European Time)', 'Africa/El_Aaiun', '2023-08-19 06:34:22', '2023-08-19 06:34:22'),
(163, '(GMT+0:00) Africa/Freetown (Greenwich Mean Time)', 'Africa/Freetown', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(164, '(GMT+0:00) Africa/Lome (Greenwich Mean Time)', 'Africa/Lome', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(165, '(GMT+0:00) Africa/Monrovia (Greenwich Mean Time)', 'Africa/Monrovia', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(166, '(GMT+0:00) Africa/Nouakchott (Greenwich Mean Time)', 'Africa/Nouakchott', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(167, '(GMT+0:00) Africa/Ouagadougou (Greenwich Mean Time)', 'Africa/Ouagadougou', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(168, '(GMT+0:00) Africa/Sao_Tome (Greenwich Mean Time)', 'Africa/Sao_Tome', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(169, '(GMT+0:00) Africa/Timbuktu (Greenwich Mean Time)', 'Africa/Timbuktu', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(170, '(GMT+0:00) America/Danmarkshavn (Greenwich Mean Time)', 'America/Danmarkshavn', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(171, '(GMT+0:00) Atlantic/Canary (Western European Time)', 'Atlantic/Canary', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(172, '(GMT+0:00) Atlantic/Faeroe (Western European Time)', 'Atlantic/Faeroe', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(173, '(GMT+0:00) Atlantic/Faroe (Western European Time)', 'Atlantic/Faroe', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(174, '(GMT+0:00) Atlantic/Madeira (Western European Time)', 'Atlantic/Madeira', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(175, '(GMT+0:00) Atlantic/Reykjavik (Greenwich Mean Time)', 'Atlantic/Reykjavik', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(176, '(GMT+0:00) Atlantic/St_Helena (Greenwich Mean Time)', 'Atlantic/St_Helena', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(177, '(GMT+0:00) Europe/Belfast (Greenwich Mean Time)', 'Europe/Belfast', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(178, '(GMT+0:00) Europe/Dublin (Greenwich Mean Time)', 'Europe/Dublin', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(179, '(GMT+0:00) Europe/Guernsey (Greenwich Mean Time)', 'Europe/Guernsey', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(180, '(GMT+0:00) Europe/Isle_of_Man (Greenwich Mean Time)', 'Europe/Isle_of_Man', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(181, '(GMT+0:00) Europe/Jersey (Greenwich Mean Time)', 'Europe/Jersey', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(182, '(GMT+0:00) Europe/Lisbon (Western European Time)', 'Europe/Lisbon', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(183, '(GMT+0:00) Europe/London (Greenwich Mean Time)', 'Europe/London', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(184, '(GMT+1:00) Africa/Algiers (Central European Time)', 'Africa/Algiers', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(185, '(GMT+1:00) Africa/Bangui (Western African Time)', 'Africa/Bangui', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(186, '(GMT+1:00) Africa/Brazzaville (Western African Time)', 'Africa/Brazzaville', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(187, '(GMT+1:00) Africa/Ceuta (Central European Time)', 'Africa/Ceuta', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(188, '(GMT+1:00) Africa/Douala (Western African Time)', 'Africa/Douala', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(189, '(GMT+1:00) Africa/Kinshasa (Western African Time)', 'Africa/Kinshasa', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(190, '(GMT+1:00) Africa/Lagos (Western African Time)', 'Africa/Lagos', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(191, '(GMT+1:00) Africa/Libreville (Western African Time)', 'Africa/Libreville', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(192, '(GMT+1:00) Africa/Luanda (Western African Time)', 'Africa/Luanda', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(193, '(GMT+1:00) Africa/Malabo (Western African Time)', 'Africa/Malabo', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(194, '(GMT+1:00) Africa/Ndjamena (Western African Time)', 'Africa/Ndjamena', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(195, '(GMT+1:00) Africa/Niamey (Western African Time)', 'Africa/Niamey', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(196, '(GMT+1:00) Africa/Porto-Novo (Western African Time)', 'Africa/Porto-Novo', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(197, '(GMT+1:00) Africa/Tunis (Central European Time)', 'Africa/Tunis', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(198, '(GMT+1:00) Africa/Windhoek (Western African Time)', 'Africa/Windhoek', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(199, '(GMT+1:00) Arctic/Longyearbyen (Central European Time)', 'Arctic/Longyearbyen', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(200, '(GMT+1:00) Atlantic/Jan_Mayen (Central European Time)', 'Atlantic/Jan_Mayen', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(201, '(GMT+1:00) Europe/Amsterdam (Central European Time)', 'Europe/Amsterdam', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(202, '(GMT+1:00) Europe/Andorra (Central European Time)', 'Europe/Andorra', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(203, '(GMT+1:00) Europe/Belgrade (Central European Time)', 'Europe/Belgrade', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(204, '(GMT+1:00) Europe/Berlin (Central European Time)', 'Europe/Berlin', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(205, '(GMT+1:00) Europe/Bratislava (Central European Time)', 'Europe/Bratislava', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(206, '(GMT+1:00) Europe/Brussels (Central European Time)', 'Europe/Brussels', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(207, '(GMT+1:00) Europe/Budapest (Central European Time)', 'Europe/Budapest', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(208, '(GMT+1:00) Europe/Copenhagen (Central European Time)', 'Europe/Copenhagen', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(209, '(GMT+1:00) Europe/Gibraltar (Central European Time)', 'Europe/Gibraltar', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(210, '(GMT+1:00) Europe/Ljubljana (Central European Time)', 'Europe/Ljubljana', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(211, '(GMT+1:00) Europe/Luxembourg (Central European Time)', 'Europe/Luxembourg', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(212, '(GMT+1:00) Europe/Madrid (Central European Time)', 'Europe/Madrid', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(213, '(GMT+1:00) Europe/Malta (Central European Time)', 'Europe/Malta', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(214, '(GMT+1:00) Europe/Monaco (Central European Time)', 'Europe/Monaco', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(215, '(GMT+1:00) Europe/Oslo (Central European Time)', 'Europe/Oslo', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(216, '(GMT+1:00) Europe/Paris (Central European Time)', 'Europe/Paris', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(217, '(GMT+1:00) Europe/Podgorica (Central European Time)', 'Europe/Podgorica', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(218, '(GMT+1:00) Europe/Prague (Central European Time)', 'Europe/Prague', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(219, '(GMT+1:00) Europe/Rome (Central European Time)', 'Europe/Rome', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(220, '(GMT+1:00) Europe/San_Marino (Central European Time)', 'Europe/San_Marino', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(221, '(GMT+1:00) Europe/Sarajevo (Central European Time)', 'Europe/Sarajevo', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(222, '(GMT+1:00) Europe/Skopje (Central European Time)', 'Europe/Skopje', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(223, '(GMT+1:00) Europe/Stockholm (Central European Time)', 'Europe/Stockholm', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(224, '(GMT+1:00) Europe/Tirane (Central European Time)', 'Europe/Tirane', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(225, '(GMT+1:00) Europe/Vaduz (Central European Time)', 'Europe/Vaduz', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(226, '(GMT+1:00) Europe/Vatican (Central European Time)', 'Europe/Vatican', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(227, '(GMT+1:00) Europe/Vienna (Central European Time)', 'Europe/Vienna', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(228, '(GMT+1:00) Europe/Warsaw (Central European Time)', 'Europe/Warsaw', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(229, '(GMT+1:00) Europe/Zagreb (Central European Time)', 'Europe/Zagreb', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(230, '(GMT+1:00) Europe/Zurich (Central European Time)', 'Europe/Zurich', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(231, '(GMT+2:00) Africa/Blantyre (Central African Time)', 'Africa/Blantyre', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(232, '(GMT+2:00) Africa/Bujumbura (Central African Time)', 'Africa/Bujumbura', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(233, '(GMT+2:00) Africa/Cairo (Eastern European Time)', 'Africa/Cairo', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(234, '(GMT+2:00) Africa/Gaborone (Central African Time)', 'Africa/Gaborone', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(235, '(GMT+2:00) Africa/Harare (Central African Time)', 'Africa/Harare', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(236, '(GMT+2:00) Africa/Johannesburg (South Africa Standard Time)', 'Africa/Johannesburg', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(237, '(GMT+2:00) Africa/Kigali (Central African Time)', 'Africa/Kigali', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(238, '(GMT+2:00) Africa/Lubumbashi (Central African Time)', 'Africa/Lubumbashi', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(239, '(GMT+2:00) Africa/Lusaka (Central African Time)', 'Africa/Lusaka', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(240, '(GMT+2:00) Africa/Maputo (Central African Time)', 'Africa/Maputo', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(241, '(GMT+2:00) Africa/Maseru (South Africa Standard Time)', 'Africa/Maseru', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(242, '(GMT+2:00) Africa/Mbabane (South Africa Standard Time)', 'Africa/Mbabane', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(243, '(GMT+2:00) Africa/Tripoli (Eastern European Time)', 'Africa/Tripoli', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(244, '(GMT+2:00) Asia/Amman (Eastern European Time)', 'Asia/Amman', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(245, '(GMT+2:00) Asia/Beirut (Eastern European Time)', 'Asia/Beirut', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(246, '(GMT+2:00) Asia/Damascus (Eastern European Time)', 'Asia/Damascus', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(247, '(GMT+2:00) Asia/Gaza (Eastern European Time)', 'Asia/Gaza', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(248, '(GMT+2:00) Asia/Istanbul (Eastern European Time)', 'Asia/Istanbul', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(249, '(GMT+2:00) Asia/Jerusalem (Israel Standard Time)', 'Asia/Jerusalem', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(250, '(GMT+2:00) Asia/Nicosia (Eastern European Time)', 'Asia/Nicosia', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(251, '(GMT+2:00) Asia/Tel_Aviv (Israel Standard Time)', 'Asia/Tel_Aviv', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(252, '(GMT+2:00) Europe/Athens (Eastern European Time)', 'Europe/Athens', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(253, '(GMT+2:00) Europe/Bucharest (Eastern European Time)', 'Europe/Bucharest', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(254, '(GMT+2:00) Europe/Chisinau (Eastern European Time)', 'Europe/Chisinau', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(255, '(GMT+2:00) Europe/Helsinki (Eastern European Time)', 'Europe/Helsinki', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(256, '(GMT+2:00) Europe/Istanbul (Eastern European Time)', 'Europe/Istanbul', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(257, '(GMT+2:00) Europe/Kaliningrad (Eastern European Time)', 'Europe/Kaliningrad', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(258, '(GMT+2:00) Europe/Kiev (Eastern European Time)', 'Europe/Kiev', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(259, '(GMT+2:00) Europe/Mariehamn (Eastern European Time)', 'Europe/Mariehamn', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(260, '(GMT+2:00) Europe/Minsk (Eastern European Time)', 'Europe/Minsk', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(261, '(GMT+2:00) Europe/Nicosia (Eastern European Time)', 'Europe/Nicosia', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(262, '(GMT+2:00) Europe/Riga (Eastern European Time)', 'Europe/Riga', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(263, '(GMT+2:00) Europe/Simferopol (Eastern European Time)', 'Europe/Simferopol', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(264, '(GMT+2:00) Europe/Sofia (Eastern European Time)', 'Europe/Sofia', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(265, '(GMT+2:00) Europe/Tallinn (Eastern European Time)', 'Europe/Tallinn', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(266, '(GMT+2:00) Europe/Tiraspol (Eastern European Time)', 'Europe/Tiraspol', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(267, '(GMT+2:00) Europe/Uzhgorod (Eastern European Time)', 'Europe/Uzhgorod', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(268, '(GMT+2:00) Europe/Vilnius (Eastern European Time)', 'Europe/Vilnius', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(269, '(GMT+2:00) Europe/Zaporozhye (Eastern European Time)', 'Europe/Zaporozhye', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(270, '(GMT+3:00) Africa/Addis_Ababa (Eastern African Time)', 'Africa/Addis_Ababa', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(271, '(GMT+3:00) Africa/Asmara (Eastern African Time)', 'Africa/Asmara', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(272, '(GMT+3:00) Africa/Asmera (Eastern African Time)', 'Africa/Asmera', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(273, '(GMT+3:00) Africa/Dar_es_Salaam (Eastern African Time)', 'Africa/Dar_es_Salaam', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(274, '(GMT+3:00) Africa/Djibouti (Eastern African Time)', 'Africa/Djibouti', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(275, '(GMT+3:00) Africa/Kampala (Eastern African Time)', 'Africa/Kampala', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(276, '(GMT+3:00) Africa/Khartoum (Eastern African Time)', 'Africa/Khartoum', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(277, '(GMT+3:00) Africa/Mogadishu (Eastern African Time)', 'Africa/Mogadishu', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(278, '(GMT+3:00) Africa/Nairobi (Eastern African Time)', 'Africa/Nairobi', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(279, '(GMT+3:00) Antarctica/Syowa (Syowa Time)', 'Antarctica/Syowa', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(280, '(GMT+3:00) Asia/Aden (Arabia Standard Time)', 'Asia/Aden', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(281, '(GMT+3:00) Asia/Baghdad (Arabia Standard Time)', 'Asia/Baghdad', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(282, '(GMT+3:00) Asia/Bahrain (Arabia Standard Time)', 'Asia/Bahrain', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(283, '(GMT+3:00) Asia/Kuwait (Arabia Standard Time)', 'Asia/Kuwait', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(284, '(GMT+3:00) Asia/Qatar (Arabia Standard Time)', 'Asia/Qatar', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(285, '(GMT+3:00) Europe/Moscow (Moscow Standard Time)', 'Europe/Moscow', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(286, '(GMT+3:00) Europe/Volgograd (Volgograd Time)', 'Europe/Volgograd', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(287, '(GMT+3:00) Indian/Antananarivo (Eastern African Time)', 'Indian/Antananarivo', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(288, '(GMT+3:00) Indian/Comoro (Eastern African Time)', 'Indian/Comoro', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(289, '(GMT+3:00) Indian/Mayotte (Eastern African Time)', 'Indian/Mayotte', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(290, '(GMT+3:30) Asia/Tehran (Iran Standard Time)', 'Asia/Tehran', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(291, '(GMT+4:00) Asia/Baku (Azerbaijan Time)', 'Asia/Baku', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(292, '(GMT+4:00) Asia/Dubai (Gulf Standard Time)', 'Asia/Dubai', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(293, '(GMT+4:00) Asia/Muscat (Gulf Standard Time)', 'Asia/Muscat', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(294, '(GMT+4:00) Asia/Tbilisi (Georgia Time)', 'Asia/Tbilisi', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(295, '(GMT+4:00) Asia/Yerevan (Armenia Time)', 'Asia/Yerevan', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(296, '(GMT+4:00) Europe/Samara (Samara Time)', 'Europe/Samara', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(297, '(GMT+4:00) Indian/Mahe (Seychelles Time)', 'Indian/Mahe', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(298, '(GMT+4:00) Indian/Mauritius (Mauritius Time)', 'Indian/Mauritius', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(299, '(GMT+4:00) Indian/Reunion (Reunion Time)', 'Indian/Reunion', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(300, '(GMT+4:30) Asia/Kabul (Afghanistan Time)', 'Asia/Kabul', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(301, '(GMT+5:00) Asia/Aqtau (Aqtau Time)', 'Asia/Aqtau', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(302, '(GMT+5:00) Asia/Aqtobe (Aqtobe Time)', 'Asia/Aqtobe', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(303, '(GMT+5:00) Asia/Ashgabat (Turkmenistan Time)', 'Asia/Ashgabat', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(304, '(GMT+5:00) Asia/Ashkhabad (Turkmenistan Time)', 'Asia/Ashkhabad', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(305, '(GMT+5:00) Asia/Dushanbe (Tajikistan Time)', 'Asia/Dushanbe', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(306, '(GMT+5:00) Asia/Karachi (Pakistan Time)', 'Asia/Karachi', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(307, '(GMT+5:00) Asia/Oral (Oral Time)', 'Asia/Oral', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(308, '(GMT+5:00) Asia/Samarkand (Uzbekistan Time)', 'Asia/Samarkand', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(309, '(GMT+5:00) Asia/Tashkent (Uzbekistan Time)', 'Asia/Tashkent', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(310, '(GMT+5:00) Asia/Yekaterinburg (Yekaterinburg Time)', 'Asia/Yekaterinburg', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(311, '(GMT+5:00) Indian/Kerguelen (French Southern & Antarctic Lands Time)', 'Indian/Kerguelen', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(312, '(GMT+5:00) Indian/Maldives (Maldives Time)', 'Indian/Maldives', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(313, '(GMT+5:30) Asia/Calcutta (India Standard Time)', 'Asia/Calcutta', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(314, '(GMT+5:30) Asia/Colombo (India Standard Time)', 'Asia/Colombo', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(315, '(GMT+5:30) Asia/Kolkata (India Standard Time)', 'Asia/Kolkata', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(316, '(GMT+5:45) Asia/Katmandu (Nepal Time)', 'Asia/Katmandu', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(317, '(GMT+6:00) Antarctica/Mawson (Mawson Time)', 'Antarctica/Mawson', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(318, '(GMT+6:00) Antarctica/Vostok (Vostok Time)', 'Antarctica/Vostok', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(319, '(GMT+6:00) Asia/Almaty (Alma-Ata Time)', 'Asia/Almaty', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(320, '(GMT+6:00) Asia/Bishkek (Kirgizstan Time)', 'Asia/Bishkek', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(321, '(GMT+6:00) Asia/Dacca (Bangladesh Time)', 'Asia/Dacca', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(322, '(GMT+6:00) Asia/Dhaka (Bangladesh Time)', 'Asia/Dhaka', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(323, '(GMT+6:00) Asia/Novosibirsk (Novosibirsk Time)', 'Asia/Novosibirsk', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(324, '(GMT+6:00) Asia/Omsk (Omsk Time)', 'Asia/Omsk', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(325, '(GMT+6:00) Asia/Qyzylorda (Qyzylorda Time)', 'Asia/Qyzylorda', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(326, '(GMT+6:00) Asia/Thimbu (Bhutan Time)', 'Asia/Thimbu', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(327, '(GMT+6:00) Asia/Thimphu (Bhutan Time)', 'Asia/Thimphu', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(328, '(GMT+6:00) Indian/Chagos (Indian Ocean Territory Time)', 'Indian/Chagos', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(329, '(GMT+6:30) Asia/Rangoon (Myanmar Time)', 'Asia/Rangoon', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(330, '(GMT+6:30) Indian/Cocos (Cocos Islands Time)', 'Indian/Cocos', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(331, '(GMT+7:00) Antarctica/Davis (Davis Time)', 'Antarctica/Davis', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(332, '(GMT+7:00) Asia/Bangkok (Indochina Time)', 'Asia/Bangkok', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(333, '(GMT+7:00) Asia/Ho_Chi_Minh (Indochina Time)', 'Asia/Ho_Chi_Minh', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(334, '(GMT+7:00) Asia/Hovd (Hovd Time)', 'Asia/Hovd', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(335, '(GMT+7:00) Asia/Jakarta (West Indonesia Time)', 'Asia/Jakarta', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(336, '(GMT+7:00) Asia/Krasnoyarsk (Krasnoyarsk Time)', 'Asia/Krasnoyarsk', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(337, '(GMT+7:00) Asia/Phnom_Penh (Indochina Time)', 'Asia/Phnom_Penh', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(338, '(GMT+7:00) Asia/Pontianak (West Indonesia Time)', 'Asia/Pontianak', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(339, '(GMT+7:00) Asia/Saigon (Indochina Time)', 'Asia/Saigon', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(340, '(GMT+7:00) Asia/Vientiane (Indochina Time)', 'Asia/Vientiane', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(341, '(GMT+7:00) Indian/Christmas (Christmas Island Time)', 'Indian/Christmas', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(342, '(GMT+8:00) Antarctica/Casey (Western Standard Time (Australia))', 'Antarctica/Casey', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(343, '(GMT+8:00) Asia/Brunei (Brunei Time)', 'Asia/Brunei', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(344, '(GMT+8:00) Asia/Choibalsan (Choibalsan Time)', 'Asia/Choibalsan', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(345, '(GMT+8:00) Asia/Chongqing (China Standard Time)', 'Asia/Chongqing', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(346, '(GMT+8:00) Asia/Chungking (China Standard Time)', 'Asia/Chungking', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(347, '(GMT+8:00) Asia/Harbin (China Standard Time)', 'Asia/Harbin', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(348, '(GMT+8:00) Asia/Hong_Kong (Hong Kong Time)', 'Asia/Hong_Kong', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(349, '(GMT+8:00) Asia/Irkutsk (Irkutsk Time)', 'Asia/Irkutsk', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(350, '(GMT+8:00) Asia/Kashgar (China Standard Time)', 'Asia/Kashgar', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(351, '(GMT+8:00) Asia/Kuala_Lumpur (Malaysia Time)', 'Asia/Kuala_Lumpur', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(352, '(GMT+8:00) Asia/Kuching (Malaysia Time)', 'Asia/Kuching', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(353, '(GMT+8:00) Asia/Macao (China Standard Time)', 'Asia/Macao', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(354, '(GMT+8:00) Asia/Macau (China Standard Time)', 'Asia/Macau', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(355, '(GMT+8:00) Asia/Makassar (Central Indonesia Time)', 'Asia/Makassar', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(356, '(GMT+8:00) Asia/Manila (Philippines Time)', 'Asia/Manila', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(357, '(GMT+8:00) Asia/Shanghai (China Standard Time)', 'Asia/Shanghai', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(358, '(GMT+8:00) Asia/Singapore (Singapore Time)', 'Asia/Singapore', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(359, '(GMT+8:00) Asia/Taipei (China Standard Time)', 'Asia/Taipei', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(360, '(GMT+8:00) Asia/Ujung_Pandang (Central Indonesia Time)', 'Asia/Ujung_Pandang', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(361, '(GMT+8:00) Asia/Ulaanbaatar (Ulaanbaatar Time)', 'Asia/Ulaanbaatar', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(362, '(GMT+8:00) Asia/Ulan_Bator (Ulaanbaatar Time)', 'Asia/Ulan_Bator', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(363, '(GMT+8:00) Asia/Urumqi (China Standard Time)', 'Asia/Urumqi', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(364, '(GMT+8:00) Australia/Perth (Western Standard Time (Australia))', 'Australia/Perth', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(365, '(GMT+8:00) Australia/West (Western Standard Time (Australia))', 'Australia/West', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(366, '(GMT+8:45) Australia/Eucla (Central Western Standard Time (Australia))', 'Australia/Eucla', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(367, '(GMT+9:00) Asia/Dili (Timor-Leste Time)', 'Asia/Dili', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(368, '(GMT+9:00) Asia/Jayapura (East Indonesia Time)', 'Asia/Jayapura', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(369, '(GMT+9:00) Asia/Pyongyang (Korea Standard Time)', 'Asia/Pyongyang', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(370, '(GMT+9:00) Asia/Seoul (Korea Standard Time)', 'Asia/Seoul', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(371, '(GMT+9:00) Asia/Tokyo (Japan Standard Time)', 'Asia/Tokyo', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(372, '(GMT+9:00) Asia/Yakutsk (Yakutsk Time)', 'Asia/Yakutsk', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(373, '(GMT+9:30) Australia/Adelaide (Central Standard Time (South Australia))', 'Australia/Adelaide', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(374, '(GMT+9:30) Australia/Broken_Hill (Central Standard Time (South Australia/New South Wales))', 'Australia/Broken_Hill', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(375, '(GMT+9:30) Australia/Darwin (Central Standard Time (Northern Territory))', 'Australia/Darwin', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(376, '(GMT+9:30) Australia/North (Central Standard Time (Northern Territory))', 'Australia/North', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(377, '(GMT+9:30) Australia/South (Central Standard Time (South Australia))', 'Australia/South', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(378, '(GMT+9:30) Australia/Yancowinna (Central Standard Time (South Australia/New South Wales))', 'Australia/Yancowinna', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(379, '(GMT+10:00) Antarctica/DumontDUrville (Dumont-d\'Urville Time)', 'Antarctica/DumontDUrville', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(380, '(GMT+10:00) Asia/Sakhalin (Sakhalin Time)', 'Asia/Sakhalin', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(381, '(GMT+10:00) Asia/Vladivostok (Vladivostok Time)', 'Asia/Vladivostok', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(382, '(GMT+10:00) Australia/ACT (Eastern Standard Time (New South Wales))', 'Australia/ACT', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(383, '(GMT+10:00) Australia/Brisbane (Eastern Standard Time (Queensland))', 'Australia/Brisbane', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(384, '(GMT+10:00) Australia/Canberra (Eastern Standard Time (New South Wales))', 'Australia/Canberra', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(385, '(GMT+10:00) Australia/Currie (Eastern Standard Time (New South Wales))', 'Australia/Currie', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(386, '(GMT+10:00) Australia/Hobart (Eastern Standard Time (Tasmania))', 'Australia/Hobart', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(387, '(GMT+10:00) Australia/Lindeman (Eastern Standard Time (Queensland))', 'Australia/Lindeman', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(388, '(GMT+10:00) Australia/Melbourne (Eastern Standard Time (Victoria))', 'Australia/Melbourne', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(389, '(GMT+10:00) Australia/NSW (Eastern Standard Time (New South Wales))', 'Australia/NSW', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(390, '(GMT+10:00) Australia/Queensland (Eastern Standard Time (Queensland))', 'Australia/Queensland', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(391, '(GMT+10:00) Australia/Sydney (Eastern Standard Time (New South Wales))', 'Australia/Sydney', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(392, '(GMT+10:00) Australia/Tasmania (Eastern Standard Time (Tasmania))', 'Australia/Tasmania', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(393, '(GMT+10:00) Australia/Victoria (Eastern Standard Time (Victoria))', 'Australia/Victoria', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(394, '(GMT+10:30) Australia/LHI (Lord Howe Standard Time)', 'Australia/LHI', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(395, '(GMT+10:30) Australia/Lord_Howe (Lord Howe Standard Time)', 'Australia/Lord_Howe', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(396, '(GMT+11:00) Asia/Magadan (Magadan Time)', 'Asia/Magadan', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(397, '(GMT+12:00) Antarctica/McMurdo (New Zealand Standard Time)', 'Antarctica/McMurdo', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(398, '(GMT+12:00) Antarctica/South_Pole (New Zealand Standard Time)', 'Antarctica/South_Pole', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(399, '(GMT+12:00) Asia/Anadyr (Anadyr Time)', 'Asia/Anadyr', '2023-08-19 06:34:23', '2023-08-19 06:34:23'),
(400, '(GMT+12:00) Asia/Kamchatka (Petropavlovsk-Kamchatski Time)', 'Asia/Kamchatka', '2023-08-19 06:34:23', '2023-08-19 06:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_branch_id` int(11) DEFAULT NULL,
  `to_branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_products`
--

CREATE TABLE `transfer_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` double(8,2) DEFAULT NULL,
  `from_branch_id` int(11) DEFAULT NULL,
  `to_branch_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_activity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `token`, `created_at`, `updated_at`, `signature`, `theme`, `avatar`, `deleted_at`, `last_activity`) VALUES
(1, 'Super Admin', 'admin@360lims.com', NULL, '$2y$10$jAd0HxlZNHawrDWQkl/3FeIpKrIL6m9bWW1M8jTvDNV1JkbVqkjdy', NULL, '0jVz08iZ5pfEusPQO3ElNAubPfx2b9OT', '2023-08-19 06:34:23', '2023-10-19 18:43:29', NULL, 'light', NULL, NULL, '2023-10-20 01:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_branches`
--

CREATE TABLE `user_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_branches`
--

INSERT INTO `user_branches` (`id`, `user_id`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-08-19 06:34:23', '2023-08-19 06:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-08-19 06:34:23', '2023-08-19 06:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `lat` double(8,2) DEFAULT NULL,
  `lng` double(8,2) DEFAULT NULL,
  `zoom_level` int(11) DEFAULT NULL,
  `visit_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `visit_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit_tests`
--

CREATE TABLE `visit_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visit_id` int(11) DEFAULT NULL,
  `testable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustment_products`
--
ALTER TABLE `adjustment_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antibiotics`
--
ALTER TABLE `antibiotics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_products`
--
ALTER TABLE `branch_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_prices`
--
ALTER TABLE `contract_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_prices_priceable_type_priceable_id_index` (`priceable_type`,`priceable_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cultures`
--
ALTER TABLE `cultures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culture_comments`
--
ALTER TABLE `culture_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culture_options`
--
ALTER TABLE `culture_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culture_prices`
--
ALTER TABLE `culture_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_cultures`
--
ALTER TABLE `group_cultures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_culture_options`
--
ALTER TABLE `group_culture_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_culture_results`
--
ALTER TABLE `group_culture_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_packages`
--
ALTER TABLE `group_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_payments`
--
ALTER TABLE `group_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_tests`
--
ALTER TABLE `group_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_test_results`
--
ALTER TABLE `group_test_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_prices`
--
ALTER TABLE `package_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_tests`
--
ALTER TABLE `package_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_tests_testable_type_testable_id_index` (`testable_type`,`testable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_consumptions`
--
ALTER TABLE `product_consumptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_consumptions_testable_type_testable_id_index` (`testable_type`,`testable_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_products`
--
ALTER TABLE `purchase_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruangan_m`
--
ALTER TABLE `ruangan_m`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_comments`
--
ALTER TABLE `test_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_consumptions`
--
ALTER TABLE `test_consumptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_consumptions_testable_type_testable_id_index` (`testable_type`,`testable_id`);

--
-- Indexes for table `test_data`
--
ALTER TABLE `test_data`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TEST_DATA_DEVICE_ID1_IDX` (`DEVICE_ID1`),
  ADD KEY `TEST_DATA_TIMESTAMP_IDX` (`TIMESTAMP`);

--
-- Indexes for table `test_options`
--
ALTER TABLE `test_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_prices`
--
ALTER TABLE `test_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_reference_ranges`
--
ALTER TABLE `test_reference_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_products`
--
ALTER TABLE `transfer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_branches`
--
ALTER TABLE `user_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit_tests`
--
ALTER TABLE `visit_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_tests_testable_type_testable_id_index` (`testable_type`,`testable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adjustment_products`
--
ALTER TABLE `adjustment_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `antibiotics`
--
ALTER TABLE `antibiotics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branch_products`
--
ALTER TABLE `branch_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_prices`
--
ALTER TABLE `contract_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `cultures`
--
ALTER TABLE `cultures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `culture_comments`
--
ALTER TABLE `culture_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `culture_options`
--
ALTER TABLE `culture_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `culture_prices`
--
ALTER TABLE `culture_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `group_cultures`
--
ALTER TABLE `group_cultures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `group_culture_options`
--
ALTER TABLE `group_culture_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `group_culture_results`
--
ALTER TABLE `group_culture_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_packages`
--
ALTER TABLE `group_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_payments`
--
ALTER TABLE `group_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_tests`
--
ALTER TABLE `group_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `group_test_results`
--
ALTER TABLE `group_test_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=650;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_prices`
--
ALTER TABLE `package_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_tests`
--
ALTER TABLE `package_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_consumptions`
--
ALTER TABLE `product_consumptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_products`
--
ALTER TABLE `purchase_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `ruangan_m`
--
ALTER TABLE `ruangan_m`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `test_comments`
--
ALTER TABLE `test_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_consumptions`
--
ALTER TABLE `test_consumptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_data`
--
ALTER TABLE `test_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT for table `test_options`
--
ALTER TABLE `test_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_prices`
--
ALTER TABLE `test_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test_reference_ranges`
--
ALTER TABLE `test_reference_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_products`
--
ALTER TABLE `transfer_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_branches`
--
ALTER TABLE `user_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visit_tests`
--
ALTER TABLE `visit_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
