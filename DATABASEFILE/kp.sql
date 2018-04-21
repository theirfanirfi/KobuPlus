-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2018 at 01:13 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kp`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `d_id` int(11) NOT NULL,
  `d_title` varchar(255) DEFAULT NULL,
  `d_description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dt_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  `sd_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `document_types`
--

CREATE TABLE `document_types` (
  `dt_id` int(11) NOT NULL,
  `dt_title` varchar(255) DEFAULT NULL,
  `dt_description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `e_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_types`
--

INSERT INTO `document_types` (`dt_id`, `dt_title`, `dt_description`, `created_at`, `updated_at`, `e_id`, `user_id`) VALUES
(1, 'Business Plan', NULL, '2018-02-05 06:03:27', '0000-00-00 00:00:00', 0, 0),
(2, 'Pitch', NULL, '2018-02-05 06:03:38', '0000-00-00 00:00:00', 0, 0),
(3, 'Letterhead', NULL, '2018-02-05 06:03:48', '0000-00-00 00:00:00', 0, 0),
(4, 'Business Profile', NULL, '2018-02-05 06:03:56', '0000-00-00 00:00:00', 0, 0),
(5, 'Employee Handbook', NULL, '2018-02-05 06:04:10', '0000-00-00 00:00:00', 0, 0),
(6, 'Contract Documents', NULL, '2018-02-05 06:04:20', '0000-00-00 00:00:00', 0, 0),
(7, 'Job Description', NULL, '2018-02-05 06:04:33', '0000-00-00 00:00:00', 0, 0),
(8, 'Proposals', NULL, '2018-02-05 06:04:40', '0000-00-00 00:00:00', 0, 0),
(9, 'Quotations', NULL, '2018-02-05 06:04:43', '0000-00-00 00:00:00', 0, 0),
(10, 'Non-Disclosure Agreement', NULL, '2018-02-05 06:05:04', '0000-00-00 00:00:00', 0, 0),
(11, 'Social Ads', NULL, '2018-02-05 06:05:13', '0000-00-00 00:00:00', 0, 0),
(12, 'Hello Plan', '<p>this is hello plan.</p>', '2018-02-09 01:19:03', '2018-02-09 01:19:03', 16, 3),
(13, 'New pLAN', '<p>THIS IS NEW PLAN</p>', '2018-02-09 01:21:48', '2018-02-09 01:21:48', 16, 3),
(14, 'New Document', '<p>this is new documet description.</p>', '2018-03-29 01:28:55', '2018-03-29 01:28:55', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `enterprises`
--

CREATE TABLE `enterprises` (
  `e_id` int(11) NOT NULL,
  `b_name` varchar(255) DEFAULT NULL,
  `b_address` text,
  `country` varchar(50) DEFAULT NULL,
  `region_state` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `logo_name` varchar(255) DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `skill_one` varchar(200) DEFAULT NULL,
  `skill_two` varchar(200) DEFAULT NULL,
  `skill_three` varchar(200) DEFAULT NULL,
  `p_b_idea` varchar(200) DEFAULT NULL,
  `updated_at` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enterprises`
--

INSERT INTO `enterprises` (`e_id`, `b_name`, `b_address`, `country`, `region_state`, `phone`, `email`, `logo_name`, `logo_path`, `skill_one`, `skill_two`, `skill_three`, `p_b_idea`, `updated_at`, `created_at`, `user_id`) VALUES
(17, 'dotPk software house', 'Mingora, District Swat.', 'Pakistan', 'KP', '03468723948', 'theirfanirfi@gmail.com', 'sativa.png', 'uploads/logos/sativa.png', 'Drawing', 'Painting', 'Art', 'carpenter', '2018-02-25 05:05:27', '2018-02-25 05:05:27', 19),
(19, 'This is business name', 'this is business address', 'Nigeria', 'Benue', '12345678901', 't@t.com', NULL, NULL, 'Painting', 'Art', 'Drawing', 'carpenter', '2018-03-03 13:16:22', '2018-03-03 13:16:22', 19),
(22, 'dotPk software house', 'Mingora, District Swat.', 'Pakistan', 'North-West Frontier Province', '12345678901', 'i@i.com', '29496616_985135538312653_7138965223456636928_n.jpg', 'uploads/logos/29496616_985135538312653_7138965223456636928_n.jpg', 'Drawing', 'Art', 'Paintingggg', 'ok', '2018-03-23 07:17:19', '2018-03-23 07:17:19', 19),
(23, 'dotPk software house', 'Naseer Karyana Store Al-Huda Street Landikas, Mingora, Swat', 'Pakistan', 'North-West Frontier Province', '12345678901', 'i@i.com', '4.jpg', 'uploads/logos/4.jpg', 'Drawing', 'Paintingggg', 'Art', 'carpenter', '2018-03-29 10:21:58', '2018-03-29 10:21:58', 26);

-- --------------------------------------------------------

--
-- Table structure for table `enterprise_contacts`
--

CREATE TABLE `enterprise_contacts` (
  `contact_id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fb` text,
  `twitter` text,
  `instagram` text,
  `e_id` int(11) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  `updated_at` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enterprise_contacts`
--

INSERT INTO `enterprise_contacts` (`contact_id`, `firstname`, `lastname`, `email`, `gender`, `company`, `category`, `phone`, `fb`, `twitter`, `instagram`, `e_id`, `created_at`, `updated_at`) VALUES
(2, 'Irfan', 'Ullah Khan', 'i@i.com', 'Male', 'mycompany', NULL, '12345678901', 'http://fb.com', 'http://twitter.com', 'http://insta.com', 4, '2018-02-04 12:28:31', '2018-02-04 12:42:45'),
(3, 'Irfan', 'Irfi', 'male@male.com', 'Male', 'this is company', NULL, '1234567890', 'http://fb.com', 'http://twitter.com', 'http://insta.com', 4, '2018-02-04 12:56:54', '2018-02-04 12:56:54'),
(4, 'First', 'Contact', 'contact@contac.com', 'Female', 'this is company', NULL, '120456788090', 'http://fb.com', 'http://twitter.com', NULL, 16, '2018-02-11 12:08:24', '2018-02-11 12:08:24'),
(5, 'Second', 'Contact', 'contact@contac.com', 'Male', 'this is company', NULL, '120456788090', 'http://fb.com', 'http://twitter.com', 'http://insta.com', 16, '2018-02-11 12:08:45', '2018-02-11 12:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `enterprise_follow`
--

CREATE TABLE `enterprise_follow` (
  `f_id` int(11) NOT NULL,
  `follower_e_id` int(11) DEFAULT NULL,
  `follower_user_id` int(11) DEFAULT NULL,
  `followed_e_id` int(11) DEFAULT NULL,
  `followed_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enterprise_follow`
--

INSERT INTO `enterprise_follow` (`f_id`, `follower_e_id`, `follower_user_id`, `followed_e_id`, `followed_user_id`, `created_at`, `updated_at`) VALUES
(4, 15, NULL, 16, NULL, '2018-02-12 16:15:03', '0000-00-00 00:00:00'),
(7, 16, 3, 9, 12, '2018-02-12 12:09:56', '2018-02-12 12:09:56'),
(8, 16, 3, 15, 3, '2018-02-12 12:25:30', '2018-02-12 12:25:30'),
(9, 17, 18, 15, 3, '2018-03-03 06:51:14', '2018-03-03 06:51:14'),
(10, 19, 19, 17, 18, '2018-03-03 08:16:43', '2018-03-03 08:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `enterprise_msgs`
--

CREATE TABLE `enterprise_msgs` (
  `msg_id` int(11) NOT NULL,
  `msg_subject` varchar(200) DEFAULT NULL,
  `msg_description` text,
  `sender_user_id` int(11) DEFAULT NULL,
  `reciever_user_id` int(11) DEFAULT NULL,
  `sender_e_id` int(11) DEFAULT NULL,
  `reciever_e_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `e_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `in_reply` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enterprise_msgs`
--

INSERT INTO `enterprise_msgs` (`msg_id`, `msg_subject`, `msg_description`, `sender_user_id`, `reciever_user_id`, `sender_e_id`, `reciever_e_id`, `created_at`, `updated_at`, `e_id`, `status`, `in_reply`) VALUES
(3, 'hello', '<p>this is hello</p>', 3, NULL, 16, 15, '2018-02-21 06:26:33', '2018-02-21 01:26:33', NULL, 1, 0),
(4, 'okay', '<p>this is home</p>', 3, NULL, 15, 16, '2018-02-15 17:53:46', '2018-02-15 12:53:46', NULL, 1, 0),
(5, 'hello', '<p>this is hello</p>', 3, NULL, 16, 15, '2018-02-22 04:31:13', '2018-02-21 23:31:13', NULL, 1, 0),
(6, 'okay', '<p>okay this is reply.</p>', 3, NULL, 16, 15, '2018-02-15 13:01:43', '2018-02-15 13:01:43', NULL, 0, 0),
(7, 'hello', '<p>okay this is reply</p>', 3, NULL, 15, 16, '2018-02-21 12:53:57', '2018-02-21 12:53:57', NULL, 0, 3),
(8, 'okay - this is new msg.', '<p>okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;okay&nbsp;this is testing.&nbsp;</p>', 3, NULL, 15, 16, '2018-02-21 13:04:36', '2018-02-21 13:04:36', NULL, 0, 0),
(9, 'hello', '<p>replying agian.</p>', 3, NULL, 15, 16, '2018-02-22 05:05:09', '2018-02-22 00:05:09', NULL, 1, 3),
(10, 'hello', '<p>replied.</p>', 3, NULL, 15, 16, '2018-02-21 13:06:08', '2018-02-21 13:06:08', NULL, 0, 3),
(11, 'hello', '<p>no reply</p>', 3, NULL, 15, 16, '2018-02-21 23:31:26', '2018-02-21 23:31:26', NULL, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `enterprise_users`
--

CREATE TABLE `enterprise_users` (
  `e_user_id` int(11) NOT NULL,
  `e_firstname` varchar(50) DEFAULT NULL,
  `e_lastname` varchar(50) DEFAULT NULL,
  `e_user_gender` varchar(10) DEFAULT NULL,
  `e_user_email` varchar(100) DEFAULT NULL,
  `e_user_phone` varchar(30) DEFAULT NULL,
  `e_user_fb` text,
  `e_user_twitter` text,
  `e_user_instagram` text,
  `e_username` varchar(100) DEFAULT NULL,
  `e_user_role` varchar(30) DEFAULT NULL,
  `e_user_password` varchar(255) DEFAULT NULL,
  `e_business_permission` int(11) DEFAULT '0',
  `e_contacts_permission` int(11) DEFAULT '0',
  `e_permission` int(11) DEFAULT '0',
  `e_social_ads` int(11) DEFAULT '0',
  `e_sharedocs` int(11) DEFAULT '0',
  `e_settings` int(11) DEFAULT '0',
  `e_user_permission` int(11) DEFAULT '0',
  `e_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enterprise_users`
--

INSERT INTO `enterprise_users` (`e_user_id`, `e_firstname`, `e_lastname`, `e_user_gender`, `e_user_email`, `e_user_phone`, `e_user_fb`, `e_user_twitter`, `e_user_instagram`, `e_username`, `e_user_role`, `e_user_password`, `e_business_permission`, `e_contacts_permission`, `e_permission`, `e_social_ads`, `e_sharedocs`, `e_settings`, `e_user_permission`, `e_id`, `user_id`, `updated_at`, `created_at`) VALUES
(3, 'Second', 'User', 'Male', 'm@m.com', '12345678901', 'http://fb.com', 'http://twitter.com', 'http://insta.com', 'Irfan Ullah', NULL, 'irfan001', 0, 0, 0, 0, 0, 0, 0, 22, 24, '2018-03-23 03:44:08', '2018-03-23 03:44:08'),
(5, 'k', 'h', 'Male', 'i@i.com', '3468723948', 'http://fb.com', 'http://twitter.com', 'http://insta.com', NULL, NULL, 'irfan001', 0, 0, 0, 0, 0, 0, 0, 23, 28, '2018-03-29 05:31:26', '2018-03-29 05:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(255) DEFAULT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL,
  `fullday` tinyint(4) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `start_time`, `end_time`, `fullday`, `user_id`, `e_id`, `updated_at`, `created_at`) VALUES
(1, 'this is my first event.', '2018-03-05', '2018-03-05', 1, 26, NULL, '2018-03-29 05:18:48', '2018-03-29 05:18:48'),
(2, NULL, '2018-03-29', '2018-03-31', 1, 26, NULL, '2018-03-29 05:50:36', '2018-03-29 05:50:36'),
(3, 'THis is my second event.', '2018-03-22', '2018-03-29', 1, 26, NULL, '2018-03-29 05:51:19', '2018-03-29 05:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `learningresources`
--

CREATE TABLE `learningresources` (
  `lr_id` int(11) NOT NULL,
  `lr_title` text,
  `lr_description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learningresources`
--

INSERT INTO `learningresources` (`lr_id`, `lr_title`, `lr_description`, `created_at`, `updated_at`) VALUES
(1, 'this is learning resource title', '<p>In design magazine, Before and After Magazine, a journalist wrote in volume 4, number 2 the following:\r\n\r\nAfter telling everyone that Lorem ipsum, the nonsensical text that comes with PageMaker, only looks like Latin but actually says nothing, I heard from Richard McClintock, publication director at the Hampden-Sydney College in Virginia, who had enlightening news:\r\n\r\nLorem ipsum is latin, slightly jumbled, the remnants of a passage from Cicero\'s \'De finibus bonorum et malorum\' 1.10.32, which begins \'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\' [There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain.]. [de Finibus Bonorum et Malorum, written in 45 BC, is a treatise on the theory of ethics very popular in the Renaisance.]\r\n\r\nWhat I find remarkable is that this text has been the industry\'s standard dummy text ever since some printed in the 1500s took a galley of type and scrambled it to make a type specimen book; it has survived not only four centuries of letter-by-letter resetting but even the leap into electronic typesetting, essentially unchanged except for an occasional \'ing\' or \'y\' thrown in. It\'s ironic that when the then-understood Latin was scrambled, it became as incomprehensible as Greek; the phrase \'it\'s Greek to me\' and \'greeking\' have common semantic roots!\r\nIn design magazine, Before and After Magazine, a journalist wrote in volume 4, number 2 the following:\r\n\r\nAfter telling everyone that Lorem ipsum, the nonsensical text that comes with PageMaker, only looks like Latin but actually says nothing, I heard from Richard McClintock, publication director at the Hampden-Sydney College in Virginia, who had enlightening news:\r\n\r\nLorem ipsum is latin, slightly jumbled, the remnants of a passage from Cicero\'s \'De finibus bonorum et malorum\' 1.10.32, which begins \'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\' [There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain.]. [de Finibus Bonorum et Malorum, written in 45 BC, is a treatise on the theory of ethics very popular in the Renaisance.]\r\n\r\nWhat I find remarkable is that this text has been the industry\'s standard dummy text ever since some printed in the 1500s took a galley of type and scrambled it to make a type specimen book; it has survived not only four centuries of letter-by-letter resetting but even the leap into electronic typesetting, essentially unchanged except for an occasional \'ing\' or \'y\' thrown in. It\'s ironic that when the then-understood Latin was scrambled, it became as incomprehensible as Greek; the phrase \'it\'s Greek to me\' and \'greeking\' have common semantic roots!\r\nIn design magazine, Before and After Magazine, a journalist wrote in volume 4, number 2 the following:\r\n\r\nAfter telling everyone that Lorem ipsum, the nonsensical text that comes with PageMaker, only looks like Latin but actually says nothing, I heard from Richard McClintock, publication director at the Hampden-Sydney College in Virginia, who had enlightening news:\r\n\r\nLorem ipsum is latin, slightly jumbled, the remnants of a passage from Cicero\'s \'De finibus bonorum et malorum\' 1.10.32, which begins \'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\' [There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain.]. [de Finibus Bonorum et Malorum, written in 45 BC, is a treatise on the theory of ethics very popular in the Renaisance.]\r\n\r\nWhat I find remarkable is that this text has been the industry\'s standard dummy text ever since some printed in the 1500s took a galley of type and scrambled it to make a type specimen book; it has survived not only four centuries of letter-by-letter resetting but even the leap into electronic typesetting, essentially unchanged except for an occasional \'ing\' or \'y\' thrown in. It\'s ironic that when the then-understood Latin was scrambled, it became as incomprehensible as Greek; the phrase \'it\'s Greek to me\' and \'greeking\' have common semantic roots!</p>', '2018-03-29 10:15:07', '2018-03-29 00:01:49'),
(2, 'fsk', '<p>ffjksdalfjsd</p>', '2018-03-29 00:02:45', '2018-03-29 00:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pbideas`
--

CREATE TABLE `pbideas` (
  `pb_id` int(11) NOT NULL,
  `pb_title` varchar(255) DEFAULT NULL,
  `pb_description` text,
  `skill_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pbideas`
--

INSERT INTO `pbideas` (`pb_id`, `pb_title`, `pb_description`, `skill_id`, `created_at`, `updated_at`) VALUES
(1, 'carpenter', 'this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. this is description. ', 1, NULL, NULL),
(2, 'Polish', 'this is polishing', 2, '2018-02-01 12:51:06', '2018-02-01 12:51:06'),
(3, 'ok', 'this is okay', 3, '2018-02-01 12:51:22', '2018-02-01 12:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `plan_id` int(11) NOT NULL,
  `total_enterprises` int(11) DEFAULT NULL,
  `created_enterprises` int(11) DEFAULT '0',
  `total_users` int(11) DEFAULT NULL,
  `created_users` int(11) DEFAULT '0',
  `total_contacts` int(11) DEFAULT NULL,
  `created_contacts` int(11) DEFAULT '0',
  `b_logo` int(11) DEFAULT '1',
  `document_templates` int(11) DEFAULT '1',
  `contacts_management` int(11) DEFAULT '1',
  `documents_management` int(11) DEFAULT '1',
  `quick_guide` int(11) DEFAULT '1',
  `learning_resources` int(11) DEFAULT '1',
  `event_calendar` int(11) DEFAULT '0',
  `sending_emails` int(11) DEFAULT '0',
  `dashboard_notifications` int(11) DEFAULT '0',
  `download_business_plan` int(11) DEFAULT '0',
  `sm_marketing` int(11) DEFAULT '0',
  `thirdPartyApps` int(11) DEFAULT '0',
  `multiple_currencies` int(11) DEFAULT '0',
  `plan_title` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(20) DEFAULT NULL,
  `paidAt` text,
  `ip` varchar(100) DEFAULT NULL,
  `transaction_date` text,
  `bank` varchar(100) DEFAULT NULL,
  `card_type` varchar(80) DEFAULT NULL,
  `country_code` varchar(80) DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`plan_id`, `total_enterprises`, `created_enterprises`, `total_users`, `created_users`, `total_contacts`, `created_contacts`, `b_logo`, `document_templates`, `contacts_management`, `documents_management`, `quick_guide`, `learning_resources`, `event_calendar`, `sending_emails`, `dashboard_notifications`, `download_business_plan`, `sm_marketing`, `thirdPartyApps`, `multiple_currencies`, `plan_title`, `created_at`, `updated_at`, `status`, `paidAt`, `ip`, `transaction_date`, `bank`, `card_type`, `country_code`, `isActive`, `user_id`, `created_user_id`) VALUES
(9, 1, 0, 2, 0, 100, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 'STARTUP', '2018-03-23 16:43:47', '2018-03-23 11:43:47', 'Upgraded', '2018-03-23T16:42:39.000Z', '39.60.71.11', '2018-03-23T16:42:19.000Z', 'Test Bank', 'visa DEBIT', 'NG', 0, 19, 19),
(10, 2, 1, 5, 1, 500, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 'Enterprise', '2018-03-23 16:45:00', '2018-03-23 11:45:00', 'Upgraded', '2018-03-23T16:43:44.000Z', '39.60.71.11', '2018-03-23T16:43:16.000Z', 'Test Bank', 'visa DEBIT', 'NG', 0, 19, 19),
(11, 1, 1, 2, 1, 100, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 'STARTUP', '2018-03-23 16:46:26', '2018-03-23 11:46:26', 'Upgraded', '2018-03-23T16:44:57.000Z', '39.60.71.11', '2018-03-23T16:44:34.000Z', 'Test Bank', 'visa DEBIT', 'NG', 0, 19, 19),
(12, 2, 1, 5, 1, 500, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 'Enterprise', '2018-03-24 08:30:53', '2018-03-24 03:30:53', 'Upgraded', '2018-03-23T16:46:22.000Z', '39.60.71.11', '2018-03-23T16:46:03.000Z', 'Test Bank', 'visa DEBIT', 'NG', 0, 19, 19),
(13, 1, 1, 1, 1, 50, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 'Free', '2018-03-24 14:01:13', '2018-03-24 03:30:53', 'Downgraded', NULL, NULL, NULL, NULL, NULL, NULL, 1, 19, 19),
(14, 1, 0, 1, 0, 50, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, '2018-03-29 04:48:40', '2018-03-29 04:48:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25, NULL),
(15, 1, 1, 1, 1, 50, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'Free', '2018-03-29 10:53:32', '2018-03-29 05:53:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, NULL),
(16, 1, 1, 2, 1, 100, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 'STARTUP', '2018-03-29 10:55:01', '2018-03-29 05:55:01', 'Upgraded', '2018-03-29T10:53:28.000Z', '39.60.30.5', '2018-03-29T10:52:44.000Z', 'Test Bank', 'visa DEBIT', 'NG', 0, 26, 26),
(17, 2, 1, 5, 1, 500, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 'Enterprise', '2018-03-29 05:55:01', '2018-03-29 05:55:01', 'Upgraded', '2018-03-29T10:54:56.000Z', '39.60.30.5', '2018-03-29T10:54:22.000Z', 'Test Bank', 'visa DEBIT', 'NG', 1, 26, 26);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `payload` text,
  `last_activity` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `user_agent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skill_id` int(11) NOT NULL,
  `skill_title` varchar(255) DEFAULT NULL,
  `skill_description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `skill_title`, `skill_description`, `created_at`, `updated_at`) VALUES
(1, 'Paintingggg', 'vThis is painting skill. You can select it. This is painting skill. You can select it.This is paintinThis is painting skill. You can select it. This is painting skill. You can select it.This is paintinThis is painting skill. You can select it. This is painting skill. You can select it.This is paintinThis is painting skill. You can select it. This is painting skill. You can select it.This is paintin', NULL, '2018-03-03 08:29:42'),
(2, 'Drawing', 'this is drawing skill', '2018-01-28 16:54:05', '2018-01-28 16:54:05'),
(3, 'Art', 'this is art.', '2018-01-28 16:54:55', '2018-01-28 16:54:55'),
(4, 'okay skill', 'this is okay skill', '2018-01-28 16:58:47', '2018-01-28 16:58:47'),
(5, 'okay skill', 'this is okay skill', '2018-01-28 16:59:14', '2018-01-28 16:59:14'),
(6, 'another skill agian again', 'thislksjlfa llkjfsaf again', '2018-01-28 17:00:47', '2018-01-28 17:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `sub_documents`
--

CREATE TABLE `sub_documents` (
  `sd_id` int(11) NOT NULL,
  `sd_title` varchar(255) DEFAULT NULL,
  `sd_description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  `dt_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_documents`
--

INSERT INTO `sub_documents` (`sd_id`, `sd_title`, `sd_description`, `created_at`, `updated_at`, `user_id`, `e_id`, `dt_id`) VALUES
(1, 'Executive Summary', NULL, '2018-02-05 06:19:36', '0000-00-00 00:00:00', NULL, NULL, 1),
(2, 'Introduction', NULL, '2018-02-05 06:21:19', '0000-00-00 00:00:00', NULL, NULL, 1),
(3, 'Product/Services', NULL, '2018-02-05 06:21:20', '0000-00-00 00:00:00', NULL, NULL, 1),
(4, 'Industry and Market Analysis', NULL, '2018-02-05 06:21:21', '0000-00-00 00:00:00', NULL, NULL, 1),
(5, 'Competition', NULL, '2018-02-05 06:21:21', '0000-00-00 00:00:00', NULL, NULL, 1),
(6, 'SWOT Analysis', NULL, '2018-02-05 06:21:22', '0000-00-00 00:00:00', NULL, NULL, 1),
(7, 'Business Model', NULL, '2018-02-05 06:21:23', '0000-00-00 00:00:00', NULL, NULL, 1),
(8, 'Operations Plan', NULL, '2018-02-05 06:21:24', '0000-00-00 00:00:00', NULL, NULL, 1),
(9, 'Marketing Plan', NULL, '2018-02-05 06:21:25', '0000-00-00 00:00:00', NULL, NULL, 1),
(10, 'Management Plan', NULL, '2018-02-05 06:21:26', '0000-00-00 00:00:00', NULL, NULL, 1),
(11, 'Financial Plan', NULL, '2018-02-05 06:21:26', '0000-00-00 00:00:00', NULL, NULL, 1),
(12, 'Conclusion', NULL, '2018-02-05 06:21:27', '0000-00-00 00:00:00', NULL, NULL, 1),
(13, 'Appendix', NULL, '2018-02-05 06:21:28', '0000-00-00 00:00:00', NULL, NULL, 1),
(14, 'Introduction', NULL, '2018-02-05 06:22:40', '0000-00-00 00:00:00', NULL, NULL, 5),
(15, 'WorkPlace Commitment', NULL, '2018-02-05 06:24:12', '0000-00-00 00:00:00', NULL, NULL, 5),
(16, 'Company Policy', NULL, '2018-02-05 06:24:13', '0000-00-00 00:00:00', NULL, NULL, 5),
(17, 'Attendance Policies', NULL, '2018-02-05 06:24:14', '0000-00-00 00:00:00', NULL, NULL, 5),
(18, 'Leave Policies', NULL, '2018-02-05 06:24:14', '0000-00-00 00:00:00', NULL, NULL, 5),
(19, 'Work Performance', NULL, '2018-02-05 06:24:15', '0000-00-00 00:00:00', NULL, NULL, 5),
(20, 'Discipline Policies', NULL, '2018-02-05 06:24:16', '0000-00-00 00:00:00', NULL, NULL, 5),
(21, 'Employee Health and Safety', NULL, '2018-02-05 06:24:16', '0000-00-00 00:00:00', NULL, NULL, 5),
(22, 'Benefits', NULL, '2018-02-05 06:24:17', '0000-00-00 00:00:00', NULL, NULL, 5),
(23, 'Terminaion Policies', NULL, '2018-02-05 06:24:18', '0000-00-00 00:00:00', NULL, NULL, 5),
(24, 'Acknowledgement of Receipt', NULL, '2018-02-05 06:24:19', '0000-00-00 00:00:00', NULL, NULL, 5),
(25, 'this is sub document.', '<p>this is sub document description.</p>', '2018-03-29 03:40:21', '2018-03-29 03:40:21', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(11) DEFAULT '0' COMMENT '1 for admin and 2 for enterprise user',
  `e_id` int(11) DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `bd` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` text COLLATE utf8mb4_unicode_ci,
  `creater_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `e_id`, `about`, `bd`, `gender`, `address`, `phone`, `image_name`, `image_path`, `creater_id`) VALUES
(18, 'Irfan Ullah', 'theirfanirfi@gmail.com', '$2y$10$K10msRn1TilcDCGNxHweleBYxtx3SJf2ZkS9VkeQ6MN.SJy7PwvcC', 'dRb9gmAozJWhaHvcZezlPhnzr0BAtgQ5MHPwYMyd4qsihIa9BtP61P15xq69', '2018-02-25 00:04:25', '2018-02-27 00:04:11', 1, NULL, 'hello this is about your self and me', '2018-02-25', 'Male', 'this is address', '789279324', '27545094_400364203748149_7151881842362641759_n.jpg', 'uploads/profile/27545094_400364203748149_7151881842362641759_n.jpg', NULL),
(19, 'irfan ullahh', 'theirfi@gmail.com', '$2y$10$Pq/3tU.K92dUxBXZwcQ55.o4IeI4LWat7jK8./7NtqYSw1JR60vhC', 'lfe0t1tklcJ1ixauJP37Zed06Z6QK4ye1TcokbvnYofhjIqUNRlGWFjd8cZI', '2018-03-03 08:14:52', '2018-03-29 04:39:12', 1, NULL, 'THis is about me.', '2018-03-19', 'Male', 'this is my address', '12345678901', 'MaxTech 4.jpg', 'uploads/profile/MaxTech 4.jpg', NULL),
(21, 't khan', 't@t.com', '$2y$10$6p9WmcI.83VeSStPV0l.aemoyF/Mb4qt1WRo4VZu1grXJ3gZNJrRu', NULL, '2018-03-23 01:01:07', '2018-03-23 01:01:07', 0, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, NULL),
(24, 'Irfan Ullah', 'm@m.com', '$2y$10$LekK020ksKfVF57x6BWP0OnNSRwPUW8wFwFSTpfExWb8uvzdvuBCi', NULL, '2018-03-23 03:44:07', '2018-03-23 03:44:07', 2, 22, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 21),
(26, 'Datom', 'datom@gmail.com', '$2y$10$YiyaaVo.os/wDPuIqw.2H.ohClnzD/mZ/.2M0eYtrPtn6wDt6LQPG', 'RatG6gCLvfkOGP6O6VUP8DMgPWD6sz8duoQsWXgBqZ8YTI1eTWn10CtIyIkq', '2018-03-29 04:56:41', '2018-03-29 04:56:41', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'k h', 'i@i.com', '$2y$10$NTm.4sFjTvV9GuQW0WTtGeHcmUysEoGOTOpBarmW5YebjkUkg01OW', NULL, '2018-03-29 05:31:26', '2018-03-29 05:31:26', 2, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26),
(29, 'Datom', 'datomadmin@gmail.com', '$2y$10$YiyaaVo.os/wDPuIqw.2H.ohClnzD/mZ/.2M0eYtrPtn6wDt6LQPG', '4Gosu17z3VLERZbtiBK5OaC7BVHWIRe0E7oKuVx7gHJT4o3gYl89SeYdIcRP', '2018-03-29 04:56:41', '2018-03-29 04:56:41', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `dt_id` (`dt_id`),
  ADD KEY `e_id` (`e_id`),
  ADD KEY `sd_id` (`sd_id`);

--
-- Indexes for table `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`dt_id`);

--
-- Indexes for table `enterprises`
--
ALTER TABLE `enterprises`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `enterprise_contacts`
--
ALTER TABLE `enterprise_contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `enterprise_follow`
--
ALTER TABLE `enterprise_follow`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `enterprise_msgs`
--
ALTER TABLE `enterprise_msgs`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `e_id` (`e_id`);

--
-- Indexes for table `enterprise_users`
--
ALTER TABLE `enterprise_users`
  ADD PRIMARY KEY (`e_user_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `learningresources`
--
ALTER TABLE `learningresources`
  ADD PRIMARY KEY (`lr_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pbideas`
--
ALTER TABLE `pbideas`
  ADD PRIMARY KEY (`pb_id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `sub_documents`
--
ALTER TABLE `sub_documents`
  ADD PRIMARY KEY (`sd_id`),
  ADD KEY `e_id` (`e_id`),
  ADD KEY `dt_id` (`dt_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_types`
--
ALTER TABLE `document_types`
  MODIFY `dt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `enterprises`
--
ALTER TABLE `enterprises`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `enterprise_contacts`
--
ALTER TABLE `enterprise_contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `enterprise_follow`
--
ALTER TABLE `enterprise_follow`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enterprise_msgs`
--
ALTER TABLE `enterprise_msgs`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `enterprise_users`
--
ALTER TABLE `enterprise_users`
  MODIFY `e_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learningresources`
--
ALTER TABLE `learningresources`
  MODIFY `lr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pbideas`
--
ALTER TABLE `pbideas`
  MODIFY `pb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_documents`
--
ALTER TABLE `sub_documents`
  MODIFY `sd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`dt_id`) REFERENCES `document_types` (`dt_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `documents_ibfk_2` FOREIGN KEY (`e_id`) REFERENCES `enterprises` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `documents_ibfk_3` FOREIGN KEY (`sd_id`) REFERENCES `sub_documents` (`sd_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enterprise_msgs`
--
ALTER TABLE `enterprise_msgs`
  ADD CONSTRAINT `enterprise_msgs_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `enterprises` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pbideas`
--
ALTER TABLE `pbideas`
  ADD CONSTRAINT `pbideas_ibfk_1` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_documents`
--
ALTER TABLE `sub_documents`
  ADD CONSTRAINT `sub_documents_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `enterprises` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sub_documents_ibfk_2` FOREIGN KEY (`dt_id`) REFERENCES `document_types` (`dt_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
