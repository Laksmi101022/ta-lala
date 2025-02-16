-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 16, 2025 at 06:42 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.15

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
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id_course` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `start_day` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `end_day` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `start_hour` time NOT NULL,
  `end_hour` time NOT NULL,
  `additional` text COLLATE utf8mb4_general_ci NOT NULL,
  `photo` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id_course`, `id_user`, `name`, `start_day`, `end_day`, `start_hour`, `end_hour`, `additional`, `photo`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, NULL, 'Mekendang jauk manis', 'Rabu', 'Kamis', '15:00:00', '17:00:00', 'undefined', '1736846451_Untitled-1.png', '2025-01-14 09:20:51', 'admin', '2025-01-14 09:20:51', 'admin'),
(2, NULL, 'Gender Wayang', 'Senin', 'Selasa', '15:00:00', '17:00:00', 'Pakaian Adat Madya', '1736845417_IMG_1721.JPG', '2025-01-14 09:16:05', 'admin', '2025-01-14 09:16:05', 'admin'),
(5, NULL, 'Mekendang Tunggal', 'Jumat', 'Jumat', '21:50:00', '00:50:00', 'Harus berpakaian adat madia', '1736843632_IMG_1847.JPG', '2025-01-14 09:21:23', 'admin', '2025-01-14 09:21:23', 'admin'),
(6, NULL, 'Suling', 'Sabtu', 'Sabtu', '15:00:00', '17:00:00', 'hgfyfy', '1736846630_IMG_1733.JPG', '2025-01-14 09:23:50', 'admin', '2025-01-14 09:23:50', 'admin'),
(7, NULL, 'Tabuh Gong Semar Pegulingan', 'Minggu', 'Minggu', '14:00:00', '16:00:00', 'astyfugihjh', '1736846740_WhatsApp_Image_2024-11-26_at_15.39.58_024fdb1b.jpg', '2025-01-14 09:25:40', 'admin', '2025-01-14 09:25:40', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `connection` text COLLATE utf8mb4_general_ci NOT NULL,
  `queue` text COLLATE utf8mb4_general_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int NOT NULL,
  `link` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `link`, `created_at`, `updated_at`) VALUES
(11, '1736843453_Screenshot_2024-12-19_174254.png', '2025-01-14 08:30:53', '2025-01-14 08:30:53'),
(12, '1736843453_Screenshot_2024-12-19_174035.png', '2025-01-14 08:30:53', '2025-01-14 08:30:53'),
(13, '1736843453_WhatsApp_Image_2024-11-26_at_15.15.51_bde3981f.jpg', '2025-01-14 08:30:53', '2025-01-14 08:30:53'),
(14, '1736843453_WhatsApp_Image_2024-11-26_at_15.15.51_8056971e.jpg', '2025-01-14 08:30:53', '2025-01-14 08:30:53'),
(15, '1736843453_WhatsApp_Image_2024-11-26_at_15.15.50_968a2035.jpg', '2025-01-14 08:30:53', '2025-01-14 08:30:53'),
(16, '1736843453_WhatsApp_Image_2024-11-26_at_15.39.45_82106969.jpg', '2025-01-14 08:30:53', '2025-01-14 08:30:53'),
(17, '1736843453_WhatsApp_Image_2024-11-26_at_15.39.52_9f7e3add.jpg', '2025-01-14 08:30:53', '2025-01-14 08:30:53'),
(18, '1736843453_WhatsApp_Image_2024-11-26_at_15.15.50_157fe017.jpg', '2025-01-14 08:30:53', '2025-01-14 08:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_general_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('laksminirmaladewii@gmail.com', 'ncaoNR0Bl59OzWCwYOcfVmlAiZhS2CcKmR6Ah4PgNoVrrvDLBwN8I9KIQHwH', '2024-12-15 04:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id_quiz` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `question` text COLLATE utf8mb4_general_ci NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `answer` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id_quiz`, `id_user`, `question`, `options`, `answer`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, NULL, 'Apa tujuan utama dari Sanggar Tabuh Leklok?', '{\"A\":\"Mengajarkan seni tari Bali\",\"B\":\"Melestarikan seni tabuh tradisional Bali\",\"C\":\"Membuat alat musik tradisional\",\"D\":\"Menyelenggarakan festival internasional\"}', 'B', '2024-11-29 13:38:59', 'admin', '2025-01-14 08:41:50', 'admin', NULL, NULL),
(2, NULL, 'Alat musik apa yang biasanya digunakan dalam latihan hari Senin di Sanggar Tabuh  Leklok?', '{\"A\":\"Rindik\",\"B\":\"Gender\",\"C\":\"Kendang Tunggal\",\"D\":\"Suling\"}', 'B', '2024-12-01 08:38:35', 'admin', '2025-01-14 08:43:16', 'admin', NULL, NULL),
(3, NULL, 'Gong Semar Pegulingan adalah bagian dari jenis musik apa?', '{\"A\":\"Tabuh Gamelan Bali\",\"B\":\"Musik pop tradisional\",\"C\":\"Musik klasik Jawa\",\"D\":\"Gamelan Sunda\"}', 'A', '2024-12-01 11:29:08', 'admin', '2025-01-14 08:44:55', 'admin', NULL, NULL),
(4, NULL, 'Alat musik rindik terbuat dari bahan apa?', '{\"A\":\"Kayu jati\",\"B\":\"Bambu\",\"C\":\"Logam kuningan\",\"D\":\"Kulit binatang\"}', 'B', '2024-12-01 13:06:55', 'admin', '2025-01-14 08:47:38', 'admin', NULL, NULL),
(5, NULL, 'Tari jauk manis dari?', '{\"A\": \"Sumbawa\", \"B\": \"Jawa\", \"C\": \"Papua\", \"D\": \"Aceh\", \"E\": \"Bali\"}', 'E', '2024-12-01 13:13:07', 'admin', '2024-12-01 13:52:25', 'admin', '2024-12-01 13:52:25', NULL),
(6, NULL, 'Berapa jumlah daun/nada pada gong semar pegulingan?', '{\"A\":\"10\",\"B\":\"5\",\"C\":\"12\",\"D\":\"7\"}', 'D', '2024-12-02 12:17:49', 'admin', '2025-01-14 08:49:33', 'admin', NULL, NULL),
(7, NULL, 'Apa fungsi utama suling dalam komposisi tabuh Bali?', '{\"A\":\"Memberikan ritme dasar\",\"B\":\"Menambah melodi yang lembut\",\"C\":\"Menyediakan ketukan pengiring\",\"D\":\"Mengatur tempo musik\"}', 'B', '2024-12-02 13:49:40', 'admin', '2025-01-14 08:51:09', 'admin', NULL, NULL),
(8, NULL, 'Dalam latihan di Sanggar Tabuh Leklok, gender biasanya dimainkan untuk?', '{\"A\":\"Membantu penari mengikuti irama\",\"B\":\"Mengatur tempo dan dinamika musik\",\"C\":\"Membentuk harmoni utama dalam gamelan\",\"D\":\"Menciptakan suara bass\"}', 'C', '2025-01-14 08:52:54', 'admin', '2025-01-14 08:52:54', 'admin', NULL, NULL),
(9, NULL, 'Alat musik gender memiliki nada apa?', '{\"A\":\"Minor\",\"B\":\"Diatonis\",\"C\":\"Selendro\",\"D\":\"Pelog\"}', 'C', '2025-01-14 08:55:28', 'admin', '2025-01-14 08:55:28', 'admin', NULL, NULL),
(10, NULL, 'Apa peran rindik dalam sebuah ansambel musik?', '{\"A\":\"Membuat suara ritmis dan melodi santai\",\"B\":\"Memberikan ketukan dasar\",\"C\":\"Mengatur dinamika musik\",\"D\":\"Membantu instrumen gong\"}', 'A', '2025-01-14 08:56:43', 'admin', '2025-01-14 08:56:43', 'admin', NULL, NULL),
(11, NULL, 'Mengapa Sanggar Tabuh Leklok penting bagi pelestarian budaya Bali?', '{\"A\":\"Karena melatih generasi muda dalam seni tabuh tradisional\",\"B\":\"Karena menyediakan hiburan modern\",\"C\":\"Karena melatih penabuh profesional untuk pertunjukan dunia\",\"D\":\"Karena mengajarkan seni musik internasional\"}', 'A', '2025-01-14 08:58:27', 'admin', '2025-01-14 08:58:27', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_general_ci,
  `payload` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GkuANmDHwA9xWANMa3KEFmWpQxfsTt2tyMMRsQXY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDZ4N2RoeUEyRXprd2hiaElpMVdLWExMc3BzTTc0WFB3TmJpWHo5dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHA6Ly9zYW5nZ2FyLXRhYnVoLWxla2xvay50ZXN0L2Fzc2V0cy9pbWFnZXMvbG9nb190ZXh0X2xpZ2h0LnN2ZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1736928397),
('hx1XCKNs131ejD7xm9BrxUFQr9ZvoELIonvDXVhz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmNscmdDREFZY1pXQnJYTW05UklYaVk0blRLOWpkVEhWbk5TRlZsYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9zYW5nZ2FyLXRhYnVoLWxla2xvay50ZXN0L2Fib3V0LXVzL2hpc3RvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737009432),
('pnMWsVCpNgvaIVkf8m0b0f8pbBuqZwMB3qczF4UW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekRYMjdxVFNSNklrVkRXY3FYMmpIMkVNSUxCVFNac0d6eDlSbktPbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9zYW5nZ2FyLXRhYnVoLWxla2xvay50ZXN0L2Fib3V0LXVzL2hpc3RvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736849459);

-- --------------------------------------------------------

--
-- Table structure for table `tryout`
--

CREATE TABLE `tryout` (
  `id_tryout` int NOT NULL,
  `id_user` int NOT NULL,
  `quiz` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `score` int NOT NULL,
  `total_correct` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_questions` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tryout`
--

INSERT INTO `tryout` (`id_tryout`, `id_user`, `quiz`, `score`, `total_correct`, `created_at`, `updated_at`, `total_questions`) VALUES
(3, 1, '[{\"id_quiz\":1,\"question\":\"Daun kelapa berwarna?\",\"options\":\"{\\\"A\\\": \\\"Merah\\\", \\\"B\\\": \\\"Kuning\\\", \\\"C\\\": \\\"Hijau\\\", \\\"D\\\": \\\"Biru\\\"}\",\"correct_answer\":\"C\",\"user_answer\":\"C\"},{\"id_quiz\":2,\"question\":\"Kelapa apa yang paling enak?\",\"options\":\"{\\\"A\\\": \\\"Kelapa muda\\\", \\\"B\\\": \\\"Kepala sekolah\\\", \\\"C\\\": \\\"Kelapa gen\\\", \\\"D\\\": \\\"Kelapa aja\\\"}\",\"correct_answer\":\"A\",\"user_answer\":\"B\"},{\"id_quiz\":3,\"question\":\"Durian musangking dari negara apa?\",\"options\":\"{\\\"A\\\": \\\"India\\\", \\\"B\\\": \\\"Malaysia\\\", \\\"C\\\": \\\"Indonesia\\\", \\\"D\\\": \\\"Malaysia\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"C\"},{\"id_quiz\":4,\"question\":\"Sumping makanan khas?\",\"options\":\"{\\\"A\\\": \\\"asas\\\", \\\"B\\\": \\\"Bali\\\", \\\"C\\\": \\\"asas\\\", \\\"D\\\": \\\"asasa\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"D\"},{\"id_quiz\":5,\"question\":\"Tari jauk manis dari?\",\"options\":\"{\\\"A\\\": \\\"Sumbawa\\\", \\\"B\\\": \\\"Jawa\\\", \\\"C\\\": \\\"Papua\\\", \\\"D\\\": \\\"Aceh\\\", \\\"E\\\": \\\"Bali\\\"}\",\"correct_answer\":\"E\",\"user_answer\":\"A\"},{\"id_quiz\":6,\"question\":\"Diaman sanggar tabuh leklok berada?\",\"options\":\"{\\\"A\\\": \\\"Tabanan\\\", \\\"B\\\": \\\"Klungkung\\\", \\\"C\\\": \\\"Bangli\\\", \\\"D\\\": \\\"Buleleng\\\", \\\"E\\\": \\\"Karangasem\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"B\"},{\"id_quiz\":7,\"question\":\"Budi siapa?\",\"options\":\"{\\\"A\\\": \\\"a\\\", \\\"B\\\": \\\"b\\\", \\\"C\\\": \\\"c\\\", \\\"D\\\": \\\"d\\\"}\",\"correct_answer\":\"D\",\"user_answer\":\"A\"}]', 28, 2, '2024-12-14 06:10:03', '2024-12-14 06:10:03', 7),
(4, 7, '[{\"id_quiz\":1,\"question\":\"Daun kelapa berwarna?\",\"options\":\"{\\\"A\\\": \\\"Merah\\\", \\\"B\\\": \\\"Kuning\\\", \\\"C\\\": \\\"Hijau\\\", \\\"D\\\": \\\"Biru\\\"}\",\"correct_answer\":\"C\",\"user_answer\":\"A\"},{\"id_quiz\":2,\"question\":\"Kelapa apa yang paling enak?\",\"options\":\"{\\\"A\\\": \\\"Kelapa muda\\\", \\\"B\\\": \\\"Kepala sekolah\\\", \\\"C\\\": \\\"Kelapa gen\\\", \\\"D\\\": \\\"Kelapa aja\\\"}\",\"correct_answer\":\"A\",\"user_answer\":\"B\"},{\"id_quiz\":3,\"question\":\"Durian musangking dari negara apa?\",\"options\":\"{\\\"A\\\": \\\"India\\\", \\\"B\\\": \\\"Malaysia\\\", \\\"C\\\": \\\"Indonesia\\\", \\\"D\\\": \\\"Malaysia\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"B\"},{\"id_quiz\":4,\"question\":\"Sumping makanan khas?\",\"options\":\"{\\\"A\\\": \\\"asas\\\", \\\"B\\\": \\\"Bali\\\", \\\"C\\\": \\\"asas\\\", \\\"D\\\": \\\"asasa\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"B\"},{\"id_quiz\":5,\"question\":\"Tari jauk manis dari?\",\"options\":\"{\\\"A\\\": \\\"Sumbawa\\\", \\\"B\\\": \\\"Jawa\\\", \\\"C\\\": \\\"Papua\\\", \\\"D\\\": \\\"Aceh\\\", \\\"E\\\": \\\"Bali\\\"}\",\"correct_answer\":\"E\",\"user_answer\":\"E\"},{\"id_quiz\":6,\"question\":\"Diaman sanggar tabuh leklok berada?\",\"options\":\"{\\\"A\\\": \\\"Tabanan\\\", \\\"B\\\": \\\"Klungkung\\\", \\\"C\\\": \\\"Bangli\\\", \\\"D\\\": \\\"Buleleng\\\", \\\"E\\\": \\\"Karangasem\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"D\"},{\"id_quiz\":7,\"question\":\"Budi siapa?\",\"options\":\"{\\\"A\\\": \\\"a\\\", \\\"B\\\": \\\"b\\\", \\\"C\\\": \\\"c\\\", \\\"D\\\": \\\"d\\\"}\",\"correct_answer\":\"D\",\"user_answer\":\"A\"}]', 42, 3, '2024-12-15 04:39:04', '2024-12-15 04:39:04', 7),
(5, 8, '[{\"id_quiz\":1,\"question\":\"Apa tujuan utama dari Sanggar Tabuh Leklok?\",\"options\":\"{\\\"A\\\":\\\"Mengajarkan seni tari Bali\\\",\\\"B\\\":\\\"Melestarikan seni tabuh tradisional Bali\\\",\\\"C\\\":\\\"Membuat alat musik tradisional\\\",\\\"D\\\":\\\"Menyelenggarakan festival internasional\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"A\"},{\"id_quiz\":2,\"question\":\"Alat musik apa yang biasanya digunakan dalam latihan hari Senin di Sanggar Tabuh  Leklok?\",\"options\":\"{\\\"A\\\":\\\"Rindik\\\",\\\"B\\\":\\\"Gender\\\",\\\"C\\\":\\\"Kendang Tunggal\\\",\\\"D\\\":\\\"Suling\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"A\"},{\"id_quiz\":3,\"question\":\"Gong Semar Pegulingan adalah bagian dari jenis musik apa?\",\"options\":\"{\\\"A\\\":\\\"Tabuh Gamelan Bali\\\",\\\"B\\\":\\\"Musik pop tradisional\\\",\\\"C\\\":\\\"Musik klasik Jawa\\\",\\\"D\\\":\\\"Gamelan Sunda\\\"}\",\"correct_answer\":\"A\",\"user_answer\":\"D\"},{\"id_quiz\":4,\"question\":\"Alat musik rindik terbuat dari bahan apa?\",\"options\":\"{\\\"A\\\":\\\"Kayu jati\\\",\\\"B\\\":\\\"Bambu\\\",\\\"C\\\":\\\"Logam kuningan\\\",\\\"D\\\":\\\"Kulit binatang\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"D\"},{\"id_quiz\":6,\"question\":\"Berapa jumlah daun\\/nada pada gong semar pegulingan?\",\"options\":\"{\\\"A\\\":\\\"10\\\",\\\"B\\\":\\\"5\\\",\\\"C\\\":\\\"12\\\",\\\"D\\\":\\\"7\\\"}\",\"correct_answer\":\"D\",\"user_answer\":\"D\"},{\"id_quiz\":7,\"question\":\"Apa fungsi utama suling dalam komposisi tabuh Bali?\",\"options\":\"{\\\"A\\\":\\\"Memberikan ritme dasar\\\",\\\"B\\\":\\\"Menambah melodi yang lembut\\\",\\\"C\\\":\\\"Menyediakan ketukan pengiring\\\",\\\"D\\\":\\\"Mengatur tempo musik\\\"}\",\"correct_answer\":\"B\",\"user_answer\":\"A\"},{\"id_quiz\":8,\"question\":\"Dalam latihan di Sanggar Tabuh Leklok, gender biasanya dimainkan untuk?\",\"options\":\"{\\\"A\\\":\\\"Membantu penari mengikuti irama\\\",\\\"B\\\":\\\"Mengatur tempo dan dinamika musik\\\",\\\"C\\\":\\\"Membentuk harmoni utama dalam gamelan\\\",\\\"D\\\":\\\"Menciptakan suara bass\\\"}\",\"correct_answer\":\"C\",\"user_answer\":\"A\"},{\"id_quiz\":9,\"question\":\"Alat musik gender memiliki nada apa?\",\"options\":\"{\\\"A\\\":\\\"Minor\\\",\\\"B\\\":\\\"Diatonis\\\",\\\"C\\\":\\\"Selendro\\\",\\\"D\\\":\\\"Pelog\\\"}\",\"correct_answer\":\"C\",\"user_answer\":\"A\"},{\"id_quiz\":10,\"question\":\"Apa peran rindik dalam sebuah ansambel musik?\",\"options\":\"{\\\"A\\\":\\\"Membuat suara ritmis dan melodi santai\\\",\\\"B\\\":\\\"Memberikan ketukan dasar\\\",\\\"C\\\":\\\"Mengatur dinamika musik\\\",\\\"D\\\":\\\"Membantu instrumen gong\\\"}\",\"correct_answer\":\"A\",\"user_answer\":\"B\"},{\"id_quiz\":11,\"question\":\"Mengapa Sanggar Tabuh Leklok penting bagi pelestarian budaya Bali?\",\"options\":\"{\\\"A\\\":\\\"Karena melatih generasi muda dalam seni tabuh tradisional\\\",\\\"B\\\":\\\"Karena menyediakan hiburan modern\\\",\\\"C\\\":\\\"Karena melatih penabuh profesional untuk pertunjukan dunia\\\",\\\"D\\\":\\\"Karena mengajarkan seni musik internasional\\\"}\",\"correct_answer\":\"A\",\"user_answer\":\"A\"}]', 20, 2, '2025-01-14 00:59:38', '2025-01-14 00:59:38', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_general_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'Laksmi Nirmala', 'laksminirmaladewii@gmail.com', NULL, 'laksminirmala', '$2y$12$tJQdhAYW8FUwAlON0XRhouRYHnJpYVcG6bszn3JkKd3mnruXhjBHG', 'admin', NULL, '2025-01-14 00:18:54', '2025-01-14 00:18:54'),
(9, 'Dewa Putra', 'dewainputra@gmail.com', '2025-01-14 00:18:55', 'dewainputra', '$2y$12$IolyHYKK.6nzONb49c4QueyngnKskuAN3AzCRsEOvH60niCPBzVVa', 'user', 'lqYD0lULvBLeCttvQIXn9hR4WsVnsoPmyEkwCQTAbZwsiNx47YXSoeog8HLD', '2025-01-14 00:18:55', '2025-01-14 00:18:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id_course`);

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
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id_quiz`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tryout`
--
ALTER TABLE `tryout`
  ADD PRIMARY KEY (`id_tryout`);

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
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id_course` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id_quiz` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tryout`
--
ALTER TABLE `tryout`
  MODIFY `id_tryout` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
