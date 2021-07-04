-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2021 at 12:07 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clients`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textContent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `textContent`, `created_at`, `updated_at`) VALUES
(1, 'dsfsdf', 'sdfsdfsdf@asasd', 'sdsdfsdf', '2021-07-04 08:33:45', '2021-07-04 08:33:45'),
(2, 'Karol', 'loremipsum@lorem.com', 'lorem', '2021-07-04 08:34:05', '2021-07-04 08:34:05'),
(3, 'Maciej', NULL, 'sadfkjngsd', '2021-07-04 08:35:54', '2021-07-04 08:35:54'),
(4, 'Rafał', 'asdfds@casd.com', 'asdjkmgdf', '2021-07-04 08:38:02', '2021-07-04 08:38:02'),
(5, 'Mateusz', 'sdfkl@sd.com', 'lorem impusm', '2021-07-04 08:38:25', '2021-07-04 08:38:25'),
(6, 'Adrian', NULL, 'asdlkgfdgfd', '2021-07-04 08:38:32', '2021-07-04 08:38:32'),
(7, 'Karolina', NULL, 'aadssegg', '2021-07-04 09:24:54', '2021-07-04 09:24:54'),
(8, 'asasdsad', NULL, 'adsasdasd', '2021-07-04 19:47:16', '2021-07-04 19:47:16'),
(9, 'Paweł', NULL, 'adslkgghtr', '2021-07-04 19:47:37', '2021-07-04 19:47:37'),
(10, 'Anastazja', NULL, 'asdasassad', '2021-07-04 19:47:49', '2021-07-04 19:47:49'),
(11, 'Eugeniusz', 'egu.2@wp.pl', 'sdasdasdasd', '2021-07-04 19:48:19', '2021-07-04 19:48:19'),
(12, 'test2', NULL, 'asdsadsasa', '2021-07-04 19:48:28', '2021-07-04 19:48:28'),
(13, 'test3', NULL, 'asdasdas', '2021-07-04 19:48:31', '2021-07-04 19:48:31'),
(14, 'test4', NULL, 'asdasdasd', '2021-07-04 19:48:38', '2021-07-04 19:48:38'),
(15, 'test5', NULL, 'adsasdasd', '2021-07-04 19:48:42', '2021-07-04 19:48:42'),
(16, 'test6', NULL, 'sdaasdasdasd', '2021-07-04 19:48:48', '2021-07-04 19:48:48'),
(17, 'test7', NULL, 'asdasdasdasd', '2021-07-04 19:48:52', '2021-07-04 19:48:52'),
(18, 'Natasza', NULL, 'adsasdasdasd', '2021-07-04 19:49:12', '2021-07-04 19:49:12'),
(19, 'Zenon', NULL, 'dfshdfhfdshfds', '2021-07-04 19:49:17', '2021-07-04 19:49:17'),
(20, 'Sara', 'asdasfdgs@o2.pl', 'dshfdhjrert', '2021-07-04 19:49:28', '2021-07-04 19:49:28'),
(21, 'Gabriel', 'gabv@wp.pl', 'sfadfdsafdas', '2021-07-04 19:49:38', '2021-07-04 19:49:38'),
(22, 'Cyprian', 'sdaflasd@gmail.com', 'hds345yhfh', '2021-07-04 19:49:52', '2021-07-04 19:49:52'),
(23, 'Daria', 'dar@yahoo.com', 'dfshhdsfhfdsh', '2021-07-04 19:50:05', '2021-07-04 19:50:05'),
(24, 'Iga', 'sdag@gmail.com', 'sdgaggfdfdgssdfgsgf', '2021-07-04 19:50:15', '2021-07-04 19:50:15'),
(25, 'Roksana', 'rok@wp.pl', 'dsfadsfafds', '2021-07-04 19:50:32', '2021-07-04 19:50:32'),
(26, 'Czesław', NULL, 'sdaggdsagsda', '2021-07-04 19:51:42', '2021-07-04 19:51:42'),
(27, 'Krystian', 'Krystian@pp.pl', 'assdaadsasd', '2021-07-04 19:52:50', '2021-07-04 19:52:50'),
(28, 'Henryk', 'Henryk@pp.pl', 'asdasdasdasd', '2021-07-04 19:52:59', '2021-07-04 19:52:59'),
(29, 'Maciej', 'Maciej@wp.pl', 'adsadsasdas', '2021-07-04 19:56:31', '2021-07-04 19:56:31'),
(30, 'Zdzisław', 'Zdzislaw@wp.pl', 'dasasdasdasd', '2021-07-04 19:56:45', '2021-07-04 19:56:45'),
(31, 'Oliwia', 'Oliwia@wp.pl', 'asdasdasdsadasd', '2021-07-04 19:56:54', '2021-07-04 19:56:54'),
(32, 'Renata', 'Renata@wp.pl', 'adssadasdasd', '2021-07-04 19:57:09', '2021-07-04 19:57:09'),
(33, 'Jolanta', 'Jolanta@wp.pl', 'asdasdasdasd', '2021-07-04 19:57:19', '2021-07-04 19:57:19'),
(34, 'Hubert', 'Hubert@wp.pl', 'sadsadasdasd', '2021-07-04 19:57:28', '2021-07-04 19:57:28'),
(35, 'Maria', 'Maria@wp.pl', 'asasdasdasdsa', '2021-07-04 19:57:36', '2021-07-04 19:57:36'),
(36, 'Julita', NULL, 'asdjnksadkjnlsad', '2021-07-04 19:57:47', '2021-07-04 19:57:47'),
(37, 'Julita', 'Julita@wp.pl', 'asdasdasddsa', '2021-07-04 20:05:27', '2021-07-04 20:05:27'),
(38, 'Julita3', 'asda@wp.pl', 'sdfafsdf', '2021-07-04 20:05:39', '2021-07-04 20:05:39'),
(39, 'Tomasz', 'Tomasz@gmail.com', 'asdasdasdas', '2021-07-04 20:06:04', '2021-07-04 20:06:04');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_07_03_205609_clients', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
