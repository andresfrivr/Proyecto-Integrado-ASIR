-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2022 a las 19:19:11
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `elisa2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aircraft`
--

CREATE TABLE `aircraft` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aircraft`
--

INSERT INTO `aircraft` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'A330', '2022-06-07 15:39:55', '2022-06-07 15:39:55'),
(2, 'A380', '2022-06-07 15:39:55', '2022-06-07 15:39:55'),
(3, 'B737', '2022-06-07 15:39:55', '2022-06-07 15:39:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chapters`
--

INSERT INTO `chapters` (`id`, `no`, `name`, `created_at`, `updated_at`) VALUES
(1, 21, 'chapter 21', '2022-06-07 15:41:44', '2022-06-07 15:41:44'),
(2, 24, 'chapter 24', '2022-06-07 15:41:44', '2022-06-07 15:41:44'),
(3, 31, 'chapter 31', '2022-06-07 15:41:44', '2022-06-07 15:41:44'),
(4, 18, 'Example', '2022-06-09 11:44:45', '2022-06-09 11:44:45'),
(5, 90, 'Testing again', '2022-06-09 12:38:57', '2022-06-09 12:38:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluations`
--

CREATE TABLE `evaluations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exam_tasks`
--

CREATE TABLE `exam_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `exam_tasks`
--

INSERT INTO `exam_tasks` (`id`, `task_id`, `created_at`, `updated_at`) VALUES
(2, 1, '2022-06-13 13:00:29', '2022-06-13 13:00:29'),
(3, 2, '2022-06-13 13:00:35', '2022-06-13 13:00:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `join_trainees_logbooks`
--

CREATE TABLE `join_trainees_logbooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainee_id` bigint(20) UNSIGNED NOT NULL,
  `logbook_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `join_trainees_logbooks`
--

INSERT INTO `join_trainees_logbooks` (`id`, `trainee_id`, `logbook_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(2, 2, 2, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(3, 3, 3, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(4, 4, 4, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(5, 5, 5, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(6, 6, 6, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(7, 7, 7, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(8, 8, 8, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(9, 9, 9, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(10, 10, 10, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(11, 11, 11, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(12, 12, 12, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(13, 13, 13, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(14, 14, 14, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(15, 15, 15, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(16, 16, 16, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(17, 17, 17, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(18, 18, 18, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(19, 19, 19, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(20, 20, 20, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(21, 21, 21, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(22, 22, 22, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(23, 23, 23, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(24, 24, 24, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(25, 25, 25, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(26, 26, 26, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(27, 27, 27, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(28, 28, 28, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(29, 29, 29, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(30, 30, 30, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(31, 31, 31, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(32, 32, 3, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(33, 33, 33, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(34, 34, 34, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(35, 35, 35, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(36, 36, 36, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(37, 10, 37, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(38, 11, 38, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(39, 12, 39, '2022-06-07 16:16:40', '2022-06-07 16:16:40'),
(40, 1, 1, '2022-06-12 11:10:51', '2022-06-12 11:10:51'),
(41, 3, 3, '2022-06-12 11:11:26', '2022-06-12 11:11:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `join_trainers_logbooks`
--

CREATE TABLE `join_trainers_logbooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` bigint(20) UNSIGNED NOT NULL,
  `logbook_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `join_trainers_logbooks`
--

INSERT INTO `join_trainers_logbooks` (`id`, `trainer_id`, `logbook_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(2, 2, 1, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(3, 1, 2, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(4, 2, 2, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(5, 1, 3, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(6, 2, 3, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(7, 3, 4, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(8, 4, 4, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(9, 3, 5, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(10, 4, 5, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(11, 3, 6, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(12, 4, 6, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(13, 5, 7, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(14, 6, 7, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(15, 5, 8, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(16, 6, 8, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(17, 5, 9, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(18, 6, 9, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(19, 7, 10, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(20, 8, 10, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(21, 7, 11, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(22, 8, 11, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(23, 7, 12, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(24, 8, 12, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(25, 9, 13, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(26, 10, 13, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(27, 9, 14, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(28, 10, 14, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(29, 9, 15, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(30, 10, 15, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(31, 11, 16, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(32, 12, 16, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(33, 11, 17, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(34, 12, 17, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(35, 11, 18, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(36, 12, 18, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(37, 13, 19, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(38, 14, 19, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(39, 13, 20, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(40, 14, 20, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(41, 13, 21, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(42, 14, 21, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(43, 15, 22, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(44, 16, 22, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(45, 15, 23, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(46, 16, 23, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(47, 15, 24, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(48, 16, 24, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(49, 17, 25, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(50, 18, 25, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(51, 17, 26, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(52, 18, 26, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(53, 17, 27, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(54, 18, 27, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(55, 19, 28, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(56, 20, 28, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(57, 19, 29, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(58, 20, 29, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(59, 19, 30, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(60, 20, 30, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(61, 21, 31, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(62, 22, 31, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(63, 21, 32, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(64, 22, 32, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(65, 21, 33, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(66, 22, 33, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(67, 23, 34, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(68, 24, 34, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(69, 23, 35, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(70, 24, 35, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(71, 23, 36, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(72, 24, 36, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(73, 3, 37, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(74, 4, 37, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(75, 3, 38, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(76, 4, 38, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(77, 3, 39, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(78, 4, 39, '2022-06-07 16:14:55', '2022-06-07 16:14:55'),
(79, 3, 3, '2022-06-12 11:15:39', '2022-06-12 11:15:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logbooks`
--

CREATE TABLE `logbooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proj_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logbooks`
--

INSERT INTO `logbooks` (`id`, `proj_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'logbook 1 pr 1 tee 1 trs 1 2', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(2, 1, 'logbook 2 pr 1 tee 2 trs 1 2', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(3, 1, 'logbook 3 pr 1 tee 3 trs 1 2', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(4, 2, 'logbook 4 pr 2 tee 4 trs 3 4', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(5, 2, 'logbook 5 pr 2 tee 5 trs 3 4', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(6, 2, 'logbook 6 pr 2 tee 6 trs 3 4', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(7, 3, 'logbook 7 pr 3 tee 7 trs 5 6', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(8, 3, 'logbook 8 pr 3 tee 8 trs 5 6', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(9, 3, 'logbook 9 pr 3 tee 9 trs 5 6', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(10, 4, 'logbook 10 pr 4 tee 10 trs 7 8', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(11, 4, 'logbook 11 pr 4 tee 11 trs 7 8', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(12, 4, 'logbook 12 pr 4 tee 12 trs 7 8', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(13, 5, 'logbook 13 pr 5 tee 13 trs 9 10', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(14, 5, 'logbook 14 pr 5 tee 14 trs 9 10', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(15, 5, 'logbook 15 pr 5 tee 15 trs 9 10', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(16, 6, 'logbook 16 pr 6 tee 16 trs 11 12', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(17, 6, 'logbook 17 pr 6 tee 17 trs 11 12', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(18, 6, 'logbook 18 pr 6 tee 18 trs 11 12', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(19, 7, 'logbook 19 pr 7 tee 19 trs 13 14', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(20, 7, 'logbook 20 pr 7 tee 20 trs 13 14', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(21, 7, 'logbook 21 pr 7 tee 21 trs 13 14', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(22, 8, 'logbook 22 pr 8 tee 22 trs 15 16', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(23, 8, 'logbook 23 pr 8 tee 23 trs 15 16', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(24, 8, 'logbook 24 pr 8 tee 24 trs 15 16', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(25, 9, 'logbook 25 pr 9 tee 25 trs 17 18', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(26, 9, 'logbook 26 pr 9 tee 26 trs 17 18', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(27, 9, 'logbook 27 pr 9 tee 27 trs 17 18', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(28, 10, 'logbook 28 pr 10 tee 28 trs 19 20', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(29, 10, 'logbook 29 pr 10 tee 29 trs 19 20', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(30, 10, 'logbook 30 pr 10 tee 30 trs 19 20', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(31, 11, 'logbook 31 pr 11 tee 31 trs 21 22', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(32, 11, 'logbook 32 pr 11 tee 32 trs 21 22', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(33, 11, 'logbook 33 pr 11 tee 33 trs 21 22', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(34, 12, 'logbook 34 pr 12 tee 34 trs 23 24', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(35, 12, 'logbook 35 pr 12 tee 35 trs 23 24', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(36, 12, 'logbook 36 pr 12 tee 36 trs 23 24', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(37, 9, 'logbook 37 pr 9 tee 10 trs 3 4', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(38, 9, 'logbook 38 pr 9 tee 11 trs 3 4', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(39, 9, 'logbook 39 pr 9 tee 12 trs 3 4', '2022-06-07 16:11:13', '2022-06-07 16:11:13'),
(42, 10, 'logbook test', '2022-06-13 07:40:50', '2022-06-13 07:40:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logbook_entries`
--

CREATE TABLE `logbook_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logbook_id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `tr_signoff` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `te_signoff` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logbook_entries`
--

INSERT INTO `logbook_entries` (`id`, `logbook_id`, `task_id`, `tr_signoff`, `te_signoff`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(2, 5, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(3, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(4, 5, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(5, 5, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(6, 5, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(7, 5, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(8, 5, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(9, 10, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(10, 10, 10, '2022-02-15 08:55:42', '2022-02-15 07:50:10', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(11, 10, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(12, 10, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(13, 10, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(14, 10, 14, '0000-00-00 00:00:00', '2022-02-15 09:11:23', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(15, 10, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(16, 10, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(17, 37, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(18, 37, 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(19, 37, 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(20, 37, 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(21, 37, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(22, 37, 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(23, 37, 39, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59'),
(24, 37, 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-06-07 16:50:59', '2022-06-07 16:50:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_09_143742_create_aircraft_table', 1),
(6, '2022_05_09_143823_create_specifics_table', 1),
(7, '2022_05_09_143904_create_trainers_table', 1),
(8, '2022_05_09_143933_create_trainees_table', 1),
(9, '2022_05_09_144021_create_chapters_table', 1),
(10, '2022_05_09_144107_create_products_table', 1),
(11, '2022_05_09_144155_create_projects_table', 1),
(12, '2022_05_09_144531_create_logbooks_table', 1),
(13, '2022_05_09_145836_create_join_trainers_logbooks_table', 1),
(14, '2022_05_09_150205_create_join_trainees_logbooks_table', 1),
(15, '2022_05_09_150449_create_topics_table', 1),
(16, '2022_05_09_150826_create_sections_table', 1),
(17, '2022_05_09_151204_create_tasks_table', 1),
(18, '2022_05_09_151850_create_exam_tasks_table', 1),
(19, '2022_05_09_152451_create_model_doc_refs_table', 1),
(20, '2022_05_09_152828_create_logbook_entries_table', 1),
(21, '2022_05_09_154035_create_trainee_notes_table', 1),
(22, '2022_05_09_154142_create_trainer_notes_table', 1),
(23, '2022_05_09_154330_create_trainee_doc_refs_table', 1),
(24, '2022_05_09_154521_create_evaluations_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_doc_refs`
--

CREATE TABLE `model_doc_refs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_task_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ac_id` bigint(20) UNSIGNED NOT NULL,
  `spec_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `ac_id`, `spec_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'A330 RR-Trent-700 B1 Practical Training', '2022-06-07 16:06:52', '2022-06-07 16:06:52'),
(2, 1, 2, 'A330 PW-4000 B1 Practical Training', '2022-06-07 16:06:52', '2022-06-07 16:06:52'),
(3, 2, 3, 'A380 RR-Trent-900 B1 Practical Training', '2022-06-07 16:06:52', '2022-06-07 16:06:52'),
(4, 2, 4, 'A380 GP-7200 B2 Practical Training', '2022-06-07 16:06:52', '2022-06-07 16:06:52'),
(5, 3, 5, 'B737 CFM-56 B1 & B2 Practical Training', '2022-06-07 16:06:52', '2022-06-07 16:06:52'),
(6, 3, 6, 'B737 CFM-LEAP-1B B2 Practical Training', '2022-06-07 16:06:52', '2022-06-07 16:06:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prod_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `prod_id`, `start_date`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-09-01', 'A330 RR-Trent Practical Training Paris Q3 2021', '2022-06-07 16:08:25', '2022-06-07 16:08:25'),
(2, 1, '2021-09-01', 'A330 RR-Trent Practical Training Madrid Q3 2021', '2022-06-07 16:08:25', '2022-06-07 16:08:25'),
(3, 2, '2021-09-01', 'A330 PW-4000 Practical Training Paris Q3 2021', '2022-06-07 16:08:25', '2022-06-07 16:08:25'),
(4, 2, '2021-09-01', 'A330 PW-4000 Practical Training Madrid Q3 2021', '2022-06-07 16:08:25', '2022-06-07 16:08:25'),
(5, 3, '2021-09-01', 'A380 RR-Trent-900 B2 Practical Training Paris Q3 2021', '2022-06-07 16:08:25', '2022-06-07 16:08:25'),
(6, 3, '2021-09-01', 'A380 RR-Trent-900 B2 Practical Training Madrid Q3 2021', '2022-06-07 16:08:25', '2022-06-07 16:08:25'),
(7, 4, '2021-09-01', 'A380 GP-7200 B2 Practical Training Paris Q3 2021', '2022-06-07 16:08:25', '2022-06-07 16:08:25'),
(8, 4, '2021-09-01', 'A380 GP-7200 B2 Practical Training Madrid Q3 2021', '2022-06-07 16:08:25', '2022-06-07 16:08:25'),
(9, 5, '2021-09-01', 'B737 CFM-56  B1 & B2 Practical Training Frankfurt Q3 2021', '2022-06-07 16:08:25', '2022-06-07 16:08:25'),
(10, 5, '2021-09-01', 'B737 CFM-56  B1 & B2 Practical Training London Q3 2021', '2022-06-07 16:08:25', '2022-06-07 16:08:25'),
(11, 6, '2021-09-01', 'B737 CFM-LEAP-1B B1 & B2 Practical Training Frankfurt Q3 2021', '2022-06-07 16:08:25', '2022-06-07 16:08:25'),
(12, 6, '2021-09-01', 'B737 CFM-LEAP-1B B1 & B2 Practical Training London Q3 2021', '2022-06-07 16:08:25', '2022-06-07 16:08:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_id` bigint(20) UNSIGNED NOT NULL,
  `no` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sections`
--

INSERT INTO `sections` (`id`, `top_id`, `no`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'sec 0 in topic 0 chap 21', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(2, 2, 0, 'sec 0 in topic 10 chap 21', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(3, 3, 0, 'sec 0 in topic 20 chap 21', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(4, 4, 0, 'sec 0 in topic 30 chap 21', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(5, 5, 0, 'sec 0 in topic 40 chap 21', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(6, 6, 0, 'sec 0 in topic 50 chap 21', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(7, 7, 0, 'sec 0 in topic 0 chap 24', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(8, 8, 0, 'sec 0 in topic 10 chap 24', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(9, 9, 0, 'sec 0 in topic 20 chap 24', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(10, 10, 0, 'sec 0 in topic 30 chap 24', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(11, 11, 0, 'sec 0 in topic 40 chap 24', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(12, 12, 0, 'sec 0 in topic 50 chap 41', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(13, 13, 0, 'sec 0 in topic 0 chap 31', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(14, 14, 0, 'sec 0 in topic 10 chap 31', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(15, 15, 0, 'sec 0 in topic 20 chap 31', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(16, 16, 0, 'sec 0 in topic 30 chap 31', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(17, 17, 0, 'sec 0 in topic 40 chap 31', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(18, 18, 0, 'sec 0 in topic 40 chap 31', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(19, 8, 10, 'sec 10 in topic 10 chap 24', '2022-06-07 16:20:03', '2022-06-07 16:20:03'),
(20, 8, 20, 'sec 20 in topic 10 chap 24', '2022-06-07 16:20:03', '2022-06-07 16:20:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specifics`
--

CREATE TABLE `specifics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `specifics`
--

INSERT INTO `specifics` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'RR Trent-700', '2022-06-07 15:59:47', '2022-06-07 15:59:47'),
(2, 'PW 4000', '2022-06-07 15:59:47', '2022-06-07 15:59:47'),
(3, 'RR Trent-900', '2022-06-07 15:59:47', '2022-06-07 15:59:47'),
(4, 'GP 7200', '2022-06-07 15:59:47', '2022-06-07 15:59:47'),
(5, 'CFM 56', '2022-06-07 15:59:47', '2022-06-07 15:59:47'),
(6, 'CFM LEAP 1B', '2022-06-07 15:59:47', '2022-06-07 15:59:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prod_id` bigint(20) UNSIGNED NOT NULL,
  `sect_id` bigint(20) UNSIGNED NOT NULL,
  `ttype` enum('LOC','SGH','TS','FOT','MEL') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manob` enum('M','O') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL,
  `is_exam` tinyint(4) NOT NULL,
  `description` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `prod_id`, `sect_id`, `ttype`, `manob`, `level`, `is_exam`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'TS', 'O', 3, 0, 'sec 0 in topic 0 chap 21 prod 1', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(2, 1, 2, 'TS', 'M', 3, 0, 'sec 0 in topic 20 chap 21 prod 1', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(3, 1, 3, 'SGH', 'M', 3, 0, 'sec 0 in topic 30 chap 21 prod 1', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(4, 1, 4, 'TS', 'O', 3, 0, 'sec 10 in topic 10 chap 24 prod 1', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(5, 1, 5, 'TS', 'M', 3, 0, 'sec 0 in topic 20 chap 24 prod 1', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(6, 1, 6, 'SGH', 'O', 3, 0, 'sec 0 in topic 40 chap 24 prod 1', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(7, 1, 7, 'MEL', 'O', 3, 0, 'sec 0 in topic 30 chap 31 prod 1', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(8, 1, 8, 'MEL', 'M', 3, 0, 'sec 0 in topic 40 chap 31 prod 1', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(9, 2, 1, 'LOC', 'M', 3, 0, 'sec 0 in topic 0 chap 21 prod 2', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(10, 2, 2, 'TS', 'M', 3, 0, 'sec 0 in topic 20 chap 21 prod 2', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(11, 2, 3, 'FOT', 'O', 3, 0, 'sec 0 in topic 30 chap 21 prod 2', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(12, 2, 4, 'TS', 'M', 3, 0, 'sec 10 in topic 10 chap 24 prod 2', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(13, 2, 5, 'MEL', 'O', 3, 0, 'sec 0 in topic 20 chap 24 prod 2', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(14, 2, 6, 'SGH', 'M', 3, 0, 'sec 0 in topic 40 chap 24 prod 2', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(15, 2, 7, 'LOC', 'M', 3, 0, 'sec 0 in topic 30 chap 31 prod 2', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(16, 2, 8, 'LOC', 'O', 3, 0, 'sec 0 in topic 40 chap 31 prod 2', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(17, 3, 1, 'MEL', 'O', 3, 0, 'sec 0 in topic 0 chap 21 prod 3', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(18, 3, 2, 'LOC', 'M', 3, 0, 'sec 0 in topic 20 chap 21 prod 3', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(19, 3, 3, 'FOT', 'O', 3, 0, 'sec 0 in topic 30 chap 21 prod 3', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(20, 3, 4, 'LOC', 'M', 3, 0, 'sec 10 in topic 10 chap 24 prod 3', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(21, 3, 5, 'FOT', 'M', 3, 0, 'sec 0 in topic 20 chap 24 prod 3', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(22, 3, 6, 'FOT', 'O', 3, 0, 'sec 0 in topic 40 chap 24 prod 3', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(23, 3, 7, 'SGH', 'M', 3, 0, 'sec 0 in topic 30 chap 31 prod 3', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(24, 3, 8, 'LOC', 'M', 3, 0, 'sec 0 in topic 40 chap 31 prod 3', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(25, 4, 1, 'MEL', 'M', 3, 0, 'sec 0 in topic 0 chap 21 prod 4', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(26, 4, 2, 'TS', 'O', 3, 0, 'sec 0 in topic 20 chap 21 prod 4', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(27, 4, 3, 'SGH', 'M', 3, 0, 'sec 0 in topic 30 chap 21 prod 4', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(28, 4, 4, 'MEL', 'M', 3, 0, 'sec 10 in topic 10 chap 24 prod 4', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(29, 4, 5, 'MEL', 'M', 3, 0, 'sec 0 in topic 20 chap 24 prod 4', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(30, 4, 6, 'TS', 'O', 3, 0, 'sec 0 in topic 40 chap 24 prod 4', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(31, 4, 7, 'TS', 'O', 3, 0, 'sec 0 in topic 30 chap 31 prod 4', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(32, 4, 8, 'FOT', 'M', 3, 0, 'sec 0 in topic 40 chap 31 prod 4', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(33, 5, 1, 'SGH', 'O', 3, 0, 'sec 0 in topic 0 chap 21 prod 5', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(34, 5, 2, 'FOT', 'O', 3, 0, 'sec 0 in topic 20 chap 21 prod 5', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(35, 5, 3, 'SGH', 'O', 3, 0, 'sec 0 in topic 30 chap 21 prod 5', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(36, 5, 4, 'MEL', 'M', 3, 0, 'sec 10 in topic 10 chap 24 prod 5', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(37, 5, 5, 'LOC', 'O', 3, 0, 'sec 0 in topic 20 chap 24 prod 5', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(38, 5, 6, 'FOT', 'M', 3, 0, 'sec 0 in topic 40 chap 24 prod 5', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(39, 5, 7, 'LOC', 'O', 3, 0, 'sec 0 in topic 30 chap 31 prod 5', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(40, 5, 8, 'MEL', 'M', 3, 0, 'sec 0 in topic 40 chap 31 prod 5', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(41, 6, 1, 'LOC', 'M', 3, 0, 'sec 0 in topic 0 chap 21 prod 6', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(42, 6, 2, 'FOT', 'M', 3, 0, 'sec 0 in topic 20 chap 21 prod 6', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(43, 6, 3, 'TS', 'M', 3, 0, 'sec 0 in topic 30 chap 21 prod 6', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(44, 6, 4, 'FOT', 'M', 3, 0, 'sec 10 in topic 10 chap 24 prod 6', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(45, 6, 5, 'FOT', 'M', 3, 0, 'sec 0 in topic 20 chap 24 prod 6', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(46, 6, 6, 'SGH', 'M', 3, 0, 'sec 0 in topic 40 chap 24 prod 6', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(47, 6, 7, 'MEL', 'O', 3, 0, 'sec 0 in topic 30 chap 31 prod 6', '2022-06-07 16:23:19', '2022-06-07 16:23:19'),
(48, 6, 8, 'TS', 'M', 3, 0, 'sec 0 in topic 40 chap 31 prod 6', '2022-06-07 16:23:19', '2022-06-07 16:23:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chap_id` bigint(20) UNSIGNED NOT NULL,
  `no` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `topics`
--

INSERT INTO `topics` (`id`, `chap_id`, `no`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'topic 0 in chap 21', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(2, 1, 10, 'topic 10 in chap 21', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(3, 1, 20, 'topic 20 in chap 21', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(4, 1, 30, 'topic 30 in chap 21', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(5, 1, 40, 'topic 40 in chap 21', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(6, 1, 50, 'topic 50 in chap 21', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(7, 2, 0, 'topic 0 in chap 24', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(8, 2, 10, 'topic 10 in chap 24', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(9, 2, 20, 'topic 20 in chap 24', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(10, 2, 30, 'topic 30 in chap 24i', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(11, 2, 40, 'topic 40 in chap 24', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(12, 2, 50, 'topic 50 in chap 24', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(13, 3, 0, 'topic 0 in chap 31', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(14, 3, 10, 'topic 10 in chap 31', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(15, 3, 20, 'topic 20 in chap 31', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(16, 3, 30, 'topic 30 in chap 31', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(17, 3, 40, 'topic 40 in chap 31', '2022-06-07 16:18:43', '2022-06-07 16:18:43'),
(18, 3, 50, 'topic 50 in chap 31', '2022-06-07 16:18:43', '2022-06-07 16:18:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trainees`
--

CREATE TABLE `trainees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `trainees`
--

INSERT INTO `trainees` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'trainee-1', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(2, 'trainee-2', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(3, 'trainee-3', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(4, 'trainee-4', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(5, 'trainee-5', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(6, 'trainee-6', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(7, 'trainee-7', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(8, 'trainee-8', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(9, 'trainee-9', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(10, 'trainee-10', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(11, 'trainee-11', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(12, 'trainee-12', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(13, 'trainee-13', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(14, 'trainee-14', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(15, 'trainee-15', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(16, 'trainee-16', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(17, 'trainee-17', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(18, 'trainee-18', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(19, 'trainee-19', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(20, 'trainee-20', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(21, 'trainee-21', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(22, 'trainee-22', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(23, 'trainee-23', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(24, 'trainee-24', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(25, 'trainee-25', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(26, 'trainee-26', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(27, 'trainee-27', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(28, 'trainee-28', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(29, 'trainee-29', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(30, 'trainee-30', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(31, 'trainee-31', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(32, 'trainee-32', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(33, 'trainee-33', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(34, 'trainee-34', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(35, 'trainee-35', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(36, 'trainee-36', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(37, 'trainee-37', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(38, 'trainee-38', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(39, 'trainee-39', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(40, 'trainee-40', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(41, 'trainee-41', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(42, 'trainee-42', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(43, 'trainee-43', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(44, 'trainee-44', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(45, 'trainee-45', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(46, 'trainee-46', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(47, 'trainee-47', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(48, 'trainee-48', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(49, 'trainee-49', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(50, 'trainee-50', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(51, 'trainee-51', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(52, 'trainee-52', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(53, 'trainee-53', '2022-06-07 16:05:19', '2022-06-07 16:05:19'),
(54, 'trainee-54', '2022-06-07 16:05:19', '2022-06-07 16:05:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trainee_doc_refs`
--

CREATE TABLE `trainee_doc_refs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lb_entry_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trainee_notes`
--

CREATE TABLE `trainee_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lb_entry_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `trainee_notes`
--

INSERT INTO `trainee_notes` (`id`, `lb_entry_id`, `created_at`, `updated_at`) VALUES
(3, 10, '2022-06-07 16:52:29', '2022-06-07 16:52:29'),
(4, 12, '2022-06-07 16:52:29', '2022-06-07 16:52:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'trainer-1', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(2, 'trainer-2', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(3, 'trainer-3', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(4, 'trainer-4', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(5, 'trainer-5', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(6, 'trainer-6', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(7, 'trainer-7', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(8, 'trainer-8', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(9, 'trainer-9', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(10, 'trainer-10', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(11, 'trainer-11', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(12, 'trainer-12', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(13, 'trainer-13', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(14, 'trainer-14', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(15, 'trainer-15', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(16, 'trainer-16', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(17, 'trainer-17', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(18, 'trainer-18', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(19, 'trainer-19', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(20, 'trainer-20', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(21, 'trainer-21', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(22, 'trainer-22', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(23, 'trainer-23', '2022-06-07 16:02:51', '2022-06-07 16:02:51'),
(24, 'trainer-24', '2022-06-07 16:02:51', '2022-06-07 16:02:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trainer_notes`
--

CREATE TABLE `trainer_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lb_entry_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluations_entry_id_foreign` (`entry_id`);

--
-- Indices de la tabla `exam_tasks`
--
ALTER TABLE `exam_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_tasks_task_id_foreign` (`task_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `join_trainees_logbooks`
--
ALTER TABLE `join_trainees_logbooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `join_trainees_logbooks_trainee_id_foreign` (`trainee_id`),
  ADD KEY `join_trainees_logbooks_logbook_id_foreign` (`logbook_id`);

--
-- Indices de la tabla `join_trainers_logbooks`
--
ALTER TABLE `join_trainers_logbooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `join_trainers_logbooks_trainer_id_foreign` (`trainer_id`),
  ADD KEY `join_trainers_logbooks_logbook_id_foreign` (`logbook_id`);

--
-- Indices de la tabla `logbooks`
--
ALTER TABLE `logbooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logbooks_proj_id_foreign` (`proj_id`);

--
-- Indices de la tabla `logbook_entries`
--
ALTER TABLE `logbook_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logbook_entries_logbook_id_foreign` (`logbook_id`),
  ADD KEY `logbook_entries_task_id_foreign` (`task_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_doc_refs`
--
ALTER TABLE `model_doc_refs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_doc_refs_exam_task_id_foreign` (`exam_task_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ac_id_foreign` (`ac_id`),
  ADD KEY `products_spec_id_foreign` (`spec_id`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_prod_id_foreign` (`prod_id`);

--
-- Indices de la tabla `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_top_id_foreign` (`top_id`);

--
-- Indices de la tabla `specifics`
--
ALTER TABLE `specifics`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_prod_id_foreign` (`prod_id`),
  ADD KEY `tasks_sect_id_foreign` (`sect_id`);

--
-- Indices de la tabla `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_chap_id_foreign` (`chap_id`);

--
-- Indices de la tabla `trainees`
--
ALTER TABLE `trainees`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trainee_doc_refs`
--
ALTER TABLE `trainee_doc_refs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainee_doc_refs_lb_entry_id_foreign` (`lb_entry_id`);

--
-- Indices de la tabla `trainee_notes`
--
ALTER TABLE `trainee_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainee_notes_lb_entry_id_foreign` (`lb_entry_id`);

--
-- Indices de la tabla `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trainer_notes`
--
ALTER TABLE `trainer_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainer_notes_lb_entry_id_foreign` (`lb_entry_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aircraft`
--
ALTER TABLE `aircraft`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `exam_tasks`
--
ALTER TABLE `exam_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `join_trainees_logbooks`
--
ALTER TABLE `join_trainees_logbooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `join_trainers_logbooks`
--
ALTER TABLE `join_trainers_logbooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `logbooks`
--
ALTER TABLE `logbooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `logbook_entries`
--
ALTER TABLE `logbook_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `model_doc_refs`
--
ALTER TABLE `model_doc_refs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `specifics`
--
ALTER TABLE `specifics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `trainees`
--
ALTER TABLE `trainees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `trainee_doc_refs`
--
ALTER TABLE `trainee_doc_refs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `trainee_notes`
--
ALTER TABLE `trainee_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `trainer_notes`
--
ALTER TABLE `trainer_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evaluations`
--
ALTER TABLE `evaluations`
  ADD CONSTRAINT `evaluations_entry_id_foreign` FOREIGN KEY (`entry_id`) REFERENCES `logbook_entries` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `exam_tasks`
--
ALTER TABLE `exam_tasks`
  ADD CONSTRAINT `exam_tasks_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `join_trainees_logbooks`
--
ALTER TABLE `join_trainees_logbooks`
  ADD CONSTRAINT `join_trainees_logbooks_logbook_id_foreign` FOREIGN KEY (`logbook_id`) REFERENCES `logbooks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `join_trainees_logbooks_trainee_id_foreign` FOREIGN KEY (`trainee_id`) REFERENCES `trainees` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `join_trainers_logbooks`
--
ALTER TABLE `join_trainers_logbooks`
  ADD CONSTRAINT `join_trainers_logbooks_logbook_id_foreign` FOREIGN KEY (`logbook_id`) REFERENCES `logbooks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `join_trainers_logbooks_trainer_id_foreign` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `logbooks`
--
ALTER TABLE `logbooks`
  ADD CONSTRAINT `logbooks_proj_id_foreign` FOREIGN KEY (`proj_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `logbook_entries`
--
ALTER TABLE `logbook_entries`
  ADD CONSTRAINT `logbook_entries_logbook_id_foreign` FOREIGN KEY (`logbook_id`) REFERENCES `logbooks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `logbook_entries_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_doc_refs`
--
ALTER TABLE `model_doc_refs`
  ADD CONSTRAINT `model_doc_refs_exam_task_id_foreign` FOREIGN KEY (`exam_task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ac_id_foreign` FOREIGN KEY (`ac_id`) REFERENCES `aircraft` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_spec_id_foreign` FOREIGN KEY (`spec_id`) REFERENCES `specifics` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_prod_id_foreign` FOREIGN KEY (`prod_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_top_id_foreign` FOREIGN KEY (`top_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_prod_id_foreign` FOREIGN KEY (`prod_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_sect_id_foreign` FOREIGN KEY (`sect_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_chap_id_foreign` FOREIGN KEY (`chap_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `trainee_doc_refs`
--
ALTER TABLE `trainee_doc_refs`
  ADD CONSTRAINT `trainee_doc_refs_lb_entry_id_foreign` FOREIGN KEY (`lb_entry_id`) REFERENCES `logbook_entries` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `trainee_notes`
--
ALTER TABLE `trainee_notes`
  ADD CONSTRAINT `trainee_notes_lb_entry_id_foreign` FOREIGN KEY (`lb_entry_id`) REFERENCES `logbook_entries` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `trainer_notes`
--
ALTER TABLE `trainer_notes`
  ADD CONSTRAINT `trainer_notes_lb_entry_id_foreign` FOREIGN KEY (`lb_entry_id`) REFERENCES `logbook_entries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
