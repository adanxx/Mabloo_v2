-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 13. 05 2019 kl. 18:42:20
-- Serverversion: 10.1.37-MariaDB
-- PHP-version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro_mvc`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'First post', 'This is a really interesting post.', '2019-05-08 15:02:49'),
(2, 'Second post', 'This is a fascinating post!', '2019-05-08 15:02:49'),
(3, 'Third post', 'This is a very informative post.', '2019-05-08 15:02:49');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `token`
--

CREATE TABLE `token` (
  `token_hash` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `token`
--

INSERT INTO `token` (`token_hash`, `user_id`, `expires_at`) VALUES
('f84e2ec3b06c88ab4b3a3d42fa85cdb44f7ffdfce452beb9a5f3272db4f3ebc8', 1, '2013-06-10 16:20:31');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(1) NOT NULL,
  `password_reset_hash` varchar(64) DEFAULT NULL,
  `password_reset_expires_at` datetime DEFAULT NULL,
  `activation_hash` varchar(64) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `password_reset_hash`, `password_reset_expires_at`, `activation_hash`, `is_active`, `created_at`) VALUES
(1, 'Bane', 'Bane47i@gmail.com', '$2y$10$b7F/igzbJdJPHnMX4IEF3erCNx8YqP75/.FAOYyqIUCHQhmK6X4pC', 1, NULL, NULL, NULL, 0, '2019-05-09 11:58:36'),
(6, 'Dave', 'demo477i@gmail.com', '$2y$10$0kS1XOYsJSdXZ1DoAZ1Px.icnTdb9BX9LzhhBuQqXm.s3YUkRuVhC', 0, NULL, NULL, NULL, 0, '2019-05-09 18:10:42');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indeks for tabel `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`token_hash`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_hash` (`password_reset_hash`),
  ADD UNIQUE KEY `activation_hash` (`activation_hash`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
