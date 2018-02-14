-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 14, 2018 at 04:18 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `top`
--
CREATE DATABASE IF NOT EXISTS `top` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `top`;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'PHP 5 presents many additional OOP (Object Oriented Programming) features.', 1, NULL, NULL),
(2, 1, 'PHP 5 presents MVC features.', 0, NULL, NULL),
(3, 1, 'It\'s same.', 0, NULL, NULL),
(4, 2, 'imagetypes() gives the image format and types supported by the current version of GD-PHP.', 1, NULL, NULL),
(5, 2, 'imagetypes() gives the image format and types supported by the current version of GL-PHP.', 0, NULL, NULL),
(6, 2, 'imagetypes() gives the image format and types supported by the current version of OOP-PHP.', 0, NULL, NULL),
(7, 3, 'To be able to display a human-readable result we use show().', 0, NULL, NULL),
(8, 3, 'To be able to display a human-readable result we use print_r().', 1, NULL, NULL),
(9, 3, 'To be able to display a human-readable result we use echo.', 0, NULL, NULL),
(10, 4, 'file_get_contents() lets reading a file and storing it in a int variable.', 0, NULL, NULL),
(11, 4, 'file_get_contents() lets reading a file and storing it in a boolean variable.', 0, NULL, NULL),
(12, 4, 'file_get_contents() lets reading a file and storing it in a string variable.', 1, NULL, NULL),
(13, 5, 'unset()', 1, NULL, NULL),
(14, 5, 'get()', 0, NULL, NULL),
(15, 5, 'unlink()', 0, NULL, NULL),
(16, 6, 'Computer', 0, NULL, NULL),
(17, 6, 'Framework', 1, NULL, NULL),
(18, 6, 'Internet explorer', 0, NULL, NULL),
(19, 7, 'Composer is a dependency manager for PHP.', 1, NULL, NULL),
(20, 7, 'Composer is a dependency manager for Laravel.', 0, NULL, NULL),
(21, 7, 'Composer is a dependency manager for Angluar.', 0, NULL, NULL),
(22, 8, 'Model–view–control', 0, NULL, NULL),
(23, 8, 'Model–view–components', 0, NULL, NULL),
(24, 8, 'Model–view–controller', 1, NULL, NULL),
(25, 9, 'Lumen is PHP micro framework', 1, NULL, NULL),
(26, 9, 'Lumen is PHP micro component', 0, NULL, NULL),
(27, 9, 'Lumen is PHP', 0, NULL, NULL),
(28, 10, 'count()', 0, NULL, NULL),
(29, 10, 'push()', 1, NULL, NULL),
(30, 10, 'avg()', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2018_02_13_190424_create_questions_table', 1),
(18, '2018_02_13_190506_create_answers_table', 1),
(19, '2018_02_13_190612_create_users_table', 1),
(20, '2018_02_13_195740_create_tests_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `points`, `question`, `for`, `created_at`, `updated_at`) VALUES
(1, 2, 'What is the main difference between PHP 4 and PHP 5?', 'PHP', NULL, NULL),
(2, 4, 'What is the use of the function ‘imagetypes()’?', 'PHP', NULL, NULL),
(3, 3, 'How can we display information of a variable and readable by human with PHP?', 'PHP', NULL, NULL),
(4, 2, 'What is the function file_get_contents() usefull for?', 'PHP', NULL, NULL),
(5, 3, 'Witch function is dedicated for variable management and will make a variable undefined', 'PHP', NULL, NULL),
(6, 1, 'What is Laravel?', 'Laravel', NULL, NULL),
(7, 2, 'What is Composer?', 'Laravel', NULL, NULL),
(8, 3, 'MVC is:', 'Laravel', NULL, NULL),
(9, 4, 'What is Lumen?', 'Laravel', NULL, NULL),
(10, 4, 'Witch Aggregates methods privided is not correct?', 'Laravel', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 'https://cdn0.iconfinder.com/data/icons/document-file-types/512/php-512.png', '2018-02-13 20:21:44', '2018-02-13 20:21:46'),
(2, 'Laravel', 'https://www.ladybirdweb.com/wp-content/uploads/2016/03/laravel-1.png', '2018-02-13 20:22:16', '2018-02-13 20:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) DEFAULT NULL,
  `test` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `score`, `test`, `created_at`, `updated_at`) VALUES
(39, 'Tomas', 14, 'Laravel', '2018-02-14 01:06:33', '2018-02-14 01:06:33'),
(40, 'Jonas', 14, 'Laravel', '2018-02-14 01:07:01', '2018-02-14 01:07:01'),
(41, 'Giedre', 14, 'PHP', '2018-02-14 01:07:59', '2018-02-14 01:07:59'),
(42, 'Petras', 2, 'PHP', '2018-02-14 01:10:15', '2018-02-14 01:10:15'),
(43, 'Matas', 11, 'PHP', '2018-02-14 01:10:41', '2018-02-14 01:10:41'),
(44, 'Jurga', 4, 'Laravel', '2018-02-14 01:11:02', '2018-02-14 01:11:02'),
(46, 'Vytas', 14, 'Laravel', '2018-02-14 01:15:09', '2018-02-14 01:15:09'),
(47, 'Anonim', 7, 'Laravel', '2018-02-14 01:16:36', '2018-02-14 01:16:36'),
(48, 'Wayne', 11, 'PHP', '2018-02-14 01:17:29', '2018-02-14 01:17:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
