-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2017 at 05:07 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ladybug`
--

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id_edited` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `position`, `name`, `lang_code`, `user_id`, `user_id_edited`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'English', 'gb', NULL, NULL, '2016-07-05 03:06:33', '2016-07-05 03:06:33', NULL),
(2, NULL, 'Српски', 'rs', NULL, NULL, '2016-07-05 03:06:33', '2016-07-05 03:06:33', NULL),
(3, NULL, 'Bosanski', 'ba', NULL, NULL, '2016-07-05 03:06:33', '2016-07-05 03:06:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id_edited` int(10) UNSIGNED DEFAULT NULL,
  `log_category_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_header` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_server` text COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `user_id_edited`, `log_category_id`, `type`, `title`, `content`, `meta_header`, `meta_server`, `source`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, NULL, NULL, 'test title', 'test', 'a:12:{s:4:"host";a:1:{i:0;s:7:"ladybug";}s:10:"connection";a:1:{i:0;s:10:"keep-alive";}s:14:"content-length";a:1:{i:0;s:2:"29";}s:13:"postman-token";a:1:{i:0;s:36:"cbffe64f-40a8-3980-336e-8b66db05bf11";}s:13:"cache-control";a:1:{i:0;s:8:"no-cache";}s:6:"origin";a:1:{i:0;s:51:"chrome-extension://aicmkgpgakddgnaphhhpliifpcfhicfo";}s:10:"user-agent";a:1:{i:0;s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36";}s:12:"content-type";a:1:{i:0;s:33:"application/x-www-form-urlencoded";}s:6:"accept";a:1:{i:0;s:3:"*/*";}s:3:"dnt";a:1:{i:0;s:1:"1";}s:15:"accept-encoding";a:1:{i:0;s:13:"gzip, deflate";}s:15:"accept-language";a:1:{i:0;s:23:"en-US,en;q=0.8,bg;q=0.6";}}', 'a:59:{s:25:"REDIRECT_REDIRECT_MIBDIRS";s:24:"C:/xampp/php/extras/mibs";s:28:"REDIRECT_REDIRECT_MYSQL_HOME";s:16:"\\xampp\\mysql\\bin";s:30:"REDIRECT_REDIRECT_OPENSSL_CONF";s:31:"C:/xampp/apache/bin/openssl.cnf";s:38:"REDIRECT_REDIRECT_PHP_PEAR_SYSCONF_DIR";s:10:"\\xampp\\php";s:23:"REDIRECT_REDIRECT_PHPRC";s:10:"\\xampp\\php";s:21:"REDIRECT_REDIRECT_TMP";s:10:"\\xampp\\tmp";s:24:"REDIRECT_REDIRECT_STATUS";s:3:"200";s:16:"REDIRECT_MIBDIRS";s:24:"C:/xampp/php/extras/mibs";s:19:"REDIRECT_MYSQL_HOME";s:16:"\\xampp\\mysql\\bin";s:21:"REDIRECT_OPENSSL_CONF";s:31:"C:/xampp/apache/bin/openssl.cnf";s:29:"REDIRECT_PHP_PEAR_SYSCONF_DIR";s:10:"\\xampp\\php";s:14:"REDIRECT_PHPRC";s:10:"\\xampp\\php";s:12:"REDIRECT_TMP";s:10:"\\xampp\\tmp";s:15:"REDIRECT_STATUS";s:3:"200";s:7:"MIBDIRS";s:24:"C:/xampp/php/extras/mibs";s:10:"MYSQL_HOME";s:16:"\\xampp\\mysql\\bin";s:12:"OPENSSL_CONF";s:31:"C:/xampp/apache/bin/openssl.cnf";s:20:"PHP_PEAR_SYSCONF_DIR";s:10:"\\xampp\\php";s:5:"PHPRC";s:10:"\\xampp\\php";s:3:"TMP";s:10:"\\xampp\\tmp";s:9:"HTTP_HOST";s:7:"ladybug";s:15:"HTTP_CONNECTION";s:10:"keep-alive";s:14:"CONTENT_LENGTH";s:2:"29";s:18:"HTTP_POSTMAN_TOKEN";s:36:"cbffe64f-40a8-3980-336e-8b66db05bf11";s:18:"HTTP_CACHE_CONTROL";s:8:"no-cache";s:11:"HTTP_ORIGIN";s:51:"chrome-extension://aicmkgpgakddgnaphhhpliifpcfhicfo";s:15:"HTTP_USER_AGENT";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36";s:12:"CONTENT_TYPE";s:33:"application/x-www-form-urlencoded";s:11:"HTTP_ACCEPT";s:3:"*/*";s:8:"HTTP_DNT";s:1:"1";s:20:"HTTP_ACCEPT_ENCODING";s:13:"gzip, deflate";s:20:"HTTP_ACCEPT_LANGUAGE";s:23:"en-US,en;q=0.8,bg;q=0.6";s:10:"SystemRoot";s:10:"C:\\WINDOWS";s:7:"COMSPEC";s:27:"C:\\WINDOWS\\system32\\cmd.exe";s:7:"PATHEXT";s:62:".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.RB;.RBW";s:6:"WINDIR";s:10:"C:\\WINDOWS";s:16:"SERVER_SIGNATURE";s:93:"<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.15 Server at ladybug Port 80</address>\n";s:15:"SERVER_SOFTWARE";s:47:"Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.15";s:11:"SERVER_NAME";s:7:"ladybug";s:11:"SERVER_ADDR";s:9:"127.0.0.1";s:11:"SERVER_PORT";s:2:"80";s:11:"REMOTE_ADDR";s:9:"127.0.0.1";s:13:"DOCUMENT_ROOT";s:23:"C:/metodi.local/ladybug";s:14:"REQUEST_SCHEME";s:4:"http";s:14:"CONTEXT_PREFIX";s:0:"";s:21:"CONTEXT_DOCUMENT_ROOT";s:23:"C:/metodi.local/ladybug";s:12:"SERVER_ADMIN";s:20:"postmaster@localhost";s:15:"SCRIPT_FILENAME";s:40:"C:/metodi.local/ladybug/public/index.php";s:11:"REMOTE_PORT";s:5:"62802";s:12:"REDIRECT_URL";s:29:"http://ladybug/public/api/log";s:17:"GATEWAY_INTERFACE";s:7:"CGI/1.1";s:15:"SERVER_PROTOCOL";s:8:"HTTP/1.1";s:14:"REQUEST_METHOD";s:4:"POST";s:12:"QUERY_STRING";s:0:"";s:11:"REQUEST_URI";s:8:"/api/log";s:11:"SCRIPT_NAME";s:17:"/public/index.php";s:8:"PHP_SELF";s:17:"/public/index.php";s:18:"REQUEST_TIME_FLOAT";d:1493727696.8110001087188720703125;s:12:"REQUEST_TIME";i:1493727696;}', NULL, '2017-05-02 09:21:37', '2017-05-02 09:21:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log_categories`
--

CREATE TABLE `log_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id_edited` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `log_categories`
--

INSERT INTO `log_categories` (`id`, `position`, `user_id`, `user_id_edited`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 1, 1, 'XHR', '2016-07-05 03:06:34', '2016-07-05 07:37:01', NULL),
(2, NULL, 1, 1, 'Messages', '2016-07-05 03:06:34', '2016-07-05 07:39:45', NULL),
(5, NULL, 1, NULL, 'History', '2016-07-05 07:53:11', '2016-07-05 07:53:20', '2016-07-05 07:53:20'),
(6, NULL, 1, NULL, 'history', '2016-07-05 07:53:33', '2016-07-05 07:53:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_10_18_195027_create_languages_table', 1),
('2014_10_18_225005_create_article_categories_table', 1),
('2014_10_18_225505_create_articles_table', 1),
('2014_10_18_225928_create_photo_albums_table', 1),
('2014_10_18_231619_create_photos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `confirmation_code`, `confirmed`, `admin`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin User', 'admin', 'mderibanov@minervanetworks.com', '$2y$10$iQVs919fT15..gE3CkYinuyt6aEI4D0YriYZvZ.cSYe23ON4Bv3U.', '8de6f140d7a57b3290e0a9326c104cc4', 1, 1, 'Gi4eN7SyA3Hzwe4e5oocVl63hsDIh5f22b7GoGdTULAXWbtZbtJH0wRQL544', '2016-07-05 03:06:33', '2016-07-06 07:15:05', NULL),
(2, 'Miryana', '', 'mslavova@minervanetworks.com', '$2y$10$iQKTwkrKK7DbqrhrIFjvhe0scQubSZk13hTjDLk9lAmge/r9SShjS', '', 0, 0, NULL, '2016-07-14 13:35:06', '2016-07-14 13:35:06', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_name_unique` (`name`),
  ADD UNIQUE KEY `languages_lang_code_unique` (`lang_code`),
  ADD KEY `languages_user_id_foreign` (`user_id`),
  ADD KEY `languages_user_id_edited_foreign` (`user_id_edited`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_user_id_edited_foreign` (`user_id_edited`),
  ADD KEY `articles_article_category_id_foreign` (`log_category_id`);

--
-- Indexes for table `log_categories`
--
ALTER TABLE `log_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_categories_user_id_foreign` (`user_id`),
  ADD KEY `article_categories_user_id_edited_foreign` (`user_id_edited`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `log_categories`
--
ALTER TABLE `log_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `languages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `articles_article_category_id_foreign` FOREIGN KEY (`log_category_id`) REFERENCES `log_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `articles_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `log_categories`
--
ALTER TABLE `log_categories`
  ADD CONSTRAINT `article_categories_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `article_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
