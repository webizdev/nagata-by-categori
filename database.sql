-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2026 at 03:54 AM
-- Server version: 11.4.9-MariaDB-cll-lve
-- PHP Version: 8.1.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nagatadv_xdaytona`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `maps_url` varchar(255) DEFAULT NULL,
  `maps_iframe` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `address`, `phone`, `maps_url`, `maps_iframe`, `created_at`, `updated_at`) VALUES
(1, 'Jakarta', 'Jl Ampera Jakarta Pusat', '081257123863', 'https://maps.app.goo.gl/pSRmBMBKQioNujSz7', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5029675.205172664!2d101.95039251249997!3d-6.181477199999994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f42e0a4fa95b%3A0x7d1f79e7340b21ae!2sKantor%20Gubernur%20Provinsi%20DKI%20Jakarta!5e1!3m2!1sid!2sid!4v1776684614061!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2026-04-20 04:30:21', '2026-04-20 05:05:53'),
(2, 'Kalimantan', 'Jalan Raya Kalimantan No.10 Samarinda', '08127863263728632', 'https://maps.app.goo.gl/pSRmBMBKQioNujSz7', NULL, '2026-04-20 05:07:11', '2026-04-20 05:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-nagatadvxdaytona@gmail.com|112.215.242.114', 'i:2;', 1777177526),
('laravel-cache-nagatadvxdaytona@gmail.com|112.215.242.114:timer', 'i:1777177526;', 1777177526),
('laravel-cache-www.nagatadvxdaytona@gmail.com|112.215.242.114', 'i:1;', 1777177564),
('laravel-cache-www.nagatadvxdaytona@gmail.com|112.215.242.114:timer', 'i:1777177564;', 1777177564);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(27, NULL, 'DVX', 'dvx', '2026-04-21 04:02:52', '2026-04-21 04:32:36'),
(28, 27, 'Engine Part', 'DVX-E-SV-30%-H-TGR', '2026-04-21 04:03:07', '2026-04-22 23:12:35'),
(34, 27, 'Body', 'dvx-body', '2026-04-21 04:27:43', '2026-04-21 04:30:45'),
(35, 27, 'Electrik', 'dvx-electric', '2026-04-21 04:28:13', '2026-04-21 04:30:57'),
(36, 27, 'Decoration', 'dvx-decoration', '2026-04-21 04:29:10', '2026-04-21 04:31:09'),
(37, 27, 'Scoter Part', 'dvx-scooter-part', '2026-04-21 04:29:37', '2026-04-21 04:31:20'),
(38, 27, 'By Motor', 'dvx-by-motor', '2026-04-21 04:29:59', '2026-04-21 04:31:29'),
(89, 28, 'Piston', 'dvx-engine-part-piston', '2026-04-22 21:57:35', '2026-04-22 21:57:35'),
(90, 28, 'Conrod', 'dvx-engine-part-conrod', '2026-04-22 22:01:40', '2026-04-22 22:01:40'),
(91, 28, 'Klep', 'dvx-engine-part-klep', '2026-04-22 22:02:03', '2026-04-22 22:02:03'),
(92, 28, 'Ring Piston', 'dvx-engine-part-ring-piston', '2026-04-22 22:02:31', '2026-04-22 22:02:31'),
(93, 28, 'Bearing', 'dvx-engine-part-bearing', '2026-04-22 22:02:51', '2026-04-22 22:02:51'),
(94, 28, 'Nokeas', 'dvx-engine-part-nokeas', '2026-04-22 22:03:17', '2026-04-22 22:03:17'),
(95, 28, 'Per Kopling', 'dvx-engine-part-per-kopling', '2026-04-22 22:03:45', '2026-04-22 22:03:45'),
(96, 28, 'Per Klep', 'dvx-engine-part-per-klep', '2026-04-22 22:04:07', '2026-04-22 22:04:07'),
(97, 28, 'Kampas Kopling', 'dvx-engine-part-kampas-kopling', '2026-04-22 22:04:40', '2026-04-22 22:04:40'),
(98, 28, 'Knalpot', 'dvx-engine-part-knalpot', '2026-04-22 22:04:59', '2026-04-22 22:04:59'),
(99, 28, 'Carbu', 'dvx-engine-part-carbu', '2026-04-22 22:05:21', '2026-04-22 22:05:21'),
(102, NULL, 'DAYTONA', 'DAYTONA', '2026-04-24 23:13:15', '2026-04-24 23:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(255) NOT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"725891a4-25e0-428a-9d04-406f62dab6a8\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:12;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/qlZub1ktiwj2wWwSUDbK3FfyVHBiD5PcbHVZ6cDF.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:7:\\\"gallery\\\";}\",\"batchId\":null},\"createdAt\":1776679455,\"delay\":null}', 0, NULL, 1776679455, 1776679455),
(2, 'default', '{\"uuid\":\"3a9891d8-3090-4a64-a49d-6f62a3edd3c9\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:12;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/neEZesU3v4fKnqVPYtsuSz9EnyXuVhubBp8QzOA4.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776679984,\"delay\":null}', 0, NULL, 1776679984, 1776679984),
(3, 'default', '{\"uuid\":\"824085b5-1c3b-4728-ba6a-c1a230187378\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:12;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/Ej9RHHGBa9VEY3tUfXpWbDXdMPpGsnqe79WpR9Xi.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:7:\\\"gallery\\\";}\",\"batchId\":null},\"createdAt\":1776679984,\"delay\":null}', 0, NULL, 1776679984, 1776679984),
(4, 'default', '{\"uuid\":\"5c000e19-91c2-4134-a540-cf20b452a900\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:11;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/xO93KrPse9jg4OJFXL5kYJYupojTJxvytEvs8D02.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776680607,\"delay\":null}', 0, NULL, 1776680607, 1776680607),
(5, 'default', '{\"uuid\":\"1ab59de6-10c4-419b-a3ed-abff165cf355\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:11;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/VMTwffVUUfg65jkhFhRFsNLzrkX5o8lryQlTx4uF.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:7:\\\"gallery\\\";}\",\"batchId\":null},\"createdAt\":1776680607,\"delay\":null}', 0, NULL, 1776680607, 1776680607),
(6, 'default', '{\"uuid\":\"cd101969-55b8-4e13-9f26-43c2c15127f1\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:8;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/m7xWt4LBpD9M6sCggNVPbKuBgu7msTaHyNj561tx.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776680626,\"delay\":null}', 0, NULL, 1776680626, 1776680626),
(7, 'default', '{\"uuid\":\"47d707b2-e73f-48e1-9fdf-45a2eba47c0d\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:8;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/WBHFRBifv7Kt3va9n07AX1rlQaxz6ENx2mBOGPiH.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:7:\\\"gallery\\\";}\",\"batchId\":null},\"createdAt\":1776680626,\"delay\":null}', 0, NULL, 1776680626, 1776680626),
(8, 'default', '{\"uuid\":\"91918b04-17a8-43d9-b1b2-9992c4c26551\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:6;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/xkgnzHGv1updp5gf8jGJMQPjPjODvNhnAf50D1Kx.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776680649,\"delay\":null}', 0, NULL, 1776680649, 1776680649),
(9, 'default', '{\"uuid\":\"4d3a84fe-486c-450c-93c3-308b9a99e32d\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:6;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/tySrAuIXegwpUkz8u2MpF2CPOTbJrszVDkRlCDfF.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:7:\\\"gallery\\\";}\",\"batchId\":null},\"createdAt\":1776680649,\"delay\":null}', 0, NULL, 1776680649, 1776680649),
(10, 'default', '{\"uuid\":\"d05392ac-0a90-4a9b-a0c3-64ee171fd8ee\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:5;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/q5z18TpPe9jZeVqy9UOSScKJK56kgd0jKTrMP6qY.png\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776680670,\"delay\":null}', 0, NULL, 1776680670, 1776680670),
(11, 'default', '{\"uuid\":\"d75af07b-a642-4119-b593-2bff4242326e\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:5;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/wFYULQqQRzq92lZXf0UGoELEM5fYhA0hp8PI2Ef9.png\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:7:\\\"gallery\\\";}\",\"batchId\":null},\"createdAt\":1776680670,\"delay\":null}', 0, NULL, 1776680670, 1776680670),
(12, 'default', '{\"uuid\":\"7c7c470e-f363-4b99-b8b7-a333ffd33339\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:4;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/0ur4mebQW8NlwdErAS30EYAZ5qTdF34nBLW1JJHW.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776680691,\"delay\":null}', 0, NULL, 1776680691, 1776680691),
(13, 'default', '{\"uuid\":\"60f606f1-9b90-437e-9b1d-66f5b88345da\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:4;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/p5602YAI877Er3p9hFg2FS7ykgJMD0qokZvFt2KY.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:7:\\\"gallery\\\";}\",\"batchId\":null},\"createdAt\":1776680691,\"delay\":null}', 0, NULL, 1776680691, 1776680691),
(14, 'default', '{\"uuid\":\"9bf6aa5a-010a-428b-bc54-abdf2e06b8e1\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:3;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:50:\\\"temp\\/vrHkubZAsoMqjgFWrj61cH8L14iFVSOQTTIjrGN6.webp\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776680713,\"delay\":null}', 0, NULL, 1776680713, 1776680713),
(15, 'default', '{\"uuid\":\"3d0d6bd4-75c9-4f8c-9426-c3641308da54\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:3;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:50:\\\"temp\\/VThXIi6F1fYvVyXcCyCGwfM4qJd3SssVNht5dzo6.webp\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:7:\\\"gallery\\\";}\",\"batchId\":null},\"createdAt\":1776680713,\"delay\":null}', 0, NULL, 1776680713, 1776680713),
(16, 'default', '{\"uuid\":\"b5398b00-1f34-4977-9ac2-da7d7194141d\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:2;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/FGKXyYexVMDOOJSEVVnnpmS42xljCt07BIUqA3yJ.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776680732,\"delay\":null}', 0, NULL, 1776680732, 1776680732),
(17, 'default', '{\"uuid\":\"08940d3c-ef47-4b22-8916-4188603f73f1\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:2;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/CYpIvRO5ePk8mM6FpA0fqaQnqdbTF9a03BwKzxOz.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:7:\\\"gallery\\\";}\",\"batchId\":null},\"createdAt\":1776680732,\"delay\":null}', 0, NULL, 1776680732, 1776680732),
(18, 'default', '{\"uuid\":\"7170cb2c-4a9e-4590-a9ee-37c99cabf105\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:15;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/XR5M0SIf6IC2PLQ9AmtOycK9vGQgralbQWqaqVwP.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776769523,\"delay\":null}', 0, NULL, 1776769523, 1776769523),
(19, 'default', '{\"uuid\":\"455c807a-f99e-4372-b24f-dd09e0b85ee2\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:15;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/9bazFjm1UzYqHVYhf3ebjtZrV9UcKwLr3fuGZE2n.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:7:\\\"gallery\\\";}\",\"batchId\":null},\"createdAt\":1776769523,\"delay\":null}', 0, NULL, 1776769523, 1776769523),
(20, 'default', '{\"uuid\":\"e350094d-2606-4a43-8043-d027faae6817\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:16;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/oyYybBIIHV2K9dMlmBa1KuUqp9UgYQab6z2cNtoS.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776769803,\"delay\":null}', 0, NULL, 1776769803, 1776769803),
(21, 'default', '{\"uuid\":\"59b5e0f6-c606-4089-b9be-74306c0701b8\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:16;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/xgfD6FFg69yE3bGrTcgqVuxXR5Z3GhL3jeMYC9SX.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:7:\\\"gallery\\\";}\",\"batchId\":null},\"createdAt\":1776769803,\"delay\":null}', 0, NULL, 1776769803, 1776769803),
(22, 'default', '{\"uuid\":\"f9c0076b-ffca-415d-842d-5a410877e628\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:17;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/CUZXUJV4SXW81DPJl4nAnXsGPaDht08MMqd6KCqX.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776839826,\"delay\":null}', 0, NULL, 1776839826, 1776839826),
(23, 'default', '{\"uuid\":\"1cb3261f-e68a-4af5-9668-0e5066adcca5\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:18;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/vMyrb5G3OmE1M5OzF7SrjucsNt5WUXJi5fMMJTsP.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776842124,\"delay\":null}', 0, NULL, 1776842124, 1776842124),
(24, 'default', '{\"uuid\":\"ae9e0507-f530-4ed5-8747-2136664c7cf0\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:19;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/OeEdwU29j1ruLpwTARwV6lovwiuCEFyAXjREy3eC.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776845391,\"delay\":null}', 0, NULL, 1776845391, 1776845391),
(25, 'default', '{\"uuid\":\"88ffc9d9-d454-4bec-a97e-d63efbd97457\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:20;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/1EQQl8ny5H4i2QBOdUFJDee6LwUZBtzRJsOB4ZAb.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776852220,\"delay\":null}', 0, NULL, 1776852220, 1776852220),
(26, 'default', '{\"uuid\":\"89500147-62c8-45a7-99bc-9abe4795c5e8\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:21;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/WrcfkSqRnfLrku7UBgNy4CI4CSPIfrk2UY0pJstm.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776922250,\"delay\":null}', 0, NULL, 1776922250, 1776922250),
(27, 'default', '{\"uuid\":\"79c56dda-6d37-45c6-a328-99b4d0a31182\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:22;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/jXAfCJEKJBMAKkT1F8Et7ERkDi3zDMfQWCMl6vrN.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776922962,\"delay\":null}', 0, NULL, 1776922962, 1776922962),
(28, 'default', '{\"uuid\":\"254984cf-b00d-4ade-ac15-0c6955c23612\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:23;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/9xlBNeYnp5SDASIeDWx6wqOhDlMymzCnUTILkpC0.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776923037,\"delay\":null}', 0, NULL, 1776923037, 1776923037),
(29, 'default', '{\"uuid\":\"177914dc-fc1e-489a-9612-9af4c6435bd0\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:24;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/8QLjh3e1OzddTvElkHZDESdaJs3DXUQ3iEtZulws.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776924143,\"delay\":null}', 0, NULL, 1776924143, 1776924143),
(30, 'default', '{\"uuid\":\"55ee5e49-daff-4938-9a57-217a2c722e0e\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:26;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/wWtSOoNisZzYqVtWfPnkDZ8CEho6ezFyHMZR2Mqh.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776924242,\"delay\":null}', 0, NULL, 1776924242, 1776924242),
(31, 'default', '{\"uuid\":\"c9f10ca7-b2cf-4218-86db-9e16af1de100\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:34;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/qvIGL6klOJruZBDwbNZn2VO5o24Ql4RBvoIwGUvc.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776925281,\"delay\":null}', 0, NULL, 1776925281, 1776925281),
(32, 'default', '{\"uuid\":\"da9f5ed2-5a1a-42e2-ae02-7877d015e386\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:34;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/tBSi1InnqfOo1EgqLQE9oPrKQ7UmtYIQgkWAzNwl.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776925302,\"delay\":null}', 0, NULL, 1776925302, 1776925302),
(33, 'default', '{\"uuid\":\"2637ba7a-382d-4fa9-a266-25f772b311ab\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:35;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/z5svQlaQd2utjSbmxHs12J7Www3gLwQa51qxXxr0.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776925861,\"delay\":null}', 0, NULL, 1776925861, 1776925861),
(34, 'default', '{\"uuid\":\"17764f1d-dbec-474d-8876-0cfa188ffc6b\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:36;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/RRGrHBkRDGBqfcw4g18kAqGt5qQT8bFCAIL9Wxmq.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776925938,\"delay\":null}', 0, NULL, 1776925938, 1776925938),
(35, 'default', '{\"uuid\":\"48ef859a-e617-4456-aa8b-0e678fd4fb24\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:37;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/6MMapG8zwqkk2Okj3yz98uYEJEaBHI8nHqJ2x3HA.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776925953,\"delay\":null}', 0, NULL, 1776925953, 1776925953),
(36, 'default', '{\"uuid\":\"5dac4770-5bb6-4786-a811-b6a7fa2623be\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:38;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/RuOu80l68OHSezxbHUZkh8wo7fANBRFXUHhCP494.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776926075,\"delay\":null}', 0, NULL, 1776926075, 1776926075),
(37, 'default', '{\"uuid\":\"798a8326-d77e-4ae3-8be1-fd316d4092e9\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:39;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/xrAkQEZxjf2ZZm8snShOLVjE2ldoHZntWs9I7oiI.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776926173,\"delay\":null}', 0, NULL, 1776926173, 1776926173),
(38, 'default', '{\"uuid\":\"9aa4f488-9bac-4993-a704-2b8209eb0163\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:40;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/PjlTIA6QZWDAvOt6ZO0lp2UvJDcS5LTZenJXNzXS.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776926420,\"delay\":null}', 0, NULL, 1776926420, 1776926420),
(39, 'default', '{\"uuid\":\"34cd0fdf-6baf-49ce-8979-c7a15179cf12\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:40;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/74SvA47Goo1WtFU55ws6h6iY8bFFwKGjqtWXzOgC.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:7:\\\"gallery\\\";}\",\"batchId\":null},\"createdAt\":1776926420,\"delay\":null}', 0, NULL, 1776926420, 1776926420),
(40, 'default', '{\"uuid\":\"47b2683b-1a5e-42c1-9b22-80a62d6d03c6\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:41;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/HddoXfhPQVh7kzuCDlPCndYg1n0EubuX1qi6xJHq.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776926597,\"delay\":null}', 0, NULL, 1776926597, 1776926597),
(41, 'default', '{\"uuid\":\"58942a74-8c89-45af-be62-ff1462c0c203\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:42;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/nWDkzPIYcxVgJ3dVuXySz8VXCm3DlY2c6IcjfuLR.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776926695,\"delay\":null}', 0, NULL, 1776926695, 1776926695),
(42, 'default', '{\"uuid\":\"283f916a-a0bc-440a-acc4-511ff048c3f7\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:44;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/Dyh1XOAavsobUwgCFvudVJIVpSONUlhT2gvhRw4y.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776926829,\"delay\":null}', 0, NULL, 1776926829, 1776926829),
(43, 'default', '{\"uuid\":\"52ef271b-0397-41f9-8000-9f2a06c9cbd0\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:45;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/QIyATuxbbWPQuz4UDel3jznlHBF9rSUxcvsmyfOc.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776926850,\"delay\":null}', 0, NULL, 1776926850, 1776926850),
(44, 'default', '{\"uuid\":\"1e710ce7-36ba-4b5f-8f6b-6dfd118d7904\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:46;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/vyGlqaS6NsDjeFLOBt7i1wQe7zEOzoktJXdf8WkZ.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776926984,\"delay\":null}', 0, NULL, 1776926984, 1776926984),
(45, 'default', '{\"uuid\":\"c196ce94-c571-4649-a6db-9c9650697484\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:47;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/X2psP9uJwwRx5c3LAsdzMWGjpCgBnLyt4rUwp7tB.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776928044,\"delay\":null}', 0, NULL, 1776928044, 1776928044),
(46, 'default', '{\"uuid\":\"85105645-d440-40e8-8c8d-b3350424af25\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:48;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/7iCdaspCJKiQEKa36M7PDYrHGHa15JPM86KVLuB4.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776928384,\"delay\":null}', 0, NULL, 1776928384, 1776928384),
(47, 'default', '{\"uuid\":\"c37461bb-6d8c-4e13-99a2-f877a7f02bdd\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:49;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/vV2TCETC1L3hNmnwFQ8PUJ1DW1zQOz2NOKIhlkJP.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776928559,\"delay\":null}', 0, NULL, 1776928559, 1776928559),
(48, 'default', '{\"uuid\":\"4f303798-aed8-4191-a75b-7a91c3000eaf\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:50;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/vGyxREnGPwlOoA75ZKXya3amEUtiUAyC3n70AUlx.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776928673,\"delay\":null}', 0, NULL, 1776928673, 1776928673),
(49, 'default', '{\"uuid\":\"f830e646-f921-4032-86ef-56ddca686b43\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:52;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/pEVQiAcdyZe7E6waA6MdbHkQy8j5c1Ozr8PaEPRF.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776928922,\"delay\":null}', 0, NULL, 1776928922, 1776928922),
(50, 'default', '{\"uuid\":\"86cc580b-66ff-4f3b-a472-d90f1145c9db\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:53;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/Y8BHJURteNm5290uTmbO6rJCBR8UBPCVoE2Pqwol.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776929033,\"delay\":null}', 0, NULL, 1776929033, 1776929033),
(51, 'default', '{\"uuid\":\"d318eba5-24dc-4c25-9ba9-10fccf2001bc\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:54;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/LMKcI871NyQfYWfZY7m76gLKvgdN2xWDsJhqzTh3.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776929096,\"delay\":null}', 0, NULL, 1776929096, 1776929096),
(52, 'default', '{\"uuid\":\"fe6ed20d-b9cc-43c0-b5ff-7930de9da884\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:55;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/C3DHDYDKmKCf1gj0TK8MijOydFtswwgRJInPqg9E.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776929114,\"delay\":null}', 0, NULL, 1776929114, 1776929114),
(53, 'default', '{\"uuid\":\"318434e4-9453-4664-b4ba-b9c4699baad4\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:57;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/kZ8A8v8UuCOGFQaqXzi4latyvwtd7BQraypEZ7K6.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776929202,\"delay\":null}', 0, NULL, 1776929202, 1776929202),
(54, 'default', '{\"uuid\":\"cdc99bd0-b639-4c37-aeef-2ee48c687e88\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:58;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/9dlttFEKBE0e0sPbNpZAYMc8Kdy3R8S7H9mDb6pa.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776929249,\"delay\":null}', 0, NULL, 1776929249, 1776929249),
(55, 'default', '{\"uuid\":\"1021c95d-e571-4698-87e2-ec899af54958\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:56;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/HJ1sFSlmVsMa7iRf339YqSUNLTh0QZnDNdzC9lqO.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776929285,\"delay\":null}', 0, NULL, 1776929285, 1776929285),
(56, 'default', '{\"uuid\":\"323e0e5c-3921-477e-b6c7-6b1171a35841\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:59;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/EkKUNKunEz3qrr6Viee9s5UQIOhZraXstrBXoo2w.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776929332,\"delay\":null}', 0, NULL, 1776929332, 1776929332),
(57, 'default', '{\"uuid\":\"da28b4b8-fd15-43c4-8d42-89adfef78259\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:60;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/qNfm0jIQkxaisjpb2HJRFRU7RWsZRFeBBwxiFH1V.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776929455,\"delay\":null}', 0, NULL, 1776929455, 1776929455),
(58, 'default', '{\"uuid\":\"e1e4c590-20d6-4d88-8b9f-317e200d0e27\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:61;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/8RziwbKfy5XAKBXju2sHUooEf097abQ02IToEuAN.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776929506,\"delay\":null}', 0, NULL, 1776929506, 1776929506),
(59, 'default', '{\"uuid\":\"ee788b27-c137-46ad-a8af-890f612b18af\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:62;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/GAmHd8pO5Qdn1HJprfXaH7M6n0LNcKz4eM566oHW.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776929687,\"delay\":null}', 0, NULL, 1776929687, 1776929687),
(60, 'default', '{\"uuid\":\"98d77860-2b37-4574-9a39-033ee0db7220\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:64;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/qwN5wPxbf1eiapsborMlUX5QtxFvZFiFt5Op9nnT.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776929842,\"delay\":null}', 0, NULL, 1776929842, 1776929842),
(61, 'default', '{\"uuid\":\"62733b9e-5e9a-486e-b3a6-134a26fd796a\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:65;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/05Ucv9GFMayBTrZ48VYudqRFRQTjpyZJJIiuup9B.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776930005,\"delay\":null}', 0, NULL, 1776930005, 1776930005),
(62, 'default', '{\"uuid\":\"dfa875e1-900a-4a69-9426-d81e621fe43b\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:66;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/tq5bnVjf0gUSbDPunpDV9p2EcHDBIEpcQK688Tzb.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776930294,\"delay\":null}', 0, NULL, 1776930294, 1776930294),
(63, 'default', '{\"uuid\":\"7a473812-7857-4faf-b630-faed304f41b2\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:67;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/RE1s54h0vkqw1aP15P8RYdrjxgvNqACxgcAUSc2g.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776930741,\"delay\":null}', 0, NULL, 1776930741, 1776930741),
(64, 'default', '{\"uuid\":\"4b0255e4-0025-4b20-9d0c-144d8f04fcba\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:68;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/5kM3grmt9H5IUyiYG3HFd3b9L37v8oP9j1tC2sD5.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776931109,\"delay\":null}', 0, NULL, 1776931109, 1776931109),
(65, 'default', '{\"uuid\":\"bca1c87d-f3e9-44e4-895c-66a1932a8a69\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:69;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/MesmM6W2Ntz4aSmNRhRHEEiGL3JHx5PTFCebUgFg.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776931330,\"delay\":null}', 0, NULL, 1776931330, 1776931330),
(66, 'default', '{\"uuid\":\"66f9a160-878c-4150-b722-807aa652f92d\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:70;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/Dfip5IBkWFYNtj1m5waHyUh9g7DSpY794kSAq4ds.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776931786,\"delay\":null}', 0, NULL, 1776931786, 1776931786),
(67, 'default', '{\"uuid\":\"2d763655-80b5-492b-ba60-613870735e0a\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:71;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/GCTen2hIDlJKdwQeIOVXhOZMaHma5NIDGXfcYCAD.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776932023,\"delay\":null}', 0, NULL, 1776932023, 1776932023),
(68, 'default', '{\"uuid\":\"1b1d7720-0a26-47e2-806a-f9047fe2f7e5\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:72;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/5YtljdVeNrlt8OOWpAkmrQtuIJHjKNLP0ZxkSYJV.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776932154,\"delay\":null}', 0, NULL, 1776932154, 1776932154);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(69, 'default', '{\"uuid\":\"8a19ae98-f261-424d-a2dd-73475848b8ca\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:73;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/FT3eMN0x8VTIPFCHTARE6nSQ1GUyp5sFHVyNdgSP.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776932257,\"delay\":null}', 0, NULL, 1776932257, 1776932257),
(70, 'default', '{\"uuid\":\"84b1b9a8-05d4-41e7-b6f8-f8716653193b\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:74;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/eBPGPD1koXCPuSecjGU6gvjX8d8wwZmRCiUWD7CF.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776932371,\"delay\":null}', 0, NULL, 1776932371, 1776932371),
(71, 'default', '{\"uuid\":\"5f1624a4-1b5a-4b55-a843-c4cdfc26ebfe\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:75;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/yA7DMxuYEQIzEC7xnfMzHTwIje1PaSVgmEkPKlsv.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776932481,\"delay\":null}', 0, NULL, 1776932481, 1776932481),
(72, 'default', '{\"uuid\":\"319f9c1f-5460-46c3-a6e6-170cb4d6c690\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:76;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/6GBNR73aLIcK1r4vAsKZugCE50dFAavw1K0MTuCa.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776932720,\"delay\":null}', 0, NULL, 1776932720, 1776932720),
(73, 'default', '{\"uuid\":\"9cfdde82-3adb-46d5-b370-8351c2b9097e\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:77;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/HTivOlmvZEtR5LTJ9bU9gwCapdlyxM7AxM20rlqS.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776932771,\"delay\":null}', 0, NULL, 1776932771, 1776932771),
(74, 'default', '{\"uuid\":\"b45605c0-87e3-49af-9334-0930ee756a0b\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:78;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/H7SY7A00fTU7JOXlA9F9PMlT0ozztFElBaI2XCsd.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776932794,\"delay\":null}', 0, NULL, 1776932794, 1776932794),
(75, 'default', '{\"uuid\":\"598b9176-cdc9-43ab-8c8f-ec566a42d57d\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:79;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/IFJ8ZtLOiCYFyPgwBV9ZkRJyMN9RtS1WdLHz8fcL.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776932820,\"delay\":null}', 0, NULL, 1776932820, 1776932820),
(76, 'default', '{\"uuid\":\"e3749d13-d54b-4fab-8abc-7bcdfc2bf48b\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:80;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/6qHKrYQJeHm9CKRLIdFO8b6K4crLNDkyoK9Nd4TI.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776932905,\"delay\":null}', 0, NULL, 1776932905, 1776932905),
(77, 'default', '{\"uuid\":\"048b82dc-ed54-4f56-9689-c45dbf61d317\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:81;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/jMSFnd8TWsAzkTVfX1ZNpnBukyZlFIsEYZ6qrM65.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776932956,\"delay\":null}', 0, NULL, 1776932956, 1776932956),
(78, 'default', '{\"uuid\":\"48e10235-3237-4902-92bf-e697d5a12c16\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:82;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/2K8aQo938Hea9chesd5zjJTzdV8t05X0bJjsig44.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776933032,\"delay\":null}', 0, NULL, 1776933032, 1776933032),
(79, 'default', '{\"uuid\":\"9a98f0d5-f8fc-4f7e-81ba-f820cf76bb1f\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:83;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/0FcVOxyicmbR1QJtADt4PfeoOIOvI5JeeeCGGjPP.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776933245,\"delay\":null}', 0, NULL, 1776933245, 1776933245),
(80, 'default', '{\"uuid\":\"58e5f508-48a7-48ec-8030-7cef3a14f26e\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:84;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/jOcMD2R7p471SOyb7Lk6gnCUqbJ0E460oLYMtlRp.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776933388,\"delay\":null}', 0, NULL, 1776933388, 1776933388),
(81, 'default', '{\"uuid\":\"b631d1f0-d55c-4db3-926f-febe519f6e27\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:85;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/Y4ukFrtcBbPsKop4mYBGRti1ykTbm4E6qhwfQEMK.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776933576,\"delay\":null}', 0, NULL, 1776933576, 1776933576),
(82, 'default', '{\"uuid\":\"109fa731-cd32-4f57-809c-49cf39ccdabf\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:86;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/mGioOsx8N6PMgKtXuIVbFsb7ZDSSjuUCHh1hjFag.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776936060,\"delay\":null}', 0, NULL, 1776936060, 1776936060),
(83, 'default', '{\"uuid\":\"dbc30ff8-1d4a-4f41-b93f-7a9b38874544\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:87;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/Yf45GsRbQAwaCJCrKcV1VCwgpstoVmwh6YWmab7j.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776936274,\"delay\":null}', 0, NULL, 1776936274, 1776936274),
(84, 'default', '{\"uuid\":\"f39eeacb-1160-4f2f-8d05-6fec542cb1b9\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:88;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/T5MTuRcYVEHYFcxHjOlhcwVqS7xIIsqsgxShZecD.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776936538,\"delay\":null}', 0, NULL, 1776936538, 1776936538),
(85, 'default', '{\"uuid\":\"fd960f83-0efd-49a5-978c-a03c0977aa01\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:89;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/tLVKUcGsczMgq5yAlgdCOONOiM4USEF21ivjeLVB.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776936747,\"delay\":null}', 0, NULL, 1776936747, 1776936747),
(86, 'default', '{\"uuid\":\"4141ba2d-d949-4152-994d-b60d694becbe\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:90;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/iWsiuwwxQeuPNfUgf7XAEztqUEN1IfzQ2LDjoMFT.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776936840,\"delay\":null}', 0, NULL, 1776936840, 1776936840),
(87, 'default', '{\"uuid\":\"41a75e5a-db43-4e89-9678-966804eeb385\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:91;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/iJysFfEoPNvqOQPLpwYRSCALbcdYFNeSzSwqzwsc.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776936965,\"delay\":null}', 0, NULL, 1776936965, 1776936965),
(88, 'default', '{\"uuid\":\"758631ba-cf84-4c63-b7e2-f7819e147710\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:92;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/VJZG7TLbiGREtaHxWAkErJBQAIPcMWTVicssU4XN.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776937066,\"delay\":null}', 0, NULL, 1776937066, 1776937066),
(89, 'default', '{\"uuid\":\"9ff5efa4-c184-42ef-90c2-2f9a8bfb61bd\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:93;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/2o6ua5FDnyTg7wvyMiMhEVaP8aH8XZq3ot90nxiW.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776937338,\"delay\":null}', 0, NULL, 1776937338, 1776937338),
(90, 'default', '{\"uuid\":\"0bcca805-1ec4-4e18-8a34-2558a0747f61\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:94;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/7wSlT24Bt0QwmlargC6Ro6ELujjXZlXqGvUKhFiz.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776937415,\"delay\":null}', 0, NULL, 1776937415, 1776937415),
(91, 'default', '{\"uuid\":\"43e79160-0f21-4fa3-938a-387091c5d4a8\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:95;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/86DUgoXHLwTvuzAvPsBiSi62MQruUpbxwMPCDdQK.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776937492,\"delay\":null}', 0, NULL, 1776937492, 1776937492),
(92, 'default', '{\"uuid\":\"3da4c66b-f517-4e03-aa58-820ca2afd5f3\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:96;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/O3tf4jzVgWBoVVdFg8owudTTnwQWU78TBjaoLiq0.png\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776937520,\"delay\":null}', 0, NULL, 1776937520, 1776937520),
(93, 'default', '{\"uuid\":\"4e259e02-bbf2-4130-bc1f-b8e3d73967fb\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:97;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/s6K39BZ3CGIYW2DPiMU6l45qW8RcXXn1FB1QYuHD.png\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1776937660,\"delay\":null}', 0, NULL, 1776937660, 1776937660),
(94, 'default', '{\"uuid\":\"0e95a811-2110-410a-bd39-89cd57cf6f2f\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:106;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/XUJjxA1MvNQdZ4FfJNAOgZcgtROB5kMTPP0pSeaY.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777012908,\"delay\":null}', 0, NULL, 1777012908, 1777012908),
(95, 'default', '{\"uuid\":\"d48727f1-66f3-42ce-8518-26831194f895\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:109;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/FczMMuZMKYGQ2UKo7T2GVbnZTprp0reU9VdoqIWT.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777012982,\"delay\":null}', 0, NULL, 1777012982, 1777012982),
(96, 'default', '{\"uuid\":\"fd41947d-ba30-47d2-8de5-9fba5b9217c9\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:110;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/LJMPOoDGap7h0VZ56FHetTZM3wNbIwBTicAu2CMk.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777013103,\"delay\":null}', 0, NULL, 1777013103, 1777013103),
(97, 'default', '{\"uuid\":\"aa6c1abb-483d-4d2c-adda-868d73cfa816\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:132;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/mcWyAACirxbyt1Zq5eqza5cEg2qeYFHWstuOQ37l.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777016654,\"delay\":null}', 0, NULL, 1777016654, 1777016654),
(98, 'default', '{\"uuid\":\"f66a9be7-8628-4b71-93cc-ec03239e6b19\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:133;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/Smzqde682SJaaJuYFZ3Kt30Tf4Hx69ghiSmen76a.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777017884,\"delay\":null}', 0, NULL, 1777017884, 1777017884),
(99, 'default', '{\"uuid\":\"6d1912da-fbff-4056-a978-23b268dda1e7\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:134;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/0rE2alep84kk2G5HMmrujfuRCqCvAFqP3jk9XFun.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777018275,\"delay\":null}', 0, NULL, 1777018275, 1777018275),
(100, 'default', '{\"uuid\":\"7ae544aa-8812-41d5-a691-74624c89dc5e\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:135;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/8Oiwsuons4cTblDr0y1auqaIW2DdwqSAvBCPcFsw.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777018369,\"delay\":null}', 0, NULL, 1777018369, 1777018369),
(101, 'default', '{\"uuid\":\"164cec15-a401-4bb6-9027-78ebbaae12fd\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:136;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/R6XhTxxTrKkAbvL9bNndRB4OpsJZQRE6YUxIAM6N.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777018420,\"delay\":null}', 0, NULL, 1777018420, 1777018420),
(102, 'default', '{\"uuid\":\"aa123872-f426-4fcb-95d7-bd156ed8993b\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:137;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/L5L1Ks9yAn9x4VvWRWD6Q5qhg7Ew753kN0l6f8Gp.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777018515,\"delay\":null}', 0, NULL, 1777018515, 1777018515),
(103, 'default', '{\"uuid\":\"e3529366-0d39-491a-9d70-2e334e51ce85\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:138;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/FwWya4QK298lPEzFns1V9ZpzK3vr6cBdjKI5iBZX.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777018557,\"delay\":null}', 0, NULL, 1777018557, 1777018557),
(104, 'default', '{\"uuid\":\"61d7e2cb-2a07-4fe5-b981-db9f686ea312\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:143;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/lnRPQzrBLg1dMArvOuyzAcwTuzQEv56MXy8IaO1O.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777019995,\"delay\":null}', 0, NULL, 1777019995, 1777019995),
(105, 'default', '{\"uuid\":\"d1c782e4-5f3e-4517-b3af-73fb50bd7baa\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:145;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/8RzgzQiEpOzSUkA3pAXP1B8NlOGu7FgW5fettkGC.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777020204,\"delay\":null}', 0, NULL, 1777020204, 1777020204),
(106, 'default', '{\"uuid\":\"66e79b47-54c6-4eee-8069-a16ac74f702d\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:146;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/ftRc8L71FxZnQievynRlulDjs4aOPSbIwjTyYH2I.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777020257,\"delay\":null}', 0, NULL, 1777020257, 1777020257),
(107, 'default', '{\"uuid\":\"a0a25594-3223-41e4-9d42-9cade638c0dd\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:147;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/dR4WLc7OcQpBrmOL4GUvdoVa2XVFkfOBuXmispc2.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777020296,\"delay\":null}', 0, NULL, 1777020296, 1777020296),
(108, 'default', '{\"uuid\":\"e0064840-2f54-4751-ad2d-b6677d881365\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:148;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/OtxoHB0hWPWICLPz8xQTK0Py7oUqnVjqb0DNZCBu.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777020466,\"delay\":null}', 0, NULL, 1777020466, 1777020466),
(109, 'default', '{\"uuid\":\"18d1491b-6343-49e2-b1c6-10efe04f8e35\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:150;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/R7hb2IcXKbmoDlvyDTdSXY7euhdruUawLMnRdwau.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777022303,\"delay\":null}', 0, NULL, 1777022303, 1777022303),
(110, 'default', '{\"uuid\":\"b2b64d88-f095-455d-9db3-60388c63951c\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:151;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/SmbzoepoarKJo235NuLvan6F3mhL7renNxSOj04T.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777022439,\"delay\":null}', 0, NULL, 1777022439, 1777022439),
(111, 'default', '{\"uuid\":\"4977e22a-046c-4a7f-9caa-40a16b5d465b\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:152;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/Aahi8uewgI2kMGRmjxpX80LQyi3U4hozttAgkEvs.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777022649,\"delay\":null}', 0, NULL, 1777022649, 1777022649),
(112, 'default', '{\"uuid\":\"0316a4f2-2b0d-4a30-9db9-22ccc4b2a213\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:153;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/ubxYw1J6zQhQBLCfEVbTtofVmZSbNqqum9FLvjgG.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777022722,\"delay\":null}', 0, NULL, 1777022722, 1777022722),
(113, 'default', '{\"uuid\":\"121a1e1b-4ace-4929-a685-aa5285dcc5d4\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:154;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/q7iqF0pJyuzmjvNF1937vjuNkF2cEviS41frqdvU.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777022763,\"delay\":null}', 0, NULL, 1777022763, 1777022763),
(114, 'default', '{\"uuid\":\"241025d5-66d5-442c-b99e-da2cdb2c3fc4\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:158;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/q1DibGunJ9kiT071sP4VSFhqdUF5V9sMHdQ0Wxdj.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777086242,\"delay\":null}', 0, NULL, 1777086242, 1777086242),
(115, 'default', '{\"uuid\":\"6559a2fa-1423-40cb-b1a7-59994ed1ae6f\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:159;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/YfClIsyfcuCPPpEsEtYXMIm4yr2BbZhfnTE3xqno.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777086853,\"delay\":null}', 0, NULL, 1777086853, 1777086853),
(116, 'default', '{\"uuid\":\"8460547b-afce-428f-94e2-11bdd576b395\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:160;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/Dxdjl47wAYzeLl60mRkvzE38WhUPvHEo0xbNyCdX.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777096151,\"delay\":null}', 0, NULL, 1777096151, 1777096151),
(117, 'default', '{\"uuid\":\"a16849ee-de10-4506-80b0-556f217216d2\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:162;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/Fu36TnHNtpTvyIqYSS7OlL1aDLYTmvIZWTnoOK3w.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777096355,\"delay\":null}', 0, NULL, 1777096355, 1777096355),
(118, 'default', '{\"uuid\":\"11b76b50-bfb9-420d-8b1d-96de4dfe6294\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:163;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/BoY1ESUJgtLMfWZQR9pDEIs0a62nXZ7MyZPXlQhy.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777097382,\"delay\":null}', 0, NULL, 1777097382, 1777097382),
(119, 'default', '{\"uuid\":\"cbb290f5-c44b-4666-86a6-bd2accfd1dce\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:164;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/TQO9fbxlGvu2liOZNl03fxs9RE7vbZw2yUgpWXLA.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777097470,\"delay\":null}', 0, NULL, 1777097470, 1777097470),
(120, 'default', '{\"uuid\":\"0e59083e-a99f-4270-bc14-0318822ac779\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:165;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/Gl5SBqj1HVb424Ye0VoWAvB8aq8YTCsNz3LQf0xV.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777097534,\"delay\":null}', 0, NULL, 1777097534, 1777097534),
(121, 'default', '{\"uuid\":\"3585a66a-52a5-45e6-8df8-434c40d3879d\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:166;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/3bYEOX7dOrVt58YrS2VHJqM6Oub6vp2JLVqNDwpr.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777097608,\"delay\":null}', 0, NULL, 1777097608, 1777097608),
(122, 'default', '{\"uuid\":\"295ce706-127a-4df9-913c-530c9ac77dd1\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:167;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/LjX7CkpINgwSSTJkVuKpystbIsY4QYpUNcW69yFJ.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777099877,\"delay\":null}', 0, NULL, 1777099877, 1777099877),
(123, 'default', '{\"uuid\":\"a3ac3827-9a1e-4102-99fd-710c4c313ac4\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:169;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/kkDpU1WPiPUA59LqicoYbKLJ2ITeYHSbbSPTGwiS.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777100209,\"delay\":null}', 0, NULL, 1777100209, 1777100209),
(124, 'default', '{\"uuid\":\"c803bf1a-7eb6-4c16-8c4f-9b497cefc397\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:170;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/2p8pgxQBsLIq7r3EYJYKPl2UJcFh5mpWwnkui8QR.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777100296,\"delay\":null}', 0, NULL, 1777100296, 1777100296),
(125, 'default', '{\"uuid\":\"ff165b2e-b28b-4025-aef5-0485d3300ccf\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:171;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/CzqYFwLPvMHfMAsEY5wmgGqiuDSgZOdJDvfhE7uH.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777103347,\"delay\":null}', 0, NULL, 1777103347, 1777103347),
(126, 'default', '{\"uuid\":\"15f9b65a-5198-46a4-9243-649267b2b6c5\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:172;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/GQmHV6S65sPyOdGyZeQzpzFNafacDn08rulQxjQH.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777103842,\"delay\":null}', 0, NULL, 1777103842, 1777103842),
(127, 'default', '{\"uuid\":\"ffaa1a4f-c829-4c6e-b7a3-c579d2d79918\",\"displayName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\OptimizeProductImage\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\OptimizeProductImage\\\":3:{s:12:\\\"\\u0000*\\u0000productId\\\";i:173;s:11:\\\"\\u0000*\\u0000tempPath\\\";s:49:\\\"temp\\/sTTGbImyh0Znj9uPiW5eblmZaa7zoKxlG6ki01dt.jpg\\\";s:9:\\\"\\u0000*\\u0000target\\\";s:4:\\\"main\\\";}\",\"batchId\":null},\"createdAt\":1777104245,\"delay\":null}', 0, NULL, 1777104245, 1777104245);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_04_19_102206_create_categories_table', 1),
(5, '2026_04_19_102343_create_products_table', 1),
(6, '2026_04_19_102458_create_motorcycle_models_table', 1),
(7, '2026_04_19_102504_create_product_motorcycle_table', 1),
(8, '2026_04_19_102620_create_product_specifications_table', 1),
(9, '2026_04_19_121845_add_technical_fields_to_products_and_pivot_table', 1),
(10, '2026_04_19_130105_add_technical_specs_to_products_table', 1),
(11, '2026_04_19_145120_create_dealers_table', 1),
(12, '2026_04_19_232108_create_product_images_table', 1),
(13, '2026_04_20_000401_add_gallery_to_products_table', 1),
(14, '2026_04_20_000001_create_website_settings_table', 2),
(15, '2026_04_20_000002_create_branches_table', 2),
(16, '2026_04_20_000003_create_social_media_table', 2),
(17, '2026_04_20_000004_add_maps_url_to_branches_table', 3),
(18, '2026_04_21_020556_create_web_contents_table', 4),
(19, '2026_04_21_093128_add_details_to_categories_table', 4),
(20, '2026_04_21_093131_add_part_number_to_products_table', 4),
(21, '2026_04_21_101421_add_extra_fields_to_categories_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `motorcycle_models`
--

CREATE TABLE `motorcycle_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `motorcycle_models`
--

INSERT INTO `motorcycle_models` (`id`, `brand`, `model_name`, `created_at`, `updated_at`) VALUES
(1, 'Yamaha', 'Jupiter Z', '2026-04-20 02:59:11', '2026-04-20 02:59:11'),
(2, 'Honda', 'Beat', '2026-04-20 02:59:11', '2026-04-20 02:59:11'),
(3, 'Yamaha', 'Xmax', '2026-04-20 02:59:11', '2026-04-20 02:59:11'),
(4, 'Honda', 'Vario', '2026-04-20 02:59:12', '2026-04-20 02:59:12'),
(5, 'Yamaha', 'Nmax', '2026-04-20 02:59:12', '2026-04-20 02:59:12'),
(6, 'Honda', 'CRF50', '2026-04-20 02:59:14', '2026-04-20 02:59:14'),
(7, 'Honda', 'Vario 150', '2026-04-20 02:59:15', '2026-04-20 02:59:15'),
(8, 'Yamaha', 'Vixion', '2026-04-20 02:59:16', '2026-04-20 02:59:16'),
(9, 'Honda', 'Supra X 125', '2026-04-20 02:59:16', '2026-04-20 02:59:16'),
(10, 'Honda', 'PCX 150', '2026-04-20 02:59:17', '2026-04-20 02:59:17'),
(11, 'Universal', 'Brembo 2P Bracket', '2026-04-20 02:59:17', '2026-04-20 02:59:17'),
(12, 'Universal', 'Brembo 4P Bracket', '2026-04-20 02:59:18', '2026-04-20 02:59:18'),
(13, 'Honda', 'Beat Fi', '2026-04-20 02:59:18', '2026-04-20 02:59:18'),
(14, 'Honda', 'Vario 125', '2026-04-20 02:59:18', '2026-04-20 02:59:18'),
(15, 'Honda', 'Vario 160', '2026-04-20 02:59:18', '2026-04-20 02:59:18'),
(16, 'Honda', 'Universal', '2026-04-20 02:59:18', '2026-04-20 02:59:18'),
(17, 'Yamaha', 'Universal', '2026-04-20 02:59:18', '2026-04-20 02:59:18'),
(18, 'Universal', '22mm Handlebar', '2026-04-20 02:59:19', '2026-04-20 02:59:19'),
(19, 'Honda', 'Beat Esp', '2026-04-20 02:59:21', '2026-04-20 02:59:21'),
(20, 'Yamaha', 'NMAX 155', '2026-04-20 02:59:21', '2026-04-20 02:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `features` text DEFAULT NULL,
  `technical_specs` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gallery`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sku`, `name`, `slug`, `description`, `features`, `technical_specs`, `image_path`, `gallery`, `created_at`, `updated_at`) VALUES
(21, 97, 'DVX-DR-PFKVL-Y-RXK-W', 'KAMPAS KOPLING RXKING', 'kampas-kopling-rxking', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/WrcfkSqRnfLrku7UBgNy4CI4CSPIfrk2UY0pJstm.jpg', '[]', '2026-04-22 22:30:49', '2026-04-22 22:30:49'),
(22, 97, 'DVX-DR-PFKVL-H-KEV', 'KAMPAS KOPLING SUPRA', 'kampas-kopling-supra', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/jXAfCJEKJBMAKkT1F8Et7ERkDi3zDMfQWCMl6vrN.jpg', '[]', '2026-04-22 22:42:42', '2026-04-22 22:45:09'),
(23, 97, 'D-DR-PFKVL-Y-VIXION-NEW', 'KAMPAS KOPLING VIXION NEW', 'kampas-kopling-vixion-new', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/9xlBNeYnp5SDASIeDWx6wqOhDlMymzCnUTILkpC0.jpg', '[]', '2026-04-22 22:43:57', '2026-04-22 22:50:20'),
(24, 97, 'D-DR-PFKVL-Y-SCORPIO', 'KAMPAS KOPLING', 'kampas-kopling', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/8QLjh3e1OzddTvElkHZDESdaJs3DXUQ3iEtZulws.jpg', '[]', '2026-04-22 23:02:23', '2026-04-22 23:02:23'),
(26, 96, 'DVX-E-SV-30%-H-BEAT', 'PER KLEP HONDA BEAT', 'per-klep-honda-beat', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/wWtSOoNisZzYqVtWfPnkDZ8CEho6ezFyHMZR2Mqh.jpg', '[]', '2026-04-22 23:04:02', '2026-04-22 23:04:02'),
(34, 97, 'D-DR-PFKVL-H-KPH', 'KAMPAS KOPLING  KHARISMA 125', 'kampas-kopling-kharisma-125', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/tBSi1InnqfOo1EgqLQE9oPrKQ7UmtYIQgkWAzNwl.jpg', '[]', '2026-04-22 23:21:21', '2026-04-22 23:21:42'),
(35, 97, 'D-DR-PFKVL-Y-1S7', 'KAMPAS KOPLING  MX 135 old', 'kampas-kopling-mx-135-old', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/z5svQlaQd2utjSbmxHs12J7Www3gLwQa51qxXxr0.jpg', '[]', '2026-04-22 23:31:01', '2026-04-22 23:31:01'),
(36, 96, 'DVX-E-SV-30%-H-TIGER', 'DVX PER KLEP TIGER', 'dvx-per-klep-tiger', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/RRGrHBkRDGBqfcw4g18kAqGt5qQT8bFCAIL9Wxmq.jpg', '[]', '2026-04-22 23:32:18', '2026-04-22 23:32:18'),
(37, 97, 'D-DR-PFKVL-Y-1WD', 'KAMPAS KOPLING R250', 'kampas-kopling-r250', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/6MMapG8zwqkk2Okj3yz98uYEJEaBHI8nHqJ2x3HA.jpg', '[]', '2026-04-22 23:32:33', '2026-04-22 23:32:33'),
(38, 97, 'D-DR-PFKVL-Y-21C', 'KAMPAS KOPLING BYSON/VIXION/SCORPION', 'kampas-kopling-bysonvixionscorpion', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/RuOu80l68OHSezxbHUZkh8wo7fANBRFXUHhCP494.jpg', '[]', '2026-04-22 23:34:35', '2026-04-22 23:34:35'),
(39, 97, 'D-DR-PFKVL-Y-45P', 'KAMPAS KOPLING R150', 'kampas-kopling-r150', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/xrAkQEZxjf2ZZm8snShOLVjE2ldoHZntWs9I7oiI.jpg', '[]', '2026-04-22 23:36:13', '2026-04-22 23:36:13'),
(40, 97, 'D-DR-PFKVL-Y-50C', 'KAMPAS KOPLING MX 5 SPEED', 'kampas-kopling-mx-5-speed', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/PjlTIA6QZWDAvOt6ZO0lp2UvJDcS5LTZenJXNzXS.jpg', '[]', '2026-04-22 23:40:20', '2026-04-22 23:40:20'),
(41, 96, 'DVX-E-SV-30%-H-CS1', 'DVX PER KLEP HONDA CS1', 'dvx-per-klep-honda-cs1', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/HddoXfhPQVh7kzuCDlPCndYg1n0EubuX1qi6xJHq.jpg', '[]', '2026-04-22 23:43:17', '2026-04-22 23:43:17'),
(42, 97, 'D-DR-PFKVL-H-166', 'KAMPAS KOPLING  GLPRO/MAX/100/NEOTECH', 'kampas-kopling-glpromax100neotech', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/nWDkzPIYcxVgJ3dVuXySz8VXCm3DlY2c6IcjfuLR.jpg', '[]', '2026-04-22 23:44:04', '2026-04-22 23:44:55'),
(44, 96, 'D-E-SV-30%-H-BLADE', 'DVX PER KLEP HONDA BLADE', 'dvx-per-klep-honda-blade', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/Dyh1XOAavsobUwgCFvudVJIVpSONUlhT2gvhRw4y.jpg', '[]', '2026-04-22 23:47:09', '2026-04-22 23:47:09'),
(45, 97, 'D-DR-PFKVL-Y-JUP-WIDE', 'KAMPAS KOPLING JUPITER WIDE', 'kampas-kopling-jupiter-wide', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/QIyATuxbbWPQuz4UDel3jznlHBF9rSUxcvsmyfOc.jpg', '[]', '2026-04-22 23:47:30', '2026-04-22 23:47:30'),
(46, 96, 'DVX-E-SV-30%-H-VARIO', 'DVX PER KLEP HONDA VARIO', 'dvx-per-klep-honda-vario', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/vyGlqaS6NsDjeFLOBt7i1wQe7zEOzoktJXdf8WkZ.jpg', '[]', '2026-04-22 23:49:44', '2026-04-22 23:49:44'),
(47, 96, 'DVX-E-SV-30%-K-KLX150', 'DVX PER KLEP KAWASAKI KLX150', 'dvx-per-klep-kawasaki-klx150', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/X2psP9uJwwRx5c3LAsdzMWGjpCgBnLyt4rUwp7tB.jpg', '[]', '2026-04-23 00:07:24', '2026-04-23 00:14:19'),
(48, 96, 'DVX-E-SV-30%-K-N250', 'DVX PER KLEP KAWASAKI NINJA 250', 'dvx-per-klep-kawasaki-ninja-250', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/7iCdaspCJKiQEKa36M7PDYrHGHa15JPM86KVLuB4.jpg', '[]', '2026-04-23 00:13:04', '2026-04-23 00:13:04'),
(49, 96, 'DVX-E-SV-30%-S-FU150', 'DVX PER KLEP SUZUKI SATRIA FU150', 'dvx-per-klep-suzuki-satria-fu150', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/vV2TCETC1L3hNmnwFQ8PUJ1DW1zQOz2NOKIhlkJP.jpg', '[]', '2026-04-23 00:15:59', '2026-04-23 00:15:59'),
(50, 96, 'DVX-E-SV-30%-JUP-MX', 'DVX PER KLEP YAMAHA JUP-MX', 'dvx-per-klep-yamaha-jup-mx', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/vGyxREnGPwlOoA75ZKXya3amEUtiUAyC3n70AUlx.jpg', '[]', '2026-04-23 00:17:53', '2026-04-23 00:17:53'),
(52, 97, 'D-DR-PFKVL-Y-MX150', 'KAMPAS KOPLING  MX150', 'kampas-kopling-mx150', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/pEVQiAcdyZe7E6waA6MdbHkQy8j5c1Ozr8PaEPRF.jpg', '[]', '2026-04-23 00:22:02', '2026-04-23 00:22:02'),
(53, 97, 'D-DR-PFKVL-S-FR80RC', 'KAMPAS KOPLING FR80/F1ZR/F1Z/FORCE1', 'kampas-kopling-fr80f1zrf1zforce1', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/Y8BHJURteNm5290uTmbO6rJCBR8UBPCVoE2Pqwol.jpg', '[]', '2026-04-23 00:23:53', '2026-04-23 00:23:53'),
(54, 97, 'D-DR-PFKVL-F150', 'KAMPAS KOPLING FU150', 'kampas-kopling-fu150', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/LMKcI871NyQfYWfZY7m76gLKvgdN2xWDsJhqzTh3.jpg', '[]', '2026-04-23 00:24:56', '2026-04-23 00:24:56'),
(55, 96, 'DVX-E-SV-30%-Y-SCORPIO', 'DVX PER KLEP YAMAHA  SCORPIO', 'dvx-per-klep-yamaha-scorpio', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/C3DHDYDKmKCf1gj0TK8MijOydFtswwgRJInPqg9E.jpg', '[]', '2026-04-23 00:25:14', '2026-04-23 00:25:14'),
(56, 96, 'DVX-E-SV-30%-Y-VIXION', 'DVX PER KLEP YAMAHA VIXION', 'dvx-per-klep-yamaha-vixion', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/HJ1sFSlmVsMa7iRf339YqSUNLTh0QZnDNdzC9lqO.jpg', '[]', '2026-04-23 00:26:10', '2026-04-23 00:28:05'),
(57, 97, 'D-DR-PFKVL-S-SATRIA', 'KAMPAS KOPLING SATRIA RU120', 'kampas-kopling-satria-ru120', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/kZ8A8v8UuCOGFQaqXzi4latyvwtd7BQraypEZ7K6.jpg', '[]', '2026-04-23 00:26:42', '2026-04-23 00:26:42'),
(58, 97, 'D-DR-PFKVL-S-SHOGUN', 'KAMPAS KOPLING SHOGUN110', 'kampas-kopling-shogun110', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/9dlttFEKBE0e0sPbNpZAYMc8Kdy3R8S7H9mDb6pa.jpg', '[]', '2026-04-23 00:27:29', '2026-04-23 00:27:29'),
(59, 97, 'D-DR-PFKVL-S-SMASH', 'KAMPAS KOPLING SMASH/SHOGUN125', 'kampas-kopling-smashshogun125', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/EkKUNKunEz3qrr6Viee9s5UQIOhZraXstrBXoo2w.jpg', '[]', '2026-04-23 00:28:52', '2026-04-23 00:28:52'),
(60, 97, 'D-DR-PFKVL-K-NIN150', 'KAMPAS KOPLING NINJA KRR150/KR150', 'kampas-kopling-ninja-krr150kr150', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/qNfm0jIQkxaisjpb2HJRFRU7RWsZRFeBBwxiFH1V.jpg', '[]', '2026-04-23 00:30:55', '2026-04-23 00:30:55'),
(61, 96, 'DVX-E-SV-30%-Y-42914', 'DVX PER KLEP YAMAHA VEGA  SET RETAINER', 'dvx-per-klep-yamaha-vega-set-retainer', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/8RziwbKfy5XAKBXju2sHUooEf097abQ02IToEuAN.jpg', '[]', '2026-04-23 00:31:46', '2026-04-23 00:31:46'),
(62, 96, 'DVX-E-SV-RACE -84238', 'DVX PER KLEP YAMAHA MIO JUP +48%', 'dvx-per-klep-yamaha-mio-jup-48', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/GAmHd8pO5Qdn1HJprfXaH7M6n0LNcKz4eM566oHW.jpg', '[]', '2026-04-23 00:34:47', '2026-04-23 00:34:47'),
(63, 97, 'D-DR-PFKVL-K-N250', 'KAMPAS KOPLING NINJA N250', 'kampas-kopling-ninja-n250', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 00:37:21', '2026-04-23 00:37:21'),
(64, 96, 'DVX-E-SV-RACE-84239+63%', 'DVX PER KLEP YAMAHA MIO JUP + 65%', 'dvx-per-klep-yamaha-mio-jup-65', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/qwN5wPxbf1eiapsborMlUX5QtxFvZFiFt5Op9nnT.jpg', '[]', '2026-04-23 00:37:22', '2026-04-23 00:37:22'),
(65, 96, 'DVX-E-SV-RACE-84240', 'DVX PER KLEP YAMAHA MIO JUP + 72.4%', 'dvx-per-klep-yamaha-mio-jup-724', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/05Ucv9GFMayBTrZ48VYudqRFRQTjpyZJJIiuup9B.jpg', '[]', '2026-04-23 00:40:05', '2026-04-23 00:40:05'),
(66, 96, 'DVX-E-SV-RACE-84174', 'DVX PER KLEP SUZUKI SMASH LIFT 7,5MM', 'dvx-per-klep-suzuki-smash-lift-75mm', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/tq5bnVjf0gUSbDPunpDV9p2EcHDBIEpcQK688Tzb.jpg', '[]', '2026-04-23 00:44:54', '2026-04-23 00:44:54'),
(67, 96, 'DVX-E-S-V-RACE-ATK31', 'DVX PER KLEP MIO JUP ATUKAGAWA 31', 'dvx-per-klep-mio-jup-atukagawa-31', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/RE1s54h0vkqw1aP15P8RYdrjxgvNqACxgcAUSc2g.jpg', '[]', '2026-04-23 00:52:21', '2026-04-23 00:52:21'),
(68, 97, 'D-DR-PFKVL-H-K56', 'KAMPAS KOPLING CBR150-SONIC', 'kampas-kopling-cbr150-sonic', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/5kM3grmt9H5IUyiYG3HFd3b9L37v8oP9j1tC2sD5.jpg', '[]', '2026-04-23 00:58:28', '2026-04-23 00:58:28'),
(69, 97, 'D-DR-PFKVL-H-KWB', 'KAMPAS KOPLING BLADE', 'kampas-kopling-blade', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/MesmM6W2Ntz4aSmNRhRHEEiGL3JHx5PTFCebUgFg.jpg', '[]', '2026-04-23 01:02:10', '2026-04-23 01:02:10'),
(70, 97, 'D-DR-PFKVL-H-KWW', 'KAMPAS KOPLING REVO ABSOLUTE', 'kampas-kopling-revo-absolute', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/Dfip5IBkWFYNtj1m5waHyUh9g7DSpY794kSAq4ds.jpg', '[]', '2026-04-23 01:09:46', '2026-04-23 01:09:46'),
(71, 97, 'D-DR-PFKVL-H-KGH', 'KAMPAS KOPLING CS1', 'kampas-kopling-cs1', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/GCTen2hIDlJKdwQeIOVXhOZMaHma5NIDGXfcYCAD.jpg', '[]', '2026-04-23 01:13:43', '2026-04-23 01:13:43'),
(72, 95, 'DVX-DR-PFSPR-H-CBR150', 'DVX PER KOPLING HONDA -CBR150', 'dvx-per-kopling-honda-cbr150', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/5YtljdVeNrlt8OOWpAkmrQtuIJHjKNLP0ZxkSYJV.jpg', '[]', '2026-04-23 01:15:54', '2026-04-23 01:15:54'),
(73, 95, 'DVX-DR-PFSPR-H-CRF150', 'DVX PER KOPLING HONDA CRF150 VERZA', 'dvx-per-kopling-honda-crf150-verza', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/FT3eMN0x8VTIPFCHTARE6nSQ1GUyp5sFHVyNdgSP.jpg', '[]', '2026-04-23 01:17:37', '2026-04-23 01:17:37'),
(74, 95, 'DVX-DR-PFSPR-H-CS1', 'DVX PER KOPLING HONDA CS1', 'dvx-per-kopling-honda-cs1', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/eBPGPD1koXCPuSecjGU6gvjX8d8wwZmRCiUWD7CF.jpg', '[]', '2026-04-23 01:19:31', '2026-04-23 01:19:31'),
(75, 95, 'DVX-DR-PFSPR-H-KARISMA', 'DVX PER KOPLING HONDA KARISMA X125', 'dvx-per-kopling-honda-karisma-x125', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/yA7DMxuYEQIzEC7xnfMzHTwIje1PaSVgmEkPKlsv.jpg', '[]', '2026-04-23 01:21:21', '2026-04-23 01:21:21'),
(76, 97, 'DVX-DR-PFSPR-H-SONIC', 'DVX PER KOPLING HONDA -SONIC', 'dvx-per-kopling-honda-sonic', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/6GBNR73aLIcK1r4vAsKZugCE50dFAavw1K0MTuCa.jpg', '[]', '2026-04-23 01:25:20', '2026-04-23 01:25:20'),
(77, 97, 'D-DR-PFKVL-H-KPM', 'KAMPAS KOPLING CRF150/250', 'kampas-kopling-crf150250', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/HTivOlmvZEtR5LTJ9bU9gwCapdlyxM7AxM20rlqS.jpg', '[]', '2026-04-23 01:26:11', '2026-04-23 01:26:11'),
(78, 95, 'DVX-DR-PFSPR-H-SUPRA', 'DVX PER KOPLING HONDA -SUPRA', 'dvx-per-kopling-honda-supra', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/H7SY7A00fTU7JOXlA9F9PMlT0ozztFElBaI2XCsd.jpg', '[]', '2026-04-23 01:26:34', '2026-04-23 01:26:34'),
(79, 97, 'D-DR-PFKVL-H-TIGER', 'KAMPAS KOPLING TIGER', 'kampas-kopling-tiger', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/IFJ8ZtLOiCYFyPgwBV9ZkRJyMN9RtS1WdLHz8fcL.jpg', '[]', '2026-04-23 01:27:00', '2026-04-23 01:27:00'),
(80, 97, 'D-DR-PFKVL-H-NSR150', 'KAMPAS KOPLING NSR250', 'kampas-kopling-nsr250', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/6qHKrYQJeHm9CKRLIdFO8b6K4crLNDkyoK9Nd4TI.jpg', '[]', '2026-04-23 01:28:25', '2026-04-23 01:28:25'),
(81, 95, 'DVX-DR-PFSPR-H-TIGER', 'DVX PER KOPLING HONDA TIGER', 'dvx-per-kopling-honda-tiger', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/jMSFnd8TWsAzkTVfX1ZNpnBukyZlFIsEYZ6qrM65.jpg', '[]', '2026-04-23 01:29:16', '2026-04-23 01:29:16'),
(82, 95, 'DVX-DR-PFSPR-K-KLX150', 'DVX PER KOPLING KAWASAKI KLX150', 'dvx-per-kopling-kawasaki-klx150', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/2K8aQo938Hea9chesd5zjJTzdV8t05X0bJjsig44.jpg', '[]', '2026-04-23 01:30:32', '2026-04-23 01:30:32'),
(83, 95, 'DVX-DR-PFSPR-K-KRR150', 'DVX PER KOPLING KAWASAKI KRR150', 'dvx-per-kopling-kawasaki-krr150', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/0FcVOxyicmbR1QJtADt4PfeoOIOvI5JeeeCGGjPP.jpg', '[]', '2026-04-23 01:34:05', '2026-04-23 01:34:05'),
(84, 95, 'DVX-DR-PFSPR-K-N250R', 'DVX PER KOPLING KAWASAKI N250R', 'dvx-per-kopling-kawasaki-n250r', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/jOcMD2R7p471SOyb7Lk6gnCUqbJ0E460oLYMtlRp.jpg', '[]', '2026-04-23 01:36:28', '2026-04-23 01:36:28'),
(85, 95, 'DVX-DR-PFSPR-S-FU150', 'DVX PER KOPLING SUZUKI FU150 /5', 'dvx-per-kopling-suzuki-fu150-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/Y4ukFrtcBbPsKop4mYBGRti1ykTbm4E6qhwfQEMK.jpg', '[]', '2026-04-23 01:39:36', '2026-04-23 01:39:36'),
(86, 95, 'DVX-DR-PFSPR-S-RU120', 'DVX PER KOPLING SUZUKI RU120 /5', 'dvx-per-kopling-suzuki-ru120-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/mGioOsx8N6PMgKtXuIVbFsb7ZDSSjuUCHh1hjFag.jpg', '[]', '2026-04-23 02:21:00', '2026-04-23 02:21:00'),
(87, 95, 'DVX-DR-PFSPR-S-SMAH', 'DVX PER KOPLING SUZUKI SMASH', 'dvx-per-kopling-suzuki-smash', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/Yf45GsRbQAwaCJCrKcV1VCwgpstoVmwh6YWmab7j.jpg', '[]', '2026-04-23 02:24:34', '2026-04-23 02:24:34'),
(88, 95, 'DVX-DR-PFSPR-S-THUNDER125', 'DVX PER KOPLING SUZUKI THUNDER', 'dvx-per-kopling-suzuki-thunder', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/T5MTuRcYVEHYFcxHjOlhcwVqS7xIIsqsgxShZecD.jpg', '[]', '2026-04-23 02:28:58', '2026-04-23 02:28:58'),
(89, 95, 'DVX-DR-PFSPR-Y-BYSON', 'DVX PER KOPLING YAMAHA BYSON', 'dvx-per-kopling-yamaha-byson', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/tLVKUcGsczMgq5yAlgdCOONOiM4USEF21ivjeLVB.jpg', '[]', '2026-04-23 02:32:27', '2026-04-23 02:32:27'),
(90, 97, 'DVX-DR-PFSPR-Y-JUP-Z', 'DVX PER KOPLING YAMAHA JUP-Z', 'dvx-per-kopling-yamaha-jup-z', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/iWsiuwwxQeuPNfUgf7XAEztqUEN1IfzQ2LDjoMFT.jpg', '[]', '2026-04-23 02:34:00', '2026-04-23 02:34:00'),
(91, 95, 'DVX-DR-PFSPR-Y-MX', 'DVX PER KOPLING YAMAHA MX 135', 'dvx-per-kopling-yamaha-mx-135', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/iJysFfEoPNvqOQPLpwYRSCALbcdYFNeSzSwqzwsc.jpg', '[]', '2026-04-23 02:36:05', '2026-04-23 02:36:05'),
(92, 95, 'DVX-DR-PFSPR-Y-MX150', 'DVX PER KOPLING YAMAHA MX 150', 'dvx-per-kopling-yamaha-mx-150', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/VJZG7TLbiGREtaHxWAkErJBQAIPcMWTVicssU4XN.jpg', '[]', '2026-04-23 02:37:46', '2026-04-23 02:37:46'),
(93, 95, 'DVX-DR-PFSPR-Y-RXKING', 'DVX PER KOPLING YAMAHA RXKING', 'dvx-per-kopling-yamaha-rxking', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/2o6ua5FDnyTg7wvyMiMhEVaP8aH8XZq3ot90nxiW.jpg', '[]', '2026-04-23 02:42:18', '2026-04-23 02:42:18'),
(94, 95, 'DVX-DR-PFSPR-Y-SCORPIO', 'DVX PER KOPLING YAMAHA SCORPIO', 'dvx-per-kopling-yamaha-scorpio', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/7wSlT24Bt0QwmlargC6Ro6ELujjXZlXqGvUKhFiz.jpg', '[]', '2026-04-23 02:43:35', '2026-04-23 02:43:35'),
(95, 95, 'DVX-DR-PFSPR-Y-VIXION', 'DVX PER KOPLING YAMAHA VIXION', 'dvx-per-kopling-yamaha-vixion', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/86DUgoXHLwTvuzAvPsBiSi62MQruUpbxwMPCDdQK.jpg', '[]', '2026-04-23 02:44:52', '2026-04-23 02:44:52'),
(96, 93, 'VX-DTN-28X72X18-C3-C5', 'BEARINGS  28X72X18C3-C5', 'bearings-28x72x18c3-c5', NULL, 'TIGER', '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/O3tf4jzVgWBoVVdFg8owudTTnwQWU78TBjaoLiq0.png', '[]', '2026-04-23 02:45:20', '2026-04-23 22:57:49'),
(97, 93, 'VX-BR-DTN-6205C3-C5', 'BEARINGS 6205C3-C5', 'bearings-6205c3-c5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/s6K39BZ3CGIYW2DPiMU6l45qW8RcXXn1FB1QYuHD.png', '[]', '2026-04-23 02:47:40', '2026-04-23 22:56:25'),
(98, 93, 'VX-BR-DTN-6304C3-C5', 'BEARING 6304C3-C5', 'bearing-6304c3-c5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 02:49:55', '2026-04-23 02:49:55'),
(99, 93, 'VX-BR-DTN-28-68-18C3-C5', 'BEARING 28X68X18C3-C5', 'bearing-28x68x18c3-c5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 02:51:21', '2026-04-23 22:57:10'),
(100, 93, 'VX-DTN-6007-C3-C5', 'BEARING 6007C3-C5', 'bearing-6007c3-c5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 22:48:32', '2026-04-23 22:49:09'),
(101, 93, 'VX-DTN-6305C3-C5', 'BEARING  6305C3-C5', 'bearing-6305c3-c5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 22:50:35', '2026-04-23 22:56:47'),
(102, 93, 'VX-DTN-6322C3-C5/15mm', 'BEARING 63/22C3-C5/15mm', 'bearing-6322c3-c515mm', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 22:51:47', '2026-04-23 22:54:11'),
(103, 93, 'VX-DTN-6322C3-C5/16mm', 'BEARING 63/22C3-C5/16mm', 'bearing-6322c3-c516mm', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 22:53:16', '2026-04-23 22:53:16'),
(104, 93, 'VX-DTN-63/28/18C3-C5', 'BEARING-63/28C3-C518mm', 'bearing-6328c3-c518mm', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:00:48', '2026-04-23 23:03:45'),
(105, 99, 'DVX-14101-Y-2JG', 'CARBURATOR 2JG', 'carburator-2jg', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:06:33', '2026-04-23 23:06:33'),
(106, 91, 'DVX-E-14710-H-GN5-GF6', 'KLEP IN & EX SUPRA 20/3/66', 'klep-in-ex-supra-20366', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/XUJjxA1MvNQdZ4FfJNAOgZcgtROB5kMTPP0pSeaY.jpg', '[]', '2026-04-23 23:41:48', '2026-04-23 23:43:38'),
(109, 91, 'DVX-E-14710-Y-4ST4GL', 'KLEP IN & EX VEGA/JUPITER/CRYPTON', 'klep-in-ex-vegajupitercrypton', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/FczMMuZMKYGQ2UKo7T2GVbnZTprp0reU9VdoqIWT.jpg', '[]', '2026-04-23 23:43:02', '2026-04-23 23:43:53'),
(110, 91, 'DVX-E-14710-Y-54P-54P', 'KLEP IN & EX MIO/MIO SPORTY/NOUVO', 'klep-in-ex-miomio-sportynouvo', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/LJMPOoDGap7h0VZ56FHetTZM3wNbIwBTicAu2CMk.jpg', '[]', '2026-04-23 23:45:03', '2026-04-23 23:45:03'),
(111, 91, 'D-E-14710R-21/24/65', 'KLEP IN & EX 21/24-65-5', 'klep-in-ex-2124-65-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:48:18', '2026-04-23 23:48:18'),
(112, 91, 'D-E-14710R-22/25/65', 'KLEP IN & EX 22/25-65-5', 'klep-in-ex-2225-65-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:50:55', '2026-04-23 23:50:55'),
(113, 91, 'D-E-14710R-22/25/72', 'KLEP IN & EX 22/25-72-5', 'klep-in-ex-2225-72-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:51:37', '2026-04-23 23:51:37'),
(114, 91, 'D-E-14710R-23.5/27.5/65', 'KLEP IN & EX 23.5/27.5-65-5', 'klep-in-ex-235275-65-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:52:23', '2026-04-23 23:52:23'),
(115, 91, 'D-E-14710R-23/26/65', 'KLEP IN & EX 23/26-65-5', 'klep-in-ex-2326-65-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:52:48', '2026-04-23 23:52:48'),
(116, 91, 'D-E-14710R-23/26/67', 'KLEP IN & EX 23/26-67-5', 'klep-in-ex-2326-67-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:53:19', '2026-04-23 23:53:19'),
(117, 91, 'D-E-14710R-23/26/72', 'KLEP IN & EX 23/26-72-5', 'klep-in-ex-2326-72-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:54:13', '2026-04-23 23:54:13'),
(118, 91, 'D-E-14710R-23/28/65', 'KLEP IN & EX 23/28-65-5', 'klep-in-ex-2328-65-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:55:01', '2026-04-23 23:55:01'),
(119, 91, 'D-E-14710R-23/28/67', 'KLEP IN & EX 23/28-67-5', 'klep-in-ex-2328-67-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:56:13', '2026-04-23 23:56:13'),
(120, 91, 'D-E-14710R-24/27.5/65', 'KLEP IN & EX 24/27.5-65-5', 'klep-in-ex-24275-65-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:57:19', '2026-04-23 23:57:19'),
(121, 91, 'D-E-14710R-24/27/72', 'KLEP IN & EX 24/27-72-5', 'klep-in-ex-2427-72-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:57:52', '2026-04-23 23:57:52'),
(122, 91, 'D-E-14710R-24/28/65', 'KLEP IN & EX 24/28-65-5', 'klep-in-ex-2428-65-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-23 23:58:31', '2026-04-23 23:58:31'),
(123, 91, 'D-E-14710R-24/28/67', 'KLEP IN & EX 24/28-67-5', 'klep-in-ex-2428-67-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 00:00:08', '2026-04-24 00:00:08'),
(124, 91, 'D-E-14710R-24/28/72', 'KLEP IN & EX 24/28-72-5', 'klep-in-ex-2428-72-5', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 00:00:44', '2026-04-24 00:00:44'),
(128, 91, 'D-E-14710R-H-KPH+1MM', 'KLEP IN & EX 22/25-72-5+1mm', 'klep-in-ex-2225-72-51mm', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 00:05:07', '2026-04-24 00:05:07'),
(129, 91, 'D-E-14710R-H-KPH+2MM', 'KLEP IN & EX 26/26-72-5+2mm', 'klep-in-ex-2626-72-52mm', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 00:05:37', '2026-04-24 00:05:37'),
(130, 91, 'D-E-14710R-Y-5TN+1MM', 'KLEP IN & EX 21/24-65-4.5+1mm', 'klep-in-ex-2124-65-451mm', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 00:06:23', '2026-04-24 00:06:23'),
(131, 91, 'D-E-14710R-Y-5TN+2MM', 'KLEP IN & EX 22/25-65-4.5+2mm', 'klep-in-ex-2225-65-452mm', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 00:07:08', '2026-04-24 00:07:08'),
(132, 37, 'DVX-WR3-151206', 'ROLLER 151206', 'roller-151206', '6gram', 'mio-5tl-5p4', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/mcWyAACirxbyt1Zq5eqza5cEg2qeYFHWstuOQ37l.jpg', '[]', '2026-04-24 00:44:14', '2026-04-24 01:07:18'),
(133, 37, 'DVX-WR3-151207', 'ROLLER 151207', 'roller-151207', '7gram', 'mio-5tl-5p4', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/Smzqde682SJaaJuYFZ3Kt30Tf4Hx69ghiSmen76a.jpg', '[]', '2026-04-24 01:04:44', '2026-04-24 01:09:26'),
(134, 37, 'DVX-WR3-151208', 'ROLLER 151208', 'roller-151208', '8gram', 'mio-5tl-5p4', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/0rE2alep84kk2G5HMmrujfuRCqCvAFqP3jk9XFun.jpg', '[]', '2026-04-24 01:10:50', '2026-04-24 01:11:15'),
(135, 37, 'DVX-WR3-151209', 'ROLLER 151209', 'roller-151209', '9gram', 'mio-5tl-5p4', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/8Oiwsuons4cTblDr0y1auqaIW2DdwqSAvBCPcFsw.jpg', '[]', '2026-04-24 01:12:49', '2026-04-24 01:12:49'),
(136, 37, 'DVX-WR3-151210', 'ROLLER 151210', 'roller-151210', '10gram', 'DVX-WR3-151210', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/R6XhTxxTrKkAbvL9bNndRB4OpsJZQRE6YUxIAM6N.jpg', '[]', '2026-04-24 01:13:40', '2026-04-24 01:13:40'),
(137, 37, 'DVX-WR3-151211', 'ROLLER 151211', 'roller-151211', '11gram', 'mio-5tl-5p4', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/L5L1Ks9yAn9x4VvWRWD6Q5qhg7Ew753kN0l6f8Gp.jpg', '[]', '2026-04-24 01:15:15', '2026-04-24 01:15:15'),
(138, 37, 'DVX-WR3-151212', 'ROLLER 151212', 'roller-151212', '12gram', 'MIO 5P4', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/FwWya4QK298lPEzFns1V9ZpzK3vr6cBdjKI5iBZX.jpg', '[]', '2026-04-24 01:15:57', '2026-04-24 01:15:57'),
(139, 37, 'DVX-WR3-151213', 'ROLLER 151213', 'roller-151213', '13gram', 'MIO 5P4', '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 01:17:53', '2026-04-24 01:17:53'),
(140, 37, 'DVX-WR3-161307', 'ROLLER 161307', 'roller-161307', '7gram', 'scoopy CARB-kvy-beatCARB', '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 01:21:32', '2026-04-24 01:21:32'),
(141, 37, 'DVX-WR3-161308', 'ROLLER 161308', 'roller-161308', '8gram', 'scoopy CARB-kvy-beatCARB', '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 01:22:37', '2026-04-24 01:22:37'),
(142, 37, 'DVX-WR3-161309', 'ROLLER 161309', 'roller-161309', '9gram', 'BEAT CARBU  KVY\r\nSCOOPI CARBU', '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 01:28:13', '2026-04-24 01:28:13'),
(143, 37, 'DVX-WR3-161310', 'ROLLER 161310', 'roller-161310', '10gram', 'scoopyCARB-beatCARB-KVY', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/lnRPQzrBLg1dMArvOuyzAcwTuzQEv56MXy8IaO1O.jpg', '[]', '2026-04-24 01:39:55', '2026-04-24 01:39:55'),
(144, 37, 'DVX-WR3-161311', 'ROLLER 161311', 'roller-161311', '11gram', 'scoopyCARB-beatCARB-KVY', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 01:41:52', '2026-04-24 01:41:52'),
(145, 37, 'DVX-WR3-161312', 'ROLLER 161312', 'roller-161312', '12gram', 'scoopyCARB-beatCARB-KVY', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/8RzgzQiEpOzSUkA3pAXP1B8NlOGu7FgW5fettkGC.jpg', '[]', '2026-04-24 01:43:24', '2026-04-24 01:43:24'),
(146, 37, 'DVX-WR3-161313', 'ROLLER 161313', 'roller-161313', '13gram', 'scoopyCARB-beatCARB-KVY', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/ftRc8L71FxZnQievynRlulDjs4aOPSbIwjTyYH2I.jpg', '[]', '2026-04-24 01:44:17', '2026-04-24 01:44:17'),
(147, 37, 'DVX-WR3-161314', 'ROLLER 161314', 'roller-161314', '14gram', 'scoopyCARB-beatCARB-KVY', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/dR4WLc7OcQpBrmOL4GUvdoVa2XVFkfOBuXmispc2.jpg', '[]', '2026-04-24 01:44:56', '2026-04-24 01:44:56'),
(148, 37, 'DVX-WR3-161315', 'ROLLER 161315', 'roller-161315', '15gram', 'scoopyCARB-beatCARB-KVY', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/OtxoHB0hWPWICLPz8xQTK0Py7oUqnVjqb0DNZCBu.jpg', '[]', '2026-04-24 01:47:45', '2026-04-24 01:47:45'),
(149, 37, 'DVX-WR3-161316', 'ROLLER 161316', 'roller-161316', '16gram', 'scoopyCARB-beatCARB-KVY', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 02:11:55', '2026-04-24 02:11:55'),
(150, 37, 'DVX-WR3-181407', 'ROLLER 181407', 'roller-181407', '7gram', 'vario110-varioESP-beatFi-scoopyFi-KVB', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/R7hb2IcXKbmoDlvyDTdSXY7euhdruUawLMnRdwau.jpg', '[]', '2026-04-24 02:18:23', '2026-04-24 02:18:23'),
(151, 37, 'DVX-WR3-181408', 'ROLLER 181408', 'roller-181408', '8gram', 'vario110-varioESP-beatFi-scoopyFi-KVB', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/SmbzoepoarKJo235NuLvan6F3mhL7renNxSOj04T.jpg', '[]', '2026-04-24 02:20:39', '2026-04-24 02:20:39'),
(152, 37, 'DVX-WR3-181409', 'ROLLER 181409', 'roller-181409', '9gram', 'vario110-varioESP-beatFi-scoopyFi-KVB', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/Aahi8uewgI2kMGRmjxpX80LQyi3U4hozttAgkEvs.jpg', '[]', '2026-04-24 02:24:09', '2026-04-24 02:24:09'),
(153, 37, 'DVX-WR3-181410', 'ROLLER 181410', 'roller-181410', '10gram', 'vario110-varioESP-beatFi-scoopyFi-KVB', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/ubxYw1J6zQhQBLCfEVbTtofVmZSbNqqum9FLvjgG.jpg', '[]', '2026-04-24 02:25:22', '2026-04-24 02:25:22'),
(154, 37, 'DVX-WR3-181411', 'ROLLER 181411', 'roller-181411', '11gram', 'vario110-varioESP-beatFi-scoopyFi-KVB', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', 'temp/q7iqF0pJyuzmjvNF1937vjuNkF2cEviS41frqdvU.jpg', '[]', '2026-04-24 02:26:03', '2026-04-24 02:26:03'),
(155, 37, 'DVX-WR3-181412', 'ROLLER 181412', 'roller-181412', '12gram', 'vario110-varioESP-beatFi-scoopyFi-KVB', '{\"type\":\"grid\",\"headers\":[\"Property\",\"35000\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 02:28:51', '2026-04-24 02:28:51'),
(156, 34, 'DVX-SUS', 'SKOK BELAKANG', 'skok-belakang', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 19:37:39', '2026-04-24 19:37:39'),
(157, 35, 'DVX-H5540', 'CDI INJECTION', 'cdi-injection', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', NULL, '[]', '2026-04-24 19:40:17', '2026-04-24 19:40:17'),
(158, 34, 'DVX-RG415-Y-', 'DVX GEAR BELAKANG JUPITERZ RXK F1Z', 'dvx-gear-belakang-jupiterz-rxk-f1z', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/q1DibGunJ9kiT071sP4VSFhqdUF5V9sMHdQ0Wxdj.jpg', '[]', '2026-04-24 20:04:02', '2026-04-24 20:04:02'),
(159, 34, 'DVX-RG-Y-5TP-35T SD 43T', 'GEAR BLK  428  JUPITERZ F1Z RXK', 'gear-blk-428-jupiterz-f1z-rxk', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"Value\"],\"rows\":[[\"\",\"\"]]}', 'temp/YfClIsyfcuCPPpEsEtYXMIm4yr2BbZhfnTE3xqno.jpg', '[]', '2026-04-24 20:14:13', '2026-04-24 20:14:13'),
(160, 35, 'DVX-H2310RACING-HND', 'COIL HONDA', 'coil-honda', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"145000\"],\"rows\":[[\"\",\"\"]]}', 'temp/Dxdjl47wAYzeLl60mRkvzE38WhUPvHEo0xbNyCdX.jpg', '[]', '2026-04-24 22:49:11', '2026-04-24 22:53:00'),
(162, 35, 'DVX-H2310RACING-YMH', 'COIL YAMAHA', 'coil-yamaha', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"145000\"],\"rows\":[[\"\",\"\"]]}', 'temp/Fu36TnHNtpTvyIqYSS7OlL1aDLYTmvIZWTnoOK3w.jpg', '[]', '2026-04-24 22:52:35', '2026-04-24 22:52:35'),
(163, 37, 'DVX-22535-H-KVY', 'CLUTCH SHOE KVY', 'clutch-shoe-kvy', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"160000\"],\"rows\":[[\"\",\"\"]]}', 'temp/BoY1ESUJgtLMfWZQR9pDEIs0a62nXZ7MyZPXlQhy.jpg', '[]', '2026-04-24 23:09:42', '2026-04-24 23:11:28'),
(164, 37, 'DVX-22535-H-K16-A40', 'CLUTCH SHOE K16-A40', 'clutch-shoe-k16-a40', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"205000\"],\"rows\":[[\"\",\"\"]]}', 'temp/TQO9fbxlGvu2liOZNl03fxs9RE7vbZw2yUgpWXLA.jpg', '[]', '2026-04-24 23:11:10', '2026-04-24 23:11:10'),
(165, 37, 'DVX-22535-H-K44', 'CLUTCH SHOE K44', 'clutch-shoe-k44', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"150000\"],\"rows\":[[\"\",\"\"]]}', 'temp/Gl5SBqj1HVb424Ye0VoWAvB8aq8YTCsNz3LQf0xV.jpg', '[]', '2026-04-24 23:12:14', '2026-04-24 23:12:14'),
(166, 37, 'DVX-22535-Y-2DP', 'CLUTCH SHOE 2DP-KWN', 'clutch-shoe-2dp-kwn', NULL, NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"216000\"],\"rows\":[[\"\",\"\"]]}', 'temp/3bYEOX7dOrVt58YrS2VHJqM6Oub6vp2JLVqNDwpr.jpg', '[]', '2026-04-24 23:13:28', '2026-04-24 23:13:28'),
(167, 37, 'DVX-CVT-4800', 'PER CVT  beat/Fi-scoopy/Fi-vario110', 'per-cvt-beatfi-scoopyfi-vario110', '1000rpm', NULL, '{\"type\":\"grid\",\"headers\":[\"PropertyValue\",\"69000\"],\"rows\":[[\"\",\"\"]]}', 'temp/LjX7CkpINgwSSTJkVuKpystbIsY4QYpUNcW69yFJ.jpg', '[]', '2026-04-24 23:51:17', '2026-04-24 23:55:49'),
(169, 37, 'DVX-CVT-4801', 'PER CVT  beat/Fi-scoopy/Fi-vario110 1500rpm', 'per-cvt-beatfi-scoopyfi-vario110-1500rpm', '1500rpm', NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"69000\"],\"rows\":[[\"\",\"\"]]}', 'temp/kkDpU1WPiPUA59LqicoYbKLJ2ITeYHSbbSPTGwiS.jpg', '[]', '2026-04-24 23:56:49', '2026-04-24 23:56:49'),
(170, 37, 'DVX-CVT-4802', 'PER CVT  beat/Fi-scoopy/Fi-vario110 2000rpm', 'per-cvt-beatfi-scoopyfi-vario110-2000rpm', '2000rpm', NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"69000\"],\"rows\":[[\"\",\"\"]]}', 'temp/2p8pgxQBsLIq7r3EYJYKPl2UJcFh5mpWwnkui8QR.jpg', '[]', '2026-04-24 23:58:16', '2026-04-24 23:58:16'),
(171, 37, 'DVX-CVT-4803', 'PER CVT  mio-5tl-fino 1500rpm', 'per-cvt-mio-5tl-fino-1500rpm', '1500rpm', NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"69000\"],\"rows\":[[\"\",\"\"]]}', 'temp/CzqYFwLPvMHfMAsEY5wmgGqiuDSgZOdJDvfhE7uH.jpg', '[]', '2026-04-25 00:49:07', '2026-04-25 00:49:07'),
(172, 37, 'DVX-CVT-4804', 'PER CVT  mio-5tl-fino 2000rpm', 'per-cvt-mio-5tl-fino-2000rpm', '2000rpm', NULL, '{\"type\":\"grid\",\"headers\":[\"\",\"69000\"],\"rows\":[[\"\",\"\"]]}', 'temp/GQmHV6S65sPyOdGyZeQzpzFNafacDn08rulQxjQH.jpg', '[]', '2026-04-25 00:57:22', '2026-04-25 00:57:22'),
(173, 37, 'DVX-CVT-4805', 'PER CVT  aerox155-nmaxNEW 1000rpm', 'per-cvt-aerox155-nmaxnew-1000rpm', '1000rpm', NULL, '{\"type\":\"grid\",\"headers\":[\"Property\",\"86000\"],\"rows\":[[\"\",\"\"]]}', 'temp/sTTGbImyh0Znj9uPiW5eblmZaa7zoKxlG6ki01dt.jpg', '[]', '2026-04-25 01:04:05', '2026-04-25 01:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_motorcycle`
--

CREATE TABLE `product_motorcycle` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `motorcycle_id` bigint(20) UNSIGNED NOT NULL,
  `diameter` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `spec_key` varchar(255) NOT NULL,
  `spec_value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('17qTll83EqxDPTMV6Bu8XPGAHfr3PYfGYOc60pea', NULL, '17.22.237.50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVlmRzZXM0x1eHdZd0JaN3RSVTN6R2hPN0dYV1NHY00wVlYyajRnaiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbmFnYXRhZHZ4ZGF5dG9uYS5jb20vcHJvZHVrL2N1c3RvbS1icmVhay1zeXN0ZW0iO3M6NToicm91dGUiO3M6MTM6InByb2R1Y3RzLnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777234482),
('B0rDI05pMskTubQr2MWeld5fATe0nBQysmI4PzHP', NULL, '34.76.24.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUpjY2tZMEYxdDhmMjdoT3IzZ2xhR2pWSlB4TjgweHRTcnBET0FvaCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vbmFnYXRhZHZ4ZGF5dG9uYS5jb20iO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777236458),
('CWizNxyNgG45qNo4IbbuEh71EgBL5wBv8p4OIqxY', NULL, '35.188.75.105', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUl3aUlZNE5KV3I0S2RMSG9OMGphV256RU1Ram5Wdm9HZXIzbU9kayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3Lm5hZ2F0YWR2eGRheXRvbmEuY29tIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777212092),
('IWVyS5iRQUpjbvF5IjEI8D9LV4cHyRYH72t2sjUf', NULL, '143.110.144.171', 'Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1c2ZVNYZ0JvQlg0anlMREJ3c0RscGxJR1pPQVNEUmF6QndTQ1BwTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vbmFnYXRhZHZ4ZGF5dG9uYS5jb20iO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777230826),
('oto6InnyYEesjHFalVhCIM1jPllWegpNCEmhPGku', NULL, '51.158.248.230', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXdVQmpuZG80c0k0UGsyajRuUHdJUWQwblMzbjFKR0thdEdEaHkzaiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vbmFnYXRhZHZ4ZGF5dG9uYS5jb20iO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777205479),
('rwqbBqFNVd3RP922CG816We6JcQtwhsoGXf3vlkr', NULL, '51.158.248.230', 'curl/7.81.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZnRYUzVFRUloVnhUdUhsM1V3MkoxNWtNTTJ2MUdZT2wwdmFVbUNJQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1777205475),
('sjR2fNG3wfZi2FRkWqPFWa6sniE8qRVtyiyh2TgV', NULL, '192.46.184.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXpGY1BNRjZ4WTBDdkVyY3VjMDFxS1F6SEdkMEYyeHlxOWNOekgyRyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vbmFnYXRhZHZ4ZGF5dG9uYS5jb20iO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777220598),
('uisUd6O1fjvTcYKGySaVMEhhlN0kKKaF1qs6dQQa', NULL, '66.249.73.102', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.7680.177 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOURUbWJXb2hucHdlZVFOOVZmZjhqYWNVN1FIMGpvcWhSRXdDRTBOYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vbmFnYXRhZHZ4ZGF5dG9uYS5jb20vcHJvZHVrL3JvbGxlci0xNTEyMDkiO3M6NToicm91dGUiO3M6MTM6InByb2R1Y3RzLnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777216556),
('zCaTyHpYccCsGBBqYRkXOMqKpBCrQXKvdsjAlf5P', NULL, '213.219.254.14', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlp4QU90VWhmZzY3TmY4Q1dPeFl3dTl6ak14MmdzRm9mTFJTSVdqdCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vbmFnYXRhZHZ4ZGF5dG9uYS5jb20vaHVidW5naS1rYW1pIjtzOjU6InJvdXRlIjtzOjc6ImNvbnRhY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777232621),
('zVKQtsbcjcZdh7MgBkWPXapmgE1gGy4dOct3umOU', NULL, '34.6.129.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGVvU3V6Y3hOMnRJVzRYTXNYRFNycGloNVBnVkt5TUZSZEdGempZNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vbmFnYXRhZHZ4ZGF5dG9uYS5jb20iO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777234983);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `platform`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', '2026-04-20 04:31:16', '2026-04-20 04:31:51'),
(2, 'Instagram', 'https://www.instagram.com/#', '2026-04-20 04:31:42', '2026-04-20 04:31:42'),
(3, 'Whatsapp', 'https://wa.me/#', '2026-04-20 04:32:18', '2026-04-20 04:32:18'),
(4, 'X', 'https://www.x.com/#', '2026-04-20 04:32:35', '2026-04-20 04:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Webiz', 'admin@webiz.my.id', NULL, '$2y$12$mVjDtcShicO9TBbbTYkl0.attcno0CZNu42oPhw4G0KcLrL1In/0u', 'U8wBJUCDSq0gea1W6Q3wcItSY40AYIdUBmoYbavSouMFO8lBftbWL6NT6s36', '2026-04-20 02:59:11', '2026-04-20 02:59:20'),
(5, 'Admin Nagata', 'admin@nagatadvxdaytona.com', NULL, '$2y$12$X7QIVOOVLPS0ogBE1rC2tee4VHW0d4nkhZMvCQOg2gCRfTcKROpkW', '5eqVci0WIncsivB31r3qft7sGLxjXYFypHF7GknwLXNzuWhaVpKzMzrMoHZB', '2026-04-22 05:22:57', '2026-04-21 22:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'NAGATA DVX DAYTONA', '2026-04-20 04:10:03', '2026-04-20 04:11:02'),
(2, 'whatsapp', '081257123863', '2026-04-20 04:10:03', '2026-04-20 04:11:02'),
(3, 'email', 'info@nagatadvxdaytona.com', '2026-04-20 04:10:03', '2026-04-20 04:11:02'),
(4, 'address', 'pandigilling 89/91, surabaya, jawatimur', '2026-04-20 04:10:03', '2026-04-21 22:57:18'),
(5, 'maps_iframe', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4911.849441617193!2d106.8271106!3d-6.175308299999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5d2e764b12d%3A0x3d2ad6e1e0e9bcc8!2sMonumen%20Nasional!5e1!3m2!1sid!2sid!4v1776683380389!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2026-04-20 04:10:03', '2026-04-20 04:10:03'),
(6, 'site_logo', NULL, '2026-04-20 09:32:45', '2026-04-20 09:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `web_contents`
--

CREATE TABLE `web_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_contents`
--

INSERT INTO `web_contents` (`id`, `page`, `section`, `slug`, `title`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'welcome', 'hero', 'home_hero_subtitle', 'Ultimate Performance Division', 'Ultimate Performance Division', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(2, 'welcome', 'hero', 'home_hero_title', 'PUSH THE LIMITS OF SPEED', 'PUSH THE <span class=\"text-daytona-orange\">LIMITS</span> <br>OF SPEED', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(3, 'welcome', 'hero', 'home_hero_description', 'Hero Description', 'Nagata Daytona menghadirkan komponen racing premium yang dirancang untuk performa maksimal di lintasan balap dan keandalan di jalan raya.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(4, 'welcome', 'hero', 'home_hero_cta_products', 'Button Text: Cek Produk', 'Cek Produk', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(5, 'welcome', 'hero', 'home_hero_cta_about', 'Button Text: Tentang Kami', 'Tentang Kami', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(6, 'welcome', 'hero', 'home_hero_image', 'Hero Background Image', 'https://images.unsplash.com/photo-1558981403-c5f9899a28bc?auto=format&fit=crop&q=80&w=2000', 'image', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(7, 'welcome', 'features', 'home_features_power_title', 'Feature: Power Title', 'Maximum Power', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(8, 'welcome', 'features', 'home_features_power_desc', 'Feature: Power Desc', 'Dirancang untuk meningkatkan output daya mesin Anda secara signifikan dengan presisi yang tinggi melalui teknologi aliran udara optimal.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(9, 'welcome', 'features', 'home_features_durability_title', 'Feature: Durability Title', 'Durability', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(10, 'welcome', 'features', 'home_features_durability_desc', 'Feature: Durability Desc', 'Material kualitas industri penerbangan memberikan ketahanan luar biasa bahkan dalam kondisi balapan paling ekstrem sekalipun.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(11, 'welcome', 'features', 'home_features_track_title', 'Feature: Track Title', 'Track Tested', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(12, 'welcome', 'features', 'home_features_track_desc', 'Feature: Track Desc', 'Setiap komponen telah diuji coba secara ketat di berbagai sirkuit internasional untuk memastikan standar balap tertinggi.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(13, 'welcome', 'latest', 'home_latest_subtitle', 'Latest Products: Subtitle', 'Our Collection', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(14, 'welcome', 'latest', 'home_latest_title', 'Latest Products: Title', 'Latest <span class=\"text-daytona-orange\">Products</span>', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(15, 'welcome', 'latest', 'home_latest_view_all', 'View All Button Text', 'View All Collection', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(16, 'about', 'header', 'about_header_subtitle', 'About Header: Subtitle', 'Quality & Precision', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(17, 'about', 'header', 'about_header_title', 'About Header: Title', 'About <span class=\"text-daytona-orange\">Us</span>', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(18, 'about', 'header', 'about_header_desc', 'About Header Desc', 'Lebih dari sekadar komponen. Kami menghadirkan teknologi lintasan balap ke genggaman setiap pengendara yang menginginkan kesempurnaan.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(19, 'about', 'story', 'about_story_title', 'Story Title', 'Pushing the Limits of Performance', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(20, 'about', 'story', 'about_story_p1', 'Story Paragraph 1', 'Nagata Daytona didirikan dengan satu visi sederhana: menghadirkan teknologi suku cadang mesin berperforma tinggi tingkat lintasan balap ke tangan setiap pengendara yang menginginkan kesempurnaan.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(21, 'about', 'story', 'about_story_p2', 'Story Paragraph 2', 'Berawal dari kecintaan pada dunia otomotif dan teknobiologi mesin, kami menggabungkan keahlian teknik tingkat lanjut dengan material kelas industri penerbangan untuk menciptakan produk yang tidak hanya meningkatkan tenaga, tetapi juga ketahanan mesin dalam kondisi paling ekstrem sekalipun.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(22, 'about', 'story', 'about_story_image', 'Story Image', 'web_contents/LaZo9YooPSyw60MSXMZYWK3eQ0Hv0y3HqjF4Cevh.webp', 'image', '2026-04-21 05:12:38', '2026-04-21 05:13:19'),
(23, 'about', 'vision', 'about_vision_title', 'Vision Title', '01. Our Vision', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(24, 'about', 'vision', 'about_vision_desc', 'Vision Desc', 'Menjadi pemimpin global dalam inovasi suku cadang racing yang menginspirasi standar baru di dunia otomotif.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(25, 'about', 'mission', 'about_mission_title', 'Mission Title', '02. Our Mission', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(26, 'about', 'mission', 'about_mission_list', 'Mission List (One per line)', 'Mengembangkan teknologi mesin dengan riset berkelanjutan.\r\nMenyediakan produk dengan standar keamanan dan daya tahan tertinggi.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:13:18'),
(27, 'about', 'values', 'about_values_title', 'Values Title', '03. Our Values', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(28, 'about', 'values', 'about_values_list', 'Values List (Comma separated)', 'Precision, Innovation, Reliability', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(29, 'about', 'stats', 'about_stats_exp_num', 'Stats: Years Num', '15+', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(30, 'about', 'stats', 'about_stats_exp_label', 'Stats: Years Label', 'Tahun Pengalaman', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(31, 'about', 'stats', 'about_stats_parts_num', 'Stats: Parts Num', '250+', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(32, 'about', 'stats', 'about_stats_parts_label', 'Stats: Parts Label', 'Komponen Racing', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(33, 'about', 'stats', 'about_stats_users_num', 'Stats: Users Num', '12k+', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(34, 'about', 'stats', 'about_stats_users_label', 'Stats: Users Label', 'Pengguna Aktif', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(35, 'about', 'stats', 'about_stats_track_num', 'Stats: Track Num', '100%', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(36, 'about', 'stats', 'about_stats_track_label', 'Stats: Track Label', 'Track Tested', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(37, 'contact', 'header', 'contact_header_subtitle', 'Contact Header: Subtitle', 'Get In Touch', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(38, 'contact', 'header', 'contact_header_title', 'Contact Header: Title', 'Contact <span class=\"text-daytona-orange\">Us</span>', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(39, 'contact', 'header', 'contact_header_desc', 'Contact Header Desc', 'Ada pertanyaan mengenai produk atau kemitraan bisnis? Tim ahli kami yang berdedikasi siap memberikan solusi otomotif untuk Anda.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(40, 'contact', 'sidebar', 'contact_sidebar_title', 'Contact Sidebar Title', 'General Inquiries', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(41, 'contact', 'sidebar', 'contact_sidebar_desc', 'Contact Sidebar Desc', 'Ada pertanyaan mengenai produk atau kemitraan? Jangan ragu untuk menghubungi tim ahli kami.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(42, 'dealers', 'header', 'dealers_header_subtitle', 'Dealers Header: Subtitle', 'Offline Store', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(43, 'dealers', 'header', 'dealers_header_title', 'Dealers Header: Title', 'Lokasi <span class=\"text-daytona-orange\">Dealer</span>', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(44, 'dealers', 'header', 'dealers_header_desc', 'Dealers Header Desc', 'Temukan suku cadang resmi Nagata Daytona dan performa maksimal untuk motor Anda di bengkel atau toko sparepart terdekat.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(45, 'welcome', 'filter', 'home_filter_subtitle', 'Filter Subtitle', 'Quick Filter', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(46, 'welcome', 'filter', 'home_filter_title', 'Filter Title', 'Cari Part untuk <br><span class=\"text-slate-400\">Motor Anda</span>', 'text', '2026-04-21 05:12:38', '2026-04-21 05:12:38'),
(47, 'welcome', 'filter', 'home_filter_desc', 'Filter Description', 'Pilih merk & model, temukan semua suku cadang yang kompatibel.', 'textarea', '2026-04-21 05:12:38', '2026-04-21 05:12:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dealers_kota_index` (`kota`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `motorcycle_models`
--
ALTER TABLE `motorcycle_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_motorcycle`
--
ALTER TABLE `product_motorcycle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_motorcycle_product_id_foreign` (`product_id`),
  ADD KEY `product_motorcycle_motorcycle_id_foreign` (`motorcycle_id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specifications_product_id_foreign` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `website_settings_key_unique` (`key`);

--
-- Indexes for table `web_contents`
--
ALTER TABLE `web_contents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_contents_slug_unique` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `motorcycle_models`
--
ALTER TABLE `motorcycle_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_motorcycle`
--
ALTER TABLE `product_motorcycle`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `web_contents`
--
ALTER TABLE `web_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_motorcycle`
--
ALTER TABLE `product_motorcycle`
  ADD CONSTRAINT `product_motorcycle_motorcycle_id_foreign` FOREIGN KEY (`motorcycle_id`) REFERENCES `motorcycle_models` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_motorcycle_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD CONSTRAINT `product_specifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
