-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2018 at 05:18 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.1.24-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_db`
--

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
(1, '2018_11_21_073418_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('12512a83-47fb-4050-826e-cba6ea97f23c', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 04:30:11', '2018-11-22 04:07:31', '2018-11-22 04:30:11'),
('13529225-df1f-4317-83b0-9a7e9499c83a', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 04:30:11', '2018-11-22 04:04:43', '2018-11-22 04:30:11'),
('2d56d64e-af88-4e1a-bf77-9402b4e8f7f9', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 04:30:11', '2018-11-22 04:21:21', '2018-11-22 04:30:11'),
('3b75f3c4-e381-41b9-875f-e4def5755b86', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 04:30:11', '2018-11-22 04:16:10', '2018-11-22 04:30:11'),
('494ba061-287e-494c-ac39-76486e02e513', 'App\\Notifications\\Seller', 'App\\User', 23, '{"data":"a:3:{s:4:\\"name\\";s:6:\\"Rajesh\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', NULL, '2018-11-22 04:17:11', '2018-11-22 04:17:11'),
('4f9b9dad-9199-46fa-9a37-92ecab2343f7', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 04:30:11', '2018-11-22 04:15:41', '2018-11-22 04:30:11'),
('51302a31-11a8-4830-a580-7deff1b29042', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 04:30:11', '2018-11-22 04:04:55', '2018-11-22 04:30:11'),
('66947c09-9829-4d7c-aaf7-5091c6653d35', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 04:30:11', '2018-11-22 04:21:34', '2018-11-22 04:30:11'),
('7c4fcbe2-408b-443c-8690-f40009251118', 'App\\Notifications\\Seller', 'App\\User', 23, '{"data":"a:3:{s:4:\\"name\\";s:6:\\"Rajesh\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', NULL, '2018-11-22 04:16:49', '2018-11-22 04:16:49'),
('866a4d79-aff2-476a-99b7-930816054baf', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 03:15:12', '2018-11-22 02:10:31', '2018-11-22 03:15:12'),
('8c50f3bb-8595-455a-9c4d-8ad8ac1aceba', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 03:15:21', '2018-11-22 03:15:20', '2018-11-22 03:15:21'),
('a7d6843d-1528-48a9-8bfa-e0aad5ee1678', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 03:15:32', '2018-11-22 03:15:30', '2018-11-22 03:15:32'),
('a805bc3c-4277-48f9-ace7-f86c5cc5ef4f', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 04:30:11', '2018-11-22 04:07:11', '2018-11-22 04:30:11'),
('b4072922-9b63-48f5-884d-00136443209c', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 04:30:11', '2018-11-22 04:05:17', '2018-11-22 04:30:11'),
('d27861bb-d05f-48dc-a455-55aacdba0f19', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 04:30:11', '2018-11-22 04:06:15', '2018-11-22 04:30:11'),
('f30a7128-38bf-4f31-a8e5-18ea522dd8fd', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 04:30:11', '2018-11-22 04:17:20', '2018-11-22 04:30:11'),
('f35d12b7-6339-4242-887b-af57cbeca992', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 04:30:11', '2018-11-22 04:06:50', '2018-11-22 04:30:11'),
('f759b3a3-3355-43cf-b572-5a417bfa53b7', 'App\\Notifications\\Seller', 'App\\User', 22, '{"data":"a:3:{s:4:\\"name\\";s:7:\\"pradeep\\";s:4:\\"body\\";s:16:\\"This is new Body\\";s:10:\\"attachment\\";s:53:\\"http:\\/\\/localhost\\/blogServer\\/public\\/storage\\/people.pdf\\";}"}', '2018-11-22 03:15:12', '2018-11-22 02:10:24', '2018-11-22 03:15:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
