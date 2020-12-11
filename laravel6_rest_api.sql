-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 08:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel6_rest_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_details`
--

CREATE TABLE `chat_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `chat_from` int(10) UNSIGNED NOT NULL,
  `chat_to` int(10) UNSIGNED NOT NULL,
  `chat_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_files` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_details`
--

INSERT INTO `chat_details` (`id`, `group_id`, `chat_from`, `chat_to`, `chat_text`, `chat_files`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 26, 25, 'hi, hello', 'hi', 26, '2020-07-08 12:38:12', NULL, '2020-07-08 12:38:12'),
(2, 1, 26, 25, 'hi, hello', 'hi', 26, '2020-07-08 13:19:26', NULL, '2020-07-08 13:19:26'),
(3, 1, 25, 26, 'hi, hello akshatha', 'hi', NULL, '2020-07-10 06:43:30', NULL, '2020-07-10 06:43:30'),
(4, 1, 25, 26, 'hi, hello akshatha', 'hi', 25, '2020-07-10 06:54:53', NULL, '2020-07-10 06:54:53'),
(5, 1, 25, 26, 'hi, hello akshatha', 'C:\\xampp\\tmp\\phpA778.tmp', NULL, '2020-07-10 07:17:04', NULL, '2020-07-10 07:17:04'),
(6, 1, 25, 26, 'hi, hello akshatha', '2020/07/101594370065.jpg', NULL, '2020-07-10 08:34:25', NULL, '2020-07-10 08:34:25'),
(7, 1, 25, 26, 'hi, hello akshatha', 'E:\\laravel6_rest_api\\public\\/uploads/', 25, '2020-07-10 08:36:55', NULL, '2020-07-10 08:36:55'),
(8, 1, 25, 26, 'hi, hello akshatha', '/uploads/2020/07/101594370359.jpg', 25, '2020-07-10 08:39:19', NULL, '2020-07-10 08:39:19'),
(9, 1, 25, 26, 'hi, hello akshatha', '/uploads/2020-07-101594370400.jpg', 25, '2020-07-10 08:40:00', NULL, '2020-07-10 08:40:00'),
(10, 1, 25, 26, 'hi, hello akshatha', '/uploads/2020-07-10-1594370455.jpg', 25, '2020-07-10 08:40:55', NULL, '2020-07-10 08:40:55'),
(11, 1, 25, 26, 'hi, hello akshatha', '/uploads/2020-07-13-1594629411.jpg', 25, '2020-07-13 08:36:51', NULL, '2020-07-13 08:36:51'),
(12, 1, 25, 26, 'hi, hello akshatha', '/uploads/2020-07-13-1594638209.jpg', 25, '2020-07-13 11:03:29', NULL, '2020-07-13 11:03:29'),
(13, 1, 25, 26, 'hi, hello akshatha', '/uploads/2020-07-14-1594720762.jpg', 25, '2020-07-14 09:59:22', NULL, '2020-07-14 09:59:22'),
(14, 1, 25, 26, 'hi, hello akshatha', '/uploads/2020-07-14-1594720849.jpg', 25, '2020-07-14 10:00:49', NULL, '2020-07-14 10:00:49'),
(15, 1, 25, 26, 'hi, hello akshatha', '/uploads/2020-07-14-1594720894.jpg', 25, '2020-07-14 10:01:34', NULL, '2020-07-14 10:01:34'),
(16, 1, 25, 26, 'hi, hello akshatha', '/uploads/2020-07-14-1594723729.jpg', 25, '2020-07-14 10:48:49', NULL, '2020-07-14 10:48:49'),
(17, 1, 26, 25, 'hi, hello', '/uploads/2020-07-15-1594797051.jpg', 26, '2020-07-15 07:10:51', NULL, '2020-07-15 07:10:51'),
(18, 1, 26, 25, 'hi, hello', '/uploads/2020-07-15-1594797254.jpg', 26, '2020-07-15 07:14:14', NULL, '2020-07-15 07:14:14'),
(19, 1, 26, 25, 'hi, hello', '/uploads/2020-07-15-1594798026.pdf', 26, '2020-07-15 07:27:06', NULL, '2020-07-15 07:27:06'),
(20, 1, 26, 25, 'hi, hello', '/uploads/2020-07-15-1594798067.docx', 26, '2020-07-15 07:27:47', NULL, '2020-07-15 07:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_details`
--

CREATE TABLE `group_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_details`
--

INSERT INTO `group_details` (`id`, `group_id`, `user_id`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 2, 25, 1, '2020-07-08 06:50:14', NULL, '2020-07-08 06:50:14'),
(3, 1, 26, 1, '2020-07-08 06:52:01', NULL, '2020-07-08 06:52:01'),
(4, 1, 25, 1, '2020-07-10 06:01:52', NULL, '2020-07-10 06:01:52'),
(5, 1, 37, 1, '2020-07-20 09:13:47', NULL, '2020-07-20 09:13:47'),
(8, 3, 26, 1, '2020-08-13 10:20:46', NULL, '2020-08-13 10:20:46'),
(9, 3, 26, 1, '2020-08-13 10:23:46', NULL, '2020-08-13 10:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `group_masters`
--

CREATE TABLE `group_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_masters`
--

INSERT INTO `group_masters` (`id`, `group_name`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'biology', NULL, '2020-07-08 06:15:36', 25, '2020-07-16 11:05:50'),
(2, 'computer science', NULL, '2020-07-08 06:16:41', 25, '2020-08-13 10:11:50'),
(3, 'physics', 1, '2020-07-08 06:23:05', NULL, '2020-07-08 06:23:05'),
(6, 'bio chemistry', 1, '2020-08-13 10:10:46', NULL, '2020-08-13 10:10:46');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_06_23_125929_create_group_master_table', 2),
(10, '2020_06_23_130352_create_group_details_table', 3),
(11, '2020_06_23_131528_create_chat_details_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('094e237a6d564f437f2ca442ddb56afe373acb69a4bf6ae21a49cd16ebc58b9f8a83948c893b8106', 26, 1, 'MyApp', '[]', 0, '2020-07-07 03:35:28', '2020-07-07 03:35:28', '2021-07-07 09:05:28'),
('1d50c00c13ce72ef2631efd78faf3d6090ecab2880cb107b83f08d6f808579461e8dfd2dbe9a86a3', 24, 1, 'MyApp', '[]', 0, '2020-06-26 07:40:53', '2020-06-26 07:40:53', '2021-06-26 13:10:53'),
('43bce4748f0f98e3b8c0cee3a7bfe2e84ddc8cb5006f49045dd51d420543813c547c1b5e4df3816d', 37, 1, 'MyApp', '[]', 0, '2020-07-15 01:42:53', '2020-07-15 01:42:53', '2021-07-15 07:12:53'),
('4d7f85420d6dcb5c9e5dce9d616e112c9b0c6720c1b1c3b0a458e9c9e482e92c85d8eeb370c74be0', 32, 1, 'MyApp', '[]', 0, '2020-07-14 05:05:46', '2020-07-14 05:05:46', '2021-07-14 10:35:46'),
('5b8a99ac96defecfd874e7f346f212fbc05894e9c0818789b510c537c3b960e1c5b48705759fc224', 37, 1, 'MyApp', '[]', 0, '2020-08-13 04:34:27', '2020-08-13 04:34:27', '2021-08-13 10:04:27'),
('5fe28efc385da72e2cb0e9940153fc0a2cb96350b16e829d4a906bae3dadc437634589d05c6f5235', 25, 1, 'MyApp', '[]', 0, '2020-07-07 02:53:55', '2020-07-07 02:53:55', '2021-07-07 08:23:55'),
('647f02461b0fd61927b732207f4610ad3a705b140db251dbb0ad957d65549ed9f8885b6a3f80480d', 35, 1, 'MyApp', '[]', 0, '2020-07-14 05:11:24', '2020-07-14 05:11:24', '2021-07-14 10:41:24'),
('765af00fc5f1dfbf36d36b8e2cf04b76d9fb11460ef5cf4471641620c879e7668a54232fec3d2a35', 37, 1, 'MyApp', '[]', 0, '2020-12-11 01:11:37', '2020-12-11 01:11:37', '2021-12-11 06:41:37'),
('76ca358189eb16cf112ce65378b636824bafa5f77aa5a3925c16324b30996b323ef7888886bf61a1', 37, 1, 'MyApp', '[]', 0, '2020-07-14 05:17:57', '2020-07-14 05:17:57', '2021-07-14 10:47:57'),
('7809234c402c47595202a04c2b1824a3a55a35b9e2fcdb881c0a0e938a38ebb0d40fe0394cdc5c81', 28, 1, 'MyApp', '[]', 0, '2020-07-08 07:47:47', '2020-07-08 07:47:47', '2021-07-08 13:17:47'),
('7cbdc5fd722474d7c4abc762f715246c7f520b38d6503712524beedbbc06572cd69315963a8b438c', 30, 1, 'MyApp', '[]', 0, '2020-07-14 05:04:27', '2020-07-14 05:04:27', '2021-07-14 10:34:27'),
('8df7ad8fe82381d3125bfc1842ab982e655d4218c7d318493d08f746724462aabc14352af75a7334', 37, 1, 'MyApp', '[]', 0, '2020-07-15 01:39:24', '2020-07-15 01:39:24', '2021-07-15 07:09:24'),
('9bd01c93b6b8bfb89984d31af44d44ccddd6ad4fede40f669b22554233c98d1b0ab0ca5f4539c956', 37, 1, 'MyApp', '[]', 0, '2020-07-28 23:23:14', '2020-07-28 23:23:14', '2021-07-29 04:53:14'),
('cc21e28e051dd12e6c18159cac2596e7694b976fb97b0aa0235d9bc034d41ac6aa226ff28478d35e', 36, 1, 'MyApp', '[]', 0, '2020-07-14 05:14:17', '2020-07-14 05:14:17', '2021-07-14 10:44:17'),
('d24052b87a7d53c4cb83c11420d53012ba17b598369cfa90e8f0b510444f38aaaf330a07202ff793', 25, 1, 'MyApp', '[]', 0, '2020-07-07 02:51:52', '2020-07-07 02:51:52', '2021-07-07 08:21:52'),
('d3050266557e8881631df51511afa0f4b4b32d1d6fd9574d060b2d59be154f1d89d1ba6cec3f6a25', 37, 1, 'MyApp', '[]', 0, '2020-07-15 01:38:19', '2020-07-15 01:38:19', '2021-07-15 07:08:19'),
('d31fafd2cc1b17bcd057faf21c01d97c90031b043fc54697aa70a8c8339f3fd0dfa2404374046b6b', 33, 1, 'MyApp', '[]', 0, '2020-07-14 05:08:16', '2020-07-14 05:08:16', '2021-07-14 10:38:16'),
('ee0ef66c3f360590c6ec4ef84be660cad560a973a002efedb2c47841d32d1fc7968051eac06fb486', 24, 1, 'MyApp', '[]', 0, '2020-06-26 07:23:47', '2020-06-26 07:23:47', '2021-06-26 12:53:47'),
('f2abfced279fb248a72300dd549ac9a12ea4a18665b1e2b9d1e9b33dba9b17ea08fdd3c468365ee3', 37, 1, 'MyApp', '[]', 0, '2020-07-28 23:04:23', '2020-07-28 23:04:23', '2021-07-29 04:34:23');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Ebe4ozi399BBEsopmlech6Ei7kEUqBa6p4QvkNHA', NULL, 'http://localhost', 1, 0, 0, '2020-06-26 06:58:18', '2020-06-26 06:58:18'),
(2, NULL, 'Laravel Password Grant Client', '8g5IOFCysqSINAgDnB6m0AgqtxerZvNn49plqjjr', 'users', 'http://localhost', 0, 1, 0, '2020-06-26 06:58:18', '2020-06-26 06:58:18');

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

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-26 06:58:18', '2020-06-26 06:58:18');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `last_login`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'asdf', 'Super Admin', 'asdfg@sd.hyg', '2020-08-14 06:37:12', NULL, '$2y$10$1ffzTL7xZlvOQHyRdldAPuwQwjYR3JAwk/7HUta6790B4Fb5ZTRiy', NULL, '2020-06-24 07:17:29', '2020-06-24 07:17:29'),
(24, 'asdf', 'Super Admin', 'asdfg@sd.hn90', '2020-08-14 06:37:34', NULL, '$2y$10$7haSCNXRJSsvEmnDqMl8OOuhR/LWa9iUICS.kUBzTuJjsaPDiUZEW', NULL, '2020-06-26 07:23:46', '2020-06-26 07:23:46'),
(25, 'akshatha', 'Admin', 'asdfg@sd.k', '2020-08-14 06:37:47', NULL, '$2y$10$kMtLxwycguBLimNY5Gjf4uPQ3q2NBYWEpsAOG9YEV.BuHAsA2BQkC', NULL, '2020-07-07 02:51:48', '2020-07-07 02:51:48'),
(26, 'akshatha', 'Admin', 'asdfg@sd.ko', '2020-08-14 06:37:59', NULL, '$2y$10$Xx2vtPg0rjuK89gl8g0cpeovz0Q5Qp4VUhEC3QsMDe34jAeJfcWIC', NULL, '2020-07-07 03:35:20', '2020-07-07 03:35:20'),
(28, 'pradeep', 'Teacher', 'asdfg@sd.koi', '2020-08-26 05:35:04', NULL, '$2y$10$zSLmM2lIhqBiNf/FbmEM9ObPRYyAEB.xiDL3rPIINWwyR.zsVHkNy', NULL, '2020-07-08 07:47:43', '2020-07-08 07:47:43'),
(29, 'arshri', 'Teacher', 'asdfg@sd.kop', '2020-08-14 06:38:22', NULL, '$2y$10$0UY3qxL5zFDiV7tY8oaC8eUAEGh3BwXDvIjvrmUUYSs4avVrHEZvG', NULL, '2020-07-14 02:51:56', '2020-07-14 02:51:56'),
(30, 'arshrishetty', 'Student', 'arshrishetty@gmail.com', '2020-08-14 06:38:31', NULL, '$2y$10$myxa2mhFfB5.X9BgpQe83ewwWgwksP72J5Qng6t.zG4mTD8hn9uJm', NULL, '2020-07-14 05:04:26', '2020-07-14 05:04:26'),
(32, 'arshrishetty', 'Student', 'arshrishetty@gmail.co', '2020-08-14 06:38:37', NULL, '$2y$10$tWvTf9Zg2aI2WEsaAqUw4eD0WS4bpVMIG0L2.9pA.qT7KqWOtXWf6', NULL, '2020-07-14 05:05:46', '2020-07-14 05:05:46'),
(33, 'arshrishetty', 'Student', 'arshrishetty@gmail.in', '2020-08-14 06:38:50', NULL, '$2y$10$uZPrIsUI9Cadxdcm13wKquY359D/f9vzSODj.Bqi9Nx3D5qELy.Ri', NULL, '2020-07-14 05:08:15', '2020-07-14 05:08:15'),
(35, 'arshrishetty', 'Report Admin', 'arshri@gmail.in', '2020-08-14 06:38:54', NULL, '$2y$10$Q0RVTlHIpL/wP5oEosUspeAZRH6Qa5ucu7j8DonVnkO95lGnkowsy', NULL, '2020-07-14 05:11:24', '2020-07-14 05:11:24'),
(36, 'arshrishetty', 'Report Admin', 'arshri@gmail.com', '2020-08-14 06:39:02', NULL, '$2y$10$Po8oq0.tfIlW0mHgBuNcn.CuZN4NKGlPfD7jQr1JiknfE4hZcMTni', NULL, '2020-07-14 05:14:17', '2020-07-14 05:14:17'),
(37, 'arshrishetty', 'Report Admin', 'arshri@gmail.co', '2020-08-14 06:39:06', NULL, '$2y$10$GTwNjN8ddmEuCted5fy7kuCvZ0UePfGrEpRJ.FPk.iysEK0bYIA5.', NULL, '2020-07-14 05:17:57', '2020-07-14 05:17:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_details`
--
ALTER TABLE `chat_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_details_group_id_foreign` (`group_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_details`
--
ALTER TABLE `group_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_details_group_id_foreign` (`group_id`),
  ADD KEY `group_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `group_masters`
--
ALTER TABLE `group_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `chat_details`
--
ALTER TABLE `chat_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_details`
--
ALTER TABLE `group_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `group_masters`
--
ALTER TABLE `group_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_details`
--
ALTER TABLE `chat_details`
  ADD CONSTRAINT `chat_details_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `group_masters` (`id`);

--
-- Constraints for table `group_details`
--
ALTER TABLE `group_details`
  ADD CONSTRAINT `group_details_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `group_masters` (`id`),
  ADD CONSTRAINT `group_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
