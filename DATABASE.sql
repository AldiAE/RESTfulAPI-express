-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Des 2020 pada 04.50
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lumen_api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cityName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `cityName`, `country`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Kota Ponorogo', 'Indonesia', 'Kota Ponorogo adalah bagian dari  negara Indonesia', '2020-11-21 17:00:00', '2020-11-22 08:06:09'),
(2, 'Kab Pacitan', 'Indonesia', 'Kota Pacitan adalah bagian dari negara Indonesia', '2020-11-21 17:00:00', '2020-11-22 08:06:37'),
(3, 'Kab Magetan', 'Indonesia', 'Kota Magetan adalah bagian dari negara Indonesia', '2020-11-22 08:15:23', '2020-11-22 08:30:56'),
(4, 'Kab Ngawi', 'Indonesia', 'Kota Ngawi adalah bagian dari negara Indonesia', '2020-11-22 17:00:00', '2020-11-22 17:00:00'),
(5, 'Kab Magelang', 'Indonesia', 'Kota Magelang adalah bagian dari negara Indonesia', '2020-11-24 17:00:00', '2020-11-24 17:00:00'),
(6, 'Kab Madiun', 'Indonesia', 'Kota Madiun adalah bagian dari negara Indonesia', '2020-11-24 22:23:53', '2020-11-24 22:25:00'),
(7, 'Kab Bojonegoro', 'Indonesia', 'Kota Bojonegoro adalah bagian dari negara Indonesia', '2020-11-24 22:26:19', '2020-11-24 22:26:19'),
(8, 'Kab Nganjuk', 'Indonesia', 'Kota Nganjuk adalah bagian dari negara Indonesia', '2020-11-24 22:27:18', '2020-11-24 22:27:18'),
(9, 'Kab Kediri', 'Indonesia', 'Kota Kediri adalah bagian dari negara Indonesia', '2020-11-24 22:27:46', '2020-11-24 22:27:46'),
(10, 'Kab Trenggalek', 'Indonesia', 'Kota Trenggalek adalah bagian dari negara Indonesia', '2020-11-24 22:28:22', '2020-11-24 22:28:22'),
(11, 'Kab Tulungagung', 'Indonesia', 'Kota Tulungagung adalah bagian dari negara Indonesia', '2020-11-24 22:29:09', '2020-11-24 22:29:09'),
(12, 'Kab Jombang', 'Indonesia', 'Kota Jombang adalah bagian dari negara Indonesia', '2020-11-24 22:29:32', '2020-11-24 22:29:32'),
(13, 'Kab Sidoarjo', 'Indonesia', 'Kota Sidoarjo adalah bagian dari negara Indonesia', '2020-11-24 22:30:08', '2020-11-24 22:30:08'),
(14, 'Kab Surabaya', 'Indonesia', 'Kota Surabaya adalah bagian dari negara Indonesia', '2020-11-24 22:30:28', '2020-11-24 22:30:28'),
(15, 'Kab Wonogiri', 'Indonesia', 'Kota Wonogiri adalah bagian dari negara Indonesia', '2020-11-24 22:30:51', '2020-11-24 22:30:51'),
(16, 'Kab Sukoharjo', 'Indonesia', 'Kota Sukoharjo adalah bagian dari negara Indonesia', '2020-11-24 22:31:14', '2020-11-24 22:31:14'),
(17, 'Kab Solo', 'Indonesia', 'Kota Solo adalah bagian dari negara Indonesia', '2020-11-24 22:31:39', '2020-11-24 22:31:39'),
(18, 'Kab Yogyakarta', 'Indonesia', 'Kota Yogyakarta adalah bagian dari negara Indonesia', '2020-11-24 22:32:04', '2020-11-24 22:32:04'),
(19, 'Kab Boyolali', 'Indonesia', 'Kota Boyolali adalah bagian dari negara Indonesia', '2020-11-24 22:32:39', '2020-11-24 22:32:39'),
(20, 'Kab Sragen', 'Indonesia', 'Kota Sragen adalah bagian dari negara Indonesia', '2020-11-24 22:32:59', '2020-11-24 22:32:59'),
(21, 'Kab Malang', 'Indonesia', 'Kota Malang adalah bagian dari negara Indonesia', '2020-11-24 22:33:23', '2020-11-24 22:33:23'),
(22, 'Kab Blora', 'Indonesia', 'Kota Blora adalah bagian dari negara Indonesia', '2020-11-24 22:37:57', '2020-11-24 23:02:01'),
(23, 'Kab Semarang', 'Indonesia', 'Kota Semarang adalah bagian dari negara Indonesia', '2020-11-24 22:40:39', '2020-11-24 22:40:39'),
(24, 'Kab Mojokerto', 'Indonesia', 'Kota Mojokerto adalah bagian dari negara Indonesia', '2020-11-24 22:41:19', '2020-11-24 22:41:19'),
(25, 'Kab Jember', 'Indonesia', 'Kota Jember adalah bagian dari negara Indonesia', '2020-11-24 22:42:24', '2020-11-24 22:42:24'),
(26, 'Kab Karanganyar', 'Indonesia', 'Kota Karanganyar adalah bagian dari negara Indonesia', '2020-11-25 07:19:02', '2020-11-25 07:20:03'),
(27, 'Kab Klaten', 'Indonesia', 'Kota Klaten adalah bagian dari negara Indonesia', '2020-11-25 07:21:49', '2020-11-25 07:21:49'),
(28, 'Kab Madura', 'Indonesia', 'Kota Madura adalah bagian dari negara Indonesia', '2020-12-04 17:00:00', '2020-12-04 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_11_16_222718_create_posts_table', 1),
(2, '2020_11_22_072552_create_cities_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'lumen laravel restapi 2', 'test konten lumen laravel 2', '2020-11-17 17:00:00', '2020-11-16 23:33:40'),
(2, 'lumen laravel restapi 3', 'test konten lumen laravel 3', '2020-11-16 23:31:00', '2020-11-16 23:34:08'),
(3, 'paham restapi pake nodejs', 'mari memahami nodejs express rest api', '2020-11-21 17:00:00', '2020-11-22 17:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
