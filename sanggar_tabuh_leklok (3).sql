-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 17 Des 2024 pada 10.25
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanggar_tabuh_leklok`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `course`
--

CREATE TABLE `course` (
  `id_course` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `start_day` varchar(255) NOT NULL,
  `end_day` varchar(255) NOT NULL,
  `start_hour` time NOT NULL,
  `end_hour` time NOT NULL,
  `additional` text NOT NULL,
  `photo` text NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `course`
--

INSERT INTO `course` (`id_course`, `id_user`, `name`, `start_day`, `end_day`, `start_hour`, `end_hour`, `additional`, `photo`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, NULL, 'Mekendang jauk manis', 'Senin', 'Jumat', '10:00:00', '12:00:00', 'undefined', '1733637205_Screenshot_(1).png', '2024-12-08 05:53:25', 'admin', '2024-12-08 05:53:25', 'admin'),
(2, NULL, 'Mekendang barong', 'Senin', 'Selasa', '10:00:00', '13:00:00', 'bawa kendang', '1733637467_Screenshot_(38).png', '2024-12-08 09:46:28', 'admin', '2024-12-08 09:46:28', 'admin'),
(5, NULL, 'Mekendang Tunggal', 'Senin', 'Kamis', '21:50:00', '00:50:00', 'Harus berpakaian adat madia', '1734267027_1_home.png', '2024-12-15 12:50:27', 'admin', '2024-12-15 12:50:27', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `link` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `link`, `created_at`, `updated_at`) VALUES
(3, '1733490871_Screenshot_(2).png', '2024-12-06 13:14:31', '2024-12-06 13:14:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('laksminirmaladewii@gmail.com', 'ncaoNR0Bl59OzWCwYOcfVmlAiZhS2CcKmR6Ah4PgNoVrrvDLBwN8I9KIQHwH', '2024-12-15 04:33:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz`
--

CREATE TABLE `quiz` (
  `id_quiz` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `question` text NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`)),
  `answer` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `quiz`
--

INSERT INTO `quiz` (`id_quiz`, `id_user`, `question`, `options`, `answer`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, NULL, 'Daun kelapa berwarna?', '{\"A\": \"Merah\", \"B\": \"Kuning\", \"C\": \"Hijau\", \"D\": \"Biru\"}', 'C', '2024-11-29 13:38:59', 'admin', '2024-12-02 13:49:17', 'admin', NULL, NULL),
(2, NULL, 'Kelapa apa yang paling enak?', '{\"A\": \"Kelapa muda\", \"B\": \"Kepala sekolah\", \"C\": \"Kelapa gen\", \"D\": \"Kelapa aja\"}', 'A', '2024-12-01 08:38:35', 'admin', '2024-12-01 08:38:35', 'admin', NULL, NULL),
(3, NULL, 'Durian musangking dari negara apa?', '{\"A\": \"India\", \"B\": \"Malaysia\", \"C\": \"Indonesia\", \"D\": \"Malaysia\"}', 'B', '2024-12-01 11:29:08', 'admin', '2024-12-01 13:13:48', 'admin', NULL, NULL),
(4, NULL, 'Sumping makanan khas?', '{\"A\": \"asas\", \"B\": \"Bali\", \"C\": \"asas\", \"D\": \"asasa\"}', 'B', '2024-12-01 13:06:55', 'admin', '2024-12-01 13:11:27', 'admin', NULL, NULL),
(5, NULL, 'Tari jauk manis dari?', '{\"A\": \"Sumbawa\", \"B\": \"Jawa\", \"C\": \"Papua\", \"D\": \"Aceh\", \"E\": \"Bali\"}', 'E', '2024-12-01 13:13:07', 'admin', '2024-12-01 13:52:25', 'admin', '2024-12-01 13:52:25', NULL),
(6, NULL, 'Dimana sanggar tabuh leklok berada?', '{\"A\":\"Tabanan\",\"B\":\"Klungkung\",\"C\":\"Bangli\",\"D\":\"Buleleng\",\"E\":\"Karangasem\"}', 'B', '2024-12-02 12:17:49', 'admin', '2024-12-15 12:43:05', 'admin', NULL, NULL),
(7, NULL, 'Budi siapa?', '{\"A\": \"a\", \"B\": \"b\", \"C\": \"c\", \"D\": \"d\"}', 'D', '2024-12-02 13:49:40', 'admin', '2024-12-02 13:49:40', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6fHpqcfBwfTLvDQE0VycpH4fjhFLJglCfSHOsrq2', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEloYmtmd1VtOTFrTUt1ODhDS0YzdzZNand5NG1UOVdLdFU1dUZhZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734368244),
('CWt8jySz1iQOQGIiO19pp5XB2FyMuopIhPz0s5Ip', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUU1YcTJiOVJjOWVIREl3MmRPc1NlNjNIOENnZWVES0tyZzZZSlZ5SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734390296);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tryout`
--

CREATE TABLE `tryout` (
  `id_tryout` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `quiz` longtext NOT NULL,
  `score` int(11) NOT NULL,
  `total_correct` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_questions` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tryout`
--

INSERT INTO `tryout` (`id_tryout`, `id_user`, `quiz`, `score`, `total_correct`, `created_at`, `updated_at`, `total_questions`) VALUES
(3, 1, '[{\"id_quiz\":1,\"question\":\"Daun kelapa berwarna?\",\"options\":\"{\\\"A\\\": \\\"Merah\\\", \\\"B\\\": \\\"Kuning\\\", \\\"C\\\": \\\"Hijau\\\", \\\"D\\\": \\\"Biru\\\"}\",\"correct_answer\":\"C\",\"user_answer\":\"C\"},{\"id_quiz\":2,\"question\":\"Kelapa apa yang paling enak?\",\"options\":\"{\\\"A\\\": \\\"Kelapa muda\\\", \\\"B\\\": \\\"Kepala sekolah\\\", \\\"C\\\": \\\"Kelapa gen\\\", \\\"D\\\": \\\"Kelapa aja\\\"}\",\"correct_answer\":\"A\",\"user_answer\":\"B\"},{\"id_quiz\":3,\"question\":\"Durian musangking dari negara apa?\",\"options\":\"{\\\"A\\\": \\\"India\\\", \\\"B\\\": \\\"Malaysia\\\", \\\"C\\\": \\\"Indonesia\\\", \\\"D\\\": \\\"Malaysia\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"C\"},{\"id_quiz\":4,\"question\":\"Sumping makanan khas?\",\"options\":\"{\\\"A\\\": \\\"asas\\\", \\\"B\\\": \\\"Bali\\\", \\\"C\\\": \\\"asas\\\", \\\"D\\\": \\\"asasa\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"D\"},{\"id_quiz\":5,\"question\":\"Tari jauk manis dari?\",\"options\":\"{\\\"A\\\": \\\"Sumbawa\\\", \\\"B\\\": \\\"Jawa\\\", \\\"C\\\": \\\"Papua\\\", \\\"D\\\": \\\"Aceh\\\", \\\"E\\\": \\\"Bali\\\"}\",\"correct_answer\":\"E\",\"user_answer\":\"A\"},{\"id_quiz\":6,\"question\":\"Diaman sanggar tabuh leklok berada?\",\"options\":\"{\\\"A\\\": \\\"Tabanan\\\", \\\"B\\\": \\\"Klungkung\\\", \\\"C\\\": \\\"Bangli\\\", \\\"D\\\": \\\"Buleleng\\\", \\\"E\\\": \\\"Karangasem\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"B\"},{\"id_quiz\":7,\"question\":\"Budi siapa?\",\"options\":\"{\\\"A\\\": \\\"a\\\", \\\"B\\\": \\\"b\\\", \\\"C\\\": \\\"c\\\", \\\"D\\\": \\\"d\\\"}\",\"correct_answer\":\"D\",\"user_answer\":\"A\"}]', 28, 2, '2024-12-14 06:10:03', '2024-12-14 06:10:03', 7),
(4, 7, '[{\"id_quiz\":1,\"question\":\"Daun kelapa berwarna?\",\"options\":\"{\\\"A\\\": \\\"Merah\\\", \\\"B\\\": \\\"Kuning\\\", \\\"C\\\": \\\"Hijau\\\", \\\"D\\\": \\\"Biru\\\"}\",\"correct_answer\":\"C\",\"user_answer\":\"A\"},{\"id_quiz\":2,\"question\":\"Kelapa apa yang paling enak?\",\"options\":\"{\\\"A\\\": \\\"Kelapa muda\\\", \\\"B\\\": \\\"Kepala sekolah\\\", \\\"C\\\": \\\"Kelapa gen\\\", \\\"D\\\": \\\"Kelapa aja\\\"}\",\"correct_answer\":\"A\",\"user_answer\":\"B\"},{\"id_quiz\":3,\"question\":\"Durian musangking dari negara apa?\",\"options\":\"{\\\"A\\\": \\\"India\\\", \\\"B\\\": \\\"Malaysia\\\", \\\"C\\\": \\\"Indonesia\\\", \\\"D\\\": \\\"Malaysia\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"B\"},{\"id_quiz\":4,\"question\":\"Sumping makanan khas?\",\"options\":\"{\\\"A\\\": \\\"asas\\\", \\\"B\\\": \\\"Bali\\\", \\\"C\\\": \\\"asas\\\", \\\"D\\\": \\\"asasa\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"B\"},{\"id_quiz\":5,\"question\":\"Tari jauk manis dari?\",\"options\":\"{\\\"A\\\": \\\"Sumbawa\\\", \\\"B\\\": \\\"Jawa\\\", \\\"C\\\": \\\"Papua\\\", \\\"D\\\": \\\"Aceh\\\", \\\"E\\\": \\\"Bali\\\"}\",\"correct_answer\":\"E\",\"user_answer\":\"E\"},{\"id_quiz\":6,\"question\":\"Diaman sanggar tabuh leklok berada?\",\"options\":\"{\\\"A\\\": \\\"Tabanan\\\", \\\"B\\\": \\\"Klungkung\\\", \\\"C\\\": \\\"Bangli\\\", \\\"D\\\": \\\"Buleleng\\\", \\\"E\\\": \\\"Karangasem\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"D\"},{\"id_quiz\":7,\"question\":\"Budi siapa?\",\"options\":\"{\\\"A\\\": \\\"a\\\", \\\"B\\\": \\\"b\\\", \\\"C\\\": \\\"c\\\", \\\"D\\\": \\\"d\\\"}\",\"correct_answer\":\"D\",\"user_answer\":\"A\"}]', 42, 3, '2024-12-15 04:39:04', '2024-12-15 04:39:04', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'I PUTU GEDE YAHYA', 'putuyahya5566@gmail.com', NULL, 'yahya', '$2y$12$.zKg.BGS2HbcK.5pDSUUROJJq5r1zqzn8SQRcy5D1IzaJEQukQaQK', 'admin', NULL, '2024-12-08 05:21:23', '2024-12-12 03:56:32'),
(3, 'Budi Handoyo', 'yahya.kodingakademi@gmail.com', NULL, 'budi', '$2y$12$4fYSaJI1S4DljiQ73SLpU.3Er7qgPsAHFwqKVref7xIR4ijXmRnpe', 'admin', NULL, '2024-12-08 06:27:08', '2024-12-12 04:13:23'),
(6, 'bayu1234', 'bayu1@gmail.com', NULL, 'bayu123', '$2y$12$re5wLfcw3/OTpbTF/v8GgOzHfwdMyXTvtJZgk/o0DvXaUjoqGfCZi', 'user', NULL, '2024-12-14 19:34:31', '2024-12-14 19:52:09'),
(7, 'lala', 'gdmanikmas@gmail.com', NULL, 'lala', '$2y$12$NVgYIDHG39UL9VgeuTwS3u1b5hkvqQxOmXvP3HEELUrSHYnLBjpfy', 'user', NULL, '2024-12-15 04:30:47', '2024-12-15 04:36:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id_course`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id_quiz`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `tryout`
--
ALTER TABLE `tryout`
  ADD PRIMARY KEY (`id_tryout`);

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
-- AUTO_INCREMENT untuk tabel `course`
--
ALTER TABLE `course`
  MODIFY `id_course` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id_quiz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tryout`
--
ALTER TABLE `tryout`
  MODIFY `id_tryout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
