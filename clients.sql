-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Lip 2021, 16:09
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `clients`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textContent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `textContent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dsfsdf', 'sdfsdfsdf@asasd', 'sdsdfsdf', 1, '2021-07-04 08:33:45', '2021-07-04 08:33:45'),
(2, 'Karol', 'loremipsum@lorem.com', 'lorem', 1, '2021-07-04 08:34:05', '2021-07-04 08:34:05'),
(3, 'Maciej', NULL, 'sadfkjngsd', 1, '2021-07-04 08:35:54', '2021-07-04 08:35:54'),
(4, 'Rafał', 'asdfds@casd.com', 'asdjkmgdf', 1, '2021-07-04 08:38:02', '2021-07-04 08:38:02'),
(5, 'Mateusz', 'sdfkl@sd.com', 'lorem impusm', 1, '2021-07-04 08:38:25', '2021-07-04 08:38:25'),
(6, 'Adrian', NULL, 'asdlkgfdgfd', 1, '2021-07-04 08:38:32', '2021-07-04 08:38:32'),
(7, 'Karolina', NULL, 'aadssegg', 1, '2021-07-04 09:24:54', '2021-07-04 09:24:54'),
(8, 'asasdsad', NULL, 'adsasdasd', 1, '2021-07-04 19:47:16', '2021-07-04 19:47:16'),
(9, 'Paweł', NULL, 'adslkgghtr', 1, '2021-07-04 19:47:37', '2021-07-04 19:47:37'),
(10, 'Anastazja', NULL, 'asdasassad', 1, '2021-07-04 19:47:49', '2021-07-04 19:47:49'),
(11, 'Eugeniusz', 'egu.2@wp.pl', 'sdasdasdasd', 1, '2021-07-04 19:48:19', '2021-07-04 19:48:19'),
(12, 'test2', NULL, 'asdsadsasa', 1, '2021-07-04 19:48:28', '2021-07-04 19:48:28'),
(13, 'test3', NULL, 'asdasdas', 1, '2021-07-04 19:48:31', '2021-07-04 19:48:31'),
(14, 'test4', NULL, 'asdasdasd', 1, '2021-07-04 19:48:38', '2021-07-04 19:48:38'),
(15, 'test5', NULL, 'adsasdasd', 1, '2021-07-04 19:48:42', '2021-07-04 19:48:42'),
(16, 'test6', NULL, 'sdaasdasdasd', 1, '2021-07-04 19:48:48', '2021-07-04 19:48:48'),
(17, 'test7', NULL, 'asdasdasdasd', 1, '2021-07-04 19:48:52', '2021-07-04 19:48:52'),
(18, 'Natasza', NULL, 'adsasdasdasd', 1, '2021-07-04 19:49:12', '2021-07-04 19:49:12'),
(19, 'Zenon', NULL, 'dfshdfhfdshfds', 1, '2021-07-04 19:49:17', '2021-07-04 19:49:17'),
(20, 'Sara', 'asdasfdgs@o2.pl', 'dshfdhjrert', 1, '2021-07-04 19:49:28', '2021-07-04 19:49:28'),
(21, 'Gabriel', 'gabv@wp.pl', 'sfadfdsafdas', 1, '2021-07-04 19:49:38', '2021-07-04 19:49:38'),
(22, 'Cyprian', 'sdaflasd@gmail.com', 'hds345yhfh', 1, '2021-07-04 19:49:52', '2021-07-04 19:49:52'),
(23, 'Daria', 'dar@yahoo.com', 'dfshhdsfhfdsh', 1, '2021-07-04 19:50:05', '2021-07-04 19:50:05'),
(24, 'Iga', 'sdag@gmail.com', 'sdgaggfdfdgssdfgsgf', 1, '2021-07-04 19:50:15', '2021-07-04 19:50:15'),
(25, 'Roksana', 'rok@wp.pl', 'dsfadsfafds', 1, '2021-07-04 19:50:32', '2021-07-04 19:50:32'),
(26, 'Czesław', NULL, 'sdaggdsagsda', 1, '2021-07-04 19:51:42', '2021-07-04 19:51:42'),
(27, 'Krystian', 'Krystian@pp.pl', 'assdaadsasd', 1, '2021-07-04 19:52:50', '2021-07-07 11:58:48'),
(32, 'Renata', 'Renata@wp.pl', 'adssadasdasd', -1, '2021-07-04 19:57:09', '2021-07-07 12:01:04'),
(33, 'Jolanta', 'Jolanta@wp.pl', 'asdasdasdasd', -1, '2021-07-04 19:57:19', '2021-07-07 11:55:32');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
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
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_07_03_205609_clients', 1),
(8, '2021_07_07_074255_reports', 2),
(9, '2021_07_07_094346_login_panel', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_client` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `reports`
--

INSERT INTO `reports` (`id`, `id_client`, `description`, `created_at`, `updated_at`) VALUES
(1, 38, 'dadaa', '2021-07-07 09:11:31', '2021-07-07 09:11:31'),
(2, 39, 'aad', '2021-07-07 10:40:04', '2021-07-07 10:40:04'),
(3, 36, 'aasdasdsad', '2021-07-07 10:40:08', '2021-07-07 10:40:08'),
(4, 35, 'aasdasdsda', '2021-07-07 10:40:12', '2021-07-07 10:40:12'),
(5, 34, 'ffghgf', '2021-07-07 11:33:39', '2021-07-07 11:33:39'),
(6, 36, 'gfgf', '2021-07-07 11:49:32', '2021-07-07 11:49:32'),
(7, 39, 'fgfdgdfgfdg', '2021-07-07 11:49:37', '2021-07-07 11:49:37'),
(8, 34, 'dgdfggdf', '2021-07-07 11:52:06', '2021-07-07 11:52:06'),
(9, 33, 'sddfs', '2021-07-07 11:55:32', '2021-07-07 11:55:32'),
(10, 31, 'sfsdfs', '2021-07-07 11:55:36', '2021-07-07 11:55:36'),
(11, 29, 'ssdfsdfsdfs', '2021-07-07 11:55:40', '2021-07-07 11:55:40'),
(12, 30, 'ssdfssfsfsf', '2021-07-07 11:55:44', '2021-07-07 11:55:44'),
(13, 28, 'gddfgfdgd', '2021-07-07 11:58:34', '2021-07-07 11:58:34'),
(14, 27, 'gdfgfdgd', '2021-07-07 11:58:37', '2021-07-07 11:58:37'),
(15, 32, 'xcgsgsdgsd', '2021-07-07 12:01:04', '2021-07-07 12:01:04');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'pawelkot898@gmail.com', '$2y$10$LyJBgtRWsDWJ4jTFlY/CtOW/pJcQo7.MaQtPH/dkBC.5rNdxuszty', NULL, NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`) USING HASH;

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
