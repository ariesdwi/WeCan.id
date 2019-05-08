-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 08 Bulan Mei 2019 pada 17.18
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weCann`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_26_171418_create_table_categoriess', 1),
(4, '2019_04_26_172057_create_table_artikel', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_artikel`
--

CREATE TABLE `table_artikel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_artikel`
--

INSERT INTO `table_artikel` (`id`, `judul`, `body`, `gambar`, `kategori_id`, `created_at`, `updated_at`) VALUES
(13, 'honda-new-cbr-150', 'Lorem ipsum dolor sit amet, elaboraret efficiendi scribentur ea nec, ne est nullam populo quaerendum. Mea paulo mollis id. Quod minimum mediocritatem vix id. An ius ludus propriae, per eu latine oportere suavitate, has commodo malorum habemus an. Et magna iuvaret posidonium pri. Consequat contentiones in nam.\r\n\r\nDoctus patrioque at eos, et movet libris iriure qui, quo ei minimum facilisi appellantur. Per paulo possit deleniti cu, aeque ponderum scribentur sea ea. Soleat voluptatibus ex qui, qui ut nulla maluisset. Aperiam mediocrem cu vix. Placerat maluisset ex cum, eum an tota dicam dicant.', 'artikel/tNAQSRbekOcChpXJ09vYNFE5ycKMJLjyJetP7MmW.jpeg', 24, '2019-05-05 10:40:28', '2019-05-07 10:41:51'),
(15, 'ninja-250cc-white', 'Lorem ipsum dolor sit amet, elaboraret efficiendi scribentur ea nec, ne est nullam populo quaerendum. Mea paulo mollis id. Quod minimum mediocritatem vix id. An ius ludus propriae, per eu latine oportere suavitate, has commodo malorum habemus an. Et magna iuvaret posidonium pri. Consequat contentiones in nam.\r\n\r\nDoctus patrioque at eos, et movet libris iriure qui, quo ei minimum facilisi appellantur. Per paulo possit deleniti cu, aeque ponderum scribentur sea ea. Soleat voluptatibus ex qui, qui ut nulla maluisset. Aperiam mediocrem cu vix. Placerat maluisset ex cum, eum an tota dicam dicant.', 'artikel/l1W9mG3JV9A7qWia3jY70bBUwZqPHrXaR1kUPXfK.jpeg', 23, '2019-05-05 10:41:58', '2019-05-07 10:41:04'),
(16, 'yamaha-new-fino-150', 'Lorem ipsum dolor sit amet, elaboraret efficiendi scribentur ea nec, ne est nullam populo quaerendum. Mea paulo mollis id. Quod minimum mediocritatem vix id. An ius ludus propriae, per eu latine oportere suavitate, has commodo malorum habemus an. Et magna iuvaret posidonium pri. Consequat contentiones in nam.\r\n\r\nDoctus patrioque at eos, et movet libris iriure qui, quo ei minimum facilisi appellantur. Per paulo possit deleniti cu, aeque ponderum scribentur sea ea. Soleat voluptatibus ex qui, qui ut nulla maluisset. Aperiam mediocrem cu vix. Placerat maluisset ex cum, eum an tota dicam dicant.', 'artikel/2FkXSSFn2RNggyJNRKlbNHMmvnXZzx1eP6bL387y.jpeg', 25, '2019-05-05 10:42:46', '2019-05-07 10:40:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_categoriess`
--

CREATE TABLE `table_categoriess` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_categoriess`
--

INSERT INTO `table_categoriess` (`id`, `nama_kategori`, `slug`, `created_at`, `updated_at`) VALUES
(23, 'Kawasaki', 'kawasaki', '2019-05-05 10:38:01', '2019-05-07 10:36:14'),
(24, 'Honda', 'honda', '2019-05-05 10:38:13', '2019-05-07 10:35:58'),
(25, 'Yamaha', 'yamaha', '2019-05-05 10:38:31', '2019-05-07 10:35:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ariess', 'ariess@gmail.com', NULL, '$2y$10$e.fasacP6B/Z9Ds7.31rK.D0qTYHvy/VW4yR51NcCrw2ptrvt8rrS', NULL, '2019-05-04 07:15:15', '2019-05-04 07:15:15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `table_artikel`
--
ALTER TABLE `table_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_artikel_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `table_categoriess`
--
ALTER TABLE `table_categoriess`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `table_artikel`
--
ALTER TABLE `table_artikel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `table_categoriess`
--
ALTER TABLE `table_categoriess`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `table_artikel`
--
ALTER TABLE `table_artikel`
  ADD CONSTRAINT `table_artikel_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `table_categoriess` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
