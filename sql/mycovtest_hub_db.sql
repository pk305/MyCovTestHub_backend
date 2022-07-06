-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 06, 2022 at 04:54 AM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mycovtest_hub_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_05_03_000001_create_customer_columns', 1),
(9, '2019_05_03_000002_create_subscriptions_table', 1),
(10, '2019_05_03_000003_create_subscription_items_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2021_06_05_004703_create_test_results_table', 2),
(13, '2021_06_05_005812_create_t_t_n_codes_table', 2),
(14, '2021_06_06_112504_add_avatar_to_users_table', 3),
(15, '2021_06_06_112605_add_is_admin_to_users_table', 3),
(16, '2021_06_06_112627_add_soft_deletes_to_users_table', 3),
(17, '2021_06_07_175919_create_roles_table', 4),
(18, '2021_06_07_180228_create_permissions_table', 5),
(20, '2021_06_07_192932_create_permission_role_table', 6),
(21, '2021_06_10_221441_create_role_user_table', 7),
(27, '2016_06_01_000001_create_oauth_auth_codes_table', 8),
(28, '2016_06_01_000002_create_oauth_access_tokens_table', 8),
(29, '2016_06_01_000003_create_oauth_refresh_tokens_table', 8),
(30, '2016_06_01_000004_create_oauth_clients_table', 8),
(31, '2016_06_01_000005_create_oauth_personal_access_clients_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('14c2056b43116cbabd74646e5764319da6b9b65f312b6124592fd1720b4cd26b090d6854df2b9fd7', 1, 2, NULL, '[]', 1, '2022-07-06 02:49:56', '2022-07-06 02:49:56', '2023-07-06 05:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'isz7tgkVdlXcnIsGNXI7NrbsUGVuAbj3vrfO7fpF', NULL, 'http://localhost', 1, 0, 0, '2022-07-06 02:46:12', '2022-07-06 02:46:12'),
(2, NULL, 'Laravel Password Grant Client', '9jzSAL3zUU9X0fvdvQmsrGDOT59Y7ujoYc5xNIGP', 'users', 'http://localhost', 0, 1, 0, '2022-07-06 02:46:13', '2022-07-06 02:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-07-06 02:46:12', '2022-07-06 02:46:12');

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

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('e9727859d913c81f1f72f5985f72bb7543366da025724181d970fbb33321904d789f0c4f82f881f4', '14c2056b43116cbabd74646e5764319da6b9b65f312b6124592fd1720b4cd26b090d6854df2b9fd7', 0, '2023-07-06 05:49:56');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(12, 'Can View Charts', 'can_view_charts', NULL, NULL, NULL),
(13, 'Can Create Permissions', 'can_create_permissions', NULL, '2021-06-12 09:34:21', '2021-06-12 09:34:21'),
(14, 'Can Create Users', 'can_create_users', NULL, '2021-06-12 09:34:44', '2021-06-12 09:34:44'),
(15, 'Can Delete Users', 'can_delete_users', NULL, '2021-06-12 09:34:53', '2021-06-12 09:34:53'),
(16, 'Can View Settings', 'can_view_settings', NULL, '2021-06-14 09:01:42', '2021-06-14 09:01:42'),
(17, 'Can View Roles', 'can_view_roles', NULL, '2021-06-14 10:59:17', '2021-06-14 10:59:17'),
(18, 'Can View Permissions', 'can_view_permissions', NULL, '2021-06-14 11:28:07', '2021-06-14 11:28:07'),
(19, 'Can View Dashboard', 'can_view_dashboard', NULL, '2021-06-14 12:54:03', '2021-06-14 12:54:03'),
(20, 'Can View Tests', 'can_view_tests', NULL, '2021-06-14 13:23:37', '2021-06-14 13:23:37'),
(21, 'Can View Test Results', 'can_view_test_results', NULL, '2021-06-14 13:24:16', '2021-06-14 13:24:16'),
(22, 'Can View Users', 'can_view_users', NULL, '2021-06-14 13:30:50', '2021-06-14 13:30:50'),
(23, 'Can View Dashboard', 'can_view_dashboard', NULL, '2022-07-06 02:48:17', '2022-07-06 02:48:17'),
(24, 'Can View Test Results', 'can_view_test_results', NULL, '2022-07-06 02:48:17', '2022-07-06 02:48:17'),
(25, 'Can View Settings', 'can_view_settings', NULL, '2022-07-06 02:48:17', '2022-07-06 02:48:17'),
(26, 'Can View Users', 'can_view_users', NULL, '2022-07-06 02:48:17', '2022-07-06 02:48:17'),
(27, 'Can View Roles', 'can_view_roles', NULL, '2022-07-06 02:48:17', '2022-07-06 02:48:17'),
(28, 'Can View Permissions', 'can_view_permissions', NULL, '2022-07-06 02:48:17', '2022-07-06 02:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(8, 1, 16, NULL, NULL),
(9, 1, 18, NULL, NULL),
(10, 1, 19, '2021-06-14 12:54:12', '2021-06-14 12:54:12'),
(11, 2, 21, '2021-06-14 13:24:27', '2021-06-14 13:24:27'),
(12, 1, 17, '2021-06-14 13:29:42', '2021-06-14 13:29:42'),
(14, 1, 13, '2021-06-14 13:30:15', '2021-06-14 13:30:15'),
(15, 1, 14, '2021-06-14 13:30:15', '2021-06-14 13:30:15'),
(16, 1, 15, '2021-06-14 13:30:15', '2021-06-14 13:30:15'),
(17, 1, 20, '2021-06-14 13:30:15', '2021-06-14 13:30:15'),
(18, 1, 21, '2021-06-14 13:30:15', '2021-06-14 13:30:15'),
(19, 1, 22, '2021-06-14 13:31:16', '2021-06-14 13:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Super Admin', NULL, NULL, NULL),
(2, 'Admin', 'admin', NULL, NULL, NULL),
(3, 'Guest', 'Guest', NULL, NULL, NULL),
(4, 'Super Admin', 'Super Admin', NULL, '2022-07-06 02:48:18', '2022-07-06 02:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint UNSIGNED NOT NULL,
  `subscription_id` bigint UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_results`
--

CREATE TABLE `test_results` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` bigint NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ttn_code_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_results`
--

INSERT INTO `test_results` (`id`, `email`, `full_name`, `age`, `gender`, `address`, `postcode`, `ttn_code_id`, `result`, `created_at`, `updated_at`) VALUES
(1814, 'tobin.schroeder@example.com', 'Ignacio Moen', 16, 'Male', '5697 Claudia Harbor\nCasimirbury, AZ 69125-4071', '80121', '3', 'positive', '2021-04-26 02:48:11', '2021-06-13 21:28:55'),
(1815, 'fritsch.brennan@example.com', 'Cecil Thiel', 42, 'Other', '58787 Mitchell Island\nMoriahton, DC 48269', '80127', '4', 'negative', '2021-05-13 20:11:31', '2021-06-13 21:28:55'),
(1816, 'alayna04@example.org', 'Jonas Gerlach', 90, 'Other', '3841 Jaskolski Ridges\nGusmouth, GA 03389-5633', '80123', '6', 'negative', '2021-02-10 11:42:42', '2021-06-13 21:28:55'),
(1817, 'edonnelly@example.net', 'Dr. Kenton Conn', 33, 'Other', '37697 Bridget Fields\nNew Norwoodberg, IN 97495-3752', '80120', '7', 'incoclusive', '2021-01-05 07:53:48', '2021-06-13 21:28:55'),
(1818, 'griffin.hessel@example.org', 'Dr. Cristopher Brakus', 46, 'Female', '9840 Malachi Rest\nNiaberg, KS 63434-7895', '80120', '7', 'negative', '2021-03-01 09:32:31', '2021-06-13 21:28:55'),
(1819, 'shanon61@example.net', 'Ms. Wilhelmine Kertzmann MD', 70, 'Female', '70079 Antwan Fields Suite 130\nPort Brandyn, IL 73432', '80130', '3', 'negative', '2021-01-11 11:11:08', '2021-06-13 21:28:56'),
(1820, 'trever53@example.org', 'Edwardo Kemmer', 16, 'Male', '694 Bridgette Brook Apt. 172\nWest Glendafurt, TN 15436', '80130', '3', 'incoclusive', '2021-02-14 23:21:49', '2021-06-13 21:28:56'),
(1821, 'gbreitenberg@example.org', 'Tina Smith', 12, 'Male', '74891 Miller Inlet Apt. 579\nEast Ezekielhaven, WA 95472', '80129', '10', 'negative', '2021-05-15 14:12:06', '2021-06-13 21:28:56'),
(1822, 'roosevelt52@example.org', 'Camila Frami', 7, 'Male', '981 Kub Causeway\nDaxmouth, NY 91965-1714', '80127', '6', 'negative', '2021-04-24 05:46:41', '2021-06-13 21:28:56'),
(1823, 'ijakubowski@example.com', 'Dameon Lowe', 54, 'Female', '89305 Ashly Causeway Suite 720\nEribertomouth, KS 51039', '80123', '10', 'positive', '2021-06-12 20:31:17', '2021-06-13 21:28:56'),
(1824, 'ovon@example.org', 'Obie Ruecker', 41, 'Male', '230 Nelle Vista Apt. 998\nJulietland, NH 90028-9655', '80129', '1', 'negative', '2021-06-06 01:25:56', '2021-06-13 21:28:56'),
(1825, 'russ.marquardt@example.org', 'Jennie DuBuque', 42, 'Male', '851 Hammes Throughway\nSigurdton, PA 16703-8592', '80124', '4', 'incoclusive', '2021-02-04 23:18:15', '2021-06-13 21:28:56'),
(1826, 'mikayla71@example.net', 'Prof. Emmanuel O\'Keefe II', 74, 'Female', '2957 Savanna Roads Suite 347\nWest Michael, DE 51430', '80123', '2', 'negative', '2021-03-16 10:43:08', '2021-06-13 21:28:56'),
(1827, 'wanda.murray@example.net', 'Pinkie Mertz', 41, 'Male', '1588 Kennedy Estates Suite 312\nNorth Eldonburgh, WA 48955-1079', '80127', '8', 'negative', '2021-01-21 01:58:23', '2021-06-13 21:28:57'),
(1828, 'emmerich.clint@example.org', 'Dr. Etha Grimes', 24, 'Male', '94642 Tyrel Passage Apt. 403\nSouth Jerry, DC 49242-0894', '80120', '9', 'incoclusive', '2021-05-05 00:28:05', '2021-06-13 21:28:57'),
(1829, 'itorp@example.net', 'Asha Treutel', 3, 'Male', '78096 Shayna Valley Suite 844\nSandymouth, IA 57924', '80120', '3', 'incoclusive', '2021-01-12 09:19:24', '2021-06-13 21:28:57'),
(1830, 'fcummerata@example.com', 'Mya Morissette', 22, 'Other', '96326 Breitenberg Drive Suite 469\nLake Lenna, IA 27743-7285', '80125', '1', 'positive', '2021-05-03 12:20:45', '2021-06-13 21:28:57'),
(1831, 'rgoldner@example.org', 'Prof. Giles Bartoletti', 2, 'Male', '458 Block Centers\nCydneystad, TN 53024-1460', '80126', '2', 'positive', '2021-03-04 21:39:42', '2021-06-13 21:28:57'),
(1832, 'antoinette11@example.com', 'Frederique Walter', 90, 'Other', '3518 Marvin Hollow\nLake Ross, VA 57439', '80122', '2', 'negative', '2021-05-18 06:51:07', '2021-06-13 21:28:57'),
(1833, 'eleanore96@example.com', 'Kristofer Collins', 33, 'Other', '7450 Jabari Knoll Suite 869\nSouth Oswald, FL 89645', '80130', '9', 'positive', '2021-04-04 22:47:24', '2021-06-13 21:28:57'),
(1834, 'adelia51@example.org', 'Marjory Watsica', 61, 'Female', '81582 Kirlin Row\nPort Orrinborough, NM 50548-7055', '80120', '9', 'positive', '2021-03-06 01:54:05', '2021-06-13 21:28:57'),
(1835, 'pete31@example.net', 'Treva Hermann', 18, 'Other', '39889 Imani Crescent\nLefflerhaven, CA 90036-2437', '80121', '10', 'incoclusive', '2021-03-24 00:22:32', '2021-06-13 21:28:57'),
(1836, 'schumm.raphaelle@example.com', 'Rodger Jones', 83, 'Female', '84884 Predovic Roads Suite 755\nBinsport, MI 67734-7823', '80128', '6', 'positive', '2021-01-07 08:38:30', '2021-06-13 21:28:57'),
(1837, 'swelch@example.net', 'Fred Kulas', 4, 'Female', '22996 Carroll Flat Suite 645\nGretafort, HI 46660', '80126', '8', 'negative', '2021-01-10 22:46:08', '2021-06-13 21:28:58'),
(1838, 'monte.marvin@example.com', 'Hertha Watsica', 69, 'Male', '975 Lesch Divide Suite 394\nGutmannhaven, WY 33075', '80127', '8', 'positive', '2021-01-01 15:23:19', '2021-06-13 21:28:58'),
(1839, 'kprohaska@example.net', 'Tressa Beer', 48, 'Female', '19261 Schmidt Fork\nNorth Hilmamouth, MI 79315', '80130', '2', 'negative', '2021-03-02 11:41:45', '2021-06-13 21:28:58'),
(1840, 'kuhn.wyatt@example.com', 'Mr. Seamus Stanton V', 62, 'Other', '1078 Silas Knoll Suite 589\nWest Halieburgh, OH 83243', '80127', '4', 'negative', '2021-06-10 17:15:59', '2021-06-13 21:28:58'),
(1841, 'nakia.mayer@example.net', 'Thalia Langworth', 35, 'Male', '117 Becker Via\nGarfieldville, IA 05322', '80126', '7', 'negative', '2021-01-17 15:09:56', '2021-06-13 21:28:58'),
(1842, 'rempel.gerardo@example.com', 'Mr. Moses Hyatt', 31, 'Other', '8382 Hermann Junction Apt. 736\nWest Camylleborough, MT 17472-7473', '80122', '1', 'incoclusive', '2021-01-30 14:06:45', '2021-06-13 21:28:58'),
(1843, 'jaylin.stark@example.org', 'Verda Schmidt', 35, 'Female', '2774 Joel Drive\nKrisbury, MI 13930', '80129', '5', 'incoclusive', '2021-05-11 21:59:28', '2021-06-13 21:28:58'),
(1844, 'schmeler.keyshawn@example.net', 'Dr. Clifford Cummerata V', 52, 'Other', '4648 Otto Inlet Suite 959\nJacobsonside, SD 25468-3660', '80124', '10', 'negative', '2021-04-09 02:07:15', '2021-06-13 21:28:58'),
(1845, 'nmorissette@example.com', 'Mr. Tito Becker', 65, 'Female', '25311 Ferry Way\nEast Lizethview, NY 05501-3097', '80128', '5', 'incoclusive', '2021-01-11 19:21:48', '2021-06-13 21:28:58'),
(1846, 'fay.antonia@example.org', 'Mrs. Sasha Kuvalis', 2, 'Female', '77659 Satterfield Streets Suite 461\nOsinskiland, OH 63513', '80120', '10', 'positive', '2021-01-11 04:53:26', '2021-06-13 21:28:58'),
(1847, 'wberge@example.org', 'Mr. Jamison Kertzmann II', 82, 'Male', '64930 Rolando Island\nFlavieshire, KS 34875-3194', '80122', '6', 'positive', '2021-02-11 20:37:53', '2021-06-13 21:28:59'),
(1848, 'qheaney@example.net', 'Mr. Deshawn Streich', 33, 'Male', '6864 Zackery Rue Apt. 299\nMagnoliashire, UT 53919-4250', '80129', '1', 'positive', '2021-01-05 02:15:05', '2021-06-13 21:28:59'),
(1849, 'vkling@example.org', 'Marvin Towne', 54, 'Male', '6324 Keely Branch Apt. 199\nJacobsonburgh, IL 71388', '80126', '9', 'negative', '2021-03-29 00:49:22', '2021-06-13 21:28:59'),
(1850, 'runolfsson.lulu@example.net', 'Dr. Reece Bradtke DVM', 54, 'Male', '45288 Emmie Junction Suite 564\nDickinsonton, IA 40163', '80130', '5', 'negative', '2021-01-23 01:18:16', '2021-06-13 21:28:59'),
(1851, 'rwyman@example.com', 'Jolie Yost', 49, 'Female', '67464 Jayden Route Apt. 141\nBettybury, IA 57743-1631', '80121', '9', 'negative', '2021-05-11 23:05:40', '2021-06-13 21:28:59'),
(1852, 'vena33@example.org', 'Osbaldo Hackett', 85, 'Female', '889 Crona Garden\nLuettgenshire, CA 69607-0801', '80121', '7', 'positive', '2021-01-03 08:40:22', '2021-06-13 21:28:59'),
(1853, 'fwillms@example.net', 'Larissa Stoltenberg Jr.', 58, 'Other', '727 Heidenreich Trail\nWest Desmondport, UT 88689', '80122', '7', 'incoclusive', '2021-03-28 19:43:59', '2021-06-13 21:28:59'),
(1854, 'carley.romaguera@example.com', 'Keara Jast DDS', 52, 'Male', '48994 Wuckert Key\nWest Cletafort, TN 17866', '80130', '1', 'positive', '2021-01-12 21:39:03', '2021-06-13 21:28:59'),
(1855, 'peter.dickinson@example.com', 'Mr. Raheem Crooks', 73, 'Male', '23168 Gusikowski Run Apt. 165\nMeganeview, CA 44255', '80126', '3', 'negative', '2021-06-07 13:10:31', '2021-06-13 21:28:59'),
(1856, 'tod89@example.com', 'Mr. Ian Grady Jr.', 57, 'Other', '4697 Kianna Falls\nOkunevaside, DC 98599', '80121', '4', 'negative', '2021-05-05 02:47:11', '2021-06-13 21:28:59'),
(1857, 'ihills@example.net', 'Pedro Lang IV', 16, 'Female', '225 Sharon Road Apt. 081\nSouth Aurelio, KS 58422-9866', '80129', '7', 'incoclusive', '2021-03-19 03:11:23', '2021-06-13 21:29:00'),
(1858, 'dolores.reynolds@example.org', 'Zachery Stiedemann', 49, 'Female', '310 Maverick Canyon Apt. 299\nSouth Enrique, VT 36309', '80130', '7', 'incoclusive', '2021-03-05 08:37:36', '2021-06-13 21:29:00'),
(1859, 'reina27@example.org', 'Lurline Pacocha II', 4, 'Other', '556 Considine Cove\nKrajcikshire, CT 30986-3611', '80130', '2', 'incoclusive', '2021-02-25 18:07:45', '2021-06-13 21:29:00'),
(1860, 'blynch@example.org', 'Mrs. Clementine Hills I', 24, 'Other', '7746 Camilla Mount\nReingerchester, DC 82310-4784', '80123', '6', 'negative', '2021-05-19 09:58:12', '2021-06-13 21:29:00'),
(1861, 'phintz@example.net', 'Elena Gutkowski DVM', 17, 'Other', '4603 Devin Burgs\nNorth Moisesmouth, UT 39826', '80130', '2', 'negative', '2021-03-07 21:33:37', '2021-06-13 21:29:00'),
(1862, 'easton07@example.com', 'Dr. Van Lesch', 57, 'Other', '205 Camylle Ports Apt. 226\nO\'Connerbury, ID 49914-8792', '80125', '8', 'negative', '2021-03-15 10:28:51', '2021-06-13 21:29:00'),
(1863, 'tgoodwin@example.org', 'Rene Hamill', 46, 'Other', '346 Lubowitz Harbor Apt. 693\nPort Marcelinoburgh, NE 42438', '80127', '9', 'incoclusive', '2021-03-31 05:45:55', '2021-06-13 21:29:00'),
(1864, 'madelyn42@example.net', 'Mrs. Francisca Larkin DDS', 9, 'Male', '628 Lou Drives\nSouth Scarlett, SD 60625-6678', '80129', '3', 'incoclusive', '2021-01-28 01:48:35', '2021-06-13 21:29:01'),
(1865, 'xbartell@example.net', 'Mr. Fermin Larkin', 23, 'Other', '555 Mariam Pike\nWest Roderickside, OH 97612', '80122', '8', 'positive', '2021-06-03 18:08:28', '2021-06-13 21:29:01'),
(1866, 'shana18@example.net', 'Damion Nitzsche', 13, 'Female', '54818 Talia Square Apt. 494\nMarquardtview, DC 64635', '80128', '4', 'incoclusive', '2021-04-15 17:48:20', '2021-06-13 21:29:01'),
(1867, 'blick.ashtyn@example.net', 'Kirk Heidenreich IV', 43, 'Male', '761 McDermott Run\nNew Verdafort, DC 82471-6134', '80130', '2', 'positive', '2021-01-18 01:02:42', '2021-06-13 21:29:01'),
(1868, 'montana33@example.net', 'Prof. Walker Howell', 37, 'Other', '27768 Skiles Prairie Apt. 099\nHermanhaven, IA 54064-2704', '80128', '5', 'incoclusive', '2021-05-30 15:08:37', '2021-06-13 21:29:01'),
(1869, 'cartwright.lila@example.net', 'Lenna Feil', 51, 'Male', '229 Keven Manor Apt. 793\nBlairchester, NC 58204', '80126', '5', 'negative', '2021-06-03 13:20:07', '2021-06-13 21:29:01'),
(1870, 'aschultz@example.com', 'Dr. Rodger Dooley', 22, 'Female', '605 Hickle Turnpike\nStewarthaven, UT 36968-8049', '80124', '7', 'negative', '2021-03-06 14:41:50', '2021-06-13 21:29:01'),
(1871, 'leo54@example.com', 'Isabell Stracke', 22, 'Other', '383 Monty Hills Suite 280\nElsieburgh, VA 56376', '80125', '7', 'incoclusive', '2021-02-16 02:24:59', '2021-06-13 21:29:01'),
(1872, 'sawayn.joe@example.com', 'Mr. Rene Christiansen', 47, 'Female', '8088 Rick Unions\nMargueriteport, CO 83774', '80120', '8', 'positive', '2021-01-13 23:55:21', '2021-06-13 21:29:02'),
(1873, 'glen97@example.net', 'Dr. Zula Baumbach', 55, 'Other', '224 Leuschke Crescent Suite 064\nKingchester, MI 61573', '80121', '4', 'positive', '2021-04-12 15:36:03', '2021-06-13 21:29:02'),
(1874, 'rhessel@example.net', 'Prof. Emile Gusikowski', 39, 'Other', '3413 Cruickshank Brook\nSouth Omariburgh, AR 57990-4716', '80130', '6', 'positive', '2021-02-23 20:11:44', '2021-06-13 21:29:02'),
(1875, 'abbott.clarabelle@example.org', 'Berry Hoppe', 1, 'Female', '28194 Ankunding Crescent\nEast Aiden, CT 16452', '80120', '10', 'incoclusive', '2021-04-12 05:34:35', '2021-06-13 21:29:02'),
(1876, 'jo.johns@example.com', 'Margarete Wilderman', 60, 'Female', '93505 Simeon Loop\nSouth Caleighville, HI 05703-1934', '80125', '8', 'negative', '2021-02-12 19:53:11', '2021-06-13 21:29:02'),
(1877, 'savanna.bruen@example.net', 'Hilario Connelly IV', 22, 'Female', '725 Kshlerin Crescent\nCydneyport, ME 31059-8405', '80122', '1', 'incoclusive', '2021-06-11 23:21:11', '2021-06-13 21:29:02'),
(1878, 'litzy.larson@example.com', 'Miss Macy Cummerata', 33, 'Male', '6091 Jacobson Lodge Suite 570\nRaynortown, NC 42038', '80121', '1', 'positive', '2021-03-09 04:51:26', '2021-06-13 21:29:02'),
(1879, 'goldner.nichole@example.com', 'Prof. Warren Hettinger Sr.', 85, 'Female', '13023 Tianna Throughway Suite 891\nZechariahland, TX 03073', '80120', '6', 'positive', '2021-02-13 13:49:45', '2021-06-13 21:29:02'),
(1880, 'huel.bennett@example.com', 'Jordy Bartell', 56, 'Female', '7439 Lueilwitz Port Suite 768\nBiankafurt, NM 52979', '80128', '5', 'negative', '2021-05-23 14:55:51', '2021-06-13 21:29:02'),
(1881, 'tatum.bradtke@example.net', 'Flavio Ward', 85, 'Other', '8213 Kris Junction\nNew Carmenberg, UT 67363-3109', '80130', '3', 'positive', '2021-06-10 22:54:17', '2021-06-13 21:29:03'),
(1882, 'htorp@example.net', 'Ms. Georgianna Orn DVM', 29, 'Female', '89829 Parisian Landing\nHudsonmouth, FL 51874-5163', '80130', '10', 'incoclusive', '2021-01-16 07:24:50', '2021-06-13 21:29:03'),
(1883, 'miller.jeffrey@example.com', 'Shawn Schoen', 11, 'Other', '321 Baylee Junctions\nNorth Estelle, CA 18388-2844', '80122', '6', 'incoclusive', '2021-01-15 08:38:02', '2021-06-13 21:29:03'),
(1884, 'priscilla57@example.net', 'General Mraz', 66, 'Male', '700 Herzog Mount Suite 570\nDickinsonshire, MT 39912-1267', '80121', '4', 'incoclusive', '2021-03-01 10:22:33', '2021-06-13 21:29:03'),
(1885, 'mallie.wisozk@example.com', 'Helene Schimmel', 31, 'Male', '6069 Ara Ridges Suite 761\nLake Raymond, OH 91905', '80127', '8', 'negative', '2021-05-02 19:19:24', '2021-06-13 21:29:03'),
(1886, 'antwon.hermann@example.com', 'Xavier Boyle', 32, 'Male', '28189 Padberg Villages Apt. 082\nWizaberg, IN 87838', '80122', '6', 'incoclusive', '2021-04-25 00:24:51', '2021-06-13 21:29:03'),
(1887, 'helga.borer@example.net', 'Berniece Walter', 48, 'Other', '32714 Mitchell Court\nNorth Keyshawn, AK 37476', '80123', '7', 'incoclusive', '2021-04-06 11:27:53', '2021-06-13 21:29:03'),
(1888, 'odell49@example.org', 'Mrs. Kirstin Crooks III', 74, 'Male', '574 Nelda Junction\nJairoshire, OK 15253-4417', '80129', '7', 'negative', '2021-02-18 07:02:56', '2021-06-13 21:29:03'),
(1889, 'larson.citlalli@example.com', 'Yesenia Bernier', 35, 'Male', '8304 Dolly Fork\nNew Hildegard, NE 10503-3536', '80127', '9', 'incoclusive', '2021-02-27 11:33:47', '2021-06-13 21:29:04'),
(1890, 'walter.mafalda@example.org', 'Prof. Ned Volkman PhD', 56, 'Female', '5632 O\'Reilly Ports Suite 117\nEast Rahsaan, AZ 15448', '80130', '9', 'negative', '2021-02-22 00:54:23', '2021-06-13 21:29:04'),
(1891, 'njerde@example.com', 'Sincere Towne', 30, 'Other', '536 Demetris Estates\nWest Lucious, MT 04807', '80124', '7', 'incoclusive', '2021-04-16 07:29:37', '2021-06-13 21:29:04'),
(1892, 'syble35@example.com', 'Kristopher Casper Jr.', 87, 'Female', '1360 Clemens Stravenue Apt. 901\nMohammedview, VT 12944-1149', '80128', '6', 'negative', '2021-02-24 18:44:00', '2021-06-13 21:29:04'),
(1893, 'gislason.ervin@example.org', 'Daisy Abbott', 35, 'Male', '339 Bednar Station\nMarquardtland, VT 28171-3839', '80128', '5', 'incoclusive', '2021-03-26 12:31:29', '2021-06-13 21:29:04'),
(1894, 'josefina68@example.net', 'Florine Simonis', 76, 'Female', '69391 Bradly Harbors\nLake Millerbury, AR 51038-7319', '80128', '2', 'positive', '2021-02-09 20:58:21', '2021-06-13 21:29:04'),
(1895, 'jensen09@example.net', 'Mathew Lockman', 35, 'Other', '358 Hegmann Oval Suite 201\nJacobsland, GA 61313', '80127', '9', 'positive', '2021-02-03 19:33:10', '2021-06-13 21:29:04'),
(1896, 'deon19@example.com', 'Lilyan Zieme', 83, 'Other', '36697 Runolfsdottir Dam\nLake Jamal, KS 94122-6078', '80124', '4', 'positive', '2021-03-09 03:26:15', '2021-06-13 21:29:04'),
(1897, 'larson.violet@example.com', 'Prof. Gerson Medhurst Jr.', 73, 'Male', '1720 Ernser Glen\nColeshire, MD 65524', '80126', '9', 'incoclusive', '2021-04-19 01:45:30', '2021-06-13 21:29:04'),
(1898, 'welch.gisselle@example.net', 'Flo Daniel', 7, 'Male', '506 Leopoldo Dale\nCroninburgh, MT 05288', '80121', '2', 'positive', '2021-05-06 22:12:02', '2021-06-13 21:29:05'),
(1899, 'clementine.stokes@example.net', 'Raymond Abernathy', 20, 'Female', '39521 Gislason Mill\nFriesenborough, WA 85995', '80128', '6', 'incoclusive', '2021-06-13 02:17:57', '2021-06-13 21:29:05'),
(1900, 'schmeler.emilie@example.com', 'Meagan Wehner', 12, 'Female', '3320 Gibson Meadows\nWest Stewartport, CT 05593-6327', '80126', '5', 'positive', '2021-04-28 11:03:51', '2021-06-13 21:29:05'),
(1901, 'gertrude28@example.net', 'Modesto Moore', 53, 'Other', '7474 O\'Keefe Inlet\nBradfordfurt, ME 95577', '80129', '5', 'incoclusive', '2021-02-13 12:24:08', '2021-06-13 21:29:05'),
(1902, 'brianne55@example.com', 'Abigail Ritchie V', 36, 'Male', '978 Lyda Estates Suite 940\nNew Andystad, WI 15324-1889', '80126', '6', 'incoclusive', '2021-02-01 09:51:11', '2021-06-13 21:29:05'),
(1903, 'valentina.mayert@example.net', 'Vito Smitham', 82, 'Female', '532 Ahmad Gateway Suite 261\nMaggioberg, TN 44349-8139', '80123', '10', 'incoclusive', '2021-02-08 11:50:00', '2021-06-13 21:29:05'),
(1904, 'lemke.misael@example.org', 'Ms. Rhianna Haley', 32, 'Other', '2175 Frederik Islands\nNew Blaze, MO 79269', '80129', '10', 'incoclusive', '2021-06-08 01:40:50', '2021-06-13 21:29:06'),
(1905, 'rahsaan64@example.com', 'Mia Streich II', 68, 'Male', '93723 Alessandro Extension\nSouth Adolph, CO 72031', '80127', '2', 'incoclusive', '2021-03-27 11:16:37', '2021-06-13 21:29:06'),
(1906, 'tkemmer@example.org', 'Susana Little', 20, 'Male', '6121 Mann Falls\nWest Vilma, MI 36464', '80130', '9', 'incoclusive', '2021-02-27 17:03:06', '2021-06-13 21:29:06'),
(1907, 'rodriguez.steve@example.org', 'Kaleigh Cronin', 2, 'Other', '7932 Bradtke Mountain\nLittelport, CT 66003-0000', '80126', '7', 'positive', '2021-03-08 13:52:30', '2021-06-13 21:29:06'),
(1908, 'stracke.jany@example.com', 'Dr. Joshua Jones', 59, 'Male', '130 Velva Lakes\nWest Green, OR 13833-8631', '80127', '1', 'positive', '2021-05-08 20:00:06', '2021-06-13 21:29:06'),
(1909, 'marquardt.angelica@example.org', 'Ms. Litzy Gorczany', 79, 'Other', '138 Joseph Port Apt. 963\nKingfort, TN 15211', '80126', '1', 'negative', '2021-06-08 10:31:51', '2021-06-13 21:29:06'),
(1910, 'ycronin@example.net', 'Muriel Mann', 41, 'Female', '66703 Berge Lodge\nAlvisshire, KS 61144', '80123', '1', 'negative', '2021-02-04 15:29:08', '2021-06-13 21:29:06'),
(1911, 'rath.simeon@example.com', 'Mr. Mitchel Willms', 30, 'Other', '2042 Eliseo Wells Apt. 108\nPort Andrestown, DC 33724-4038', '80123', '1', 'positive', '2021-03-27 02:50:16', '2021-06-13 21:29:06'),
(1912, 'roob.zander@example.org', 'Eliane Harvey', 16, 'Other', '208 Jermain Squares\nAbelardoside, CO 34633-1035', '80124', '8', 'incoclusive', '2021-04-18 12:09:56', '2021-06-13 21:29:07'),
(1913, 'carroll40@example.net', 'Cecile Gorczany', 48, 'Other', '383 Barry Centers Suite 703\nGloverview, WA 76026-7950', '80122', '6', 'incoclusive', '2021-04-13 14:51:18', '2021-06-13 21:29:07'),
(1914, 'sebastian21@example.com', 'Stan Wolff', 10, 'Male', '695 Senger Road Suite 890\nGailmouth, AL 76124', '80120', '5', 'positive', '2021-03-04 09:04:09', '2021-06-13 21:29:07'),
(1915, 'winston.stracke@example.com', 'Jaeden Hermiston', 85, 'Other', '216 Oral Isle\nGutmannview, NE 04971', '80127', '7', 'positive', '2021-04-12 09:42:16', '2021-06-13 21:29:07'),
(1916, 'skeebler@example.org', 'Kristopher Quitzon DDS', 4, 'Female', '161 Fahey Glen Apt. 309\nDickiton, OH 67094-1650', '80120', '5', 'negative', '2021-01-28 20:45:05', '2021-06-13 21:29:07'),
(1917, 'considine.mariah@example.com', 'Katherine Mayert II', 75, 'Male', '312 Reynolds Oval Apt. 183\nSanfordhaven, SD 71112-0558', '80123', '5', 'negative', '2021-05-07 22:29:34', '2021-06-13 21:29:07'),
(1918, 'stacey.oberbrunner@example.org', 'Zoie Effertz', 41, 'Male', '455 Lakin Village Suite 637\nEast Stonehaven, KS 97914', '80128', '1', 'incoclusive', '2021-03-11 10:27:54', '2021-06-13 21:29:07'),
(1919, 'selena.ortiz@example.org', 'Phyllis Tillman', 64, 'Female', '4005 Maxine Spurs\nLake Louisa, WY 74798-3442', '80124', '2', 'positive', '2021-05-20 13:15:58', '2021-06-13 21:29:08'),
(1920, 'hellen.boyer@example.org', 'Prof. Trever Thiel', 35, 'Other', '65381 Marjory Underpass Suite 400\nNew Gust, NE 82511-1656', '80130', '6', 'positive', '2021-05-25 15:43:06', '2021-06-13 21:29:08'),
(1921, 'langosh.jordan@example.org', 'Kaylie Wehner', 45, 'Male', '742 Parker Tunnel\nSouth Hymanmouth, MO 98485-2612', '80124', '2', 'incoclusive', '2021-03-11 07:05:20', '2021-06-13 21:29:08'),
(1922, 'tmorissette@example.com', 'Ara Connelly', 11, 'Male', '206 Darwin Roads Apt. 838\nNorth Sonyaborough, SD 52526-3479', '80121', '7', 'negative', '2021-05-31 15:02:44', '2021-06-13 21:29:08'),
(1923, 'marilie.jacobs@example.org', 'Cleta Quitzon', 63, 'Other', '62352 Dayton Street\nJonathanport, TN 69658', '80122', '1', 'positive', '2021-04-03 09:48:10', '2021-06-13 21:29:08'),
(1924, 'qdurgan@example.org', 'Chanel Kris', 58, 'Female', '880 Heath Ridge Apt. 123\nLake Zachary, NV 36005-5163', '80130', '2', 'negative', '2021-01-05 23:24:36', '2021-06-13 21:29:08'),
(1925, 'candelario.mcclure@example.org', 'Otilia Bruen', 33, 'Female', '5448 Wintheiser Station Apt. 151\nNorth Lyrictown, RI 77891-2254', '80130', '1', 'negative', '2021-01-17 00:11:04', '2021-06-13 21:29:08'),
(1926, 'grussel@example.org', 'Litzy Dibbert Jr.', 72, 'Female', '510 Glover Streets\nWest Talon, KY 32493', '80124', '5', 'negative', '2021-02-28 12:22:36', '2021-06-13 21:29:08'),
(1927, 'harry.goyette@example.com', 'Dr. Alvena Koelpin', 37, 'Female', '118 Quigley Motorway Apt. 092\nEast Clinton, TX 10553', '80127', '5', 'incoclusive', '2021-02-08 14:24:59', '2021-06-13 21:29:08'),
(1928, 'jovany02@example.com', 'Shayne Flatley', 7, 'Female', '4937 Von Centers Suite 253\nLake Ebbatown, WV 81977', '80128', '5', 'incoclusive', '2021-06-11 10:18:34', '2021-06-13 21:29:08'),
(1929, 'connie.bernier@example.com', 'Ms. Sabina Mills', 88, 'Other', '8378 Catharine Mews Apt. 013\nNew Daren, NV 76545', '80123', '5', 'positive', '2021-02-28 04:54:16', '2021-06-13 21:29:09'),
(1930, 'rex.corwin@example.com', 'Ronny Tremblay', 1, 'Female', '6817 Koelpin Viaduct Apt. 851\nTerrencemouth, NM 68566-4638', '80128', '7', 'negative', '2021-05-07 10:42:06', '2021-06-13 21:29:09'),
(1931, 'yyundt@example.com', 'David Wunsch', 75, 'Male', '706 Delphine Island\nSouth Arleneside, MD 27354-6400', '80130', '4', 'incoclusive', '2021-01-26 09:13:41', '2021-06-13 21:29:09'),
(1932, 'hoeger.ally@example.com', 'Rozella Leuschke', 67, 'Other', '1383 Susanna Via\nPort Johanstad, ID 20106', '80126', '5', 'incoclusive', '2021-03-21 14:38:11', '2021-06-13 21:29:09'),
(1933, 'sgaylord@example.org', 'Mr. Donnie Casper DDS', 18, 'Female', '42095 Alysson Points Apt. 397\nHendersonside, IN 49801', '80129', '8', 'negative', '2021-03-24 05:42:48', '2021-06-13 21:29:09'),
(1934, 'anita.gaylord@example.org', 'Thora Keeling', 66, 'Other', '1419 Estell Forks\nJanyside, MD 45297-4265', '80124', '4', 'negative', '2021-04-08 13:35:49', '2021-06-13 21:29:09'),
(1935, 'uwest@example.net', 'Miss Giovanna Gerlach II', 56, 'Male', '67498 Zena Points Suite 593\nWittinghaven, MO 16687-7689', '80121', '2', 'positive', '2021-04-15 09:50:14', '2021-06-13 21:29:10'),
(1936, 'faustino.cruickshank@example.com', 'Ilene Bruen', 13, 'Other', '7735 Hirthe Common Suite 745\nPresleyfurt, VA 30606-4220', '80120', '10', 'negative', '2021-03-14 22:49:08', '2021-06-13 21:29:10'),
(1937, 'lrohan@example.org', 'Liam Crona Sr.', 85, 'Male', '681 Ashton Spur Apt. 314\nToyberg, AZ 52443', '80128', '5', 'incoclusive', '2021-06-12 10:02:56', '2021-06-13 21:29:10'),
(1938, 'nico.becker@example.net', 'Beverly McGlynn', 39, 'Female', '5819 Heaney Crest Suite 049\nAnkundinghaven, WV 44533', '80130', '10', 'negative', '2021-01-14 05:53:50', '2021-06-13 21:29:10'),
(1939, 'ziemann.elisabeth@example.com', 'Ms. Velda Predovic', 30, 'Female', '750 Albertha Ports\nSouth Corneliusmouth, NE 30696', '80129', '5', 'negative', '2021-05-30 10:09:05', '2021-06-13 21:29:10'),
(1940, 'vtorphy@example.net', 'Coy Hegmann I', 56, 'Male', '625 Bashirian Islands Suite 009\nNew Gabrielle, NY 48752', '80121', '7', 'negative', '2021-03-07 18:59:25', '2021-06-13 21:29:10'),
(1941, 'noble73@example.com', 'Lamar Harvey', 39, 'Male', '13321 Nicole Plaza Apt. 489\nRennermouth, WI 36305-9548', '80123', '3', 'incoclusive', '2021-01-29 03:57:26', '2021-06-13 21:29:11'),
(1942, 'abigayle55@example.com', 'Micah Schinner', 52, 'Other', '66573 Hilpert Pines Apt. 449\nNew Aric, IL 40090-6240', '80130', '6', 'incoclusive', '2021-06-11 12:43:02', '2021-06-13 21:29:11'),
(1943, 'dave.ledner@example.com', 'Dr. Shaun Pagac', 44, 'Female', '49181 Powlowski Camp Apt. 964\nHowardchester, OR 15992', '80122', '7', 'incoclusive', '2021-02-15 18:29:07', '2021-06-13 21:29:11'),
(1944, 'deshaun.hackett@example.org', 'Samara Little', 21, 'Other', '1700 Estell Street Suite 508\nSawaynmouth, IL 56245-7014', '80128', '2', 'positive', '2021-02-08 11:31:25', '2021-06-13 21:29:11'),
(1945, 'danika.borer@example.net', 'Mr. Golden Funk I', 43, 'Male', '567 Krajcik Valleys Apt. 344\nBrakustown, DE 88747', '80123', '3', 'incoclusive', '2021-04-15 21:32:53', '2021-06-13 21:29:11'),
(1946, 'konopelski.jodie@example.org', 'Jarret Buckridge', 90, 'Male', '654 Selmer Mountains\nNitzschefurt, MO 22352-1079', '80121', '5', 'negative', '2021-04-18 06:25:58', '2021-06-13 21:29:11'),
(1947, 'izaiah.okon@example.com', 'Miss Katelynn Roberts', 81, 'Other', '87365 Jessy Courts\nSouth Nigel, WY 24271', '80122', '8', 'negative', '2021-01-30 14:36:22', '2021-06-13 21:29:11'),
(1948, 'maribel.goldner@example.net', 'Clint Rempel', 88, 'Male', '275 Sanford Motorway\nPiperport, MN 66802-6398', '80130', '7', 'incoclusive', '2021-02-19 09:16:59', '2021-06-13 21:29:12'),
(1949, 'reynold.rice@example.net', 'Hilda Daugherty', 73, 'Other', '82198 Lesch Lodge\nLake Estelle, NM 20745-4651', '80130', '10', 'negative', '2021-03-28 11:40:07', '2021-06-13 21:29:12'),
(1950, 'francesco.hoeger@example.org', 'Patricia Schaden DVM', 45, 'Other', '829 Carter Drive Suite 088\nEast Neldaview, RI 53550-8351', '80129', '3', 'positive', '2021-05-15 07:11:01', '2021-06-13 21:29:12'),
(1951, 'jennyfer.hettinger@example.org', 'Dr. Braden O\'Kon II', 82, 'Male', '5973 Boyle Light\nGarfieldmouth, FL 53983-5391', '80125', '1', 'negative', '2021-06-05 20:07:50', '2021-06-13 21:29:12'),
(1952, 'borer.bernardo@example.org', 'Stuart Berge', 79, 'Female', '562 Karl Estate\nElinorefurt, VT 70075-0630', '80123', '7', 'incoclusive', '2021-04-15 13:47:23', '2021-06-13 21:29:12'),
(1953, 'lenore58@example.net', 'Garnet Stanton', 59, 'Other', '281 Berge Park Suite 889\nCarlietown, GA 96177-8953', '80123', '4', 'incoclusive', '2021-05-02 10:56:49', '2021-06-13 21:29:12'),
(1954, 'lbeer@example.com', 'Haskell Kerluke', 84, 'Other', '7626 Destany Inlet\nHayesmouth, SC 93183', '80122', '2', 'negative', '2021-03-19 13:17:18', '2021-06-13 21:29:12'),
(1955, 'tracey.oconner@example.net', 'Cindy Hegmann', 15, 'Male', '1912 Kunze Overpass Suite 722\nNew Mateofort, NM 01251', '80122', '8', 'incoclusive', '2021-02-09 09:53:14', '2021-06-13 21:29:13'),
(1956, 'leannon.alexie@example.com', 'Zena Pacocha III', 56, 'Female', '3451 Kyleigh Cliffs\nNew Destineyland, AL 22620-3868', '80121', '8', 'positive', '2021-01-09 22:03:25', '2021-06-13 21:29:13'),
(1957, 'lilyan03@example.org', 'Mrs. Jany Stiedemann II', 66, 'Other', '537 Hills Crescent Apt. 102\nElijahfurt, OR 58447-1881', '80120', '6', 'negative', '2021-01-11 13:16:53', '2021-06-13 21:29:13'),
(1958, 'damore.kendall@example.com', 'Manuela Treutel', 42, 'Other', '4145 Malcolm Club Apt. 137\nKaratown, UT 54620-3940', '80125', '2', 'positive', '2021-02-25 06:02:22', '2021-06-13 21:29:13'),
(1959, 'becker.curt@example.com', 'Felicita Treutel', 79, 'Other', '158 Abbott Prairie\nElianeborough, NV 86811-1981', '80129', '7', 'negative', '2021-01-26 18:04:44', '2021-06-13 21:29:13'),
(1960, 'rgraham@example.com', 'Jackeline Weimann', 12, 'Male', '60957 Blanda Manor\nTorpmouth, MN 87329', '80124', '3', 'positive', '2021-06-01 09:01:22', '2021-06-13 21:29:13'),
(1961, 'kassulke.dameon@example.com', 'Benny Kub DDS', 59, 'Male', '65262 Rowe Valley\nNew Amaliastad, WI 56908', '80126', '1', 'negative', '2021-03-03 06:26:09', '2021-06-13 21:29:13'),
(1962, 'dashawn42@example.net', 'Camron Krajcik', 27, 'Female', '86519 Weber Plains Apt. 407\nJarvisside, VT 62605-3339', '80127', '5', 'incoclusive', '2021-04-26 13:56:31', '2021-06-13 21:29:13'),
(1963, 'llowe@example.org', 'Jeffery Conn', 53, 'Female', '726 Rogers Trafficway\nNorth Mavis, MT 63143-3023', '80121', '4', 'negative', '2021-01-19 00:38:59', '2021-06-13 21:29:13'),
(1964, 'hailey04@example.net', 'Laila Mosciski', 56, 'Other', '25561 Medhurst Square\nCalebside, SD 89632-7577', '80127', '5', 'positive', '2021-01-07 05:12:12', '2021-06-13 21:29:14'),
(1965, 'balistreri.lauren@example.net', 'Julie Hodkiewicz V', 51, 'Female', '173 Alf Island Suite 019\nProhaskaburgh, NV 66107', '80127', '5', 'negative', '2021-05-02 20:58:24', '2021-06-13 21:29:14'),
(1966, 'crist.antonietta@example.com', 'Dr. Elliot Mante V', 50, 'Other', '414 Hyatt Ridges\nWest Jedtown, CT 19021-8226', '80129', '2', 'positive', '2021-01-01 20:57:29', '2021-06-13 21:29:14'),
(1967, 'laron92@example.net', 'Lorine Herzog', 56, 'Male', '8931 Kurt Cliffs\nGilbertoport, AK 77394-2150', '80123', '3', 'negative', '2021-01-28 17:50:17', '2021-06-13 21:29:14'),
(1968, 'vernice29@example.com', 'Kennith Hagenes', 14, 'Female', '428 Kemmer Circle\nWest Cara, ND 77117-4418', '80124', '6', 'negative', '2021-02-19 17:36:50', '2021-06-13 21:29:14'),
(1969, 'maddison57@example.com', 'Rocio Maggio', 64, 'Female', '4364 Boyer Fields\nPort Bernhard, NM 42472', '80124', '2', 'incoclusive', '2021-04-30 17:43:53', '2021-06-13 21:29:14'),
(1970, 'cremin.cristina@example.net', 'Dr. Deontae Batz', 44, 'Female', '76967 Teresa Trail\nDemetrisburgh, AK 99028-4766', '80122', '5', 'incoclusive', '2021-04-10 08:59:34', '2021-06-13 21:29:14'),
(1971, 'slarson@example.net', 'Cydney Rolfson', 73, 'Male', '7868 Klein Keys\nNew Leslyburgh, TX 36692-2995', '80122', '9', 'positive', '2021-02-12 18:42:45', '2021-06-13 21:29:14'),
(1972, 'sschmidt@example.net', 'Ms. Stephanie Hoeger II', 35, 'Male', '737 Bruen Corner\nKovacekmouth, MT 87117-0811', '80129', '3', 'incoclusive', '2021-02-28 13:23:38', '2021-06-13 21:29:15'),
(1973, 'ileuschke@example.org', 'Dr. Noemy Zulauf', 35, 'Male', '127 D\'Amore Loop Apt. 563\nPort Norahaven, VT 53274-4781', '80120', '4', 'positive', '2021-06-01 22:04:31', '2021-06-13 21:29:15'),
(1974, 'ymraz@example.net', 'Napoleon Lowe', 21, 'Female', '897 Hoppe Roads\nKassandraburgh, MD 14914-2330', '80125', '9', 'negative', '2021-04-21 13:34:04', '2021-06-13 21:29:15'),
(1975, 'rturner@example.com', 'May Jacobs', 64, 'Other', '45070 Annamarie Rest\nDawnchester, NJ 35931-1024', '80121', '8', 'negative', '2021-03-15 21:48:38', '2021-06-13 21:29:15'),
(1976, 'margarett.mitchell@example.com', 'Serena Senger IV', 64, 'Other', '868 Nova Street\nEast Orland, MI 56581', '80122', '7', 'positive', '2021-04-22 11:05:58', '2021-06-13 21:29:15'),
(1977, 'frippin@example.net', 'Kirstin Lind', 64, 'Male', '88218 Bergnaum Way Suite 407\nGilbertochester, NC 33610', '80122', '9', 'incoclusive', '2021-03-21 21:35:17', '2021-06-13 21:29:15'),
(1978, 'hkoepp@example.com', 'Miss Kailee Batz', 29, 'Male', '96412 Salma Centers Apt. 194\nSouth Christophertown, ND 72427-3348', '80123', '7', 'positive', '2021-02-27 02:57:34', '2021-06-13 21:29:16'),
(1979, 'claudine33@example.net', 'Imogene Rutherford DDS', 33, 'Male', '571 Ruth Shore\nManteton, NC 93075-6424', '80128', '7', 'negative', '2021-02-23 14:50:11', '2021-06-13 21:29:16'),
(1980, 'dax38@example.com', 'Audra Schroeder', 85, 'Other', '5919 Ezra Road Suite 572\nNew Rey, SC 23112-6266', '80124', '8', 'incoclusive', '2021-01-12 04:34:04', '2021-06-13 21:29:16'),
(1981, 'gibson.antone@example.com', 'Prof. Adriel Watsica', 34, 'Female', '74643 Coralie Pike Suite 970\nChrisburgh, NC 48753', '80124', '3', 'negative', '2021-02-08 06:12:15', '2021-06-13 21:29:16'),
(1982, 'gusikowski.maximillian@example.net', 'Amya Hauck', 73, 'Female', '27640 Schumm Glen\nTrompfurt, NY 29906-8936', '80126', '5', 'negative', '2021-05-24 05:04:31', '2021-06-13 21:29:16'),
(1983, 'demarco.ritchie@example.net', 'Noemi West', 77, 'Male', '942 Williamson Station Suite 377\nLake Stefanberg, IL 73990', '80121', '7', 'incoclusive', '2021-01-16 14:14:51', '2021-06-13 21:29:16'),
(1984, 'fadel.haven@example.com', 'Anderson Terry', 41, 'Female', '739 Williamson Vista\nPort Gwendolyn, AK 95553', '80120', '9', 'incoclusive', '2021-05-21 03:55:34', '2021-06-13 21:29:17'),
(1985, 'eudora.mcdermott@example.org', 'Miss Ariane Heaney III', 58, 'Male', '7763 Margarete Loop Suite 624\nJuvenalburgh, GA 64222', '80129', '7', 'positive', '2021-02-13 02:53:40', '2021-06-13 21:29:17'),
(1986, 'brittany80@example.com', 'Michele Bosco', 16, 'Male', '76213 Considine Lakes Apt. 897\nEast Maude, NC 66642', '80129', '3', 'positive', '2021-05-21 08:18:35', '2021-06-13 21:29:17'),
(1987, 'cassandra.glover@example.com', 'Casper Kuvalis', 79, 'Female', '534 Yundt Mountain\nBarrettshire, LA 62307', '80129', '4', 'negative', '2021-04-05 06:16:56', '2021-06-13 21:29:17'),
(1988, 'giles74@example.net', 'Joaquin Williamson', 24, 'Other', '105 Von Ranch\nWest Lorenzohaven, GA 06534', '80121', '6', 'positive', '2021-03-02 19:58:10', '2021-06-13 21:29:17'),
(1989, 'ahmed25@example.org', 'Sienna Blanda', 63, 'Female', '3730 Easter Spur Apt. 032\nGoodwinstad, NY 14810', '80126', '4', 'incoclusive', '2021-05-06 20:20:01', '2021-06-13 21:29:18'),
(1990, 'nadia48@example.net', 'German Mante', 5, 'Other', '57325 Runolfsson Squares\nJimmieton, NY 34633-5711', '80127', '1', 'negative', '2021-01-16 16:42:06', '2021-06-13 21:29:18'),
(1991, 'annabelle.thompson@example.org', 'Davon Batz', 48, 'Other', '2779 Christa Burgs\nSmithammouth, AR 06994-1327', '80127', '3', 'negative', '2021-04-13 05:46:19', '2021-06-13 21:29:18'),
(1992, 'jadyn33@example.com', 'Mrs. Nella Kunze', 67, 'Female', '434 Sauer Burgs\nNew Kasandra, TN 35197', '80122', '1', 'incoclusive', '2021-01-04 09:23:45', '2021-06-13 21:29:18'),
(1993, 'lowe.retta@example.org', 'Mr. Guy Sawayn I', 47, 'Other', '189 Alfredo Greens\nNew Riley, NM 11786-5195', '80130', '10', 'incoclusive', '2021-03-25 11:30:26', '2021-06-13 21:29:18'),
(1994, 'kimberly59@example.org', 'Mrs. Hilma Lesch IV', 73, 'Other', '4610 Shayna Track\nLake Garnetberg, NC 77180-1407', '80121', '9', 'positive', '2021-06-08 21:04:59', '2021-06-13 21:29:18'),
(1995, 'borer.blair@example.org', 'Prof. Ned Brekke', 81, 'Female', '63975 Sporer Hollow Apt. 401\nSouth Santos, PA 25289-0020', '80126', '4', 'incoclusive', '2021-01-28 18:04:30', '2021-06-13 21:29:18'),
(1996, 'pkerluke@example.org', 'Cali Wintheiser', 32, 'Other', '170 Herzog Prairie Suite 377\nWest Mayrafort, SD 01142', '80128', '3', 'negative', '2021-02-28 11:10:10', '2021-06-13 21:29:18'),
(1997, 'oconn@example.net', 'Arden Gerlach PhD', 16, 'Female', '50418 Emely Vista\nRiceside, PA 01043', '80124', '8', 'incoclusive', '2021-05-30 00:17:02', '2021-06-13 21:29:18'),
(1998, 'johan.zulauf@example.net', 'Darrel Metz', 31, 'Other', '2285 Marquardt Junctions\nBoganberg, KY 12399-7071', '80122', '1', 'negative', '2021-05-27 06:34:03', '2021-06-13 21:29:18'),
(1999, 'kessler.nora@example.net', 'Mr. Lexus Wolf I', 65, 'Female', '181 Karli Unions Suite 825\nWest Blairland, AL 60053-9444', '80120', '9', 'positive', '2021-01-02 16:01:34', '2021-06-13 21:29:19'),
(2000, 'metz.sven@example.org', 'Emery Roberts', 2, 'Female', '7993 Salvatore Viaduct Suite 068\nNameton, NE 43437', '80128', '3', 'positive', '2021-03-22 21:41:07', '2021-06-13 21:29:19'),
(2001, 'nola.hayes@example.org', 'Crystal Lind', 26, 'Other', '6600 Ullrich Crescent\nKiehnland, VA 94561-7703', '80124', '5', 'negative', '2021-06-11 07:28:40', '2021-06-13 21:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `ttn_codes`
--

CREATE TABLE `ttn_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ttn_codes`
--

INSERT INTO `ttn_codes` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'MM2874Z6', '2021-06-04 22:10:15', '2021-06-04 22:10:15'),
(2, 'FEQQ6UUG', '2021-06-04 22:10:15', '2021-06-04 22:10:15'),
(3, '34GC829B', '2021-06-04 22:10:16', '2021-06-04 22:10:16'),
(4, 'CB8FBCCM', '2021-06-04 22:10:16', '2021-06-04 22:10:16'),
(5, '8RL4ENTK', '2021-06-04 22:10:16', '2021-06-04 22:10:16'),
(6, '57UBS5J6', '2021-06-04 22:10:16', '2021-06-04 22:10:16'),
(7, '4F7YKH9G', '2021-06-04 22:10:16', '2021-06-04 22:10:16'),
(8, 'R9KZ2NXL', '2021-06-04 22:10:16', '2021-06-04 22:10:16'),
(9, 'YBQUVXHL', '2021-06-04 22:10:17', '2021-06-04 22:10:17'),
(10, 'CCZTQ8KW', '2021-06-04 22:10:17', '2021-06-04 22:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `card_brand`, `card_last_four`, `trial_ends_at`, `avatar`, `is_admin`, `deleted_at`, `created_at`, `updated_at`, `stripe_id`) VALUES
(1, 'admin', 'oconner.jolie@example.com', '2021-06-04 22:10:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2KDQnS7KTE', NULL, NULL, NULL, NULL, 1, NULL, '2021-06-04 22:10:17', '2021-06-04 22:10:17', NULL),
(2, 'Annette Jacobs', 'stehr.lea@example.org', '2021-06-04 22:10:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X2VLKGlCwh', NULL, NULL, NULL, NULL, 1, NULL, '2021-06-04 22:10:17', '2021-06-04 22:10:17', NULL),
(3, 'Mr. Garrick Ledner', 'cecil.mitchell@example.org', '2021-06-04 22:10:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3GNAkIgRYf', NULL, NULL, NULL, NULL, 0, NULL, '2021-06-04 22:10:17', '2021-06-04 22:10:17', NULL),
(4, 'Prof. Lenny Herman', 'murl.moen@example.org', '2021-06-04 22:10:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mpFJP4oxwa', NULL, NULL, NULL, NULL, 0, NULL, '2021-06-04 22:10:17', '2021-06-04 22:10:17', NULL),
(5, 'Daphney Macejkovic', 'rosalia81@example.net', '2021-06-04 22:10:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hz7TLSnfqg', NULL, NULL, NULL, NULL, 0, NULL, '2021-06-04 22:10:17', '2021-06-04 22:10:17', NULL),
(6, 'Mrs. Laurie Streich DDS', 'cortney.volkman@example.org', '2021-06-04 22:10:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eNBjoQDmt0', NULL, NULL, NULL, NULL, 0, NULL, '2021-06-04 22:10:17', '2021-06-04 22:10:17', NULL),
(7, 'Mr. Kevin Howe DVM', 'callie.stoltenberg@example.com', '2021-06-04 22:10:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dvNotQ8jzQ', NULL, NULL, NULL, NULL, 0, NULL, '2021-06-04 22:10:17', '2021-06-04 22:10:17', NULL),
(8, 'Frederique Kovacek', 'lukas89@example.com', '2021-06-04 22:10:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9bVHLTST8w', NULL, NULL, NULL, NULL, 0, NULL, '2021-06-04 22:10:17', '2021-06-04 22:10:17', NULL),
(9, 'Cade Doyle', 'deckow.caterina@example.net', '2021-06-04 22:10:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CnwObfZW3T', NULL, NULL, NULL, NULL, 0, NULL, '2021-06-04 22:10:18', '2021-06-04 22:10:18', NULL),
(10, 'Julianne Ebert', 'runolfsdottir.antoinette@example.com', '2021-06-04 22:10:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cabJqiM8Zj', NULL, NULL, NULL, NULL, 0, NULL, '2021-06-04 22:10:18', '2021-06-04 22:10:18', NULL),
(11, 'Pk Nuek', 'pknuek@gmail.com', NULL, '$2y$10$MPO1VYA2rpGurScjH3I9uOEM10VYtXk.8q4Htvf3XERYnve1504qy', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-06 14:37:55', '2021-06-06 14:37:55', NULL),
(12, 'John Doe', 'john.doe@gmail.com', NULL, '$2y$10$q5nL.QjimZTuOmMKghRPseX5Ty6F9T5OYgWKbFf/gzS..k7dDAWcy', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-06 14:57:23', '2021-06-06 14:57:23', NULL),
(13, 'd', 'd@f', NULL, '$2y$10$7/g5boka0NFAiXBnmrxb7OqreITX0iFuJRXHLhPbzp5qxh5D858eq', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-06 15:28:00', '2021-06-06 15:28:00', NULL),
(14, 'dddd', 'ddd@gmail.com', NULL, '$2y$10$9aLRqVWU9Cf1Pxgp4RRZUuuTtkkdf9aM.mXBO182nTAyFiqs819wy', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-06 15:33:56', '2021-06-06 15:33:56', NULL),
(15, 'User 305', 'user.305@gmail.com', NULL, '$2y$10$zOZwP1IomvXJnyKfog038uR4FaJHlzlWGavrWMkSV9RnxvSdR8/1y', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-06 15:35:13', '2021-06-06 15:35:13', NULL),
(16, 'userK', 'pknuek.2@gmail.com', NULL, '$2y$10$lDG7NTG/RbcLrnX1MO6S0O8FkfSTMOA3XhjsUThBr2SvvDD22r.2u', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-06 15:48:32', '2021-06-06 15:48:32', NULL),
(17, 'User Blur', 'user.blur@gmail.com', NULL, '$2y$10$/kPOws3awxk3M5mp2sUmuOnshFmr5MJg0E075tk/6ku0nBB9DYOTS', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-07 03:07:48', '2021-06-07 03:07:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `test_results`
--
ALTER TABLE `test_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttn_codes`
--
ALTER TABLE `ttn_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_results`
--
ALTER TABLE `test_results`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2002;

--
-- AUTO_INCREMENT for table `ttn_codes`
--
ALTER TABLE `ttn_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
