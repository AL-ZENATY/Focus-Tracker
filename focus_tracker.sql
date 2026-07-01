-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2026 at 08:13 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `focus_tracker`
--
CREATE DATABASE IF NOT EXISTS `focus_tracker` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `focus_tracker`;

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE IF NOT EXISTS `activity_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `batch_id` varchar(255) NOT NULL,
  `source` enum('console','extension') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `site_url` varchar(500) DEFAULT NULL,
  `window_title` varchar(500) DEFAULT NULL,
  `category` enum('productive','distracted','unknown') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `activity_date` date NOT NULL,
  `started_at` datetime NOT NULL,
  `ended_at` datetime NOT NULL,
  `duration_seconds` int NOT NULL,
  `processed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_date` (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `userId`, `batch_id`, `source`, `app_name`, `site_url`, `window_title`, `category`, `activity_date`, `started_at`, `ended_at`, `duration_seconds`, `processed`, `created_at`) VALUES
(242, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / activity_logs | phpMyAdmin 5.2.0', 'unknown', '2026-06-01', '2026-06-01 07:59:50', '2026-06-01 07:59:53', 4, 0, NULL),
(243, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / activity_logs | phpMyAdmin 5.2.0', 'unknown', '2026-06-01', '2026-06-01 07:59:53', '2026-06-01 07:59:55', 2, 0, NULL),
(244, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / activity_logs | phpMyAdmin 5.2.0', 'unknown', '2026-06-01', '2026-06-01 07:59:55', '2026-06-01 07:59:58', 3, 0, NULL),
(245, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / activity_logs | phpMyAdmin 5.2.0', 'unknown', '2026-06-01', '2026-06-01 07:59:58', '2026-06-01 08:00:01', 3, 0, NULL),
(246, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / activity_logs | phpMyAdmin 5.2.0', 'unknown', '2026-06-01', '2026-06-01 08:00:01', '2026-06-01 08:00:03', 2, 0, NULL),
(247, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / activity_logs | phpMyAdmin 5.2.0', 'unknown', '2026-06-01', '2026-06-01 08:00:03', '2026-06-01 08:00:05', 2, 0, NULL),
(248, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / activity_logs | phpMyAdmin 5.2.0', 'unknown', '2026-06-01', '2026-06-01 08:00:05', '2026-06-01 08:00:05', 0, 0, NULL),
(249, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-01', '2026-06-01 08:00:05', '2026-06-01 08:00:09', 4, 0, NULL),
(250, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-01', '2026-06-01 08:00:09', '2026-06-01 08:00:53', 44, 0, NULL),
(251, 1, '1', 'extension', NULL, 'edge', 'Extensions', 'unknown', '2026-06-01', '2026-06-01 08:00:53', '2026-06-01 08:00:59', 7, 0, NULL),
(252, 1, '1', 'extension', NULL, 'edge', 'Extensions', 'unknown', '2026-06-01', '2026-06-01 08:14:14', '2026-06-01 08:14:18', 4, 0, NULL),
(253, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-01', '2026-06-01 08:14:18', '2026-06-01 08:14:22', 5, 0, NULL),
(254, 1, '1', 'extension', NULL, 'teams.cloud.microsoft', '(1) Chat | Ctrl+Alt+Elite | Microsoft Teams', 'unknown', '2026-06-01', '2026-06-01 08:14:22', '2026-06-01 08:14:33', 11, 0, NULL),
(255, 1, '1', 'extension', NULL, 'chatgpt.com', 'URL Domain Parsing', 'unknown', '2026-06-01', '2026-06-01 08:14:33', '2026-06-01 08:14:35', 1, 0, NULL),
(256, 1, '1', 'extension', NULL, 'teams.cloud.microsoft', '(1) Chat | Ctrl+Alt+Elite | Microsoft Teams', 'unknown', '2026-06-01', '2026-06-01 08:14:35', '2026-06-01 08:14:38', 3, 0, NULL),
(257, 1, '1', 'extension', NULL, 'teams.cloud.microsoft', '(1) Chat | Ctrl+Alt+Elite | Microsoft Teams', 'unknown', '2026-06-01', '2026-06-01 08:14:38', '2026-06-01 08:15:00', 22, 0, NULL),
(258, 1, '1', 'extension', NULL, 'teams.cloud.microsoft', '(1) Teams and Channels | General | Microsoft Teams', 'unknown', '2026-06-01', '2026-06-01 08:15:00', '2026-06-01 08:15:04', 4, 0, NULL),
(259, 1, '1', 'extension', NULL, 'edge', 'Extensions', 'unknown', '2026-06-01', '2026-06-01 08:15:04', '2026-06-01 08:15:06', 2, 0, NULL),
(260, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-01', '2026-06-01 08:15:06', '2026-06-01 08:15:07', 1, 0, NULL),
(261, 1, '1', 'extension', NULL, 'edge', 'Extensions', 'unknown', '2026-06-01', '2026-06-01 08:15:07', '2026-06-01 08:15:11', 4, 0, NULL),
(262, 1, '1', 'extension', NULL, 'edge', 'Extensions', 'unknown', '2026-06-03', '2026-06-03 10:09:02', '2026-06-03 10:09:08', 6, 0, NULL),
(263, 1, '1', 'extension', NULL, 'large.nl', 'Mijn winkelmandje', 'unknown', '2026-06-03', '2026-06-03 10:09:08', '2026-06-03 10:09:12', 4, 0, NULL),
(264, 1, '1', 'extension', NULL, 'teams.microsoft.com', 'Microsoft Teams - fout', 'productive', '2026-06-03', '2026-06-03 10:09:12', '2026-06-03 10:09:14', 2, 0, NULL),
(265, 1, '1', 'extension', NULL, 'sickboi.com', 'SB Bracelet Chain', 'unknown', '2026-06-03', '2026-06-03 10:09:14', '2026-06-03 10:09:18', 3, 0, NULL),
(266, 1, '1', 'extension', NULL, 'mail.google.com', 'Inbox (4,867) - steehouwerjoey@gmail.com - Gmail', 'unknown', '2026-06-03', '2026-06-03 10:09:18', '2026-06-03 10:09:39', 21, 0, NULL),
(267, 1, '1', 'extension', NULL, 'edge', 'Extensions', 'unknown', '2026-06-03', '2026-06-03 10:13:07', '2026-06-03 10:13:12', 5, 0, NULL),
(268, 1, '1', 'extension', NULL, 'morsecode.world', 'Morse Code Translator | Morse Code World', 'productive', '2026-06-03', '2026-06-03 10:13:12', '2026-06-03 10:13:14', 1, 0, NULL),
(269, 1, '1', 'extension', NULL, 'teams.cloud.microsoft', 'Chat | Ctrl+Alt+Elite | Microsoft Teams', 'unknown', '2026-06-03', '2026-06-03 10:13:14', '2026-06-03 10:13:15', 1, 0, NULL),
(270, 1, '1', 'extension', NULL, 'large.nl', 'Mijn winkelmandje', 'unknown', '2026-06-03', '2026-06-03 10:13:15', '2026-06-03 10:13:16', 1, 0, NULL),
(271, 1, '1', 'extension', NULL, 'teams.microsoft.com', 'Microsoft Teams - fout', 'productive', '2026-06-03', '2026-06-03 10:13:16', '2026-06-03 10:13:19', 2, 0, NULL),
(272, 1, '1', 'extension', NULL, 'edge', 'Extensions', 'unknown', '2026-06-03', '2026-06-03 10:14:45', '2026-06-03 10:14:46', 1, 0, NULL),
(273, 1, '1', 'extension', NULL, 'morsecode.world', 'Morse Code Translator | Morse Code World', 'productive', '2026-06-03', '2026-06-03 10:14:46', '2026-06-03 10:14:48', 2, 0, NULL),
(274, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-03', '2026-06-03 10:14:48', '2026-06-03 10:14:48', 1, 0, NULL),
(275, 1, '1', 'extension', NULL, 'teams.microsoft.com', 'Microsoft Teams - fout', 'productive', '2026-06-03', '2026-06-03 10:14:48', '2026-06-03 10:14:50', 1, 0, NULL),
(276, 1, '1', 'extension', NULL, 'large.nl', 'Mijn winkelmandje', 'unknown', '2026-06-03', '2026-06-03 10:14:50', '2026-06-03 10:14:51', 1, 0, NULL),
(277, 1, '9c014d86-4d5d-4ddc-b26f-23abf37a6f9d', 'console', 'WindowsTerminal', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 12:24:45', '2026-06-03 12:24:46', 1, 0, '2026-06-03 10:24:46'),
(278, 1, '9c014d86-4d5d-4ddc-b26f-23abf37a6f9d', 'console', 'msedge', NULL, NULL, 'distracted', '2026-06-03', '2026-06-03 12:24:46', '2026-06-03 12:24:49', 3, 0, '2026-06-03 10:24:49'),
(279, 1, '9c014d86-4d5d-4ddc-b26f-23abf37a6f9d', 'console', 'WindowsTerminal', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 12:24:49', '2026-06-03 12:24:51', 2, 0, '2026-06-03 10:24:51'),
(280, 1, '9c014d86-4d5d-4ddc-b26f-23abf37a6f9d', 'console', 'Notepad', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 12:24:51', '2026-06-03 12:24:53', 2, 0, '2026-06-03 10:24:53'),
(281, 1, '9c014d86-4d5d-4ddc-b26f-23abf37a6f9d', 'console', 'WindowsTerminal', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 12:24:53', '2026-06-03 12:24:56', 3, 0, '2026-06-03 10:24:56'),
(282, 1, '9c014d86-4d5d-4ddc-b26f-23abf37a6f9d', 'console', 'Spotify', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 12:24:56', '2026-06-03 12:24:59', 3, 0, '2026-06-03 10:24:59'),
(283, 1, '9c014d86-4d5d-4ddc-b26f-23abf37a6f9d', 'console', 'GitHubDesktop', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 12:24:59', '2026-06-03 12:25:01', 2, 0, '2026-06-03 10:25:01'),
(284, 1, 'b8773624-f3a8-45f8-a990-949830c78987', 'console', 'WindowsTerminal', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 12:25:45', '2026-06-03 12:25:47', 2, 0, '2026-06-03 10:25:47'),
(285, 1, 'b8773624-f3a8-45f8-a990-949830c78987', 'console', 'GitHubDesktop', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 12:25:47', '2026-06-03 12:25:50', 3, 0, '2026-06-03 10:25:50'),
(286, 1, 'b8773624-f3a8-45f8-a990-949830c78987', 'console', 'WhatsApp.Root', NULL, NULL, 'distracted', '2026-06-03', '2026-06-03 12:25:50', '2026-06-03 12:25:53', 3, 0, '2026-06-03 10:25:53'),
(287, 1, 'b8773624-f3a8-45f8-a990-949830c78987', 'console', 'Spotify', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 12:25:53', '2026-06-03 12:25:55', 2, 0, '2026-06-03 10:25:55'),
(288, 1, 'b8773624-f3a8-45f8-a990-949830c78987', 'console', 'devenv', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 12:25:55', '2026-06-03 12:25:57', 2, 0, '2026-06-03 10:25:57'),
(289, 1, '2e6d2e5c-6ec7-48f8-a7c6-f1c45af63640', 'console', 'WindowsTerminal', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 12:28:41', '2026-06-03 12:28:44', 3, 0, '2026-06-03 10:28:44'),
(290, 1, '2e6d2e5c-6ec7-48f8-a7c6-f1c45af63640', 'console', 'devenv', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 12:28:44', '2026-06-03 12:28:47', 3, 0, '2026-06-03 10:28:47'),
(291, 1, '2e6d2e5c-6ec7-48f8-a7c6-f1c45af63640', 'console', 'GitHubDesktop', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 12:28:47', '2026-06-03 12:28:49', 2, 0, '2026-06-03 10:28:49'),
(292, 1, '2e6d2e5c-6ec7-48f8-a7c6-f1c45af63640', 'console', 'devenv', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 12:28:49', '2026-06-03 12:28:51', 2, 0, '2026-06-03 10:28:51'),
(293, 1, '2e6d2e5c-6ec7-48f8-a7c6-f1c45af63640', 'console', 'Code', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 12:28:51', '2026-06-03 12:28:53', 2, 0, '2026-06-03 10:28:53'),
(294, 1, '2e6d2e5c-6ec7-48f8-a7c6-f1c45af63640', 'console', 'devenv', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 12:28:53', '2026-06-03 12:28:55', 2, 0, '2026-06-03 10:28:55'),
(295, 1, '2e6d2e5c-6ec7-48f8-a7c6-f1c45af63640', 'console', 'WindowsTerminal', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 12:28:55', '2026-06-03 12:29:00', 5, 0, '2026-06-03 10:29:00'),
(296, 1, '2e6d2e5c-6ec7-48f8-a7c6-f1c45af63640', 'console', 'Code', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 12:29:00', '2026-06-03 12:29:03', 3, 0, '2026-06-03 10:29:03'),
(297, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'WindowsTerminal', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 13:20:22', '2026-06-03 13:20:24', 2, 0, '2026-06-03 11:20:24'),
(298, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'msedge', NULL, NULL, 'distracted', '2026-06-03', '2026-06-03 13:20:24', '2026-06-03 13:20:58', 34, 0, '2026-06-03 11:20:58'),
(299, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'SearchHost', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 13:20:58', '2026-06-03 13:21:01', 3, 0, '2026-06-03 11:21:01'),
(300, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'ApplicationFrameHost', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 13:21:01', '2026-06-03 13:21:53', 51, 0, '2026-06-03 11:21:53'),
(301, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'msedge', NULL, NULL, 'distracted', '2026-06-03', '2026-06-03 13:21:53', '2026-06-03 13:23:04', 71, 0, '2026-06-03 11:23:04'),
(302, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'explorer', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 13:23:04', '2026-06-03 13:23:05', 1, 0, '2026-06-03 11:23:05'),
(303, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'WhatsApp.Root', NULL, NULL, 'distracted', '2026-06-03', '2026-06-03 13:23:05', '2026-06-03 13:23:20', 15, 0, '2026-06-03 11:23:20'),
(304, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'WindowsTerminal', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 13:23:20', '2026-06-03 13:23:24', 4, 0, '2026-06-03 11:23:24'),
(305, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'ApplicationFrameHost', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 13:23:24', '2026-06-03 13:23:32', 8, 0, '2026-06-03 11:23:32'),
(306, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'ShellExperienceHost', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 13:23:32', '2026-06-03 13:23:33', 1, 0, '2026-06-03 11:23:33'),
(307, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'WhatsApp.Root', NULL, NULL, 'distracted', '2026-06-03', '2026-06-03 13:23:33', '2026-06-03 13:23:43', 9, 0, '2026-06-03 11:23:43'),
(308, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'ApplicationFrameHost', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 13:23:43', '2026-06-03 13:24:23', 40, 0, '2026-06-03 11:24:23'),
(309, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'WhatsApp.Root', NULL, NULL, 'distracted', '2026-06-03', '2026-06-03 13:24:23', '2026-06-03 13:24:28', 5, 0, '2026-06-03 11:24:28'),
(310, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'msedge', NULL, NULL, 'distracted', '2026-06-03', '2026-06-03 13:24:28', '2026-06-03 13:25:36', 67, 0, '2026-06-03 11:25:36'),
(311, 1, 'd1a350c6-9a4a-484d-9fff-b817ea290f74', 'console', 'explorer', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 13:25:36', '2026-06-03 13:25:39', 3, 0, '2026-06-03 11:25:39'),
(312, 1, '78fa9536-6984-4332-9fdd-55ff68376e5f', 'console', 'msedge', NULL, NULL, 'distracted', '2026-06-03', '2026-06-03 13:28:42', '2026-06-03 13:28:57', 15, 0, '2026-06-03 11:28:57'),
(313, 1, '78fa9536-6984-4332-9fdd-55ff68376e5f', 'console', 'WindowsTerminal', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 13:28:57', '2026-06-03 13:28:59', 2, 0, '2026-06-03 11:28:59'),
(314, 1, '78fa9536-6984-4332-9fdd-55ff68376e5f', 'console', 'msedge', NULL, NULL, 'distracted', '2026-06-03', '2026-06-03 13:28:59', '2026-06-03 13:29:35', 36, 0, '2026-06-03 11:29:35'),
(315, 1, '78fa9536-6984-4332-9fdd-55ff68376e5f', 'console', 'WindowsTerminal', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 13:29:35', '2026-06-03 13:29:37', 2, 0, '2026-06-03 11:29:37'),
(316, 1, '78fa9536-6984-4332-9fdd-55ff68376e5f', 'console', 'explorer', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 13:29:37', '2026-06-03 13:29:38', 1, 0, '2026-06-03 11:29:38'),
(317, 1, '78fa9536-6984-4332-9fdd-55ff68376e5f', 'console', 'WhatsApp.Root', NULL, NULL, 'distracted', '2026-06-03', '2026-06-03 13:29:38', '2026-06-03 13:29:39', 1, 0, '2026-06-03 11:29:39'),
(318, 1, '78fa9536-6984-4332-9fdd-55ff68376e5f', 'console', 'WindowsTerminal', NULL, NULL, 'productive', '2026-06-03', '2026-06-03 13:29:39', '2026-06-03 13:29:59', 20, 0, '2026-06-03 11:29:59'),
(319, 1, '78fa9536-6984-4332-9fdd-55ff68376e5f', 'console', 'GitHubDesktop', NULL, NULL, 'unknown', '2026-06-03', '2026-06-03 13:29:59', '2026-06-03 13:30:44', 44, 0, '2026-06-03 11:30:44'),
(320, 1, '78fa9536-6984-4332-9fdd-55ff68376e5f', 'console', 'msedge', NULL, NULL, 'distracted', '2026-06-03', '2026-06-03 13:30:44', '2026-06-03 13:30:48', 4, 0, '2026-06-03 11:30:48'),
(321, 1, '1', 'extension', NULL, 'edge', 'Extensions', 'unknown', '2026-06-03', '2026-06-03 11:31:13', '2026-06-03 11:31:16', 3, 0, NULL),
(322, 1, '1', 'extension', NULL, 'gemini.google.com', 'Confident, Careless, Unbothered Vibe - Google Gemini', 'unknown', '2026-06-03', '2026-06-03 11:31:16', '2026-06-03 11:31:21', 5, 0, NULL),
(323, 1, '1', 'extension', NULL, 'chatgpt.com', 'Wearing a Hood Outdoors', 'unknown', '2026-06-03', '2026-06-03 11:31:21', '2026-06-03 11:32:02', 41, 0, NULL),
(324, 1, '1', 'extension', NULL, 'gemini.google.com', 'Confident, Careless, Unbothered Vibe - Google Gemini', 'unknown', '2026-06-03', '2026-06-03 11:32:02', '2026-06-03 11:32:04', 2, 0, NULL),
(325, 1, '1', 'extension', NULL, 'edge', 'New tab', 'unknown', '2026-06-03', '2026-06-03 11:32:04', '2026-06-03 11:32:07', 2, 0, NULL),
(326, 1, '1', 'extension', NULL, 'mail.google.com', 'Inbox (4,868) - steehouwerjoey@gmail.com - Gmail', 'unknown', '2026-06-03', '2026-06-03 11:32:07', '2026-06-03 11:32:10', 3, 0, NULL),
(327, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-03', '2026-06-03 11:32:10', '2026-06-03 11:32:16', 6, 0, NULL),
(328, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-03', '2026-06-03 11:32:16', '2026-06-03 11:32:16', 0, 0, NULL),
(329, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-03', '2026-06-03 11:32:16', '2026-06-03 11:32:33', 17, 0, NULL),
(330, 1, '1', 'extension', NULL, 'edge', 'New tab', 'unknown', '2026-06-03', '2026-06-03 11:32:33', '2026-06-03 11:34:48', 135, 0, NULL),
(331, 1, '1', 'extension', NULL, 'edge', 'Extensions', 'unknown', '2026-06-03', '2026-06-03 11:34:48', '2026-06-03 11:34:55', 8, 0, NULL),
(332, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-03', '2026-06-03 11:34:55', '2026-06-03 11:35:04', 8, 0, NULL),
(333, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-03', '2026-06-03 11:35:04', '2026-06-03 11:35:15', 11, 0, NULL),
(334, 1, '1', 'extension', NULL, 'youtube.com', 'YouTube', 'distracted', '2026-06-03', '2026-06-03 11:35:15', '2026-06-03 11:35:18', 3, 0, NULL),
(335, 1, '1', 'extension', NULL, 'youtube.com', '(9) YouTube', 'distracted', '2026-06-03', '2026-06-03 11:35:18', '2026-06-03 11:35:18', 0, 0, NULL),
(336, 1, '1', 'extension', NULL, 'youtube.com', '(9) YouTube', 'distracted', '2026-06-03', '2026-06-03 11:35:18', '2026-06-03 11:35:22', 5, 0, NULL),
(337, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-03', '2026-06-03 11:35:22', '2026-06-03 11:35:25', 3, 0, NULL),
(338, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-03', '2026-06-03 11:35:25', '2026-06-03 11:35:25', 0, 0, NULL),
(339, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-03', '2026-06-03 11:35:25', '2026-06-03 11:35:39', 14, 0, NULL),
(340, 1, '1', 'extension', NULL, 'youtube.com', '(9) YouTube', 'distracted', '2026-06-03', '2026-06-03 11:35:39', '2026-06-03 11:36:02', 23, 0, NULL),
(341, 1, '1', 'extension', NULL, 'localhost', 'localhost / localhost / focus_tracker / reports | phpMyAdmin 5.2.0', 'unknown', '2026-06-03', '2026-06-03 11:36:02', '2026-06-03 11:36:04', 3, 0, NULL),
(342, 1, '1', 'extension', NULL, 'sickboi.com', 'SB Bracelet Chain', 'unknown', '2026-06-03', '2026-06-03 11:36:04', '2026-06-03 11:36:12', 7, 0, NULL),
(343, 1, '1', 'extension', NULL, 'instagram.com', 'Instagram', 'distracted', '2026-06-03', '2026-06-03 11:36:12', '2026-06-03 11:36:36', 24, 0, NULL),
(344, 1, '1', 'extension', NULL, 'mail.google.com', 'Inbox (4,868) - steehouwerjoey@gmail.com - Gmail', 'unknown', '2026-06-03', '2026-06-03 11:36:36', '2026-06-03 11:36:39', 3, 0, NULL),
(345, 1, '1', 'extension', NULL, 'teams.microsoft.com', 'Microsoft Teams - fout', 'productive', '2026-06-03', '2026-06-03 11:36:39', '2026-06-03 11:37:13', 34, 0, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `data`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `data`;
CREATE TABLE IF NOT EXISTS `data` (
`app_useage_json` json
,`category_useage_json` json
,`created_at` timestamp
,`distracted_seconds` int
,`focus_switches` int
,`hourly_distribution_json` json
,`id` int
,`most_used_app` varchar(255)
,`most_used_site` varchar(255)
,`neutral_seconds` int
,`productive_seconds` int
,`report_date` date
,`session_stats_json` json
,`total_tracked_seconds` int
,`userId` int
);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `source` enum('console','extension') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `total_tracked_seconds` int NOT NULL DEFAULT '0',
  `productive_seconds` int NOT NULL DEFAULT '0',
  `distracted_seconds` int NOT NULL DEFAULT '0',
  `neutral_seconds` int NOT NULL DEFAULT '0',
  `focus_switches` int NOT NULL DEFAULT '0',
  `most_used_app` varchar(255) DEFAULT NULL,
  `most_used_site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `app_useage_json` json DEFAULT NULL,
  `category_useage_json` json DEFAULT NULL,
  `hourly_distribution_json` json DEFAULT NULL,
  `session_stats_json` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `userId`, `source`, `report_date`, `total_tracked_seconds`, `productive_seconds`, `distracted_seconds`, `neutral_seconds`, `focus_switches`, `most_used_app`, `most_used_site`, `app_useage_json`, `category_useage_json`, `hourly_distribution_json`, `session_stats_json`, `created_at`) VALUES
(16, 1, NULL, '2026-06-03', 22, 20, 0, 2, 7, 'WindowsTerminal', NULL, '{\"Code\": 5, \"devenv\": 7, \"GitHubDesktop\": 2, \"WindowsTerminal\": 8}', '{\"neutral\": 0, \"unknown\": 2, \"distracted\": 0, \"productive\": 20}', '{\"12\": 22}', NULL, '2026-06-03 10:29:06'),
(17, 1, NULL, '2026-06-03', 314, 6, 201, 107, 14, 'msedge', NULL, '{\"msedge\": 172, \"explorer\": 4, \"SearchHost\": 3, \"WhatsApp.Root\": 29, \"WindowsTerminal\": 6, \"ShellExperienceHost\": 1, \"ApplicationFrameHost\": 99}', '{\"neutral\": 0, \"unknown\": 107, \"distracted\": 201, \"productive\": 6}', '{\"13\": 314}', NULL, '2026-06-03 11:25:43'),
(18, 1, NULL, '2026-06-03', 125, 24, 56, 45, 8, 'msedge', NULL, '{\"msedge\": 55, \"explorer\": 1, \"GitHubDesktop\": 44, \"WhatsApp.Root\": 1, \"WindowsTerminal\": 24}', '{\"neutral\": 0, \"unknown\": 45, \"distracted\": 56, \"productive\": 24}', '{\"13\": 125}', NULL, '2026-06-03 11:30:50'),
(19, 1, NULL, '2026-06-03', 233, 8, 0, 225, 0, 'null', 'localhost', '{\"null\": 233}', '{\"neutral\": 0, \"unknown\": 225, \"distracted\": 0, \"productive\": 8}', '{\"7\": 12, \"8\": 116, \"10\": 52, \"11\": 53}', NULL, '2026-06-03 11:32:07'),
(20, 1, NULL, '2026-06-03', 394, 8, 0, 386, 0, 'null', 'edge', '{\"null\": 394}', '{\"neutral\": 0, \"unknown\": 386, \"distracted\": 0, \"productive\": 8}', '{\"7\": 12, \"8\": 116, \"10\": 52, \"11\": 214}', NULL, '2026-06-03 11:34:48'),
(21, 1, NULL, '2026-06-03', 424, 8, 3, 413, 0, 'null', 'edge', '{\"null\": 424}', '{\"neutral\": 0, \"unknown\": 413, \"distracted\": 3, \"productive\": 8}', '{\"7\": 12, \"8\": 116, \"10\": 52, \"11\": 244}', NULL, '2026-06-03 11:35:18'),
(22, 1, NULL, '2026-06-03', 469, 8, 31, 430, 0, 'null', 'edge', '{\"null\": 469}', '{\"neutral\": 0, \"unknown\": 430, \"distracted\": 31, \"productive\": 8}', '{\"7\": 12, \"8\": 116, \"10\": 52, \"11\": 289}', NULL, '2026-06-03 11:36:03'),
(23, 1, NULL, '2026-06-03', 540, 42, 55, 443, 0, 'null', 'edge', '{\"null\": 540}', '{\"neutral\": 0, \"unknown\": 443, \"distracted\": 55, \"productive\": 42}', '{\"7\": 12, \"8\": 116, \"10\": 52, \"11\": 360}', NULL, '2026-06-03 11:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `password`, `userId`) VALUES
('admin', 'admin@admin.com', 'admin', 1);

-- --------------------------------------------------------

--
-- Structure for view `data`
--
DROP TABLE IF EXISTS `data`;

DROP VIEW IF EXISTS `data`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data`  AS SELECT `reports`.`id` AS `id`, `reports`.`userId` AS `userId`, `reports`.`report_date` AS `report_date`, `reports`.`total_tracked_seconds` AS `total_tracked_seconds`, `reports`.`productive_seconds` AS `productive_seconds`, `reports`.`distracted_seconds` AS `distracted_seconds`, `reports`.`neutral_seconds` AS `neutral_seconds`, `reports`.`focus_switches` AS `focus_switches`, `reports`.`most_used_app` AS `most_used_app`, `reports`.`most_used_site` AS `most_used_site`, `reports`.`app_useage_json` AS `app_useage_json`, `reports`.`category_useage_json` AS `category_useage_json`, `reports`.`hourly_distribution_json` AS `hourly_distribution_json`, `reports`.`session_stats_json` AS `session_stats_json`, `reports`.`created_at` AS `created_at` FROM `reports``reports`  ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
