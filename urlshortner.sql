-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 24, 2015 at 09:47 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `urlshortner`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_04_05_034900_create_users', 1),
('2015_04_08_172415_create_tables', 1),
('2015_04_09_034512_create_session_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE IF NOT EXISTS `urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortened` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`id`, `url`, `shortened`, `created_at`, `updated_at`) VALUES
(1, 'https://anikanstu@gmail.com', 'asbv', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'anikacste@gmail.com', '', '2015-04-18 08:41:47', '2015-04-18 08:41:47'),
(3, 'anika', '', '2015-04-18 08:44:02', '2015-04-18 08:44:02'),
(4, 'anika', '', '2015-04-18 08:47:16', '2015-04-18 08:47:16'),
(5, 'tutplus.com', '', '2015-04-18 09:01:49', '2015-04-18 09:01:49'),
(6, 'tutplus.com', '', '2015-04-18 09:21:28', '2015-04-18 09:21:28'),
(7, 'tutplus.com', '', '2015-04-18 09:22:21', '2015-04-18 09:22:21'),
(8, 'tutplus.com', '', '2015-04-18 09:23:07', '2015-04-18 09:23:07'),
(9, 'tutplus.com', '', '2015-04-18 09:24:26', '2015-04-18 09:24:26'),
(10, 'tutplus.com', '', '2015-04-18 09:27:58', '2015-04-18 09:27:58'),
(11, 'tutplus.com', '', '2015-04-18 09:28:17', '2015-04-18 09:28:17'),
(12, 'tutplus.com', '', '2015-04-18 09:32:07', '2015-04-18 09:32:07'),
(13, '{"url":"tutplus.com","updated_at":"2015-04-18 15:32:07","created_at":"2015-04-18 15:32:07","id":12}', '1kqa', '2015-04-18 09:32:07', '2015-04-18 09:32:07'),
(14, 'tutplus.com', '', '2015-04-18 09:33:07', '2015-04-18 09:33:07'),
(15, '{"url":"tutplus.com","updated_at":"2015-04-18 15:33:07","created_at":"2015-04-18 15:33:07","id":14}', '20ni', '2015-04-18 09:33:07', '2015-04-18 09:33:07'),
(16, 'tutplus.com', '14t1', '2015-04-18 09:36:52', '2015-04-18 09:36:52'),
(17, 'gmail.com', 'ivu', '2015-04-18 09:37:14', '2015-04-18 09:37:14'),
(18, 'gmail.com', 'f0j', '2015-04-18 09:39:00', '2015-04-18 09:39:00'),
(19, 'gmail.com', '17ut', '2015-04-18 09:41:14', '2015-04-18 09:41:14'),
(20, 'https://anikanstu@gmail.com', '1pgq', '2015-04-18 09:41:50', '2015-04-18 09:41:50'),
(21, 'https://facebook.com', 'tgs', '2015-04-18 09:43:11', '2015-04-18 09:43:11'),
(22, 'https://www.google.com', 'mgj', '2015-04-21 23:21:19', '2015-04-21 23:21:19'),
(23, 'https://www.google.com', '2110', '2015-04-21 23:28:12', '2015-04-21 23:28:12'),
(24, 'https://www.google.com', 'sc4', '2015-04-22 13:46:01', '2015-04-22 13:46:01'),
(25, 'https://www.google.com', '22hk', '2015-04-22 13:46:42', '2015-04-22 13:46:42'),
(26, 'https://www.google.com', '1095', '2015-04-22 21:51:28', '2015-04-22 21:51:28'),
(27, 'https://www.google.com', '8os', '2015-04-22 22:09:51', '2015-04-22 22:09:51'),
(28, 'https://www.google.com', '1dui', '2015-04-22 22:21:42', '2015-04-22 22:21:42'),
(29, 'https://www.google.com', 'wrs', '2015-04-22 22:23:26', '2015-04-22 22:23:26'),
(30, 'https://www.google.com', 'vpq', '2015-04-22 22:32:22', '2015-04-22 22:32:22'),
(31, 'https://www.google.com', '1dwp', '2015-04-22 22:32:30', '2015-04-22 22:32:30'),
(32, 'https://www.google.com', 'r0f', '2015-04-22 22:41:59', '2015-04-22 22:41:59'),
(33, 'https://www.google.com', '9bl', '2015-04-22 22:42:58', '2015-04-22 22:42:58'),
(34, 'https://www.google.com', 'ohc', '2015-04-22 22:47:49', '2015-04-22 22:47:49'),
(35, 'https://www.google.com', '13hv', '2015-04-22 22:48:31', '2015-04-22 22:48:31'),
(36, 'https://www.google.com', '12rp', '2015-04-22 23:09:20', '2015-04-22 23:09:20'),
(37, 'https://www.google.com', 'rw8', '2015-04-22 23:09:27', '2015-04-22 23:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
