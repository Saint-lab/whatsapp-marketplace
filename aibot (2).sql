-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 03:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aibot`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment_key`
--

CREATE TABLE `payment_key` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `paypal_client_id` varchar(255) DEFAULT NULL,
  `stripe_public` varchar(255) DEFAULT NULL,
  `stripe_secret` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_key`
--

INSERT INTO `payment_key` (`id`, `uid`, `paypal_client_id`, `stripe_public`, `stripe_secret`, `type`, `status`) VALUES
(3, 1, NULL, 'qwertyuiojhgf346ghjkkk', '7jn8kk', 'stripe', 0),
(5, 1, 'AZ-lSHqhdc1evh6dg5_RFx7iro0hQVWYBTb1m1PEJ_exNI1eFucvw0OaBQ_rKI17l2j17-7IH5fGmnN7', NULL, NULL, 'paypal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sp_account_manager`
--

CREATE TABLE `sp_account_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `social_network` mediumtext DEFAULT NULL,
  `category` mediumtext DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `login_type` int(11) DEFAULT NULL,
  `can_post` int(1) DEFAULT NULL,
  `pid` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `username` mediumtext DEFAULT NULL,
  `token` mediumtext DEFAULT NULL,
  `avatar` mediumtext DEFAULT NULL,
  `url` mediumtext DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `proxy` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_blog`
--

CREATE TABLE `sp_blog` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_cam`
--

CREATE TABLE `sp_cam` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_cam`
--

INSERT INTO `sp_cam` (`id`, `uid`, `name`) VALUES
(1, 1, 'rtthhf'),
(2, 1, 'Leadw');

-- --------------------------------------------------------

--
-- Table structure for table `sp_caption`
--

CREATE TABLE `sp_caption` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_cart`
--

CREATE TABLE `sp_cart` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` float NOT NULL,
  `market` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `phone_no` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `add1` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `tele` varchar(2) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_cart`
--

INSERT INTO `sp_cart` (`id`, `customer_id`, `product_image`, `product_name`, `product_price`, `market`, `quantity`, `vid`, `status`, `name`, `phone_no`, `email`, `add1`, `country`, `tele`, `created_date`) VALUES
(263, 'test_Tonight-Uk49Sk1A', 'http://localhost/aibot/assets/uploads/d70886f344113e3e6e5baad70b03f98a/product_images/761ed29a2b23cd872866b02fd9469e75.png', 'redmi', 234, 'test_Tonight', 1, 1, 1, 'Oluwamoyewa Moses', '08161885390', 'moyewatosin@gmail.com', 'Adefarati', 'Nigeria', '', '2023-04-25 05:28:41'),
(264, 'test_Tonight-Uk49Sk1A', 'http://localhost/aibot/assets/uploads/d70886f344113e3e6e5baad70b03f98a/product_images/e6a6461dfa0bd0f3a95cd12f19bab642.jpg', 'Reducer', 30, 'test_Tonight', 1, 1, 1, 'Oluwamoyewa Moses', '08161885390', 'moyewatosin@gmail.com', 'Adefarati', 'Nigeria', '', '2023-04-25 05:28:41'),
(265, 'test_Tonight-6LDUi1W9', 'http://localhost/aibot/assets/uploads/d70886f344113e3e6e5baad70b03f98a/product_images/761ed29a2b23cd872866b02fd9469e75.png', 'redmi', 234, 'test_Tonight', 1, 1, 2, 'Moses Oluwamoyewa', '08161885390', 'moyewatosin@gmail.com', '22, Gbajumo avenue, Yemetu', 'Nigeria', '', '2023-04-25 09:34:45'),
(266, 'test_Tonight-6LDUi1W9', 'http://localhost/aibot/assets/uploads/d70886f344113e3e6e5baad70b03f98a/product_images/ab5dad8f8387b5009d1abf2c9b5e78c9.JPG', 'Round Neck', 23, 'test_Tonight', 1, 1, 2, 'Moses Oluwamoyewa', '08161885390', 'moyewatosin@gmail.com', '22, Gbajumo avenue, Yemetu', 'Nigeria', '', '2023-04-25 09:34:45'),
(267, 'test_Tonight-BvMzRZk6', 'http://localhost/aibot/assets/uploads/d70886f344113e3e6e5baad70b03f98a/product_images/8f3711baf4ae919b8ff58c3df7ca0750.JPG', 'Ace', 56, 'test_Tonight', 1, 1, 2, 'Moses Oluwamoyewa', '08161885390', 'moyewatosin@gmail.com', '22, Gbajumo avenue, Yemetu', 'Nigeria', '', '2023-04-25 09:43:10'),
(270, 'test_Tonight-AeL4lWyk', 'http://localhost/aibot/assets/uploads/d70886f344113e3e6e5baad70b03f98a/product_images/e6a6461dfa0bd0f3a95cd12f19bab642.jpg', 'Reducer', 30, 'test_Tonight', 1, 1, 2, 'Oluwamoyewa Moses', '08161885390', 'moyewatosin@gmail.com', 'Adefarati', 'Nigeria', '', '2023-04-25 09:55:36'),
(271, 'test_Tonight-UUlh0782', 'http://localhost/aibot/assets/uploads/d70886f344113e3e6e5baad70b03f98a/product_images/8f3711baf4ae919b8ff58c3df7ca0750.JPG', 'Ace', 56, 'test_Tonight', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-27 23:48:47'),
(272, 'test_Tonight-UUlh0782', 'http://localhost/aibot/assets/uploads/d70886f344113e3e6e5baad70b03f98a/product_images/761ed29a2b23cd872866b02fd9469e75.png', 'redmi', 234, 'test_Tonight', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-27 23:48:48'),
(274, 'test_Tonight-FLd6hnu3', 'http://localhost/aibot/assets/uploads/d70886f344113e3e6e5baad70b03f98a/product_images/761ed29a2b23cd872866b02fd9469e75.png', 'redmi', 234, 'test_Tonight', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-27 23:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `sp_faqs`
--

CREATE TABLE `sp_faqs` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_file_manager`
--

CREATE TABLE `sp_file_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `file` mediumtext DEFAULT NULL,
  `type` mediumtext DEFAULT NULL,
  `extension` mediumtext DEFAULT NULL,
  `size` float DEFAULT NULL,
  `is_image` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `note` mediumtext DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_file_manager`
--

INSERT INTO `sp_file_manager` (`id`, `ids`, `team_id`, `name`, `file`, `type`, `extension`, `size`, `is_image`, `width`, `height`, `note`, `created`) VALUES
(1, 'b40a793453f9a200413401f836061f89', 1, 'abstract-blue-banner-design-vector.jpg', 'assets/uploads/d70886f344113e3e6e5baad70b03f98a/37427902cd0cd6414fc7b3e211eba526.jpg', 'image/jpeg', 'jpg', 2469.42, 1, 5000, 2500, NULL, '2023-04-17 04:04:56'),
(2, '5bfde73f3f0ff706a844a19add28b48e', 1, '991f15078cf09a8fea326a9e02112c6b.png', 'assets/uploads/d70886f344113e3e6e5baad70b03f98a/991f15078cf09a8fea326a9e02112c6b.png', 'image/png', 'png', 5856.06, 1, 5000, 2500, NULL, '2023-04-17 04:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `sp_language`
--

CREATE TABLE `sp_language` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `code` mediumtext DEFAULT NULL,
  `slug` mediumtext DEFAULT NULL,
  `text` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_language_category`
--

CREATE TABLE `sp_language_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `code` mediumtext DEFAULT NULL,
  `icon` mediumtext DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_leads`
--

CREATE TABLE `sp_leads` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `site` text DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `alias` varchar(200) DEFAULT NULL,
  `dately` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_leads`
--

INSERT INTO `sp_leads` (`id`, `user_id`, `campaign_id`, `name`, `site`, `phone`, `location`, `email`, `img`, `country`, `alias`, `dately`) VALUES
(1, 1, 2, 'Akiko\'s Restaurant', 'http://akikosrestaurant.com', '+14153973218', '430 Folsom St', 'email', 'https://s3-media2.fl.yelpcdn.com/bphoto/fuH2ZeMzBxNEcipEmUSZ-Q/o.jpg', 'US', 'akikos-restaurant-san-francisco-3', '2023-04-30'),
(2, 1, 1, 'The Bird', 'http://thebirdsf.com?utm_source=yext&utm_medium=yext', '+14158729825', '115 New Montgomery St', 'email', 'https://s3-media1.fl.yelpcdn.com/bphoto/hzCuGZbkMWWJyX79UKfl7w/o.jpg', 'US', 'the-bird-san-francisco', '2023-04-30'),
(3, 1, 1, 'Akiko\'s Restaurant', 'http://akikosrestaurant.com', '+14153973218', '430 Folsom St', 'email', 'https://s3-media2.fl.yelpcdn.com/bphoto/fuH2ZeMzBxNEcipEmUSZ-Q/o.jpg', 'US', 'akikos-restaurant-san-francisco-3', '2023-04-30'),
(4, 1, 2, 'Akiko\'s Restaurant', 'http://akikosrestaurant.com', '+14153973218', '430 Folsom St', 'email', 'https://s3-media2.fl.yelpcdn.com/bphoto/fuH2ZeMzBxNEcipEmUSZ-Q/o.jpg', 'US', 'akikos-restaurant-san-francisco-3', '2023-04-30'),
(5, 1, 2, 'Benu', 'http://www.benusf.com/', '+14156854860', '22 Hawthorne St', 'email', 'https://s3-media2.fl.yelpcdn.com/bphoto/76QUmtRxT7C_oNFYykgx0g/o.jpg', 'US', 'benu-san-francisco-4', '2023-04-30'),
(6, 1, 2, 'The Bird', 'http://thebirdsf.com?utm_source=yext&utm_medium=yext', '+14158729825', '115 New Montgomery St', 'email', 'https://s3-media1.fl.yelpcdn.com/bphoto/hzCuGZbkMWWJyX79UKfl7w/o.jpg', 'US', 'the-bird-san-francisco', '2023-04-30'),
(7, 1, 1, 'Manor Road Co-operative Nursery School', 'http://www.manorroadnursery.com', '+14164899554', '111 Manor Road E', 'email', 'https://s3-media3.fl.yelpcdn.com/bphoto/DdkurnWj0ARZuVHk1IhnGg/o.jpg', 'CA', 'manor-road-co-operative-nursery-school-toronto', '2023-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `sp_market`
--

CREATE TABLE `sp_market` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_market`
--

INSERT INTO `sp_market` (`id`, `uid`, `name`, `status`, `logo`) VALUES
(4, 1, 'money_man', 0, 'assets/uploads/d70886f344113e3e6e5baad70b03f98a/1681728958.png'),
(6, 1, 'test_Tonight', 0, 'assets/uploads/d70886f344113e3e6e5baad70b03f98a/1681728872.png'),
(7, 1, 'hhh', 0, 'assets/uploads/d70886f344113e3e6e5baad70b03f98a/1681815276.png'),
(8, 1, 'alayo', 0, 'assets/uploads/d70886f344113e3e6e5baad70b03f98a/1682547920.PNG'),
(9, 19, 'Prado', 0, 'assets/uploads/e37e4681505869acac2c9ee3d4d99312/1682657471.png');

-- --------------------------------------------------------

--
-- Table structure for table `sp_options`
--

CREATE TABLE `sp_options` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_options`
--

INSERT INTO `sp_options` (`id`, `name`, `value`) VALUES
(1, 'enable_ssl', '0'),
(2, 'website_title', 'Stackposts - Social Marketing Tool'),
(3, 'website_desc', '#1 Marketing Platform for Social Network'),
(4, 'website_keywords', 'social network, marketing, brands, businesses, agencies, individuals'),
(5, 'website_favicon', 'http://localhost/aibot/inc/themes/backend/default/assets/img/favicon.png'),
(6, 'embed_code', ''),
(7, 'website_black', 'http://localhost/aibot/inc/themes/backend/default/assets/img/logo-black.png'),
(8, 'signup_status', '1'),
(9, 'social_page_facebook', ''),
(10, 'social_page_instagram', ''),
(11, 'social_page_twitter', ''),
(12, 'social_page_youtube', ''),
(13, 'social_page_pinterest', ''),
(14, 'google_recaptcha_status', '0'),
(15, 'facebook_login_status', '0'),
(16, 'google_login_status', '0'),
(17, 'twitter_login_status', '0'),
(18, 'beamer_status', '0'),
(19, 'format_date', 'd/m/Y'),
(20, 'format_datetime', 'd/m/Y g:i A'),
(21, 'file_manager_google_drive_status', '0'),
(22, 'file_manager_onedrive_status', '0'),
(23, 'appearance_default_menu', '1'),
(24, 'appearance_menu_color', 'sidebar-dark'),
(25, 'website_mark', 'http://localhost/aibot/inc/themes/backend/default/assets/img/logo.png'),
(26, 'appearance_icon_color', '1'),
(27, 'file_manager_dropbox_status', '0'),
(28, 'license_32290038', 'rw+Uq0I47hQro1Gr7zgQZL5JbRORFOYN/QTLN5ILawYqjwfKgJLaHtam59kGJLXCufet07VvpiUAgKxoLSdeDwTic+B6m8BY61PHOb71LvM='),
(29, 'license', 'rw+Uq0I47hQro1Gr7zgQZL5JbRORFOYN/QTLN5ILawYqjwfKgJLaHtam59kGJLXCufet07VvpiUAgKxoLSdeDwTic+B6m8BY61PHOb71LvM='),
(30, 'current_verions', '2af72f100c356273d46284f6fd1dfc08'),
(31, 'whatsapp_server_url', ''),
(32, 'file_manager_medias_per_page', '36'),
(33, 'file_manager_design_bold_status', '0'),
(34, 'signup_change_email_status', '0'),
(35, 'landing_page_status', '1'),
(36, 'beamer_product_id', ''),
(37, 'email_from', 'example@gmail.com'),
(38, 'email_name', 'Stackposts'),
(39, 'email_protocal', '1'),
(40, 'email_smtp_server', ''),
(41, 'email_smtp_port', ''),
(42, 'email_smtp_encryption', 'none'),
(43, 'email_smtp_username', ''),
(44, 'email_smtp_password', ''),
(45, 'email_welcome_status', '0'),
(46, 'email_payment_status', '0'),
(47, 'email_renewal_reminders_status', '0'),
(48, 'email_activation_subject', 'Hello {full_name}! Activation your account'),
(49, 'email_activation_content', 'Welcome to {website_name}! <br/><br/>Hello {full_name},  <br/><br/>Thank you for joining! We\'re glad to have you as community member, and we\'re stocked for you to start exploring our service. <br/>All you need to do is activate your account: <br/>{activation_link} <br/><br/>Thanks and Best Regards!'),
(50, 'email_welcome_subject', 'Hi {full_name}! Getting Started with Our Service'),
(51, 'email_welcome_content', 'Hello {full_name}! <br/><br/>Congratulations! <br/><br/>You have successfully signed up for our service. <br/>You have got a trial package, starting today. <br/>We hope you enjoy this package! We love to hear from you, <br/><br/>Thanks and Best Regards!'),
(52, 'email_forgot_password_subject', 'Hi {full_name}! Password Reset'),
(53, 'email_forgot_password_content', 'Hi {full_name}! <br/><br/>Somebody (hopefully you) requested a new password for your account. <br/>No changes have been made to your account yet. <br/><br/>You can reset your password by click this link: <br/>{recovery_password_link}. <br/><br/>If you did not request a password reset, no further action is required. <br/><br/>Thanks and Best Regards!'),
(54, 'email_renewal_reminders_subject', 'Hi {full_name}, Here\'s a little Reminder your Membership is expiring soon...'),
(55, 'email_renewal_reminders_content', 'Dear {full_name}, <br/><br/>Your membership with your current package will expire in {days_left} days. <br/><br/>We hope that you will take the time to renew your membership and remain part of our community. It couldn\'t be easier - just click here to renew: {pricing_page} <br/><br/>Thanks and Best Regards!'),
(56, 'email_payment_subject', 'Hi {full_name}, Thank you for your payment'),
(57, 'email_payment_content', 'Hi {full_name}, <br/><br/>You just completed the payment successfully on our service. <br/>Thank you for being awesome, we hope you enjoy your package. <br/><br/>Thanks and Best Regards!'),
(58, 'website_white', 'http://localhost/aibot/inc/themes/backend/default/assets/img/logo-white.png'),
(59, 'file_manager_design_bold_app_id', ''),
(60, 'file_manager_google_api_key', ''),
(61, 'file_manager_google_client_id', ''),
(62, 'file_manager_dropbox_api_key', ''),
(63, 'file_manager_onedrive_api_key', ''),
(64, 'terms_of_services', 'Updating...'),
(65, 'privacy_policy', 'Updating...'),
(66, 'signup_email_verification', '0'),
(67, 'google_recaptcha_site_key', ''),
(68, 'google_recaptcha_secret_key', ''),
(69, 'facebook_login_app_id', ''),
(70, 'facebook_login_app_secret', ''),
(71, 'facebook_login_app_version', 'v9.0'),
(72, 'google_login_client_id', ''),
(73, 'google_login_client_secret', ''),
(74, 'twitter_login_consumer_key', ''),
(75, 'twitter_login_consumer_secret', ''),
(76, 'frontend_theme', 'wimax');

-- --------------------------------------------------------

--
-- Table structure for table `sp_package_manager`
--

CREATE TABLE `sp_package_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `price_monthly` float DEFAULT NULL,
  `price_annually` float DEFAULT NULL,
  `number_accounts` int(11) DEFAULT NULL,
  `trial_day` int(11) DEFAULT NULL,
  `popular` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `permissions` mediumtext DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_package_manager`
--

INSERT INTO `sp_package_manager` (`id`, `ids`, `name`, `description`, `type`, `price_monthly`, `price_annually`, `number_accounts`, `trial_day`, `popular`, `position`, `permissions`, `data`, `status`, `changed`, `created`) VALUES
(1, 'de39a2bd85b84b38207378229620a5f1', 'FE', 'Pick great plan for you', 1, 0, 0, 2, 2147483647, 0, 0, '{\"product_enable\":\"1\",\"payment_key_enable\":\"1\",\"market_place_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_photo\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"50\",\"orders_enable\":\"1\",\"whatsapp_enable\":\"1\",\"whatsapp_profile\":\"1\",\"whatsapp_autoresponder\":\"1\",\"whatsapp_bulk\":\"1\",\"whatsapp_chatbot\":\"1\",\"whatsapp_autoresponder_delay\":\"0\",\"whatsapp_bulk_max_contact_group\":\"10\",\"whatsapp_bulk_max_phone_numbers\":\"500\",\"whatsapp_button_status\":\"1\",\"whatsapp_message_per_day\":\"1000\",\"account_manager_enable\":\"1\",\"am_whatsapp_profiles\":\"1\",\"number_accounts\":\"2\"}', NULL, 1, '2023-04-26 23:05:55', '2019-11-20 22:11:25'),
(2, '8c0e2081734e240051ba3f9e1dee9d0d', 'Unlimited', 'Pick great plan for you', 2, 0, 0, 300000, 0, 0, 2, '{\"social_network_configuration_enable\":\"1\",\"product_enable\":\"1\",\"payment_key_enable\":\"1\",\"caption_enable\":\"1\",\"market_place_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"1000\",\"max_file_size\":\"100\",\"orders_enable\":\"1\",\"whatsapp_enable\":\"1\",\"whatsapp_profile\":\"1\",\"whatsapp_autoresponder\":\"1\",\"whatsapp_bulk\":\"1\",\"whatsapp_chatbot\":\"1\",\"whatsapp_export_participants\":\"1\",\"whatsapp_autoresponder_media\":\"1\",\"whatsapp_autoresponder_delay\":\"0\",\"whatsapp_bulk_media\":\"1\",\"whatsapp_bulk_max_contact_group\":\"1000000\",\"whatsapp_bulk_max_phone_numbers\":\"100000000000\",\"whatsapp_chatbot_media\":\"1\",\"whatsapp_button_status\":\"1\",\"whatsapp_list_message_status\":\"1\",\"whatsapp_message_per_day\":\"100000000000000\",\"account_manager_enable\":\"1\",\"am_whatsapp_profiles\":\"1\",\"number_accounts\":\"300000\"}', NULL, 1, '2023-04-26 23:06:55', '2020-02-26 10:52:26'),
(3, 'c10f887a5185198a77094ce03f7114b2', 'Standard', 'Pick great plan for you', 2, 50, 45, 5, 0, 1, 3, '{\"post_enable\":\"1\",\"facebook_post_enable\":\"1\",\"facebook_livestream_enable\":\"1\",\"instagram_post_enable\":\"1\",\"instagram_activity_enable\":\"1\",\"instagram_analytics_enable\":\"1\",\"instagram_direct_message_enable\":\"1\",\"instagram_livestream_enable\":\"1\",\"twitter_post_enable\":\"1\",\"linkedin_post_enable\":\"1\",\"pinterest_post_enable\":\"1\",\"pinterest_activity_enable\":\"1\",\"telegram_post_enable\":\"1\",\"tumblr_post_enable\":\"1\",\"reddit_post_enable\":\"1\",\"vk_post_enable\":\"1\",\"google_my_business_post_enable\":\"1\",\"youtube_post_enable\":\"1\",\"youtube_livestream_enable\":\"1\",\"ok_post_enable\":\"1\",\"watermark_enable\":\"1\",\"group_manager_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"10\",\"schedules_enable\":\"1\",\"caption_enable\":\"1\",\"account_manager_enable\":\"1\",\"am_facebook_pages\":\"1\",\"am_facebook_groups\":\"1\",\"am_instagram_profiles\":\"1\",\"am_twitter_profiles\":\"1\",\"am_linkedin_profiles\":\"1\",\"am_linkedin_pages\":\"1\",\"am_pinterest_boards\":\"1\",\"am_youtube_profiles\":\"1\",\"am_google_my_business_profiles\":\"1\",\"am_reddit_profiles\":\"1\",\"am_tumblr_profiles\":\"1\",\"am_ok_profiles\":\"1\",\"am_vk_profiles\":\"1\",\"am_vk_pages\":\"1\",\"am_vk_groups\":\"1\",\"am_telegram_channels\":\"1\",\"am_telegram_groups\":\"1\"}', NULL, 1, '2020-04-09 15:27:51', '2020-02-26 10:53:34'),
(4, '6ffde698600b5eca3873c6f60a62782e', 'Permium', 'Pick great plan for you', 2, 70, 65, 7, 0, 0, 4, '{\"post_enable\":\"1\",\"facebook_post_enable\":\"1\",\"facebook_livestream_enable\":\"1\",\"instagram_post_enable\":\"1\",\"instagram_activity_enable\":\"1\",\"instagram_analytics_enable\":\"1\",\"instagram_direct_message_enable\":\"1\",\"twitter_post_enable\":\"1\",\"linkedin_post_enable\":\"1\",\"pinterest_post_enable\":\"1\",\"pinterest_activity_enable\":\"1\",\"telegram_post_enable\":\"1\",\"tumblr_post_enable\":\"1\",\"reddit_post_enable\":\"1\",\"vk_post_enable\":\"1\",\"google_my_business_post_enable\":\"1\",\"youtube_livestream_enable\":\"1\",\"youtube_post_enable\":\"1\",\"ok_post_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"10\",\"schedules_enable\":\"1\",\"watermark_enable\":\"1\",\"group_manager_enable\":\"1\",\"caption_enable\":\"1\",\"account_manager_enable\":\"1\",\"am_facebook_pages\":\"1\",\"am_facebook_groups\":\"1\",\"am_instagram_profiles\":\"1\",\"am_twitter_profiles\":\"1\",\"am_linkedin_profiles\":\"1\",\"am_linkedin_pages\":\"1\",\"am_pinterest_boards\":\"1\",\"am_youtube_profiles\":\"1\",\"am_google_my_business_profiles\":\"1\",\"am_reddit_profiles\":\"1\",\"am_tumblr_profiles\":\"1\",\"am_ok_profiles\":\"1\",\"am_vk_profiles\":\"1\",\"am_vk_pages\":\"1\",\"am_vk_groups\":\"1\",\"am_telegram_channels\":\"1\",\"am_telegram_groups\":\"1\"}', NULL, 1, '2020-04-10 13:28:27', '2020-04-09 15:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `sp_payment_history`
--

CREATE TABLE `sp_payment_history` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `plan` int(1) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_payment_subscriptions`
--

CREATE TABLE `sp_payment_subscriptions` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `subscription_id` text DEFAULT NULL,
  `customer_id` text DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_phone`
--

CREATE TABLE `sp_phone` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `no` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_phone`
--

INSERT INTO `sp_phone` (`id`, `uid`, `no`, `status`) VALUES
(1, 1, '08161885390', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sp_product`
--

CREATE TABLE `sp_product` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `old_price` float NOT NULL,
  `des` text DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`image`)),
  `logtext` text DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `feature` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_product`
--

INSERT INTO `sp_product` (`id`, `uid`, `mid`, `name`, `price`, `old_price`, `des`, `image`, `logtext`, `category`, `feature`, `type`) VALUES
(12, 1, 6, 'Round Neck', 23, 25, 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/ab5dad8f8387b5009d1abf2c9b5e78c9.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/0a614ee456160212651d9d6553324457.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/d6ef365387b5fe2161d83c627b72c86f.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/5aa14973d04b4e5269ed1da1c91e9826.JPG\"]', 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.\r\n\r\nXAMPP is meant only for development purposes. It has certain configuration settings that make it easy to develop locally but that are insecure if you want to have your installation accessible to others. If you want have your XAMPP accessible from the internet, make sure you understand the implications and you checked the FAQs to learn how to protect your site. Alternatively you can use WAMP, MAMP or LAMP which are similar packages which are more suitable for production.\r\n\r\nStart the XAMPP Control Panel to check the server status.', 'Fashion', 1, 0),
(13, 1, 6, 'Ace', 56, 100, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/8f3711baf4ae919b8ff58c3df7ca0750.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/165e2e44d63388c25c619ab59ee8ad38.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/48f08b164ebb0222ce9be2744dd64bf9.JPG\"]', 'Community\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 0),
(14, 1, 6, 'Treaty', 5, 13, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/303c558dbdc1a0accf46b9861e2e424f.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/b6a291f0dbe6c411400a516ab9a25052.JPG\"]', 'Install applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 0),
(15, 1, 6, 'Sneaker', 45, 60, 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/28129309f87066cbaf4070783387bb0b.jpg\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/729d07da406307ef9cc69e3224536459.jpg\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/d2843a953f6db48d6951712717fea86a.jpg\"]', 'Welcome to XAMPP for Windows 7.2.29\r\nYou have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.\r\n\r\nXAMPP is meant only for development purposes. It has certain configuration settings that make it easy to develop locally but that are insecure if you want to have your installation accessible to others. If you want have your XAMPP accessible from the internet, make sure you understand the implications and you checked the FAQs to learn how to protect your site. Alternatively you can use WAMP, MAMP or LAMP which are similar packages which are more suitable for production.\r\n\r\nStart the XAMPP Control Panel to check the server status.\r\n\r\nCommunity\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Fashion', 1, 0),
(18, 19, 9, 'Round Neck', 23, 25, 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/ab5dad8f8387b5009d1abf2c9b5e78c9.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/0a614ee456160212651d9d6553324457.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/d6ef365387b5fe2161d83c627b72c86f.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/5aa14973d04b4e5269ed1da1c91e9826.JPG\"]', 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.\r\n\r\nXAMPP is meant only for development purposes. It has certain configuration settings that make it easy to develop locally but that are insecure if you want to have your installation accessible to others. If you want have your XAMPP accessible from the internet, make sure you understand the implications and you checked the FAQs to learn how to protect your site. Alternatively you can use WAMP, MAMP or LAMP which are similar packages which are more suitable for production.\r\n\r\nStart the XAMPP Control Panel to check the server status.', 'Fashion', 1, 0),
(20, 19, 9, 'Sneaker', 45, 60, 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/28129309f87066cbaf4070783387bb0b.jpg\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/729d07da406307ef9cc69e3224536459.jpg\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/d2843a953f6db48d6951712717fea86a.jpg\"]', 'Welcome to XAMPP for Windows 7.2.29\r\nYou have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.\r\n\r\nXAMPP is meant only for development purposes. It has certain configuration settings that make it easy to develop locally but that are insecure if you want to have your installation accessible to others. If you want have your XAMPP accessible from the internet, make sure you understand the implications and you checked the FAQs to learn how to protect your site. Alternatively you can use WAMP, MAMP or LAMP which are similar packages which are more suitable for production.\r\n\r\nStart the XAMPP Control Panel to check the server status.\r\n\r\nCommunity\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Fashion', 1, 0),
(21, 19, 9, 'Ace', 56, 100, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/8f3711baf4ae919b8ff58c3df7ca0750.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/165e2e44d63388c25c619ab59ee8ad38.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/48f08b164ebb0222ce9be2744dd64bf9.JPG\"]', 'Community\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 0),
(22, 19, 9, 'Sneaker', 45, 60, 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/28129309f87066cbaf4070783387bb0b.jpg\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/729d07da406307ef9cc69e3224536459.jpg\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/d2843a953f6db48d6951712717fea86a.jpg\"]', 'Welcome to XAMPP for Windows 7.2.29\r\nYou have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.\r\n\r\nXAMPP is meant only for development purposes. It has certain configuration settings that make it easy to develop locally but that are insecure if you want to have your installation accessible to others. If you want have your XAMPP accessible from the internet, make sure you understand the implications and you checked the FAQs to learn how to protect your site. Alternatively you can use WAMP, MAMP or LAMP which are similar packages which are more suitable for production.\r\n\r\nStart the XAMPP Control Panel to check the server status.\r\n\r\nCommunity\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Fashion', 1, 0),
(23, 19, 9, 'Treaty', 5, 13, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/303c558dbdc1a0accf46b9861e2e424f.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/b6a291f0dbe6c411400a516ab9a25052.JPG\"]', 'Install applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 0),
(24, 19, 9, 'Ace', 56, 100, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/8f3711baf4ae919b8ff58c3df7ca0750.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/165e2e44d63388c25c619ab59ee8ad38.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/48f08b164ebb0222ce9be2744dd64bf9.JPG\"]', 'Community\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 0),
(25, 19, 9, 'Sneaker', 45, 60, 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/28129309f87066cbaf4070783387bb0b.jpg\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/729d07da406307ef9cc69e3224536459.jpg\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/d2843a953f6db48d6951712717fea86a.jpg\"]', 'Welcome to XAMPP for Windows 7.2.29\r\nYou have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.\r\n\r\nXAMPP is meant only for development purposes. It has certain configuration settings that make it easy to develop locally but that are insecure if you want to have your installation accessible to others. If you want have your XAMPP accessible from the internet, make sure you understand the implications and you checked the FAQs to learn how to protect your site. Alternatively you can use WAMP, MAMP or LAMP which are similar packages which are more suitable for production.\r\n\r\nStart the XAMPP Control Panel to check the server status.\r\n\r\nCommunity\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Fashion', 1, 0),
(26, 1, 4, 'Treaty', 5, 13, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/303c558dbdc1a0accf46b9861e2e424f.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/b6a291f0dbe6c411400a516ab9a25052.JPG\"]', 'Install applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 0),
(27, 1, 4, 'Ace', 56, 100, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/8f3711baf4ae919b8ff58c3df7ca0750.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/165e2e44d63388c25c619ab59ee8ad38.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/48f08b164ebb0222ce9be2744dd64bf9.JPG\"]', 'Community\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 0),
(28, 1, 4, 'Round Neck', 23, 25, 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/ab5dad8f8387b5009d1abf2c9b5e78c9.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/0a614ee456160212651d9d6553324457.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/d6ef365387b5fe2161d83c627b72c86f.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/5aa14973d04b4e5269ed1da1c91e9826.JPG\"]', 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.\r\n\r\nXAMPP is meant only for development purposes. It has certain configuration settings that make it easy to develop locally but that are insecure if you want to have your installation accessible to others. If you want have your XAMPP accessible from the internet, make sure you understand the implications and you checked the FAQs to learn how to protect your site. Alternatively you can use WAMP, MAMP or LAMP which are similar packages which are more suitable for production.\r\n\r\nStart the XAMPP Control Panel to check the server status.', 'Fashion', 1, 0),
(29, 1, 8, 'Ace', 56, 100, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/8f3711baf4ae919b8ff58c3df7ca0750.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/165e2e44d63388c25c619ab59ee8ad38.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/48f08b164ebb0222ce9be2744dd64bf9.JPG\"]', 'Community\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 0),
(30, 1, 8, 'Round Neck', 23, 25, 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/ab5dad8f8387b5009d1abf2c9b5e78c9.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/0a614ee456160212651d9d6553324457.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/d6ef365387b5fe2161d83c627b72c86f.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/5aa14973d04b4e5269ed1da1c91e9826.JPG\"]', 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.\r\n\r\nXAMPP is meant only for development purposes. It has certain configuration settings that make it easy to develop locally but that are insecure if you want to have your installation accessible to others. If you want have your XAMPP accessible from the internet, make sure you understand the implications and you checked the FAQs to learn how to protect your site. Alternatively you can use WAMP, MAMP or LAMP which are similar packages which are more suitable for production.\r\n\r\nStart the XAMPP Control Panel to check the server status.', 'Fashion', 1, 0),
(31, 1, 8, 'Treaty', 5, 13, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/303c558dbdc1a0accf46b9861e2e424f.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/b6a291f0dbe6c411400a516ab9a25052.JPG\"]', 'Install applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 0),
(32, 1, 7, 'Round Neck', 23, 25, 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/ab5dad8f8387b5009d1abf2c9b5e78c9.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/0a614ee456160212651d9d6553324457.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/d6ef365387b5fe2161d83c627b72c86f.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/5aa14973d04b4e5269ed1da1c91e9826.JPG\"]', 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.\r\n\r\nXAMPP is meant only for development purposes. It has certain configuration settings that make it easy to develop locally but that are insecure if you want to have your installation accessible to others. If you want have your XAMPP accessible from the internet, make sure you understand the implications and you checked the FAQs to learn how to protect your site. Alternatively you can use WAMP, MAMP or LAMP which are similar packages which are more suitable for production.\r\n\r\nStart the XAMPP Control Panel to check the server status.', 'Fashion', 1, 1),
(33, 1, 7, 'Ace', 56, 100, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/8f3711baf4ae919b8ff58c3df7ca0750.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/165e2e44d63388c25c619ab59ee8ad38.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/48f08b164ebb0222ce9be2744dd64bf9.JPG\"]', 'Community\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 0),
(34, 1, 7, 'Treaty', 5, 13, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/303c558dbdc1a0accf46b9861e2e424f.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/b6a291f0dbe6c411400a516ab9a25052.JPG\"]', 'Install applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 0),
(35, 1, 7, 'Ace', 56, 100, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/8f3711baf4ae919b8ff58c3df7ca0750.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/165e2e44d63388c25c619ab59ee8ad38.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/48f08b164ebb0222ce9be2744dd64bf9.JPG\"]', 'Community\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 0),
(36, 1, 7, 'Ace', 56, 100, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/8f3711baf4ae919b8ff58c3df7ca0750.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/165e2e44d63388c25c619ab59ee8ad38.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/48f08b164ebb0222ce9be2744dd64bf9.JPG\"]', 'Community\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 1),
(37, 1, 7, 'Round Neck', 23, 25, 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/ab5dad8f8387b5009d1abf2c9b5e78c9.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/0a614ee456160212651d9d6553324457.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/d6ef365387b5fe2161d83c627b72c86f.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/5aa14973d04b4e5269ed1da1c91e9826.JPG\"]', 'You have successfully installed XAMPP on this system! Now you can start using Apache, MariaDB, PHP and other components. You can find more info in the FAQs section or check the HOW-TO Guides for getting started with PHP applications.\r\n\r\nXAMPP is meant only for development purposes. It has certain configuration settings that make it easy to develop locally but that are insecure if you want to have your installation accessible to others. If you want have your XAMPP accessible from the internet, make sure you understand the implications and you checked the FAQs to learn how to protect your site. Alternatively you can use WAMP, MAMP or LAMP which are similar packages which are more suitable for production.\r\n\r\nStart the XAMPP Control Panel to check the server status.', 'Fashion', 1, 1),
(38, 1, 8, 'Ace', 56, 100, 'Can you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.', '[\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/8f3711baf4ae919b8ff58c3df7ca0750.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/165e2e44d63388c25c619ab59ee8ad38.JPG\",\"assets\\/uploads\\/d70886f344113e3e6e5baad70b03f98a\\/product_images\\/48f08b164ebb0222ce9be2744dd64bf9.JPG\"]', 'Community\r\nXAMPP has been around for more than 10 years – there is a huge community behind it. You can get involved by joining our Forums, adding yourself to the Mailing List, and liking us on Facebook, following our exploits on Twitter, or adding us to your Google+ circles.\r\n\r\nContribute to XAMPP translation at translate.apachefriends.org.\r\nCan you help translate XAMPP for other community members? We need your help to translate XAMPP into different languages. We have set up a site, translate.apachefriends.org, where users can contribute translations.\r\n\r\nInstall applications on XAMPP using Bitnami\r\nApache Friends and Bitnami are cooperating to make dozens of open source applications available on XAMPP, for free. Bitnami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the Bitnami XAMPP page for details on the currently available apps.', 'Weight Loss', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sp_purchase_manager`
--

CREATE TABLE `sp_purchase_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` text DEFAULT NULL,
  `item_id` text DEFAULT NULL,
  `purchase_code` text DEFAULT NULL,
  `version` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_purchase_manager`
--

INSERT INTO `sp_purchase_manager` (`id`, `ids`, `item_id`, `purchase_code`, `version`) VALUES
(1, '39270fba435e5ee3ed4f0c63a54f9fb8', '32290038', 'ef44acec-5865-6149-3e31-b4bef408a0e3', '3.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `sp_sessions`
--

CREATE TABLE `sp_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_sessions`
--

INSERT INTO `sp_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('r298hg9vkvmj1lbudel0mut5ap6ccb4a', '::1', 1681522436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313532323433303b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('9madtsfkk2gp3unumj38om1m4668jo7e', '::1', 1681700256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730303235363b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('o54c8da6o51il6al8l3uadjlu1fv5lp9', '::1', 1681700578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730303537383b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('0k10q2as6g797ecv7agj7fnc8nkm7iti', '::1', 1681700929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730303932393b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('p9862et4hulnphp0u5rmfbuoerfnoca8', '::1', 1681701934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730313933343b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('ac408oaaadbm1k315jafcbniluhebnpn', '::1', 1681702631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730323633313b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('50e8ouj4nv47pmn8rr849q1ao3dmh8ss', '::1', 1681702971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730323937313b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('6ucvfhn204duf639c2m1j6anafqlmsd9', '::1', 1681703305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730333330353b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('hon7pt7lj31r543abh1csio8fqn67e83', '::1', 1681704660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730343636303b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('2c90tqp0eksvnvs3emmn09ms1bdjvtgb', '::1', 1681705365, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730353336353b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('qm5idnocsuo1guj55c0jj6pgs2r2i8oo', '::1', 1681705686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730353638363b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('fkfnrfu1sblk6f1fqptmab941c3jvdhh', '::1', 1681706120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730363132303b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('68njdkh61qtnt80j1nj38uf467d19vbb', '::1', 1681706530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730363533303b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('tc2v9os6222s76mr38hngs8empuevkp6', '::1', 1681707220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730373232303b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('v1p94hr55mbb93p8ao3880fcd85u8vmn', '::1', 1681707977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730373937373b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('q077ud16ggn9mtdabf4vs08pt4c3aflm', '::1', 1681708318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313730383331383b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('ne76q4houo9oh2i9e67455ddj9maojuv', '::1', 1681712633, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313731323633333b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('tvonvjj7j58coobiuts4nr6kj1tm2nh4', '::1', 1681715834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313731353833343b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('61kvk333nla3gbo4i2mduu53qb8fm2he', '::1', 1681717096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313731373039363b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('9lq7cupc82huefqbq8mr0ju9fegj3rp3', '::1', 1681717463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313731373436333b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('u9vtoh6lmd557vku56phqlmr6juo940u', '::1', 1681718070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313731383037303b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('4592dq46bi7sk4uk9cbi1hmcga7b2h7t', '::1', 1681718441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313731383434313b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('1vhpcc2blv15694mn4gnru95prs2m5uv', '::1', 1681720296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732303239363b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('7u68rtj31qnovai6qa28i3brfu2u4jli', '::1', 1681720912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732303931323b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('0kunhn9tulb6g88ts86510mq8gqtlmk4', '::1', 1681721242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732313234323b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('njmoq3kh9riftsgg7500vtnhq38fpqtj', '::1', 1681721867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732313836373b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('dr96206t14iaou5euah443oav547uo4u', '::1', 1681722257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732323235373b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('84v68pjn760sljo5m4g4ud1b38dh9i4i', '::1', 1681722854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732323835343b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('1iqpcj0ld38riu95ks5846ktjvtjimui', '::1', 1681723388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732333338383b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('u1te112cfsl3p9cvj6b1rj6qlcah5pq0', '::1', 1681723969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732333936393b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('shapb05st3cal95od043m3rh9ahjvn1o', '::1', 1681724474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732343437343b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('8f24aqm6vm1t62chqsr8alogdcholvpu', '::1', 1681726139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732363132353b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('9auuh2jpnffcu4amg70oclatgtdas29c', '::1', 1681726467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732363436373b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('u4ie1ldi3b2qum8faaojkpmbg40845u5', '::1', 1681726770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732363737303b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('erfl3mtsm9bcclfgo8o4skt5v4tb595k', '::1', 1681728415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732383431353b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('go6nokkrf8k1k1nhgemtujq7rfghdg5e', '::1', 1681728736, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732383733363b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('m0qjqhubbr3vcof2v8l7fhpaa0ld6afv', '::1', 1681729039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313732393033393b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('388fkjsddif2lqhkjocj1e71247i3a0p', '::1', 1681755822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313735353832323b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b),
('jctlmu9k7c53pp4j0v2443bsfgcgrnu8', '::1', 1681756365, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313735363336353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('a3eg33q3ii6ggvlu3i6u3456kgk574u5', '::1', 1681756825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313735363832353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('hnm8mdumra68c1d7p7lnfbmn1epe4kbm', '127.0.0.1', 1681758259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313735383235393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('9sv7oburjdvua0541s0akefo8ei6vg1k', '::1', 1681759102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313735393130323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('cn7kea6a6c5cpcfsvu8tagr4mfmt2csr', '::1', 1681759692, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313735393639323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('e777385ri7a8tern0mu6fqrgloc4v8iv', '::1', 1681762234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313736323233343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('706mic62kieas9v1lmghff14ektfris1', '::1', 1681762579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313736323537393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('39lo6u9gr2qulg23r35r82gnc72hnh2g', '::1', 1681763509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313736333530393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('jidhaf9luja3nmangi60uk346tus6uk2', '::1', 1681764337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313736343333373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('r06m8acakijss8dcfd17fpsa9okg9mm7', '::1', 1681783187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313738333138373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('c0g3mq68dcc3lvvbj0pg1v1a5d97ican', '::1', 1681784337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313738343333373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('9ohbs93rus7vcvq6u5nboppugsjoul5u', '::1', 1681784715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313738343731353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('iqa5fbnp73doo77t7vfujm2glb4aoelp', '::1', 1681785362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313738353336323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('vkkj1k9764jt63d84kgbafcd3finkhg5', '::1', 1681785687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313738353638373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('vgvefha0kttq9ddo6fchaga4glt39jhd', '::1', 1681788143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313738383134333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('72dus5966jv4knjbmq488dk19jnmig5n', '::1', 1681788508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313738383530383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('mvcbnvgmgnrec7rqifrrr45p1j6ln30v', '::1', 1681789058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313738393035383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('4orjoq0h83mqo4qhimesesmvei0drp6e', '::1', 1681791494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739313439343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('fv3e2t8ks78gg4d1bvc11b7fep7uosu0', '::1', 1681792070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739323037303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f6572727c733a32393a22506c656173652053656c6563742061206d61726b657420706c61636521223b),
('hp0cplu0rvnqtj6cfqmhjusrjdg23ni8', '::1', 1681792605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739323630353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f6572727c733a32393a22506c656173652053656c6563742061206d61726b657420706c61636521223b),
('k4850ev5ka3bphcshl71npdnkbugpiip', '::1', 1681792950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739323935303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('bmjhoa35u2p88ji5gmkduahd197gda3b', '::1', 1681793810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739333831303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('6bvfibotckcc80sp7mhuiv2r6h3fnais', '::1', 1681794126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739343132363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('lp7mfsj77kbfjfs4dudmsq73906lfdl2', '::1', 1681794536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739343533363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('t6mtks55fpsrhv7rj5ruq9uf37qcm5jm', '::1', 1681794872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739343837323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('699c818vr67j4d29a3g7q20of1sbsts7', '::1', 1681795604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739353630343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('6r0m12tfbjb7sn6llo0ggknf5rsh2guo', '::1', 1681796192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739363139323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('fjj2omq6efvn71l72dd11p25gtkqkjpv', '::1', 1681796552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739363535323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('61shnl13n9rrk466prrc6f3mp6t3v5ef', '::1', 1681799343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313739393334333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('k5l5a46e8q27vait15gjocb0pc1vgt0f', '::1', 1681800068, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313830303036383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('8ml5kgo3bsh4pk8q2hheka25fin3fj33', '::1', 1681800442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313830303434323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('opbcq2ue2e3sa6eq2h7kvotu01vhgu5f', '::1', 1681800854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313830303835343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('kq34oauu6gfignebkc1669n1pq0qufib', '::1', 1681804320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313830343332303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('iif48p0tnp6jdar1rdlj49iimbnnv4qr', '::1', 1681806005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313830363030353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('d16mqmok3m30c3vlhajg1t8sjj7rotsr', '::1', 1681806415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313830363431353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('1b8pmtgmtp5c9s3q7l12vn4a7efbo46c', '::1', 1681806760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313830363736303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('m13q14nvrpamus7g3aem7jlv9o9dle3r', '::1', 1681807320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313830373332303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('vc2jb6nl47ntpepkanolsbas09773oek', '::1', 1681807624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313830373632343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('bg358sni5ga2l11kvd2651fj8n4jh9fm', '::1', 1681807958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313830373935383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('eo82h6eb3bo3qprkjfir5vqg41bp1hsh', '::1', 1681810550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313831303535303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('hlmere23kgh37mug4ar2n64hgvhcfk12', '::1', 1681810893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313831303839303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('8ccfi36jrstko4qbsdcl791hp2oeamkb', '::1', 1681811373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313831313337333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('9t2bv99s4g6efkcvggag6epa0nkc64cp', '::1', 1681811713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313831313731333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('fcremgop26a02m6gb0hs260btkh6kgc2', '::1', 1681812094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313831323039343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ec18f3rl2in4b7tdm44cplo63r8jr9oj', '::1', 1681812583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313831323538333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('mnkb64eok4vjfjio01pljjtig5i1tmpi', '::1', 1681813024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313831333032343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ufc81n9naffd83crlt2nn7q17bpdo61g', '::1', 1681813380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313831333338303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('duino789t99s06p9ou51e6r0r3k3e69e', '::1', 1681814548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313831343534383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('tlmj2fg3msjc1ml5p0d2ah14hsukc5j8', '::1', 1681815183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313831353138333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('tsm6oh38lk8rpamjqpth0qqel0p2us5s', '::1', 1681815573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313831353533303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('0pg1fe19fnce4btgdbkp2pphva3j8vgf', '::1', 1681815939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313831353933313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('3s4pttr1lllvf7m9a18tjt76ruvqb5ld', '::1', 1681839449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313833393434393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('8mscbj9s67jl0agu33ir39e0s56l4cah', '::1', 1681839774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313833393737343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ullmj4s0m7fp6kicbtvr2asj824je49l', '127.0.0.1', 1681840633, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834303633333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('7f0onk0659f8pcrvlo40sn6u9r74d7vt', '127.0.0.1', 1681842090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834323039303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('g52qt0kmoohekt4n2u1fqjmv6v4orvgi', '::1', 1681842392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834323339323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('v71m3hm25e9ldhddrf81vjmc17e3oc11', '::1', 1681842806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834323830363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('fokgtoi31s760mosra5bi56f224bnma4', '::1', 1681844832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834343833323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('grfs2ql8sbgmtraahddhi3mfklbfidba', '::1', 1681845198, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834353139383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('f054o97lcjr8l9ch5tdck53r89ag18rb', '::1', 1681846903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834363930333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('a6984ffv88f0a2dubk3dbjsh5rpsus1p', '::1', 1681847223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834373232333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ao128sio7sh2dvv4n01r2g8cl1s4rf70', '127.0.0.1', 1681847790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834373739303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('s18jq10sf5vk50ne8pecpqu4civ4nqf3', '::1', 1681870487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837303437323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('iuebd1vipsvj2cjgchv4ogsao25lojmd', '::1', 1681871465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837313436353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('h2a76pn2q81a8b7au3giqsp0imfqj6ri', '::1', 1681871775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837313737353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('3ls4la7ogudiesbs4e7oe25u97d6oo6i', '::1', 1681872599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837323539393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('6bidbvjhju966dc0qj50eh3k02o2fb3u', '::1', 1681872921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837323932313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('leko753fov84o5fp5fs6hiiqgrd45dvf', '::1', 1681873606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837333630363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('aecu6sgehgcbqh7obf1l836jhokci4kd', '::1', 1681875545, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837353534353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('8u5up4n6483skrjenv612tfc4epp1k4t', '::1', 1681875920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837353932303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('pkdaihl08chkvmlnutmsmob1rig75qh2', '::1', 1681876527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837363532373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('jabjr4u2l6v8ij7rasphpmv2l8r46vuv', '::1', 1681876971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837363937313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ae7749nu5ja4mr5416f5lqjlfehicu66', '::1', 1681877358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837373335383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('9h39ea9qqufiv5r5shsk1k6g1bm1gge8', '::1', 1681877811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837373831313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('996nbkjf1vairdb2v8b4krt24am4f34f', '::1', 1681878318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837383331383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('jdd1r8a96mre7kmfld5qm80fhlls9skb', '::1', 1681878637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837383633373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('76tf1n5lgqttlrogsvf56p52ru13203u', '::1', 1681878990, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837383939303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('5e9it2o55kfh88u19gh7jlitqc9vbvr5', '::1', 1681879457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837393435373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('72dv0chbufknbjif7amsipf3caij3024', '::1', 1681879769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313837393736393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('fvtrj3jajihj2708gk8078vi9ik6lcd5', '::1', 1681880089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313838303038393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('2mp3e4f5jlvnumqimu6ump44pd4b6kd2', '::1', 1681880554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313838303535343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('hkj0adlth6cm1vbs1no0ksbfl6rk4849', '::1', 1681880867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313838303836373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('r24s87bmhctevuhho42mfobnd9vfr0o7', '::1', 1681881173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313838313137333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('a470rlo9d83cagsv960ni41blquptlb4', '::1', 1681887263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313838373236333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('vqmhf92eqirdo8p65c0j74hm4tnog23b', '::1', 1681888168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313838383136383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('9aquq87te723aompilleajs8uimnfr0h', '::1', 1681888656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313838383635363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('h3rr4j2lcojh62b0i47adh2mg1t2tpg9', '127.0.0.1', 1681889661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313838393636313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('281f1rtbvd38hrtbgisd58ecm28ith1r', '::1', 1681890087, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839303038373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('lgun05v15rl9v42jprq419ksq2vug2n2', '::1', 1681890398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839303339383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b);
INSERT INTO `sp_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('34oef9gv268e7l0k9svm2m44p0np0nsn', '::1', 1681890838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839303833383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('p6rvr885mvr05ulr8qnd1sk8ekt4g0sh', '::1', 1681892239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839323233393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('oqip5oa8c9elcjvd28r5optqu4bfvb6b', '::1', 1681892592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839323539323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('dob7tdn6rt0915rr7cnuq8q3nhd4rtrp', '::1', 1681892920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839323932303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('87nr17he80cmfcop8nseo1n7g882cr93', '::1', 1681893320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839333332303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('dopuhnqpl8r1miaibv1nk2nisvgrdpgc', '::1', 1681895025, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839353032353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('35jjvbsalf9rdk8nvsfvr55js8pa6tus', '::1', 1681895334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839353333343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('4sq5u386tqlvi85ub2ppie0inljro4ak', '::1', 1681896642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839363634323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('m913au12epojiiq08ddvd0f0lhni2t5f', '::1', 1681897088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839373038383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('4m4kadsisjki215plg7cgdhbg3ei4d37', '::1', 1681897682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839373638323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('mj7q1vtt083mf9oe71n514vv9v1kpmnr', '::1', 1681898142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839383134323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('vhgkbkghsg3k0ucairrj36qa963h5paq', '127.0.0.1', 1681898455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839383435353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('um35128aua7ht5aevofh304ae2nqg7b6', '::1', 1681898833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839383833333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('c7a2b16knsgjlibg6cmhtvo16j09ir5i', '::1', 1681899920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313839393932303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('8cf0hqu1phkrc56inpm7mbk0ca336ubd', '::1', 1681901327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313930313332373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('mgkm0jbsv1caj2pvh0g2bnrgh6mpmpf7', '::1', 1681901675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313930313637353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('4h41mi8rqlarqoqropnd2qj22dv6ofco', '::1', 1681902044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313930323034343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('85emau6dmgageunqo15bci2lrh728r6m', '::1', 1681902830, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313930323833303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('6ashlm599ckc7oo5q3i2rtjsfr53et8m', '::1', 1681903231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313930333233313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('fuif460ov675mmredkjr3g9rh466p39n', '::1', 1681903573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313930333537333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('vgk92gb86j0vq29navldf17q5d5fmf03', '::1', 1681903989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313930333938393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('d8f3to1cah3mdlflrnq1gq2r6fb95oen', '::1', 1681904365, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313930343336353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('h1h5c1oo29he2j3li6brn2t9t22o17sv', '::1', 1681904704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313930343730343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b),
('86320b9ehr36fi84q13mo2l5lnholstu', '::1', 1681957635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313935373630323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('dd1krtan3du83ogpg9pl8c141ol4hroi', '::1', 1681959142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313935393134323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('sub8h0f22hdt9h04n4uq1sv2265284al', '::1', 1681959596, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313935393539363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('6nd5kh311pnvqmontfcm9nbdgql5e3dt', '::1', 1681959953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313935393935333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('cfipo4o8mv03tnm917lip8nipga57o0b', '::1', 1681960675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313936303637353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('1utjttnmj5pip5t8ndqcc4j5rjvoh22c', '::1', 1681961092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313936313039323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('ndoc3lca2uoifhrokhggg4n934mjkn27', '::1', 1681961970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313936313937303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('g4p31kdi73nh25kjevcmttfajf13oidu', '::1', 1681962754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313936323735343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('geej7eudkhl351btimi3agi6mv6jok5k', '::1', 1681965433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313936353433333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('4aargank8tfk5ro3aubqiko08ksd7rd0', '::1', 1681966704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313936363730343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('7laeenc27ef45ebb1jkhmsl8biopjhs8', '::1', 1681967107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313936373130373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d68476a377a6d4b33223b),
('mc663vhogkhmtos6p4068m5nso3buo0b', '::1', 1681968509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313936383530393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6679336f68384877223b),
('umfcq7q1fojjjquh5323jff44sasf80k', '::1', 1681969129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313936393132393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d766a6a5532376d32223b),
('imjes42t1gm7fac5nlec3s1c8vqbpf4q', '::1', 1681970428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937303432383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d744a586230554541223b),
('ejhnfef91bq25tkftrer8l0ibt9fujku', '::1', 1681971171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937313137313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d314b71386d76336a223b),
('f5crf8a26cfgncjidrjoqtufpnmkvttg', '::1', 1681971496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937313439363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5858503735733055223b),
('kv55sdbm7l802qfiguv4j9theeqeum9l', '::1', 1681971838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937313833383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d764d49477a46436e223b),
('5kaboi6e3j5e827ithhhj82uiivacsp6', '::1', 1681973811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937333831313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d426971554473715a223b),
('vq54q0bq3a5khbf7kakusmcip1u2go6h', '::1', 1681973815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937333831313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d794f385a72666b45223b),
('0b1tlio2orqst0f69dhedr3ukegal6b1', '::1', 1681974356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937343335363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4d6c6c54476b6c52223b),
('kdufu2ohsd26dg78ktesru12dh2euk1i', '::1', 1681974741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937343734313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7461696352345747223b),
('6vhjnc8l9947u75i7v5fqmce70ucmbdl', '::1', 1681975128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937353132383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4d64353845553453223b),
('8p5nk4a4a1o4gv54nndch33sconvjgks', '::1', 1681975723, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937353732333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d533979486c683132223b),
('iaisrm00avs1od8h1fla5f9piomm7qra', '::1', 1681976517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937363531373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6171524879386269223b),
('gl3j4uvrcmooio4g1bpt56bars050t22', '::1', 1681977241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937373234313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6543554c44427047223b),
('9bdt3tgsqblc2bclfgcmk2qjsc6fi57d', '::1', 1681977559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937373535393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5439333738356142223b),
('noasarg0i98g8bdk9uquch0chb03lphu', '::1', 1681977881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937373838313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d785a664a654d556e223b),
('9i1artuf443hlf6mga9t5906rpvujnqu', '::1', 1681978269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937383236393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6e6833464d4b6e6a223b),
('i2q8n3gr5o00lbru6atkvirv296u78pa', '::1', 1681978806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937383830363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d76593837744f5a67223b),
('cufru3a1162uk0gsekl6g1id2mivjrs5', '::1', 1681979118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313937393131383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5a6554416b5a3955223b),
('aecll4b7ivf842np0kkim0qi2fe2s1ln', '::1', 1681981767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938313736373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7339456e594d4d5a223b),
('mjqlrotbrgeu3a05kq0hhbfqbof6hn9b', '::1', 1681982086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938323038363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a44356179735135223b),
('schl52r2s6vgivn1dtleflsot3s11jcp', '::1', 1681982388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938323338383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7430704b63567372223b),
('pod3d004djgfulvql2tbej5rf13n221b', '::1', 1681982700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938323730303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a6e506239683174223b),
('fndou03he3boqmd3fb7khqf2aev1qfo0', '::1', 1681983040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938333034303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d3048415a73356939223b),
('8lc7soaesbvqkk9bqli30r05pjdscv8l', '::1', 1681983410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938333431303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51645735487a4e6c223b),
('3t2749oeiot20mjblathr32ogkbskoeq', '::1', 1681983911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938333931313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d384833394f596e56223b),
('u8a0ihpkeottjl6r7vjqi6mm30dr83au', '::1', 1681987147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938373134373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4b684c5144446671223b),
('r5bgcqn4si75en0kg129gup8qll6ps0m', '::1', 1681987468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938373436383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4a45724c6e525631223b),
('tdqrfed6dnl8gmg5i4etsdohq7t9aoig', '::1', 1681987795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938373739353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7761554744303445223b),
('r8gmd2eqln93gepppn3fj799t52afel0', '::1', 1681988133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938383133333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4d46515a686d5070223b),
('s1cjd9oc9r2spbfu34i21vsrjmk34ng3', '::1', 1681988506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938383530363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d3447465469655533223b),
('q1qfm9momdfs6ltgqjnfenkt57a6qag6', '::1', 1681989080, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938393038303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4e356f6c416c4c39223b),
('3gn80b3n3std634tmhvbis1r7i13uufv', '::1', 1681989573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938393537333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d445876396b583658223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('2s3hlfir6hhr1fbd2bua45rq3hgkirh1', '::1', 1681989889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313938393838393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d477744506b4e6a5a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ltfg01mobompbmecilina0devun78t4l', '::1', 1681990249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313939303234393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d42656f5054587751223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('f0td7dboeu0grht0tpugf1v8f90vfrlu', '::1', 1681990682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313939303638323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4c304f53775a7735223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('8d1u5p29abaijshanojloio0hp5krs1s', '::1', 1681991024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313939313032343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d554f393669675143223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('dcose0fokchnh5knr616nsjbbb1b6jjf', '::1', 1681991358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313939313335383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d317648386c5a3043223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('cnjq13a8j7dib8eo476h6cgp6iens94e', '::1', 1681991825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313939313832353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6435756a38636741223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('9j2ss09v48ollecd82b97vgou4lb3sca', '::1', 1681992213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313939323231333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6b736656344b6953223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('c442t5kfoldivu6fq3ip47i6jtt3nntb', '::1', 1681992889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313939323838393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4b594f4553687a7a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('b89e6cjl925ta38qi0a801cb5dsvna62', '::1', 1681993599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313939333539393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d427142707a6f5051223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('rjo4u5f1d4seb7rdd8d27be4d7bdavhk', '::1', 1681993914, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313939333931343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d714d5a4c67426f70223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('1utg25uk26n23dkd5navkltrlciq5j6u', '::1', 1682004510, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030343531303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d3558654c6a716663223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ppm1tsu6ccbuev544c93cuhmrgv9g79v', '::1', 1682004953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030343935333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4d36383644394a36223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('dm4e01npo4leie8rpeb05csf4rsvkdc2', '::1', 1682005635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030353633353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6d4b665a6668674d223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('qrs75hqr44gh68snncsakh270tkrqsbl', '::1', 1682006229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030363232393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d566969376a564f6b223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ur9q21da8dljjneeafqg6kid84qnsfql', '::1', 1682006565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030363536353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d3848384d576c4769223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('s75jk6vcm3jr1p3hrfl6n7h80d4duabr', '::1', 1682006973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030363937333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d434d65744e4b7874223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ciqbtg1520jfphvv8e3at4g96o5p7nv7', '::1', 1682007640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030373634303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7865633663695a68223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('hdlsmi4f8ul25n2ukrhgbnuqhdmemhg7', '127.0.0.1', 1682008276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030383237363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d556b4e67686a5833223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('cb7g8koo77vvhi9dsl4njj06rcvmng36', '::1', 1682009046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323030393034363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d423970565255504d223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('2bjfj4aa39iaq2227htuek6iqr35c5mg', '::1', 1682010234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323031303233343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4e4f627836766f6b223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('te9d0luuttts95tp7ut6vi4qq3ukkeq2', '::1', 1682010832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323031303833323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5a6f795569363973223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('23gqf2n7d1c4ir5clfo2d4vsoolmq6ld', '::1', 1682011309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323031313330393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4f31756d47383378223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('0b89c6cbkvu88r0pov6g585ri89m801i', '::1', 1682015251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323031353235313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4179634b4947676b223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('br4vqtp07475lse8br5rp02b93jgh4c6', '::1', 1682050227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323035303232373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d3167484d62594155223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('e37i1ld8kht77o9qqi0itrgvi4nh4ql1', '::1', 1682050601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323035303630313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5075536a53707174223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('81jvoqbnqs35i3t31clkjd04msj53v3d', '::1', 1682051108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323035313130383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4c3367554743387a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('sf6i8lru9elb0pij5059o78nkrgjohta', '::1', 1682051506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323035313530363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6e7237494a724e69223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('dt4i9iqhp4ed4mcanb91ihllgvm5rk8q', '::1', 1682051907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323035313930363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5674307069374361223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('votprte6gpeltn5ksa9j6343nef5tdpp', '::1', 1682052214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323035323231343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7439434833387741223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('2l1qs3nltccaasb0m4casm6a692p9350', '::1', 1682053045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323035333034353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d65457954544a524d223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('t1aealc0it2enbg647671nid9ejm12jl', '::1', 1682063402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323036333430323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d733636524f423533223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('cjie7i0r1ni1ookmel18085ajtpcp99q', '::1', 1682063744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323036333734343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d67546d6742307a79223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('k7o1mp44enr87o91hntvvaj1b05eg83b', '::1', 1682065573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323036353537333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7371395a39323145223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ggqg307icdujr4obhhesv30vh0orv0cg', '::1', 1682065901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323036353930313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5732504b46306f68223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ocq07l9ihlbimn2enk6jgdnple9amvgq', '::1', 1682066689, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323036363638393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d623471367332574c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('s8tvvm3q7bdaedu5ttmtdblf07oe1eee', '::1', 1682067000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323036373030303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d3466463877595367223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('l3a6aifg12v9mophf10j59udib55kr7l', '::1', 1682067434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323036373433343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d794573744e56445a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('l6bb9qdtckrbd5rrgh6rt9g2rb0bi760', '::1', 1682068259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323036383235393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d55593459785a4557223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('hddtkb3qt1s4g8ga8klboq7la018jn50', '::1', 1682068597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323036383539373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7468414653774655223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('t1ddtfp8skr8anlqb332k5aq2atkjpq4', '::1', 1682068935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323036383933353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57635262664d5a47223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('3hk63mjg6nrd8jt0uo7bc3c92biqf4ha', '127.0.0.1', 1682069614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323036393631343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6f366a4774616754223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('pms0mrc6dgthukevmjcj130vounsht8a', '::1', 1682069957, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323036393935373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6277797668486735223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('6iobkmn9gnmea6e6jvi30gipbsf8p1lt', '::1', 1682073418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323037333431383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5674306f53726332223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('4gipgctseoellap211itkfa5nukjan68', '::1', 1682074141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323037343134313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d743850704e757035223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('65v9a0t7a59vauquej3puv2me9dtc2m5', '::1', 1682074450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323037343435303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d3830634a53755144223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('40j29hlsan4rog5j6n10tsts357cae4n', '::1', 1682074831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323037343833313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d436173796c384c71223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('gsuti4ivi1i276s6gcq88fj6kigoortr', '::1', 1682076001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323037363030313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d45546a514379706a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('qof02fpmitc14opdrt3fqafu48k2at49', '::1', 1682076706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323037363730363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d655a684446325736223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('r9uiq4oo5hj9epgqm4hnknco9m03meat', '::1', 1682077496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323037373439363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6648717337774c76223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('vp2idkp5ns3ch3p8p3pt3mh3oljsmj68', '::1', 1682079749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323037393734393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6959517633707a63223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('05ijgctjo6f291u43b9afnskjivme7pk', '::1', 1682080324, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323038303332343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6b4b516b45784f51223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('2svs7d1m8ae1flu0m938rcopi5bf23nv', '::1', 1682165173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323136353137333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d76667a3571544d34223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('4imjj0g0kiqktoc9phkufctflqk4jnlc', '::1', 1682165566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323136353536363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4a507a7251544c67223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('tc0sm09c5qaejporckt6i4rt702nkd0u', '::1', 1682166754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323136363735343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4b53656151534b70223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('4m967p57ntimnk4bt4nk5kj311cl7oup', '::1', 1682168073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323136383037333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d516c4b6744676c42223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('v941kjb44p9isattp4glcqemdhp7e9ug', '::1', 1682170322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323137303332323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d30534336364a736b223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b);
INSERT INTO `sp_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('askqkkjmid35gurt7n5h9nbe3ijk1hhd', '::1', 1682176640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323137363634303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4765555143424673223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('80gg5reuflcqmqfg90i376s5dhp02k6h', '::1', 1682176968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323137363936383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d594c3072594b426d223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('r6d7509tq5n4tclbqhohc1lkvkat6pee', '::1', 1682177462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323137373436323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d756f75316936767a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('0fqmnnst9vfud6kb610b4onjmq7rtstb', '::1', 1682177953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323137373935333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d596e614a76533671223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('p05e8pfuhr3nbmcnjuplhqtufslvlcsh', '::1', 1682178449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323137383434393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57326e76616d6e43223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('hdnnnluovou9nmlvv6tv45cv3p57aklj', '::1', 1682179202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323137393230323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6536544e44663633223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ebbspgh8bdmu206e1kb635vqrq94i1im', '::1', 1682180160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323138303136303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d666b57746f776f6f223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ibcn63a29uthqe9sg47kfkju6tpmefha', '::1', 1682181167, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323138313136373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d536e31336635556a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('vtgu33ei55ojf5cj1lua8rm0m811n7sr', '::1', 1682181617, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323138313631373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6579494f75334556223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('mss1ontib6o1g1gqa6io00u1h022aukg', '::1', 1682182600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323138323630303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d756a656d6f614e32223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('6bk7pr2t72eo59obqtq07npbglnrvhvp', '::1', 1682183286, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323138333238363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d353751785757616a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('v5d3q6s698nvfu51vp337vg5kj3q93u9', '::1', 1682215756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323231353735363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6952686e68415336223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ldi3oqphao543488cfkukl3re6kr5pdg', '::1', 1682215449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323231353434363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6952686e68415336223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('663s6ct316plkfe8bajqbikg8kp7lfi9', '::1', 1682216273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323231363237333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a31383a226d6f6e65795f6d616e2d4a4133686b633544223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('grn98952jpq1g0dm97l194alj7bk3ssl', '::1', 1682216630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323231363633303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a31383a226d6f6e65795f6d616e2d4a4133686b633544223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('oebqtqgtp02p0mkh959l0lj40sqgnobc', '::1', 1682217230, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323231373233303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d306c363550503146223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('cgnl3u62m8htdncv7cdr02gn378t3tj3', '::1', 1682217581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323231373538313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5579664562473043223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('mik6gqeg5d4snf26vh7o4ru38hne8ir6', '::1', 1682218207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323231383230373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4264355258374538223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('qpcqc3t32ekks44qoqir54pbm9dvev15', '::1', 1682218900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323231383930303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d516b78696a627547223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('l8nldsr1urnpkm64ati5l3mom3ns4hr4', '::1', 1682220809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323232303830393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d516b78696a627547223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('afvgrblq38cthb8gvvjmnt2g5j775k4n', '::1', 1682221458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323232313435383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d516b78696a627547223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('8n0e3geo8dtj3i971d7loglgep20o22s', '::1', 1682221790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323232313739303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7864705957334273223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('jq6pthbgn9gasq73a38jcsiupseafif9', '::1', 1682222624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323232323632343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6334715261363738223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('eh794oiv8mup1jivpijiu57gdc3ip7cm', '::1', 1682223007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323232333030373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5a4a425667757231223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('35li5t2h9i9j05p3m5m5ni8ffbdsmlaf', '::1', 1682227692, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323232373639323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d3057684954466339223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('u8t9vcfmq78hvgv8mi24j01dpo5ec81v', '::1', 1682228115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323232383131353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d304447586a466976223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('138jnudkd0lc9c2a8mmta2cdjan35i31', '::1', 1682228423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323232383432333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d3035597a3657424e223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('30rpsc5576jrbq7dfi4rd1ajvas23trq', '::1', 1682228999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323232383939393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d54757a5466335375223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('7cuo9tmtkote61i4m4th2s1725q5j9qq', '::1', 1682229531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323232393533313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d664d61335149616a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('bljubij5lt760dtr5ica84mrtqictm0e', '::1', 1682230043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323233303034333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d766d433458445664223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('in9v5gu4u4g2rlrv6g07pnq3n88cnh7h', '::1', 1682235592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323233353539323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d676b783673546c4c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('6srood2plkjfhl23ivldmscinhkc0sab', '::1', 1682235924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323233353932343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6a4f667963467965223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('i2ti659ai32579he707i6nr31ioeqqtr', '::1', 1682246091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323234363039313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d793661317948456e223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('m5a77bi4vu03ktmjul51pgt6j8q1351a', '::1', 1682246610, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323234363631303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d364a35564a435a73223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('4ht1uhiat148f4m9iu4ct8njpth7ffqa', '::1', 1682260306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323236303330363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d794c333251635533223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('e0j7d5a9r9l0buhamkskkf1as160p0om', '::1', 1682260945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323236303934353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d393663545570374a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('d5fgjev77ciq9balfekr0uet8mljur3r', '::1', 1682262156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323236323135363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d314c643354385172223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('sljrfbqlcg0v81ol3q9j8becdo0s2c1e', '::1', 1682262469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323236323436393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6867734958305373223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('4stndat1ttkf1mrfg0lt1om1mpk7t6tu', '::1', 1682264168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323236343136383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6254324a344e3450223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('3b3382qn6tqbi71g8kdfn5ej93oh3u3f', '::1', 1682264822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323236343832323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d337031375a516f6f223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('4ff5u5beerdbm798sofslvdgh1ggh9nc', '::1', 1682265184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323236353138343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d547339685353756b223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('nba7in291eg2l5k9ltqoof1f3f1pq6u5', '::1', 1682265870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323236353837303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d584c627047785666223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('52ru9b5399o8ou1lq9571hgftfq71t4l', '::1', 1682266433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323236363433303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d67396e794b76725a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('4ol0kstin3mdi4nfh0e0relprrc46brt', '::1', 1682267056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323236373035363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5058685830665546223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('kroprd2srpkh2ck2v6t7nn79b9gf5bvs', '::1', 1682304036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323330343033363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d47796a34524c356a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('3sdr7vtd78ncjkdk8n7sdvs20o2b81i0', '::1', 1682304526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323330343532363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4f37744266465864223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('1ano1j5fjc092v12u9s928kbbb0q5l6q', '::1', 1682304858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323330343835383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d32726a5248556a6a223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('bunq9ukdhirigmdh7aos0bjckphkk8qq', '::1', 1682305319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323330353331393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6a6e6c5153384f67223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('1mdk6b69s1sjvml3eoi7eekm9ju7spq0', '::1', 1682306349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323330363334393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d42635833636e5868223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('r8tdk23p4hlucpdsem4nn12p47bdoehp', '::1', 1682307161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323330373136313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5076546a74597045223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('mu1eate5sbjkfq79d3rm8u6jk6g8uhkt', '::1', 1682308113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323330383131333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d474b3161354f4265223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('k20urln4s5rbn12ndt2577580b12qu26', '::1', 1682308880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323330383838303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d596a4b765a725a36223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('k3jldutbkk58p5qibjfcvfe0rq30g68i', '::1', 1682310644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323331303634343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d64466a567a4c784f223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('qq2fflcg2bo7osfah6uhouu9m03ujsud', '::1', 1682311005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323331313030353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d493033424f616957223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('t53e0pihukr1c6eu54fmo0glgg1gmf1m', '::1', 1682313720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323331333732303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6b68504e5748704b223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('cvf1d62mrjsjkpon0fb0d7u8u01pbath', '::1', 1682314926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323331343932363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4568303969576147223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('httlfkhalaadcmd74tvhmnki61u4mvup', '::1', 1682315856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323331353835363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d49794a78624d3464223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('ef29rnk2psnbvlf8couqat4nbu8apvpc', '::1', 1682321535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323332313533353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6a6e5a7855574e4e223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('05ro6c6vsojp8pj37ug2us4uf1orsdgc', '::1', 1682326984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323332363938343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d565a7145584c4a78223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('q7c5ajggh4l3gn99spholtq2v6bf8asd', '::1', 1682327708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323332373730383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d3467656646774a68223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('3sjitiib9qtqv1jpjkqjgt37ctasc7hr', '::1', 1682328136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323332383133363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d323065476b775247223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('g3afulf9rvj6lf8tg0u3bvefe7l052p7', '::1', 1682329013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323332393031333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d323065476b775247223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('fq5lv4vi68blbhrqgok9ofretuvealqb', '::1', 1682329694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323332393639343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d323065476b775247223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('e1rg3avju9itgevo61rd4lc35ffc97pt', '::1', 1682329396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323332393338353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d323065476b775247223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('a2hbkp65c1oqft9gnpgbikka0rqv1t2s', '::1', 1682329997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323332393939373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d323065476b775247223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('splnkqhseosfmk331p49kd05jv3mc262', '::1', 1682330380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323333303338303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d323065476b775247223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b705f737563636573737c733a31303a225375636365737366756c223b),
('sfi1ghq2h7c16ulr8cnch2eo5omnot9d', '::1', 1682330685, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323333303638353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d323065476b775247223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('2lk3cfgrlm1bfv8a38n5qnghg2a2s1mq', '::1', 1682331622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323333313632323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d323065476b775247223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('15o0kpjnogdtev4ka5i09433skfld1ob', '::1', 1682332103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323333323130333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d6d676a5831327768223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('ta6uvl22i1a4kok8u7bqof0kcc8sqqmu', '::1', 1682332739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323333323733393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d56646c7779666f45223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('i01rcp7476u7go088mot2qe301p3p5c8', '127.0.0.1', 1682333115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323333333131353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5a4438666c666b4b223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('7itm5rt823j89pq9or0oug1ik6fo1pjq', '::1', 1682334939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323333343933393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d514c68617336456f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('b43ejskhmbj51j4d9fu2qfkuumd86e1s', '::1', 1682335241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323333353234313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4b7739526f517448223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('eb4ujcn78r9ij5o4hi9o83r711k31kqa', '::1', 1682335578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323333353537383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d53586f654d705a4b223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('voca3shbhsdpkf0gljkk7c3oik9b8d6p', '::1', 1682335908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323333353930353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d465051496d435051223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('m2ks5lkg3s9ek4af8do132kf7t2ak41t', '::1', 1682336420, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323333363432303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d42396f485a466a4d223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('4cg7murj7j581c0ot6a4a99bnvr10spd', '::1', 1682344187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323334343138373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('ob5435m9hh1lu553edi176k3245eeop2', '::1', 1682353824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323335333832343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('egtjpb3v50cb9rq885nch8cmnq38qvbg', '::1', 1682354134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323335343133343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('23f4gqf596ho7rfq2446vr00u3dl5enp', '::1', 1682354475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323335343437353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('fcogi46g9fatdkb6l4ros03n22c03v6s', '::1', 1682391536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339313533363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('116pklp5bjq26uv2q5nu8il2bevlij3h', '::1', 1682391945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339313934353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('22f6nl7f5h0ecfvdnsf8it3i2cb6fc11', '::1', 1682392854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339323835343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('ck4i5ee7k16ucoqhjo570ggkg1k2hc19', '::1', 1682394090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339343039303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('6enhnnr58agv9r29rgpgf93pndscfibg', '::1', 1682395645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339353634353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('3fsaca8h8o6gj6s975im7hljok6nsepp', '::1', 1682396279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339363237393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b70617970616c5f6b65795f737563636573737c733a32323a22596f7572205374697065204b65797320736176656421223b5f5f63695f766172737c613a313a7b733a31383a2270617970616c5f6b65795f73756363657373223b733a333a226f6c64223b7d),
('crv9hg5nr0gq6j0uoc1thl4frbrd9ovt', '::1', 1682396873, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339363837333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('okehsg32hdpt2tda8fjv54bj1pn09f21', '::1', 1682397821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339373832313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('vbgrpoifu7e9g7gf1il9r2jh6risuvp6', '::1', 1682398658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339383635383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('vst29078c9sbul4h4k7vsp9e20eesb1k', '::1', 1682400287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430303238373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d7a4f4c336d6f6132223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b70617970616c5f6b65795f737563636573737c733a33343a22596f75722050617970616c20436c69656e745f4944204b6579205570646174656421223b5f5f63695f766172737c613a313a7b733a31383a2270617970616c5f6b65795f73756363657373223b733a333a226f6c64223b7d),
('a2l4prb6cudqua52ian61rmed81m5449', '::1', 1682415154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323431353135343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d556b3439536b3141223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('im3to9vnbtqq81f6mqi1q0vfdog3e8mh', '::1', 1682415668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323431353636383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d5075536f756c5877223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('qerv76qjgorivivaq7ikapa34u9id6hu', '::1', 1682416094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323431363039343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4c4d706e4c676657223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('gsp1j5vmpb31g583r1j0114iok246rte', '::1', 1682416420, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323431363432303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d76486d594d776237223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('boo8f63e7kshn3mbevjn8dg2vo90kfg3', '::1', 1682417157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323431373135373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d514f323651557672223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('87lba7tns7mrq2lnou22m7bf2apnro2v', '::1', 1682417466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323431373436363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d61457172666f4e76223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('0cksqm5bqk05bjqvlnnp6k40eqnnd2r7', '::1', 1682527897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323532373839373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b);
INSERT INTO `sp_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('fdm4oa7rol1vqph2g9b7dub2uad9pqpd', '::1', 1682528428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323532383432383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('vp517qhgb2vhpvhs6vo40mheaunca6ho', '::1', 1682529527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323532393532373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('bitab7ap06k1ha0o5s9mlokano4s70og', '::1', 1682530893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323533303839333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('d825vucqp2gmhn36ccar2c361gi6nfnc', '::1', 1682531197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323533313139373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('fl4k5bm0aaq63j884rs7lrqf3bd2vtl6', '127.0.0.1', 1682531658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323533313635383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('e915offk5m0duvhc0m82t5m8b0u59911', '::1', 1682533248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323533333234383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('c2i1nrkibotf6dv0l0502su16fjjqid3', '::1', 1682545127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323534353132373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('80mm6muaqo5jt9oav40magpusi7qklot', '::1', 1682545458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323534353435383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('gajrgv7jad3l20co4n7q7rqo8vadlp0k', '::1', 1682546056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323534363035363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('l35njlu627m7l8cpcbgovit2jo1jl7u1', '::1', 1682546384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323534363338343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('j64558s168jtoccmlpjmaq5puhen6l3g', '::1', 1682546769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323534363736323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('79pedqrno0c2f888unl82ccofd1vvkrp', '::1', 1682547764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323534373736343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('gbi0og3duijue1ps5esuuhivam9ur75f', '::1', 1682548703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323534383730333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('65hg5oooarq8krh2riu71qtvclq0n5gv', '::1', 1682554094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323535343039343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d51626c43354b364f223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('q143l7a743orifo7jo8qjoouner6gdpo', '::1', 1682593311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323539333331313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('vj22nkiuu23us3lqt1o77p99s83sc0m2', '::1', 1682594003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323539343030333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('qph6at6oh08g3qn5f81jg7or9e1ev7mc', '::1', 1682594630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323539343633303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('0gt0859f45oq6pl9tkvg01lu1g7vcnuk', '::1', 1682594329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323539343332333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('l7klitbg97v8que7cb8e7s2niv3u6ndt', '::1', 1682596638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323539363633383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('tp1t89ogdi6rtarkpj50q9suhbdd6gja', '::1', 1682597906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323539373930363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('1vhg91jaludvki21b002el2g2b1ajv2t', '::1', 1682610157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323631303135373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('8lt6lhtr87rn1q7lgv0kpvlls0hi5aj8', '::1', 1682611572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323631313537323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('0ctmahfnilm6nvjp49iq2pp6mcn74fgk', '::1', 1682614902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323631343836393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('46jj3vjjfoo8kr3u4dqpi2djbhg6kv8k', '::1', 1682615719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323631353731393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('7qm1vfm8cvnhi5jjhie475c9c2ac49a7', '::1', 1682616152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323631363135323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('3bnag2alb7ao3v72icki7q2r7evnlps6', '::1', 1682619706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323631393730363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('tgrqlskus023mv6mqdgpffjmlsk5609h', '::1', 1682619316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323631393238373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('t62imrnpqc6nje3u26slr1g72394mfje', '::1', 1682620064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632303036343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('mmup3kfd31aaej94d391pmgo4qjr9d0v', '::1', 1682620499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632303439393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('otdrb02e1mjfe0ul1pceklmp7h9qpqdf', '::1', 1682620808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632303830383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('kgfo0qqbd183g3o98u1v5384v7cne719', '::1', 1682621516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632313531363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a323a223231223b),
('ha7ps7ah1ff1vpc8d7c9urejtfdfufnd', '::1', 1682622078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632323037383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('fjbq6ups99qseesdkjur2hk7tr7tj4n1', '::1', 1682622742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632323734323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('hf4dpm2in13e15g7n1a6a5c0lhcekk9a', '::1', 1682623228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632333232383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('7bmg6lapclvfauss5up8en3drkcgiq2a', '::1', 1682623538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632333533383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('pnugpvvrfpgartl1lams7gqt00am7k44', '::1', 1682623866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632333836363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('b914dfub901dlofgmnp759harqo0frmq', '::1', 1682624220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632343232303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('83nobo63jdj17g5jq1gmab1vo2d0rqbo', '::1', 1682628421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632383432313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('7l3rke8imflj4qmintttq91h675dfqr1', '::1', 1682629155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632393135353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('iv9g3shf9tqsbge141oql1c4crslmaai', '::1', 1682629766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323632393736363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('cigdql9k42iqh4rd8qvesokdiuchn89l', '::1', 1682637417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323633373431373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('qnq1a4ka8sft12dkeefhd1m9266il0uj', '::1', 1682638877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323633383837373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('s58qjdsg0kje90t5ip2u1udslkemln51', '::1', 1682639247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323633393234373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d487268765a49626c223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('1sd5ljra3co7bccsl6et9ja55dfco1d3', '::1', 1682639626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323633393632363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d464c6436686e7533223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('sl4nip3dpliogbskbecsg9brltahhqu0', '::1', 1682640093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323634303039333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('ancio4096gf4442lubg7g6ni6sb2sfn9', '::1', 1682640953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323634303935333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('ocp2e0oaceklin0ol14e73bfgb9ljscb', '::1', 1682642738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323634323733383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('gtpl4kfgs4tg8paiilkn1i5o61573vgg', '127.0.0.1', 1682643268, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323634333236383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('cq02fhk58jjc645uqkigo6jbakgu5v5a', '::1', 1682643614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323634333631343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('f2pbhs6108trusrqsbaapihq4ms49p6j', '::1', 1682645659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323634353635393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('05qg0h7d4a0nlmr2lpnfrei6mt384r3t', '::1', 1682643921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323634333932303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('1aihl1bakokv576ageq9rq29r8vk1fmd', '::1', 1682646009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323634363030393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('ejck7bpkf7t50qbqb9r5b7fekgrpebiq', '::1', 1682646551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323634363535313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('gsd8rfrn8piagoh2os49se6cdss88kjp', '::1', 1682646920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323634363932303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('64fmnbsl4l26j08bo15gkgnksj6fphah', '::1', 1682647468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323634373436383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('cqgc4ebs0k2o2oj9oreshr33mef1tq9o', '::1', 1682648056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323634383035363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('6vtqjkvf7ransco2k8hgn6jmkfa67cls', '::1', 1682653996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323635333939363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('vn2lde57vbbfroutkduklvrcraipe0e0', '::1', 1682654676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323635343637363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('ollhq0p3bljlmi85udfbgvp314tg5c09', '::1', 1682655430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323635353433303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('ipoitjdsdcrekthcjcnnnhvimvvnaufq', '::1', 1682655858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323635353835383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('c9c4dmlm0lj999mp7k9nrt9hpb414g9q', '::1', 1682656440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323635363434303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('uqbug692pgkadhed3g35mdm2btr5mag4', '::1', 1682657344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323635373334343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b706167657c733a303a22223b),
('95pkmd599tf99dbrjlinfkq9kvqp0c7l', '::1', 1682657910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323635373931303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('vs8ijq5a114svqfj5cla7e1t4ro0fkfv', '::1', 1682660067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323636303036373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('t24u1kvjtp1s63n01ttrni8pblq6u3h6', '::1', 1682660396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323636303339363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('mgamkgk3cqerj2nfrho79mobag823ibt', '::1', 1682660843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323636303834333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('79i2p7fou2e4asp51hmm2gbuf2pjjp1a', '::1', 1682661436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323636313433363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('lgj51efaoo1p3gih37vnbjjr2s5icfnk', '::1', 1682662310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323636323331303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('m8m4lujt490b479d68nk9lji7v9fqegu', '::1', 1682662679, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323636323637393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('97o065l82bkbvfqf2rhfrunr2rjbq51s', '::1', 1682689415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323638393431353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('jgal1bvg0slgvedsihq56oepujsi54ir', '::1', 1682690005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323639303030353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226533376534363831353035383639616361633263396565336434643939333132223b7465616d5f69647c733a33323a223161663031333234373133316264376561653264323432313763653862623838223b),
('s3as3eov46utkl3kfa5b31oqve0oaqrb', '::1', 1682690323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323639303332333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('hrmlt1s4gnt7ao83h53aagqqqu46golq', '::1', 1682690683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323639303638333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('vjl1kh12c12a4c33ugfldlvpmrl5li5k', '::1', 1682691041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323639313034313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('l9ar5m1sd710fbch59p20dqo163mqqnf', '::1', 1682691395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323639313339353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('fam76hjcbim3jkb4plbuevl05lr479cm', '::1', 1682699747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323639393734373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('7g09tmgrsqqsf89nkpb7q42rcg2o2rpm', '::1', 1682707621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323730373539353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d57796e4164334876223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('nctspscnq68f3obo49dp4vtkfgtolf6d', '::1', 1682710239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323731303233393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d76304951446e6e5a223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('05pfrhvmeeb1a05egv65rj6ndnpo4228', '::1', 1682726871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323732363837313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('pk07111khrbmlaf83gklh73lu1k462f8', '::1', 1682728499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323732383439393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('k4ct2q23qq996j0npq6ofmt81iujusb1', '::1', 1682769846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323736393834363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('3pet9m63e602edqfj58ire7ko98apnqi', '::1', 1682770208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323737303230383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('j8vfr0ta037lhct7io4mjkavok8n5hjd', '::1', 1682770540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323737303534303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('0nc8je7uvvo8q5jr95l22ve8vqnjef7m', '::1', 1682771076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323737313037363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a383a2263616d706169676e223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('phpd99e4uq084uft3qfs67gh95t8d2h8', '::1', 1682771448, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323737313434383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a383a2263616d706169676e223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('4krt82v81s56o5eha3i99ipropb13tc7', '::1', 1682772196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323737323139363b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a383a2263616d706169676e223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('t4old6otinc0n1v95mj1u3of3lgr1a6g', '::1', 1682772888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323737323838383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a383a2263616d706169676e223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('fvjmkqtr8feajv92fgkk8vpr58u78f95', '::1', 1682773922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323737333932323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a383a2263616d706169676e223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('efgbl40ggdu6dov57e1h3vtv5fvusvc6', '::1', 1682774252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323737343235323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a383a2263616d706169676e223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('3uhe4vr28ouqu0phhiku7vjqietbfmmm', '::1', 1682777791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323737373737313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a383a2263616d706169676e223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('a46nljrervn4r71u8pg789elgqamltru', '::1', 1682860309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323836303330393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a353a226c65616473223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('drr0d0p1kq2j78r1j68gomh9rntnfilc', '::1', 1682860631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323836303633313b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('jvgs68cuhrg6gi86ajl5jku6jsevn6tr', '::1', 1682861117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323836313131373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('qtdr7girtlgvkgnhdqj13k06vk723os0', '::1', 1682861648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323836313634383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a353a226c65616473223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b);
INSERT INTO `sp_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('n5jutgg62oceleodip8sj5i91glk1eni', '::1', 1682863076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323836333037333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('nf9o88oc17kgddvncvjrfplatqv249qt', '::1', 1682864797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323836343739373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('qbjh7l400i0gf2hio9jmegh2b4i63ntl', '::1', 1682865102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323836353130323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('dse1idcu6fgoccl65ue60hnojccvblss', '::1', 1682865815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323836353831353b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('p8co1890aa0t0d0jqrbrg2rg4tsfjk8o', '::1', 1682868439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323836383433393b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('hitk5b8ss5o8afl2esl80f0ead32g799', '::1', 1682898827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323839383832373b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a353a226c65616473223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('4gfbhfir2mhseq9gmopvvprdojm7ajqq', '::1', 1682899273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323839393237333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('fc88abalsiep7ihf8vi7o77o236fg68p', '::1', 1682899624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323839393632343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('uu9s1ro5gc7bam8eeq56av7uf7qrj18q', '::1', 1682900070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323930303037303b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('ina7aoj54t98jlh9cm23g2m383sl5fvd', '::1', 1682900662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323930303636323b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('01qnrc8c7lakrgvrb9bnshp6kjp6j3f2', '::1', 1682900988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323930303938383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('9rl8t02ss41la2lpgt62fs6gp3odk9ne', '::1', 1682901424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323930313432343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('qmdfbngim15g9thidr66uskb2phjmsgm', '::1', 1682904104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323930343130343b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('hekmjis0ahjgb8ltd9jvpbsphiursabg', '::1', 1682904748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323930343734383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('u0pjbfi560glpg0fcbdm8b6rq1ilf5md', '::1', 1682947403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323934373430333b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b),
('qqhr9ukbveaqa165mq5pdmm9lbij2bks', '::1', 1682947948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323934373934383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b70686f6e655f737563636573737c733a33303a22596f7572205768617473617070204e756d62657220697320536176656421223b5f5f63695f766172737c613a313a7b733a31333a2270686f6e655f73756363657373223b733a333a226f6c64223b7d),
('es17pnnrmrrccelkpu2n27njhp4naqh0', '::1', 1682948341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323934373934383b74696d657a6f6e657c733a31323a224166726963612f4c61676f73223b637573746f6d65725f69647c733a32313a22746573745f546f6e696768742d4168473775795752223b705f737563636573737c733a31303a225375636365737366756c223b706167657c733a303a22223b7569647c733a33323a226437303838366633343431313365336536653562616164373062303366393861223b7465616d5f69647c733a33323a226364633634663737326236626538353532353336316564363837306537353536223b);

-- --------------------------------------------------------

--
-- Table structure for table `sp_team`
--

CREATE TABLE `sp_team` (
  `id` int(11) NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `permissions` longtext NOT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_team`
--

INSERT INTO `sp_team` (`id`, `ids`, `owner`, `pid`, `permissions`, `data`) VALUES
(1, 'cdc64f772b6be85525361ed6870e7556', 1, 1, '{\"whatsapp_enable\":\"1\",\"whatsapp_profile\":\"1\",\"whatsapp_autoresponder\":\"1\",\"whatsapp_bulk\":\"1\",\"whatsapp_chatbot\":\"1\",\"whatsapp_autoresponder_delay\":\"0\",\"whatsapp_bulk_max_contact_group\":\"10\",\"whatsapp_bulk_max_phone_numbers\":\"500\",\"whatsapp_button_status\":\"1\",\"whatsapp_message_per_day\":\"1000\",\"product_enable\":\"1\",\"market_place_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_photo\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"50\",\"account_manager_enable\":\"1\",\"am_whatsapp_profiles\":\"1\",\"number_accounts\":\"2\"}', ''),
(19, '1af013247131bd7eae2d24217ce8bb88', 19, 1, '{\"whatsapp_enable\":\"1\",\"whatsapp_profile\":\"1\",\"whatsapp_autoresponder\":\"1\",\"whatsapp_bulk\":\"1\",\"whatsapp_chatbot\":\"1\",\"whatsapp_autoresponder_delay\":\"0\",\"whatsapp_bulk_max_contact_group\":\"10\",\"whatsapp_bulk_max_phone_numbers\":\"500\",\"whatsapp_button_status\":\"1\",\"whatsapp_message_per_day\":\"1000\",\"product_enable\":\"1\",\"market_place_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_photo\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"50\",\"account_manager_enable\":\"1\",\"am_whatsapp_profiles\":\"1\",\"number_accounts\":\"2\"}', NULL),
(20, 'be8a70aa8bc7b293875c98a24dc6bc80', 20, 1, '{\"product_enable\":\"1\",\"payment_key_enable\":\"1\",\"market_place_enable\":\"1\",\"file_manager_enable\":\"1\",\"file_manager_photo\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"50\",\"orders_enable\":\"1\",\"whatsapp_enable\":\"1\",\"whatsapp_profile\":\"1\",\"whatsapp_autoresponder\":\"1\",\"whatsapp_bulk\":\"1\",\"whatsapp_chatbot\":\"1\",\"whatsapp_autoresponder_delay\":\"0\",\"whatsapp_bulk_max_contact_group\":\"10\",\"whatsapp_bulk_max_phone_numbers\":\"500\",\"whatsapp_button_status\":\"1\",\"whatsapp_message_per_day\":\"1000\",\"account_manager_enable\":\"1\",\"am_whatsapp_profiles\":\"1\",\"number_accounts\":\"2\"}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sp_team_member`
--

CREATE TABLE `sp_team_member` (
  `id` int(11) NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_users`
--

CREATE TABLE `sp_users` (
  `id` int(11) NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `pid` text DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `fullname` mediumtext DEFAULT NULL,
  `email` mediumtext DEFAULT NULL,
  `password` mediumtext DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `timezone` mediumtext DEFAULT NULL,
  `login_type` mediumtext DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `reseller_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_users`
--

INSERT INTO `sp_users` (`id`, `ids`, `pid`, `role`, `fullname`, `email`, `password`, `package`, `expiration_date`, `timezone`, `login_type`, `data`, `status`, `changed`, `reseller_id`, `created`) VALUES
(1, 'd70886f344113e3e6e5baad70b03f98a', NULL, 1, 'Appclick Tech', 'appclicktech@gmail.com', '1c7101f410846361477250f10f5878ca', 1, '2030-09-10', 'Africa/Lagos', 'direct', NULL, 2, '2023-04-24 10:45:55', 0, '2020-04-10 15:12:43'),
(19, 'e37e4681505869acac2c9ee3d4d99312', NULL, 0, 'moyewa moses', 'moyewatosin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '2024-01-24', 'Africa/Abidjan', 'direct', NULL, 2, '2023-04-17 05:39:25', 0, '2023-04-17 05:39:25'),
(20, '227d468c480b52665c4980d620eabe2a', NULL, 0, 'seun bamidele', 'appclicktechnology@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '0000-00-00', 'Africa/Abidjan', 'direct', NULL, 2, '2023-04-27 11:17:03', 0, '2023-04-27 11:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `sp_whatsapp_autoresponder`
--

CREATE TABLE `sp_whatsapp_autoresponder` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `instance_id` text DEFAULT NULL,
  `cate` int(11) DEFAULT 1,
  `template` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `media` longtext DEFAULT NULL,
  `except` longtext DEFAULT NULL,
  `path` text DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `result` text DEFAULT NULL,
  `sent` int(11) DEFAULT NULL,
  `send_to` int(1) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_whatsapp_chatbot`
--

CREATE TABLE `sp_whatsapp_chatbot` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `instance_id` text DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `cate` int(11) DEFAULT 1,
  `template` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `caption` text DEFAULT NULL,
  `media` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `run` int(1) DEFAULT 1,
  `sent` int(11) DEFAULT NULL,
  `send_to` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_whatsapp_contacts`
--

CREATE TABLE `sp_whatsapp_contacts` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_whatsapp_phone_numbers`
--

CREATE TABLE `sp_whatsapp_phone_numbers` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `pid` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `params` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_whatsapp_schedules`
--

CREATE TABLE `sp_whatsapp_schedules` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `contact_group_id` int(11) DEFAULT NULL,
  `time_post` int(11) DEFAULT NULL,
  `min_delay` int(11) DEFAULT NULL,
  `max_delay` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `cate` int(11) DEFAULT 1,
  `template` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `media` longtext DEFAULT NULL,
  `path` text DEFAULT NULL,
  `sent` int(11) DEFAULT 0,
  `failed` int(11) DEFAULT 0,
  `result` longtext DEFAULT NULL,
  `running` int(1) DEFAULT 0,
  `status` int(11) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_whatsapp_sessions`
--

CREATE TABLE `sp_whatsapp_sessions` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `instance_id` text DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_whatsapp_sessions`
--

INSERT INTO `sp_whatsapp_sessions` (`id`, `ids`, `team_id`, `instance_id`, `data`, `status`) VALUES
(7, '28af5e88646ee8a7347e319703a5f171', 1, '6446521D25A6E', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sp_whatsapp_stats`
--

CREATE TABLE `sp_whatsapp_stats` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `team_id` text DEFAULT NULL,
  `wa_message_sent_today` int(11) DEFAULT NULL,
  `wa_chat_count` int(11) DEFAULT 0,
  `wa_chatbot_count` int(11) DEFAULT NULL,
  `wa_autoresponder_count` int(11) DEFAULT NULL,
  `wa_bulk_total_count` int(11) DEFAULT NULL,
  `wa_bulk_sent_count` int(11) DEFAULT NULL,
  `wa_bulk_failed_count` int(11) NOT NULL,
  `wa_time_reset` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_whatsapp_template`
--

CREATE TABLE `sp_whatsapp_template` (
  `id` int(11) NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `cate` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment_key`
--
ALTER TABLE `payment_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_account_manager`
--
ALTER TABLE `sp_account_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_blog`
--
ALTER TABLE `sp_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_cam`
--
ALTER TABLE `sp_cam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_caption`
--
ALTER TABLE `sp_caption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_cart`
--
ALTER TABLE `sp_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_faqs`
--
ALTER TABLE `sp_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_file_manager`
--
ALTER TABLE `sp_file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_language`
--
ALTER TABLE `sp_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_language_category`
--
ALTER TABLE `sp_language_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_leads`
--
ALTER TABLE `sp_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_market`
--
ALTER TABLE `sp_market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_options`
--
ALTER TABLE `sp_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_package_manager`
--
ALTER TABLE `sp_package_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_payment_history`
--
ALTER TABLE `sp_payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_payment_subscriptions`
--
ALTER TABLE `sp_payment_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_phone`
--
ALTER TABLE `sp_phone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_product`
--
ALTER TABLE `sp_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_purchase_manager`
--
ALTER TABLE `sp_purchase_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_sessions`
--
ALTER TABLE `sp_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `sp_team`
--
ALTER TABLE `sp_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_team_member`
--
ALTER TABLE `sp_team_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_users`
--
ALTER TABLE `sp_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_whatsapp_autoresponder`
--
ALTER TABLE `sp_whatsapp_autoresponder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_whatsapp_chatbot`
--
ALTER TABLE `sp_whatsapp_chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_whatsapp_contacts`
--
ALTER TABLE `sp_whatsapp_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_whatsapp_phone_numbers`
--
ALTER TABLE `sp_whatsapp_phone_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_whatsapp_schedules`
--
ALTER TABLE `sp_whatsapp_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_whatsapp_sessions`
--
ALTER TABLE `sp_whatsapp_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_whatsapp_stats`
--
ALTER TABLE `sp_whatsapp_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_whatsapp_template`
--
ALTER TABLE `sp_whatsapp_template`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment_key`
--
ALTER TABLE `payment_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sp_account_manager`
--
ALTER TABLE `sp_account_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_blog`
--
ALTER TABLE `sp_blog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_cam`
--
ALTER TABLE `sp_cam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sp_caption`
--
ALTER TABLE `sp_caption`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_cart`
--
ALTER TABLE `sp_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `sp_faqs`
--
ALTER TABLE `sp_faqs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sp_file_manager`
--
ALTER TABLE `sp_file_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sp_language`
--
ALTER TABLE `sp_language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_language_category`
--
ALTER TABLE `sp_language_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_leads`
--
ALTER TABLE `sp_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sp_market`
--
ALTER TABLE `sp_market`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sp_options`
--
ALTER TABLE `sp_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `sp_package_manager`
--
ALTER TABLE `sp_package_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sp_payment_history`
--
ALTER TABLE `sp_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_payment_subscriptions`
--
ALTER TABLE `sp_payment_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_phone`
--
ALTER TABLE `sp_phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sp_product`
--
ALTER TABLE `sp_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sp_purchase_manager`
--
ALTER TABLE `sp_purchase_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sp_team`
--
ALTER TABLE `sp_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sp_team_member`
--
ALTER TABLE `sp_team_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_users`
--
ALTER TABLE `sp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sp_whatsapp_autoresponder`
--
ALTER TABLE `sp_whatsapp_autoresponder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_whatsapp_chatbot`
--
ALTER TABLE `sp_whatsapp_chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_whatsapp_contacts`
--
ALTER TABLE `sp_whatsapp_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_whatsapp_phone_numbers`
--
ALTER TABLE `sp_whatsapp_phone_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_whatsapp_schedules`
--
ALTER TABLE `sp_whatsapp_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_whatsapp_sessions`
--
ALTER TABLE `sp_whatsapp_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sp_whatsapp_stats`
--
ALTER TABLE `sp_whatsapp_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_whatsapp_template`
--
ALTER TABLE `sp_whatsapp_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
