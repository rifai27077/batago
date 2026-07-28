-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Apr 2026 pada 09.58
-- Versi server: 8.0.30
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batago`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aircrafts`
--

CREATE TABLE `aircrafts` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `partner_id` bigint UNSIGNED DEFAULT NULL,
  `registration` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `year_of_manufacture` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'active',
  `next_maintenance_date` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `aircrafts`
--

INSERT INTO `aircrafts` (`id`, `created_at`, `updated_at`, `deleted_at`, `partner_id`, `registration`, `model`, `capacity`, `year_of_manufacture`, `status`, `next_maintenance_date`) VALUES
(1, '2026-04-04 22:36:41.465', '2026-04-04 22:36:41.465', '2026-04-04 22:54:20.202', 21, 'PK-BAKSO207', 'ATR 72-600', 70, '2025', 'active', NULL),
(5, '2026-04-04 22:54:07.939', '2026-04-04 22:59:54.201', NULL, 21, 'PK-BAKSO270', 'Boeing 777-300ER', 79, '2024', 'active', NULL),
(6, '2026-04-04 23:00:25.475', '2026-04-04 23:00:25.475', NULL, 21, 'OK', 'Airbus A320', 239, '2017', 'active', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `airports`
--

CREATE TABLE `airports` (
  `id` int NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `airports`
--

INSERT INTO `airports` (`id`, `code`, `name`, `city`, `country`, `timezone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CGK', 'Soekarno-Hatta International Airport', 'Jakarta', 'Indonesia', 'Asia/Jakarta', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(2, 'DPS', 'Ngurah Rai International Airport', 'Bali', 'Indonesia', 'Asia/Makassar', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(3, 'JOG', 'Adisucipto International Airport', 'Yogyakarta', 'Indonesia', 'Asia/Jakarta', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(4, 'SUB', 'Juanda International Airport', 'Surabaya', 'Indonesia', 'Asia/Jakarta', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(5, 'BDO', 'Husein Sastranegara Airport', 'Bandung', 'Indonesia', 'Asia/Jakarta', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(6, 'MLG', 'Abdul Rachman Saleh Airport', 'Malang', 'Indonesia', 'Asia/Jakarta', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(7, 'LOP', 'Lombok International Airport', 'Lombok', 'Indonesia', 'Asia/Makassar', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(8, 'KNO', 'Kualanamu International Airport', 'Medan', 'Indonesia', 'Asia/Jakarta', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(9, 'UPG', 'Sultan Hasanuddin International Airport', 'Makassar', 'Indonesia', 'Asia/Makassar', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(10, 'SRG', 'Ahmad Yani International Airport', 'Semarang', 'Indonesia', 'Asia/Jakarta', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(21, 'KUL', 'KUL Airport', 'KUL', 'Global', 'UTC', '2026-04-04 23:09:32', '2026-04-04 23:09:32', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_general_ci,
  `author` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'draft',
  `views` bigint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `availabilities`
--

CREATE TABLE `availabilities` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `partner_id` bigint UNSIGNED DEFAULT NULL,
  `date` datetime(3) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `room_type_id` bigint UNSIGNED DEFAULT NULL,
  `flight_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `availabilities`
--

INSERT INTO `availabilities` (`id`, `created_at`, `updated_at`, `deleted_at`, `partner_id`, `date`, `status`, `price`, `room_type_id`, `flight_id`) VALUES
(1, '2026-04-04 23:09:56.397', '2026-04-04 23:09:56.397', NULL, 21, '2026-04-01 07:00:00.000', 'blocked', 0.00, NULL, NULL),
(2, '2026-04-04 23:10:08.141', '2026-04-04 23:10:08.141', NULL, 21, '2026-04-02 07:00:00.000', 'available', 2000000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `partner_id` bigint UNSIGNED DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `created_at`, `updated_at`, `deleted_at`, `partner_id`, `bank_name`, `account_number`, `account_holder_name`, `is_primary`) VALUES
(1, '2026-04-05 11:23:56.564', '2026-04-05 11:24:21.891', NULL, 1, 'q', '2', 'w', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `placement` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'draft',
  `start_date` datetime(3) DEFAULT NULL,
  `end_date` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookings`
--

CREATE TABLE `bookings` (
  `id` int NOT NULL,
  `booking_code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `partner_id` int DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'PENDING',
  `booking_status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'NEW',
  `total_amount` decimal(15,2) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bookings`
--

INSERT INTO `bookings` (`id`, `booking_code`, `user_id`, `partner_id`, `type`, `payment_status`, `booking_status`, `total_amount`, `expires_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'FL-2755726', 1, 1, 'flight', 'PENDING', 'NEW', 1250000.00, '2026-04-04 18:27:55', '2026-04-04 17:57:55', '2026-04-04 17:57:55', NULL),
(2, 'FL-3064990', 1, 1, 'flight', 'PAID', 'CONFIRMED', 1250000.00, '2026-04-04 18:28:26', '2026-04-04 17:58:26', '2026-04-05 23:32:57', NULL),
(3, 'FL-66454068', 8, 1, 'flight', 'PENDING', 'CANCELLED', 1250000.00, '2026-04-06 00:00:46', '2026-04-05 23:30:46', '2026-04-06 10:06:51', NULL),
(4, 'FL-68054021', 8, 1, 'flight', 'PAID', 'CONFIRMED', 1250000.00, '2026-04-06 00:03:26', '2026-04-05 23:33:26', '2026-04-05 23:39:56', NULL),
(5, 'FL-70382540', 8, 1, 'flight', 'PENDING', 'CANCELLED', 1250000.00, '2026-04-06 00:07:18', '2026-04-05 23:37:18', '2026-04-06 10:06:45', NULL),
(6, 'FL-72333451', 8, 1, 'flight', 'PAID', 'CONFIRMED', 1387500.00, '2026-04-06 00:10:33', '2026-04-05 23:40:33', '2026-04-05 23:41:30', NULL),
(7, 'FL-388548488', 1, 1, 'flight', 'PAID', 'COMPLETED', 1387500.00, '2026-04-06 08:57:35', '2026-04-06 08:27:35', '2026-04-06 08:29:47', NULL),
(44, 'HT-468254122', 9, 6, 'hotel', 'PAID', 'CONFIRMED', 1223775000.00, '2026-04-06 11:10:26', '2026-04-06 10:40:26', '2026-04-06 10:42:04', NULL),
(45, 'HT-491416344', 9, 6, 'hotel', 'PENDING', 'NEW', 2802750000.00, '2026-04-06 11:49:01', '2026-04-06 11:19:01', '2026-04-06 11:19:01', NULL),
(46, 'HT-493079212', 9, 6, 'hotel', 'PAID', 'CONFIRMED', 27750000.00, '2026-04-06 11:51:47', '2026-04-06 11:21:47', '2026-04-06 11:35:24', NULL),
(47, 'FL-639929127', 8, 1, 'flight', 'PAID', 'CONFIRMED', 1387500.00, '2026-04-06 15:56:33', '2026-04-06 15:26:33', '2026-04-06 15:28:22', NULL),
(48, 'FL-641266986', 8, 1, 'flight', 'PAID', 'CONFIRMED', 1387500.00, '2026-04-06 15:58:46', '2026-04-06 15:28:46', '2026-04-06 15:29:31', NULL),
(49, 'FL-643382880', 8, 1, 'flight', 'PENDING', 'NEW', 1387500.00, '2026-04-06 16:02:19', '2026-04-06 15:32:19', '2026-04-06 15:32:19', NULL),
(50, 'FL-960289372', 8, 1, 'flight', 'PAID', 'CONFIRMED', 2331000.00, '2026-04-09 08:23:48', '2026-04-09 07:53:48', '2026-04-09 07:54:36', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_popular` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `name`, `country`, `image_url`, `is_popular`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jakarta', 'Indonesia', 'https://images.unsplash.com/photo-1555899434-94d1368aa7af?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(2, 'Bali', 'Indonesia', 'https://images.unsplash.com/photo-1537996194471-e657df975ab4?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(3, 'Yogyakarta', 'Indonesia', 'https://images.unsplash.com/photo-1584810359583-96fc3448beaa?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(4, 'Surabaya', 'Indonesia', 'https://images.unsplash.com/photo-1621274283991-0a60c3100b79?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(5, 'Bandung', 'Indonesia', 'https://images.unsplash.com/photo-1604310383708-c862f95b3abe?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(6, 'Malang', 'Indonesia', 'https://images.unsplash.com/photo-1588668214407-6ea9a6d8c272?w=800', 0, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(7, 'Lombok', 'Indonesia', 'https://images.unsplash.com/photo-1570789210967-2cac24ba04c0?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(8, 'Medan', 'Indonesia', 'https://images.unsplash.com/photo-1609607849457-28fc7f92e8a7?w=800', 0, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(9, 'Makassar', 'Indonesia', 'https://images.unsplash.com/photo-1625736180498-fce7362cdd13?w=800', 0, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(10, 'Semarang', 'Indonesia', 'https://images.unsplash.com/photo-1623492229905-3c9ed2ef396e?w=800', 0, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(11, 'Jakarta', 'Indonesia', 'https://images.unsplash.com/photo-1555899434-94d1368aa7af?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(12, 'Bali', 'Indonesia', 'https://images.unsplash.com/photo-1537996194471-e657df975ab4?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(13, 'Yogyakarta', 'Indonesia', 'https://images.unsplash.com/photo-1584810359583-96fc3448beaa?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(14, 'Surabaya', 'Indonesia', 'https://images.unsplash.com/photo-1621274283991-0a60c3100b79?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(15, 'Bandung', 'Indonesia', 'https://images.unsplash.com/photo-1604310383708-c862f95b3abe?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(16, 'Malang', 'Indonesia', 'https://images.unsplash.com/photo-1588668214407-6ea9a6d8c272?w=800', 0, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(17, 'Lombok', 'Indonesia', 'https://images.unsplash.com/photo-1570789210967-2cac24ba04c0?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(18, 'Medan', 'Indonesia', 'https://images.unsplash.com/photo-1609607849457-28fc7f92e8a7?w=800', 0, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(19, 'Makassar', 'Indonesia', 'https://images.unsplash.com/photo-1625736180498-fce7362cdd13?w=800', 0, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(20, 'Semarang', 'Indonesia', 'https://images.unsplash.com/photo-1623492229905-3c9ed2ef396e?w=800', 0, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `e_tickets`
--

CREATE TABLE `e_tickets` (
  `id` int NOT NULL,
  `booking_id` int DEFAULT NULL,
  `ticket_number` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `issued_at` datetime NOT NULL,
  `issued_by` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `e_tickets`
--

INSERT INTO `e_tickets` (`id`, `booking_id`, `ticket_number`, `issued_at`, `issued_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'ET-1775300727-2', '2026-04-04 18:05:27', 'BataGo System', '2026-04-04 18:05:27', '2026-04-04 18:05:27', NULL),
(2, 4, 'ET-1775407196-4', '2026-04-05 23:39:56', 'BataGo System', '2026-04-05 23:39:56', '2026-04-05 23:39:56', NULL),
(3, 6, 'ET-1775407262-6', '2026-04-05 23:41:03', 'BataGo System', '2026-04-05 23:41:03', '2026-04-05 23:41:03', NULL),
(4, 7, 'ET-1775438906-7', '2026-04-06 08:28:27', 'BataGo System', '2026-04-06 08:28:27', '2026-04-06 08:28:27', NULL),
(5, 47, 'ET-1775464101-47', '2026-04-06 15:28:22', 'BataGo System', '2026-04-06 15:28:22', '2026-04-06 15:28:22', NULL),
(6, 48, 'ET-1775464170-48', '2026-04-06 15:29:31', 'BataGo System', '2026-04-06 15:29:31', '2026-04-06 15:29:31', NULL),
(7, 50, 'ET-1775696075-50', '2026-04-09 07:54:36', 'BataGo System', '2026-04-09 07:54:36', '2026-04-09 07:54:36', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `facilities`
--

CREATE TABLE `facilities` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Free WiFi', 'wifi', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(2, 'Swimming Pool', 'waves', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(3, 'Fitness Center', 'dumbbell', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(4, 'Restaurant', 'utensils', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(5, 'Spa', 'sparkles', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(6, 'Parking', 'car', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(7, 'Airport Shuttle', 'bus', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(8, 'Room Service', 'bell', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(9, 'Air Conditioning', 'wind', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(10, 'Beach Access', 'umbrella', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(11, 'Free WiFi', 'wifi', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(12, 'Swimming Pool', 'waves', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(13, 'Fitness Center', 'dumbbell', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(14, 'Restaurant', 'utensils', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(15, 'Spa', 'sparkles', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(16, 'Parking', 'car', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(17, 'Airport Shuttle', 'bus', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(18, 'Room Service', 'bell', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(19, 'Air Conditioning', 'wind', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(20, 'Beach Access', 'umbrella', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `target_id` bigint DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `flights`
--

CREATE TABLE `flights` (
  `id` int NOT NULL,
  `partner_id` int DEFAULT NULL,
  `flight_number` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `airline` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `departure_airport_id` int DEFAULT NULL,
  `arrival_airport_id` int DEFAULT NULL,
  `departure_time` datetime NOT NULL,
  `arrival_time` datetime NOT NULL,
  `duration` int NOT NULL,
  `baggage_allowance_kg` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `schedule` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `flights`
--

INSERT INTO `flights` (`id`, `partner_id`, `flight_number`, `airline`, `departure_airport_id`, `arrival_airport_id`, `departure_time`, `arrival_time`, `duration`, `baggage_allowance_kg`, `created_at`, `updated_at`, `deleted_at`, `schedule`) VALUES
(1, 1, 'GA-401', 'Garuda Indonesia', 1, 2, '2026-04-06 22:43:33', '2026-04-07 01:33:33', 110, 30, '2026-04-04 16:43:33', '2026-04-08 09:49:16', NULL, '[]'),
(2, 1, 'GA-402', 'Garuda Indonesia', 2, 1, '2026-04-07 06:43:33', '2026-04-07 09:13:33', 110, 30, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(3, 1, 'GA-201', 'Garuda Indonesia', 1, 3, '2026-04-08 00:13:33', '2026-04-08 01:23:33', 70, 30, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(4, 1, 'GA-301', 'Garuda Indonesia', 1, 4, '2026-04-08 02:43:33', '2026-04-08 04:13:33', 90, 30, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(5, 1, 'GA-501', 'Garuda Indonesia', 4, 2, '2026-04-10 00:43:33', '2026-04-10 02:13:33', 90, 30, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(6, 2, 'JT-690', 'Lion Air', 1, 2, '2026-04-07 01:43:33', '2026-04-07 04:23:33', 100, 20, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(7, 2, 'JT-691', 'Lion Air', 2, 1, '2026-04-07 09:43:33', '2026-04-07 12:13:33', 100, 20, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(8, 2, 'JT-570', 'Lion Air', 1, 4, '2026-04-08 23:13:33', '2026-04-09 00:43:33', 90, 20, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(9, 2, 'JT-580', 'Lion Air', 4, 1, '2026-04-09 08:43:33', '2026-04-09 10:13:33', 90, 20, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(10, 2, 'JT-250', 'Lion Air', 1, 3, '2026-04-10 04:43:33', '2026-04-10 05:53:33', 70, 20, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(11, 3, 'QG-800', 'Citilink', 1, 2, '2026-04-07 22:13:33', '2026-04-08 00:53:33', 100, 20, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(12, 3, 'QG-801', 'Citilink', 2, 1, '2026-04-08 11:43:33', '2026-04-08 14:13:33', 100, 20, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(13, 3, 'QG-610', 'Citilink', 4, 2, '2026-04-09 05:43:33', '2026-04-09 07:13:33', 90, 20, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(14, 3, 'QG-340', 'Citilink', 1, 8, '2026-04-11 00:43:33', '2026-04-11 03:13:33', 150, 20, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(15, 4, 'ID-6570', 'Batik Air', 1, 2, '2026-04-07 07:43:33', '2026-04-07 10:23:33', 100, 30, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(16, 4, 'ID-6571', 'Batik Air', 2, 1, '2026-04-07 12:43:33', '2026-04-07 15:13:33', 100, 30, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(17, 4, 'ID-7300', 'Batik Air', 1, 7, '2026-04-10 03:43:33', '2026-04-10 06:13:33', 150, 30, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(18, 5, 'QZ-7520', 'AirAsia Indonesia', 1, 2, '2026-04-08 04:13:33', '2026-04-08 06:53:33', 100, 15, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(19, 5, 'QZ-7521', 'AirAsia Indonesia', 2, 1, '2026-04-08 09:13:33', '2026-04-08 11:43:33', 100, 15, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(20, 5, 'QZ-8400', 'AirAsia Indonesia', 4, 7, '2026-04-12 06:43:33', '2026-04-12 08:03:33', 80, 15, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL, NULL),
(21, 1, 'GA-401', 'Garuda Indonesia', 1, 2, '2026-04-06 23:10:25', '2026-04-07 02:00:25', 110, 30, '2026-04-04 17:10:25', '2026-04-08 09:46:08', NULL, '[]'),
(22, 1, 'GA-402', 'Garuda Indonesia', 2, 1, '2026-04-07 07:10:25', '2026-04-07 09:40:25', 110, 30, '2026-04-04 17:10:25', '2026-04-08 09:46:25', NULL, '[]'),
(23, 1, 'GA-201', 'Garuda Indonesia', 1, 3, '2026-04-08 00:40:25', '2026-04-08 01:50:25', 70, 30, '2026-04-04 17:10:25', '2026-04-08 09:47:30', NULL, '[]'),
(24, 1, 'GA-301', 'Garuda Indonesia', 1, 4, '2026-04-08 03:10:25', '2026-04-08 04:40:25', 90, 30, '2026-04-04 17:10:25', '2026-04-08 09:47:55', NULL, '[]'),
(25, 1, 'GA-501', 'Garuda Indonesia', 4, 2, '2026-04-10 01:10:25', '2026-04-10 02:40:25', 90, 30, '2026-04-04 17:10:25', '2026-04-08 09:48:11', NULL, '[]'),
(26, 2, 'JT-690', 'Lion Air', 1, 2, '2026-04-07 02:10:25', '2026-04-07 04:50:25', 100, 20, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(27, 2, 'JT-691', 'Lion Air', 2, 1, '2026-04-07 10:10:25', '2026-04-07 12:40:25', 100, 20, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(28, 2, 'JT-570', 'Lion Air', 1, 4, '2026-04-08 23:40:25', '2026-04-09 01:10:25', 90, 20, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(29, 2, 'JT-580', 'Lion Air', 4, 1, '2026-04-09 09:10:25', '2026-04-09 10:40:25', 90, 20, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(30, 2, 'JT-250', 'Lion Air', 1, 3, '2026-04-10 05:10:25', '2026-04-10 06:20:25', 70, 20, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(31, 3, 'QG-800', 'Citilink', 1, 2, '2026-04-07 22:40:25', '2026-04-08 01:20:25', 100, 20, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(32, 3, 'QG-801', 'Citilink', 2, 1, '2026-04-08 12:10:25', '2026-04-08 14:40:25', 100, 20, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(33, 3, 'QG-610', 'Citilink', 4, 2, '2026-04-09 06:10:25', '2026-04-09 07:40:25', 90, 20, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(34, 3, 'QG-340', 'Citilink', 1, 8, '2026-04-11 01:10:25', '2026-04-11 03:40:25', 150, 20, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(35, 4, 'ID-6570', 'Batik Air', 1, 2, '2026-04-07 08:10:25', '2026-04-07 10:50:25', 100, 30, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(36, 4, 'ID-6571', 'Batik Air', 2, 1, '2026-04-07 13:10:25', '2026-04-07 15:40:25', 100, 30, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(37, 4, 'ID-7300', 'Batik Air', 1, 7, '2026-04-10 04:10:25', '2026-04-10 06:40:25', 150, 30, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(38, 5, 'QZ-7520', 'AirAsia Indonesia', 1, 2, '2026-04-08 04:40:25', '2026-04-08 07:20:25', 100, 15, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(39, 5, 'QZ-7521', 'AirAsia Indonesia', 2, 1, '2026-04-08 09:40:25', '2026-04-08 12:10:25', 100, 15, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(40, 5, 'QZ-8400', 'AirAsia Indonesia', 4, 7, '2026-04-12 07:10:25', '2026-04-12 08:30:25', 80, 15, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL, NULL),
(41, 21, 'gh786', 'Bakso', 1, 21, '2026-04-05 15:00:00', '2026-04-05 17:06:00', 126, 20, '2026-04-04 23:09:32', '2026-04-04 23:30:28', NULL, NULL),
(42, 21, 'ko9', 'Bakso', 21, 1, '2026-04-05 15:00:00', '2026-04-06 00:08:00', 548, 20, '2026-04-04 23:33:14', '2026-04-04 23:36:57', NULL, 'null'),
(43, 21, 'as', 'Bakso', 21, 2, '2026-04-05 15:00:00', '2026-04-05 18:00:00', 180, 20, '2026-04-04 23:37:47', '2026-04-04 23:44:24', NULL, '[\"sun\", \"fri\"]'),
(44, 21, 'hjg', 'Bakso', 1, 2, '2026-04-05 15:00:00', '2026-04-06 00:00:00', 540, 20, '2026-04-04 23:44:52', '2026-04-04 23:44:52', NULL, '[\"thu\", \"sat\"]'),
(45, 21, 'jh', 'Bakso', 21, 1, '2026-04-05 15:00:00', '2026-04-05 22:00:00', 420, 20, '2026-04-04 23:45:19', '2026-04-04 23:45:25', NULL, '[\"sun\"]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `flight_bookings`
--

CREATE TABLE `flight_bookings` (
  `id` int NOT NULL,
  `booking_id` int DEFAULT NULL,
  `flight_id` int DEFAULT NULL,
  `class` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `flight_bookings`
--

INSERT INTO `flight_bookings` (`id`, `booking_id`, `flight_id`, `class`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'economy', '2026-04-04 17:57:55', '2026-04-04 17:57:55', NULL),
(2, 2, 1, 'economy', '2026-04-04 17:58:26', '2026-04-04 17:58:26', NULL),
(3, 3, 1, 'economy', '2026-04-05 23:30:46', '2026-04-05 23:30:46', NULL),
(4, 4, 1, 'economy', '2026-04-05 23:33:26', '2026-04-05 23:33:26', NULL),
(5, 5, 1, 'economy', '2026-04-05 23:37:18', '2026-04-05 23:37:18', NULL),
(6, 6, 1, 'economy', '2026-04-05 23:40:33', '2026-04-05 23:40:33', NULL),
(7, 7, 1, 'economy', '2026-04-06 08:27:35', '2026-04-06 08:27:35', NULL),
(8, 47, 1, 'economy', '2026-04-06 15:26:33', '2026-04-06 15:26:33', NULL),
(9, 48, 1, 'economy', '2026-04-06 15:28:46', '2026-04-06 15:28:46', NULL),
(10, 49, 1, 'economy', '2026-04-06 15:32:19', '2026-04-06 15:32:19', NULL),
(11, 50, 1, 'economy', '2026-04-09 07:53:48', '2026-04-09 07:53:48', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `flight_seats`
--

CREATE TABLE `flight_seats` (
  `id` int NOT NULL,
  `flight_id` int DEFAULT NULL,
  `class` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `total_seats` int NOT NULL,
  `available_seats` int NOT NULL,
  `features` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `flight_seats`
--

INSERT INTO `flight_seats` (`id`, `flight_id`, `class`, `price`, `total_seats`, `available_seats`, `features`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'ECONOMY', 1250000.00, 150, 132, '[\"Snack\", \"Entertainment\"]', '2026-04-04 16:43:33', '2026-04-08 09:49:16', '2026-04-08 09:49:16'),
(2, 1, 'BUSINESS', 3500000.00, 30, 28, '[\"Full Meal\", \"Lounge Access\", \"Priority Boarding\"]', '2026-04-04 16:43:33', '2026-04-08 09:49:16', '2026-04-08 09:49:16'),
(3, 1, 'FIRST', 7500000.00, 8, 8, '[\"Suite\", \"Fine Dining\", \"Lounge\", \"Chauffeur\"]', '2026-04-04 16:43:33', '2026-04-08 09:49:16', '2026-04-08 09:49:16'),
(4, 2, 'ECONOMY', 1250000.00, 150, 135, '[\"Snack\", \"Entertainment\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(5, 2, 'BUSINESS', 3500000.00, 30, 25, '[\"Full Meal\", \"Lounge Access\", \"Priority Boarding\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(6, 3, 'ECONOMY', 850000.00, 150, 120, '[\"Snack\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(7, 3, 'BUSINESS', 2200000.00, 24, 22, '[\"Full Meal\", \"Lounge Access\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(8, 4, 'ECONOMY', 950000.00, 150, 130, '[\"Snack\", \"Entertainment\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(9, 4, 'BUSINESS', 2800000.00, 24, 20, '[\"Full Meal\", \"Lounge Access\", \"Priority Boarding\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(10, 5, 'ECONOMY', 750000.00, 150, 110, '[\"Snack\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(11, 5, 'BUSINESS', 2000000.00, 24, 22, '[\"Full Meal\", \"Lounge Access\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(12, 6, 'ECONOMY', 650000.00, 180, 165, '[\"Snack\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(13, 6, 'BUSINESS', 1800000.00, 12, 10, '[\"Meal\", \"Priority Boarding\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(14, 7, 'ECONOMY', 700000.00, 180, 150, '[\"Snack\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(15, 7, 'BUSINESS', 1900000.00, 12, 11, '[\"Meal\", \"Priority Boarding\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(16, 8, 'ECONOMY', 550000.00, 180, 170, '[\"Snack\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(17, 9, 'ECONOMY', 580000.00, 180, 160, '[\"Snack\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(18, 10, 'ECONOMY', 480000.00, 180, 145, '[\"Snack\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(19, 11, 'ECONOMY', 550000.00, 180, 160, '[]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(20, 12, 'ECONOMY', 580000.00, 180, 155, '[]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(21, 13, 'ECONOMY', 450000.00, 180, 170, '[]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(22, 14, 'ECONOMY', 980000.00, 180, 140, '[\"Snack\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(23, 15, 'ECONOMY', 1100000.00, 150, 130, '[\"Snack\", \"Entertainment\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(24, 15, 'BUSINESS', 3200000.00, 24, 20, '[\"Full Meal\", \"Lounge Access\", \"Priority Boarding\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(25, 16, 'ECONOMY', 1100000.00, 150, 125, '[\"Snack\", \"Entertainment\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(26, 16, 'BUSINESS', 3200000.00, 24, 22, '[\"Full Meal\", \"Lounge Access\", \"Priority Boarding\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(27, 17, 'ECONOMY', 1350000.00, 150, 140, '[\"Snack\", \"Entertainment\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(28, 17, 'BUSINESS', 3800000.00, 24, 23, '[\"Full Meal\", \"Lounge Access\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(29, 18, 'ECONOMY', 450000.00, 180, 170, '[]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(30, 19, 'ECONOMY', 480000.00, 180, 165, '[]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(31, 20, 'ECONOMY', 380000.00, 180, 175, '[]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(32, 1, 'ECONOMY', 1250000.00, 150, 142, '[\"Snack\", \"Entertainment\"]', '2026-04-04 17:10:25', '2026-04-08 09:49:16', '2026-04-08 09:49:16'),
(33, 1, 'BUSINESS', 3500000.00, 30, 28, '[\"Full Meal\", \"Lounge Access\", \"Priority Boarding\"]', '2026-04-04 17:10:25', '2026-04-08 09:49:16', '2026-04-08 09:49:16'),
(34, 1, 'FIRST', 7500000.00, 8, 8, '[\"Suite\", \"Fine Dining\", \"Lounge\", \"Chauffeur\"]', '2026-04-04 17:10:25', '2026-04-08 09:49:16', '2026-04-08 09:49:16'),
(35, 2, 'ECONOMY', 1250000.00, 150, 135, '[\"Snack\", \"Entertainment\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(36, 2, 'BUSINESS', 3500000.00, 30, 25, '[\"Full Meal\", \"Lounge Access\", \"Priority Boarding\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(37, 3, 'ECONOMY', 850000.00, 150, 120, '[\"Snack\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(38, 3, 'BUSINESS', 2200000.00, 24, 22, '[\"Full Meal\", \"Lounge Access\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(39, 4, 'ECONOMY', 950000.00, 150, 130, '[\"Snack\", \"Entertainment\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(40, 4, 'BUSINESS', 2800000.00, 24, 20, '[\"Full Meal\", \"Lounge Access\", \"Priority Boarding\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(41, 5, 'ECONOMY', 750000.00, 150, 110, '[\"Snack\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(42, 5, 'BUSINESS', 2000000.00, 24, 22, '[\"Full Meal\", \"Lounge Access\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(43, 6, 'ECONOMY', 650000.00, 180, 165, '[\"Snack\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(44, 6, 'BUSINESS', 1800000.00, 12, 10, '[\"Meal\", \"Priority Boarding\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(45, 7, 'ECONOMY', 700000.00, 180, 150, '[\"Snack\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(46, 7, 'BUSINESS', 1900000.00, 12, 11, '[\"Meal\", \"Priority Boarding\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(47, 8, 'ECONOMY', 550000.00, 180, 170, '[\"Snack\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(48, 9, 'ECONOMY', 580000.00, 180, 160, '[\"Snack\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(49, 10, 'ECONOMY', 480000.00, 180, 145, '[\"Snack\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(50, 11, 'ECONOMY', 550000.00, 180, 160, '[]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(51, 12, 'ECONOMY', 580000.00, 180, 155, '[]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(52, 13, 'ECONOMY', 450000.00, 180, 170, '[]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(53, 14, 'ECONOMY', 980000.00, 180, 140, '[\"Snack\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(54, 15, 'ECONOMY', 1100000.00, 150, 130, '[\"Snack\", \"Entertainment\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(55, 15, 'BUSINESS', 3200000.00, 24, 20, '[\"Full Meal\", \"Lounge Access\", \"Priority Boarding\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(56, 16, 'ECONOMY', 1100000.00, 150, 125, '[\"Snack\", \"Entertainment\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(57, 16, 'BUSINESS', 3200000.00, 24, 22, '[\"Full Meal\", \"Lounge Access\", \"Priority Boarding\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(58, 17, 'ECONOMY', 1350000.00, 150, 140, '[\"Snack\", \"Entertainment\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(59, 17, 'BUSINESS', 3800000.00, 24, 23, '[\"Full Meal\", \"Lounge Access\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(60, 18, 'ECONOMY', 450000.00, 180, 170, '[]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(61, 19, 'ECONOMY', 480000.00, 180, 165, '[]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(62, 20, 'ECONOMY', 380000.00, 180, 175, '[]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(63, 41, 'Economy', 930000.00, 180, 180, '[\"Standard seat\", \"Snack box\"]', '2026-04-04 23:09:32', '2026-04-04 23:30:28', NULL),
(64, 42, 'Economy', 1000000.00, 180, 180, '[\"Standard seat\", \"Snack box\"]', '2026-04-04 23:33:14', '2026-04-04 23:36:57', NULL),
(65, 44, 'Economy', 4.00, 180, 180, '[\"Standard seat\", \"Snack box\"]', '2026-04-04 23:44:52', '2026-04-04 23:44:52', NULL),
(66, 21, 'Economy', 1200000.00, 180, 180, '[\"Standard seat\", \"Snack box\"]', '2026-04-08 09:45:49', '2026-04-08 09:46:07', '2026-04-08 09:46:08'),
(67, 21, 'Economy', 2200000.00, 180, 180, '[\"Standard seat\", \"Snack box\"]', '2026-04-08 09:46:08', '2026-04-08 09:46:08', NULL),
(68, 22, 'Economy', 2300000.00, 180, 180, '[\"Standard seat\", \"Snack box\"]', '2026-04-08 09:46:25', '2026-04-08 09:46:25', NULL),
(69, 23, 'Economy', 2100000.00, 180, 180, '[\"Standard seat\", \"Snack box\"]', '2026-04-08 09:47:31', '2026-04-08 09:47:31', NULL),
(70, 24, 'Economy', 1850000.00, 180, 180, '[\"Standard seat\", \"Snack box\"]', '2026-04-08 09:47:55', '2026-04-08 09:47:55', NULL),
(71, 25, 'Economy', 1850000.00, 180, 180, '[\"Standard seat\", \"Snack box\"]', '2026-04-08 09:48:11', '2026-04-08 09:48:11', NULL),
(72, 1, 'Economy', 2100000.00, 180, 179, '[\"Standard seat\", \"Snack box\"]', '2026-04-08 09:49:16', '2026-04-09 07:53:48', NULL),
(73, 1, 'Business', 20000005.00, 20, 20, '[\"Standard seat\", \"Snack box\"]', '2026-04-08 09:49:16', '2026-04-08 09:49:16', NULL),
(74, 1, 'First', 8200000.00, 8, 8, '[\"Standard seat\", \"Snack box\"]', '2026-04-08 09:49:16', '2026-04-08 09:49:16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotels`
--

CREATE TABLE `hotels` (
  `id` int NOT NULL,
  `partner_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `city_id` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `address` text COLLATE utf8mb4_general_ci,
  `rating` decimal(3,2) DEFAULT '0.00',
  `total_reviews` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'hotel',
  `base_price` decimal(15,2) DEFAULT '0.00',
  `room_count` int DEFAULT '0',
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hotels`
--

INSERT INTO `hotels` (`id`, `partner_id`, `name`, `city_id`, `description`, `address`, `rating`, `total_reviews`, `created_at`, `updated_at`, `deleted_at`, `type`, `base_price`, `room_count`, `latitude`, `longitude`, `status`) VALUES
(1, 6, 'The Mulia Resort & Villas', 2, 'A luxurious beachfront resort in Nusa Dua, Bali offering world-class amenities, pristine beaches, and exceptional dining experiences.', 'Jl. Raya Nusa Dua Selatan, Nusa Dua, Bali 80363', 4.85, 342, '2026-04-04 16:43:33', '2026-04-04 17:22:25', NULL, 'hotel', 0.00, 100, NULL, NULL, 'active'),
(2, 7, 'AYANA Resort Bali', 2, 'Perched above Jimbaran Bay, AYANA offers stunning ocean views, multiple pools, and the iconic Rock Bar for unforgettable sunset cocktails.', 'Jl. Karang Mas Sejahtera, Jimbaran, Bali 80364', 4.72, 528, '2026-04-04 16:43:33', '2026-04-04 17:15:51', NULL, 'hotel', 0.00, 100, NULL, NULL, 'active'),
(3, 8, 'Hotel Indonesia Kempinski Jakarta', 1, 'An iconic 5-star hotel in the heart of Jakarta, blending colonial elegance with modern luxury, located at the famous Bundaran HI.', 'Jl. M.H. Thamrin No.1, Jakarta Pusat 10310', 4.65, 891, '2026-04-04 16:43:33', '2026-04-04 17:15:51', NULL, 'hotel', 0.00, 100, NULL, NULL, 'active'),
(4, 9, 'Padma Resort Legian', 2, 'A tropical paradise on Legian Beach with lush gardens, infinity pools, and direct beach access for the perfect Bali getaway.', 'Jl. Padma No.1, Legian, Bali 80361', 4.50, 215, '2026-04-04 16:43:33', '2026-04-04 17:15:51', NULL, 'hotel', 0.00, 100, NULL, NULL, 'active'),
(5, 10, 'Tugu Hotel Malang', 6, 'A unique heritage hotel showcasing Indonesian art and antiques, offering a journey through the cultural history of Java in elegant surroundings.', 'Jl. Tugu No.3, Malang, Jawa Timur 65119', 4.40, 167, '2026-04-04 16:43:33', '2026-04-04 17:15:51', NULL, 'hotel', 0.00, 100, NULL, NULL, 'active'),
(6, 6, 'The Mulia Jakarta', 1, 'An urban luxury hotel in Senayan with spacious rooms, a rooftop bar, and easy access to Jakarta business and shopping districts.', 'Jl. Asia Afrika, Senayan, Jakarta 10270', 4.55, 423, '2026-04-04 16:43:33', '2026-04-04 17:15:51', NULL, 'hotel', 0.00, 100, NULL, NULL, 'active'),
(7, 7, 'AYANA Komodo Waecicu Beach', 7, 'An exclusive resort on the shores of Flores with views of the Komodo islands, offering diving, snorkeling, and nature adventures.', 'Waecicu Beach, Labuan Bajo, NTT', 4.78, 89, '2026-04-04 16:43:33', '2026-04-04 17:15:51', NULL, 'hotel', 0.00, 100, NULL, NULL, 'active'),
(8, 9, 'Padma Resort Ubud', 2, 'Nestled in the Payangan Valley, this resort offers breathtaking river valley views, infinity pools, and authentic Balinese experiences.', 'Banjar Carik, Desa Puhu, Payangan, Ubud, Bali 80572', 4.68, 312, '2026-04-04 16:43:33', '2026-04-04 17:15:51', NULL, 'hotel', 0.00, 100, NULL, NULL, 'active'),
(9, 8, 'Hotel Tentrem Yogyakarta', 3, 'A premier 5-star hotel in the heart of Yogyakarta blending Javanese heritage with modern comfort and exceptional service.', 'Jl. P. Mangkubumi No.72A, Yogyakarta 55233', 4.70, 445, '2026-04-04 16:43:33', '2026-04-04 17:15:51', NULL, 'hotel', 0.00, 100, NULL, NULL, 'active'),
(10, 10, 'Plataran Bromo', 4, 'A highland resort near Mount Bromo offering spectacular volcanic views, cool mountain air, and a gateway to adventure in East Java.', 'Desa Ngadiwono, Tosari, Pasuruan, Jawa Timur 67177', 4.35, 98, '2026-04-04 16:43:33', '2026-04-04 17:15:51', NULL, 'hotel', 0.00, 100, NULL, NULL, 'active'),
(21, 17, 'Mampang', 1, 'sdfd', 'Mampang', 0.00, 0, '2026-04-09 08:05:56', '2026-04-09 08:05:56', NULL, 'resort', 8000000.00, 1, 1.06322891, 104.22319448, 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotel_bookings`
--

CREATE TABLE `hotel_bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `booking_id` bigint UNSIGNED NOT NULL,
  `room_type_id` bigint UNSIGNED NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `guests` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hotel_bookings`
--

INSERT INTO `hotel_bookings` (`id`, `created_at`, `updated_at`, `deleted_at`, `booking_id`, `room_type_id`, `check_in`, `check_out`, `guests`) VALUES
(1, '2026-04-06 10:40:25.655', '2026-04-06 10:40:25.655', NULL, 44, 1, '2026-04-06', '2026-12-07', 2),
(2, '2026-04-06 11:19:01.355', '2026-04-06 11:19:01.355', NULL, 45, 3, '2026-04-06', '2026-07-16', 2),
(3, '2026-04-06 11:21:47.149', '2026-04-06 11:21:47.149', NULL, 46, 3, '2026-04-06', '2026-04-07', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotel_facilities`
--

CREATE TABLE `hotel_facilities` (
  `hotel_id` int NOT NULL,
  `facility_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hotel_facilities`
--

INSERT INTO `hotel_facilities` (`hotel_id`, `facility_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(1, 3),
(2, 3),
(3, 3),
(6, 3),
(9, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(21, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(21, 5),
(1, 6),
(3, 6),
(5, 6),
(6, 6),
(9, 6),
(10, 6),
(2, 7),
(8, 7),
(3, 8),
(5, 9),
(10, 9),
(1, 10),
(2, 10),
(4, 10),
(7, 10),
(21, 14),
(21, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotel_images`
--

CREATE TABLE `hotel_images` (
  `id` int NOT NULL,
  `hotel_id` int DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hotel_images`
--

INSERT INTO `hotel_images` (`id`, `hotel_id`, `url`, `is_primary`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'https://images.unsplash.com/photo-1582719508461-905c673771fd?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(2, 1, 'https://images.unsplash.com/photo-1571896349842-33c89424de2d?w=800', 0, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(3, 1, 'https://images.unsplash.com/photo-1584132967334-10e028bd69f7?w=800', 0, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(4, 2, 'https://images.unsplash.com/photo-1540541338287-41700207dee6?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(5, 2, 'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?w=800', 0, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(6, 3, 'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(7, 3, 'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?w=800', 0, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(8, 4, 'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(9, 4, 'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?w=800', 0, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(10, 5, 'https://images.unsplash.com/photo-1445019980597-93fa8acb246c?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(11, 6, 'https://images.unsplash.com/photo-1564501049412-61c2a3083791?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(12, 7, 'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(13, 8, 'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(14, 9, 'https://images.unsplash.com/photo-1618773928121-c32242e63f39?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(15, 10, 'https://images.unsplash.com/photo-1596178065887-1198b6148b2b?w=800', 1, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(16, 1, 'https://images.unsplash.com/photo-1582719508461-905c673771fd?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(17, 1, 'https://images.unsplash.com/photo-1571896349842-33c89424de2d?w=800', 0, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(18, 1, 'https://images.unsplash.com/photo-1584132967334-10e028bd69f7?w=800', 0, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(19, 2, 'https://images.unsplash.com/photo-1540541338287-41700207dee6?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(20, 2, 'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?w=800', 0, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(21, 3, 'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(22, 3, 'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?w=800', 0, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(23, 4, 'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(24, 4, 'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?w=800', 0, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(25, 5, 'https://images.unsplash.com/photo-1445019980597-93fa8acb246c?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(26, 6, 'https://images.unsplash.com/photo-1564501049412-61c2a3083791?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(27, 7, 'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(28, 8, 'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(29, 9, 'https://images.unsplash.com/photo-1618773928121-c32242e63f39?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(30, 10, 'https://images.unsplash.com/photo-1596178065887-1198b6148b2b?w=800', 1, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(31, 21, 'http://localhost:8080/uploads/listings/1775696755740871000.jpeg', 1, '2026-04-09 08:05:56', '2026-04-09 08:05:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotel_vouchers`
--

CREATE TABLE `hotel_vouchers` (
  `id` int NOT NULL,
  `booking_id` int DEFAULT NULL,
  `voucher_code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `issued_at` datetime NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hotel_vouchers`
--

INSERT INTO `hotel_vouchers` (`id`, `booking_id`, `voucher_code`, `issued_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(37, 44, 'VC-468254258', '2026-04-06 10:40:26', '2026-04-06 10:40:26', '2026-04-06 10:40:26', NULL),
(38, 45, 'VC-491417318', '2026-04-06 11:19:01', '2026-04-06 11:19:01', '2026-04-06 11:19:01', NULL),
(39, 46, 'VC-493077239', '2026-04-06 11:21:47', '2026-04-06 11:21:47', '2026-04-06 11:21:47', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'info',
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_general_ci,
  `read` tinyint(1) DEFAULT '0',
  `link` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `type`, `title`, `message`, `read`, `link`) VALUES
(1, '2026-04-05 23:30:45.549', '2026-04-05 23:30:45.549', NULL, 8, 'info', 'Booking Created', 'Your booking FL-66454068 has been created. Please complete the payment before it expires.', 0, '/my-bookings/FL-66454068'),
(2, '2026-04-05 23:32:57.088', '2026-04-05 23:46:51.927', NULL, 1, 'success', 'Payment Successful', 'Great news! Your payment for booking FL-3064990 was successful. Your ticket is now ready.', 1, '/my-bookings/FL-3064990'),
(3, '2026-04-05 23:33:25.673', '2026-04-05 23:33:25.673', NULL, 8, 'info', 'Booking Created', 'Your booking FL-68054021 has been created. Please complete the payment before it expires.', 0, '/my-bookings/FL-68054021'),
(4, '2026-04-05 23:37:18.051', '2026-04-05 23:37:18.051', NULL, 8, 'info', 'Booking Created', 'Your booking FL-70382540 has been created. Please complete the payment before it expires.', 0, '/my-bookings/FL-70382540'),
(5, '2026-04-05 23:39:56.110', '2026-04-05 23:39:56.110', NULL, 8, 'success', 'Payment Successful', 'Great news! Your payment for booking FL-68054021 was successful. Your ticket is now ready.', 0, '/my-bookings/FL-68054021'),
(6, '2026-04-05 23:40:33.382', '2026-04-05 23:40:33.382', NULL, 8, 'info', 'Booking Created', 'Your booking FL-72333451 has been created. Please complete the payment before it expires.', 0, '/my-bookings/FL-72333451'),
(7, '2026-04-05 23:41:02.850', '2026-04-05 23:41:02.850', NULL, 8, 'success', 'Payment Successful', 'Great news! Your payment for booking FL-72333451 was successful. Your ticket is now ready.', 0, '/my-bookings/FL-72333451'),
(8, '2026-04-05 23:41:30.125', '2026-04-05 23:41:30.125', NULL, 8, 'success', 'Payment Successful', 'Great news! Your payment for booking FL-72333451 was successful. Your ticket is now ready.', 0, '/my-bookings/FL-72333451'),
(9, '2026-04-06 08:27:34.939', '2026-04-06 08:27:34.939', NULL, 1, 'info', 'Booking Created', 'Your booking FL-388548488 has been created. Please complete the payment before it expires.', 0, '/my-bookings/FL-388548488'),
(10, '2026-04-06 08:28:26.890', '2026-04-06 08:28:26.890', NULL, 1, 'success', 'Payment Successful', 'Great news! Your payment for booking FL-388548488 was successful. Your ticket is now ready.', 0, '/my-bookings/FL-388548488'),
(11, '2026-04-06 10:40:25.657', '2026-04-06 10:40:25.657', NULL, 9, 'info', 'Booking Created', 'Your booking HT-468254122 has been created. Please complete the payment before it expires.', 0, '/my-bookings/HT-468254122'),
(12, '2026-04-06 10:42:04.428', '2026-04-06 10:42:04.428', NULL, 9, 'success', 'Payment Successful', 'Great news! Your payment for booking HT-468254122 was successful. Your ticket is now ready.', 0, '/my-bookings/HT-468254122'),
(13, '2026-04-06 11:19:01.362', '2026-04-06 11:19:01.362', NULL, 9, 'info', 'Booking Created', 'Your booking HT-491416344 has been created. Please complete the payment before it expires.', 0, '/my-bookings/HT-491416344'),
(14, '2026-04-06 11:21:47.156', '2026-04-06 11:21:47.156', NULL, 9, 'info', 'Booking Created', 'Your booking HT-493079212 has been created. Please complete the payment before it expires.', 0, '/my-bookings/HT-493079212'),
(15, '2026-04-06 11:35:24.323', '2026-04-06 11:35:24.323', NULL, 9, 'success', 'Payment Successful', 'Great news! Your payment for booking HT-493079212 was successful. Your ticket is now ready.', 0, '/my-bookings/HT-493079212'),
(16, '2026-04-06 15:26:32.559', '2026-04-06 15:26:32.559', NULL, 8, 'info', 'Booking Created', 'Your booking FL-639929127 has been created. Please complete the payment before it expires.', 0, '/my-bookings/FL-639929127'),
(17, '2026-04-06 15:28:21.508', '2026-04-06 15:28:21.508', NULL, 8, 'success', 'Payment Successful', 'Great news! Your payment for booking FL-639929127 was successful. Your ticket is now ready.', 0, '/my-bookings/FL-639929127'),
(18, '2026-04-06 15:28:46.166', '2026-04-06 15:28:46.166', NULL, 8, 'info', 'Booking Created', 'Your booking FL-641266986 has been created. Please complete the payment before it expires.', 0, '/my-bookings/FL-641266986'),
(19, '2026-04-06 15:29:30.852', '2026-04-06 15:29:30.852', NULL, 8, 'success', 'Payment Successful', 'Great news! Your payment for booking FL-641266986 was successful. Your ticket is now ready.', 0, '/my-bookings/FL-641266986'),
(20, '2026-04-06 15:32:18.812', '2026-04-06 15:32:18.812', NULL, 8, 'info', 'Booking Created', 'Your booking FL-643382880 has been created. Please complete the payment before it expires.', 0, '/my-bookings/FL-643382880'),
(21, '2026-04-08 09:54:20.344', '2026-04-08 09:54:20.344', NULL, 1, 'success', 'Profile Updated', 'Your profile information and settings have been successfully updated.', 0, ''),
(22, '2026-04-09 07:53:48.225', '2026-04-09 07:53:48.225', NULL, 8, 'info', 'Booking Created', 'Your booking FL-960289372 has been created. Please complete the payment before it expires.', 0, '/my-bookings/FL-960289372'),
(23, '2026-04-09 07:54:35.578', '2026-04-09 07:54:35.578', NULL, 8, 'success', 'Payment Successful', 'Great news! Your payment for booking FL-960289372 was successful. Your ticket is now ready.', 0, '/my-bookings/FL-960289372');

-- --------------------------------------------------------

--
-- Struktur dari tabel `partners`
--

CREATE TABLE `partners` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'DRAFT',
  `commission_rate` decimal(10,2) DEFAULT '0.00',
  `approved_at` datetime DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `address` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `partners`
--

INSERT INTO `partners` (`id`, `user_id`, `company_name`, `type`, `status`, `commission_rate`, `approved_at`, `created_at`, `updated_at`, `deleted_at`, `address`) VALUES
(1, 1, 'Garuda Indonesia', 'airline', 'APPROVED', 0.00, NULL, '2026-04-04 16:43:33.000', '2026-04-08 09:54:20.331', NULL, ''),
(2, NULL, 'Lion Air', 'airline', 'APPROVED', 0.00, NULL, '2026-04-04 16:43:33.000', '2026-04-04 16:43:33.000', NULL, NULL),
(3, NULL, 'Citilink', 'airline', 'APPROVED', 0.00, NULL, '2026-04-04 16:43:33.000', '2026-04-04 16:43:33.000', NULL, NULL),
(4, NULL, 'Batik Air', 'airline', 'APPROVED', 0.00, NULL, '2026-04-04 16:43:33.000', '2026-04-04 16:43:33.000', NULL, NULL),
(5, NULL, 'AirAsia Indonesia', 'airline', 'APPROVED', 0.00, NULL, '2026-04-04 16:43:33.000', '2026-04-04 16:43:33.000', NULL, NULL),
(6, NULL, 'The Mulia Resort', 'hotel', 'APPROVED', 0.00, NULL, '2026-04-04 16:43:33.000', '2026-04-04 16:43:33.000', NULL, NULL),
(7, 10, 'AYANA Resort Bali', 'hotel', 'APPROVED', 0.00, NULL, '2026-04-04 16:43:33.000', '2026-04-04 16:43:33.000', NULL, NULL),
(8, NULL, 'Hotel Indonesia Kempinski', 'hotel', 'APPROVED', 0.00, NULL, '2026-04-04 16:43:33.000', '2026-04-04 16:43:33.000', NULL, NULL),
(9, NULL, 'Padma Resort Legian', 'hotel', 'APPROVED', 0.00, NULL, '2026-04-04 16:43:33.000', '2026-04-04 16:43:33.000', NULL, NULL),
(10, NULL, 'Tugu Hotel Malang', 'hotel', 'APPROVED', 0.00, NULL, '2026-04-04 16:43:33.000', '2026-04-04 16:43:33.000', NULL, NULL),
(11, NULL, 'Garuda Indonesia', 'airline', 'APPROVED', 0.00, NULL, '2026-04-04 17:10:25.000', '2026-04-04 17:10:25.000', NULL, NULL),
(12, NULL, 'Lion Air', 'airline', 'APPROVED', 0.00, NULL, '2026-04-04 17:10:25.000', '2026-04-04 17:10:25.000', NULL, NULL),
(13, NULL, 'Citilink', 'airline', 'APPROVED', 0.00, NULL, '2026-04-04 17:10:25.000', '2026-04-04 17:10:25.000', NULL, NULL),
(14, NULL, 'Batik Air', 'airline', 'APPROVED', 0.00, NULL, '2026-04-04 17:10:25.000', '2026-04-04 17:10:25.000', NULL, NULL),
(15, NULL, 'AirAsia Indonesia', 'airline', 'APPROVED', 0.00, NULL, '2026-04-04 17:10:25.000', '2026-04-04 17:10:25.000', NULL, NULL),
(16, NULL, 'The Mulia Resort', 'hotel', 'APPROVED', 0.00, NULL, '2026-04-04 17:10:25.000', '2026-04-04 17:10:25.000', NULL, NULL),
(17, 8, 'AYANA Resort Bali', 'hotel', 'APPROVED', 0.00, NULL, '2026-04-04 17:10:25.000', '2026-04-04 17:10:25.000', NULL, NULL),
(18, NULL, 'Hotel Indonesia Kempinski', 'hotel', 'APPROVED', 0.00, NULL, '2026-04-04 17:10:25.000', '2026-04-04 17:10:25.000', NULL, NULL),
(19, NULL, 'Padma Resort Legian', 'hotel', 'APPROVED', 0.00, NULL, '2026-04-04 17:10:25.000', '2026-04-04 17:10:25.000', NULL, NULL),
(20, NULL, 'Tugu Hotel Malang', 'hotel', 'APPROVED', 0.00, NULL, '2026-04-04 17:10:25.000', '2026-04-04 17:10:25.000', NULL, NULL),
(21, NULL, 'Bakso', 'flight', 'APPROVED', 0.00, '2026-04-04 21:49:36', '2026-04-04 21:40:38.000', '2026-04-04 21:49:36.000', NULL, ''),
(22, NULL, 'Lion Air', 'flight', 'APPROVED', 0.00, '2026-04-09 08:00:32', '2026-04-09 08:00:13.655', '2026-04-09 08:00:32.305', NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `passengers`
--

CREATE TABLE `passengers` (
  `id` int NOT NULL,
  `booking_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `seat_number` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `passengers`
--

INSERT INTO `passengers` (`id`, `booking_id`, `name`, `type`, `seat_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Coca Cola Rifai', 'adult', '1A', '2026-04-04 17:57:55', '2026-04-04 17:57:55', NULL),
(2, 2, 'Coca Cola Rifai', 'adult', '1A', '2026-04-04 17:58:26', '2026-04-04 17:58:26', NULL),
(3, 3, 'Coca Cola Rifai', 'adult', '1A', '2026-04-05 23:30:46', '2026-04-05 23:30:46', NULL),
(4, 4, 'Coca Cola Rifai', 'adult', '1A', '2026-04-05 23:33:26', '2026-04-05 23:33:26', NULL),
(5, 5, 'Coca Cola Rifai', 'adult', '1A', '2026-04-05 23:37:18', '2026-04-05 23:37:18', NULL),
(6, 6, 'Coca Cola Rifai', 'adult', '1A', '2026-04-05 23:40:33', '2026-04-05 23:40:33', NULL),
(7, 7, 'Coca Cola Rifai', 'adult', '1A', '2026-04-06 08:27:35', '2026-04-06 08:27:35', NULL),
(8, 47, 'Coca Cola Rifai', 'adult', '1A', '2026-04-06 15:26:33', '2026-04-06 15:26:33', NULL),
(9, 48, 'Coca Cola Rifai', 'adult', '1A', '2026-04-06 15:28:46', '2026-04-06 15:28:46', NULL),
(10, 49, 'Coca Cola Rifai', 'adult', '1A', '2026-04-06 15:32:19', '2026-04-06 15:32:19', NULL),
(11, 50, 'Ahmad Rifai', 'adult', '1A', '2026-04-09 07:53:48', '2026-04-09 07:53:48', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` int NOT NULL,
  `booking_id` int DEFAULT NULL,
  `gateway` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'PENDING',
  `paid_at` datetime DEFAULT NULL,
  `raw_response` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `snap_token` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `redirect_url` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `payments`
--

INSERT INTO `payments` (`id`, `booking_id`, `gateway`, `transaction_id`, `amount`, `status`, `paid_at`, `raw_response`, `created_at`, `updated_at`, `deleted_at`, `snap_token`, `redirect_url`) VALUES
(1, 1, 'midtrans', 'FL-2755726', 1250000.00, 'PENDING', NULL, '{}', '2026-04-04 17:57:56', '2026-04-04 17:57:56', NULL, '7defffaa-30aa-49e2-8e02-d97acd7aa37f', 'https://app.sandbox.midtrans.com/snap/v4/redirection/7defffaa-30aa-49e2-8e02-d97acd7aa37f'),
(2, 2, 'midtrans', 'FL-3064990', 1250000.00, 'PAID', '2026-04-05 23:32:57', '{\"order_id\": \"FL-3064990\", \"status_code\": \"200\", \"fraud_status\": \"\", \"gross_amount\": \"1250000.00\", \"payment_type\": \"\", \"signature_key\": \"790d9e3464463f6b5a3d0674e5f0e75241d7c5938cede122d63fd4ec36217f4ca7a0e228a0417aaeac3728808136bdd5de3cb973317ac58e0d035a3975abdda1\", \"transaction_id\": \"\", \"transaction_time\": \"\", \"transaction_status\": \"settlement\"}', '2026-04-04 17:58:27', '2026-04-05 23:32:57', NULL, '3211b0b0-4847-45bf-9630-9fdcbebfedd0', 'https://app.sandbox.midtrans.com/snap/v4/redirection/3211b0b0-4847-45bf-9630-9fdcbebfedd0'),
(3, 3, 'midtrans', 'FL-66454068', 1250000.00, 'PENDING', NULL, '{}', '2026-04-05 23:30:46', '2026-04-05 23:30:46', NULL, '21283a41-e16c-4531-8753-89acc8b0bae1', 'https://app.sandbox.midtrans.com/snap/v4/redirection/21283a41-e16c-4531-8753-89acc8b0bae1'),
(4, 4, 'midtrans', 'FL-68054021', 1250000.00, 'PAID', '2026-04-05 23:39:56', '{\"order_id\": \"FL-68054021\", \"status_code\": \"200\", \"fraud_status\": \"\", \"gross_amount\": \"1250000.00\", \"payment_type\": \"\", \"signature_key\": \"b3c83a1d28eb68b7b689ed4011e82577b6c6b7fe01ab998eccb35d1b9c3cc78f1a5cd73b81b8a5599a9c2ea6af5b38db6d069a1da335552d9e125f77e127481d\", \"transaction_id\": \"\", \"transaction_time\": \"\", \"transaction_status\": \"settlement\"}', '2026-04-05 23:33:26', '2026-04-05 23:39:56', NULL, '9dc7bc15-69d3-4a5e-9339-8c78dc909be2', 'https://app.sandbox.midtrans.com/snap/v4/redirection/9dc7bc15-69d3-4a5e-9339-8c78dc909be2'),
(5, 5, 'midtrans', 'FL-70382540', 1250000.00, 'PENDING', NULL, '{}', '2026-04-05 23:37:18', '2026-04-05 23:37:18', NULL, 'a74755c6-d315-49e2-bcf9-87e6ba870ea5', 'https://app.sandbox.midtrans.com/snap/v4/redirection/a74755c6-d315-49e2-bcf9-87e6ba870ea5'),
(6, 6, 'midtrans', 'FL-72333451', 1387500.00, 'PAID', '2026-04-05 23:41:30', '{\"order_id\": \"FL-72333451\", \"status_code\": \"200\", \"fraud_status\": \"\", \"gross_amount\": \"1387500.00\", \"payment_type\": \"\", \"signature_key\": \"b44de39dd5e6c96e0a434fde4c2a76e99f567e2baeaf6354632f93e6c4995832bf4e1c6741aa8fe3a370216363e4709c550a13b3c5924abcefd997762c3559bb\", \"transaction_id\": \"\", \"transaction_time\": \"\", \"transaction_status\": \"settlement\"}', '2026-04-05 23:40:34', '2026-04-05 23:41:30', NULL, '664c7ffd-4c8c-468a-a382-2a654bc5ff35', 'https://app.sandbox.midtrans.com/snap/v4/redirection/664c7ffd-4c8c-468a-a382-2a654bc5ff35'),
(7, 7, 'midtrans', 'FL-388548488', 1387500.00, 'PAID', '2026-04-06 08:28:27', '{\"order_id\": \"FL-388548488\", \"status_code\": \"200\", \"fraud_status\": \"\", \"gross_amount\": \"3875000.00\", \"payment_type\": \"\", \"signature_key\": \"4e3246ef0609782559b76190c4ba808c9d8c8b9531033e70648882b9aba2ce81c7ae5121a4161e18ec2325abcb0a45ea33f59b434f0a6f14f0ca164586a1a951\", \"transaction_id\": \"\", \"transaction_time\": \"\", \"transaction_status\": \"settlement\"}', '2026-04-06 08:27:35', '2026-04-06 08:28:27', NULL, 'cedcddbb-f2fd-4ccc-a5d9-7f234923a091', 'https://app.sandbox.midtrans.com/snap/v4/redirection/cedcddbb-f2fd-4ccc-a5d9-7f234923a091'),
(8, 44, 'midtrans', 'HT-468254122', 1223775000.00, 'PAID', '2026-04-06 10:42:04', '{\"order_id\": \"HT-468254122\", \"status_code\": \"200\", \"fraud_status\": \"\", \"gross_amount\": \"1223775000.00\", \"payment_type\": \"\", \"signature_key\": \"4d0e012bec389efb388198b5cc142f5a12f81acb4b15e2c21aa08798af1077ec5ac9479a0cd2d360fe6154f76d9526dae28f6c0d12c3678ee026543e10ba90f5\", \"transaction_id\": \"\", \"transaction_time\": \"\", \"transaction_status\": \"settlement\"}', '2026-04-06 10:40:26', '2026-04-06 10:42:04', NULL, '80fbd19f-178d-4c11-a452-82485b3d3428', 'https://app.sandbox.midtrans.com/snap/v4/redirection/80fbd19f-178d-4c11-a452-82485b3d3428'),
(9, 46, 'midtrans', 'HT-493079212', 27750000.00, 'PAID', '2026-04-06 11:35:24', '{\"order_id\": \"HT-493079212\", \"status_code\": \"200\", \"fraud_status\": \"\", \"gross_amount\": \"27750000.00\", \"payment_type\": \"\", \"signature_key\": \"2faa0b8b18d77fb4a045d532ce2c1330c47b4deb79879d532ea6c83350ed9977f21723f46b3139a5fa5c803a225e4ed7aa7b040d24ca059b787cc2d3ab70be74\", \"transaction_id\": \"\", \"transaction_time\": \"\", \"transaction_status\": \"settlement\"}', '2026-04-06 11:21:48', '2026-04-06 11:35:24', NULL, '10d2884d-c1c9-4607-b382-4e68291eca6d', 'https://app.sandbox.midtrans.com/snap/v4/redirection/10d2884d-c1c9-4607-b382-4e68291eca6d'),
(10, 47, 'midtrans', 'FL-639929127', 1387500.00, 'PAID', '2026-04-06 15:28:22', '{\"order_id\": \"FL-639929127\", \"status_code\": \"200\", \"fraud_status\": \"\", \"gross_amount\": \"1387500.00\", \"payment_type\": \"\", \"signature_key\": \"f3a4a4e0f6e830f0fec4537ea5cb24c96dab3d0c45bc6e7f813508f660bd9a945bd0d6662d876a641c2bfdb727893cfd114a578bd50b1b6c62c5caafac39a27c\", \"transaction_id\": \"\", \"transaction_time\": \"\", \"transaction_status\": \"settlement\"}', '2026-04-06 15:26:33', '2026-04-06 15:28:22', NULL, 'af5d9f85-18eb-4606-a0f3-a178693935a1', 'https://app.sandbox.midtrans.com/snap/v4/redirection/af5d9f85-18eb-4606-a0f3-a178693935a1'),
(11, 48, 'midtrans', 'FL-641266986', 1387500.00, 'PAID', '2026-04-06 15:29:31', '{\"order_id\": \"FL-641266986\", \"status_code\": \"200\", \"fraud_status\": \"\", \"gross_amount\": \"1387500.00\", \"payment_type\": \"\", \"signature_key\": \"44108d5769a33ca82a221f3b7de4255fab250a1008a16604fe71e4327fc060775aa30fddc2008ea652965ef1e614476de5b5c2bdd2831e2e1e8eff379f32840d\", \"transaction_id\": \"\", \"transaction_time\": \"\", \"transaction_status\": \"settlement\"}', '2026-04-06 15:28:47', '2026-04-06 15:29:31', NULL, '357c9745-ce35-4b8e-a2b1-5a0cfad73495', 'https://app.sandbox.midtrans.com/snap/v4/redirection/357c9745-ce35-4b8e-a2b1-5a0cfad73495'),
(12, 49, 'midtrans', 'FL-643382880', 1387500.00, 'PENDING', NULL, '{}', '2026-04-06 15:32:19', '2026-04-06 15:32:19', NULL, 'd090c89a-b236-43e0-8a3c-e19336ead51b', 'https://app.sandbox.midtrans.com/snap/v4/redirection/d090c89a-b236-43e0-8a3c-e19336ead51b'),
(13, 50, 'midtrans', 'FL-960289372', 2331000.00, 'PAID', '2026-04-09 07:54:36', '{\"order_id\": \"FL-960289372\", \"status_code\": \"200\", \"fraud_status\": \"\", \"gross_amount\": \"2331000.00\", \"payment_type\": \"\", \"signature_key\": \"2f8cafa3ab09d273b9a97e873838b29660bdd48c0da383b27bc33fb81fb4b47fb2bedc0c4772ba2c8d09709923efd0287129006742a0c39f6a6d51b5b02d66ac\", \"transaction_id\": \"\", \"transaction_time\": \"\", \"transaction_status\": \"settlement\"}', '2026-04-09 07:53:48', '2026-04-09 07:54:36', NULL, '0444d8b9-f51d-47f8-9ded-73da070adfc2', 'https://app.sandbox.midtrans.com/snap/v4/redirection/0444d8b9-f51d-47f8-9ded-73da070adfc2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payout_requests`
--

CREATE TABLE `payout_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `partner_id` bigint UNSIGNED DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `bank_account_id` bigint UNSIGNED DEFAULT NULL,
  `requested_at` datetime(3) DEFAULT NULL,
  `processed_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `payout_requests`
--

INSERT INTO `payout_requests` (`id`, `created_at`, `updated_at`, `deleted_at`, `partner_id`, `amount`, `status`, `bank_account_id`, `requested_at`, `processed_at`) VALUES
(1, '2026-04-05 11:26:14.280', '2026-04-05 11:27:31.786', NULL, 1, 900000.00, 'processing', 1, '2026-04-05 11:26:14.280', '2026-04-05 11:27:31.785');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payout_settings`
--

CREATE TABLE `payout_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `partner_id` bigint UNSIGNED DEFAULT NULL,
  `schedule` varchar(50) DEFAULT 'Weekly',
  `threshold_amount` decimal(15,2) DEFAULT '500000.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `payout_settings`
--

INSERT INTO `payout_settings` (`id`, `created_at`, `updated_at`, `deleted_at`, `partner_id`, `schedule`, `threshold_amount`) VALUES
(1, '2026-04-05 11:23:56.839', '2026-04-05 11:24:21.900', NULL, 1, 'Threshold', 600000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `platform_settings`
--

CREATE TABLE `platform_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `key` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `partner_id` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'active',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `listings` json DEFAULT NULL,
  `claims` int DEFAULT '0',
  `revenue` decimal(15,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `promotions`
--

INSERT INTO `promotions` (`id`, `created_at`, `updated_at`, `deleted_at`, `partner_id`, `name`, `code`, `description`, `image_url`, `type`, `discount`, `status`, `start_date`, `end_date`, `listings`, `claims`, `revenue`) VALUES
(1, '2026-04-04 23:39:22', '2026-04-04 23:39:22', NULL, 21, 'ss', '81DYB2', '', '', 'early_bird', 20.00, 'active', '2026-04-04 07:00:00', '2026-04-04 07:00:00', '[41]', 0, 0.00),
(2, '2026-04-04 23:39:56', '2026-04-04 23:39:56', NULL, 21, 'zxs', 'G4WOSS', '', '', 'seasonal', 10.00, 'active', '2026-04-04 07:00:00', '2026-04-05 07:00:00', '[41]', 0, 0.00),
(3, '2026-04-06 13:10:45', '2026-04-06 13:10:45', NULL, 7, 'Summer Special', '9WYXJG', '', '', 'seasonal', 10.00, 'active', '2026-04-06 07:00:00', '2026-04-07 07:00:00', '[2]', 0, 0.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `booking_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `rating` int NOT NULL,
  `comment` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `room_availabilities`
--

CREATE TABLE `room_availabilities` (
  `id` int NOT NULL,
  `room_type_id` int DEFAULT NULL,
  `date` date NOT NULL,
  `available_rooms` int NOT NULL,
  `price_override` decimal(15,2) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `room_availabilities`
--

INSERT INTO `room_availabilities` (`id`, `room_type_id`, `date`, `available_rooms`, `price_override`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2026-05-04', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(2, 1, '2026-05-03', 4, 5400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(3, 1, '2026-05-02', 4, 5400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(4, 1, '2026-05-01', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(5, 1, '2026-04-30', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(6, 1, '2026-04-29', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(7, 1, '2026-04-28', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(8, 1, '2026-04-27', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(9, 1, '2026-04-26', 5, 5400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(10, 1, '2026-04-25', 2, 5400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(11, 1, '2026-04-24', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(12, 1, '2026-04-23', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(13, 1, '2026-04-22', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(14, 1, '2026-04-21', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(15, 1, '2026-04-20', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(16, 1, '2026-04-19', 4, 5400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(17, 1, '2026-04-18', 4, 5400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(18, 1, '2026-04-17', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(19, 1, '2026-04-16', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(20, 1, '2026-04-15', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(21, 1, '2026-04-14', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(22, 1, '2026-04-13', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(23, 1, '2026-04-12', 5, 5400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(24, 1, '2026-04-11', 5, 5400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(25, 1, '2026-04-10', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(26, 1, '2026-04-09', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(27, 1, '2026-04-08', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(28, 1, '2026-04-07', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(29, 1, '2026-04-06', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(30, 1, '2026-04-05', 6, 5400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(31, 1, '2026-04-04', 3, 5400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(32, 2, '2026-05-04', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(33, 2, '2026-05-03', 4, 10200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(34, 2, '2026-05-02', 5, 10200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(35, 2, '2026-05-01', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(36, 2, '2026-04-30', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(37, 2, '2026-04-29', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(38, 2, '2026-04-28', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(39, 2, '2026-04-27', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(40, 2, '2026-04-26', 5, 10200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(41, 2, '2026-04-25', 3, 10200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(42, 2, '2026-04-24', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(43, 2, '2026-04-23', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(44, 2, '2026-04-22', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(45, 2, '2026-04-21', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(46, 2, '2026-04-20', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(47, 2, '2026-04-19', 4, 10200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(48, 2, '2026-04-18', 2, 10200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(49, 2, '2026-04-17', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(50, 2, '2026-04-16', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(51, 2, '2026-04-15', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(52, 2, '2026-04-14', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(53, 2, '2026-04-13', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(54, 2, '2026-04-12', 2, 10200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(55, 2, '2026-04-11', 5, 10200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(56, 2, '2026-04-10', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(57, 2, '2026-04-09', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(58, 2, '2026-04-08', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(59, 2, '2026-04-07', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(60, 2, '2026-04-06', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(61, 2, '2026-04-05', 3, 10200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(62, 2, '2026-04-04', 6, 10200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(63, 3, '2026-05-04', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(64, 3, '2026-05-03', 5, 30000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(65, 3, '2026-05-02', 2, 30000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(66, 3, '2026-05-01', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(67, 3, '2026-04-30', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(68, 3, '2026-04-29', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(69, 3, '2026-04-28', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(70, 3, '2026-04-27', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(71, 3, '2026-04-26', 3, 30000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(72, 3, '2026-04-25', 3, 30000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(73, 3, '2026-04-24', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(74, 3, '2026-04-23', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(75, 3, '2026-04-22', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(76, 3, '2026-04-21', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(77, 3, '2026-04-20', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(78, 3, '2026-04-19', 3, 30000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(79, 3, '2026-04-18', 2, 30000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(80, 3, '2026-04-17', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(81, 3, '2026-04-16', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(82, 3, '2026-04-15', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(83, 3, '2026-04-14', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(84, 3, '2026-04-13', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(85, 3, '2026-04-12', 6, 30000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(86, 3, '2026-04-11', 3, 30000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(87, 3, '2026-04-10', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(88, 3, '2026-04-09', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(89, 3, '2026-04-08', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(90, 3, '2026-04-07', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(91, 3, '2026-04-06', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(92, 3, '2026-04-05', 2, 30000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(93, 3, '2026-04-04', 4, 30000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(94, 4, '2026-05-04', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(95, 4, '2026-05-03', 2, 3360000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(96, 4, '2026-05-02', 5, 3360000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(97, 4, '2026-05-01', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(98, 4, '2026-04-30', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(99, 4, '2026-04-29', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(100, 4, '2026-04-28', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(101, 4, '2026-04-27', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(102, 4, '2026-04-26', 2, 3360000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(103, 4, '2026-04-25', 4, 3360000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(104, 4, '2026-04-24', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(105, 4, '2026-04-23', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(106, 4, '2026-04-22', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(107, 4, '2026-04-21', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(108, 4, '2026-04-20', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(109, 4, '2026-04-19', 6, 3360000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(110, 4, '2026-04-18', 4, 3360000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(111, 4, '2026-04-17', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(112, 4, '2026-04-16', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(113, 4, '2026-04-15', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(114, 4, '2026-04-14', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(115, 4, '2026-04-13', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(116, 4, '2026-04-12', 3, 3360000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(117, 4, '2026-04-11', 3, 3360000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(118, 4, '2026-04-10', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(119, 4, '2026-04-09', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(120, 4, '2026-04-08', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(121, 4, '2026-04-07', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(122, 4, '2026-04-06', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(123, 4, '2026-04-05', 4, 3360000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(124, 4, '2026-04-04', 4, 3360000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(125, 5, '2026-05-04', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(126, 5, '2026-05-03', 6, 4560000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(127, 5, '2026-05-02', 6, 4560000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(128, 5, '2026-05-01', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(129, 5, '2026-04-30', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(130, 5, '2026-04-29', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(131, 5, '2026-04-28', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(132, 5, '2026-04-27', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(133, 5, '2026-04-26', 2, 4560000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(134, 5, '2026-04-25', 3, 4560000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(135, 5, '2026-04-24', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(136, 5, '2026-04-23', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(137, 5, '2026-04-22', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(138, 5, '2026-04-21', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(139, 5, '2026-04-20', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(140, 5, '2026-04-19', 4, 4560000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(141, 5, '2026-04-18', 4, 4560000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(142, 5, '2026-04-17', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(143, 5, '2026-04-16', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(144, 5, '2026-04-15', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(145, 5, '2026-04-14', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(146, 5, '2026-04-13', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(147, 5, '2026-04-12', 2, 4560000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(148, 5, '2026-04-11', 2, 4560000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(149, 5, '2026-04-10', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(150, 5, '2026-04-09', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(151, 5, '2026-04-08', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(152, 5, '2026-04-07', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(153, 5, '2026-04-06', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(154, 5, '2026-04-05', 4, 4560000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(155, 5, '2026-04-04', 5, 4560000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(156, 6, '2026-05-04', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(157, 6, '2026-05-03', 5, 8640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(158, 6, '2026-05-02', 2, 8640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(159, 6, '2026-05-01', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(160, 6, '2026-04-30', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(161, 6, '2026-04-29', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(162, 6, '2026-04-28', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(163, 6, '2026-04-27', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(164, 6, '2026-04-26', 5, 8640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(165, 6, '2026-04-25', 6, 8640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(166, 6, '2026-04-24', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(167, 6, '2026-04-23', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(168, 6, '2026-04-22', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(169, 6, '2026-04-21', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(170, 6, '2026-04-20', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(171, 6, '2026-04-19', 5, 8640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(172, 6, '2026-04-18', 4, 8640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(173, 6, '2026-04-17', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(174, 6, '2026-04-16', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(175, 6, '2026-04-15', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(176, 6, '2026-04-14', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(177, 6, '2026-04-13', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(178, 6, '2026-04-12', 5, 8640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(179, 6, '2026-04-11', 6, 8640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(180, 6, '2026-04-10', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(181, 6, '2026-04-09', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(182, 6, '2026-04-08', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(183, 6, '2026-04-07', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(184, 6, '2026-04-06', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(185, 6, '2026-04-05', 2, 8640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(186, 6, '2026-04-04', 4, 8640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(187, 7, '2026-05-04', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(188, 7, '2026-05-03', 6, 3840000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(189, 7, '2026-05-02', 5, 3840000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(190, 7, '2026-05-01', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(191, 7, '2026-04-30', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(192, 7, '2026-04-29', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(193, 7, '2026-04-28', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(194, 7, '2026-04-27', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(195, 7, '2026-04-26', 4, 3840000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(196, 7, '2026-04-25', 2, 3840000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(197, 7, '2026-04-24', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(198, 7, '2026-04-23', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(199, 7, '2026-04-22', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(200, 7, '2026-04-21', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(201, 7, '2026-04-20', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(202, 7, '2026-04-19', 4, 3840000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(203, 7, '2026-04-18', 4, 3840000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(204, 7, '2026-04-17', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(205, 7, '2026-04-16', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(206, 7, '2026-04-15', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(207, 7, '2026-04-14', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(208, 7, '2026-04-13', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(209, 7, '2026-04-12', 2, 3840000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(210, 7, '2026-04-11', 2, 3840000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(211, 7, '2026-04-10', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(212, 7, '2026-04-09', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(213, 7, '2026-04-08', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(214, 7, '2026-04-07', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(215, 7, '2026-04-06', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(216, 7, '2026-04-05', 2, 3840000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(217, 7, '2026-04-04', 6, 3840000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(218, 8, '2026-05-04', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(219, 8, '2026-05-03', 5, 6960000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(220, 8, '2026-05-02', 2, 6960000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(221, 8, '2026-05-01', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(222, 8, '2026-04-30', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(223, 8, '2026-04-29', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(224, 8, '2026-04-28', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(225, 8, '2026-04-27', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(226, 8, '2026-04-26', 6, 6960000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(227, 8, '2026-04-25', 6, 6960000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(228, 8, '2026-04-24', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(229, 8, '2026-04-23', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(230, 8, '2026-04-22', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(231, 8, '2026-04-21', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(232, 8, '2026-04-20', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(233, 8, '2026-04-19', 4, 6960000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(234, 8, '2026-04-18', 4, 6960000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(235, 8, '2026-04-17', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(236, 8, '2026-04-16', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(237, 8, '2026-04-15', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(238, 8, '2026-04-14', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(239, 8, '2026-04-13', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(240, 8, '2026-04-12', 5, 6960000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(241, 8, '2026-04-11', 2, 6960000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(242, 8, '2026-04-10', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(243, 8, '2026-04-09', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(244, 8, '2026-04-08', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(245, 8, '2026-04-07', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(246, 8, '2026-04-06', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(247, 8, '2026-04-05', 2, 6960000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(248, 8, '2026-04-04', 6, 6960000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(249, 9, '2026-05-04', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(250, 9, '2026-05-03', 5, 2160000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(251, 9, '2026-05-02', 2, 2160000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(252, 9, '2026-05-01', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(253, 9, '2026-04-30', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(254, 9, '2026-04-29', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(255, 9, '2026-04-28', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(256, 9, '2026-04-27', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(257, 9, '2026-04-26', 2, 2160000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(258, 9, '2026-04-25', 6, 2160000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(259, 9, '2026-04-24', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(260, 9, '2026-04-23', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(261, 9, '2026-04-22', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(262, 9, '2026-04-21', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(263, 9, '2026-04-20', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(264, 9, '2026-04-19', 5, 2160000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(265, 9, '2026-04-18', 4, 2160000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(266, 9, '2026-04-17', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(267, 9, '2026-04-16', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(268, 9, '2026-04-15', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(269, 9, '2026-04-14', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(270, 9, '2026-04-13', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(271, 9, '2026-04-12', 6, 2160000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(272, 9, '2026-04-11', 4, 2160000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(273, 9, '2026-04-10', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(274, 9, '2026-04-09', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(275, 9, '2026-04-08', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(276, 9, '2026-04-07', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(277, 9, '2026-04-06', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(278, 9, '2026-04-05', 3, 2160000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(279, 9, '2026-04-04', 3, 2160000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(280, 10, '2026-05-04', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(281, 10, '2026-05-03', 6, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(282, 10, '2026-05-02', 5, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(283, 10, '2026-05-01', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(284, 10, '2026-04-30', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(285, 10, '2026-04-29', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(286, 10, '2026-04-28', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(287, 10, '2026-04-27', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(288, 10, '2026-04-26', 2, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(289, 10, '2026-04-25', 4, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(290, 10, '2026-04-24', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(291, 10, '2026-04-23', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(292, 10, '2026-04-22', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(293, 10, '2026-04-21', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(294, 10, '2026-04-20', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(295, 10, '2026-04-19', 3, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(296, 10, '2026-04-18', 2, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(297, 10, '2026-04-17', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(298, 10, '2026-04-16', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(299, 10, '2026-04-15', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(300, 10, '2026-04-14', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(301, 10, '2026-04-13', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(302, 10, '2026-04-12', 3, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(303, 10, '2026-04-11', 6, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(304, 10, '2026-04-10', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(305, 10, '2026-04-09', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(306, 10, '2026-04-08', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(307, 10, '2026-04-07', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(308, 10, '2026-04-06', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(309, 10, '2026-04-05', 2, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(310, 10, '2026-04-04', 4, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(311, 11, '2026-05-04', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(312, 11, '2026-05-03', 6, 1440000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(313, 11, '2026-05-02', 5, 1440000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(314, 11, '2026-05-01', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(315, 11, '2026-04-30', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(316, 11, '2026-04-29', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(317, 11, '2026-04-28', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(318, 11, '2026-04-27', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(319, 11, '2026-04-26', 5, 1440000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(320, 11, '2026-04-25', 5, 1440000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(321, 11, '2026-04-24', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(322, 11, '2026-04-23', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(323, 11, '2026-04-22', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(324, 11, '2026-04-21', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(325, 11, '2026-04-20', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(326, 11, '2026-04-19', 3, 1440000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(327, 11, '2026-04-18', 2, 1440000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(328, 11, '2026-04-17', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(329, 11, '2026-04-16', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(330, 11, '2026-04-15', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(331, 11, '2026-04-14', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(332, 11, '2026-04-13', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(333, 11, '2026-04-12', 4, 1440000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(334, 11, '2026-04-11', 4, 1440000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(335, 11, '2026-04-10', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(336, 11, '2026-04-09', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(337, 11, '2026-04-08', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(338, 11, '2026-04-07', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(339, 11, '2026-04-06', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(340, 11, '2026-04-05', 2, 1440000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(341, 11, '2026-04-04', 3, 1440000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(342, 12, '2026-05-04', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(343, 12, '2026-05-03', 3, 2640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(344, 12, '2026-05-02', 2, 2640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(345, 12, '2026-05-01', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(346, 12, '2026-04-30', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(347, 12, '2026-04-29', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(348, 12, '2026-04-28', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(349, 12, '2026-04-27', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(350, 12, '2026-04-26', 6, 2640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(351, 12, '2026-04-25', 3, 2640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(352, 12, '2026-04-24', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(353, 12, '2026-04-23', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(354, 12, '2026-04-22', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(355, 12, '2026-04-21', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(356, 12, '2026-04-20', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(357, 12, '2026-04-19', 3, 2640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(358, 12, '2026-04-18', 3, 2640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(359, 12, '2026-04-17', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(360, 12, '2026-04-16', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(361, 12, '2026-04-15', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(362, 12, '2026-04-14', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(363, 12, '2026-04-13', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(364, 12, '2026-04-12', 6, 2640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(365, 12, '2026-04-11', 4, 2640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(366, 12, '2026-04-10', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(367, 12, '2026-04-09', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(368, 12, '2026-04-08', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(369, 12, '2026-04-07', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(370, 12, '2026-04-06', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(371, 12, '2026-04-05', 6, 2640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(372, 12, '2026-04-04', 4, 2640000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(373, 13, '2026-05-04', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(374, 13, '2026-05-03', 4, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(375, 13, '2026-05-02', 5, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(376, 13, '2026-05-01', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(377, 13, '2026-04-30', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(378, 13, '2026-04-29', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(379, 13, '2026-04-28', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(380, 13, '2026-04-27', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(381, 13, '2026-04-26', 4, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(382, 13, '2026-04-25', 2, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(383, 13, '2026-04-24', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(384, 13, '2026-04-23', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(385, 13, '2026-04-22', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(386, 13, '2026-04-21', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(387, 13, '2026-04-20', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(388, 13, '2026-04-19', 2, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(389, 13, '2026-04-18', 4, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(390, 13, '2026-04-17', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(391, 13, '2026-04-16', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(392, 13, '2026-04-15', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(393, 13, '2026-04-14', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(394, 13, '2026-04-13', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(395, 13, '2026-04-12', 4, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(396, 13, '2026-04-11', 4, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(397, 13, '2026-04-10', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(398, 13, '2026-04-09', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(399, 13, '2026-04-08', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(400, 13, '2026-04-07', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(401, 13, '2026-04-06', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(402, 13, '2026-04-05', 4, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(403, 13, '2026-04-04', 4, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(404, 14, '2026-05-04', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(405, 14, '2026-05-03', 5, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(406, 14, '2026-05-02', 5, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(407, 14, '2026-05-01', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(408, 14, '2026-04-30', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(409, 14, '2026-04-29', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(410, 14, '2026-04-28', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(411, 14, '2026-04-27', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(412, 14, '2026-04-26', 3, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(413, 14, '2026-04-25', 2, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(414, 14, '2026-04-24', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(415, 14, '2026-04-23', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(416, 14, '2026-04-22', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(417, 14, '2026-04-21', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(418, 14, '2026-04-20', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(419, 14, '2026-04-19', 3, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(420, 14, '2026-04-18', 5, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(421, 14, '2026-04-17', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(422, 14, '2026-04-16', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(423, 14, '2026-04-15', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(424, 14, '2026-04-14', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(425, 14, '2026-04-13', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(426, 14, '2026-04-12', 3, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(427, 14, '2026-04-11', 3, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(428, 14, '2026-04-10', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(429, 14, '2026-04-09', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(430, 14, '2026-04-08', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(431, 14, '2026-04-07', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(432, 14, '2026-04-06', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(433, 14, '2026-04-05', 4, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(434, 14, '2026-04-04', 4, 4200000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(435, 15, '2026-05-04', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(436, 15, '2026-05-03', 3, 3000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(437, 15, '2026-05-02', 3, 3000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(438, 15, '2026-05-01', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(439, 15, '2026-04-30', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(440, 15, '2026-04-29', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(441, 15, '2026-04-28', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(442, 15, '2026-04-27', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(443, 15, '2026-04-26', 6, 3000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(444, 15, '2026-04-25', 2, 3000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(445, 15, '2026-04-24', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(446, 15, '2026-04-23', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(447, 15, '2026-04-22', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(448, 15, '2026-04-21', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(449, 15, '2026-04-20', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(450, 15, '2026-04-19', 2, 3000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(451, 15, '2026-04-18', 4, 3000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(452, 15, '2026-04-17', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(453, 15, '2026-04-16', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(454, 15, '2026-04-15', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(455, 15, '2026-04-14', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(456, 15, '2026-04-13', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(457, 15, '2026-04-12', 6, 3000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(458, 15, '2026-04-11', 2, 3000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(459, 15, '2026-04-10', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(460, 15, '2026-04-09', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(461, 15, '2026-04-08', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(462, 15, '2026-04-07', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(463, 15, '2026-04-06', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(464, 15, '2026-04-05', 3, 3000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(465, 15, '2026-04-04', 2, 3000000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(466, 16, '2026-05-04', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(467, 16, '2026-05-03', 3, 2400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(468, 16, '2026-05-02', 3, 2400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(469, 16, '2026-05-01', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(470, 16, '2026-04-30', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(471, 16, '2026-04-29', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(472, 16, '2026-04-28', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(473, 16, '2026-04-27', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(474, 16, '2026-04-26', 5, 2400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(475, 16, '2026-04-25', 3, 2400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(476, 16, '2026-04-24', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(477, 16, '2026-04-23', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(478, 16, '2026-04-22', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(479, 16, '2026-04-21', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(480, 16, '2026-04-20', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(481, 16, '2026-04-19', 5, 2400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(482, 16, '2026-04-18', 2, 2400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(483, 16, '2026-04-17', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(484, 16, '2026-04-16', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(485, 16, '2026-04-15', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(486, 16, '2026-04-14', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(487, 16, '2026-04-13', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(488, 16, '2026-04-12', 2, 2400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(489, 16, '2026-04-11', 3, 2400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(490, 16, '2026-04-10', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(491, 16, '2026-04-09', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(492, 16, '2026-04-08', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(493, 16, '2026-04-07', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(494, 16, '2026-04-06', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(495, 16, '2026-04-05', 3, 2400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(496, 16, '2026-04-04', 3, 2400000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(497, 17, '2026-05-04', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(498, 17, '2026-05-03', 5, 6600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(499, 17, '2026-05-02', 6, 6600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(500, 17, '2026-05-01', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(501, 17, '2026-04-30', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(502, 17, '2026-04-29', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(503, 17, '2026-04-28', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(504, 17, '2026-04-27', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(505, 17, '2026-04-26', 4, 6600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(506, 17, '2026-04-25', 4, 6600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(507, 17, '2026-04-24', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(508, 17, '2026-04-23', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(509, 17, '2026-04-22', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(510, 17, '2026-04-21', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(511, 17, '2026-04-20', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(512, 17, '2026-04-19', 4, 6600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(513, 17, '2026-04-18', 3, 6600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(514, 17, '2026-04-17', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(515, 17, '2026-04-16', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(516, 17, '2026-04-15', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(517, 17, '2026-04-14', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(518, 17, '2026-04-13', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(519, 17, '2026-04-12', 5, 6600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(520, 17, '2026-04-11', 4, 6600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(521, 17, '2026-04-10', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(522, 17, '2026-04-09', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(523, 17, '2026-04-08', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(524, 17, '2026-04-07', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(525, 17, '2026-04-06', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(526, 17, '2026-04-05', 4, 6600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(527, 17, '2026-04-04', 4, 6600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(528, 18, '2026-05-04', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(529, 18, '2026-05-03', 4, 1800000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(530, 18, '2026-05-02', 6, 1800000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(531, 18, '2026-05-01', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(532, 18, '2026-04-30', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(533, 18, '2026-04-29', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(534, 18, '2026-04-28', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(535, 18, '2026-04-27', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(536, 18, '2026-04-26', 2, 1800000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(537, 18, '2026-04-25', 4, 1800000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(538, 18, '2026-04-24', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(539, 18, '2026-04-23', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(540, 18, '2026-04-22', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(541, 18, '2026-04-21', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(542, 18, '2026-04-20', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(543, 18, '2026-04-19', 5, 1800000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(544, 18, '2026-04-18', 5, 1800000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(545, 18, '2026-04-17', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(546, 18, '2026-04-16', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(547, 18, '2026-04-15', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(548, 18, '2026-04-14', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(549, 18, '2026-04-13', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(550, 18, '2026-04-12', 2, 1800000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(551, 18, '2026-04-11', 6, 1800000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(552, 18, '2026-04-10', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(553, 18, '2026-04-09', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(554, 18, '2026-04-08', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(555, 18, '2026-04-07', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(556, 18, '2026-04-06', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(557, 18, '2026-04-05', 2, 1800000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(558, 18, '2026-04-04', 6, 1800000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(559, 19, '2026-05-04', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(560, 19, '2026-05-03', 5, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(561, 19, '2026-05-02', 5, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(562, 19, '2026-05-01', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(563, 19, '2026-04-30', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(564, 19, '2026-04-29', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(565, 19, '2026-04-28', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(566, 19, '2026-04-27', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(567, 19, '2026-04-26', 4, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(568, 19, '2026-04-25', 3, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(569, 19, '2026-04-24', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(570, 19, '2026-04-23', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(571, 19, '2026-04-22', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(572, 19, '2026-04-21', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(573, 19, '2026-04-20', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(574, 19, '2026-04-19', 2, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(575, 19, '2026-04-18', 4, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(576, 19, '2026-04-17', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(577, 19, '2026-04-16', 4, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(578, 19, '2026-04-15', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(579, 19, '2026-04-14', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(580, 19, '2026-04-13', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(581, 19, '2026-04-12', 6, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(582, 19, '2026-04-11', 4, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(583, 19, '2026-04-10', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(584, 19, '2026-04-09', 3, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL);
INSERT INTO `room_availabilities` (`id`, `room_type_id`, `date`, `available_rooms`, `price_override`, `created_at`, `updated_at`, `deleted_at`) VALUES
(585, 19, '2026-04-08', 2, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(586, 19, '2026-04-07', 6, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(587, 19, '2026-04-06', 5, NULL, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(588, 19, '2026-04-05', 6, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(589, 19, '2026-04-04', 3, 3600000.00, '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(1024, 1, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1025, 1, '2026-05-03', 2, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1026, 1, '2026-05-02', 4, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1027, 1, '2026-05-01', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1028, 1, '2026-04-30', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1029, 1, '2026-04-29', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1030, 1, '2026-04-28', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1031, 1, '2026-04-27', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1032, 1, '2026-04-26', 2, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1033, 1, '2026-04-25', 3, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1034, 1, '2026-04-24', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1035, 1, '2026-04-23', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1036, 1, '2026-04-22', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1037, 1, '2026-04-21', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1038, 1, '2026-04-20', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1039, 1, '2026-04-19', 6, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1040, 1, '2026-04-18', 2, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1041, 1, '2026-04-17', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1042, 1, '2026-04-16', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1043, 1, '2026-04-15', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1044, 1, '2026-04-14', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1045, 1, '2026-04-13', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1046, 1, '2026-04-12', 6, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1047, 1, '2026-04-11', 5, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1048, 1, '2026-04-10', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1049, 1, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1050, 1, '2026-04-08', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1051, 1, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1052, 1, '2026-04-06', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1053, 1, '2026-04-05', 3, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1054, 1, '2026-04-04', 2, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1055, 2, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1056, 2, '2026-05-03', 6, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1057, 2, '2026-05-02', 5, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1058, 2, '2026-05-01', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1059, 2, '2026-04-30', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1060, 2, '2026-04-29', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1061, 2, '2026-04-28', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1062, 2, '2026-04-27', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1063, 2, '2026-04-26', 3, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1064, 2, '2026-04-25', 4, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1065, 2, '2026-04-24', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1066, 2, '2026-04-23', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1067, 2, '2026-04-22', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1068, 2, '2026-04-21', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1069, 2, '2026-04-20', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1070, 2, '2026-04-19', 5, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1071, 2, '2026-04-18', 3, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1072, 2, '2026-04-17', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1073, 2, '2026-04-16', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1074, 2, '2026-04-15', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1075, 2, '2026-04-14', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1076, 2, '2026-04-13', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1077, 2, '2026-04-12', 6, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1078, 2, '2026-04-11', 5, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1079, 2, '2026-04-10', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1080, 2, '2026-04-09', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1081, 2, '2026-04-08', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1082, 2, '2026-04-07', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1083, 2, '2026-04-06', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1084, 2, '2026-04-05', 5, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1085, 2, '2026-04-04', 3, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1086, 3, '2026-05-04', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1087, 3, '2026-05-03', 5, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1088, 3, '2026-05-02', 4, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1089, 3, '2026-05-01', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1090, 3, '2026-04-30', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1091, 3, '2026-04-29', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1092, 3, '2026-04-28', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1093, 3, '2026-04-27', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1094, 3, '2026-04-26', 4, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1095, 3, '2026-04-25', 3, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1096, 3, '2026-04-24', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1097, 3, '2026-04-23', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1098, 3, '2026-04-22', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1099, 3, '2026-04-21', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1100, 3, '2026-04-20', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1101, 3, '2026-04-19', 4, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1102, 3, '2026-04-18', 2, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1103, 3, '2026-04-17', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1104, 3, '2026-04-16', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1105, 3, '2026-04-15', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1106, 3, '2026-04-14', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1107, 3, '2026-04-13', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1108, 3, '2026-04-12', 2, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1109, 3, '2026-04-11', 2, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1110, 3, '2026-04-10', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1111, 3, '2026-04-09', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1112, 3, '2026-04-08', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1113, 3, '2026-04-07', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1114, 3, '2026-04-06', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1115, 3, '2026-04-05', 5, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1116, 3, '2026-04-04', 6, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1117, 4, '2026-05-04', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1118, 4, '2026-05-03', 5, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1119, 4, '2026-05-02', 3, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1120, 4, '2026-05-01', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1121, 4, '2026-04-30', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1122, 4, '2026-04-29', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1123, 4, '2026-04-28', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1124, 4, '2026-04-27', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1125, 4, '2026-04-26', 5, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1126, 4, '2026-04-25', 3, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1127, 4, '2026-04-24', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1128, 4, '2026-04-23', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1129, 4, '2026-04-22', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1130, 4, '2026-04-21', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1131, 4, '2026-04-20', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1132, 4, '2026-04-19', 3, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1133, 4, '2026-04-18', 6, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1134, 4, '2026-04-17', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1135, 4, '2026-04-16', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1136, 4, '2026-04-15', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1137, 4, '2026-04-14', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1138, 4, '2026-04-13', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1139, 4, '2026-04-12', 6, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1140, 4, '2026-04-11', 3, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1141, 4, '2026-04-10', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1142, 4, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1143, 4, '2026-04-08', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1144, 4, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1145, 4, '2026-04-06', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1146, 4, '2026-04-05', 4, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1147, 4, '2026-04-04', 4, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1148, 5, '2026-05-04', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1149, 5, '2026-05-03', 3, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1150, 5, '2026-05-02', 3, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1151, 5, '2026-05-01', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1152, 5, '2026-04-30', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1153, 5, '2026-04-29', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1154, 5, '2026-04-28', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1155, 5, '2026-04-27', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1156, 5, '2026-04-26', 3, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1157, 5, '2026-04-25', 5, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1158, 5, '2026-04-24', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1159, 5, '2026-04-23', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1160, 5, '2026-04-22', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1161, 5, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1162, 5, '2026-04-20', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1163, 5, '2026-04-19', 4, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1164, 5, '2026-04-18', 3, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1165, 5, '2026-04-17', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1166, 5, '2026-04-16', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1167, 5, '2026-04-15', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1168, 5, '2026-04-14', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1169, 5, '2026-04-13', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1170, 5, '2026-04-12', 2, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1171, 5, '2026-04-11', 4, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1172, 5, '2026-04-10', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1173, 5, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1174, 5, '2026-04-08', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1175, 5, '2026-04-07', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1176, 5, '2026-04-06', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1177, 5, '2026-04-05', 2, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1178, 5, '2026-04-04', 6, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1179, 6, '2026-05-04', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1180, 6, '2026-05-03', 5, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1181, 6, '2026-05-02', 4, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1182, 6, '2026-05-01', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1183, 6, '2026-04-30', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1184, 6, '2026-04-29', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1185, 6, '2026-04-28', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1186, 6, '2026-04-27', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1187, 6, '2026-04-26', 4, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1188, 6, '2026-04-25', 2, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1189, 6, '2026-04-24', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1190, 6, '2026-04-23', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1191, 6, '2026-04-22', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1192, 6, '2026-04-21', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1193, 6, '2026-04-20', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1194, 6, '2026-04-19', 3, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1195, 6, '2026-04-18', 4, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1196, 6, '2026-04-17', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1197, 6, '2026-04-16', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1198, 6, '2026-04-15', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1199, 6, '2026-04-14', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1200, 6, '2026-04-13', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1201, 6, '2026-04-12', 6, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1202, 6, '2026-04-11', 3, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1203, 6, '2026-04-10', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1204, 6, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1205, 6, '2026-04-08', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1206, 6, '2026-04-07', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1207, 6, '2026-04-06', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1208, 6, '2026-04-05', 5, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1209, 6, '2026-04-04', 4, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1210, 7, '2026-05-04', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1211, 7, '2026-05-03', 3, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1212, 7, '2026-05-02', 3, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1213, 7, '2026-05-01', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1214, 7, '2026-04-30', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1215, 7, '2026-04-29', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1216, 7, '2026-04-28', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1217, 7, '2026-04-27', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1218, 7, '2026-04-26', 4, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1219, 7, '2026-04-25', 4, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1220, 7, '2026-04-24', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1221, 7, '2026-04-23', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1222, 7, '2026-04-22', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1223, 7, '2026-04-21', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1224, 7, '2026-04-20', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1225, 7, '2026-04-19', 3, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1226, 7, '2026-04-18', 5, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1227, 7, '2026-04-17', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1228, 7, '2026-04-16', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1229, 7, '2026-04-15', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1230, 7, '2026-04-14', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1231, 7, '2026-04-13', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1232, 7, '2026-04-12', 6, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1233, 7, '2026-04-11', 3, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1234, 7, '2026-04-10', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1235, 7, '2026-04-09', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1236, 7, '2026-04-08', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1237, 7, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1238, 7, '2026-04-06', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1239, 7, '2026-04-05', 5, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1240, 7, '2026-04-04', 6, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1241, 8, '2026-05-04', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1242, 8, '2026-05-03', 4, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1243, 8, '2026-05-02', 6, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1244, 8, '2026-05-01', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1245, 8, '2026-04-30', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1246, 8, '2026-04-29', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1247, 8, '2026-04-28', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1248, 8, '2026-04-27', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1249, 8, '2026-04-26', 3, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1250, 8, '2026-04-25', 3, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1251, 8, '2026-04-24', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1252, 8, '2026-04-23', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1253, 8, '2026-04-22', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1254, 8, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1255, 8, '2026-04-20', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1256, 8, '2026-04-19', 4, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1257, 8, '2026-04-18', 2, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1258, 8, '2026-04-17', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1259, 8, '2026-04-16', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1260, 8, '2026-04-15', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1261, 8, '2026-04-14', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1262, 8, '2026-04-13', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1263, 8, '2026-04-12', 2, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1264, 8, '2026-04-11', 3, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1265, 8, '2026-04-10', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1266, 8, '2026-04-09', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1267, 8, '2026-04-08', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1268, 8, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1269, 8, '2026-04-06', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1270, 8, '2026-04-05', 3, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1271, 8, '2026-04-04', 2, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1272, 9, '2026-05-04', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1273, 9, '2026-05-03', 4, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1274, 9, '2026-05-02', 5, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1275, 9, '2026-05-01', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1276, 9, '2026-04-30', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1277, 9, '2026-04-29', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1278, 9, '2026-04-28', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1279, 9, '2026-04-27', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1280, 9, '2026-04-26', 6, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1281, 9, '2026-04-25', 4, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1282, 9, '2026-04-24', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1283, 9, '2026-04-23', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1284, 9, '2026-04-22', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1285, 9, '2026-04-21', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1286, 9, '2026-04-20', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1287, 9, '2026-04-19', 5, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1288, 9, '2026-04-18', 4, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1289, 9, '2026-04-17', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1290, 9, '2026-04-16', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1291, 9, '2026-04-15', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1292, 9, '2026-04-14', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1293, 9, '2026-04-13', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1294, 9, '2026-04-12', 2, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1295, 9, '2026-04-11', 4, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1296, 9, '2026-04-10', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1297, 9, '2026-04-09', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1298, 9, '2026-04-08', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1299, 9, '2026-04-07', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1300, 9, '2026-04-06', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1301, 9, '2026-04-05', 3, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1302, 9, '2026-04-04', 6, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1303, 10, '2026-05-04', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1304, 10, '2026-05-03', 4, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1305, 10, '2026-05-02', 2, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1306, 10, '2026-05-01', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1307, 10, '2026-04-30', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1308, 10, '2026-04-29', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1309, 10, '2026-04-28', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1310, 10, '2026-04-27', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1311, 10, '2026-04-26', 3, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1312, 10, '2026-04-25', 4, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1313, 10, '2026-04-24', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1314, 10, '2026-04-23', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1315, 10, '2026-04-22', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1316, 10, '2026-04-21', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1317, 10, '2026-04-20', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1318, 10, '2026-04-19', 6, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1319, 10, '2026-04-18', 6, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1320, 10, '2026-04-17', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1321, 10, '2026-04-16', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1322, 10, '2026-04-15', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1323, 10, '2026-04-14', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1324, 10, '2026-04-13', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1325, 10, '2026-04-12', 4, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1326, 10, '2026-04-11', 3, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1327, 10, '2026-04-10', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1328, 10, '2026-04-09', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1329, 10, '2026-04-08', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1330, 10, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1331, 10, '2026-04-06', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1332, 10, '2026-04-05', 3, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1333, 10, '2026-04-04', 4, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1334, 11, '2026-05-04', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1335, 11, '2026-05-03', 2, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1336, 11, '2026-05-02', 3, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1337, 11, '2026-05-01', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1338, 11, '2026-04-30', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1339, 11, '2026-04-29', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1340, 11, '2026-04-28', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1341, 11, '2026-04-27', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1342, 11, '2026-04-26', 4, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1343, 11, '2026-04-25', 5, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1344, 11, '2026-04-24', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1345, 11, '2026-04-23', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1346, 11, '2026-04-22', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1347, 11, '2026-04-21', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1348, 11, '2026-04-20', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1349, 11, '2026-04-19', 3, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1350, 11, '2026-04-18', 5, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1351, 11, '2026-04-17', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1352, 11, '2026-04-16', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1353, 11, '2026-04-15', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1354, 11, '2026-04-14', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1355, 11, '2026-04-13', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1356, 11, '2026-04-12', 4, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1357, 11, '2026-04-11', 4, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1358, 11, '2026-04-10', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1359, 11, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1360, 11, '2026-04-08', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1361, 11, '2026-04-07', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1362, 11, '2026-04-06', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1363, 11, '2026-04-05', 6, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1364, 11, '2026-04-04', 5, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1365, 12, '2026-05-04', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1366, 12, '2026-05-03', 6, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1367, 12, '2026-05-02', 6, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1368, 12, '2026-05-01', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1369, 12, '2026-04-30', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1370, 12, '2026-04-29', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1371, 12, '2026-04-28', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1372, 12, '2026-04-27', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1373, 12, '2026-04-26', 2, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1374, 12, '2026-04-25', 3, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1375, 12, '2026-04-24', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1376, 12, '2026-04-23', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1377, 12, '2026-04-22', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1378, 12, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1379, 12, '2026-04-20', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1380, 12, '2026-04-19', 2, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1381, 12, '2026-04-18', 6, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1382, 12, '2026-04-17', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1383, 12, '2026-04-16', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1384, 12, '2026-04-15', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1385, 12, '2026-04-14', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1386, 12, '2026-04-13', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1387, 12, '2026-04-12', 6, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1388, 12, '2026-04-11', 2, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1389, 12, '2026-04-10', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1390, 12, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1391, 12, '2026-04-08', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1392, 12, '2026-04-07', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1393, 12, '2026-04-06', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1394, 12, '2026-04-05', 5, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1395, 12, '2026-04-04', 6, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1396, 13, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1397, 13, '2026-05-03', 4, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1398, 13, '2026-05-02', 5, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1399, 13, '2026-05-01', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1400, 13, '2026-04-30', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1401, 13, '2026-04-29', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1402, 13, '2026-04-28', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1403, 13, '2026-04-27', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1404, 13, '2026-04-26', 6, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1405, 13, '2026-04-25', 6, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1406, 13, '2026-04-24', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1407, 13, '2026-04-23', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1408, 13, '2026-04-22', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1409, 13, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1410, 13, '2026-04-20', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1411, 13, '2026-04-19', 4, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1412, 13, '2026-04-18', 4, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1413, 13, '2026-04-17', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1414, 13, '2026-04-16', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1415, 13, '2026-04-15', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1416, 13, '2026-04-14', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1417, 13, '2026-04-13', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1418, 13, '2026-04-12', 2, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1419, 13, '2026-04-11', 2, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1420, 13, '2026-04-10', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1421, 13, '2026-04-09', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1422, 13, '2026-04-08', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1423, 13, '2026-04-07', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1424, 13, '2026-04-06', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1425, 13, '2026-04-05', 4, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1426, 13, '2026-04-04', 4, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1427, 14, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1428, 14, '2026-05-03', 6, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1429, 14, '2026-05-02', 4, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1430, 14, '2026-05-01', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1431, 14, '2026-04-30', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1432, 14, '2026-04-29', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1433, 14, '2026-04-28', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1434, 14, '2026-04-27', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1435, 14, '2026-04-26', 5, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1436, 14, '2026-04-25', 5, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1437, 14, '2026-04-24', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1438, 14, '2026-04-23', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1439, 14, '2026-04-22', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1440, 14, '2026-04-21', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1441, 14, '2026-04-20', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1442, 14, '2026-04-19', 2, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1443, 14, '2026-04-18', 3, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1444, 14, '2026-04-17', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1445, 14, '2026-04-16', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1446, 14, '2026-04-15', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1447, 14, '2026-04-14', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1448, 14, '2026-04-13', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1449, 14, '2026-04-12', 5, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1450, 14, '2026-04-11', 2, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1451, 14, '2026-04-10', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1452, 14, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1453, 14, '2026-04-08', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1454, 14, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1455, 14, '2026-04-06', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1456, 14, '2026-04-05', 3, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1457, 14, '2026-04-04', 2, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1458, 15, '2026-05-04', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1459, 15, '2026-05-03', 3, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1460, 15, '2026-05-02', 2, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1461, 15, '2026-05-01', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1462, 15, '2026-04-30', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1463, 15, '2026-04-29', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1464, 15, '2026-04-28', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1465, 15, '2026-04-27', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1466, 15, '2026-04-26', 6, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1467, 15, '2026-04-25', 6, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1468, 15, '2026-04-24', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1469, 15, '2026-04-23', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1470, 15, '2026-04-22', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1471, 15, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1472, 15, '2026-04-20', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1473, 15, '2026-04-19', 3, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1474, 15, '2026-04-18', 6, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1475, 15, '2026-04-17', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1476, 15, '2026-04-16', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1477, 15, '2026-04-15', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1478, 15, '2026-04-14', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1479, 15, '2026-04-13', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1480, 15, '2026-04-12', 3, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1481, 15, '2026-04-11', 6, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1482, 15, '2026-04-10', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1483, 15, '2026-04-09', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1484, 15, '2026-04-08', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1485, 15, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1486, 15, '2026-04-06', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1487, 15, '2026-04-05', 3, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1488, 15, '2026-04-04', 4, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1489, 16, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1490, 16, '2026-05-03', 4, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1491, 16, '2026-05-02', 5, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1492, 16, '2026-05-01', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1493, 16, '2026-04-30', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1494, 16, '2026-04-29', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1495, 16, '2026-04-28', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1496, 16, '2026-04-27', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1497, 16, '2026-04-26', 2, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1498, 16, '2026-04-25', 4, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1499, 16, '2026-04-24', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1500, 16, '2026-04-23', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1501, 16, '2026-04-22', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1502, 16, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1503, 16, '2026-04-20', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1504, 16, '2026-04-19', 3, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1505, 16, '2026-04-18', 5, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1506, 16, '2026-04-17', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1507, 16, '2026-04-16', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1508, 16, '2026-04-15', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1509, 16, '2026-04-14', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1510, 16, '2026-04-13', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1511, 16, '2026-04-12', 4, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1512, 16, '2026-04-11', 5, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1513, 16, '2026-04-10', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1514, 16, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1515, 16, '2026-04-08', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1516, 16, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1517, 16, '2026-04-06', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1518, 16, '2026-04-05', 2, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1519, 16, '2026-04-04', 4, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1520, 17, '2026-05-04', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1521, 17, '2026-05-03', 5, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1522, 17, '2026-05-02', 3, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1523, 17, '2026-05-01', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1524, 17, '2026-04-30', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1525, 17, '2026-04-29', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1526, 17, '2026-04-28', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1527, 17, '2026-04-27', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1528, 17, '2026-04-26', 3, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1529, 17, '2026-04-25', 4, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1530, 17, '2026-04-24', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1531, 17, '2026-04-23', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1532, 17, '2026-04-22', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1533, 17, '2026-04-21', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1534, 17, '2026-04-20', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1535, 17, '2026-04-19', 5, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1536, 17, '2026-04-18', 6, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1537, 17, '2026-04-17', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1538, 17, '2026-04-16', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1539, 17, '2026-04-15', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1540, 17, '2026-04-14', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1541, 17, '2026-04-13', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1542, 17, '2026-04-12', 2, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1543, 17, '2026-04-11', 6, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1544, 17, '2026-04-10', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1545, 17, '2026-04-09', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1546, 17, '2026-04-08', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1547, 17, '2026-04-07', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1548, 17, '2026-04-06', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1549, 17, '2026-04-05', 3, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1550, 17, '2026-04-04', 4, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1551, 18, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1552, 18, '2026-05-03', 6, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1553, 18, '2026-05-02', 5, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1554, 18, '2026-05-01', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1555, 18, '2026-04-30', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1556, 18, '2026-04-29', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1557, 18, '2026-04-28', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1558, 18, '2026-04-27', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1559, 18, '2026-04-26', 3, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1560, 18, '2026-04-25', 3, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1561, 18, '2026-04-24', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1562, 18, '2026-04-23', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1563, 18, '2026-04-22', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1564, 18, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1565, 18, '2026-04-20', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1566, 18, '2026-04-19', 6, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1567, 18, '2026-04-18', 6, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1568, 18, '2026-04-17', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1569, 18, '2026-04-16', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1570, 18, '2026-04-15', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1571, 18, '2026-04-14', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1572, 18, '2026-04-13', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1573, 18, '2026-04-12', 2, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1574, 18, '2026-04-11', 2, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1575, 18, '2026-04-10', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1576, 18, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1577, 18, '2026-04-08', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1578, 18, '2026-04-07', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1579, 18, '2026-04-06', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1580, 18, '2026-04-05', 5, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1581, 18, '2026-04-04', 2, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1582, 19, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1583, 19, '2026-05-03', 4, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1584, 19, '2026-05-02', 6, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1585, 19, '2026-05-01', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1586, 19, '2026-04-30', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1587, 19, '2026-04-29', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1588, 19, '2026-04-28', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1589, 19, '2026-04-27', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1590, 19, '2026-04-26', 4, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1591, 19, '2026-04-25', 5, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1592, 19, '2026-04-24', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1593, 19, '2026-04-23', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1594, 19, '2026-04-22', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL);
INSERT INTO `room_availabilities` (`id`, `room_type_id`, `date`, `available_rooms`, `price_override`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1595, 19, '2026-04-21', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1596, 19, '2026-04-20', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1597, 19, '2026-04-19', 5, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1598, 19, '2026-04-18', 4, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1599, 19, '2026-04-17', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1600, 19, '2026-04-16', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1601, 19, '2026-04-15', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1602, 19, '2026-04-14', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1603, 19, '2026-04-13', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1604, 19, '2026-04-12', 2, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1605, 19, '2026-04-11', 2, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1606, 19, '2026-04-10', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1607, 19, '2026-04-09', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1608, 19, '2026-04-08', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1609, 19, '2026-04-07', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1610, 19, '2026-04-06', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1611, 19, '2026-04-05', 5, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1612, 19, '2026-04-04', 2, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1613, 20, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1614, 20, '2026-05-03', 4, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1615, 20, '2026-05-02', 6, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1616, 20, '2026-05-01', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1617, 20, '2026-04-30', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1618, 20, '2026-04-29', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1619, 20, '2026-04-28', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1620, 20, '2026-04-27', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1621, 20, '2026-04-26', 2, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1622, 20, '2026-04-25', 6, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1623, 20, '2026-04-24', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1624, 20, '2026-04-23', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1625, 20, '2026-04-22', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1626, 20, '2026-04-21', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1627, 20, '2026-04-20', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1628, 20, '2026-04-19', 5, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1629, 20, '2026-04-18', 3, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1630, 20, '2026-04-17', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1631, 20, '2026-04-16', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1632, 20, '2026-04-15', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1633, 20, '2026-04-14', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1634, 20, '2026-04-13', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1635, 20, '2026-04-12', 4, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1636, 20, '2026-04-11', 4, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1637, 20, '2026-04-10', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1638, 20, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1639, 20, '2026-04-08', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1640, 20, '2026-04-07', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1641, 20, '2026-04-06', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1642, 20, '2026-04-05', 4, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1643, 20, '2026-04-04', 4, 5400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1644, 21, '2026-05-04', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1645, 21, '2026-05-03', 5, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1646, 21, '2026-05-02', 4, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1647, 21, '2026-05-01', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1648, 21, '2026-04-30', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1649, 21, '2026-04-29', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1650, 21, '2026-04-28', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1651, 21, '2026-04-27', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1652, 21, '2026-04-26', 2, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1653, 21, '2026-04-25', 6, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1654, 21, '2026-04-24', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1655, 21, '2026-04-23', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1656, 21, '2026-04-22', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1657, 21, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1658, 21, '2026-04-20', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1659, 21, '2026-04-19', 2, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1660, 21, '2026-04-18', 2, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1661, 21, '2026-04-17', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1662, 21, '2026-04-16', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1663, 21, '2026-04-15', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1664, 21, '2026-04-14', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1665, 21, '2026-04-13', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1666, 21, '2026-04-12', 5, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1667, 21, '2026-04-11', 4, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1668, 21, '2026-04-10', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1669, 21, '2026-04-09', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1670, 21, '2026-04-08', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1671, 21, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1672, 21, '2026-04-06', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1673, 21, '2026-04-05', 2, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1674, 21, '2026-04-04', 5, 10200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1675, 22, '2026-05-04', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1676, 22, '2026-05-03', 5, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1677, 22, '2026-05-02', 2, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1678, 22, '2026-05-01', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1679, 22, '2026-04-30', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1680, 22, '2026-04-29', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1681, 22, '2026-04-28', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1682, 22, '2026-04-27', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1683, 22, '2026-04-26', 3, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1684, 22, '2026-04-25', 4, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1685, 22, '2026-04-24', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1686, 22, '2026-04-23', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1687, 22, '2026-04-22', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1688, 22, '2026-04-21', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1689, 22, '2026-04-20', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1690, 22, '2026-04-19', 3, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1691, 22, '2026-04-18', 5, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1692, 22, '2026-04-17', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1693, 22, '2026-04-16', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1694, 22, '2026-04-15', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1695, 22, '2026-04-14', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1696, 22, '2026-04-13', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1697, 22, '2026-04-12', 2, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1698, 22, '2026-04-11', 4, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1699, 22, '2026-04-10', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1700, 22, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1701, 22, '2026-04-08', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1702, 22, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1703, 22, '2026-04-06', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1704, 22, '2026-04-05', 3, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1705, 22, '2026-04-04', 2, 30000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1706, 23, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1707, 23, '2026-05-03', 5, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1708, 23, '2026-05-02', 5, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1709, 23, '2026-05-01', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1710, 23, '2026-04-30', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1711, 23, '2026-04-29', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1712, 23, '2026-04-28', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1713, 23, '2026-04-27', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1714, 23, '2026-04-26', 4, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1715, 23, '2026-04-25', 3, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1716, 23, '2026-04-24', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1717, 23, '2026-04-23', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1718, 23, '2026-04-22', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1719, 23, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1720, 23, '2026-04-20', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1721, 23, '2026-04-19', 5, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1722, 23, '2026-04-18', 4, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1723, 23, '2026-04-17', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1724, 23, '2026-04-16', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1725, 23, '2026-04-15', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1726, 23, '2026-04-14', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1727, 23, '2026-04-13', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1728, 23, '2026-04-12', 3, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1729, 23, '2026-04-11', 4, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1730, 23, '2026-04-10', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1731, 23, '2026-04-09', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1732, 23, '2026-04-08', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1733, 23, '2026-04-07', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1734, 23, '2026-04-06', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1735, 23, '2026-04-05', 6, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1736, 23, '2026-04-04', 2, 3360000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1737, 24, '2026-05-04', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1738, 24, '2026-05-03', 4, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1739, 24, '2026-05-02', 3, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1740, 24, '2026-05-01', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1741, 24, '2026-04-30', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1742, 24, '2026-04-29', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1743, 24, '2026-04-28', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1744, 24, '2026-04-27', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1745, 24, '2026-04-26', 6, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1746, 24, '2026-04-25', 2, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1747, 24, '2026-04-24', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1748, 24, '2026-04-23', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1749, 24, '2026-04-22', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1750, 24, '2026-04-21', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1751, 24, '2026-04-20', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1752, 24, '2026-04-19', 2, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1753, 24, '2026-04-18', 6, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1754, 24, '2026-04-17', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1755, 24, '2026-04-16', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1756, 24, '2026-04-15', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1757, 24, '2026-04-14', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1758, 24, '2026-04-13', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1759, 24, '2026-04-12', 2, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1760, 24, '2026-04-11', 3, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1761, 24, '2026-04-10', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1762, 24, '2026-04-09', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1763, 24, '2026-04-08', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1764, 24, '2026-04-07', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1765, 24, '2026-04-06', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1766, 24, '2026-04-05', 3, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1767, 24, '2026-04-04', 2, 4560000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1768, 25, '2026-05-04', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1769, 25, '2026-05-03', 2, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1770, 25, '2026-05-02', 5, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1771, 25, '2026-05-01', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1772, 25, '2026-04-30', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1773, 25, '2026-04-29', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1774, 25, '2026-04-28', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1775, 25, '2026-04-27', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1776, 25, '2026-04-26', 6, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1777, 25, '2026-04-25', 2, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1778, 25, '2026-04-24', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1779, 25, '2026-04-23', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1780, 25, '2026-04-22', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1781, 25, '2026-04-21', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1782, 25, '2026-04-20', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1783, 25, '2026-04-19', 3, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1784, 25, '2026-04-18', 6, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1785, 25, '2026-04-17', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1786, 25, '2026-04-16', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1787, 25, '2026-04-15', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1788, 25, '2026-04-14', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1789, 25, '2026-04-13', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1790, 25, '2026-04-12', 3, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1791, 25, '2026-04-11', 2, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1792, 25, '2026-04-10', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1793, 25, '2026-04-09', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1794, 25, '2026-04-08', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1795, 25, '2026-04-07', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1796, 25, '2026-04-06', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1797, 25, '2026-04-05', 4, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1798, 25, '2026-04-04', 6, 8640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1799, 26, '2026-05-04', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1800, 26, '2026-05-03', 6, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1801, 26, '2026-05-02', 3, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1802, 26, '2026-05-01', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1803, 26, '2026-04-30', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1804, 26, '2026-04-29', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1805, 26, '2026-04-28', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1806, 26, '2026-04-27', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1807, 26, '2026-04-26', 6, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1808, 26, '2026-04-25', 5, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1809, 26, '2026-04-24', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1810, 26, '2026-04-23', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1811, 26, '2026-04-22', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1812, 26, '2026-04-21', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1813, 26, '2026-04-20', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1814, 26, '2026-04-19', 4, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1815, 26, '2026-04-18', 4, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1816, 26, '2026-04-17', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1817, 26, '2026-04-16', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1818, 26, '2026-04-15', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1819, 26, '2026-04-14', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1820, 26, '2026-04-13', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1821, 26, '2026-04-12', 5, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1822, 26, '2026-04-11', 5, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1823, 26, '2026-04-10', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1824, 26, '2026-04-09', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1825, 26, '2026-04-08', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1826, 26, '2026-04-07', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1827, 26, '2026-04-06', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1828, 26, '2026-04-05', 5, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1829, 26, '2026-04-04', 3, 3840000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1830, 27, '2026-05-04', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1831, 27, '2026-05-03', 4, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1832, 27, '2026-05-02', 2, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1833, 27, '2026-05-01', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1834, 27, '2026-04-30', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1835, 27, '2026-04-29', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1836, 27, '2026-04-28', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1837, 27, '2026-04-27', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1838, 27, '2026-04-26', 6, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1839, 27, '2026-04-25', 2, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1840, 27, '2026-04-24', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1841, 27, '2026-04-23', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1842, 27, '2026-04-22', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1843, 27, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1844, 27, '2026-04-20', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1845, 27, '2026-04-19', 5, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1846, 27, '2026-04-18', 2, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1847, 27, '2026-04-17', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1848, 27, '2026-04-16', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1849, 27, '2026-04-15', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1850, 27, '2026-04-14', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1851, 27, '2026-04-13', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1852, 27, '2026-04-12', 4, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1853, 27, '2026-04-11', 4, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1854, 27, '2026-04-10', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1855, 27, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1856, 27, '2026-04-08', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1857, 27, '2026-04-07', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1858, 27, '2026-04-06', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1859, 27, '2026-04-05', 4, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1860, 27, '2026-04-04', 2, 6960000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1861, 28, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1862, 28, '2026-05-03', 2, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1863, 28, '2026-05-02', 6, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1864, 28, '2026-05-01', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1865, 28, '2026-04-30', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1866, 28, '2026-04-29', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1867, 28, '2026-04-28', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1868, 28, '2026-04-27', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1869, 28, '2026-04-26', 3, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1870, 28, '2026-04-25', 4, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1871, 28, '2026-04-24', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1872, 28, '2026-04-23', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1873, 28, '2026-04-22', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1874, 28, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1875, 28, '2026-04-20', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1876, 28, '2026-04-19', 6, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1877, 28, '2026-04-18', 2, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1878, 28, '2026-04-17', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1879, 28, '2026-04-16', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1880, 28, '2026-04-15', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1881, 28, '2026-04-14', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1882, 28, '2026-04-13', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1883, 28, '2026-04-12', 2, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1884, 28, '2026-04-11', 6, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1885, 28, '2026-04-10', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1886, 28, '2026-04-09', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1887, 28, '2026-04-08', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1888, 28, '2026-04-07', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1889, 28, '2026-04-06', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1890, 28, '2026-04-05', 4, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1891, 28, '2026-04-04', 2, 2160000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1892, 29, '2026-05-04', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1893, 29, '2026-05-03', 6, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1894, 29, '2026-05-02', 3, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1895, 29, '2026-05-01', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1896, 29, '2026-04-30', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1897, 29, '2026-04-29', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1898, 29, '2026-04-28', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1899, 29, '2026-04-27', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1900, 29, '2026-04-26', 5, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1901, 29, '2026-04-25', 5, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1902, 29, '2026-04-24', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1903, 29, '2026-04-23', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1904, 29, '2026-04-22', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1905, 29, '2026-04-21', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1906, 29, '2026-04-20', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1907, 29, '2026-04-19', 4, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1908, 29, '2026-04-18', 2, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1909, 29, '2026-04-17', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1910, 29, '2026-04-16', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1911, 29, '2026-04-15', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1912, 29, '2026-04-14', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1913, 29, '2026-04-13', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1914, 29, '2026-04-12', 4, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1915, 29, '2026-04-11', 4, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1916, 29, '2026-04-10', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1917, 29, '2026-04-09', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1918, 29, '2026-04-08', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1919, 29, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1920, 29, '2026-04-06', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1921, 29, '2026-04-05', 5, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1922, 29, '2026-04-04', 2, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1923, 30, '2026-05-04', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1924, 30, '2026-05-03', 3, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1925, 30, '2026-05-02', 5, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1926, 30, '2026-05-01', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1927, 30, '2026-04-30', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1928, 30, '2026-04-29', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1929, 30, '2026-04-28', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1930, 30, '2026-04-27', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1931, 30, '2026-04-26', 6, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1932, 30, '2026-04-25', 6, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1933, 30, '2026-04-24', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1934, 30, '2026-04-23', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1935, 30, '2026-04-22', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1936, 30, '2026-04-21', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1937, 30, '2026-04-20', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1938, 30, '2026-04-19', 4, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1939, 30, '2026-04-18', 2, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1940, 30, '2026-04-17', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1941, 30, '2026-04-16', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1942, 30, '2026-04-15', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1943, 30, '2026-04-14', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1944, 30, '2026-04-13', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1945, 30, '2026-04-12', 5, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1946, 30, '2026-04-11', 4, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1947, 30, '2026-04-10', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1948, 30, '2026-04-09', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1949, 30, '2026-04-08', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1950, 30, '2026-04-07', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1951, 30, '2026-04-06', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1952, 30, '2026-04-05', 2, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1953, 30, '2026-04-04', 6, 1440000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1954, 31, '2026-05-04', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1955, 31, '2026-05-03', 2, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1956, 31, '2026-05-02', 6, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1957, 31, '2026-05-01', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1958, 31, '2026-04-30', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1959, 31, '2026-04-29', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1960, 31, '2026-04-28', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1961, 31, '2026-04-27', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1962, 31, '2026-04-26', 3, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1963, 31, '2026-04-25', 6, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1964, 31, '2026-04-24', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1965, 31, '2026-04-23', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1966, 31, '2026-04-22', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1967, 31, '2026-04-21', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1968, 31, '2026-04-20', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1969, 31, '2026-04-19', 5, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1970, 31, '2026-04-18', 4, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1971, 31, '2026-04-17', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1972, 31, '2026-04-16', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1973, 31, '2026-04-15', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1974, 31, '2026-04-14', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1975, 31, '2026-04-13', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1976, 31, '2026-04-12', 6, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1977, 31, '2026-04-11', 4, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1978, 31, '2026-04-10', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1979, 31, '2026-04-09', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1980, 31, '2026-04-08', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1981, 31, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1982, 31, '2026-04-06', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1983, 31, '2026-04-05', 2, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1984, 31, '2026-04-04', 5, 2640000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1985, 32, '2026-05-04', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1986, 32, '2026-05-03', 2, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1987, 32, '2026-05-02', 6, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1988, 32, '2026-05-01', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1989, 32, '2026-04-30', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1990, 32, '2026-04-29', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1991, 32, '2026-04-28', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1992, 32, '2026-04-27', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1993, 32, '2026-04-26', 4, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1994, 32, '2026-04-25', 5, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1995, 32, '2026-04-24', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1996, 32, '2026-04-23', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1997, 32, '2026-04-22', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1998, 32, '2026-04-21', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(1999, 32, '2026-04-20', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2000, 32, '2026-04-19', 2, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2001, 32, '2026-04-18', 3, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2002, 32, '2026-04-17', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2003, 32, '2026-04-16', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2004, 32, '2026-04-15', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2005, 32, '2026-04-14', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2006, 32, '2026-04-13', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2007, 32, '2026-04-12', 4, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2008, 32, '2026-04-11', 2, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2009, 32, '2026-04-10', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2010, 32, '2026-04-09', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2011, 32, '2026-04-08', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2012, 32, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2013, 32, '2026-04-06', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2014, 32, '2026-04-05', 6, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2015, 32, '2026-04-04', 3, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2016, 33, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2017, 33, '2026-05-03', 4, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2018, 33, '2026-05-02', 3, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2019, 33, '2026-05-01', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2020, 33, '2026-04-30', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2021, 33, '2026-04-29', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2022, 33, '2026-04-28', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2023, 33, '2026-04-27', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2024, 33, '2026-04-26', 4, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2025, 33, '2026-04-25', 6, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2026, 33, '2026-04-24', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2027, 33, '2026-04-23', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2028, 33, '2026-04-22', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2029, 33, '2026-04-21', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2030, 33, '2026-04-20', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2031, 33, '2026-04-19', 3, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2032, 33, '2026-04-18', 2, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2033, 33, '2026-04-17', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2034, 33, '2026-04-16', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2035, 33, '2026-04-15', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2036, 33, '2026-04-14', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2037, 33, '2026-04-13', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2038, 33, '2026-04-12', 3, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2039, 33, '2026-04-11', 6, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2040, 33, '2026-04-10', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2041, 33, '2026-04-09', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2042, 33, '2026-04-08', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2043, 33, '2026-04-07', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2044, 33, '2026-04-06', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2045, 33, '2026-04-05', 2, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2046, 33, '2026-04-04', 5, 4200000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2047, 34, '2026-05-04', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2048, 34, '2026-05-03', 4, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2049, 34, '2026-05-02', 6, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2050, 34, '2026-05-01', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2051, 34, '2026-04-30', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2052, 34, '2026-04-29', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2053, 34, '2026-04-28', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2054, 34, '2026-04-27', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2055, 34, '2026-04-26', 3, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2056, 34, '2026-04-25', 2, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2057, 34, '2026-04-24', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2058, 34, '2026-04-23', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2059, 34, '2026-04-22', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2060, 34, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2061, 34, '2026-04-20', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2062, 34, '2026-04-19', 4, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2063, 34, '2026-04-18', 2, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2064, 34, '2026-04-17', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2065, 34, '2026-04-16', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2066, 34, '2026-04-15', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2067, 34, '2026-04-14', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2068, 34, '2026-04-13', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2069, 34, '2026-04-12', 5, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2070, 34, '2026-04-11', 2, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2071, 34, '2026-04-10', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2072, 34, '2026-04-09', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2073, 34, '2026-04-08', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2074, 34, '2026-04-07', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2075, 34, '2026-04-06', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2076, 34, '2026-04-05', 6, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2077, 34, '2026-04-04', 4, 3000000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2078, 35, '2026-05-04', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2079, 35, '2026-05-03', 4, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2080, 35, '2026-05-02', 3, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2081, 35, '2026-05-01', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2082, 35, '2026-04-30', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2083, 35, '2026-04-29', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2084, 35, '2026-04-28', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2085, 35, '2026-04-27', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2086, 35, '2026-04-26', 3, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2087, 35, '2026-04-25', 2, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2088, 35, '2026-04-24', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2089, 35, '2026-04-23', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2090, 35, '2026-04-22', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2091, 35, '2026-04-21', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2092, 35, '2026-04-20', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2093, 35, '2026-04-19', 4, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2094, 35, '2026-04-18', 3, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2095, 35, '2026-04-17', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2096, 35, '2026-04-16', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2097, 35, '2026-04-15', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2098, 35, '2026-04-14', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2099, 35, '2026-04-13', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2100, 35, '2026-04-12', 3, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2101, 35, '2026-04-11', 3, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2102, 35, '2026-04-10', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2103, 35, '2026-04-09', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2104, 35, '2026-04-08', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2105, 35, '2026-04-07', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2106, 35, '2026-04-06', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2107, 35, '2026-04-05', 4, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2108, 35, '2026-04-04', 2, 2400000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2109, 36, '2026-05-04', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2110, 36, '2026-05-03', 2, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2111, 36, '2026-05-02', 3, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2112, 36, '2026-05-01', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2113, 36, '2026-04-30', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2114, 36, '2026-04-29', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2115, 36, '2026-04-28', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2116, 36, '2026-04-27', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2117, 36, '2026-04-26', 2, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2118, 36, '2026-04-25', 2, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2119, 36, '2026-04-24', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2120, 36, '2026-04-23', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2121, 36, '2026-04-22', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2122, 36, '2026-04-21', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2123, 36, '2026-04-20', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2124, 36, '2026-04-19', 5, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2125, 36, '2026-04-18', 2, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2126, 36, '2026-04-17', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2127, 36, '2026-04-16', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2128, 36, '2026-04-15', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2129, 36, '2026-04-14', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2130, 36, '2026-04-13', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2131, 36, '2026-04-12', 5, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2132, 36, '2026-04-11', 4, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2133, 36, '2026-04-10', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2134, 36, '2026-04-09', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2135, 36, '2026-04-08', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2136, 36, '2026-04-07', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2137, 36, '2026-04-06', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2138, 36, '2026-04-05', 3, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2139, 36, '2026-04-04', 4, 6600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2140, 37, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2141, 37, '2026-05-03', 6, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2142, 37, '2026-05-02', 4, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2143, 37, '2026-05-01', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2144, 37, '2026-04-30', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2145, 37, '2026-04-29', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2146, 37, '2026-04-28', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2147, 37, '2026-04-27', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2148, 37, '2026-04-26', 2, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2149, 37, '2026-04-25', 5, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2150, 37, '2026-04-24', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2151, 37, '2026-04-23', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2152, 37, '2026-04-22', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2153, 37, '2026-04-21', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2154, 37, '2026-04-20', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2155, 37, '2026-04-19', 2, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2156, 37, '2026-04-18', 3, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2157, 37, '2026-04-17', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2158, 37, '2026-04-16', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2159, 37, '2026-04-15', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2160, 37, '2026-04-14', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2161, 37, '2026-04-13', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2162, 37, '2026-04-12', 2, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2163, 37, '2026-04-11', 6, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2164, 37, '2026-04-10', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2165, 37, '2026-04-09', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2166, 37, '2026-04-08', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2167, 37, '2026-04-07', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL);
INSERT INTO `room_availabilities` (`id`, `room_type_id`, `date`, `available_rooms`, `price_override`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2168, 37, '2026-04-06', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2169, 37, '2026-04-05', 3, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2170, 37, '2026-04-04', 3, 1800000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2171, 38, '2026-05-04', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2172, 38, '2026-05-03', 5, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2173, 38, '2026-05-02', 5, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2174, 38, '2026-05-01', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2175, 38, '2026-04-30', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2176, 38, '2026-04-29', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2177, 38, '2026-04-28', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2178, 38, '2026-04-27', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2179, 38, '2026-04-26', 2, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2180, 38, '2026-04-25', 6, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2181, 38, '2026-04-24', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2182, 38, '2026-04-23', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2183, 38, '2026-04-22', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2184, 38, '2026-04-21', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2185, 38, '2026-04-20', 4, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2186, 38, '2026-04-19', 5, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2187, 38, '2026-04-18', 5, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2188, 38, '2026-04-17', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2189, 38, '2026-04-16', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2190, 38, '2026-04-15', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2191, 38, '2026-04-14', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2192, 38, '2026-04-13', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2193, 38, '2026-04-12', 5, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2194, 38, '2026-04-11', 2, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2195, 38, '2026-04-10', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2196, 38, '2026-04-09', 3, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2197, 38, '2026-04-08', 6, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2198, 38, '2026-04-07', 2, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2199, 38, '2026-04-06', 5, NULL, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2200, 38, '2026-04-05', 2, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(2201, 38, '2026-04-04', 6, 3600000.00, '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `room_images`
--

CREATE TABLE `room_images` (
  `id` int NOT NULL,
  `room_id` int DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `room_types`
--

CREATE TABLE `room_types` (
  `id` int NOT NULL,
  `hotel_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `size_m2` int DEFAULT NULL,
  `max_guests` int NOT NULL,
  `base_price` decimal(15,2) NOT NULL,
  `features` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `room_types`
--

INSERT INTO `room_types` (`id`, `hotel_id`, `name`, `description`, `size_m2`, `max_guests`, `base_price`, `features`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Grandeur Deluxe Room', 'Elegant room with ocean views and premium amenities', 65, 2, 4500000.00, '[\"Ocean View\", \"King Bed\", \"Rain Shower\", \"Minibar\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(2, 1, 'Earl Suite', 'Spacious suite with separate living area and butler service', 110, 3, 8500000.00, '[\"Ocean View\", \"Living Room\", \"Butler Service\", \"Jacuzzi\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(3, 1, 'The Mulia Villa', 'Private villa with pool and direct beach access', 300, 4, 25000000.00, '[\"Private Pool\", \"Beach Access\", \"Butler\", \"Kitchen\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(4, 2, 'Resort View Room', 'Comfortable room overlooking tropical gardens', 43, 2, 2800000.00, '[\"Garden View\", \"Twin Bed\", \"Balcony\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(5, 2, 'Ocean View Room', 'Stunning room with panoramic Jimbaran Bay views', 48, 2, 3800000.00, '[\"Ocean View\", \"King Bed\", \"Balcony\", \"Minibar\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(6, 2, 'Ocean View Suite', 'Luxurious suite with separate lounge and bay views', 85, 3, 7200000.00, '[\"Ocean View\", \"Living Room\", \"Bathtub\", \"Minibar\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(7, 3, 'Grand Deluxe Room', 'Sophisticated room in the heart of Jakarta', 45, 2, 3200000.00, '[\"City View\", \"King Bed\", \"Rain Shower\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(8, 3, 'Executive Suite', 'Premium suite with lounge access and city views', 75, 2, 5800000.00, '[\"City View\", \"Lounge Access\", \"Living Room\", \"Minibar\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(9, 4, 'Deluxe Room', 'Modern room with garden or pool views', 40, 2, 1800000.00, '[\"Garden View\", \"Twin Bed\", \"Balcony\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(10, 4, 'Premier Suite', 'Spacious suite with direct pool access', 65, 3, 3500000.00, '[\"Pool View\", \"King Bed\", \"Living Room\", \"Bathtub\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(11, 5, 'Babah Suite', 'Heritage-themed suite with antique furnishings', 50, 2, 1200000.00, '[\"Heritage Decor\", \"King Bed\", \"Bathtub\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(12, 5, 'Apsara Suite', 'Luxurious suite inspired by Javanese royalty', 80, 2, 2200000.00, '[\"Javanese Art\", \"Living Room\", \"Bathtub\", \"Garden\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(13, 6, 'Grandeur Room', 'Elegant room with Senayan views', 55, 2, 3000000.00, '[\"City View\", \"King Bed\", \"Rain Shower\", \"Minibar\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(14, 7, 'Komodo Ocean View', 'Room with stunning views of the Flores Sea', 40, 2, 3500000.00, '[\"Ocean View\", \"King Bed\", \"Balcony\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(15, 8, 'Premier Room', 'Room with breathtaking river valley views', 48, 2, 2500000.00, '[\"Valley View\", \"King Bed\", \"Balcony\", \"Minibar\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(16, 9, 'Deluxe Room', 'Modern room with Yogyakarta city views', 42, 2, 2000000.00, '[\"City View\", \"King Bed\", \"Rain Shower\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(17, 9, 'Attic Suite', 'Top-floor suite with panoramic Merapi views', 90, 3, 5500000.00, '[\"Merapi View\", \"Living Room\", \"Bathtub\", \"Butler\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(18, 10, 'Highland Room', 'Cozy room with views of the volcanic landscape', 35, 2, 1500000.00, '[\"Mountain View\", \"Queen Bed\", \"Fireplace\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(19, 10, 'Bromo Suite', 'Premium suite with sunrise viewing terrace', 60, 2, 3000000.00, '[\"Volcano View\", \"Terrace\", \"Bathtub\", \"Fireplace\"]', '2026-04-04 16:43:33', '2026-04-04 16:43:33', NULL),
(20, 1, 'Grandeur Deluxe Room', 'Elegant room with ocean views and premium amenities', 65, 2, 4500000.00, '[\"Ocean View\", \"King Bed\", \"Rain Shower\", \"Minibar\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(21, 1, 'Earl Suite', 'Spacious suite with separate living area and butler service', 110, 3, 8500000.00, '[\"Ocean View\", \"Living Room\", \"Butler Service\", \"Jacuzzi\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(22, 1, 'The Mulia Villa', 'Private villa with pool and direct beach access', 300, 4, 25000000.00, '[\"Private Pool\", \"Beach Access\", \"Butler\", \"Kitchen\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(23, 2, 'Resort View Room', 'Comfortable room overlooking tropical gardens', 43, 2, 2800000.00, '[\"Garden View\", \"Twin Bed\", \"Balcony\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(24, 2, 'Ocean View Room', 'Stunning room with panoramic Jimbaran Bay views', 48, 2, 3800000.00, '[\"Ocean View\", \"King Bed\", \"Balcony\", \"Minibar\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(25, 2, 'Ocean View Suite', 'Luxurious suite with separate lounge and bay views', 85, 3, 7200000.00, '[\"Ocean View\", \"Living Room\", \"Bathtub\", \"Minibar\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(26, 3, 'Grand Deluxe Room', 'Sophisticated room in the heart of Jakarta', 45, 2, 3200000.00, '[\"City View\", \"King Bed\", \"Rain Shower\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(27, 3, 'Executive Suite', 'Premium suite with lounge access and city views', 75, 2, 5800000.00, '[\"City View\", \"Lounge Access\", \"Living Room\", \"Minibar\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(28, 4, 'Deluxe Room', 'Modern room with garden or pool views', 40, 2, 1800000.00, '[\"Garden View\", \"Twin Bed\", \"Balcony\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(29, 4, 'Premier Suite', 'Spacious suite with direct pool access', 65, 3, 3500000.00, '[\"Pool View\", \"King Bed\", \"Living Room\", \"Bathtub\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(30, 5, 'Babah Suite', 'Heritage-themed suite with antique furnishings', 50, 2, 1200000.00, '[\"Heritage Decor\", \"King Bed\", \"Bathtub\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(31, 5, 'Apsara Suite', 'Luxurious suite inspired by Javanese royalty', 80, 2, 2200000.00, '[\"Javanese Art\", \"Living Room\", \"Bathtub\", \"Garden\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(32, 6, 'Grandeur Room', 'Elegant room with Senayan views', 55, 2, 3000000.00, '[\"City View\", \"King Bed\", \"Rain Shower\", \"Minibar\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(33, 7, 'Komodo Ocean View', 'Room with stunning views of the Flores Sea', 40, 2, 3500000.00, '[\"Ocean View\", \"King Bed\", \"Balcony\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(34, 8, 'Premier Room', 'Room with breathtaking river valley views', 48, 2, 2500000.00, '[\"Valley View\", \"King Bed\", \"Balcony\", \"Minibar\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(35, 9, 'Deluxe Room', 'Modern room with Yogyakarta city views', 42, 2, 2000000.00, '[\"City View\", \"King Bed\", \"Rain Shower\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(36, 9, 'Attic Suite', 'Top-floor suite with panoramic Merapi views', 90, 3, 5500000.00, '[\"Merapi View\", \"Living Room\", \"Bathtub\", \"Butler\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(37, 10, 'Highland Room', 'Cozy room with views of the volcanic landscape', 35, 2, 1500000.00, '[\"Mountain View\", \"Queen Bed\", \"Fireplace\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL),
(38, 10, 'Bromo Suite', 'Premium suite with sunrise viewing terrace', 60, 2, 3000000.00, '[\"Volcano View\", \"Terrace\", \"Bathtub\", \"Fireplace\"]', '2026-04-04 17:10:25', '2026-04-04 17:10:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` bigint NOT NULL,
  `dirty` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`, `dirty`) VALUES
(9, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'USER',
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT '0',
  `verification_code` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_code` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_role` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `phone`, `avatar_url`, `created_at`, `updated_at`, `deleted_at`, `is_verified`, `verification_code`, `reset_code`, `sub_role`) VALUES
(1, 'Ahmad Rifai', 'coca62854@gmail.com', '$2a$10$GTSpqxlboJs6KhM5JB6beexWuSRkcDDjCxcwjOcHZ.aWaVRcSv7oK', 'PARTNER', '66663456565', '', '2026-04-04 17:52:32.789', '2026-04-08 09:54:20.338', NULL, 1, '', '', ''),
(2, 'admin', 'admin@mail.com', '$2a$10$GTSpqxlboJs6KhM5JB6beexWuSRkcDDjCxcwjOcHZ.aWaVRcSv7oK', 'ADMIN', '', '', '2026-04-05 10:30:29.000', '2026-04-05 10:31:01.653', NULL, 1, '', '', 'super_admin'),
(3, ' s', 'a@mail.com', '$2a$10$q48S1kk7B2RzHuwsHEZyRuxBxQ575fgCosCFoB7sl4O56v9GGRVzO', 'ADMIN', '', '', '2026-04-05 16:03:13.852', '2026-04-05 16:03:13.852', '2026-04-05 16:20:17.908', 1, '', '', 'super_admin'),
(6, 'a', 'a@l.com', '$2a$10$6sy5s7IB2yWhdnd1Zp7PleFKk.26Dk4xE0S/xbxuLilPVilFSG2s2', 'ADMIN', '', '', '2026-04-05 16:31:22.095', '2026-04-05 16:31:34.690', NULL, 1, '', '', 'finance'),
(7, 'a', 's@m.com', '$2a$10$EG64phb9FHSz3oeVO3ZnCuqYOMQSDc/NleAbdOt4oRkc6hxRwbLhy', 'ADMIN', '', '', '2026-04-05 16:46:07.595', '2026-04-05 16:46:07.595', NULL, 1, '', '', 'support'),
(8, 'Ahmad Rifai', 'nokosrifai@gmail.com', '$2a$10$8GwCguBd6W2i/TVpiiN2sOqqqYed82A36FtooB.dRhX40ZBPSAGZi', 'PARTNER', '09685771223', '', '2026-04-05 23:18:18.162', '2026-04-09 08:00:32.306', NULL, 1, '', '', ''),
(9, 'konan ipan', 'ipan@batago.com', '$2a$10$0uGmdNfDJjh3E66rmV2QouPi/YjssqJnvwGKyfEfyG0SvUe2tjmb6', 'USER', '085788888888', '', '2026-04-06 08:43:00.731', '2026-04-06 08:43:18.002', NULL, 1, '', '', ''),
(10, 'Test User', 'test@batago.com', '$2a$10$AYiX1D37l3kwjko2w1R/Ie3xJQsx8kZ10kGrzYyLdVhVeItFibQci', 'PARTNER', '', '', '2026-04-06 08:57:07.128', '2026-04-06 10:49:28.208', NULL, 1, '', '', ''),
(11, 'T', 'test1775442455227@batago.com', '$2a$10$emsWvJFG/ELifSoZpqQDf.DMI1pi6gQXVWg.Okw5kw/3RjG3JMRqy', 'USER', '', '', '2026-04-06 09:27:35.406', '2026-04-06 09:27:35.406', NULL, 0, '496331', '', ''),
(12, 'T', 'test1775442697971@batago.com', '$2a$10$rxeO1Nmuz19jRxJURKvEPuoZY4KWyxiHqYtJ3KW1mPdD3HMTUYqte', 'USER', '', '', '2026-04-06 09:31:38.080', '2026-04-06 09:31:38.080', NULL, 0, '094309', '', ''),
(13, 'T', 'test1775442760931@batago.com', '$2a$10$o.7v6NN.6d8shPB5iQdcueC/Zn6kSOr4OV5ThXc6cWvIGbfyf4W7u', 'USER', '', '', '2026-04-06 09:32:41.039', '2026-04-06 09:32:41.039', NULL, 0, '577662', '', ''),
(14, 'T2', 't2@bata.com', '$2a$10$YfDC8fVx90YfOQiDacxRZ.nJDkO4FG6pYLQ2ypYvKU7nQ.khrQYzK', 'USER', '', '', '2026-04-06 09:33:43.164', '2026-04-06 09:33:43.164', NULL, 0, '610723', '', ''),
(15, 'T3', 't3@bata.com', '$2a$10$gSTMvj1VZ7VbjzBlf8JF/uqmfogguO3ZitVb2ddwlQkUCX3TRCPgu', 'USER', '', '', '2026-04-06 09:47:28.274', '2026-04-06 09:47:28.274', NULL, 1, '529529', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aircrafts`
--
ALTER TABLE `aircrafts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registration` (`registration`),
  ADD KEY `idx_aircrafts_deleted_at` (`deleted_at`),
  ADD KEY `idx_aircrafts_partner_id` (`partner_id`);

--
-- Indeks untuk tabel `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `idx_airports_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_articles_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `availabilities`
--
ALTER TABLE `availabilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_availabilities_deleted_at` (`deleted_at`),
  ADD KEY `idx_availabilities_partner_date` (`partner_id`,`date`);

--
-- Indeks untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bank_accounts_deleted_at` (`deleted_at`),
  ADD KEY `idx_bank_accounts_partner_id` (`partner_id`);

--
-- Indeks untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_banners_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_code` (`booking_code`),
  ADD KEY `idx_bookings_user_id` (`user_id`),
  ADD KEY `idx_bookings_partner_id` (`partner_id`),
  ADD KEY `idx_bookings_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cities_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `e_tickets`
--
ALTER TABLE `e_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_id` (`booking_id`),
  ADD KEY `idx_e_tickets_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_facilities_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_favourites_user_target` (`user_id`,`target_id`),
  ADD KEY `idx_favourites_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departure_airport_id` (`departure_airport_id`),
  ADD KEY `arrival_airport_id` (`arrival_airport_id`),
  ADD KEY `idx_flights_partner_id` (`partner_id`),
  ADD KEY `idx_flights_departure_time` (`departure_time`),
  ADD KEY `idx_flights_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `flight_bookings`
--
ALTER TABLE `flight_bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_id` (`booking_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `idx_flight_bookings_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `flight_seats`
--
ALTER TABLE `flight_seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_flight_seats_flight_id` (`flight_id`),
  ADD KEY `idx_flight_seats_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hotels_partner_id` (`partner_id`),
  ADD KEY `idx_hotels_city_id` (`city_id`),
  ADD KEY `idx_hotels_deleted_at` (`deleted_at`),
  ADD KEY `idx_hotels_type` (`type`),
  ADD KEY `idx_hotels_status` (`status`);

--
-- Indeks untuk tabel `hotel_bookings`
--
ALTER TABLE `hotel_bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_hotel_bookings_booking_id` (`booking_id`),
  ADD KEY `idx_hotel_bookings_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `hotel_facilities`
--
ALTER TABLE `hotel_facilities`
  ADD PRIMARY KEY (`hotel_id`,`facility_id`),
  ADD KEY `facility_id` (`facility_id`);

--
-- Indeks untuk tabel `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hotel_images_hotel_id` (`hotel_id`),
  ADD KEY `idx_hotel_images_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `hotel_vouchers`
--
ALTER TABLE `hotel_vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_id` (`booking_id`),
  ADD KEY `idx_hotel_vouchers_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_notifications_user_id` (`user_id`),
  ADD KEY `idx_notifications_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `idx_partners_user_id` (`user_id`),
  ADD KEY `idx_partners_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_passengers_booking_id` (`booking_id`),
  ADD KEY `idx_passengers_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_id` (`booking_id`),
  ADD KEY `idx_payments_booking_id` (`booking_id`),
  ADD KEY `idx_payments_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `payout_requests`
--
ALTER TABLE `payout_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_payout_requests_deleted_at` (`deleted_at`),
  ADD KEY `idx_payout_requests_partner_id` (`partner_id`);

--
-- Indeks untuk tabel `payout_settings`
--
ALTER TABLE `payout_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_payout_settings_partner_id` (`partner_id`),
  ADD KEY `idx_payout_settings_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `platform_settings`
--
ALTER TABLE `platform_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_platform_settings_key` (`key`),
  ADD KEY `idx_platform_settings_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `idx_promotions_deleted_at` (`deleted_at`),
  ADD KEY `idx_promotions_code` (`code`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_id` (`booking_id`),
  ADD KEY `idx_reviews_booking_id` (`booking_id`),
  ADD KEY `idx_reviews_user_id` (`user_id`),
  ADD KEY `idx_reviews_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `room_availabilities`
--
ALTER TABLE `room_availabilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_room_avail_room_type` (`room_type_id`),
  ADD KEY `idx_room_avail_date` (`date`),
  ADD KEY `idx_room_avail_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `idx_room_images_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_room_types_hotel_id` (`hotel_id`),
  ADD KEY `idx_room_types_deleted_at` (`deleted_at`);

--
-- Indeks untuk tabel `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_users_email` (`email`),
  ADD KEY `idx_users_deleted_at` (`deleted_at`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aircrafts`
--
ALTER TABLE `aircrafts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `airports`
--
ALTER TABLE `airports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `availabilities`
--
ALTER TABLE `availabilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `e_tickets`
--
ALTER TABLE `e_tickets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `flight_bookings`
--
ALTER TABLE `flight_bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `flight_seats`
--
ALTER TABLE `flight_seats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT untuk tabel `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `hotel_bookings`
--
ALTER TABLE `hotel_bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `hotel_images`
--
ALTER TABLE `hotel_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `hotel_vouchers`
--
ALTER TABLE `hotel_vouchers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `passengers`
--
ALTER TABLE `passengers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `payout_requests`
--
ALTER TABLE `payout_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `payout_settings`
--
ALTER TABLE `payout_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `platform_settings`
--
ALTER TABLE `platform_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `room_availabilities`
--
ALTER TABLE `room_availabilities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2202;

--
-- AUTO_INCREMENT untuk tabel `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `e_tickets`
--
ALTER TABLE `e_tickets`
  ADD CONSTRAINT `e_tickets_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flights_ibfk_2` FOREIGN KEY (`departure_airport_id`) REFERENCES `airports` (`id`),
  ADD CONSTRAINT `flights_ibfk_3` FOREIGN KEY (`arrival_airport_id`) REFERENCES `airports` (`id`);

--
-- Ketidakleluasaan untuk tabel `flight_bookings`
--
ALTER TABLE `flight_bookings`
  ADD CONSTRAINT `flight_bookings_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flight_bookings_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`);

--
-- Ketidakleluasaan untuk tabel `flight_seats`
--
ALTER TABLE `flight_seats`
  ADD CONSTRAINT `flight_seats_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hotels_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Ketidakleluasaan untuk tabel `hotel_facilities`
--
ALTER TABLE `hotel_facilities`
  ADD CONSTRAINT `hotel_facilities_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hotel_facilities_ibfk_2` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD CONSTRAINT `hotel_images_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hotel_vouchers`
--
ALTER TABLE `hotel_vouchers`
  ADD CONSTRAINT `hotel_vouchers_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `partners`
--
ALTER TABLE `partners`
  ADD CONSTRAINT `partners_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `passengers`
--
ALTER TABLE `passengers`
  ADD CONSTRAINT `passengers_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `room_availabilities`
--
ALTER TABLE `room_availabilities`
  ADD CONSTRAINT `room_availabilities_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `room_types`
--
ALTER TABLE `room_types`
  ADD CONSTRAINT `room_types_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
