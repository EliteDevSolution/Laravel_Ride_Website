-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2019 at 06:16 PM
-- Server version: 10.3.20-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ateaqsza_ateaqsza_ride`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `email`, `mobile`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Miyo Alexander', 'family1844@outlook.com', '6125299999', '123456', NULL, '2019-03-02 05:15:21', '2019-03-02 05:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `account_password_resets`
--

CREATE TABLE `account_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'RideShare', 'admin@admin.com', '$2y$10$tOGJxi2h09QKERZP3.jzROaMBrInJCKqVETf1WAyvKBCwsKN5qJNG', NULL, 'KvdKcy2Mibdyzu6S6JMjbUntbsFULYHlb3l9rMS7ALWCsNXbhWIujj1MtkDe', NULL, '2019-10-11 11:15:58'),
(2, 'ateam', 'family1844@outlook.com', '$2y$10$tOGJxi2h09QKERZP3.jzROaMBrInJCKqVETf1WAyvKBCwsKN5qJNG', NULL, 'j3McWi0rDnjpQD9aXvItMxtPvd7V0dJOXu2xEPvYeciI6roRLCqwRyX69Djs', '2019-02-28 05:00:00', '2019-11-25 00:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_four` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('up','pu') COLLATE utf8_unicode_ci NOT NULL,
  `delivered` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dispatchers`
--

CREATE TABLE `dispatchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dispatchers`
--

INSERT INTO `dispatchers` (`id`, `name`, `email`, `mobile`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Zeeshan', 'shanezahid@gmail.com', '03201231236', '$2y$10$tOGJxi2h09QKERZP3.jzROaMBrInJCKqVETf1WAyvKBCwsKN5qJNG', 'oT1w4BTH4ro1Rgds4EHCMN2GxeDArUVlYcdUEAbBs30U3c8ccEEOlFUpFrP3', '2017-12-08 21:59:00', '2019-10-11 12:56:21'),
(3, 'Ahsan mehmood', 'ahsan.mehmood187@gmail.com', '03438899665', '$2y$10$lotxVcv0CxPwxQRwyb6shOHvPiTcTF7pKTz468FqSSxwahEiaaZVW', NULL, '2017-12-09 00:36:01', '2017-12-09 00:36:01'),
(4, 'Jamil', 'jamilurrehman1@gmail.com', '923360007017', '$2y$10$dOOI6ohpznewl6gICobN/.naYZcf.xRYKZurEUjdOYUUiZVlXofBG', 'xrEwrY13q2jiR4eyzESGaeKiMW9AeYYYM50s8QMKzTmnCeKJojfLilinEiUu', '2018-02-03 12:58:20', '2018-08-21 09:54:15'),
(5, 'Admin', 'admin@gmail.com', '112233', '$2y$10$MQEBf0kAQK6YXZR9bQhwm.taebKQ.ziP8BAgKFm97gzWQtjNCr/zS', NULL, '2018-04-04 18:23:41', '2018-04-04 18:23:41'),
(6, 'Muhammad Zohaib Khan', 'dispatch@gmail.com', '3202553174', '$2y$10$NbfIxUD07FsO/9MHEdMZlOke9lKCBGAaz.2NaeG16U.75JdfPr2e6', NULL, '2018-08-21 09:56:03', '2018-08-21 09:56:03'),
(7, 'Halmat Nanakaliy', 'TaxiRosemont@gmail.com', '8476991100', '$2y$10$Aiyph4oP/b/n3LzD/FXfVO50bDw4/SnIGvP0ELXZDE66bgG/c7Iou', NULL, '2018-09-14 07:35:42', '2018-09-14 07:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `dispatcher_password_resets`
--

CREATE TABLE `dispatcher_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('DRIVER','VEHICLE') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Driver License', 'DRIVER', NULL, '2018-11-01 12:47:25'),
(4, 'Back Ground Consent forms', 'DRIVER', NULL, '2018-11-01 12:47:58'),
(5, 'Registration Certificate', 'VEHICLE', NULL, NULL),
(6, 'Insurance Certificate', 'VEHICLE', NULL, NULL),
(7, 'Vehicle Inspection sheet ', 'VEHICLE', NULL, '2018-11-01 12:48:28'),
(8, 'MVR Court-purpose ', 'DRIVER', '2018-02-23 13:01:17', '2018-02-23 13:01:17'),
(9, 'Bank Account ', 'DRIVER', '2018-02-23 13:01:44', '2018-02-23 13:01:44'),
(10, 'Social Security #: ', 'DRIVER', '2018-02-23 13:02:29', '2018-11-01 12:56:04'),
(11, 'Driver Application', 'DRIVER', '2018-11-01 12:49:00', '2018-11-01 12:49:00'),
(12, 'Driver Lease Agreement', 'DRIVER', '2018-11-01 12:53:00', '2018-11-01 12:53:00'),
(13, 'Independent Contract aggreement', 'DRIVER', '2018-11-01 12:53:55', '2018-11-01 12:53:55'),
(14, 'Partnership agreement', 'DRIVER', '2018-11-01 12:54:42', '2018-11-01 12:54:42'),
(15, 'Drivers Handbook', 'DRIVER', '2018-11-01 12:55:22', '2018-11-01 12:55:22'),
(16, 'New Hire forms', 'DRIVER', '2018-11-01 12:57:01', '2018-11-01 12:57:01'),
(17, 'Driver License/ID card', 'DRIVER', '2018-11-01 12:58:32', '2018-11-01 12:58:32'),
(18, 'Workmanship Comp Wavier Form', 'DRIVER', '2019-03-02 05:27:06', '2019-03-02 05:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `fleets`
--

CREATE TABLE `fleets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_password_resets`
--

CREATE TABLE `fleet_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'user', 'profile.old_password', 'Old Password', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(2, 0, 'en', 'user', 'profile.password', 'Password', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(3, 0, 'en', 'user', 'profile.confirm_password', 'Confirm Password', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(4, 0, 'en', 'user', 'profile.first_name', 'First Name', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(5, 0, 'en', 'user', 'profile.last_name', 'Last Name', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(6, 0, 'en', 'user', 'profile.email', 'Email', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(7, 0, 'en', 'user', 'profile.mobile', 'Mobile', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(8, 0, 'en', 'user', 'profile.general_information', 'General Information', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(9, 0, 'en', 'user', 'profile.profile_picture', 'Profile Picture', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(10, 0, 'en', 'user', 'profile.wallet_balance', 'Wallet Balance', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(11, 0, 'en', 'user', 'profile.edit', 'Edit', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(12, 0, 'en', 'user', 'profile.save', 'Save', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(13, 0, 'en', 'user', 'profile.edit_information', 'Edit Information', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(14, 0, 'en', 'user', 'profile.change_password', 'Change Password', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(15, 0, 'en', 'user', 'profile.profile', 'Profile', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(16, 0, 'en', 'user', 'profile.logout', 'Logout', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(17, 0, 'en', 'user', 'profile.name', 'Name', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(18, 1, 'en', 'user', 'cash', 'pasiay', '2018-04-26 01:02:01', '2018-08-08 03:20:31'),
(19, 0, 'en', 'user', 'booking_id', 'Booking Id', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(20, 0, 'en', 'user', 'service_number', 'Car Number', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(21, 0, 'en', 'user', 'service_model', 'Car Model', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(22, 0, 'en', 'user', 'card.fullname', 'Full Name', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(23, 0, 'en', 'user', 'card.card_no', 'Card Number', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(24, 0, 'en', 'user', 'card.cvv', 'CVV', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(25, 0, 'en', 'user', 'card.add_card', 'Add Card', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(26, 0, 'en', 'user', 'card.delete', 'Delete', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(27, 0, 'en', 'user', 'card.month', 'Month', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(28, 0, 'en', 'user', 'card.year', 'Year', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(29, 0, 'en', 'user', 'card.default', 'Default', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(30, 0, 'en', 'user', 'fare_breakdown', 'FARE BREAKDOWN', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(31, 0, 'en', 'user', 'ride.finding_driver', 'Finding your Driver', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(32, 0, 'en', 'user', 'ride.accepted_ride', 'Accepted Your Ride', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(33, 0, 'en', 'user', 'ride.arrived_ride', 'Arrived At your Location', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(34, 0, 'en', 'user', 'ride.onride', 'Enjoy your Ride', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(35, 0, 'en', 'user', 'ride.waiting_payment', 'Waiting for Payment', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(36, 0, 'en', 'user', 'ride.rate_and_review', 'Rate and Review', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(37, 0, 'en', 'user', 'ride.ride_now', 'Ride Now', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(38, 0, 'en', 'user', 'ride.cancel_request', 'Cancel Request', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(39, 0, 'en', 'user', 'ride.ride_status', 'Ride Status', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(40, 0, 'en', 'user', 'ride.dropped_ride', 'Your Ride is Completed', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(41, 0, 'en', 'user', 'ride.ride_details', 'Ride Details', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(42, 0, 'en', 'user', 'ride.invoice', 'Invoice', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(43, 0, 'en', 'user', 'ride.base_price', 'Base Fare', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(44, 0, 'en', 'user', 'ride.tax_price', 'Tax Fare', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(45, 0, 'en', 'user', 'ride.distance_price', 'Distance Fare', '2018-04-26 01:02:01', '2018-08-08 03:17:07'),
(46, 0, 'en', 'user', 'ride.comment', 'Comment', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(47, 0, 'en', 'user', 'ride.detection_wallet', 'Wallet Detection', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(48, 0, 'en', 'user', 'ride.rating', 'Rating', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(49, 0, 'en', 'user', 'ride.km', 'Kilometer', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(50, 0, 'en', 'user', 'ride.total', 'Total', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(51, 0, 'en', 'user', 'ride.amount_paid', 'Amount to be Paid', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(52, 0, 'en', 'user', 'ride.promotion_applied', 'Promotion Applied', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(53, 0, 'en', 'user', 'ride.request_inprogress', 'Ride Already in Progress', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(54, 0, 'en', 'user', 'ride.request_scheduled', 'Ride Already Scheduled on this time', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(55, 0, 'en', 'user', 'ride.cancel_reason', 'Cancel Reason', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(56, 0, 'en', 'user', 'dashboard', 'Dashboard', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(57, 0, 'en', 'user', 'payment', 'Payment', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(58, 0, 'en', 'user', 'wallet', 'Wallet', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(59, 0, 'en', 'user', 'my_wallet', 'My Wallet', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(60, 0, 'en', 'user', 'my_trips', 'My Trips', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(61, 0, 'en', 'user', 'in_your_wallet', 'in your wallet', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(62, 0, 'en', 'user', 'status', 'Status', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(63, 0, 'en', 'user', 'driver_name', 'Driver Name', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(64, 0, 'en', 'user', 'driver_rating', 'Driver Rating', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(65, 0, 'en', 'user', 'payment_mode', 'Payment Mode', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(66, 0, 'en', 'user', 'add_money', 'Add Money', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(67, 0, 'en', 'user', 'date', 'Date', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(68, 0, 'en', 'user', 'schedule_date', 'Scheduled Date', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(69, 1, 'en', 'user', 'amount', 'Total Amount', '2018-04-26 01:02:02', '2018-08-08 03:20:04'),
(70, 0, 'en', 'user', 'type', 'Type', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(71, 0, 'en', 'user', 'time', 'Time', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(72, 0, 'en', 'user', 'request_id', 'Request ID', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(73, 0, 'en', 'user', 'paid_via', 'PAID VIA', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(74, 0, 'en', 'user', 'from', 'From', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(75, 0, 'en', 'user', 'total_distance', 'Total Distance', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(76, 0, 'en', 'user', 'eta', 'ETA', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(77, 0, 'en', 'user', 'to', 'To', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(78, 0, 'en', 'user', 'use_wallet_balance', 'Use Wallet Balance', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(79, 0, 'en', 'user', 'available_wallet_balance', 'Available Wallet Balance', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(80, 0, 'en', 'user', 'estimated_fare', 'Estimated Fare', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(81, 0, 'en', 'user', 'charged', 'CHARGED', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(82, 0, 'en', 'user', 'payment_method', 'Payment Methods', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(83, 0, 'en', 'user', 'promotion', 'Promotions', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(84, 0, 'en', 'user', 'add_promocode', 'Add Promocode', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(85, 0, 'en', 'user', 'upcoming_trips', 'Upcoming trips', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(86, 0, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(87, 0, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(88, 0, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(89, 0, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(90, 0, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(91, 0, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(92, 0, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(93, 0, 'en', 'validation', 'array', 'The :attribute must be an array.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(94, 0, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(95, 0, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(96, 0, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(97, 0, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(98, 0, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(99, 0, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(100, 0, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(101, 0, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(102, 0, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(103, 0, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(104, 0, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(105, 0, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(106, 0, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(107, 0, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(108, 0, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(109, 0, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(110, 0, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(111, 0, 'en', 'validation', 'file', 'The :attribute must be a file.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(112, 0, 'en', 'validation', 'filled', 'The :attribute field is required.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(113, 0, 'en', 'validation', 'image', 'The :attribute must be an image.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(114, 0, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(115, 0, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(116, 0, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(117, 0, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(118, 0, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(119, 0, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(120, 0, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(121, 0, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(122, 0, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(123, 0, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(124, 0, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(125, 0, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(126, 0, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(127, 0, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(128, 0, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(129, 0, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(130, 0, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(131, 0, 'en', 'validation', 'present', 'The :attribute field must be present.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(132, 0, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(133, 0, 'en', 'validation', 'required', 'The :attribute field is required.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(134, 0, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(135, 0, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(136, 0, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(137, 0, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(138, 0, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(139, 0, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(140, 0, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(141, 0, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(142, 0, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(143, 0, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(144, 0, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(145, 0, 'en', 'validation', 'string', 'The :attribute must be a string.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(146, 0, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(147, 0, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(148, 0, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(149, 0, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(150, 0, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(151, 0, 'en', 'pagination', 'previous', '&laquo; Previous', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(152, 0, 'en', 'pagination', 'next', 'Next &raquo;', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(153, 0, 'en', 'servicetypes', 'MIN', 'Per Minute Pricing', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(154, 0, 'en', 'servicetypes', 'HOUR', 'Per Hour Pricing', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(155, 0, 'en', 'servicetypes', 'DISTANCE', 'Distance Pricing', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(156, 0, 'en', 'servicetypes', 'DISTANCEMIN', 'Distance and Per Minute Pricing', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(157, 0, 'en', 'servicetypes', 'DISTANCEHOUR', 'Distance and Per Hour Pricing', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(158, 0, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(159, 0, 'en', 'passwords', 'reset', 'Your password has been reset!', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(160, 0, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(161, 0, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(162, 0, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(163, 0, 'en', 'api', 'user.incorrect_password', 'Incorrect Password', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(164, 0, 'en', 'api', 'user.password_updated', 'Password Updated', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(165, 0, 'en', 'api', 'user.location_updated', 'Location Updated', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(166, 0, 'en', 'api', 'user.profile_updated', 'Profile Updated', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(167, 0, 'en', 'api', 'user.user_not_found', 'User Not Found', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(168, 0, 'en', 'api', 'user.not_paid', 'User Not Paid', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(169, 0, 'en', 'api', 'ride.request_inprogress', 'Already Request in Progress', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(170, 0, 'en', 'api', 'ride.no_providers_found', 'No Drivers Found', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(171, 0, 'en', 'api', 'ride.request_cancelled', 'Your Ride Cancelled', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(172, 0, 'en', 'api', 'ride.already_cancelled', 'Already Ride Cancelled', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(173, 0, 'en', 'api', 'ride.already_onride', 'Already You are Onride', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(174, 0, 'en', 'api', 'ride.provider_rated', 'Driver Rated', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(175, 0, 'en', 'api', 'ride.request_scheduled', 'Ride Scheduled', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(176, 0, 'en', 'api', 'ride.request_already_scheduled', 'Ride Already Scheduled', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(177, 0, 'en', 'api', 'something_went_wrong', 'Something Went Wrong', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(178, 0, 'en', 'api', 'logout_success', 'Logged out Successfully', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(179, 0, 'en', 'api', 'services_not_found', 'Services Not Found', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(180, 0, 'en', 'api', 'promocode_applied', 'Promocode Applied', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(181, 0, 'en', 'api', 'promocode_expired', 'Promocode Expired', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(182, 0, 'en', 'api', 'promocode_already_in_user', 'Promocode Already in Use', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(183, 0, 'en', 'api', 'paid', 'Paid', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(184, 0, 'en', 'api', 'added_to_your_wallet', 'Added to your Wallet', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(185, 0, 'en', 'api', 'push.request_accepted', 'Your Ride Accepted by a Driver', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(186, 0, 'en', 'api', 'push.arrived', 'Driver Arrived at your Location', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(187, 0, 'en', 'api', 'push.incoming_request', 'New Incoming Ride', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(188, 0, 'en', 'api', 'push.added_money_to_wallet', ' Added to your Wallet', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(189, 0, 'en', 'api', 'push.charged_from_wallet', ' Charged from your Wallet', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(190, 0, 'en', 'api', 'push.document_verfied', 'Your Documents are verified, Now you are ready to Start your Business', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(191, 0, 'en', 'api', 'push.provider_not_available', 'Sorry for inconvience time, Our partner or busy. Please try after some time', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(192, 0, 'en', 'api', 'push.user_cancelled', 'User Cancelled the Ride', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(193, 0, 'en', 'api', 'push.provider_cancelled', 'Driver Cancelled the Ride', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(194, 0, 'en', 'api', 'push.schedule_start', 'Your schedule ride has been started', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(195, 0, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(196, 0, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2018-04-26 01:02:02', '2018-08-08 03:17:07'),
(197, 0, 'en', 'user', 'asxas', NULL, '2018-08-08 03:17:47', '2018-08-08 03:17:47'),
(198, 0, 'en', 'api', 'ride.ride_cancelled', NULL, '2019-08-11 20:05:25', '2019-08-11 20:05:25'),
(199, 0, 'en', 'api', 'promocode_already_in_use', NULL, '2019-08-11 20:05:25', '2019-08-11 20:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2015_08_25_172600_create_settings_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2017_01_11_180503_create_admins_table', 1),
(11, '2017_01_11_180511_create_providers_table', 1),
(12, '2017_01_11_181312_create_cards_table', 1),
(13, '2017_01_11_181357_create_chats_table', 1),
(14, '2017_01_11_181558_create_promocodes_table', 1),
(15, '2017_01_11_182454_create_provider_documents_table', 1),
(16, '2017_01_11_182536_create_provider_services_table', 1),
(17, '2017_01_11_182649_create_user_requests_table', 1),
(18, '2017_01_11_182717_create_request_filters_table', 1),
(19, '2017_01_11_182738_create_service_types_table', 1),
(20, '2017_01_25_172422_create_documents_table', 1),
(21, '2017_01_31_122021_create_provider_devices_table', 1),
(22, '2017_02_02_192703_create_user_request_ratings_table', 1),
(23, '2017_02_06_080124_create_user_request_payments_table', 1),
(24, '2017_02_14_135859_create_provider_profiles_table', 1),
(25, '2017_02_21_131429_create_promocode_usages_table', 1),
(26, '2017_06_07_045207_add_social_login_to_providers_tables', 1),
(27, '2017_06_17_151030_create_dispatchers_table', 1),
(28, '2017_06_17_151031_create_dispatcher_password_resets_table', 1),
(29, '2017_06_17_151145_create_fleets_table', 1),
(30, '2017_06_17_151146_create_fleet_password_resets_table', 1),
(31, '2017_06_17_151150_add_fleet_to_providers_table', 1),
(32, '2017_06_19_130022_add_booking_id_to_user_request', 1),
(33, '2017_06_19_155736_add_cancel_reason_to_user_request', 1),
(34, '2017_06_20_154148_create_accounts_table', 1),
(35, '2017_06_20_154149_create_account_password_resets_table', 1),
(36, '2019_07_15_234732_add_columns_to_user_request_payments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00d0adf1881f7be28a06d5a0dcd39357a9ad05aa8bcbc88a2ece044daef6a3596e19997d75e087f9', 155, 2, NULL, '[]', 0, '2018-06-15 19:19:26', '2018-06-15 19:19:26', '2018-06-30 12:19:26'),
('012b03e3c8c6b4929c8c3aaea7546850fa4ba4f837d0149b6e971dbb44750d62193cb27afa43e632', 194, 2, NULL, '[]', 0, '2018-09-17 04:14:55', '2018-09-17 04:14:55', '2018-10-01 21:14:55'),
('014c13251e2786da0b7c8b0322adb6ab9ac9468d3827ae460bb12d88fda1f9ab34ba525bd9e51b0a', 113, 2, NULL, '[]', 0, '2018-05-01 00:18:33', '2018-05-01 00:18:33', '2018-05-15 17:18:32'),
('01a87918cfec3ac8cd852800f2d9384593f140edc379905edba110c171afbd7d3a7f2b04838b1388', 121, 2, NULL, '[]', 1, '2018-02-19 09:30:56', '2018-02-19 09:30:56', '2018-03-06 02:30:56'),
('0210082337e73e53a3eaed1acdfda5e641bf8dfd749688d5cff66c17e314bd89dfedb630b16ae785', 116, 2, NULL, '[]', 1, '2018-07-30 09:21:25', '2018-07-30 09:21:25', '2018-08-14 02:21:25'),
('028581c1d44e6e4a18eaeef92e333535fc6460e1b65e68d9c15ed8ea61367d14b4841c9c87651bd8', 171, 2, NULL, '[]', 0, '2018-08-08 00:22:55', '2018-08-08 00:22:55', '2018-08-22 17:22:55'),
('037d622e26138fed6bebd104d0a1cdd5f83ee81f64934d88677d8ee8e9094e4907b8ee25c9f98f06', 127, 2, NULL, '[]', 0, '2018-03-07 11:05:36', '2018-03-07 11:05:36', '2018-03-22 04:05:36'),
('03d8abccbe622e7c2a3a05069aef1bf0d15b7db8732d360ae1591b16b59aa832fc7a945b05c14553', 113, 2, NULL, '[]', 0, '2018-03-26 11:11:17', '2018-03-26 11:11:17', '2018-04-10 04:11:17'),
('05ae0a06949ee2fbb7146e071a242b28ae89cabc9334b5951d9fa7b4a74d6cc344217cecaf258cb5', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:05', '2018-09-09 23:23:05', '2018-09-24 16:23:05'),
('075a574aaaea7f7c5627fdfaff3d02dabbf55e99402858a91e8d13bf4554fc8c79627040220afaf2', 188, 2, NULL, '[]', 0, '2018-09-18 02:18:42', '2018-09-18 02:18:42', '2018-10-02 19:18:42'),
('08372897114ebeb86d55ed5c8d50258e15d49cff026eb3f419338c6bd51b0638abc5418638fe8849', 113, 2, NULL, '[]', 0, '2018-02-24 05:59:13', '2018-02-24 05:59:13', '2018-03-10 22:59:13'),
('086530afef4715178c792404bbe7698cac809f119243dbee996ffd0fb4895c16256fc6d79d8fad12', 191, 2, NULL, '[]', 0, '2018-09-22 10:06:07', '2018-09-22 10:06:07', '2018-10-07 03:06:07'),
('089a784a78022f77053a1d1d1c34687238c561171ede0c2f92f8f8a7072399fd95193945531a8e60', 121, 2, NULL, '[]', 0, '2018-04-09 20:33:18', '2018-04-09 20:33:18', '2018-04-24 13:33:18'),
('095e855c5fe54a4f92b03cee0389a2bcf6df26aaf75cb51a08a6f901fcb12435df3a9e00284f8a5c', 113, 2, NULL, '[]', 0, '2018-02-20 22:30:38', '2018-02-20 22:30:38', '2018-03-07 15:30:38'),
('0ab2866359f3c9ebe79f1a2ef98c30e6c5ee9b5dfdc682de42a3568950b727537ba564674ac5337b', 183, 2, NULL, '[]', 0, '2018-09-05 02:10:23', '2018-09-05 02:10:23', '2018-09-19 19:10:23'),
('0af5fb6bd47256ed7f38eeb9f8c013fef5f1e4b21291dad31961c3528062e241355bd9d390daee5a', 178, 2, NULL, '[]', 0, '2018-08-19 10:56:04', '2018-08-19 10:56:04', '2018-09-03 03:56:04'),
('0b2a933447fd1ea3f2d2f450f33d750bb4c7942ef2f326d7f352e8cba7da9ae6d1b28b319b7ec687', 113, 2, NULL, '[]', 0, '2018-03-27 00:19:45', '2018-03-27 00:19:45', '2018-04-10 17:19:45'),
('0b54df5aac5fa2813877acb9a90b86c4a4f5e0c89a6812e17f3adf51e6f91161b7e25d5df5f18ed6', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:52', '2018-09-09 23:23:52', '2018-09-24 16:23:52'),
('0bcabde3352dd6816058b80fe886ebe66ee81b5784674d1c3180f4e34e605972ec50198d98f1b7cd', 113, 2, NULL, '[]', 1, '2018-03-23 14:54:29', '2018-03-23 14:54:29', '2018-04-07 07:54:29'),
('0bf1e907afc952625ebdb820287aa4abbf4f830dcd26d7e517aac3c0890e2097f70c78132e88e9da', 113, 2, NULL, '[]', 0, '2018-01-25 23:01:14', '2018-01-25 23:01:14', '2018-02-09 16:01:14'),
('0c35c05a65e9f8d5a3491759daceea2bbec44ccbc6986c0dd2a8522faf521e750a9948dc8b4e927b', 192, 2, NULL, '[]', 0, '2018-09-20 05:17:06', '2018-09-20 05:17:06', '2018-10-04 22:17:06'),
('0e6c0c09d812ed9196fd141b937fe843122f1b417ba33a2397bf19ecc235ac066ffa5c9225cec7a3', 133, 1, 'socialLogin', '[]', 0, '2018-03-14 05:33:44', '2018-03-14 05:33:44', '2028-03-13 22:33:44'),
('0fa7cde6f8735498ffa054acf101b16842d9c9cfacae375ff3ef61ae48ddf09814d666fe1b1e18d2', 113, 2, NULL, '[]', 0, '2018-03-23 15:02:42', '2018-03-23 15:02:42', '2018-04-07 08:02:42'),
('0fe16000944b360543207f69606a154b7cbba3c99beedb03bedbfd37f04c89247f1b4988467c98e2', 191, 2, NULL, '[]', 0, '2018-09-18 10:48:29', '2018-09-18 10:48:29', '2018-10-03 03:48:29'),
('10296a832ec2fd007b670d516983363efc61bb329c59d893db3bf6f13c8e586c2d33a48c1ffe3e00', 113, 2, NULL, '[]', 0, '2018-03-06 16:01:20', '2018-03-06 16:01:20', '2018-03-21 09:01:20'),
('11fc68b3f53306933fb290bf1289ba3a45d23fd820ad976b990b493f66f9d9b5b4342b017c575f4c', 113, 2, NULL, '[]', 0, '2018-04-09 23:40:38', '2018-04-09 23:40:38', '2018-04-24 16:40:38'),
('127667b830ea913978adeb218c14a8345f150084d57e760b173852eceb1535c50062f5dc1f878ea4', 191, 2, NULL, '[]', 0, '2018-09-26 09:57:32', '2018-09-26 09:57:32', '2018-10-11 02:57:32'),
('138930ecb8bff86140471395de7f979cfa55a8a1de80245147a282449430b5362525890492df6080', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:19', '2018-09-09 23:23:19', '2018-09-24 16:23:19'),
('13c7ff6de62eea55b2dac7b7312c40c9fdbe6ea51c9fba33c136abb529495c38a271fc50ddb54d04', 113, 2, NULL, '[]', 0, '2018-02-20 07:19:42', '2018-02-20 07:19:42', '2018-03-07 00:19:42'),
('13f00c100ace049d23da2fea5cec8a0296ce4cdfe14114c48d8888252bea043d5edef674c3b8650d', 113, 2, NULL, '[]', 0, '2018-03-09 22:53:33', '2018-03-09 22:53:33', '2018-03-24 15:53:33'),
('13f685014281c77483a5a367c3314648431ef3b31b020bd6cc4d0e1d826e9cb0840edd3be013d500', 191, 2, NULL, '[]', 0, '2018-09-16 07:21:41', '2018-09-16 07:21:41', '2018-10-01 00:21:41'),
('1449380a6ae3ee9effc6b8f53ab60c6dd89db8648766581723a471aead44e1ea23689dce75426d7f', 172, 1, 'socialLogin', '[]', 0, '2018-08-11 04:59:35', '2018-08-11 04:59:35', '2028-08-10 21:59:35'),
('14766fcdb7f3159477543389990847963bf4feeb5f567bb461f90f8a2b3f553b038f3ab79a32635a', 113, 2, NULL, '[]', 0, '2018-02-23 10:33:21', '2018-02-23 10:33:21', '2018-03-10 03:33:20'),
('15c8210748b9b076bb1a8bc6b7d2cf406dde6a4d23845f5ea08ebae0b66275c620af3eee4a48d042', 113, 2, NULL, '[]', 0, '2018-01-27 08:32:21', '2018-01-27 08:32:21', '2018-02-11 01:32:21'),
('173367fe7a48ae9f7c3f369d1d779cf160776014ccee49de8278b2a2017ba96d89a1385504c73325', 191, 2, NULL, '[]', 0, '2018-09-19 10:04:05', '2018-09-19 10:04:05', '2018-10-04 03:04:05'),
('17446e4b67ff3cdb93daf57760ce6feef9241921262eebde60fd490061910982f072dce12ca83dfb', 182, 2, NULL, '[]', 0, '2018-09-02 02:23:05', '2018-09-02 02:23:05', '2018-09-16 19:23:05'),
('189b2e2dfc562fbc439f7e5012b97d98b878293726fd2ccc8c7345c0ae9353bbcede9faca3348ee0', 162, 2, NULL, '[]', 0, '2018-07-03 20:01:01', '2018-07-03 20:01:01', '2018-07-18 13:01:01'),
('18abd2a8b43db24b8b23e55fa740b575e4a88d867b49c602afe56069512f00e107ac34ca1f1efa6b', 113, 2, NULL, '[]', 0, '2018-04-21 20:13:42', '2018-04-21 20:13:42', '2018-05-06 13:13:42'),
('18d9feb94b1ebca4cff89d4db50ae8c3964094aaa5818a783ad680f10e34d9909c79906c3766e10f', 113, 2, NULL, '[]', 0, '2018-03-10 20:39:10', '2018-03-10 20:39:10', '2018-03-25 13:39:10'),
('1a11afda328d059b567cc778a8678143f2eef536ee5051074de08ae90eee336ef1f9a13e98bc951b', 176, 2, NULL, '[]', 0, '2018-08-15 00:43:51', '2018-08-15 00:43:51', '2018-08-29 17:43:51'),
('1a36de65635b96c109c5a0b1737d7841dfc90927f62164ae6f24d3e6296d6e662821261cc5b6514b', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:27', '2018-09-09 23:22:27', '2018-09-24 16:22:27'),
('1af5529838290f52c78ea3a5524551b030d83c467e064a73758a40f90e1bbdd33163482cbab12393', 205, 2, NULL, '[]', 0, '2018-09-22 20:16:32', '2018-09-22 20:16:32', '2018-10-07 13:16:32'),
('1b3f0123197e41c144222bfd2c3ef603a4b9a863d38d06e1831871e05e7df0e2ae6e447959c776a3', 113, 2, NULL, '[]', 0, '2018-03-20 05:20:22', '2018-03-20 05:20:22', '2018-04-03 22:20:22'),
('1b77f8f8ef2fcb88a2410ba959a448f0209295941686e2b43b3a328dc9ef888c8bba899f73fd8ffe', 113, 2, NULL, '[]', 0, '2018-03-07 06:17:41', '2018-03-07 06:17:41', '2018-03-21 23:17:41'),
('1c10c47a3397753caeaeeb5402695d1b9766146a44710709c6f857a131dc68017365314fd42b55ad', 162, 2, NULL, '[]', 0, '2018-07-03 20:53:50', '2018-07-03 20:53:50', '2018-07-18 13:53:50'),
('1ca524af6d835c30af27689910e6bfd37469980b3b6cb8cca73847d6dcf96cbe82a21ad0f64012ec', 113, 2, NULL, '[]', 0, '2018-03-02 07:31:21', '2018-03-02 07:31:21', '2018-03-17 00:31:21'),
('1d68d4e43a27c96c9ddafb8332cd0a8163d2894348e70d51fc4dd2e5937501b63c41adde3258c15b', 162, 2, NULL, '[]', 1, '2018-08-29 18:30:39', '2018-08-29 18:30:39', '2018-09-13 11:30:39'),
('1d74acefd41b4a68fa2a73b67a97f8fa727c77628bd933380ea63a0000b3ab4a85bda6ff0349ef4f', 113, 2, NULL, '[]', 0, '2018-02-19 14:19:56', '2018-02-19 14:19:56', '2018-03-06 07:19:56'),
('1d9982a6fddf1bb19ce0b50a3612e3530d83dec3994d9fb891006e6d3e981b527c53ee75b78c99ad', 204, 1, 'socialLogin', '[]', 0, '2018-09-21 17:53:00', '2018-09-21 17:53:00', '2028-09-21 10:53:00'),
('1e7165684442b0ae1e577f4c99d8090a72f58e2ad29af2c76e0efb8429d338a3c47ba0b37ba4971e', 128, 2, NULL, '[]', 0, '2018-03-22 17:29:25', '2018-03-22 17:29:25', '2018-04-06 10:29:25'),
('1f7c7af261889d3657f4570aecfd7c5f5ef63c2fcc96278100c8b90f821253e96f470aa0e574c4ba', 128, 2, NULL, '[]', 0, '2018-04-11 09:46:21', '2018-04-11 09:46:21', '2018-04-26 02:46:21'),
('1f9c94b23404d62e6b8ed7c0a06e524a51a45c6e88b09e1f3730b990e7741b669dbc311dff7dd387', 152, 2, NULL, '[]', 0, '2018-10-29 06:30:49', '2018-10-29 06:30:49', '2018-11-13 02:30:49'),
('1fa272aae54c16f9eec0dc39d713b06bac0862d7ff7445c97724e3e7d2442108e0ef1a79e9138afa', 113, 2, NULL, '[]', 1, '2018-02-13 12:32:26', '2018-02-13 12:32:26', '2018-02-28 05:32:26'),
('2031aeb7296ab2dc176afa01268b912acd0febe6d9fdc13e0aa284c7ca2f8d40515cb351011e94f8', 147, 1, 'socialLogin', '[]', 0, '2018-04-17 06:46:18', '2018-04-17 06:46:18', '2028-04-16 23:46:18'),
('20a1a0e236767d5bf919ea2217f4c51c7e6186f6c36c3c17702466e620ecaf6e3ca2a10ca1fb04bb', 188, 2, NULL, '[]', 0, '2018-09-11 04:58:50', '2018-09-11 04:58:50', '2018-09-25 21:58:50'),
('20f75191ec2b120f601d1658c3f408da16d9623d25cbc0ccde6c5698670ab24625e0ab5a3ca1feac', 155, 2, NULL, '[]', 0, '2018-06-15 19:32:32', '2018-06-15 19:32:32', '2018-06-30 12:32:32'),
('2112dc9f754c60f8149e5e9367a5ad484f5fd635cee4a386b9112e82f2927d7bfa6d4bb299d98529', 178, 2, NULL, '[]', 0, '2018-08-18 11:11:57', '2018-08-18 11:11:57', '2018-09-02 04:11:57'),
('211755ae5b090a61320b706cb4e387dd039d696632214b041069a7f205968bc9c9e6a8bfc222c7f8', 113, 2, NULL, '[]', 0, '2018-03-09 03:15:41', '2018-03-09 03:15:41', '2018-03-23 20:15:40'),
('21b7ae77e76298208207e92ff53c6747895eb31be69ede10b03e7f886082e2231f6ebafade06fd6e', 162, 2, NULL, '[]', 0, '2018-07-03 15:22:59', '2018-07-03 15:22:59', '2018-07-18 08:22:59'),
('2258f93a6116323168ab3030fad002fb707618a158c250d7343115629635b2dfaff44b970afb6dcb', 113, 2, NULL, '[]', 0, '2018-03-09 02:33:32', '2018-03-09 02:33:32', '2018-03-23 19:33:32'),
('2308563fca680ba813d4724379717f4bb98e03787f681cb0b47b1a36e903cad3d4af80abbae14cd2', 157, 1, 'socialLogin', '[]', 0, '2018-06-09 05:58:34', '2018-06-09 05:58:34', '2028-06-08 22:58:34'),
('2316af7b50ed457338345c7fc0cb4fce946c271147018315ed587b0832b2a3804756e564460ae189', 159, 1, 'socialLogin', '[]', 0, '2018-06-25 05:23:52', '2018-06-25 05:23:52', '2028-06-24 22:23:52'),
('236a1ba91e325b64ef2759de920295a46734baab7d08249372e4d50f167112667096e53403839cf2', 128, 2, NULL, '[]', 0, '2018-03-26 01:17:29', '2018-03-26 01:17:29', '2018-04-09 18:17:29'),
('238e71fc2b4603f914a6f44a92c6e3b47433cf71dc137aade5cea06de9b4e17e131aa2fb2811aeea', 113, 2, NULL, '[]', 1, '2018-04-11 02:35:52', '2018-04-11 02:35:52', '2018-04-25 19:35:52'),
('2428d4889420df93c2009f6f935aa548aac9510a24ef19655de05c357c4047faed9485deadaf39f9', 140, 2, NULL, '[]', 0, '2018-03-29 11:41:51', '2018-03-29 11:41:51', '2018-04-13 04:41:51'),
('24545649f4f3dbd6241c0092023d99e789346aaca3f79f7c0e90d6ab8a8b3d77e228e40a07b3100b', 146, 1, 'socialLogin', '[]', 0, '2018-04-13 10:18:06', '2018-04-13 10:18:06', '2028-04-13 03:18:06'),
('2467cf10f9fb276c782e151d770acff1719434048ff469d996a1ded56af0bce49ac8aded2d3441d1', 113, 2, NULL, '[]', 0, '2018-03-06 03:24:25', '2018-03-06 03:24:25', '2018-03-20 20:24:25'),
('2597b2ecd9f8dc7a5e13feadfa820983ac1e58ca4b0e99bbb7c28e450b701b519510ba0a478fb7c8', 202, 2, NULL, '[]', 0, '2018-09-20 05:51:21', '2018-09-20 05:51:21', '2018-10-04 22:51:21'),
('25fc14369131f40c6a82ca87b15237c2195a2f0f3442ade31a0a5fa82d69e9a580e358fc92e5ae13', 113, 2, NULL, '[]', 0, '2018-04-07 20:25:06', '2018-04-07 20:25:06', '2018-04-22 13:25:06'),
('264a414b0690620440e489271cfdba6ad483cdf873dc8c33bf22d77e802d8d39306238395f224073', 150, 1, 'socialLogin', '[]', 0, '2018-05-16 13:00:56', '2018-05-16 13:00:56', '2028-05-16 06:00:56'),
('26b36831350b0ec3f70cf1fff3816554a9942ee53af6b768001b56f9b1cec07aeb30f3b7a4b11149', 116, 2, NULL, '[]', 0, '2018-04-11 08:11:10', '2018-04-11 08:11:10', '2018-04-26 01:11:10'),
('2735b5559b693c090698b53cdc9ee569ea4c13ab72746aa297ca196e4cee8330533471c0149beee6', 113, 2, NULL, '[]', 0, '2018-03-23 06:35:24', '2018-03-23 06:35:24', '2018-04-06 23:35:24'),
('279579732f80e57a3ada74c0152758c7645f0a4c316bd6d4ac36e4d664b42d7ef0f32b664f25d792', 141, 1, 'socialLogin', '[]', 0, '2018-04-04 04:59:38', '2018-04-04 04:59:38', '2028-04-03 21:59:38'),
('27e22837d0915e2be9ccf0db7e6603e973abad1429c108c2212025001fad8e43c5c50af9d0a0c3c9', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:35', '2018-09-09 23:22:35', '2018-09-24 16:22:35'),
('28033486fc81b578c4b8f1e754a9d42db4f68a913fb826110b08c073eeb60a5a1b50f169e55e0dcb', 176, 2, NULL, '[]', 1, '2018-08-08 00:13:53', '2018-08-08 00:13:53', '2018-08-22 17:13:53'),
('28c77e9a32a531dffe345d664b74391564e3e641bf4bfe201737dfa8f3e1324d7b18a1247042379b', 196, 2, NULL, '[]', 0, '2018-09-18 05:01:45', '2018-09-18 05:01:45', '2018-10-02 22:01:45'),
('28f696f1fc87c475f9515e24f118ba18de9a6427b159704bddf873e7d9a6a78ab447d5580082ea9d', 168, 1, 'socialLogin', '[]', 0, '2018-07-20 13:18:18', '2018-07-20 13:18:18', '2028-07-20 06:18:18'),
('29339949665a8a27bdaede2b8d7e89a153ed6adb66bce719b261227497d7b33476ed21a03b51228c', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:06', '2018-09-09 23:22:06', '2018-09-24 16:22:05'),
('29cd2de175f4ac1a0858bba371944b1a5c363f5e775ce08201bcbe943ac1a329f2ce3ac839e372e3', 113, 2, NULL, '[]', 0, '2018-04-16 23:22:14', '2018-04-16 23:22:14', '2018-05-01 16:22:14'),
('2a19d02bd8fd0d4da179def0a18ea8b95335d639ee4a2b3bc5f6f42030340a97500dfb96b59da52c', 144, 2, NULL, '[]', 0, '2018-04-09 17:44:24', '2018-04-09 17:44:24', '2018-04-24 10:44:24'),
('2ae7e807e2f003b3c18b4544a16dce3a600e5f2f210843fee59e4f98ced738d991e6ab2c02b030d4', 162, 2, NULL, '[]', 0, '2018-07-03 21:25:06', '2018-07-03 21:25:06', '2018-07-18 14:25:05'),
('2b40f1e08915bcb684a1a575e63d3624e6a466f3043e1b35f0b8641ce4444037227cd51a46b5d621', 113, 2, NULL, '[]', 0, '2018-03-20 04:59:48', '2018-03-20 04:59:48', '2018-04-03 21:59:48'),
('2bcaf887d8a378b8e041569fe1f95d4bf1dd30beb59e6b4998a486bf28cb0c5fa97adf42293b52d9', 121, 2, NULL, '[]', 0, '2018-04-09 23:06:27', '2018-04-09 23:06:27', '2018-04-24 16:06:27'),
('2bd281868ad6416ba7d079de38daaad7879f5c2fe0c510b969cf56ab6417f9eeb25ee09379acc75d', 183, 2, NULL, '[]', 0, '2018-09-05 12:12:21', '2018-09-05 12:12:21', '2018-09-20 05:12:21'),
('2befdd7b09378f48a28168ec07a902178b86d91d1f3eec40dc686c08143ca0ffb580478fccdf9aad', 113, 2, NULL, '[]', 0, '2018-04-09 23:11:51', '2018-04-09 23:11:51', '2018-04-24 16:11:51'),
('2dc425c9219a4451b5d4703607e391fb01851254cfd58a876036b8cdb6741f0eff6f1c3a9165b943', 203, 2, NULL, '[]', 0, '2018-09-20 10:56:59', '2018-09-20 10:56:59', '2018-10-05 03:56:59'),
('2f20675f225926143cbd40644c3def7db301d16e9cf4fe30eefca17e752ad71cde014462e20d341b', 176, 2, NULL, '[]', 1, '2018-08-08 00:13:50', '2018-08-08 00:13:50', '2018-08-22 17:13:50'),
('2f3e867da3ce28d1974a4310a60b8a4a552c9575a17adac4ed9e0708a22673c77d0ac1964d80efaf', 129, 2, NULL, '[]', 0, '2018-03-27 12:56:39', '2018-03-27 12:56:39', '2018-04-11 05:56:39'),
('302c68c8b28bc44461132ac56083ad424b2415a72e0f6a298f8146697aa6be9abfe844921e170045', 113, 2, NULL, '[]', 0, '2018-03-06 04:26:52', '2018-03-06 04:26:52', '2018-03-20 21:26:52'),
('30431629cad6dc31c7a136eaeda6e3ba993d865fb25f2ad0cc3653a1bab94e2969ec3feadb7eedb7', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:35', '2018-09-09 23:23:35', '2018-09-24 16:23:35'),
('3240108f2850b8e37073e8890e79eca03a50ae290321d8c865c57d31965a3b8b1a014ccac092a056', 113, 2, NULL, '[]', 0, '2018-02-28 17:19:09', '2018-02-28 17:19:09', '2018-03-15 10:19:09'),
('325dbbd3e034fa88e1ae855e5abb1fbda36ad5035ae74143910b13a25e31ab06637222edc8c94eae', 113, 2, NULL, '[]', 0, '2018-03-07 06:15:20', '2018-03-07 06:15:20', '2018-03-21 23:15:20'),
('329f37a642882ef43da156bf432f2396395c52cd7f45ff67fdb8f699c9748e09748117f945647fbb', 128, 2, NULL, '[]', 0, '2018-03-16 12:21:33', '2018-03-16 12:21:33', '2018-03-31 05:21:33'),
('32aedfda67161b97f6f25c54cdf6ff112db1479a354a11f1343be226a4444da9a6b0a363a06a54b8', 190, 2, NULL, '[]', 0, '2018-09-12 09:38:55', '2018-09-12 09:38:55', '2018-09-27 02:38:55'),
('32c4e3e060ac502a32262291728045eb2db01487afba4a5c632e5a1283bba4cb12b852e263ed4af1', 113, 2, NULL, '[]', 0, '2018-01-27 10:07:25', '2018-01-27 10:07:25', '2018-02-11 03:07:25'),
('33a7bffef2e09bcd8636cba9e43a56e8e725d8821cde4ff1b8288d62e8da753ea939db98f01cc15d', 113, 2, NULL, '[]', 0, '2018-02-27 23:56:35', '2018-02-27 23:56:35', '2018-03-14 16:56:35'),
('3473ceaf9a63822f2a8d8f5496f5e1463a4f27b47ad138c7723dee79f0e2bbf4e23906c75af8f681', 197, 2, NULL, '[]', 0, '2018-09-18 05:18:02', '2018-09-18 05:18:02', '2018-10-02 22:18:02'),
('34b08c54520a73513d4471a39ef9bcf66f214ada2dab1707f3bbbd03ad503f09b1baa9c9aabc4dfe', 113, 2, NULL, '[]', 0, '2018-02-24 07:14:53', '2018-02-24 07:14:53', '2018-03-11 00:14:53'),
('34b73eec4a216ac8f68ab0bed3ab69ae8d760fc544170a0bc619b7b801bc838da6edd33866cc13fc', 191, 2, NULL, '[]', 0, '2018-09-26 12:09:31', '2018-09-26 12:09:31', '2018-10-11 05:09:31'),
('350c78b860451a0251bf3f2556c7dbe935716641e9ae016c44de0eb3f8efcc5dca49c4883dfce161', 187, 2, NULL, '[]', 0, '2018-09-26 04:42:24', '2018-09-26 04:42:24', '2018-10-10 21:42:24'),
('35961ddd2fb21e0abdf1bf26cc4c509b7f806916ab5bf9d7419f1a3cb3e50ef5a5b6e2a7ee17613d', 113, 2, NULL, '[]', 1, '2018-04-10 02:45:32', '2018-04-10 02:45:32', '2018-04-24 19:45:32'),
('35d68db2660eaddf6b326e695de65336ccbc23c5d85e9f7193ddaba47943e029986f587b98a1f29c', 183, 2, NULL, '[]', 0, '2018-09-05 06:02:41', '2018-09-05 06:02:41', '2018-09-19 23:02:41'),
('35fd84b0ef1051212f242458b39c91a0fce8864223a7aa04a7871a4964f0007722ca065627deee67', 113, 2, NULL, '[]', 0, '2018-04-10 22:08:00', '2018-04-10 22:08:00', '2018-04-25 15:08:00'),
('360461b7cd5e81734e0dccf58c5caea7f6bdaa48f3e9495c61209bca5d07107e7bbba038a12e9fdf', 128, 2, NULL, '[]', 0, '2018-04-12 01:08:43', '2018-04-12 01:08:43', '2018-04-26 18:08:43'),
('37374a364a3b6242ec8a5290197696cb393e1a416ed93174fc7a816427f6eb1d19eacbd478649259', 113, 2, NULL, '[]', 0, '2018-03-06 21:03:39', '2018-03-06 21:03:39', '2018-03-21 14:03:39'),
('3741c46cc0c8ffec2cce3fc97870b982eace9cdf778d41b7224d271008f1aec11cd799ba7c3b9baa', 192, 2, NULL, '[]', 0, '2018-09-15 19:08:10', '2018-09-15 19:08:10', '2018-09-30 12:08:10'),
('390142f2c3eecca786e6aaee895bd32ac023c6cd693b012048ca648e2bb30b9e74f42edc78c0bcfe', 113, 2, NULL, '[]', 0, '2018-02-24 06:55:48', '2018-02-24 06:55:48', '2018-03-10 23:55:48'),
('39685d29cbf3bd42ddf9aac002de4ec12a27f673a2d61f6d18c1974c9475f30c6c5e97f02ce1f8c6', 156, 1, 'socialLogin', '[]', 0, '2018-06-06 10:28:09', '2018-06-06 10:28:09', '2028-06-06 03:28:09'),
('3b0f431906a5b2d7e26da088b8b16541b9bdc6924bc5eb9bdaef8f6d49baa33494bfd9c96b8c211a', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:12', '2018-09-09 23:22:12', '2018-09-24 16:22:12'),
('3b37d063a93228ecf562884a6af867477d0ea7f44405a57563cba1fb65d51b579ec992a9d7b07c35', 143, 2, NULL, '[]', 0, '2018-04-09 17:21:52', '2018-04-09 17:21:52', '2018-04-24 10:21:52'),
('3b76a4ecedfea42a07c5130c3c45791487d9e0075b2332c7656a0196d4a30f7de397e17c0e71002d', 176, 2, NULL, '[]', 1, '2018-08-08 00:13:51', '2018-08-08 00:13:51', '2018-08-22 17:13:51'),
('3c5fd6b183a93eaf88cf74f5fe65ba04f02793de8ec1f7e412d0eef5f74ac9a5d31d6a8679c77b10', 152, 2, NULL, '[]', 0, '2018-09-19 20:45:11', '2018-09-19 20:45:11', '2018-10-04 13:45:10'),
('3caff45407e85dabfda1af6eb163b315a8967f3c3e62143f480709c75c00b5d7bb3dde8a06469ca1', 132, 2, NULL, '[]', 0, '2018-06-15 19:14:31', '2018-06-15 19:14:31', '2018-06-30 12:14:31'),
('3d0d799f5cf07dd10113645d5d463717420ee26e336760f55dbbdc4fced1fb7af597ffddb257b3c6', 191, 2, NULL, '[]', 0, '2018-09-18 05:01:40', '2018-09-18 05:01:40', '2018-10-02 22:01:40'),
('3d9fd116f0aa7db4ab4d011d6effd1a0938b2a6090cd21b90d76d965109142aa54f90d87a2609a09', 193, 2, NULL, '[]', 0, '2018-09-15 19:18:15', '2018-09-15 19:18:15', '2018-09-30 12:18:15'),
('3e49d1fd047b09f9247f91a7acd4f0cc7882c8c091fb11a98c36991101f525efc0be8d95f38a17f0', 128, 2, NULL, '[]', 1, '2018-06-22 12:34:59', '2018-06-22 12:34:59', '2018-07-07 05:34:59'),
('3fc24964af167f438cc5b95b18391881846f91e543e1317d0809009df6b87008dd59f5777bfee6cc', 113, 2, NULL, '[]', 1, '2018-09-09 23:18:26', '2018-09-09 23:18:26', '2018-09-24 16:18:26'),
('4062ec5cf8ddbb541652c97caec2a1a40cf757f33f6e0d0cbab5b4b7df493d6e06f9ac6d519651e0', 194, 2, NULL, '[]', 0, '2018-09-18 20:39:12', '2018-09-18 20:39:12', '2018-10-03 13:39:12'),
('406d33ad31511188c05203470ce433a71bf9a5862230872ba4f601e527f4e59213a3232a2d7e0484', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:31', '2018-09-09 23:22:31', '2018-09-24 16:22:31'),
('40ff93e50c36614c6c7c62080f24154f6e64bae7792661beb2f2f043e85835b6de29883ed661ee7f', 128, 2, NULL, '[]', 1, '2018-08-16 09:35:49', '2018-08-16 09:35:49', '2018-08-31 02:35:49'),
('413831671fcb98ee8bf2d5ce6d5b3d575dc718c61439a34b73c8e0cc4569f1364119cc7bcbded029', 191, 2, NULL, '[]', 0, '2018-09-18 10:17:24', '2018-09-18 10:17:24', '2018-10-03 03:17:24'),
('4180ccc6e6c91cade69ee614d9b1012eee2d5c5c1d11cf9015839794d910b938ab941c174a4fcbba', 116, 2, NULL, '[]', 1, '2018-09-23 14:32:26', '2018-09-23 14:32:26', '2018-10-08 07:32:26'),
('41fc0df13ca2c79883d4ce13beeadc296a7cad93d569a5d77041b74a3e1118bacd512da0acc28aba', 113, 2, NULL, '[]', 0, '2018-03-09 01:15:17', '2018-03-09 01:15:17', '2018-03-23 18:15:17'),
('429eb9d7aeecc2f6ea524ee034c75e42999fdce6fa44a8c8448350d0b16be2a1b6054f374302aa5d', 198, 2, NULL, '[]', 0, '2018-09-18 21:04:19', '2018-09-18 21:04:19', '2018-10-03 14:04:19'),
('42fce860a48fc7eec0ec300559c806071f6b253fda8ae1e389d799a5438e2a60c0c7166934d97c9e', 113, 2, NULL, '[]', 0, '2018-03-28 01:43:32', '2018-03-28 01:43:32', '2018-04-11 18:43:32'),
('43b25175e1bbeed4de2d1550e4216794652101b4253a95081e40238f441e9b69f76abbaa673ed050', 113, 2, NULL, '[]', 0, '2018-02-28 22:53:00', '2018-02-28 22:53:00', '2018-03-15 15:53:00'),
('43cacf806582e59eaebd5ca163afc4d7eeda0ac21a3e7bcc80b8dd8a7b8e85d19268f3423d057d5b', 176, 2, NULL, '[]', 1, '2018-08-08 00:13:47', '2018-08-08 00:13:47', '2018-08-22 17:13:47'),
('43f002c2f556581f49fd5e3c98ed909606d8d0e637a8720cdcd20b7401b66ebc9ec7de3105c0d22c', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:57', '2018-09-09 23:22:57', '2018-09-24 16:22:57'),
('44e95ecb19569ea16a2d343332dc1cf82d087f39f4534ada1be2545bf569f01f8f839ff1939108a4', 152, 2, NULL, '[]', 0, '2018-08-02 00:12:02', '2018-08-02 00:12:02', '2018-08-16 17:12:02'),
('450789754650e3755108b6e20215b3436a3e24ce205ceca30737a635ec83cdb668d87a2326346f0e', 113, 2, NULL, '[]', 0, '2018-02-23 04:50:47', '2018-02-23 04:50:47', '2018-03-09 21:50:47'),
('47da4ece90bb0809a204a15ea3aead3d99701c8c973298e9cac06838578c4e4d88acf76e64d79ca8', 113, 2, NULL, '[]', 1, '2018-03-18 08:15:15', '2018-03-18 08:15:15', '2018-04-02 01:15:15'),
('483f770996a62045ae5f1114bd1e0e2359fbc0c878f487be788c5f99e8ff905a4c64d4c95ba9268b', 113, 2, NULL, '[]', 0, '2018-05-21 22:51:40', '2018-05-21 22:51:40', '2018-06-05 15:51:39'),
('4861b3d3f8307637a1191736bcb3b55aa2feebc598335bc16afe0e6a92753c903f53837b577099c0', 113, 2, NULL, '[]', 0, '2018-03-02 22:11:23', '2018-03-02 22:11:23', '2018-03-17 15:11:23'),
('4892eb821f003a921ee4275f97924d7fd232148915d131fbe4d91cd3daf381e17dd57e6405d9df03', 200, 2, NULL, '[]', 0, '2018-09-20 04:53:25', '2018-09-20 04:53:25', '2018-10-04 21:53:25'),
('4997e7f96492eca5e0a3777548fcaa2e47a4e7a87a9f51667b6b92fd51fc7a4e7728e8a96db69d64', 113, 2, NULL, '[]', 0, '2018-04-13 23:19:57', '2018-04-13 23:19:57', '2018-04-28 16:19:57'),
('4a0f66e6f59c29b2903c0535f8a362f840cc7e581c6f355a1031dfb9c0813c14f100354f116fd13f', 113, 2, NULL, '[]', 0, '2018-03-23 13:46:23', '2018-03-23 13:46:23', '2018-04-07 06:46:23'),
('4acd68a77c01854eb5ecd5297dfbc7a8c4f2ee86f8bc151dba6ec07100b6bf1a3ee59b59150d52ba', 145, 2, NULL, '[]', 0, '2018-04-09 20:21:12', '2018-04-09 20:21:12', '2018-04-24 13:21:12'),
('4c4f69d27f31ece93a03992a5dc83f1762de9ea99ec4b7b7d8ee3537396fb8d235f30c1f7062a495', 113, 2, NULL, '[]', 0, '2018-05-16 02:25:47', '2018-05-16 02:25:47', '2018-05-30 19:25:47'),
('4cd2f96f71101a2bf0a199d0263587ede445f7ce391e8cae2cb2d6fcd579de3a9c662a8f771f3572', 129, 1, 'socialLogin', '[]', 0, '2018-03-08 09:42:48', '2018-03-08 09:42:48', '2028-03-08 02:42:48'),
('4d206022661dc8c910fffc87ab0b03c16aec3970fcf67887609d2d0171f20235f18b835505ccd5a8', 151, 1, 'socialLogin', '[]', 0, '2018-05-25 09:21:24', '2018-05-25 09:21:24', '2028-05-25 02:21:24'),
('4e4bb6d57d91131426c0ca509c1a3331765321ccff490f99c729949fb700a57bf5c2790a41b286a3', 113, 2, NULL, '[]', 0, '2018-03-08 23:44:54', '2018-03-08 23:44:54', '2018-03-23 16:44:54'),
('4eaa85a9a5bf2bdbeca23ad41e7001740322978ebebf496e876264275c42bc0609838f528faeef4d', 191, 2, NULL, '[]', 0, '2018-09-18 10:17:23', '2018-09-18 10:17:23', '2018-10-03 03:17:23'),
('4fe5d0ac6cc9ac1c8260d438c51799cb48c7ac3eaf476427c2b068906f40c5df259169519a2e6d25', 179, 2, NULL, '[]', 0, '2018-09-10 07:47:00', '2018-09-10 07:47:00', '2018-09-25 00:47:00'),
('4ffade894b0bb92b6705c7e87762fa47d5e49f69d74bccd83a759d0eabd1a155ec13d1671a3fb074', 113, 2, NULL, '[]', 0, '2018-03-25 06:20:25', '2018-03-25 06:20:25', '2018-04-08 23:20:25'),
('5012f96169dfa56181286a66305cc00be6e60902a1079fab89e93004df74596cc831f89a88131688', 191, 2, NULL, '[]', 0, '2018-09-15 06:28:32', '2018-09-15 06:28:32', '2018-09-29 23:28:32'),
('5178ebe9dd355aa6f1e9acc54844d931f37f32db8e7e3eeb2fef49814e7dbd8cd6df8ae07cc0f874', 164, 1, 'socialLogin', '[]', 0, '2018-07-10 01:03:38', '2018-07-10 01:03:38', '2028-07-09 18:03:38'),
('518bd42115dcf28ae82761e0946eefb39749d5ed907bef3db2fb423e030be8dab79ea6d51f7e84c8', 170, 2, NULL, '[]', 0, '2018-09-19 23:05:00', '2018-09-19 23:05:00', '2018-10-04 16:05:00'),
('518dc6d14869e8686085fe371c76adf17a25a83699f2c756fc0598b6854a6c46f0b812beb1590ed1', 116, 2, NULL, '[]', 0, '2018-09-23 14:32:27', '2018-09-23 14:32:27', '2018-10-08 07:32:27'),
('520d4bf066c4de94750e0f1b8d75be2abb3d7c142c34a57a15546ac6a619003783f375e4d31a00dc', 162, 2, NULL, '[]', 1, '2018-08-29 18:30:41', '2018-08-29 18:30:41', '2018-09-13 11:30:41'),
('521930afa0cf9c7fb92ad7e5aa9c59ec4e7076ce02af252d0bc358228f954a449d57b9137a3638c8', 113, 2, NULL, '[]', 0, '2018-04-10 20:14:18', '2018-04-10 20:14:18', '2018-04-25 13:14:18'),
('5235fe2938ff87bd2888bbb9c4976f941d76a907c3b592cfddf31a64d1925f24c7493ffa9b6257a7', 113, 2, NULL, '[]', 0, '2018-03-02 21:40:50', '2018-03-02 21:40:50', '2018-03-17 14:40:50'),
('53e32c4ed9e4e81d34bb678b3d7f77a14606b88c69b7f16d5f1ac9bbacf3608d09afb270d8094078', 128, 2, NULL, '[]', 0, '2018-06-06 15:16:45', '2018-06-06 15:16:45', '2018-06-21 08:16:45'),
('54992e3010d9b23264288b1892b8d5fd8f3c11282a761e9a063f0665e7c32e2736d19df401b10cfe', 113, 2, NULL, '[]', 0, '2018-05-21 22:51:49', '2018-05-21 22:51:49', '2018-06-05 15:51:49'),
('550bbe9bb0ccd33c54a3f0d5780d36603afecf17d0cd66a0a317767034e5fbce59daa4d10f4d4981', 162, 2, NULL, '[]', 0, '2018-07-03 21:07:33', '2018-07-03 21:07:33', '2018-07-18 14:07:33'),
('55684328b7262753f2d43af42f8f606e8668406613533ec3331e74c8adf700756a1ebf53a97d76d4', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:53', '2018-09-09 23:22:53', '2018-09-24 16:22:53'),
('55b810fab46153470edc069028be751a4489d71c3a9323a39855a18e942f718fc227c2d4f40be435', 162, 2, NULL, '[]', 0, '2018-06-29 02:57:50', '2018-06-29 02:57:50', '2018-07-13 19:57:50'),
('55cbe2ccf22b8977d3a92e68762372aafa93db735ca39fbad149861bd84fae0b5a267c9be791cde1', 191, 2, NULL, '[]', 0, '2018-09-18 04:12:33', '2018-09-18 04:12:33', '2018-10-02 21:12:33'),
('5622fd14ba8cb7c9b58bc395af68f30a4c26f0c19a426c11d4da07871c6a8382e985c4cbc0a9a8ec', 187, 2, NULL, '[]', 0, '2018-09-14 04:52:29', '2018-09-14 04:52:29', '2018-09-28 21:52:29'),
('5723404da7daec2c179d776ea0061d0c701f59d38746ab99f7bda9e91ccf2d50bc4fccad85518186', 113, 2, NULL, '[]', 0, '2018-02-20 22:34:53', '2018-02-20 22:34:53', '2018-03-07 15:34:53'),
('5743444b12784175b34661501226e3bd3ee1b27aa74db8d07e322ce6791fc60256e8761f9877c219', 170, 2, NULL, '[]', 0, '2018-08-27 05:45:18', '2018-08-27 05:45:18', '2018-09-10 22:45:18'),
('5751e34c6daff24064ebb31d200f1cd99ecd5cfce57ab65d770197ea65d55af9965380384485eb01', 176, 2, NULL, '[]', 0, '2018-08-08 00:14:01', '2018-08-08 00:14:01', '2018-08-22 17:14:01'),
('59c3d38134a7ca65179ff522365f7e43a71fe03588ecc69f6d951898406e86cbc67e32468d424e03', 186, 1, 'socialLogin', '[]', 0, '2018-09-10 21:55:27', '2018-09-10 21:55:27', '2028-09-10 14:55:27'),
('5a11e5bc6d3ce841216806ce07a3bb3299238237897dd534e34ba3477149590853110aacb9ea77c1', 166, 1, 'socialLogin', '[]', 0, '2018-07-14 08:19:39', '2018-07-14 08:19:39', '2028-07-14 01:19:39'),
('5a2b6f4126d6f182601dca2a1e16050404b8411684422cc0e0f1edc4994b717793d24f8a9a9fab15', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:01', '2018-09-09 23:22:01', '2018-09-24 16:22:01'),
('5a9bde67f06139895e91178fdfa80454244bb65293539fc09f52e8222c1c34619b80106950f2ae62', 113, 2, NULL, '[]', 0, '2018-04-25 22:51:25', '2018-04-25 22:51:25', '2018-05-10 15:51:25'),
('5bc20cc20a98490fd1ac979fbd322667287f8c7b95c33e1839ae898d938dc7ecdde21a2b4c5111dd', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:14', '2018-09-09 23:22:14', '2018-09-24 16:22:14'),
('5c208e97cf13007371c84eee043d09f79f00df14872a1b2b6b1a2d2dda873a66c8fe46b010c04ec4', 192, 2, NULL, '[]', 0, '2018-09-15 19:15:09', '2018-09-15 19:15:09', '2018-09-30 12:15:08'),
('5d5bdcc084089755d04ee118609a7a406de0c16a0886afb35402a0389593bd80b45032a6f44b8eba', 191, 2, NULL, '[]', 0, '2018-09-16 06:14:29', '2018-09-16 06:14:29', '2018-09-30 23:14:29'),
('5d789c3084effad6b6eeed3c583fe9fd8c4a897720d336a328b28546bbd8c21043979a6435a10442', 192, 2, NULL, '[]', 0, '2018-09-15 11:03:45', '2018-09-15 11:03:45', '2018-09-30 04:03:45'),
('5e8d258a726ed334354b52f69334ab00eec130cb34f0675634572e5f036320d915056d6dcb32e401', 189, 2, NULL, '[]', 0, '2018-09-12 10:18:06', '2018-09-12 10:18:06', '2018-09-27 03:18:06'),
('5ebbc189282ee59bcb9e9c745bf4795880361931e89350a8fd57adcf36c34d709b6b68f3631a05e1', 191, 2, NULL, '[]', 0, '2018-09-18 08:54:57', '2018-09-18 08:54:57', '2018-10-03 01:54:57'),
('5f502c43b6e2bd2d07dff54b4e286d15f371a1197d4a679dfcdbc0d43dbabd45e72617be77bc3839', 113, 2, NULL, '[]', 1, '2018-09-09 22:41:04', '2018-09-09 22:41:04', '2018-09-24 15:41:04'),
('60aa23cecdc7af6ae54ac5bd5f8cb74ae185cfbc3eafb09efae29c0d5db55a305a3442c0d2135a94', 113, 1, 'socialLogin', '[]', 0, '2018-02-24 07:16:23', '2018-02-24 07:16:23', '2028-02-24 00:16:23'),
('616af89a6e0b1323247a4c5bcc57f4ef71c9b950669a7c2928fcbed4ab30b640e5e9df0faf154133', 121, 2, NULL, '[]', 0, '2018-04-09 23:06:26', '2018-04-09 23:06:26', '2018-04-24 16:06:26'),
('62dc9bceade5473814b7bf7e8903404a2f30ffc9ff75a39c035d8165492a2f4af99cfe4477852d72', 126, 2, NULL, '[]', 0, '2018-03-06 03:51:56', '2018-03-06 03:51:56', '2018-03-20 20:51:56'),
('62de13c740e80e56c55f30a658c913b02b841bc35378b917cfd206903b85970c50f01d3771254eac', 187, 2, NULL, '[]', 0, '2018-09-18 23:39:48', '2018-09-18 23:39:48', '2018-10-03 16:39:48'),
('65810d294ebf233c892a18b3fc2a7b2342c56beb2ebb7531b086c00c9ec01e8c20f4344735194c36', 207, 2, NULL, '[]', 0, '2018-09-25 12:31:46', '2018-09-25 12:31:46', '2018-10-10 05:31:46'),
('66da014205c6b7bc4ddfe506e18eccd501d8ecca4e5a7899f4a45686ceb17a252325437f8949e452', 113, 2, NULL, '[]', 0, '2018-03-24 20:32:40', '2018-03-24 20:32:40', '2018-04-08 13:32:40'),
('66dcbf41151b11e2ff65a7cd719927bee155d2d419db31c9ad63fa44e8f9f1ba63360de4083b6932', 152, 2, NULL, '[]', 0, '2018-10-29 07:03:11', '2018-10-29 07:03:11', '2018-11-13 03:03:11'),
('67236125f84afae8dee312bd600bc99c4134e4e641e9788e0df0d4dcf6549e4dd30e97d0bef11410', 121, 2, NULL, '[]', 0, '2018-03-07 17:14:51', '2018-03-07 17:14:51', '2018-03-22 10:14:51'),
('6763d72ea440b7b7bfff72f0495bbcd5dba4c65d61ea4385fc2aa5b2fe5fc94a94b256dc8b357494', 152, 2, NULL, '[]', 0, '2018-05-25 18:22:56', '2018-05-25 18:22:56', '2018-06-09 11:22:56'),
('67d37a7b2b2fd32857b693f0fde5c202249ca992ec8dc668e01403b2be7e8b6f512a6af406aaa233', 191, 2, NULL, '[]', 0, '2018-09-15 10:07:27', '2018-09-15 10:07:27', '2018-09-30 03:07:27'),
('684649637ef639d727e9880519ce1ac6d53604a0c59554285ea7ea6f2a8a3794cc35b5243c36ab68', 183, 2, NULL, '[]', 0, '2018-09-04 10:41:05', '2018-09-04 10:41:05', '2018-09-19 03:41:05'),
('693846895042bc77e1a5c94fca8b1768d4cf2c6b1f5865a9658a6363601a89e457275985cd4a7019', 183, 2, NULL, '[]', 0, '2018-09-04 15:38:39', '2018-09-04 15:38:39', '2018-09-19 08:38:39'),
('696a568fbfcd3e63f3bd4252f9c276467619522f1d645913d78fa82b4afb97ccd87b2eae804302a9', 140, 2, NULL, '[]', 0, '2018-03-29 11:41:47', '2018-03-29 11:41:47', '2018-04-13 04:41:47'),
('699aaebbf607d71cc062d5136389dfc4aa5fac83f60a3b18d7f1b38a2e3141f34e767a57dbf6b563', 130, 1, 'socialLogin', '[]', 0, '2018-03-09 17:57:53', '2018-03-09 17:57:53', '2028-03-09 10:57:53'),
('6a32457d3664e6f3941c23664a228db977b184060b9c9b3c93554609c20b29ec78cc31e7884c79b4', 188, 2, NULL, '[]', 0, '2018-09-15 02:51:26', '2018-09-15 02:51:26', '2018-09-29 19:51:26'),
('6b6c17e85b46b125cefedcf2fa54f419ba6374f74c50990c48049a196c071a711e48a8fb4bb1d3b9', 154, 2, NULL, '[]', 0, '2018-05-31 07:17:54', '2018-05-31 07:17:54', '2018-06-15 00:17:54'),
('6c546777a4057248bfdc9fb11b4348bb05417055e9296a9ce93d17a234083bcbeb38a3707300965a', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:09', '2018-09-09 23:22:09', '2018-09-24 16:22:09'),
('6ee3df58595033caf5714d793697d4864824e2449dee9c66bc00ba60ae2d6f04662de8c66addb282', 113, 2, NULL, '[]', 0, '2018-05-05 20:13:02', '2018-05-05 20:13:02', '2018-05-20 13:13:02'),
('6f009d8084e1e7b0316cd72533e10aa2d2abc70e5ad0ebc47b85c6f236c1ff1f39fa7bca5ea301ac', 142, 1, 'socialLogin', '[]', 0, '2018-04-04 05:14:30', '2018-04-04 05:14:30', '2028-04-03 22:14:30'),
('6f592a4c7feac5c8eedf690cbb8b7e02a781d3b86e74085765df4eeaa6b23cba767f3cd30cf46fab', 113, 2, NULL, '[]', 0, '2018-02-23 04:52:55', '2018-02-23 04:52:55', '2018-03-09 21:52:55'),
('6fdd1c9c6bd6c520bd9e61cbee4890251252dc33700ac3afb0428fbf7d234ab4fcf4627cd7079ef7', 113, 2, NULL, '[]', 0, '2018-04-04 03:34:19', '2018-04-04 03:34:19', '2018-04-18 20:34:19'),
('70f053d21c528b440f87b2486359d1cdbca2b8366fe00a2d72221515625454b2178c4f1b983fd35f', 113, 2, NULL, '[]', 0, '2018-03-18 08:15:21', '2018-03-18 08:15:21', '2018-04-02 01:15:21'),
('71589616c0780621681d7af182a61b0b5d1d618e4fd6f7465670d1bfae995dcb4e07fa2e2b1daabc', 153, 2, NULL, '[]', 0, '2018-08-05 00:19:57', '2018-08-05 00:19:57', '2018-08-19 17:19:57'),
('724d7906d087608f54b087a3094365636b09076616a1d546302b64d1a0700de84d945ff5c8625f16', 149, 1, 'socialLogin', '[]', 0, '2018-04-29 03:40:26', '2018-04-29 03:40:26', '2028-04-28 20:40:26'),
('726d9bfe0669199ed847b2ac954c414d8c350e9e13d6475a4e59a0184cd733dbf8809907cd67f8a0', 113, 2, NULL, '[]', 0, '2018-03-20 08:57:34', '2018-03-20 08:57:34', '2018-04-04 01:57:34'),
('728d5f302d69b67819c320e74113fcee0a658495331706c00f1ba6bcd3b4fa8b33b5b068de584c72', 155, 2, NULL, '[]', 0, '2018-06-05 23:02:32', '2018-06-05 23:02:32', '2018-06-20 16:02:32'),
('72d0ee3e07720ee8deac8f258a62e3629ec0b85064b9fa56fc558532856273295231ce5af141e0ee', 129, 2, NULL, '[]', 0, '2018-03-27 12:56:42', '2018-03-27 12:56:42', '2018-04-11 05:56:42'),
('740b669621388b7cad701d3648be2130fb33775f52c51f6e09b2ba87ef723c5d1a563d54aeeac131', 179, 2, NULL, '[]', 1, '2018-09-10 07:46:59', '2018-09-10 07:46:59', '2018-09-25 00:46:59'),
('7428eea329963a5100669be2cbf236fe188572e46cbd477c90c447a6da54282850ef9e9debfa03e9', 152, 2, NULL, '[]', 0, '2018-08-08 00:15:49', '2018-08-08 00:15:49', '2018-08-22 17:15:49'),
('760f75a406d01838514eb77e10a251c5b63f250d9240973907c6a51f411d729f4043f08074001e19', 128, 2, NULL, '[]', 0, '2018-09-23 14:42:30', '2018-09-23 14:42:30', '2018-10-08 07:42:30'),
('769575d3958d91fa2288f3f250b03d17a106bcc8a60e62cdeddc985f76120eec260c503e97ee2d6e', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:24', '2018-09-09 23:22:24', '2018-09-24 16:22:24'),
('7708749b5ca0c1f47a8ff0bb2dc6c11c1f478335a27b089428696e1506bf6a4b0e9e083f17a4a45f', 128, 2, NULL, '[]', 1, '2018-07-30 01:58:55', '2018-07-30 01:58:55', '2018-08-13 18:58:55'),
('78240068de7676d3c6c8a6b3a2a8b3e4184d8f325e8c9aa53c96148378269176bf2633c1690c39f0', 128, 2, NULL, '[]', 1, '2018-03-26 13:31:09', '2018-03-26 13:31:09', '2018-04-10 06:31:09'),
('785d7fdc5e22859888b2d58d4d392a9299176c23bfc5e9b25f460b99b5a04113e22dff3318915bfa', 152, 2, NULL, '[]', 0, '2018-10-31 16:57:21', '2018-10-31 16:57:21', '2018-11-15 12:57:21'),
('7979132085608d9c0f731ce8e9bbbfddd4c5267842f8110f4ab6201a29fa6ec8f4e5d5b88b565ecf', 128, 2, NULL, '[]', 0, '2018-03-12 05:34:43', '2018-03-12 05:34:43', '2018-03-26 22:34:43'),
('798c6483cdc112854e8a375692bb91b2fbf0951e6f5e585c9d0449c6d3ae34eb88e194cfa70a9f55', 176, 2, NULL, '[]', 1, '2018-08-08 00:13:56', '2018-08-08 00:13:56', '2018-08-22 17:13:56'),
('79ad68d7d01ce4e399f1237f6c5454dd884c893256154518335226d14c178ae3e7810a3f8a85d382', 180, 1, 'socialLogin', '[]', 0, '2018-08-25 14:01:11', '2018-08-25 14:01:11', '2028-08-25 07:01:11'),
('7a815d0054283fd551294106e4fc13b93779dd3560607292353088ab76d60eb53fed7ab49479a905', 128, 2, NULL, '[]', 0, '2018-09-07 15:14:55', '2018-09-07 15:14:55', '2018-09-22 08:14:55'),
('7aa1ff589302c33394cac8c95f047546e2bbc95978bd5e36b23b31247e2b3d7cddf5624e25674393', 139, 2, NULL, '[]', 0, '2018-03-29 07:26:09', '2018-03-29 07:26:09', '2018-04-13 00:26:09'),
('7c858f8cda21d2c832a2a0633de02be8b3746cf4ffc19d2ca19661f9098a4f09e80a789bc0be2ce4', 113, 2, NULL, '[]', 0, '2018-03-23 15:28:52', '2018-03-23 15:28:52', '2018-04-07 08:28:52'),
('7d17c8c657ccb830a14f5af76dc63e90702597a6135c2b8571bc9612857f8598dc8a100336f7a1a1', 121, 2, NULL, '[]', 0, '2018-04-09 23:06:26', '2018-04-09 23:06:26', '2018-04-24 16:06:26'),
('7d4e1f2e6901f0ee07e93e6b76b557598afbb1543ed935cd36fa5efb06c2cdbbd7e2d331d36935bb', 134, 2, NULL, '[]', 0, '2018-03-21 06:42:47', '2018-03-21 06:42:47', '2018-04-04 23:42:47'),
('7d734b2d9a1a6fd71853f62f0f464d3865634705d11e5c43ed0d2a7fbcf299ccb08dec21c0a85f00', 170, 2, NULL, '[]', 0, '2018-08-08 00:44:06', '2018-08-08 00:44:06', '2018-08-22 17:44:06'),
('7e00366cc9e1fdee854235216bbdbd356dc66c3a129021254ce31888a21e3d30066a448d6c1b050b', 113, 2, NULL, '[]', 0, '2018-02-24 22:24:10', '2018-02-24 22:24:10', '2018-03-11 15:24:10'),
('7f29ce1916dd94db7ce3a0f2a9e4b498b82a5c314d5ab8ce61801c15e05b512d1bba2a4850f8b771', 189, 2, NULL, '[]', 0, '2018-09-12 05:11:54', '2018-09-12 05:11:54', '2018-09-26 22:11:54'),
('7fb4f81075d7f87884e84bfabb41e64f1e7151ed3b683534a50c28fac253837ef4c541fcd86d1661', 131, 1, 'socialLogin', '[]', 0, '2018-03-11 17:34:12', '2018-03-11 17:34:12', '2028-03-11 10:34:12'),
('80174bd2c2737c9d7c8d70b33fc4a907010ad1626ee0881a1ad1cc630a5dec3fe41682f35bc4099f', 128, 2, NULL, '[]', 1, '2018-03-07 17:19:30', '2018-03-07 17:19:30', '2018-03-22 10:19:30'),
('804296a3ae421899587dc2d225148d6c4107a84d2f1d7b0b8bd788d73fc18c6d1ae10a319659d765', 113, 2, NULL, '[]', 0, '2018-03-27 13:33:48', '2018-03-27 13:33:48', '2018-04-11 06:33:48'),
('80491e500ca49ebf8962d5a3c353795590cdc78375827809ba161eb4cd172213282ca557ffc02191', 162, 2, NULL, '[]', 0, '2018-08-29 18:30:44', '2018-08-29 18:30:44', '2018-09-13 11:30:44'),
('804d8199e229b6fc19e229c85b3421e404597fe14289bf868bb9e4a315add4af1f24d06235bab597', 113, 2, NULL, '[]', 0, '2018-03-07 14:44:19', '2018-03-07 14:44:19', '2018-03-22 07:44:19'),
('80f44981b2f37d91048d4702170f9470dc95b427468bc2ad1ca8a5bd797de8c9144501c6f80eff9c', 152, 2, NULL, '[]', 0, '2018-05-25 17:50:31', '2018-05-25 17:50:31', '2018-06-09 10:50:31'),
('8170272f97378ec0982d7acea1594f4bcfa1ad143217517b693835e6d94e325f105d1077ab969aac', 183, 2, NULL, '[]', 0, '2018-09-10 07:37:32', '2018-09-10 07:37:32', '2018-09-25 00:37:32'),
('81a8b51fc9189608a02a16a46378cd6c2110cca94f14f3998ebef1f3842d50c54e6e597255f32f7d', 113, 2, NULL, '[]', 0, '2018-03-06 00:58:05', '2018-03-06 00:58:05', '2018-03-20 17:58:05'),
('81feac36cca38e3c3a1a410c7bbd6ac06326feee942a3ecc164ff248aaaa0a0297aafcc927578453', 128, 2, NULL, '[]', 1, '2018-07-30 01:58:55', '2018-07-30 01:58:55', '2018-08-13 18:58:55'),
('820a1c63b3db7753dba6eb1d45db8f3e731a18a5cac2867dcd201e94d437e465e5c627cdd036931f', 140, 2, NULL, '[]', 0, '2018-08-20 09:35:43', '2018-08-20 09:35:43', '2018-09-04 02:35:43'),
('82ade70c4bbd2cfe84004c09cb960bec696c6e1075cdda77537e91297b12c3b13d974883c51c151e', 176, 2, NULL, '[]', 1, '2018-08-08 00:13:54', '2018-08-08 00:13:54', '2018-08-22 17:13:54'),
('834101df93983e194a019ee33df01ef1faaadad2baa080b86bbfdd1891c8f0ac2a1d34cc8b6823a4', 208, 2, NULL, '[]', 0, '2018-09-25 22:16:35', '2018-09-25 22:16:35', '2018-10-10 15:16:35'),
('83556fd72eeab35471f0f521034fb63b3ded5f97b98aa54e713a4c0f8b5b0b2340f561a2ac3f96c3', 165, 2, NULL, '[]', 0, '2018-07-13 18:15:33', '2018-07-13 18:15:33', '2018-07-28 11:15:33'),
('839bf36da16651ad3d446a27fe06c8d31cdd88f59a6c6f2d969cde87ab56ebac9b4feea136ee68b8', 113, 2, NULL, '[]', 0, '2018-02-24 06:08:51', '2018-02-24 06:08:51', '2018-03-10 23:08:51'),
('83f8c772da1bb32795bfbb88f31a69ba6920b03b48308e6e8b6ab5043ad05c2fead55c7e229fd605', 113, 2, NULL, '[]', 0, '2018-03-08 04:47:04', '2018-03-08 04:47:04', '2018-03-22 21:47:04'),
('84462bfe07dfea6137507dacf125377bb3beb173171077b81dc8b6aeefa822f74173f79c9a87dd78', 113, 2, NULL, '[]', 0, '2018-07-30 21:50:44', '2018-07-30 21:50:44', '2018-08-14 14:50:44'),
('8488b9943bbf9e156b32f39740eb6f6c4d69999fc988697fd7cdf0c678a452113a4528a5cdde80a6', 191, 2, NULL, '[]', 0, '2018-09-18 10:45:32', '2018-09-18 10:45:32', '2018-10-03 03:45:32'),
('848c66f42cbc1139e0a54bffdd8afe8a1867666df4dfdd356bf436553e69379e9348a4aaa3fee20a', 152, 2, NULL, '[]', 0, '2018-10-30 19:37:39', '2018-10-30 19:37:39', '2018-11-14 15:37:39'),
('84974cf6341022eba4162eebb545c050b647403758b2ecf55e1bb3db03af65b8e48745162c84812e', 113, 2, NULL, '[]', 0, '2018-03-08 04:51:12', '2018-03-08 04:51:12', '2018-03-22 21:51:12'),
('85006188eb0c88fab47397ee9d3473dcd22a3d2e58e74cd8eaca0c6520ea056235b787bc88f948ef', 158, 2, NULL, '[]', 0, '2018-06-11 07:17:37', '2018-06-11 07:17:37', '2018-06-26 00:17:37'),
('85211429f49f217e96db3d299bb40a7135c0cd9857a6d4af58a9de45f01f6e487294f463eed337cd', 191, 2, NULL, '[]', 0, '2018-09-18 10:51:03', '2018-09-18 10:51:03', '2018-10-03 03:51:03'),
('85653af7de4fb4451ab64a18770ca2a68b7e50c7adcc066afda2506abea81c42ad5ad53f0e7bc59c', 113, 2, NULL, '[]', 0, '2018-03-22 20:24:49', '2018-03-22 20:24:49', '2018-04-06 13:24:49'),
('85afa45880a8a25a5fd4df7d6f3f03d7db6e74ac2e02d0c8b59b0c0808f614f8e15aae23d4e49323', 128, 2, NULL, '[]', 1, '2018-04-11 09:46:20', '2018-04-11 09:46:20', '2018-04-26 02:46:20'),
('85e44b1a91609f19b74c90d7e6f79beb8e6aaf19cf71b1dba1d6a2eaed7bbe4d76b223fa770b65af', 199, 2, NULL, '[]', 0, '2018-09-20 02:05:03', '2018-09-20 02:05:03', '2018-10-04 19:05:03'),
('85e84326943b330c52c9bc358078099427a8838491e548bae033bfb50527609e0b105d67903ac01b', 177, 2, NULL, '[]', 0, '2018-08-16 01:32:41', '2018-08-16 01:32:41', '2018-08-30 18:32:41'),
('860f05686f7f9e5c4aaac7fd9d2ee6dbf790fce5172a670443faffd1427179c0c6190e4d239fbf91', 113, 2, NULL, '[]', 0, '2018-03-23 14:54:31', '2018-03-23 14:54:31', '2018-04-07 07:54:31'),
('8661fb0f87c0027381ebac2de3fe1496e87e735f94122e89a3edaab85ca3ce4b189454c00dc6e141', 116, 2, NULL, '[]', 1, '2018-09-08 02:25:21', '2018-09-08 02:25:21', '2018-09-22 19:25:21'),
('877bc49833c64cf0aedf1207f0e5f3f9fffd842534e3cc7293283c5981440f398e17cdb79482f87e', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:43', '2018-09-09 23:23:43', '2018-09-24 16:23:43'),
('885e1f064ea3f96969475c1a103ac94d28e26a5561468150519b77cd23fed587cab19bd8e78ba73b', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:08', '2018-09-09 23:23:08', '2018-09-24 16:23:08'),
('88ff2dd1b4e816bfd48c3ff7454c2da943c5197440209bad3e6af06473f0570362ececfaf548ec52', 132, 1, 'socialLogin', '[]', 0, '2018-03-12 05:30:59', '2018-03-12 05:30:59', '2028-03-11 22:30:59'),
('8a3fa854cd436160f08961bb279d40260842899b62fce079c9da1ab677bb02507ec80863b4c4144e', 113, 2, NULL, '[]', 0, '2018-03-12 02:19:58', '2018-03-12 02:19:58', '2018-03-26 19:19:58'),
('8c9953a609d3cb845a6dc4f62f302c9e06500c710a724d264a8983fc026cd3aaf8f53931b966e7ab', 191, 2, NULL, '[]', 0, '2018-09-16 11:27:32', '2018-09-16 11:27:32', '2018-10-01 04:27:32'),
('8d1095f88f10879cb35e478127c5e18e7966e1e25d637b1509f8907c457b1f264b2b38d3b240775b', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:58', '2018-09-09 23:23:58', '2018-09-24 16:23:58'),
('8d18bdd68a3cea75f711ccaca542f1f54580103484575b2bf549d3b73ea4193d2fe5d5cd52b6da35', 191, 2, NULL, '[]', 0, '2018-09-22 08:58:37', '2018-09-22 08:58:37', '2018-10-07 01:58:37'),
('8d7b8fc93f956cbe2acbdcc2e7ebfd7f3e7536b28f8e0d09d6a22c0d823617309742c33fa5a54f7b', 169, 2, NULL, '[]', 0, '2018-08-02 06:22:44', '2018-08-02 06:22:44', '2018-08-16 23:22:44'),
('8e1984fcecc562956471e5d180a066bb47573d97fcd3144a02b626b7753c0874690009c84c8281b9', 113, 2, NULL, '[]', 0, '2018-02-28 02:50:43', '2018-02-28 02:50:43', '2018-03-14 19:50:43'),
('8e774b658529b6b65074e0d3f5194bd4e1e850bb2566c4cbc52b3537ff9444c9684098849e6d4598', 128, 2, NULL, '[]', 1, '2018-05-02 17:50:09', '2018-05-02 17:50:09', '2018-05-17 10:50:09'),
('8e7970fafcd8924cb239b2f95b2748e18a2570e538f0e7a8d82e8f3105c596aef120048b6faa57d9', 187, 2, NULL, '[]', 0, '2018-09-19 09:48:33', '2018-09-19 09:48:33', '2018-10-04 02:48:33'),
('8fe151d0fbb3885d8d08b1523f6667c6d69435aad168708562541298caac90e2fb9ba95fe62ef314', 113, 2, NULL, '[]', 0, '2018-03-29 09:22:16', '2018-03-29 09:22:16', '2018-04-13 02:22:16'),
('901cca04e0c24c789559a1c996b2d689b38ea3723ee7a09e004054312788ce6406061f2f0434950d', 183, 2, NULL, '[]', 0, '2018-09-05 12:30:35', '2018-09-05 12:30:35', '2018-09-20 05:30:35'),
('90b84531a0ff9ab651ea0d2f53ac3be6ba42b7f5067e92501325d79e8f61f48838eeef13a914c942', 128, 2, NULL, '[]', 1, '2018-09-07 15:14:55', '2018-09-07 15:14:55', '2018-09-22 08:14:55'),
('90caf752dbb28ed02bb2ee7207b620ee5f96511d82178d458baa57814b5a019e6c4b001fffd4262f', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:47', '2018-09-09 23:22:47', '2018-09-24 16:22:47'),
('913dcfd5d73bd163c6fe7066295a8fb1b713f6bd305879284b475888ec1625f148815fb51d44aa2e', 113, 2, NULL, '[]', 0, '2018-03-27 06:21:46', '2018-03-27 06:21:46', '2018-04-10 23:21:46'),
('925e9ca174dd2c0e85af222e2fe4dc54549263420565f1779bf812239a4af99bb804cb4b52d4059f', 113, 2, NULL, '[]', 0, '2018-03-09 04:04:30', '2018-03-09 04:04:30', '2018-03-23 21:04:29'),
('92b89740bed701849453f40ea428a3cb4f1713df92007f53b002fd12825ec80eafd04e9e26e3be33', 128, 2, NULL, '[]', 1, '2018-03-22 17:29:24', '2018-03-22 17:29:24', '2018-04-06 10:29:24'),
('935ec7b2a232c454727e719cb8eff134d601ec0f507f6bc41c8deb16526f2d591afdb161705194b2', 142, 1, 'socialLogin', '[]', 0, '2018-04-06 07:58:15', '2018-04-06 07:58:15', '2028-04-06 00:58:15'),
('9384c898e967745ebd687b97e0edd9acc5c383d16910d49b4ee32f7d47a84049d1329acb3d5c99fc', 122, 2, NULL, '[]', 0, '2018-02-24 22:27:54', '2018-02-24 22:27:54', '2018-03-11 15:27:54'),
('9407e37a9318d77aef84d4575884ac6e894d048383490879c9393e579b999dc0d24a1bd31791f0b9', 201, 2, NULL, '[]', 0, '2018-09-20 05:03:43', '2018-09-20 05:03:43', '2018-10-04 22:03:43'),
('9409b6fab43dd0c7533ead5ddaf5e3be73a9cf738ffb7f183283ab277f83c975476104bacca7a017', 113, 2, NULL, '[]', 0, '2018-03-10 20:19:57', '2018-03-10 20:19:57', '2018-03-25 13:19:57'),
('944b7987b6c90c3173558947963a15ec60d014f3501b2655234840b7d0b4615ac328a6f1b7610900', 162, 2, NULL, '[]', 0, '2018-06-29 13:04:50', '2018-06-29 13:04:50', '2018-07-14 06:04:50'),
('94832bc825cb9e2ce61a3dd38a3ebbc69372a47f2b8eed16de8b682d02bffe82e235402ea9b52276', 199, 2, NULL, '[]', 0, '2018-09-20 02:09:26', '2018-09-20 02:09:26', '2018-10-04 19:09:26'),
('9499489485fdedbde9c8a5336f978ed066cf47e13b5f1bfa080e986a001b1a43b7c9ca5d267d032c', 206, 2, NULL, '[]', 0, '2018-09-23 04:15:32', '2018-09-23 04:15:32', '2018-10-07 21:15:32'),
('9621c36d0be215fcc612bc2fc57e60a1b705825c0a0c63b17506d012c78ec898e34decfd7d1d6191', 113, 2, NULL, '[]', 0, '2018-02-23 05:05:22', '2018-02-23 05:05:22', '2018-03-09 22:05:22'),
('978d1a2bc70cb61de7d26b63076f83a88cc91d17613a3dc9748e7567800b72444275a6a00206a08a', 176, 2, NULL, '[]', 1, '2018-08-08 00:13:55', '2018-08-08 00:13:55', '2018-08-22 17:13:55'),
('9790f0c3d5841b8da757ebd0c4d77024902aab3b078d506bac0a4b3020be6401953f4a51d005372f', 113, 2, NULL, '[]', 0, '2018-06-12 21:26:30', '2018-06-12 21:26:30', '2018-06-27 14:26:30'),
('979f485f14b91d713f0138ab06753e70ce0d2551f2170c4151cc16c46cd5736e9bbbffbd3ead1793', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:27', '2018-09-09 23:23:27', '2018-09-24 16:23:27'),
('97a13b3c53c3204e7fa9239df0e9b5aacc78470e3399a33cfe7db4328fbaf4bef4cddfe83a42afe7', 113, 2, NULL, '[]', 1, '2018-09-09 23:24:01', '2018-09-09 23:24:01', '2018-09-24 16:24:01'),
('97b1d5910914541e867c94ef84703e6bcd4ba54228c492d05578b43afef0fda98b106226073cd4d9', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:50', '2018-09-09 23:22:50', '2018-09-24 16:22:50'),
('97c3f23b1c3ba9523f5f7a043224f59235b5a40754b407cb630f4ca9f7dab05b4beadc0a41f848eb', 170, 2, NULL, '[]', 0, '2018-08-08 00:19:57', '2018-08-08 00:19:57', '2018-08-22 17:19:57'),
('9950139014b28f204a2463ccae4f40a1bdd7885a1ed67d191bc364735a515f53304b4e82c6518abb', 170, 2, NULL, '[]', 0, '2018-08-11 10:06:04', '2018-08-11 10:06:04', '2018-08-26 03:06:04'),
('9a0543de82eb830a1c6dcb600751e112a5c0596729df9b857e5f0d50f5148ccc81f8595e3a5b070e', 188, 2, NULL, '[]', 0, '2018-09-15 03:25:48', '2018-09-15 03:25:48', '2018-09-29 20:25:48'),
('9a1d2fece2e1b9159eb97290f1651d237b1f635aa7ea8bfd8b5a336fb9f2ad617e9db15d27f22233', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:38', '2018-09-09 23:23:38', '2018-09-24 16:23:38'),
('9a890d1b5839fb0b20e1ce4d6eef6bd3d19ae5054d2c2f38ac52595cdf5f26c54ce89ef81977de4a', 191, 2, NULL, '[]', 0, '2018-09-26 06:06:52', '2018-09-26 06:06:52', '2018-10-10 23:06:52'),
('9bd9a21d385782be5165affa1534db7ac15535cd217ae12f708be61d04e365c5a98b406b1ff66fbe', 113, 2, NULL, '[]', 1, '2018-03-26 01:24:59', '2018-03-26 01:24:59', '2018-04-09 18:24:59'),
('9cff16ea4447be3ba128a8a2fd317a3a4bc61bcc6f6ddf02c0ebc779ea77f2dd7df2e81a216fc851', 113, 2, NULL, '[]', 0, '2018-09-09 23:17:52', '2018-09-09 23:17:52', '2018-09-24 16:17:52');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('9d58de51408751e4a63bc97f79508608e73b9c388e9141c19392c83c352f3c471923a1b8353aa701', 116, 2, NULL, '[]', 0, '2018-04-20 09:14:30', '2018-04-20 09:14:30', '2018-05-05 02:14:30'),
('9d917d395ae90829827e9ccfc676d573c8f64fc9069b4d60a4bd755b7632a61c2786a993e8ea7efd', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:30', '2018-09-09 23:23:30', '2018-09-24 16:23:30'),
('9e322ae79d844578ee1a80ac0a51f66710f773852b2c01aa83419574c23a75620bbee2482743ec80', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:40', '2018-09-09 23:23:40', '2018-09-24 16:23:40'),
('9e46f7afeb1af4b7f77f459d33e22321599efb8afa1e4bf9bdfc79b77da4f61ddad1bfb9d6b13687', 113, 2, NULL, '[]', 0, '2018-02-23 10:29:16', '2018-02-23 10:29:16', '2018-03-10 03:29:16'),
('9eb63e67b9d3401af1be0fb155ec6c43e3764016af03e6b2c11a88f5ab92a433a25c1b07d837cc21', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:44', '2018-09-09 23:22:44', '2018-09-24 16:22:44'),
('a1d7b9c0b3e5780ea48401726835671990eb6c8b45a4a6cd63b4017b8739545e81f6f23ca0681e48', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:32', '2018-09-09 23:23:32', '2018-09-24 16:23:32'),
('a4a7f35fc68bee74b36a1654f7bc81322ef0f583c034fbad86f0715a2e12d849e11686903b70e152', 182, 2, NULL, '[]', 0, '2018-09-19 23:37:12', '2018-09-19 23:37:12', '2018-10-04 16:37:12'),
('a4b4ff1680bf74d59b7906e33c595ab0d4751fbee42f0321aa898f484c2fc68e20d01d25d721a13e', 152, 2, NULL, '[]', 0, '2018-10-29 07:05:50', '2018-10-29 07:05:50', '2018-11-13 03:05:50'),
('a691090374e934fecc40f752912fb34ee622f80b3b8754f98bea740bf8cc7b087869670333bc0177', 113, 2, NULL, '[]', 0, '2018-03-08 20:05:15', '2018-03-08 20:05:15', '2018-03-23 13:05:15'),
('a7e9cf40d90ff41916114fa26c5ee43e271214b8a7bfd4b01af9e37911a0de2236e26e8b530a2d8c', 113, 2, NULL, '[]', 0, '2018-04-24 10:35:02', '2018-04-24 10:35:02', '2018-05-09 03:35:02'),
('a7f57db4b0dc310b65c6bec98fae1f74dde8d44410023396d86b5db30f1728247de4eee029585cbb', 152, 2, NULL, '[]', 0, '2018-07-25 00:09:59', '2018-07-25 00:09:59', '2018-08-08 17:09:59'),
('a81d7fd4203695fe6ee5c1e22bdf1cc6f8e1da22099dd25fef667628f3b680cd25120f3fcedc51cf', 113, 2, NULL, '[]', 0, '2018-03-09 03:18:47', '2018-03-09 03:18:47', '2018-03-23 20:18:47'),
('a86106768a98ec1e064077019b7bb69db055f9545db4798722ee8a3a60b4da054a53949844a731c2', 192, 2, NULL, '[]', 0, '2018-09-15 20:46:11', '2018-09-15 20:46:11', '2018-09-30 13:46:11'),
('a87abcec2cf085f39d09fee9a6fc7149751de1e506e9049feaad368a604be0fa718067f359086548', 113, 2, NULL, '[]', 1, '2018-02-24 07:21:19', '2018-02-24 07:21:19', '2018-03-11 00:21:19'),
('a887d00b6544437f4481e539aee9accee26df8ecaf83697e3a471d94533ccd22ccb5f9b22aa22327', 135, 2, NULL, '[]', 0, '2018-03-24 14:36:15', '2018-03-24 14:36:15', '2018-04-08 07:36:15'),
('a89c59fbff6d86b4566a84d8c2af608a02705c767c82305ae7d24f2f4c1f9bc19de55d294ecc6372', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:24', '2018-09-09 23:23:24', '2018-09-24 16:23:24'),
('a8d2ff318d3e33fa58725acabed5cb98dafc1a0fcc33af8f10954b6a7fdff86e778dba33c2bcffd6', 113, 2, NULL, '[]', 0, '2018-03-27 02:51:23', '2018-03-27 02:51:23', '2018-04-10 19:51:23'),
('a927208d2c971621b4d18c6c5f3ee349b653659ecfbdf5723f8b1c156bab5c1a789a50666540ba2d', 209, 2, NULL, '[]', 0, '2018-09-26 17:28:15', '2018-09-26 17:28:15', '2018-10-11 10:28:15'),
('a9554c9ca2d57c931e996a784c4b89843fda99e98a4debd802a4f4251feecc2c5a1ad13bafed9e49', 153, 2, NULL, '[]', 0, '2018-07-24 19:35:13', '2018-07-24 19:35:13', '2018-08-08 12:35:13'),
('a9ae89085d902862509705665c2ecf42b281ed35cda09ecf868835bcf290e19a4682fa717bfb2e98', 113, 2, NULL, '[]', 0, '2018-03-20 05:28:15', '2018-03-20 05:28:15', '2018-04-03 22:28:15'),
('aa0d2a9c19b21d950e4b3ae87138cc62cf4384c6bdce6570beb752e3379d26e40763f04c9cd51470', 113, 2, NULL, '[]', 0, '2018-03-23 05:59:51', '2018-03-23 05:59:51', '2018-04-06 22:59:51'),
('aa5f038de971c1a352611ff4528e080d7137e79cda4a7caa9354ce6257d8c76db92cf42c8c0bcbeb', 113, 2, NULL, '[]', 0, '2018-03-23 16:11:37', '2018-03-23 16:11:37', '2018-04-07 09:11:37'),
('aa7b6931d27e275c187499f1c641e94323a00e1a4935275bef773d3e844fda70cf083034add4a0a2', 128, 2, NULL, '[]', 1, '2018-06-06 15:16:45', '2018-06-06 15:16:45', '2018-06-21 08:16:45'),
('aa9ad0c6b924cd5506d77906a83f69751e02a1066ffe1cebf38ce8f638ae153b5e7e8949208ac45d', 113, 2, NULL, '[]', 1, '2018-09-09 23:24:05', '2018-09-09 23:24:05', '2018-09-24 16:24:05'),
('ab26c4d3bda2f42369669d4ea250b61593d871bcbb79eb248958cc12c92a57314a39cfa822df30e5', 132, 2, NULL, '[]', 1, '2018-06-15 19:14:29', '2018-06-15 19:14:29', '2018-06-30 12:14:29'),
('ab4bb2bf9f1ec1e6c86d0e79a5d729d931dee597c5b9f828cf3fa8879a3308c0a6f03e348cb612c1', 113, 2, NULL, '[]', 0, '2018-04-12 02:48:49', '2018-04-12 02:48:49', '2018-04-26 19:48:49'),
('abaf3447549a3779c02f042c1fb660c8998048eb9f827fe90c45307c55f2711a01efe535ec8f2a7e', 191, 2, NULL, '[]', 0, '2018-09-19 12:57:05', '2018-09-19 12:57:05', '2018-10-04 05:57:05'),
('abda0d35adf51053b64df6efd8782a1c8bcfe9901870618ede09a113fc4e19f3e59fc5c152f87d1a', 113, 2, NULL, '[]', 1, '2018-01-26 09:26:45', '2018-01-26 09:26:45', '2018-02-10 02:26:45'),
('ac30ed525bc42a6f732e9854d1b90946025098eea7d775f6631a2b82368fff6b6f84457155af08a1', 167, 1, 'socialLogin', '[]', 0, '2018-07-16 07:22:09', '2018-07-16 07:22:09', '2028-07-16 00:22:09'),
('ac82d445a714802233fc96e51281e25ffc43a45acaa04951f567635c1817ec8d3916d35441ed9f31', 113, 2, NULL, '[]', 0, '2018-03-23 06:17:39', '2018-03-23 06:17:39', '2018-04-06 23:17:39'),
('acca4e86d6ebc06e77c925b5e482f388a25fd8ac455a3d449ea7f13e7ac9dd17231f02b696d0bad7', 128, 2, NULL, '[]', 1, '2018-06-06 15:16:46', '2018-06-06 15:16:46', '2018-06-21 08:16:46'),
('adce3bec1ef9a3ec78038540f9b567f1ba2ba1cff9b4f8ce616e60b843dae258a4fbce76aa8b7ab1', 191, 2, NULL, '[]', 0, '2018-09-18 04:02:28', '2018-09-18 04:02:28', '2018-10-02 21:02:28'),
('af43123b61351b59432649359944d91fc102bb7770072a20daf08a6f9de318df4df3a4ff2021a3e5', 121, 2, NULL, '[]', 0, '2018-04-09 23:06:27', '2018-04-09 23:06:27', '2018-04-24 16:06:27'),
('af78243d87d03f2012c2378302bd4b6eb7c813b4cf0f0752f2c1518be5de81db291022bc82a72c32', 192, 2, NULL, '[]', 0, '2018-09-15 19:09:21', '2018-09-15 19:09:21', '2018-09-30 12:09:21'),
('af94b3f7be15a280117f57f4f4700822e5c4c911b8cc3ce09f5526e2a7c4ea07fd2f2ea9fd20d913', 128, 2, NULL, '[]', 0, '2018-03-20 09:05:45', '2018-03-20 09:05:45', '2018-04-04 02:05:45'),
('af9ab8883b65d7ac24fd6b292b62d7d871211d8e52fb101645a3173948e4ab19943b66e77008fed4', 124, 2, NULL, '[]', 0, '2018-03-03 23:28:48', '2018-03-03 23:28:48', '2018-03-18 16:28:48'),
('b1ffb8debb6123c7426dbe6c32adbbdacf36d4c206968e3b847418044674b7d6c63a1b09513ff72a', 128, 2, NULL, '[]', 0, '2018-03-27 04:11:58', '2018-03-27 04:11:58', '2018-04-10 21:11:58'),
('b26f8cb89345d4dffcf2e651f6b229478c495cdf61f4679c25c63aa62221c4fbe0ed0c05c5e23c8b', 173, 1, 'socialLogin', '[]', 0, '2018-08-11 05:57:20', '2018-08-11 05:57:20', '2028-08-10 22:57:20'),
('b2dc43b1eb379c181a4351a68e9050895470059a0538690d3e37de1d9d1e20eee1eb7bf8fc234aa9', 128, 2, NULL, '[]', 0, '2018-03-21 09:20:36', '2018-03-21 09:20:36', '2018-04-05 02:20:36'),
('b3f47aef374c0dc07dd0d6005e2781144851eaef66a70f953274558355beb1e41034530139365373', 113, 2, NULL, '[]', 0, '2018-02-17 02:28:03', '2018-02-17 02:28:03', '2018-03-03 19:28:03'),
('b557a33438844b99b6f3ace567ec9c12c00902b418386fd3f5f096e02bebede8948eda2bb75999ef', 211, 2, NULL, '[]', 0, '2018-10-29 20:42:15', '2018-10-29 20:42:15', '2018-11-13 16:42:15'),
('b5766b16242bb68e6f77cc1bd19948cc9a2bd1838a5499c708a457afbe491b224421181270756bbc', 117, 2, NULL, '[]', 0, '2018-02-03 12:55:34', '2018-02-03 12:55:34', '2018-02-18 05:55:34'),
('b656b673c1206da649353136862aa067a75c1308aa39b4f0d60633c6267253dea5a179e2be2859a2', 113, 2, NULL, '[]', 0, '2018-03-07 13:10:52', '2018-03-07 13:10:52', '2018-03-22 06:10:52'),
('b73a542ec11c2cc79c04ea41b35dcc23b88e22f2f462e09ec75d0ae0e80dcf31e40b1429fdd715cb', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:54', '2018-09-09 23:23:54', '2018-09-24 16:23:54'),
('b7743cde18b5f5cc09dd2c89ac6bc91c24dd15ea31ec221f0e5163d4f4e9f283c5e5fc91e9cfc783', 113, 2, NULL, '[]', 0, '2018-07-11 03:13:13', '2018-07-11 03:13:13', '2018-07-25 20:13:13'),
('b7b75a3f21085c2a11621445e8d1eab049416130b7a9726b8d674087f22370b038f7135e7d900126', 113, 2, NULL, '[]', 0, '2018-04-21 19:26:32', '2018-04-21 19:26:32', '2018-05-06 12:26:31'),
('b822962e0e1f6a6d577fd6f12dcf47659a07c24d2748bc4df4a4e1862ebd5ce25f0e8902ca59be71', 113, 2, NULL, '[]', 0, '2018-01-25 22:05:06', '2018-01-25 22:05:06', '2018-02-09 15:05:06'),
('b82aea4df9d9d2e2e7ff0d5a80b1b2bdfd9f8a9dafe92dadb297f8bc9e15f83c12a61c870006255a', 176, 2, NULL, '[]', 1, '2018-08-08 00:14:00', '2018-08-08 00:14:00', '2018-08-22 17:14:00'),
('b8e7f3486c1d7951a9d580b268808ef41db4bd14a392668e34cdd16872c2f7215deecdeaed8f095b', 113, 2, NULL, '[]', 1, '2018-09-09 23:17:49', '2018-09-09 23:17:49', '2018-09-24 16:17:49'),
('b930df93de406866e7b125a0b13b8459a4553832ec95f3592022cbbb24ca82fc5c70295c570db59d', 176, 2, NULL, '[]', 1, '2018-08-08 00:13:44', '2018-08-08 00:13:44', '2018-08-22 17:13:44'),
('b9da448b35cb30cfe3dc51a911219a865b53d71bbec442c39e41097346bc1e6cc0ce4253dae0c261', 128, 2, NULL, '[]', 0, '2018-03-26 14:05:10', '2018-03-26 14:05:10', '2018-04-10 07:05:10'),
('b9e4bb8a4a1bc0a3a188e6ba1fba51ef97984c3ff8fe4328b6dcf012a47025aea6c7480d84bf07a5', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:18', '2018-09-09 23:22:18', '2018-09-24 16:22:18'),
('ba8024319dbcf9441bbb2fd39d1620e336bea0bf2a21a01d10b7d3407475807dba083db492a66997', 113, 2, NULL, '[]', 0, '2018-04-21 18:26:10', '2018-04-21 18:26:10', '2018-05-06 11:26:10'),
('ba98df9aacdd87725ffc46c974b1f878353beb18dab7b4cbe774bcfde33c74bfae865ec73f3d627c', 128, 2, NULL, '[]', 1, '2018-09-07 15:14:56', '2018-09-07 15:14:56', '2018-09-22 08:14:56'),
('bb1d69dc68d8a230d6c3549343c6043d5a9d293e35a33769aaf6f67a5585c4b435feb4e48eb26d89', 183, 2, NULL, '[]', 0, '2018-09-05 06:10:25', '2018-09-05 06:10:25', '2018-09-19 23:10:25'),
('bbbe484f3172587003ebe326da6e9ce27eba36b4c76da33e8b215baadefd785ffb283b019b65dd89', 128, 2, NULL, '[]', 0, '2018-03-08 03:22:37', '2018-03-08 03:22:37', '2018-03-22 20:22:36'),
('bbf5afc9a907ed05ee43d1813df4c24b8c40f2159429f6c732bdb7bb0081e3acdef0d08e1b22de15', 152, 2, NULL, '[]', 0, '2018-09-04 20:11:38', '2018-09-04 20:11:38', '2018-09-19 13:11:38'),
('bc938b5fe5e33a636ed6f8d1f97a153ba0e3804957c6391615cb76270366dcb8fbf87fdbe83e72d6', 194, 2, NULL, '[]', 0, '2018-09-18 05:05:24', '2018-09-18 05:05:24', '2018-10-02 22:05:24'),
('bca7f9f3f58250cc512b5c1540d0ee368293c9ec50b680265f17af6569495182596b7b87ca9635c9', 113, 2, NULL, '[]', 0, '2018-02-23 05:31:39', '2018-02-23 05:31:39', '2018-03-09 22:31:39'),
('bcd0c7c4340e4c9b942808df79911a895e1449c2e717885cbb3f9d7b108682647e74fdde2db28393', 113, 2, NULL, '[]', 0, '2018-03-02 22:19:17', '2018-03-02 22:19:17', '2018-03-17 15:19:17'),
('bd2324add6f27a15279747a4f7c05f313a54ece6de2f9ef99598c429d24c9804041e15890f28d582', 113, 2, NULL, '[]', 1, '2018-09-09 23:21:58', '2018-09-09 23:21:58', '2018-09-24 16:21:58'),
('bd259a511c7e972421db2721c7289a797a9804853cec3a5ac29fb18ceda5799420ace7bdc9960b56', 138, 2, NULL, '[]', 0, '2018-03-29 07:22:34', '2018-03-29 07:22:34', '2018-04-13 00:22:34'),
('be1d8e2571c28825176b278629b0ef7bb9a8694eb21db69fff86b7ca741b9429829fd4794ae0e5ef', 122, 2, NULL, '[]', 0, '2018-02-24 22:26:29', '2018-02-24 22:26:29', '2018-03-11 15:26:29'),
('be950be03821306edb3ce79926c160e2328a7e4ac138c0d49197a36d99b5834e736b09d04f6412ac', 113, 2, NULL, '[]', 0, '2018-03-02 22:14:36', '2018-03-02 22:14:36', '2018-03-17 15:14:36'),
('c0ee2585595562f324b8862ae9cf9f5a0d36e2ec3ebd872aab0cc873a22d3ae8654aa5bd399a3b47', 113, 2, NULL, '[]', 0, '2018-03-08 17:31:55', '2018-03-08 17:31:55', '2018-03-23 10:31:55'),
('c1811a980e694fe88da5bc445584bf161b382e75dd77ecd180509d19f7507f2d2b8c0831f3178338', 113, 2, NULL, '[]', 0, '2018-04-03 09:31:20', '2018-04-03 09:31:20', '2018-04-18 02:31:20'),
('c2e067af9a5253aa190a2ba183276bb90d2904db9082b4d6dc73db089e450c136a5fdc66a8e3dabf', 191, 2, NULL, '[]', 0, '2018-09-18 10:48:29', '2018-09-18 10:48:29', '2018-10-03 03:48:29'),
('c2fa262005aac828d10f6633c436fe5308340b5d636d1a09881b068b5a08a9459762a9da3f57e592', 113, 2, NULL, '[]', 0, '2018-03-08 12:00:10', '2018-03-08 12:00:10', '2018-03-23 05:00:10'),
('c2fb04ad1dea8d54fb10b61ae82b727db9235376f1bf502f75e3287204db3193594fdd4681383353', 113, 2, NULL, '[]', 0, '2018-03-23 13:28:23', '2018-03-23 13:28:23', '2018-04-07 06:28:23'),
('c3cf9a3e8781a5ea28e28fac959b4953df20eacdea768bea3734ced74bafee7b8ca7390dc9972a07', 128, 2, NULL, '[]', 1, '2018-03-15 08:48:54', '2018-03-15 08:48:54', '2018-03-30 01:48:54'),
('c4679d2584508e1c475c0ede1ea833167a6439c521dd044ef1d8f0d8346729d119b285a62f8840eb', 162, 2, NULL, '[]', 0, '2018-07-03 21:26:18', '2018-07-03 21:26:18', '2018-07-18 14:26:18'),
('c4c0f4b5242c714a1be49ec575d9de7efcc629e87281fe84eeca8bbd9970646afbfe7cc216bcd900', 155, 2, NULL, '[]', 0, '2018-06-15 19:38:25', '2018-06-15 19:38:25', '2018-06-30 12:38:25'),
('c50b0a336cd5245f8c276dae15a7993f8bcdbd186579176a47cc8c0a97e2cc41de3311608384c920', 128, 2, NULL, '[]', 1, '2018-07-30 01:58:56', '2018-07-30 01:58:56', '2018-08-13 18:58:56'),
('c5dd82a1b7c0de81a9466cba0f8cdf81e13cc959849c30685b1dd6de1cce6bf5afbce3a34376c782', 174, 1, 'socialLogin', '[]', 0, '2018-08-12 01:45:19', '2018-08-12 01:45:19', '2028-08-11 18:45:19'),
('c603ccdc5404b500f27cc18ef4a98c6a3e99db7adfaeca2fef408f3b28fd26416ef99f0e7d5d1e91', 113, 2, NULL, '[]', 0, '2018-03-22 02:25:59', '2018-03-22 02:25:59', '2018-04-05 19:25:59'),
('c620b04cfd9386b3eed7ecc56202884fcf77706e3c62538bffa9eac28aa98f9ee4727a070d388bca', 113, 2, NULL, '[]', 1, '2018-09-09 23:17:44', '2018-09-09 23:17:44', '2018-09-24 16:17:44'),
('c66e0cd0bb4a78058b46868f2a25d0768eab9b05f04bb494fdcf0c17fc59de38d36ffc1bdf58dcd7', 111, 2, NULL, '[]', 0, '2018-01-29 07:19:50', '2018-01-29 07:19:50', '2018-02-13 00:19:50'),
('c692e51d5f982c2d3bf9b59b07ff8f69111eddb248eb76b0a32b3cbba421b742e8a20856e55f094e', 191, 2, NULL, '[]', 0, '2018-09-18 10:11:05', '2018-09-18 10:11:05', '2018-10-03 03:11:05'),
('c6b62277b2e27bb05a6266ef18b655466bedff2dcbf5a0b32c47fd63f93ee0446a561ca95da9b7b1', 113, 2, NULL, '[]', 0, '2018-03-06 13:19:25', '2018-03-06 13:19:25', '2018-03-21 06:19:25'),
('c6be6fb0f5b72ec74d9f4e1814a8c29056d259e9aceaa7f20a22ac86a824b7c0cb3b84a01076c91c', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:21', '2018-09-09 23:22:21', '2018-09-24 16:22:21'),
('c87083a8ede9a27eb0fc9b4611d73b8a1eec46a34dc4cbc50b739a49b007aa30c5144f96366693bd', 113, 2, NULL, '[]', 0, '2018-05-21 23:08:27', '2018-05-21 23:08:27', '2018-06-05 16:08:27'),
('c8ff02a4e6d25106fc683bee3fad90203d23e3f64cf68e1d0d48a09674ce43e8636f84934b711845', 184, 2, NULL, '[]', 1, '2018-09-05 16:48:40', '2018-09-05 16:48:40', '2018-09-20 09:48:40'),
('c93eded05f769a8aa98454ff0650a59d4ecdf7d46fb8c44fd53c5741e4c8539e463db7768c320528', 113, 2, NULL, '[]', 0, '2018-03-01 22:26:03', '2018-03-01 22:26:03', '2018-03-16 15:26:03'),
('c984e811a5cf186bd6ce0d89c8475c0baf08e16519ff642e6f32617d6544ef2dd5d6c97e64c63ef3', 113, 2, NULL, '[]', 0, '2018-03-09 03:14:46', '2018-03-09 03:14:46', '2018-03-23 20:14:46'),
('c9eb53a64bd4e4d99e9aa069fa34967f3ca081a23b66dc4d634c00f1b9939423e1fbf6eaeafe25f3', 188, 2, NULL, '[]', 0, '2018-09-18 02:17:39', '2018-09-18 02:17:39', '2018-10-02 19:17:39'),
('c9f84d7808c94c989434fc8dc724b0e415765f75121cf3fe3b2b9540f98e338880b852a6438b458b', 160, 1, 'socialLogin', '[]', 0, '2018-06-27 03:42:45', '2018-06-27 03:42:45', '2028-06-26 20:42:45'),
('ca03b3a7f7667dff5d192863900edf30eb856ea0ea4e807b2e3311d1be169129facc18e981794cff', 113, 2, NULL, '[]', 0, '2018-02-24 07:18:48', '2018-02-24 07:18:48', '2018-03-11 00:18:48'),
('ca0c65880d1ec467d0d602897f671eabd3b00246450cd92063a0e789fc081787e8aff04e26a12251', 113, 2, NULL, '[]', 0, '2018-04-10 18:56:54', '2018-04-10 18:56:54', '2018-04-25 11:56:54'),
('ca149158fee90fbede441b6417e9afa1d2d9ed0b1c7aee7d3cb5f1cff71a189f2ac1b6e3cd009417', 128, 2, NULL, '[]', 1, '2018-08-16 09:35:48', '2018-08-16 09:35:48', '2018-08-31 02:35:48'),
('ca96cb45212ed2a6cb255c7712c4c221eab417d9c23449d3faa0a2fc5c8586b1178a6570995188c8', 116, 2, NULL, '[]', 1, '2018-08-24 07:54:34', '2018-08-24 07:54:34', '2018-09-08 00:54:34'),
('caa18e5df51989735159691658b530a0fb8dd0f88bef065901228b1dd11c6b8be3b46d312e763167', 113, 2, NULL, '[]', 0, '2018-03-08 17:56:34', '2018-03-08 17:56:34', '2018-03-23 10:56:34'),
('cb70a3604f6c9c854695ffb997e873582b8aa4e83a0202526b0a9a40349a11dc2f361a855eef1823', 175, 1, 'socialLogin', '[]', 0, '2018-08-13 17:56:22', '2018-08-13 17:56:22', '2028-08-13 10:56:22'),
('cbc1150b762c80307218f229cff02cb4d876db24831b4eaa1bcdc342207f0fcc3bd6a8d11e3ee2f4', 184, 2, NULL, '[]', 0, '2018-09-25 17:11:17', '2018-09-25 17:11:17', '2018-10-10 10:11:17'),
('cbc5d9e7fea9fc65a51d1df0cb208982e415ac4c61cfa115bab53182ed001e165741a821de520790', 194, 2, NULL, '[]', 0, '2018-09-17 02:29:46', '2018-09-17 02:29:46', '2018-10-01 19:29:46'),
('cd0209e859a6c400a226ddc126259f4e355bdb1efcf038e8bfcd1e1ac501cda44290382ba46f6230', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:02', '2018-09-09 23:23:02', '2018-09-24 16:23:02'),
('cd1d581d34f59ee1fdb88d7260ae4570a3b9d8daa8304d61f292ddc5738011bb6d6d49b2621e9ebc', 128, 2, NULL, '[]', 1, '2018-06-22 12:35:00', '2018-06-22 12:35:00', '2018-07-07 05:35:00'),
('ceb8969ceb8391bb0bc37d24865f000196b2ac350c84f8c57f2edea7ef8e68bd38565adef3b15776', 152, 2, NULL, '[]', 0, '2018-05-25 18:25:29', '2018-05-25 18:25:29', '2018-06-09 11:25:29'),
('d036e3d1afab262aa975df91718dcc299f4aaab752e76c90eda8fa0e0d86770cdd40426bd66b9690', 191, 2, NULL, '[]', 0, '2018-09-25 07:42:22', '2018-09-25 07:42:22', '2018-10-10 00:42:22'),
('d0dc09c7ffac7d7229bbee356074cdec188798be78432e78a000c0dde8baee425d90b552c49b9be9', 113, 2, NULL, '[]', 0, '2018-03-23 14:55:06', '2018-03-23 14:55:06', '2018-04-07 07:55:06'),
('d173969a26f674042181a7fcfe30af35dbecd641733ff43649e31e6da9966c37756d018fbeaaa12e', 113, 2, NULL, '[]', 0, '2018-01-27 10:23:36', '2018-01-27 10:23:36', '2018-02-11 03:23:36'),
('d2196e1f73dd6e1f364952100f44d38edef3f76eb430ffeb8f49ad17d140979330e3d0e5d7746a4e', 191, 2, NULL, '[]', 0, '2018-09-17 09:32:30', '2018-09-17 09:32:30', '2018-10-02 02:32:30'),
('d3202303a39f3577a436f5580c6170eb5a2cb1d2adb6a32c93b28fdde21061d314a274977f8be99a', 170, 2, NULL, '[]', 0, '2018-08-18 09:07:34', '2018-08-18 09:07:34', '2018-09-02 02:07:33'),
('d4d8de05d867868ac9ece85173df1826c26a0d2a5db6282af063682e747bdafa8a0b96d9b1072dcb', 153, 2, NULL, '[]', 0, '2018-05-25 23:46:00', '2018-05-25 23:46:00', '2018-06-09 16:46:00'),
('d544f69e285c4b1a07f20497a3d5fb9cb4c784104cc2e178df7679e23211a6640a3e25485ec17d9a', 113, 2, NULL, '[]', 0, '2018-02-20 07:21:21', '2018-02-20 07:21:21', '2018-03-07 00:21:21'),
('d6b3bf23311689b04608d697cda67f79791ca3e2ff134b943a89f8274a0f3ca253828e73b8003c1d', 113, 2, NULL, '[]', 0, '2018-02-23 22:19:12', '2018-02-23 22:19:12', '2018-03-10 15:19:12'),
('d719423e60c0d15ffed15abb45d2bb27b3838fc439251187ec0855ca820e4ca5da7c93abd5761e46', 191, 2, NULL, '[]', 0, '2018-09-18 09:36:43', '2018-09-18 09:36:43', '2018-10-03 02:36:43'),
('d800463996b373bce8ea109ff216904c01958dd03c21a5034a986f8c297b0d9b3b6cbcdc865710fb', 113, 2, NULL, '[]', 0, '2018-03-23 14:52:24', '2018-03-23 14:52:24', '2018-04-07 07:52:24'),
('d8551cf52063c3b19879cb9851468fe8b0aa6344c7e535c7b236a3d8b0abb0734afc943c69f795e6', 191, 2, NULL, '[]', 0, '2018-09-26 12:35:19', '2018-09-26 12:35:19', '2018-10-11 05:35:19'),
('d891c29beb1bcd7214131e4ffb4de9aec1a47af6951b24466455e5ef5d39f830c8ad4e3f072f50fb', 197, 2, NULL, '[]', 0, '2018-09-18 05:17:58', '2018-09-18 05:17:58', '2018-10-02 22:17:58'),
('d8b10a54eca300a2e70c7d125502e44269681463df86926e3800ff48465ed0bb225460e678f215f2', 113, 2, NULL, '[]', 0, '2018-04-10 00:10:19', '2018-04-10 00:10:19', '2018-04-24 17:10:19'),
('d921dde507842648ab79b7be56319cfadab51518cc4faaaed2284fbb321c56374f430eb37540554c', 195, 2, NULL, '[]', 0, '2018-09-17 02:31:32', '2018-09-17 02:31:32', '2018-10-01 19:31:32'),
('d97518a4f5e1c353f01ef77f95a19f332d367cca09b3e043e921646cd4aaf260b8abb6ccf3af50f1', 176, 2, NULL, '[]', 1, '2018-08-08 00:13:58', '2018-08-08 00:13:58', '2018-08-22 17:13:58'),
('d9b8df764ed5b3019aa5ac5f914bc9104a081a15cdde66590aadb6f0e56fe84d461ee99839ff6c09', 117, 2, NULL, '[]', 0, '2018-02-03 12:55:36', '2018-02-03 12:55:36', '2018-02-18 05:55:36'),
('da103781ac53e54cd2fc5d7820b4f559f8446fc41dbdff2770891132dc70aebc4eae35bb39f493cf', 179, 2, NULL, '[]', 1, '2018-08-25 09:36:58', '2018-08-25 09:36:58', '2018-09-09 02:36:58'),
('da83f44a098e03a86a537b4eb7615d516e819cd613fc7f3b23261346a7ad7f0ab758b6ff7c3c6c1a', 113, 2, NULL, '[]', 0, '2018-03-22 02:58:59', '2018-03-22 02:58:59', '2018-04-05 19:58:59'),
('dafe9f6c44c67807b6b38ae5048ba6638212b19e3f3d807aba2f5ef8f0d9bc8d513722afae3a722d', 185, 1, 'socialLogin', '[]', 0, '2018-09-10 17:56:22', '2018-09-10 17:56:22', '2028-09-10 10:56:22'),
('db205a0627208352ce027a3c3e856b3a748edb22ab82edaf91fd8bea577cb9a899f0b1b493c2bbe1', 136, 2, NULL, '[]', 0, '2018-03-26 02:25:32', '2018-03-26 02:25:32', '2018-04-09 19:25:32'),
('db4486db817fceb1e804367b0bae1501e2924babc6c827111491fc3db6e67c3d49b135f164c1a634', 113, 2, NULL, '[]', 0, '2018-03-06 17:23:17', '2018-03-06 17:23:17', '2018-03-21 10:23:17'),
('db46ef54779b9ffaac8a61c6c0aebbb1fc78df4e901c771fcacdf8d4f93c6ac64b98a4b53da99bee', 212, 2, NULL, '[]', 0, '2018-10-31 20:42:48', '2018-10-31 20:42:48', '2018-11-15 16:42:48'),
('db50eace34b795b7ec68f33def95da9012e70a471cf465d5f6c627fb1004d6d6c6190d0c82baafef', 162, 2, NULL, '[]', 0, '2018-07-03 15:24:49', '2018-07-03 15:24:49', '2018-07-18 08:24:49'),
('db52d193b5c2394d1ec742f12c4b5757d9342f50d4bd0c115cc3275d9bf708064c2ff3557ffb5eba', 116, 2, NULL, '[]', 1, '2018-08-24 07:54:32', '2018-08-24 07:54:32', '2018-09-08 00:54:32'),
('dbccef91597600fcc5aa9b336b0727266bf94e5a78921df196de29dc26e087bf91e28a40b794c358', 191, 2, NULL, '[]', 0, '2018-09-22 08:44:10', '2018-09-22 08:44:10', '2018-10-07 01:44:10'),
('dc572ecb9556cd94427bbe36cf9a521d4540c3271ffd1b8c4caa6ecd7698bab05b381ab41eedd0a7', 170, 2, NULL, '[]', 0, '2018-09-19 10:35:55', '2018-09-19 10:35:55', '2018-10-04 03:35:55'),
('dcffd2d25eae83e36041265f700b546a3cef59c7b2e0f24a9afc2c4de71e27e05ceb37a655ec8f0f', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:46', '2018-09-09 23:23:46', '2018-09-24 16:23:46'),
('df0ffa31839ba35e93e0aabb580c48a72aed0cc6a5a87f4b6c0372c32173b2309918d356d502f913', 113, 2, NULL, '[]', 0, '2018-04-18 04:46:09', '2018-04-18 04:46:09', '2018-05-02 21:46:09'),
('df30d84bb5c1aecaf6dbd18763f15db6a3cfc1ffc588a48b1bae9ade7cd0467ee020b1f5e13fab05', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:15', '2018-09-09 23:23:15', '2018-09-24 16:23:15'),
('df7c4fc6e6d4c7ce700b113a979dcc2186e9ab8b0192531f1f546e577568ac6021d8b7f9b1b48021', 125, 2, NULL, '[]', 0, '2018-03-04 08:29:35', '2018-03-04 08:29:35', '2018-03-19 01:29:35'),
('e0a9901fc2f54ddf77efd5b96cc5bb6fc04e7fc917ac9f5afad37bdf0099e45d4e350c9d775fb595', 113, 2, NULL, '[]', 0, '2018-04-14 09:37:16', '2018-04-14 09:37:16', '2018-04-29 02:37:15'),
('e1f39e3ccd5a175ee705b3016bc48b1dfcf7fc59bda1ee809ecc285fe8158818ed46257c2709fdeb', 176, 2, NULL, '[]', 1, '2018-08-08 00:13:46', '2018-08-08 00:13:46', '2018-08-22 17:13:46'),
('e200216548bec39350a3b069373263269f867849c3ab8b5e041936a080b6bed8f0e4c1d0fb0fbf89', 113, 2, NULL, '[]', 0, '2018-04-07 03:06:20', '2018-04-07 03:06:20', '2018-04-21 20:06:20'),
('e24e6c014dad45447a3c3b08ef97e3ee4ed9145f12575ae8cfcb69623ac067c25cf55fe03dddc9e2', 129, 1, 'socialLogin', '[]', 0, '2018-03-08 03:29:06', '2018-03-08 03:29:06', '2028-03-07 20:29:06'),
('e251f8fe855dc339cb423a2e570196da855c216cab708eba65cb4e401debf0b31512afd30e800446', 191, 2, NULL, '[]', 0, '2018-09-22 06:59:09', '2018-09-22 06:59:09', '2018-10-06 23:59:09'),
('e39c98908e284ad47133e8d6abb6b99957746b3c83155bc9d2fd64313d32f4c5a836528d527474c3', 153, 2, NULL, '[]', 0, '2018-05-25 18:28:17', '2018-05-25 18:28:17', '2018-06-09 11:28:17'),
('e3fa0ef0da12ea03f8519e856fabd3f4dea76a32b9ad60effcda7167bbfd4fc9ef63edb3da59b93b', 113, 2, NULL, '[]', 1, '2018-03-23 14:55:04', '2018-03-23 14:55:04', '2018-04-07 07:55:04'),
('e427b290d47fea9686edf7836ef7be50476d3af8afecdbb02fabc905cdd315d76832b66b7e6a6f3a', 176, 2, NULL, '[]', 1, '2018-08-08 00:13:59', '2018-08-08 00:13:59', '2018-08-22 17:13:59'),
('e491b1b6998a42a1a8996bc63b0a3906c3fda545d854a917cecc4480ed3a0dd999733add68bfaf78', 189, 2, NULL, '[]', 0, '2018-09-12 10:18:07', '2018-09-12 10:18:07', '2018-09-27 03:18:07'),
('e4a942e97e2f5b182df67c5d33126969730f6d467f5025f2d405967c7a7b1068658fac1af0b74f42', 113, 2, NULL, '[]', 0, '2018-03-02 23:57:17', '2018-03-02 23:57:17', '2018-03-17 16:57:17'),
('e4cee50217466a1a6df9c1d5a4cae984e0651ece15cfc103941bd86bfe88071d1a6dd40c69a6d5f9', 191, 2, NULL, '[]', 0, '2018-09-15 06:42:52', '2018-09-15 06:42:52', '2018-09-29 23:42:52'),
('e4d7e03049e588cdb265a4179e2e1a40f93253fa543caf663099ecf7f367565f8049a92f64155a0f', 113, 2, NULL, '[]', 1, '2018-03-23 14:52:22', '2018-03-23 14:52:22', '2018-04-07 07:52:22'),
('e5153800f21f5f3d29e4b776dd26dfa0841f56970d3466615d3ec90a0f39d209a7c10d20efaa231a', 113, 2, NULL, '[]', 1, '2018-04-03 09:31:17', '2018-04-03 09:31:17', '2018-04-18 02:31:17'),
('e547f976692ad22e2c88e9d8643fed266e49c2b01145bac08306edfdc313a95f47db02d686e57cd6', 113, 2, NULL, '[]', 0, '2018-07-17 02:51:36', '2018-07-17 02:51:36', '2018-07-31 19:51:35'),
('e60cf8b712beea8de1d68541f034ba333a9a8bc1d26d9072487db8bde5d972a8ca87d7efc1a639db', 113, 2, NULL, '[]', 0, '2018-04-16 23:48:32', '2018-04-16 23:48:32', '2018-05-01 16:48:31'),
('e69887229fe6e5e97d5dcfcaefec3cea945a3ff03187feba93fde5436fae6d79619122e09053b120', 113, 2, NULL, '[]', 0, '2018-03-02 07:45:14', '2018-03-02 07:45:14', '2018-03-17 00:45:14'),
('e742242527dc16ce3d6bcc3688686642d99f4629afc73bb5a8d3b8d36080b441926f602865fb8858', 128, 2, NULL, '[]', 1, '2018-09-23 14:42:29', '2018-09-23 14:42:29', '2018-10-08 07:42:29'),
('e78b5c91de50d40bab0b8802c6535abc349f2ba2089a3931eb201f2bbf66140fb252671d9ead3375', 192, 2, NULL, '[]', 0, '2018-09-15 16:37:22', '2018-09-15 16:37:22', '2018-09-30 09:37:22'),
('e82538be5cd03188962f4256bf1befd0c4788a020830e4a95d2046ad07021718671bcc6f02703c85', 113, 2, NULL, '[]', 0, '2018-03-09 16:35:16', '2018-03-09 16:35:16', '2018-03-24 09:35:16'),
('e883786849ee5d6d730105857ea411e8c9ab5916e52f19f8e1f8097b92bfa8c17fcf72ae20293089', 113, 2, NULL, '[]', 0, '2018-02-23 22:17:35', '2018-02-23 22:17:35', '2018-03-10 15:17:35'),
('e9754410b236ac867f47fe2129cf094874dee3ebdc539eabe3056e883dde6b56810b8309cacf3891', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:00', '2018-09-09 23:23:00', '2018-09-24 16:23:00'),
('e9810fbd660e1836275e5b3c2b9a1fd5c8c4defdfff88df4d6b5ea8b7073f05548150718f0b1b81f', 113, 2, NULL, '[]', 0, '2018-02-23 04:50:25', '2018-02-23 04:50:25', '2018-03-09 21:50:25'),
('e9c07ad19992d05b29274132c4f8d4439fde5d7ef4a764ff2f1dd2ae9c6c5f89f9d4b4c472900ee3', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:11', '2018-09-09 23:23:11', '2018-09-24 16:23:11'),
('e9e8e4ac9e9f5c60d0c2b46ecba67601e862b99785c5c0a48a67bec345307e9d301a37b6d6e3089f', 113, 2, NULL, '[]', 0, '2018-03-02 09:22:58', '2018-03-02 09:22:58', '2018-03-17 02:22:58'),
('eb39333d305fe331820a3e41ed9ed44296b56348977ed10f6c33559fbdbda77a842ebb789874a770', 128, 2, NULL, '[]', 0, '2018-03-08 03:33:58', '2018-03-08 03:33:58', '2018-03-22 20:33:58'),
('ebc4945190478b1b2430aa2f2cb9a1201227ddd10345b54415d567e69e63429582b5233bbff7e38b', 113, 2, NULL, '[]', 0, '2018-03-02 16:09:02', '2018-03-02 16:09:02', '2018-03-17 09:09:02'),
('ebc78995d58374b4118323b313198566774550d0dbeae4481751ab35f22b7f625e6d303984ef4565', 113, 2, NULL, '[]', 0, '2018-03-23 15:37:27', '2018-03-23 15:37:27', '2018-04-07 08:37:27'),
('ecd3d02054763e2f96687e12b8a1f7feb83ababfb22cc3e8df59da950b85f3a72067d6ee7ad5e03f', 183, 2, NULL, '[]', 0, '2018-09-07 12:15:34', '2018-09-07 12:15:34', '2018-09-22 05:15:34'),
('ed525b13007c4cb8a31ea5176762a827b3f7dc1b5213346ddc87d3e17ad8aba46390dfa49ed9b2e1', 128, 2, NULL, '[]', 0, '2018-06-12 10:13:59', '2018-06-12 10:13:59', '2018-06-27 03:13:59'),
('eddcecd464c5baa831a6c2961521f40d601d1419e6a0b5e47687b33677f6095b5c67059bd6d5d97b', 152, 2, NULL, '[]', 0, '2018-09-26 23:10:54', '2018-09-26 23:10:54', '2018-10-11 16:10:54'),
('ee4f3634e117895f0f1b653b3926f014d6414ea1ca0f13f87073f53b90d1a379b094878d1448046b', 152, 2, NULL, '[]', 0, '2018-08-01 20:30:33', '2018-08-01 20:30:33', '2018-08-16 13:30:33'),
('ee7bffff6fe7493f8aa41413d2b8deb3b30a04b1547b29e022be895f7ab610d4067601caa06ebf6d', 191, 2, NULL, '[]', 0, '2018-09-26 12:58:11', '2018-09-26 12:58:11', '2018-10-11 05:58:11'),
('ef18b9b1855fb0b515238ffa895f178bede4424771c6b24f786b0af1435aa45e8616539eb827631f', 113, 2, NULL, '[]', 0, '2018-02-28 04:35:13', '2018-02-28 04:35:13', '2018-03-14 21:35:13'),
('ef5b5e99562ef674a1885fa8fbf811d8db37a9f81a0ef69dc638ce6e6c74109748014046eb9bc095', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:41', '2018-09-09 23:22:41', '2018-09-24 16:22:41'),
('efa32011c3b1d9704e786ece01d74a81cde86c96fc4b5e8ff60ba11cc85201dcc5112323ab61e1ca', 113, 2, NULL, '[]', 0, '2018-09-09 23:24:07', '2018-09-09 23:24:07', '2018-09-24 16:24:07'),
('efa68c5e9645c84f9797d850a46e7ada11ff7d6a62e205b30106abf5536edae384128cda9dcbe708', 187, 2, NULL, '[]', 0, '2018-09-10 22:57:45', '2018-09-10 22:57:45', '2018-09-25 15:57:45'),
('eff8ffb6fdf11347e79efaeebe0f21d9fef6f980439dca5b79d5761b4cb43215dd9ac88e5f67aecc', 148, 2, NULL, '[]', 0, '2018-04-19 20:41:04', '2018-04-19 20:41:04', '2018-05-04 13:41:04'),
('f0bbb9341736cd68e4a91b1f66f9c50db7e9f306b973545f6613e292e0ce8c294aefa00134271d27', 113, 2, NULL, '[]', 0, '2018-02-23 05:14:17', '2018-02-23 05:14:17', '2018-03-09 22:14:17'),
('f1a7d1ede678651c740391bfbafacf9b936cbbbb2ca680eeef159078a22c4f2760261dfbe523cca2', 113, 2, NULL, '[]', 0, '2018-04-07 20:49:56', '2018-04-07 20:49:56', '2018-04-22 13:49:56'),
('f20f8eee217364a71250df069e6e64096ef7435e3eaca60098e9765c9ccee7cc95cbca1994cf5ffb', 113, 2, NULL, '[]', 1, '2018-09-09 23:22:37', '2018-09-09 23:22:37', '2018-09-24 16:22:37'),
('f2b33f4c50dcba3c759ddc4920f86fb0f27f107e3c55a33faeeb338f8b04c37e52f8b297df5ad27a', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:22', '2018-09-09 23:23:22', '2018-09-24 16:23:22'),
('f3098703b0f6e73e2dceef4f1d1e0138e5fd4a42f989e741700e5077a2dcfafdc183e5adc429902f', 113, 2, NULL, '[]', 0, '2018-03-09 03:12:01', '2018-03-09 03:12:01', '2018-03-23 20:12:01'),
('f333f3c8145a4a933eef2690c655f6050a06df17376351ef86d6da2c21fb133f532f753ac638baf8', 170, 2, NULL, '[]', 0, '2018-08-18 10:35:06', '2018-08-18 10:35:06', '2018-09-02 03:35:06'),
('f437f3532bfa5642cddef7d39e3bb8463debf2d63ffc10a6ea7163f932469f847f1484474919247a', 113, 2, NULL, '[]', 0, '2018-04-10 18:56:58', '2018-04-10 18:56:58', '2018-04-25 11:56:58'),
('f549d3067d65eefb0373c6d4820c229ccfe5ebb7c875eb83ebe77847b286647bd7d83bf261a74527', 116, 2, NULL, '[]', 0, '2018-08-24 07:54:35', '2018-08-24 07:54:35', '2018-09-08 00:54:35'),
('f569338bc4e89e37e9424d3ae84c621d11455d9b90230657df27641ebb7d33318ece1ae9752bd1f1', 128, 2, NULL, '[]', 0, '2018-03-25 07:04:53', '2018-03-25 07:04:53', '2018-04-09 00:04:53'),
('f5ef839a9993c3da69cf2a7048ec16960593079e98bf479fdcdc1e2a123f82653a4b0dadf8671fd5', 191, 2, NULL, '[]', 0, '2018-09-17 06:04:12', '2018-09-17 06:04:12', '2018-10-01 23:04:12'),
('f6bf86d98bcadfe98d6ed7c2e2fd89d392d184071015b8487b6e7577f8e6220a56a5867e266556e9', 113, 2, NULL, '[]', 0, '2018-02-13 12:32:28', '2018-02-13 12:32:28', '2018-02-28 05:32:28'),
('f6cd2c54c0e29f50d4645ae987f7e360cff8d47ce994fffbd59bc8f1f455e6cb0fbab7ccf6a05ebb', 113, 2, NULL, '[]', 0, '2018-03-09 03:40:32', '2018-03-09 03:40:32', '2018-03-23 20:40:32'),
('f6e2cd7ff2e4bbb76d62a9dc96b34bac1bdd6bcd6488e20473f78e3c7621e7c730f1776612d13993', 128, 2, NULL, '[]', 1, '2018-04-14 10:56:14', '2018-04-14 10:56:14', '2018-04-29 03:56:14'),
('f8069f17c9184ed86fa3381c7612ad09ca3446613752223cbac825fd77459cfe73310a72e7fcec6d', 113, 2, NULL, '[]', 0, '2018-02-21 06:47:25', '2018-02-21 06:47:25', '2018-03-07 23:47:25'),
('f8600f5d074f1581917f0dd570582f9b9abeb904d50391c85207038ce3991abd407fb15613316334', 113, 2, NULL, '[]', 1, '2018-09-09 23:23:13', '2018-09-09 23:23:13', '2018-09-24 16:23:13'),
('f9412cc3208e159c149c72bda6cac580cafd1f8e8e34d65942dd601641c18a8866b53408e166821d', 152, 2, NULL, '[]', 0, '2018-05-25 17:58:07', '2018-05-25 17:58:07', '2018-06-09 10:58:07'),
('fbb4f4b5c943d9e1b62ebcaef90c4ef716b0d851c420c9084d46a52a4bc2b317e8815c675448766f', 113, 2, NULL, '[]', 0, '2018-03-28 07:15:48', '2018-03-28 07:15:48', '2018-04-12 00:15:48'),
('fbbb20c4f1b61ca0e563bb78b14fc3267ae85a17e7ef61a6c12b4b3fe89aeb5ace14f9d20ca6bbe3', 113, 2, NULL, '[]', 1, '2018-03-03 06:25:15', '2018-03-03 06:25:15', '2018-03-17 23:25:15'),
('fbf43c8e6722a36db174b59fbe31e28009cd8d4188feb6b67b5e3dd320ed3b285e9a9b0729a485aa', 192, 2, NULL, '[]', 0, '2018-09-15 11:29:18', '2018-09-15 11:29:18', '2018-09-30 04:29:18'),
('fc8b0e8a5abaf5c6c825a1743824014a492ea38f7a76e0a683e36d27a30cc192b5ca298bda35f9ab', 113, 2, NULL, '[]', 0, '2018-03-09 03:13:18', '2018-03-09 03:13:18', '2018-03-23 20:13:18'),
('fe5b6b9326b58123aff8707a3024ecc47a678423713eab60007ba7ba692904fe8e5f58e6e88ec76a', 152, 2, NULL, '[]', 0, '2018-07-25 02:11:16', '2018-07-25 02:11:16', '2018-08-08 19:11:16'),
('ffc4c1c0734d1acb00bf161440a55b62d68673ebf85af46a7f084a3a8f81618d87bc86f913e50ffc', 113, 2, NULL, '[]', 0, '2018-03-09 05:11:35', '2018-03-09 05:11:35', '2018-03-23 22:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'RideShare Personal Access Client', 'NvTN1CeLtNygzZFNPixRuUkDAo4knyz8RBqaNisS', 'http://localhost', 1, 0, 0, '2017-12-08 20:52:36', '2017-12-08 20:52:36'),
(2, NULL, 'RideShare Password Grant Client', 'WifS1rMi3LvuorP1G2UdtKZairUNSH2iMqrKivPf', 'http://localhost', 0, 1, 0, '2017-12-08 20:52:36', '2017-12-08 20:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-12-08 20:52:36', '2017-12-08 20:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('00377f72bd0147822c30eb4e7935071f6e244dda4ad5a72e9d449a99faa570b8bc5441e6c1949a55', '5d789c3084effad6b6eeed3c583fe9fd8c4a897720d336a328b28546bbd8c21043979a6435a10442', 0, '2018-12-14 04:03:45'),
('0208cf3ebf9dd7a308f1ad1063bbac0508983936ccf5dbbca408d5b39941bb0fa28bfb520323b4f7', 'd3202303a39f3577a436f5580c6170eb5a2cb1d2adb6a32c93b28fdde21061d314a274977f8be99a', 0, '2018-11-16 02:07:33'),
('0341ebcf55df9c4677f1f29ac2c8e547237df3070676c2088666321a8c2c8d7ff990479029f608f2', '7d734b2d9a1a6fd71853f62f0f464d3865634705d11e5c43ed0d2a7fbcf299ccb08dec21c0a85f00', 0, '2018-11-05 17:44:06'),
('03a10b3b25155cb6b35b5144fc0550d8906a427658c9a1c6156a27d68cf0d4665ef317c8cbfd4896', '6ee3df58595033caf5714d793697d4864824e2449dee9c66bc00ba60ae2d6f04662de8c66addb282', 0, '2018-08-03 13:13:02'),
('049b3ef40065942c2793b5ead008aa25396b1452791e3844dda9b0066f387cfbd72bfe6666e88138', '429eb9d7aeecc2f6ea524ee034c75e42999fdce6fa44a8c8448350d0b16be2a1b6054f374302aa5d', 0, '2018-12-17 14:04:19'),
('054a2c4ce7130ba81fc4509ef8d9391473ad6ecd0b503caf3b03eef95c2b919eaaea075bf5aab1c6', '85211429f49f217e96db3d299bb40a7135c0cd9857a6d4af58a9de45f01f6e487294f463eed337cd', 0, '2018-12-17 03:51:03'),
('05ce2ada0eb1d9e9e995aaced38eb5108f1b6fed98d2844b0f534747af1fa53e4f28c62f71c13c4b', 'b3f47aef374c0dc07dd0d6005e2781144851eaef66a70f953274558355beb1e41034530139365373', 0, '2018-05-17 19:28:03'),
('05d11312fe99aa118417af0a1badbbb67defe13f86527630c7bd71d83c38d605f3039de6c6f97ce8', '9409b6fab43dd0c7533ead5ddaf5e3be73a9cf738ffb7f183283ab277f83c975476104bacca7a017', 0, '2018-06-08 13:19:57'),
('07a6e503dfa62a2d608256b1ba816682e55d1c947ccf057193c6f541caa22242dde9562c118bf02a', '2258f93a6116323168ab3030fad002fb707618a158c250d7343115629635b2dfaff44b970afb6dcb', 0, '2018-06-06 19:33:32'),
('07e6e449d0d17489487dbe4c7e3642e29ff1b5a0119e6929e7663bf7a3aa6be9c41ae5366fdfcd12', '7e00366cc9e1fdee854235216bbdbd356dc66c3a129021254ce31888a21e3d30066a448d6c1b050b', 0, '2018-05-25 15:24:10'),
('08c3c034d04636d5ff6725eb25b314aa5fcefd7494c6e457d13109b577bd360315fdb16b31366e3d', 'b2dc43b1eb379c181a4351a68e9050895470059a0538690d3e37de1d9d1e20eee1eb7bf8fc234aa9', 0, '2018-06-19 02:20:36'),
('0ab8321316f9423e9ad18c6207db7fede6f92e405b982560bd6c1f179ffcb6293d5e1b255fd07525', 'ee4f3634e117895f0f1b653b3926f014d6414ea1ca0f13f87073f53b90d1a379b094878d1448046b', 0, '2018-10-30 13:30:33'),
('0bb64444242645348540322ab624f2773167cff06025374a86e1c72984d3f11f7985e736a6000d03', 'a89c59fbff6d86b4566a84d8c2af608a02705c767c82305ae7d24f2f4c1f9bc19de55d294ecc6372', 1, '2018-12-08 16:23:24'),
('0c2b61f1bd7a689729a3a817931cc33ac82ae651d45a1489340f39f23fccca52bc64a5121cbe4496', '14766fcdb7f3159477543389990847963bf4feeb5f567bb461f90f8a2b3f553b038f3ab79a32635a', 0, '2018-05-24 03:33:20'),
('0c875a4824f62501db677c8120ee6eff823d7c8a08c9dfe67fe24e3b9b94717f9673ce98c1216028', 'ceb8969ceb8391bb0bc37d24865f000196b2ac350c84f8c57f2edea7ef8e68bd38565adef3b15776', 0, '2018-08-23 11:25:29'),
('0cc8a4f178d377304cde65619956ed014b5306a1db18c85fe0f78d23e1a7642117b9a1060a5c428c', '82ade70c4bbd2cfe84004c09cb960bec696c6e1075cdda77537e91297b12c3b13d974883c51c151e', 1, '2018-11-05 17:13:54'),
('0d33602e957d132dc0a3a7b2c8edcbc7b0a415153e40d78354dd0cc3b314b5a8a709dfdb94c5bfbc', '089a784a78022f77053a1d1d1c34687238c561171ede0c2f92f8f8a7072399fd95193945531a8e60', 0, '2018-07-08 13:33:18'),
('0ddea246ea7793af31b237c26b90d4303ade03f4b3f4e826b07d3f64acb9751452b2f66d399c5c4e', 'e251f8fe855dc339cb423a2e570196da855c216cab708eba65cb4e401debf0b31512afd30e800446', 0, '2018-12-20 23:59:09'),
('0e7d1e5e783e4738f93f037a07d18d7113e8ab1fcd8f39c25a9e60e2277f6d414affd67b1eb241ae', 'aa9ad0c6b924cd5506d77906a83f69751e02a1066ffe1cebf38ce8f638ae153b5e7e8949208ac45d', 1, '2018-12-08 16:24:05'),
('0e92ca9e0eedcd018c4d1fd2829b066d97d82e03c6e22ea135d67ec98e31677870d820bd740d40fd', '32c4e3e060ac502a32262291728045eb2db01487afba4a5c632e5a1283bba4cb12b852e263ed4af1', 0, '2018-04-27 03:07:25'),
('10212478339e7ed68c35378715d0cc51af8f24522348f57bb4d76adf1ea1c3dd55d76a6bef6e57e6', '34b73eec4a216ac8f68ab0bed3ab69ae8d760fc544170a0bc619b7b801bc838da6edd33866cc13fc', 0, '2018-12-25 05:09:31'),
('10deb9c3f68fe2197f3310b29b2e1eba106e18705a21153ac73aea65c4d7be44c6b4a6efd3862871', '9950139014b28f204a2463ccae4f40a1bdd7885a1ed67d191bc364735a515f53304b4e82c6518abb', 0, '2018-11-09 03:06:04'),
('119c853e7d2252359b4ff7b1a7e4bdc0accf8d2afa28ce87f1174b090cb9d12fcf1a0a9cc96befdb', 'cd1d581d34f59ee1fdb88d7260ae4570a3b9d8daa8304d61f292ddc5738011bb6d6d49b2621e9ebc', 1, '2018-09-20 05:35:00'),
('133f0854f33f2a3bf392490a8cc58d92d10a6c5cca19c9d9bc77e18e8c07438afc54999122308db5', '70f053d21c528b440f87b2486359d1cdbca2b8366fe00a2d72221515625454b2178c4f1b983fd35f', 0, '2018-06-16 01:15:21'),
('13427f58f358e99bea7ca1da3a4cbf5880cf18c20551e56a56b68e955f223dfea75c08aa63827d3b', 'd0dc09c7ffac7d7229bbee356074cdec188798be78432e78a000c0dde8baee425d90b552c49b9be9', 0, '2018-06-21 07:55:06'),
('134358f6c3328734406c29a27f08a40425bf08075e8d6ea147564075164ae1dc639eed91ed807159', 'b82aea4df9d9d2e2e7ff0d5a80b1b2bdfd9f8a9dafe92dadb297f8bc9e15f83c12a61c870006255a', 1, '2018-11-05 17:14:00'),
('1396e9bf13848ff7673defed076475d8cce8f6ffbdbedb17c457da4a11503b264821c6f4e3c32118', 'fbbb20c4f1b61ca0e563bb78b14fc3267ae85a17e7ef61a6c12b4b3fe89aeb5ace14f9d20ca6bbe3', 1, '2018-05-31 23:25:15'),
('14190b4c0e4e5621f2d9585771a7635c245a0b69704a39e3fcc2a3c2ce0c61ee497fa4c1f7439228', '1a36de65635b96c109c5a0b1737d7841dfc90927f62164ae6f24d3e6296d6e662821261cc5b6514b', 1, '2018-12-08 16:22:27'),
('148765a966bed8b1a27ba0d2f64a6eaea10807e2bfff5ac6de478463f919d4a944260f31b0b3eb76', 'b1ffb8debb6123c7426dbe6c32adbbdacf36d4c206968e3b847418044674b7d6c63a1b09513ff72a', 0, '2018-06-24 21:11:58'),
('149ff863130e1175256a88093be7aac0bfaf4e37f0175f2a4628626e7cd6b3266185384ddf5a6aa9', 'b557a33438844b99b6f3ace567ec9c12c00902b418386fd3f5f096e02bebede8948eda2bb75999ef', 0, '2019-01-27 16:42:15'),
('14a63e6217f9f50a6e18ce4fa71a1f03c00d5ec29f56acec88654db9545b10a2136bb5111aac2573', '2a19d02bd8fd0d4da179def0a18ea8b95335d639ee4a2b3bc5f6f42030340a97500dfb96b59da52c', 0, '2018-07-08 10:44:24'),
('173175e17dbfd14fcdc83981c2492625d3be6af899bdeb12477bca38940578293db49f9f985dd1c9', 'bd259a511c7e972421db2721c7289a797a9804853cec3a5ac29fb18ceda5799420ace7bdc9960b56', 0, '2018-06-27 00:22:34'),
('1767cdbada5707b3f1ad8fa3b4cec85ed3b8997e7d220ce918b2f78797382c7aef5d69a7c9276739', 'ee7bffff6fe7493f8aa41413d2b8deb3b30a04b1547b29e022be895f7ab610d4067601caa06ebf6d', 0, '2018-12-25 05:58:11'),
('17bae161ddd4f915fab9a7b7b2a6c13a13ee26e593b720379c2f6e26fd0b9a76e89eca0c206bb1b9', '1d68d4e43a27c96c9ddafb8332cd0a8163d2894348e70d51fc4dd2e5937501b63c41adde3258c15b', 1, '2018-11-27 11:30:39'),
('17d7d86a0ceb69bcb30279c9735eeecdf813e6b377124cd4b6f3be55b203566e0547549af528cf18', 'e9810fbd660e1836275e5b3c2b9a1fd5c8c4defdfff88df4d6b5ea8b7073f05548150718f0b1b81f', 0, '2018-05-23 21:50:25'),
('1823821eb61b731cf7e91bb4ed67742dfe09fac7d4bfe79f1c9117da78c32888cdad8e2d5faf954f', '0b54df5aac5fa2813877acb9a90b86c4a4f5e0c89a6812e17f3adf51e6f91161b7e25d5df5f18ed6', 1, '2018-12-08 16:23:52'),
('188081f5c4f972ffb4e056b0e1ba71086b9e4173c95a4b8e2a394778d0545330b3957a73975f61be', '785d7fdc5e22859888b2d58d4d392a9299176c23bfc5e9b25f460b99b5a04113e22dff3318915bfa', 0, '2019-01-29 12:57:21'),
('188d8f4125c4d00f652541f0c9a0b72f012866e741da41df5215e3dc297237983f5d08aca9a39642', 'f8600f5d074f1581917f0dd570582f9b9abeb904d50391c85207038ce3991abd407fb15613316334', 1, '2018-12-08 16:23:13'),
('18b96887c6e9777ad5317f9931caa173cbe98d86c0275dec05b7089983fd3edf564b3358e00bb7c2', 'a4a7f35fc68bee74b36a1654f7bc81322ef0f583c034fbad86f0715a2e12d849e11686903b70e152', 0, '2018-12-18 16:37:12'),
('18c51841b7e97bfe798fce7f0953fcf4f4e310067622cbca5fbf609266a800c09f3638a8f6b9797f', 'dc572ecb9556cd94427bbe36cf9a521d4540c3271ffd1b8c4caa6ecd7698bab05b381ab41eedd0a7', 0, '2018-12-18 03:35:55'),
('1a6271a97fa2d3b7e3372255666e780881822a413ea1974c17ef14d5ee4e415004db3118b8f712e6', '41fc0df13ca2c79883d4ce13beeadc296a7cad93d569a5d77041b74a3e1118bacd512da0acc28aba', 0, '2018-06-06 18:15:17'),
('1ade53a06120987a7ae264b7e52eea6ebfb1416e9180a2851db0f2515984a8b86bc8e4be332de4e3', 'ffc4c1c0734d1acb00bf161440a55b62d68673ebf85af46a7f084a3a8f81618d87bc86f913e50ffc', 0, '2018-06-06 22:11:35'),
('1baa3a73accb493acc2d9b4df49401590d75afb836a15d2abaefaebc26a83f6ceceeb67d814bccb1', '85653af7de4fb4451ab64a18770ca2a68b7e50c7adcc066afda2506abea81c42ad5ad53f0e7bc59c', 0, '2018-06-20 13:24:49'),
('1bfd8c31f1105775f85d4c341010e7380ab01db0c8e02a5fb299580a089833717266840494620746', '901cca04e0c24c789559a1c996b2d689b38ea3723ee7a09e004054312788ce6406061f2f0434950d', 0, '2018-12-04 05:30:35'),
('1c0d2dea13fc84d855c161511bfe29646dfd6009daaa261fbcab7118ea63c6fb763fe4c1ec8024f6', 'fe5b6b9326b58123aff8707a3024ecc47a678423713eab60007ba7ba692904fe8e5f58e6e88ec76a', 0, '2018-10-22 19:11:16'),
('1cf1c596a8307c0bf7feb001a7a0471c278f73bc5ef1f5b0c93f5b307b636881a9e9108fa3a44b11', 'b7b75a3f21085c2a11621445e8d1eab049416130b7a9726b8d674087f22370b038f7135e7d900126', 0, '2018-07-20 12:26:31'),
('1d098e4497ee56a71d6e0ddad8c15c5e1c2c0477d8412a532f208e2635dafba6093874bb13d9e4c9', 'ed525b13007c4cb8a31ea5176762a827b3f7dc1b5213346ddc87d3e17ad8aba46390dfa49ed9b2e1', 0, '2018-09-10 03:13:59'),
('1d3720e23535226d1c8cbfa8aedfbd175e7dc13be8e911ffa3f867a59342be71b88b76ab34ad5bbe', '0210082337e73e53a3eaed1acdfda5e641bf8dfd749688d5cff66c17e314bd89dfedb630b16ae785', 1, '2018-10-28 02:21:25'),
('1e18d09420328a9ee38d14d3c1545134f2cbeae3018b8f71bb07ed535065900442704bc03998d8a1', '29339949665a8a27bdaede2b8d7e89a153ed6adb66bce719b261227497d7b33476ed21a03b51228c', 1, '2018-12-08 16:22:05'),
('1e4a99068328f96912ec822661e68eef0de688d63993e7fb3be915a5ea80db9ad071598e90043e57', '54992e3010d9b23264288b1892b8d5fd8f3c11282a761e9a063f0665e7c32e2736d19df401b10cfe', 0, '2018-08-19 15:51:49'),
('1e6a412db51a07918bf27102adfbd9183cc8c1d5fc6592f17a080d10ff63d8b2fb53c1d7076100f1', 'c620b04cfd9386b3eed7ecc56202884fcf77706e3c62538bffa9eac28aa98f9ee4727a070d388bca', 1, '2018-12-08 16:17:44'),
('1eab40e155395e7a661eee7c2b9ab9f501894c843db068dea619c1ac5693e9e90cd3df3b59bea413', '80174bd2c2737c9d7c8d70b33fc4a907010ad1626ee0881a1ad1cc630a5dec3fe41682f35bc4099f', 1, '2018-06-05 10:19:30'),
('1f20fbc57054949d8c234b03dca3260b77a104887168615dfa2e514ee5448c7865c3fceaef7e3ead', 'be1d8e2571c28825176b278629b0ef7bb9a8694eb21db69fff86b7ca741b9429829fd4794ae0e5ef', 0, '2018-05-25 15:26:29'),
('1f8f1385ebefc19dfe489c9ae9d96737b334c401712ee3c7ca606113af65aec62fd25cbcad6a5480', '0fa7cde6f8735498ffa054acf101b16842d9c9cfacae375ff3ef61ae48ddf09814d666fe1b1e18d2', 0, '2018-06-21 08:02:42'),
('2001de305c6e6709919229bdb794282b02ed9bf42119f707701de101346e5cc5a955b7fb51846afa', '521930afa0cf9c7fb92ad7e5aa9c59ec4e7076ce02af252d0bc358228f954a449d57b9137a3638c8', 0, '2018-07-09 13:14:18'),
('205272cc035b9853c1057db4bd78c663d0274497d7b57345cc8744d90f4c0b757983aeb39f5beafd', 'e547f976692ad22e2c88e9d8643fed266e49c2b01145bac08306edfdc313a95f47db02d686e57cd6', 0, '2018-10-14 19:51:35'),
('2117f8e1dece5a79a1dac7ab245ff14cc153eb4f6b7ec68afba738f428886caab0222ab105063e8f', 'df7c4fc6e6d4c7ce700b113a979dcc2186e9ab8b0192531f1f546e577568ac6021d8b7f9b1b48021', 0, '2018-06-02 01:29:35'),
('213d790c455dd84987eac1a184d7b81677298ae988e64c98cc54edc0c5b410fa21380de4f5c2f6c7', '65810d294ebf233c892a18b3fc2a7b2342c56beb2ebb7531b086c00c9ec01e8c20f4344735194c36', 0, '2018-12-24 05:31:46'),
('2144a00b0d2b88a9087979b46360972678f23c0cb5a97a053207771ff23d81832fcbc1a3f3edb1af', 'e9e8e4ac9e9f5c60d0c2b46ecba67601e862b99785c5c0a48a67bec345307e9d301a37b6d6e3089f', 0, '2018-05-31 02:22:58'),
('216fd6309e5e74eeea9980fe43cb8e3a32fd2313261c1e6a5e4e5411c435bd4f0a6bb72d219d8982', 'db205a0627208352ce027a3c3e856b3a748edb22ab82edaf91fd8bea577cb9a899f0b1b493c2bbe1', 0, '2018-06-23 19:25:32'),
('221c8e233f51c66e1e4a8bdb8e5db56cfe515417c862cbb3dff444a959c676a1f0c0740469049dfd', 'f437f3532bfa5642cddef7d39e3bb8463debf2d63ffc10a6ea7163f932469f847f1484474919247a', 0, '2018-07-09 11:56:58'),
('225c3d9bc3d764f34f8f26496fcc648bffc83d41134c096c4e547ae0bfb7a9e42674b3d53eb5c37d', '9e46f7afeb1af4b7f77f459d33e22321599efb8afa1e4bf9bdfc79b77da4f61ddad1bfb9d6b13687', 0, '2018-05-24 03:29:16'),
('227f94d776ebb055aea236b09c1449371e453f3a2c92b3c1df437bba7c7042774cb7ed6bcb7d13ed', '90b84531a0ff9ab651ea0d2f53ac3be6ba42b7f5067e92501325d79e8f61f48838eeef13a914c942', 1, '2018-12-06 08:14:55'),
('23355641984c900fcec310a42daa8aafcb554a8791489006f6099c665789526205662bfc981d0aeb', '00d0adf1881f7be28a06d5a0dcd39357a9ad05aa8bcbc88a2ece044daef6a3596e19997d75e087f9', 0, '2018-09-13 12:19:26'),
('239f5d2b973a05380a49387c78a36ebad5539a52d6b1004cab2600683449188096ac90a730a03bf7', '211755ae5b090a61320b706cb4e387dd039d696632214b041069a7f205968bc9c9e6a8bfc222c7f8', 0, '2018-06-06 20:15:40'),
('2454dd901a1b2ff87a3fb973912da86d0ab3b063fbefddecc8f8436c1ce3f4915b8b71c8c113fdd6', '5a2b6f4126d6f182601dca2a1e16050404b8411684422cc0e0f1edc4994b717793d24f8a9a9fab15', 1, '2018-12-08 16:22:01'),
('252dff63b61aa1d9bd60b75ef9a6a78ea82ed0856d042d8e4f34c595afcc4d94804f59c49e896511', '2bcaf887d8a378b8e041569fe1f95d4bf1dd30beb59e6b4998a486bf28cb0c5fa97adf42293b52d9', 0, '2018-07-08 16:06:27'),
('25db8db8eb02ed25752fa425ff200174007d2fca706b96c57259432978682b9fde191c6b9f01ee00', '769575d3958d91fa2288f3f250b03d17a106bcc8a60e62cdeddc985f76120eec260c503e97ee2d6e', 1, '2018-12-08 16:22:24'),
('26f202e8ecf5c77b4f5421c936cd0b11111ed3f7847dd4b578e4daa529e416f00c0795f4ef6b4fae', '8170272f97378ec0982d7acea1594f4bcfa1ad143217517b693835e6d94e325f105d1077ab969aac', 0, '2018-12-09 00:37:32'),
('2763d1f79969cea6d2331ce6947ab0af3521f02151d872fc3a1ba7fba56ee37fe9e88823d7ed736b', '913dcfd5d73bd163c6fe7066295a8fb1b713f6bd305879284b475888ec1625f148815fb51d44aa2e', 0, '2018-06-24 23:21:46'),
('29226f0166b5965806f269c064559c602609450f40f210567263c3a8c28f00dbb5a9f447ee6123d7', '3fc24964af167f438cc5b95b18391881846f91e543e1317d0809009df6b87008dd59f5777bfee6cc', 1, '2018-12-08 16:18:26'),
('29447c924e3f60aff75b7e6007e1aae729366b15cdaf0e4b107e1cff59195ec35dcf0f537ff6c293', '13f00c100ace049d23da2fea5cec8a0296ce4cdfe14114c48d8888252bea043d5edef674c3b8650d', 0, '2018-06-07 15:53:33'),
('29b6220fac759b93a3e92fd53f883f08746d69f7ee2de8d6223e25264ed6a90a8a448094e81a317d', 'ecd3d02054763e2f96687e12b8a1f7feb83ababfb22cc3e8df59da950b85f3a72067d6ee7ad5e03f', 0, '2018-12-06 05:15:34'),
('29e39a8cf93c4461156e4955a90db7e50219fda4b25eaf7d622b61d3d78f345935dad1035c82ae5b', 'ef5b5e99562ef674a1885fa8fbf811d8db37a9f81a0ef69dc638ce6e6c74109748014046eb9bc095', 1, '2018-12-08 16:22:41'),
('2a329dc891286d972de100015f2bb4c8e726af3528c9fbdfaf35715ea71c816384d46bb7e7aca391', '03d8abccbe622e7c2a3a05069aef1bf0d15b7db8732d360ae1591b16b59aa832fc7a945b05c14553', 0, '2018-06-24 04:11:17'),
('2a35d6e0c4ff1ed169b53dcd014bd10bf6cb4a1980f8c92a6401b98af4f6db8ebd9530f8bd3fc5d5', 'a927208d2c971621b4d18c6c5f3ee349b653659ecfbdf5723f8b1c156bab5c1a789a50666540ba2d', 0, '2018-12-25 10:28:15'),
('2a3ebe511de8e8216ea1f2c92bc885c1be8dde4f3bc96d495c77eb961f463c9a302a79930daf7fc6', 'aa0d2a9c19b21d950e4b3ae87138cc62cf4384c6bdce6570beb752e3379d26e40763f04c9cd51470', 0, '2018-06-20 22:59:51'),
('2a626c98577859965a0c28d515da2cb4f3ef2c1bd3a8b9c14fa65b5d95a88a569040a5403f878dbb', 'f6bf86d98bcadfe98d6ed7c2e2fd89d392d184071015b8487b6e7577f8e6220a56a5867e266556e9', 0, '2018-05-14 05:32:28'),
('2bb6ed00938d32bccdfcc69851119af000241f5174f76a1ed1ebd8e3fd6e3c659f26a5050d867880', '1f7c7af261889d3657f4570aecfd7c5f5ef63c2fcc96278100c8b90f821253e96f470aa0e574c4ba', 0, '2018-07-10 02:46:21'),
('2c071941f3c3574e0a13c73a26c6543829650f29db24959ffad72e1144f6cdcc3ef8d3d8d9a083d8', 'c3cf9a3e8781a5ea28e28fac959b4953df20eacdea768bea3734ced74bafee7b8ca7390dc9972a07', 1, '2018-06-13 01:48:54'),
('2d2aaf970a60a78d760e78431f3ae5b0093b31378c04824a6bd79a1af85d2e571d6e013fc1471c13', 'b9e4bb8a4a1bc0a3a188e6ba1fba51ef97984c3ff8fe4328b6dcf012a47025aea6c7480d84bf07a5', 1, '2018-12-08 16:22:18'),
('2de4e2b716f935a5965e03dcf0d8753eebef9663aeae71b47f1d8367ba99bef843b631f2ac7baed0', 'e4cee50217466a1a6df9c1d5a4cae984e0651ece15cfc103941bd86bfe88071d1a6dd40c69a6d5f9', 0, '2018-12-13 23:42:52'),
('2ebd6c6cbcfd70b87bcc2dcbdf5f278a9047aec5c6e48a2effaf8e4aa633476840a25d1d99035c34', '7c858f8cda21d2c832a2a0633de02be8b3746cf4ffc19d2ca19661f9098a4f09e80a789bc0be2ce4', 0, '2018-06-21 08:28:52'),
('2fd198c3a55e668a3af16c428c32c2f84ea10028c2afc244761cfe85ba88cb268a1414afb26b337a', '80f44981b2f37d91048d4702170f9470dc95b427468bc2ad1ca8a5bd797de8c9144501c6f80eff9c', 0, '2018-08-23 10:50:31'),
('300e2498d775e4d672d9f47eeda3669588894975869955b1287d9321adc96d626be6a5877eb40178', 'cbc1150b762c80307218f229cff02cb4d876db24831b4eaa1bcdc342207f0fcc3bd6a8d11e3ee2f4', 0, '2018-12-24 10:11:17'),
('30532be86747ad3361fbd7e83734a80ec1486f8b25a00a3f8c7ba4f1adc841fbadab70ea56a66298', '095e855c5fe54a4f92b03cee0389a2bcf6df26aaf75cb51a08a6f901fcb12435df3a9e00284f8a5c', 0, '2018-05-21 15:30:38'),
('3074900789a5624ddcf7897a25a3bbb6e4267397b068889a12db56d40a69fb100c838cc1f2d688ef', '78240068de7676d3c6c8a6b3a2a8b3e4184d8f325e8c9aa53c96148378269176bf2633c1690c39f0', 1, '2018-06-24 06:31:09'),
('30a8a8c7c338fb44103294119701a8471c7f92173ef6cd5c6bac273d5272f2c04d99710e7c07fa66', 'c603ccdc5404b500f27cc18ef4a98c6a3e99db7adfaeca2fef408f3b28fd26416ef99f0e7d5d1e91', 0, '2018-06-19 19:25:59'),
('30c94bb4a3e18eebb6ef430baece6d48f9a462b44b7e239e464413bc2ecdd507fcddc950712ec2ee', 'e9c07ad19992d05b29274132c4f8d4439fde5d7ef4a764ff2f1dd2ae9c6c5f89f9d4b4c472900ee3', 1, '2018-12-08 16:23:11'),
('31b6529889f117d35380f2df16f8c7d0c4274f2fdf234f7d0b27dd62f8d2f4796c83f52571ee1728', '693846895042bc77e1a5c94fca8b1768d4cf2c6b1f5865a9658a6363601a89e457275985cd4a7019', 0, '2018-12-03 08:38:39'),
('32ae66d94bc40684f4b7906952ab09a223ae3121b6309b131fdbb9375cdd8223b14820e4aba43897', 'f5ef839a9993c3da69cf2a7048ec16960593079e98bf479fdcdc1e2a123f82653a4b0dadf8671fd5', 0, '2018-12-15 23:04:12'),
('32b4fccdcccea0d208e5022b5d21ff1bc7bbebb5fc02038ad47e6013df88c05771c0d8f6dc656d56', '92b89740bed701849453f40ea428a3cb4f1713df92007f53b002fd12825ec80eafd04e9e26e3be33', 1, '2018-06-20 10:29:24'),
('32cc79177ccebc4f4e2e8135d93f8d758f49e167c6d6deb98c9862cc573814221a88e70bcc3ceb09', '4a0f66e6f59c29b2903c0535f8a362f840cc7e581c6f355a1031dfb9c0813c14f100354f116fd13f', 0, '2018-06-21 06:46:23'),
('33f941295e061616edd17dd006893e07e3da1430cfd3af40a8e2eedc93fbfd553af964bbd720d465', '9499489485fdedbde9c8a5336f978ed066cf47e13b5f1bfa080e986a001b1a43b7c9ca5d267d032c', 0, '2018-12-21 21:15:32'),
('37168211d2cfb9f1670e9fc6258c00113c3e033d418521628591896ade835c3f551062bf0a87c2de', 'd921dde507842648ab79b7be56319cfadab51518cc4faaaed2284fbb321c56374f430eb37540554c', 0, '2018-12-15 19:31:32'),
('3734b1497d388b40357023207729bdea32c36027ea3e31ed82617497b4b1c94ef5f11f95dd857d9a', '17446e4b67ff3cdb93daf57760ce6feef9241921262eebde60fd490061910982f072dce12ca83dfb', 0, '2018-11-30 19:23:05'),
('394ae8b98a2ec4cbca417fa8fecaaccbeaa85f971a1360b4aebb033d1342b2920b0c607de787a804', 'fbf43c8e6722a36db174b59fbe31e28009cd8d4188feb6b67b5e3dd320ed3b285e9a9b0729a485aa', 0, '2018-12-14 04:29:18'),
('39c41c1c93873c0f069d356f81ed4b464e25c86ae3562f92a8d637e954e94ae6b93bea982f5d1031', 'f8069f17c9184ed86fa3381c7612ad09ca3446613752223cbac825fd77459cfe73310a72e7fcec6d', 0, '2018-05-21 23:47:25'),
('3b652aab919646d1ea860b631f955911e0999e58f9a26c7ba25fb3aabaa4df3e1dece26c3323d97e', 'fbb4f4b5c943d9e1b62ebcaef90c4ef716b0d851c420c9084d46a52a4bc2b317e8815c675448766f', 0, '2018-06-26 00:15:48'),
('3c5c3c5a36de076d1706bd1abfe3e537ad522022692352ba93b12e0fc52d3925bae7dd1eca2ef8b1', '25fc14369131f40c6a82ca87b15237c2195a2f0f3442ade31a0a5fa82d69e9a580e358fc92e5ae13', 0, '2018-07-06 13:25:06'),
('3d07a753aeaac9cab32137cb5d6de0acd462a88a14aae4c16e5353dff5fa9df87fdbd26ed0df4a32', '8661fb0f87c0027381ebac2de3fe1496e87e735f94122e89a3edaab85ca3ce4b189454c00dc6e141', 1, '2018-12-06 19:25:21'),
('3d1093228774dab9a2d379335c92c037c485ed74895dd6a3bb63ca8f280a21c5c8963bb168441b62', '127667b830ea913978adeb218c14a8345f150084d57e760b173852eceb1535c50062f5dc1f878ea4', 0, '2018-12-25 02:57:32'),
('3d626925aad033a7ef878d8f1c46789a83b1a54f7732a757a298105bd1f7dd5d52d86c5bc20a2318', 'abda0d35adf51053b64df6efd8782a1c8bcfe9901870618ede09a113fc4e19f3e59fc5c152f87d1a', 1, '2018-04-26 02:26:45'),
('3e46f2ca431f65cd3f6f65aaf9123c60c8ecda091eb5d1cf9bc62118caefb175a004b1847483df24', 'db50eace34b795b7ec68f33def95da9012e70a471cf465d5f6c627fb1004d6d6c6190d0c82baafef', 0, '2018-10-01 08:24:49'),
('3e5eeff96008383f4272d4b31c10305be77efae584ca07fb4611f0115d127b7ac4ff4a21309323b2', '2dc425c9219a4451b5d4703607e391fb01851254cfd58a876036b8cdb6741f0eff6f1c3a9165b943', 0, '2018-12-19 03:56:59'),
('407eab9ae55e4cb9305ee24b1da1b97115ceec62cca733bdfeb3f80937c113d68cdcd642a6a75e28', 'af78243d87d03f2012c2378302bd4b6eb7c813b4cf0f0752f2c1518be5de81db291022bc82a72c32', 0, '2018-12-14 12:09:21'),
('40f564bf855b36f594dec1a977b009f2dba400ca90bf6f1499dc5cb7207f0b00a33da3f182c68dcd', 'c692e51d5f982c2d3bf9b59b07ff8f69111eddb248eb76b0a32b3cbba421b742e8a20856e55f094e', 0, '2018-12-17 03:11:05'),
('4102c767a2df3fcab7944e4132dc64852d80ff48a7ab57a527803f5e04766296bdb949ca5f11749c', '80491e500ca49ebf8962d5a3c353795590cdc78375827809ba161eb4cd172213282ca557ffc02191', 0, '2018-11-27 11:30:44'),
('417c16b06d39ceaf658a0dbfa3839c59fdc82226c148f9de26197acef69fe3e744cc733e9484fa7a', '29cd2de175f4ac1a0858bba371944b1a5c363f5e775ce08201bcbe943ac1a329f2ce3ac839e372e3', 0, '2018-07-15 16:22:14'),
('41fa25968a0e3a6a3a116f1520096c747ec3562fa75168eee7fe0ff2619fdc798b254f477fa6134b', 'c2fb04ad1dea8d54fb10b61ae82b727db9235376f1bf502f75e3287204db3193594fdd4681383353', 0, '2018-06-21 06:28:23'),
('42a05d4aed15bf9d663c5eab0b5b6e4c574975bae833c9916d60b9411fe69946b866d5cdb86a9732', '6f592a4c7feac5c8eedf690cbb8b7e02a781d3b86e74085765df4eeaa6b23cba767f3cd30cf46fab', 0, '2018-05-23 21:52:55'),
('42ef4dbca96b5f9ce2aa55ec8255b65397f9dbef532e6c763d8bf4f11a497f1163133d955fc0e634', '5723404da7daec2c179d776ea0061d0c701f59d38746ab99f7bda9e91ccf2d50bc4fccad85518186', 0, '2018-05-21 15:34:53'),
('42f3d5141befd8daa4d268a1c038cab5ed8f463e31f5ca973531e8149a557a333544c1100340bc68', '9d58de51408751e4a63bc97f79508608e73b9c388e9141c19392c83c352f3c471923a1b8353aa701', 0, '2018-07-19 02:14:30'),
('439885c357e7888373036d5582710e0bd6d165be92f69977c924cb7d91cbcba0285e414a44b468c0', 'e78b5c91de50d40bab0b8802c6535abc349f2ba2089a3931eb201f2bbf66140fb252671d9ead3375', 0, '2018-12-14 09:37:22'),
('43d05b90a00d11816cb0ce70637e1bf40773a3d2f0cc5f1f8a3d13c9cd90756fef5f19729ca51dc8', 'a7f57db4b0dc310b65c6bec98fae1f74dde8d44410023396d86b5db30f1728247de4eee029585cbb', 0, '2018-10-22 17:09:59'),
('44afa3c9fcf4df58d74d9ab6acd00991535d9028b1b4199814d7fe903e82ed822367765a0075d86e', '3e49d1fd047b09f9247f91a7acd4f0cc7882c8c091fb11a98c36991101f525efc0be8d95f38a17f0', 1, '2018-09-20 05:34:59'),
('4528daa4fdeef4dfd9d61606a56f77600be80e1ef2efe7d443de8723b357b4cc821317e5b842e006', '5e8d258a726ed334354b52f69334ab00eec130cb34f0675634572e5f036320d915056d6dcb32e401', 0, '2018-12-11 03:18:06'),
('4560b752c429e9050d5e08ffc02147dbcf4fc56807d573d4a5654fb66ed7f28768f306d6acefcc0b', 'e39c98908e284ad47133e8d6abb6b99957746b3c83155bc9d2fd64313d32f4c5a836528d527474c3', 0, '2018-08-23 11:28:17'),
('460521f89c0cd60734820bf35f02099481ce89b84c5ca3fa142ceab108748f732f65f2897a77edf8', '81feac36cca38e3c3a1a410c7bbd6ac06326feee942a3ecc164ff248aaaa0a0297aafcc927578453', 1, '2018-10-27 18:58:55'),
('461fa00b65ae08a025231acd13a8b0fb2e4c16166b0a831210a33c6697e4c923871499e44e93ee5a', '5751e34c6daff24064ebb31d200f1cd99ecd5cfce57ab65d770197ea65d55af9965380384485eb01', 0, '2018-11-05 17:14:02'),
('466b827f298f67fc22843b7102ec93caa9c569fd9c65a5253b2ad0fe00ed70f10367d87abc08fb84', '848c66f42cbc1139e0a54bffdd8afe8a1867666df4dfdd356bf436553e69379e9348a4aaa3fee20a', 0, '2019-01-28 15:37:39'),
('46a0f3f58f13218bf2355bed3c2268dff21cea4c794f3800119052b998e0380803a957b5711fb650', 'ab26c4d3bda2f42369669d4ea250b61593d871bcbb79eb248958cc12c92a57314a39cfa822df30e5', 1, '2018-09-13 12:14:29'),
('481a0341a2f12272348961f36020856356e3d69e8d9dddf0651454f7bab147ba3703951be955dba0', '2b40f1e08915bcb684a1a575e63d3624e6a466f3043e1b35f0b8641ce4444037227cd51a46b5d621', 0, '2018-06-17 21:59:48'),
('482317133bb39c967d18219d0b4775e11f4191f87de87f2f0c23e5227253e9fefea1230c9080943f', 'd8551cf52063c3b19879cb9851468fe8b0aa6344c7e535c7b236a3d8b0abb0734afc943c69f795e6', 0, '2018-12-25 05:35:19'),
('48408f5a9302ca76cd38677167976967a4573396024b97151f89b51bf2bdce7d831f847d533dc17e', '8488b9943bbf9e156b32f39740eb6f6c4d69999fc988697fd7cdf0c678a452113a4528a5cdde80a6', 0, '2018-12-17 03:45:32'),
('48bbf5252c96e0a17d393b18310eba71fa9f1bd3178873553d0eade46f45addbabfec2425e30493b', '4ffade894b0bb92b6705c7e87762fa47d5e49f69d74bccd83a759d0eabd1a155ec13d1671a3fb074', 0, '2018-06-22 23:20:25'),
('48c85cf7167ff42bd6a6acaf21891182e96267c58879b818e4b3f7f214f267d2bdc8821879475841', '834101df93983e194a019ee33df01ef1faaadad2baa080b86bbfdd1891c8f0ac2a1d34cc8b6823a4', 0, '2018-12-24 15:16:35'),
('48fcfe286486bbc4aec134ab7dc8cb3d74fbc41994e80a299daa0df8ee6f44d9d21eb7297d07e6cb', 'ef18b9b1855fb0b515238ffa895f178bede4424771c6b24f786b0af1435aa45e8616539eb827631f', 0, '2018-05-28 21:35:13'),
('49be722a1d3915e767f855838e3612c47518327fa8c6af3e9a5abfc6fafdb345ede9f57f52ea2df1', 'd544f69e285c4b1a07f20497a3d5fb9cb4c784104cc2e178df7679e23211a6640a3e25485ec17d9a', 0, '2018-05-21 00:21:21'),
('49be7fb1be126ae1c59f6f9d61b06d1435b0b6d31f08aef8b433d3082cec4d4d550c56f0c83b5c30', '820a1c63b3db7753dba6eb1d45db8f3e731a18a5cac2867dcd201e94d437e465e5c627cdd036931f', 0, '2018-11-18 02:35:43'),
('4abf3424cfdc59e7b2e6f480731961dfbac9f914b6eaf6dcb5c8627c3f528026882089cfccb33fe0', '9d917d395ae90829827e9ccfc676d573c8f64fc9069b4d60a4bd755b7632a61c2786a993e8ea7efd', 1, '2018-12-08 16:23:30'),
('4ae6b07ad6fb3bf5dab863ff6ce2d5e12f22b4aa8dd2b21b6d3d62b2f03a262099a6c33b478fb90f', 'c0ee2585595562f324b8862ae9cf9f5a0d36e2ec3ebd872aab0cc873a22d3ae8654aa5bd399a3b47', 0, '2018-06-06 10:31:55'),
('4c9b45ce4ea223d76ef69248a8d6327a041f4df660f19d3b6aaf051f0bda0e19478cfa96c6f7c616', '3b76a4ecedfea42a07c5130c3c45791487d9e0075b2332c7656a0196d4a30f7de397e17c0e71002d', 1, '2018-11-05 17:13:51'),
('4ca7d9e76b6a1e4d3a4cd0c6422e7d536fb2ad5ab021a03d1464acdd9095f812ecdeb31177171c56', '238e71fc2b4603f914a6f44a92c6e3b47433cf71dc137aade5cea06de9b4e17e131aa2fb2811aeea', 1, '2018-07-09 19:35:52'),
('4cd9cece5e81f57fd4fc4a7f2ddebac08622ca1db31f40a0cb49eedb15e1323b6a1055f0f77d42f6', '012b03e3c8c6b4929c8c3aaea7546850fa4ba4f837d0149b6e971dbb44750d62193cb27afa43e632', 0, '2018-12-15 21:14:55'),
('4d056a8e340fc6cd41e6c35466d454a64b8df38ad1365d6fa7e7ae03bb0fb188ef4595eabaca2662', 'bd2324add6f27a15279747a4f7c05f313a54ece6de2f9ef99598c429d24c9804041e15890f28d582', 1, '2018-12-08 16:21:58'),
('4f21c3c2e578ab6f5d96ae2733fc42cfb805a6b3e7ca514cb0d2f33776a4f3678bdbdb52cc0cebe1', '8fe151d0fbb3885d8d08b1523f6667c6d69435aad168708562541298caac90e2fb9ba95fe62ef314', 0, '2018-06-27 02:22:16'),
('4f95155b9ce03e409229ca3ccfc3b055f48931efb923b99b52d0b26452192e2826aa5b5ad9d11b2b', '6a32457d3664e6f3941c23664a228db977b184060b9c9b3c93554609c20b29ec78cc31e7884c79b4', 0, '2018-12-13 19:51:26'),
('502aa85653c14580c22188719582edbda6103c94f91541e460f99bedc49e770d4f963af9d96f3ee6', '8a3fa854cd436160f08961bb279d40260842899b62fce079c9da1ab677bb02507ec80863b4c4144e', 0, '2018-06-09 19:19:58'),
('503c20dda1d3b2365f01425b51c9c3528d8fad267e69f5a50f550fa18b68356ba18bf3e7797e5928', '83f8c772da1bb32795bfbb88f31a69ba6920b03b48308e6e8b6ab5043ad05c2fead55c7e229fd605', 0, '2018-06-05 21:47:04'),
('505634ff4bcdf6c0292f12cac04c1c246f026deed34f869ccbe5a5b965a94f69d5b5d1cd7049e888', '66dcbf41151b11e2ff65a7cd719927bee155d2d419db31c9ad63fa44e8f9f1ba63360de4083b6932', 0, '2019-01-27 03:03:11'),
('5261954cdacb87e7a717c7aff856ba685c0cd09bfee0ced28bfc54ad692a6d69394a47ec5aa2fc08', 'f6cd2c54c0e29f50d4645ae987f7e360cff8d47ce994fffbd59bc8f1f455e6cb0fbab7ccf6a05ebb', 0, '2018-06-06 20:40:32'),
('527704596de218fbf20ae1499e44ebda1951d67ebd398a4032df18aef9d5f4ac89e1c809df29cc2c', '3741c46cc0c8ffec2cce3fc97870b982eace9cdf778d41b7224d271008f1aec11cd799ba7c3b9baa', 0, '2018-12-14 12:08:10'),
('531f4793531c63c939b0118eff1d590088daf4e80611344b1456f8e3a82e5201c6e9b2854001aa0b', '4c4f69d27f31ece93a03992a5dc83f1762de9ea99ec4b7b7d8ee3537396fb8d235f30c1f7062a495', 0, '2018-08-13 19:25:47'),
('532e369fed4b107bff1e062238196bce6b3450ac2bd2a80faf491573b60a5526a5899ed1deab78c1', '30431629cad6dc31c7a136eaeda6e3ba993d865fb25f2ad0cc3653a1bab94e2969ec3feadb7eedb7', 1, '2018-12-08 16:23:35'),
('558eeae5d26734a0e870476234754c5a5574294ce51f622b40ce8240851d58457aa70823ef6d7a3d', '4861b3d3f8307637a1191736bcb3b55aa2feebc598335bc16afe0e6a92753c903f53837b577099c0', 0, '2018-05-31 15:11:23'),
('55c509b28d2e26a7bcd5d9d281bf1f567d14633d414a1952e1b6a988e62153cc557d65ae30132c0a', '0bcabde3352dd6816058b80fe886ebe66ee81b5784674d1c3180f4e34e605972ec50198d98f1b7cd', 1, '2018-06-21 07:54:29'),
('57c0125486dc8474dab6f1e3a4d1cbd1eb3b567e23f7afa4c4db98b6d5231fe47c04a7e8581d59a2', 'a9ae89085d902862509705665c2ecf42b281ed35cda09ecf868835bcf290e19a4682fa717bfb2e98', 0, '2018-06-17 22:28:15'),
('580e28955119fdfd31bcce3274b0501eb00403140f0c71df64df1843d60022bf18c0227fca70c3fe', '5622fd14ba8cb7c9b58bc395af68f30a4c26f0c19a426c11d4da07871c6a8382e985c4cbc0a9a8ec', 0, '2018-12-12 21:52:29'),
('5c468ffaee0796a2648616676c9aa050ac4aef4cf7f841ce1545e77ab65826d595cb8ed35dbb26ff', '84974cf6341022eba4162eebb545c050b647403758b2ecf55e1bb3db03af65b8e48745162c84812e', 0, '2018-06-05 21:51:12'),
('5c7befa305f7f1c0970c89724ddbca6a0e764ab9bab658ec3918f3b4143882762ac3ebd554627228', '5bc20cc20a98490fd1ac979fbd322667287f8c7b95c33e1839ae898d938dc7ecdde21a2b4c5111dd', 1, '2018-12-08 16:22:14'),
('5db4d98323264888336f6e8fb71eec341f8077d7a16fb625d7f8b359cdfc987631ed6779ad1aa06c', 'eff8ffb6fdf11347e79efaeebe0f21d9fef6f980439dca5b79d5761b4cb43215dd9ac88e5f67aecc', 0, '2018-07-18 13:41:04'),
('5dbbfdb80300a8bcf5fa6aeba7ca5222446fdfa69b602ed4b38c288717de324236837dcb8873826c', 'c66e0cd0bb4a78058b46868f2a25d0768eab9b05f04bb494fdcf0c17fc59de38d36ffc1bdf58dcd7', 0, '2018-04-29 00:19:50'),
('5e08bbea7ca8bd6ba06949c68933c2f3bd892bc1e8f0398c0d6fc9976fe58273eb11f1e1791d310c', '028581c1d44e6e4a18eaeef92e333535fc6460e1b65e68d9c15ed8ea61367d14b4841c9c87651bd8', 0, '2018-11-05 17:22:55'),
('5e6ea78c481ef000713b7c253e1a459103a4e2eaa1db499772d6fd427cd1dda5b44910379a431ad5', 'abaf3447549a3779c02f042c1fb660c8998048eb9f827fe90c45307c55f2711a01efe535ec8f2a7e', 0, '2018-12-18 05:57:05'),
('5e929bba2866891768604478f496ed0d79cb607c941299f8fa16a20cb2849e961650a552dbab8d48', '014c13251e2786da0b7c8b0322adb6ab9ac9468d3827ae460bb12d88fda1f9ab34ba525bd9e51b0a', 0, '2018-07-29 17:18:32'),
('5f0b4445931a3788fc1a796276e02aa552abbf7d3c3092dcd00a37b0c2717162afe0fcb06552d890', '2befdd7b09378f48a28168ec07a902178b86d91d1f3eec40dc686c08143ca0ffb580478fccdf9aad', 0, '2018-07-08 16:11:51'),
('5f4b85bba658cd50db1311477caf9e0e336d95ac87c7969ca7912a92e5988149e628c5364d765760', '979f485f14b91d713f0138ab06753e70ce0d2551f2170c4151cc16c46cd5736e9bbbffbd3ead1793', 1, '2018-12-08 16:23:27'),
('5f638627ffbe7a36ef28991b2ae25067b82200f671d2c6014b8eb668bee93c3ff5c9190327073e00', '450789754650e3755108b6e20215b3436a3e24ce205ceca30737a635ec83cdb668d87a2326346f0e', 0, '2018-05-23 21:50:47'),
('5fa531989e9d87cc08a0bcbc8e1e5e29a9448dfb8a0c1dfd628dbc672ff3b9c032cee08187e542e1', '8d1095f88f10879cb35e478127c5e18e7966e1e25d637b1509f8907c457b1f264b2b38d3b240775b', 1, '2018-12-08 16:23:58'),
('60d3ca48e607868d40f7c6a5a2c36db739b38839f21f07dcd491d767f4f3144bc49a100554482d73', '9384c898e967745ebd687b97e0edd9acc5c383d16910d49b4ee32f7d47a84049d1329acb3d5c99fc', 0, '2018-05-25 15:27:54'),
('619d88f8b090015f0de02a69102b5232cfa8867770169a17d5c0e38409625880af7ec77f1daf8852', '3240108f2850b8e37073e8890e79eca03a50ae290321d8c865c57d31965a3b8b1a014ccac092a056', 0, '2018-05-29 10:19:09'),
('61e6191ba0b703e981e7cd85eb946dfd356f88af527229126eca63f33f51f6dcf4520729d863f08e', 'c4c0f4b5242c714a1be49ec575d9de7efcc629e87281fe84eeca8bbd9970646afbfe7cc216bcd900', 0, '2018-09-13 12:38:25'),
('61e81db58a71c58f0812cc0a6279604a428e6ce7ee03b823bf93cfd7541de2e58b45d378dda614cb', 'db4486db817fceb1e804367b0bae1501e2924babc6c827111491fc3db6e67c3d49b135f164c1a634', 0, '2018-06-04 10:23:17'),
('6391d19b968572d0dd68c39f157a85990f49b67dd8981f22bdd471523d08c05909cde028913c8129', '85e84326943b330c52c9bc358078099427a8838491e548bae033bfb50527609e0b105d67903ac01b', 0, '2018-11-13 18:32:41'),
('63f2ab776f739a6120801568a49bb39a7563d32119aeb9d413d114113ddda87e49c1bebbeb7ddae7', '6b6c17e85b46b125cefedcf2fa54f419ba6374f74c50990c48049a196c071a711e48a8fb4bb1d3b9', 0, '2018-08-29 00:17:54'),
('63fd0d24014e039ea47f274ed0bda6e4b712e053e3cd04413c0f026e39e4ad68603803e61bb35a59', 'c2fa262005aac828d10f6633c436fe5308340b5d636d1a09881b068b5a08a9459762a9da3f57e592', 0, '2018-06-06 05:00:10'),
('642cf3aa1c9727f1f4bb5641a0d2b9007272cefe7de574cd204790b830cb465fe2f8217109f21c02', '55b810fab46153470edc069028be751a4489d71c3a9323a39855a18e942f718fc227c2d4f40be435', 0, '2018-09-26 19:57:50'),
('66159a9c6bdac6509523c82aa94c3a616306dc5586cd4b1f3c9ad50ce1d8488b33bee6fd79df382c', 'b5766b16242bb68e6f77cc1bd19948cc9a2bd1838a5499c708a457afbe491b224421181270756bbc', 0, '2018-05-04 05:55:34'),
('67304f2489d6ced6028cb3bc70ede1e8d2f44007d3e5000b9bc67b43788f3be35cca116a68e13a08', '84462bfe07dfea6137507dacf125377bb3beb173171077b81dc8b6aeefa822f74173f79c9a87dd78', 0, '2018-10-28 14:50:44'),
('68b851872d519e8d0bae5798f59d0802e845edcc1d26b0ec400000b6cdf7dc9863f95eeebab7c57b', '66da014205c6b7bc4ddfe506e18eccd501d8ecca4e5a7899f4a45686ceb17a252325437f8949e452', 0, '2018-06-22 13:32:40'),
('68c386ed5af6cd58ab2493f0123cfa2de8e61e77b5642723cf739af4d95aa15470c14d3ae01d1a4b', '1c10c47a3397753caeaeeb5402695d1b9766146a44710709c6f857a131dc68017365314fd42b55ad', 0, '2018-10-01 13:53:50'),
('697294fe9fdd0d99776bf4d04516fdfd8cbd51e9b15e1b865847775c8be9e3ed81849456bd52a920', 'a9554c9ca2d57c931e996a784c4b89843fda99e98a4debd802a4f4251feecc2c5a1ad13bafed9e49', 0, '2018-10-22 12:35:13'),
('6bbe9183583b003d2e75de03eba6456767cafa6ea457d97f2dcdd34160a7c42f1ea90ede4ba4f037', 'd891c29beb1bcd7214131e4ffb4de9aec1a47af6951b24466455e5ef5d39f830c8ad4e3f072f50fb', 0, '2018-12-16 22:17:58'),
('6c1ce96325548712b98c197d8c88a8eb49d8493157d4246a8c47341d2926c86a716003f5ba45a10c', 'a887d00b6544437f4481e539aee9accee26df8ecaf83697e3a471d94533ccd22ccb5f9b22aa22327', 0, '2018-06-22 07:36:15'),
('6d00698df8c44e1b7ee26f6fa54b8ccc9d7bbf7503abe8104da651616713163576201d925b8580c2', '2f20675f225926143cbd40644c3def7db301d16e9cf4fe30eefca17e752ad71cde014462e20d341b', 1, '2018-11-05 17:13:50'),
('6dead94c52a4ca62549de78c0c1aa33cf0a85fadbf961d5a0a6cda30f46e990fcbf941da24c12c45', '4fe5d0ac6cc9ac1c8260d438c51799cb48c7ac3eaf476427c2b068906f40c5df259169519a2e6d25', 0, '2018-12-09 00:47:00'),
('6ea5b3bc36f71aea5f10fd25a176a1c70d693a5c9a7addf3293db66e17759f6928b84b6beeac5e1a', 'c8ff02a4e6d25106fc683bee3fad90203d23e3f64cf68e1d0d48a09674ce43e8636f84934b711845', 1, '2018-12-04 09:48:40'),
('6ec26322f77cb5fd759cd8b6716c022cb39ad7e59e8afa07ecff97f84c4ff876dca25da607a748d5', '28c77e9a32a531dffe345d664b74391564e3e641bf4bfe201737dfa8f3e1324d7b18a1247042379b', 0, '2018-12-16 22:01:45'),
('6f84bf8ba607d1cde6bf7b0186b63c5eb70e53efda042316c4da4a2e4b0d8e2e1c554192b28ac476', '3c5fd6b183a93eaf88cf74f5fe65ba04f02793de8ec1f7e412d0eef5f74ac9a5d31d6a8679c77b10', 0, '2018-12-18 13:45:10'),
('70b98291e6afd2f36d947e8d028816b35910d854b371f52cd815c6dde1a2b0b5c204d1a27fbe32c8', '7d4e1f2e6901f0ee07e93e6b76b557598afbb1543ed935cd36fa5efb06c2cdbbd7e2d331d36935bb', 0, '2018-06-18 23:42:47'),
('7185ed0480a146297dfca78e0158b8e8217f7f84100980381a25de50d20198f7c0ba6f49e0c8b157', '4997e7f96492eca5e0a3777548fcaa2e47a4e7a87a9f51667b6b92fd51fc7a4e7728e8a96db69d64', 0, '2018-07-12 16:19:57'),
('7211426e77d03edc3545c4d256126283c957f62bed5186cd8335884af522afb76187c9b88ea91f04', '8e1984fcecc562956471e5d180a066bb47573d97fcd3144a02b626b7753c0874690009c84c8281b9', 0, '2018-05-28 19:50:43'),
('723a6a652e11089f53a2e551ea650b6969300b4cb83825c796a3da079470e45a87857c9f755dc7ae', 'df0ffa31839ba35e93e0aabb580c48a72aed0cc6a5a87f4b6c0372c32173b2309918d356d502f913', 0, '2018-07-16 21:46:09'),
('72bdab99a72d33376358112988d532a967aeccc08b031be041f12b3e5be4e9e186e2903e80adb1cc', 'bc938b5fe5e33a636ed6f8d1f97a153ba0e3804957c6391615cb76270366dcb8fbf87fdbe83e72d6', 0, '2018-12-16 22:05:24'),
('73d04f1e54200b6eb78ab1442d90b2c27f0dc2b6c7f6666e623e090a2f727857a4850c4906ed3bf3', 'e3fa0ef0da12ea03f8519e856fabd3f4dea76a32b9ad60effcda7167bbfd4fc9ef63edb3da59b93b', 1, '2018-06-21 07:55:04'),
('742d2d9bb6ca738b79218d257a714e7acde218abd059008251ed145f6904e2f37efbd2103fa87513', 'adce3bec1ef9a3ec78038540f9b567f1ba2ba1cff9b4f8ce616e60b843dae258a4fbce76aa8b7ab1', 0, '2018-12-16 21:02:28'),
('74354c70554bb5d1f65e91c641ee18d8c24ef39c056a55edd3452a974615ca9d1046b30cc0608155', '483f770996a62045ae5f1114bd1e0e2359fbc0c878f487be788c5f99e8ff905a4c64d4c95ba9268b', 0, '2018-08-19 15:51:39'),
('74fcd2c83dc5609a576355397db4134f3da1e96b1007c66a516ebc25c6c5121646e976881cf947bf', '520d4bf066c4de94750e0f1b8d75be2abb3d7c142c34a57a15546ac6a619003783f375e4d31a00dc', 1, '2018-11-27 11:30:41'),
('75187d0b2ffc5bb4ac02b58c090587bfb9dfaa145a81cebf80bc314bdb77dbb07a3b4e1f5ae3b699', '4062ec5cf8ddbb541652c97caec2a1a40cf757f33f6e0d0cbab5b4b7df493d6e06f9ac6d519651e0', 0, '2018-12-17 13:39:12'),
('7636d19a46420f8583e9cfb448a2fa746a294217fe4a07f5d7e40e4e9e4c5a30eaf39c6424152b29', '67d37a7b2b2fd32857b693f0fde5c202249ca992ec8dc668e01403b2be7e8b6f512a6af406aaa233', 0, '2018-12-14 03:07:27'),
('765e6ad5c5c2a1deab3b2502b2e396cbcf25151e62a9174d871f3ae95acd3bea8239365387b0857a', '518dc6d14869e8686085fe371c76adf17a25a83699f2c756fc0598b6854a6c46f0b812beb1590ed1', 0, '2018-12-22 07:32:27'),
('766d8a0c7e6e0561ff857c8d82ff2bcfe9711e4af2158625e526cfd4c3c2e877155798b0e61eba46', '9cff16ea4447be3ba128a8a2fd317a3a4bc61bcc6f6ddf02c0ebc779ea77f2dd7df2e81a216fc851', 0, '2018-12-08 16:17:52'),
('769213509b20630b4888fbff791867ffbf6e97824a6a6b93be40dbf744b5755f01a7fb8c5d74848e', 'f6e2cd7ff2e4bbb76d62a9dc96b34bac1bdd6bcd6488e20473f78e3c7621e7c730f1776612d13993', 1, '2018-07-13 03:56:14'),
('7859a020125a48f9402c6c7863febabeea8aabe1a6b96571eec46a9d1c4c2667a7aaecbd4e0c1b3c', '3b0f431906a5b2d7e26da088b8b16541b9bdc6924bc5eb9bdaef8f6d49baa33494bfd9c96b8c211a', 1, '2018-12-08 16:22:12'),
('793778304bc4a49d2e89864488fa0d93c42a3a6f2c18777f595b43c1b2d4890e75b17c8b4409ef41', 'ac82d445a714802233fc96e51281e25ffc43a45acaa04951f567635c1817ec8d3916d35441ed9f31', 0, '2018-06-20 23:17:39'),
('795723171ad6acd74abd444123f1c465b45e22a0f7c82a1874e78f4be92dce62181902bf8544dd7a', '4eaa85a9a5bf2bdbeca23ad41e7001740322978ebebf496e876264275c42bc0609838f528faeef4d', 0, '2018-12-17 03:17:23'),
('79ae86dda3fad36812d91a2b0e0cf17cf20e7f0bf562f6d626723fb6c9121934d049ac7ed1521c4f', '85006188eb0c88fab47397ee9d3473dcd22a3d2e58e74cd8eaca0c6520ea056235b787bc88f948ef', 0, '2018-09-09 00:17:37'),
('7c4d39d81116f664884d69865ba8607d5d35516e24a70afc00b5094fda380e395b5f5ef188803ad3', '8d7b8fc93f956cbe2acbdcc2e7ebfd7f3e7536b28f8e0d09d6a22c0d823617309742c33fa5a54f7b', 0, '2018-10-30 23:22:44'),
('7c8c2d43b079553577a659b8607d54eca96c36055b823cb6d5618a9505fb21717a0bafd6d9f71215', 'be950be03821306edb3ce79926c160e2328a7e4ac138c0d49197a36d99b5834e736b09d04f6412ac', 0, '2018-05-31 15:14:36'),
('7d170fb8a23d4bdefe7a351d5bbe10ef2bca22f426e6f5f0e60c4658c629a016f31613fcfa3a4b72', '10296a832ec2fd007b670d516983363efc61bb329c59d893db3bf6f13c8e586c2d33a48c1ffe3e00', 0, '2018-06-04 09:01:20'),
('7f1ae9d6bb3673ac73614238ee39b1f508553fc74c5eb980f2ac355a82e7cf35e28d12fdfbfb0527', 'f569338bc4e89e37e9424d3ae84c621d11455d9b90230657df27641ebb7d33318ece1ae9752bd1f1', 0, '2018-06-23 00:04:53'),
('7f33128ea7c574bb4082e8714d5f13e14cfe3dd4f1c4ed7c4d89cdcd97619c530aa4508d7dfa8a02', '9eb63e67b9d3401af1be0fb155ec6c43e3764016af03e6b2c11a88f5ab92a433a25c1b07d837cc21', 1, '2018-12-08 16:22:44'),
('7f3b0c10943ea29c3786563833c328427afa2385c2450b15b5abd3111eae4da100280afe970519bf', 'c9eb53a64bd4e4d99e9aa069fa34967f3ca081a23b66dc4d634c00f1b9939423e1fbf6eaeafe25f3', 0, '2018-12-16 19:17:39'),
('7f97298cb6301430f2ce136b7d128ee59e8f2556c946fb1e031f1421dbfba2a170b44968488d988b', '804d8199e229b6fc19e229c85b3421e404597fe14289bf868bb9e4a315add4af1f24d06235bab597', 0, '2018-06-05 07:44:19'),
('7fba3d137cd6355e8c3acdd657ee6d6ca240801c89781e66fae408cf36ebbe50541d5c041858475c', '01a87918cfec3ac8cd852800f2d9384593f140edc379905edba110c171afbd7d3a7f2b04838b1388', 1, '2018-05-20 02:30:56'),
('80f2dc44785006b0de3f102778533c73fb163588dafa6bb9e55fd1a574eeb262dd5fff7846d1d0f6', '877bc49833c64cf0aedf1207f0e5f3f9fffd842534e3cc7293283c5981440f398e17cdb79482f87e', 1, '2018-12-08 16:23:43'),
('80f7e2acb6235928e35c63e3e18596554c98b63680e328d537d9b08e031a81ef6991985942972dae', 'cd0209e859a6c400a226ddc126259f4e355bdb1efcf038e8bfcd1e1ac501cda44290382ba46f6230', 1, '2018-12-08 16:23:02'),
('8301f9ce6192bf227357efbc6d28239a3d6a9201fb394e1ae722cdb1af4dd05a3dceb6eb3596da0f', '35fd84b0ef1051212f242458b39c91a0fce8864223a7aa04a7871a4964f0007722ca065627deee67', 0, '2018-07-09 15:08:00'),
('83990cd00fba2cdf397a31f987ff4aa4164f175b19970e58321cacf7e2790441f258bbbfd69097f6', 'a86106768a98ec1e064077019b7bb69db055f9545db4798722ee8a3a60b4da054a53949844a731c2', 0, '2018-12-14 13:46:11'),
('83b5845f40d7170b6bdbdab7e5aed3e9025ffdf5e4c3e32b6870b6535296a0bee4060691b8dbb805', '0bf1e907afc952625ebdb820287aa4abbf4f830dcd26d7e517aac3c0890e2097f70c78132e88e9da', 0, '2018-04-25 16:01:14'),
('83c892bf803a43eb18a2c2d1cb094f680ae5c9567fee5f82a47c5f67d27f3cfe390d3913c4f9c562', 'ebc78995d58374b4118323b313198566774550d0dbeae4481751ab35f22b7f625e6d303984ef4565', 0, '2018-06-21 08:37:27'),
('8564230a372bf3968220678ebf43ecc9a50a675561ec7796fc9a363f2c80ba76b7a69b245d83bbcf', 'a691090374e934fecc40f752912fb34ee622f80b3b8754f98bea740bf8cc7b087869670333bc0177', 0, '2018-06-06 13:05:15'),
('856fca4366f60e1f665a02ef8a3a61261f0c4dc9a79195a70725b2bb3c6a97dd13ce1f73913c5350', '9a0543de82eb830a1c6dcb600751e112a5c0596729df9b857e5f0d50f5148ccc81f8595e3a5b070e', 0, '2018-12-13 20:25:48'),
('859794114c0877abc3f8e5ac556454d88ef99cc7cbf9b8f6e3e06188d2ab1ecdc3e118c014efb63b', '839bf36da16651ad3d446a27fe06c8d31cdd88f59a6c6f2d969cde87ab56ebac9b4feea136ee68b8', 0, '2018-05-24 23:08:51'),
('85fb6f700979d3d9c4ebbd50d4e5403a580ae4eeefc5249c9ff5500b87644e4e7e266efcf3ceae0a', '616af89a6e0b1323247a4c5bcc57f4ef71c9b950669a7c2928fcbed4ab30b640e5e9df0faf154133', 0, '2018-07-08 16:06:26'),
('865c794419a532dee00aeeccdcf3c54467793c9ee9ec034bf2fcaf56f6bbf91108154b692d811baf', '1b77f8f8ef2fcb88a2410ba959a448f0209295941686e2b43b3a328dc9ef888c8bba899f73fd8ffe', 0, '2018-06-04 23:17:41'),
('87493f477fb6b96624804e12aa9fbdcf201dcd4eb6427dfec37555be6ac52d6f4ec92ddc7010183c', '13f685014281c77483a5a367c3314648431ef3b31b020bd6cc4d0e1d826e9cb0840edd3be013d500', 0, '2018-12-15 00:21:41'),
('8765b38f2ed5b0c634aaa5a29ec526f579eff4b43aa761030f47518cf90a61681d6f48a9ae5993e0', '550bbe9bb0ccd33c54a3f0d5780d36603afecf17d0cd66a0a317767034e5fbce59daa4d10f4d4981', 0, '2018-10-01 14:07:33'),
('88a0647c3e67626392b0815e14a2213f6f057d4986b0716e9067151476aaeab11a2a09089d3305c9', 'ba98df9aacdd87725ffc46c974b1f878353beb18dab7b4cbe774bcfde33c74bfae865ec73f3d627c', 1, '2018-12-06 08:14:56'),
('88fb389eeb5b5dd53e867b62d9062467d2a446baa3461736bc753dc2675fa56defecb1760edaf908', '4e4bb6d57d91131426c0ca509c1a3331765321ccff490f99c729949fb700a57bf5c2790a41b286a3', 0, '2018-06-06 16:44:54'),
('8a6d1e2655b9f4b908c056112089a1a98b5bf3644fbaa8fa2d7678844ec6f5449733badde7568f57', '978d1a2bc70cb61de7d26b63076f83a88cc91d17613a3dc9748e7567800b72444275a6a00206a08a', 1, '2018-11-05 17:13:55'),
('8b6864ffabc5d305fd610dff39546063379569187c0f64c29e8a3734d54be937eeece477c2bf1493', 'da83f44a098e03a86a537b4eb7615d516e819cd613fc7f3b23261346a7ad7f0ab758b6ff7c3c6c1a', 0, '2018-06-19 19:58:59'),
('8b71bf0d095ff09adf233ff470272e4a3d75be6d437e022dd3e84e965441df2f4581d740fbd758d4', 'af9ab8883b65d7ac24fd6b292b62d7d871211d8e52fb101645a3173948e4ab19943b66e77008fed4', 0, '2018-06-01 16:28:48'),
('8bce717f33969486b6b7980ee19ef91594d5906524d4df98abe7cdfcca6d656184c7c8075287bdaa', '94832bc825cb9e2ce61a3dd38a3ebbc69372a47f2b8eed16de8b682d02bffe82e235402ea9b52276', 0, '2018-12-18 19:09:26'),
('8bdeedcbc0152c7a0a00828286401df18418c8504b7a94783da2ae0b4c5725aab708bc0c4599dc30', '4892eb821f003a921ee4275f97924d7fd232148915d131fbe4d91cd3daf381e17dd57e6405d9df03', 0, '2018-12-18 21:53:25'),
('8cc7ae209f360a809ac20b12cc5264bc3c4f47ba03f34245fe0338385a17e0ebefefa46db6c7ed9b', 'd6b3bf23311689b04608d697cda67f79791ca3e2ff134b943a89f8274a0f3ca253828e73b8003c1d', 0, '2018-05-24 15:19:12'),
('8db450efb629ec405887893e3f22a4c4206aff45eabd95a2c43d9265c75487cd983cc3ae258c2ee9', '1e7165684442b0ae1e577f4c99d8090a72f58e2ad29af2c76e0efb8429d338a3c47ba0b37ba4971e', 0, '2018-06-20 10:29:25'),
('8f1461ae8571a62df19cac445b59f40e5bdc39d4457f5eb33d8fa94a8e55290f451e0b7a76d7208c', '8d18bdd68a3cea75f711ccaca542f1f54580103484575b2bf549d3b73ea4193d2fe5d5cd52b6da35', 0, '2018-12-21 01:58:37'),
('8f5acadabd1d44e6d3a7185a63afb72260e5f76bb2adece69896cd5c042f8227d7993483d9209fbd', '2428d4889420df93c2009f6f935aa548aac9510a24ef19655de05c357c4047faed9485deadaf39f9', 0, '2018-06-27 04:41:51'),
('907a32c85313887d7097d600829e3341e94d12f55c92fba8739272d920165073915a18c28a8f42b2', '360461b7cd5e81734e0dccf58c5caea7f6bdaa48f3e9495c61209bca5d07107e7bbba038a12e9fdf', 0, '2018-07-10 18:08:43'),
('91120b035019c78d036193d930bc8a895750e9c8041ef368e0a85b96d13c51c3ed058db9adbc3ea9', 'b822962e0e1f6a6d577fd6f12dcf47659a07c24d2748bc4df4a4e1862ebd5ce25f0e8902ca59be71', 0, '2018-04-25 15:05:06'),
('912e5d7c665845830d61980403b8efe20be4ff3a1701eb76d8b40a848be0549a8e27c7c05a2f6947', 'e742242527dc16ce3d6bcc3688686642d99f4629afc73bb5a8d3b8d36080b441926f602865fb8858', 1, '2018-12-22 07:42:29'),
('92d4c78339f06cc110554dcc3e87fac22efeba4efa4a7c8c27c8df1c34d7060293d205526bba303f', '20f75191ec2b120f601d1658c3f408da16d9623d25cbc0ccde6c5698670ab24625e0ab5a3ca1feac', 0, '2018-09-13 12:32:32'),
('93498c0016fbc4f0d3b8d30b3c0462356afdcff18ae9f995891c8d2c82ce3388cf8300808f8815a7', 'd8b10a54eca300a2e70c7d125502e44269681463df86926e3800ff48465ed0bb225460e678f215f2', 0, '2018-07-08 17:10:19'),
('943475aa4e30ed18ff9f1ac301110388b286bf26886d47e917cf48daf03ffa5bcfcc1b5f5dcdcf23', '6fdd1c9c6bd6c520bd9e61cbee4890251252dc33700ac3afb0428fbf7d234ab4fcf4627cd7079ef7', 0, '2018-07-02 20:34:19'),
('945734643bd2cc39db2f4b97b408f306d02b183ce008ae50ee017142ff270d9305935172fc140078', 'bbf5afc9a907ed05ee43d1813df4c24b8c40f2159429f6c732bdb7bb0081e3acdef0d08e1b22de15', 0, '2018-12-03 13:11:38'),
('949c558bcf1ef36a81fd9930ab2ac2c521ec6e8183e120a7a1ae03930116bfd208118e4ac8ec0c0e', 'e4a942e97e2f5b182df67c5d33126969730f6d467f5025f2d405967c7a7b1068658fac1af0b74f42', 0, '2018-05-31 16:57:17'),
('94aea0d5c6818b7c09b5a2d5a243ae09906e492bd3c09c02f7bd90ab571156f44c3315c6659b4118', 'a87abcec2cf085f39d09fee9a6fc7149751de1e506e9049feaad368a604be0fa718067f359086548', 1, '2018-05-25 00:21:19'),
('94bcbd474a772d96a959b444e578be4bf06f412a205ad81a5e68dc597f7d4f0e14f0541ba7f1e350', '4acd68a77c01854eb5ecd5297dfbc7a8c4f2ee86f8bc151dba6ec07100b6bf1a3ee59b59150d52ba', 0, '2018-07-08 13:21:12'),
('953b7de67c82e9acbfdd3e70d7ac3908140e5e6f9e3362e352f04e85c4d8add43b8195ab0fb0ea75', '9bd9a21d385782be5165affa1534db7ac15535cd217ae12f708be61d04e365c5a98b406b1ff66fbe', 1, '2018-06-23 18:24:59'),
('95837e68d3625527a28231eceed4dbe546fe27a12c32c4a25e83be537021b1ec51cb2e62ee7ac16b', '55cbe2ccf22b8977d3a92e68762372aafa93db735ca39fbad149861bd84fae0b5a267c9be791cde1', 0, '2018-12-16 21:12:33'),
('963d008a8734d68744523713c8286863ce8635c99ee9f3860c838d5495554fd63255bb25f53e823b', '5d5bdcc084089755d04ee118609a7a406de0c16a0886afb35402a0389593bd80b45032a6f44b8eba', 0, '2018-12-14 23:14:29'),
('964dede4d019d595cc518c0e02ea23ff28b9b3dae985cc07a97b745c8e0b3de29465ab4006086f9c', '42fce860a48fc7eec0ec300559c806071f6b253fda8ae1e389d799a5438e2a60c0c7166934d97c9e', 0, '2018-06-25 18:43:32'),
('9786a3e6d6c113a1d92b02ddd76bdef56f4cd65408654e56c6a0099f396822c388e2a6734492242f', '1d74acefd41b4a68fa2a73b67a97f8fa727c77628bd933380ea63a0000b3ab4a85bda6ff0349ef4f', 0, '2018-05-20 07:19:56'),
('984f5d9ef77341995205fc0c334dcc7e9062806b272c54e32db63e1244228f0653935e1054b30ab6', 'bb1d69dc68d8a230d6c3549343c6043d5a9d293e35a33769aaf6f67a5585c4b435feb4e48eb26d89', 0, '2018-12-03 23:10:25'),
('9887431972cd81a0e6db30c156c806c90beba0baacc2f86e51c8a5a0725beefb516d0e18117b0eae', '2ae7e807e2f003b3c18b4544a16dce3a600e5f2f210843fee59e4f98ced738d991e6ab2c02b030d4', 0, '2018-10-01 14:25:05'),
('99d1d7b18b81a690032f46e6cec5c8a95f59205fa447c01108380243dfadd9fe0de472ee00ce6ee4', '7a815d0054283fd551294106e4fc13b93779dd3560607292353088ab76d60eb53fed7ab49479a905', 0, '2018-12-06 08:14:55'),
('9a9ff014af04caa30226c8c01ac7c234b7c747fb130c6c50443b8616e9b233dca10fee910d1c174c', 'aa7b6931d27e275c187499f1c641e94323a00e1a4935275bef773d3e844fda70cf083034add4a0a2', 1, '2018-09-04 08:16:45'),
('9b5e3b49d9c360cd8d2c2098f75e9107a36b5d5e042862986cb14023d86289e93296b60cd669b3ad', 'bcd0c7c4340e4c9b942808df79911a895e1449c2e717885cbb3f9d7b108682647e74fdde2db28393', 0, '2018-05-31 15:19:17'),
('9be75e1ac976f7382cd1a649fb1b9e430c9188c2d2845dee90ce037edab70a7e7ff8dcaa64a22661', '075a574aaaea7f7c5627fdfaff3d02dabbf55e99402858a91e8d13bf4554fc8c79627040220afaf2', 0, '2018-12-16 19:18:42'),
('9e2a9a5d442baab0ffafa936a11089ff6fa88fb16f5411bb0deaec1355c15ad2b47b859bde830e04', '5c208e97cf13007371c84eee043d09f79f00df14872a1b2b6b1a2d2dda873a66c8fe46b010c04ec4', 0, '2018-12-14 12:15:08'),
('9e70a86f19c957d6bcd3734498b9d3749e6425de728f3377ac44f34b3e56b2115f21abff641321fd', '728d5f302d69b67819c320e74113fcee0a658495331706c00f1ba6bcd3b4fa8b33b5b068de584c72', 0, '2018-09-03 16:02:32'),
('9edfd344e6cc341b305730d56d2f8cbc8f63a230b753e1a357182b3c40412f1c1597108d31cdecb5', '5012f96169dfa56181286a66305cc00be6e60902a1079fab89e93004df74596cc831f89a88131688', 0, '2018-12-13 23:28:32'),
('9f08aa16924c1e433aa4281e6d60f7ae12792ae817ad566e797480e285eb72ba9f85d417b1b0a201', '2735b5559b693c090698b53cdc9ee569ea4c13ab72746aa297ca196e4cee8330533471c0149beee6', 0, '2018-06-20 23:35:24'),
('9f1ed53ec118daae09763a7f81ae497d2d235d6ad7328032482852e71b8b12f844d967f69fbe454e', '518bd42115dcf28ae82761e0946eefb39749d5ed907bef3db2fb423e030be8dab79ea6d51f7e84c8', 0, '2018-12-18 16:05:01'),
('a04bc19ebb9d15b90f98d542998fd9642f05a5361dbbeec20902684c80bc49c4ce1f16a08d1c4b05', '47da4ece90bb0809a204a15ea3aead3d99701c8c973298e9cac06838578c4e4d88acf76e64d79ca8', 1, '2018-06-16 01:15:15');
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('a1382b7285235a3c57c7b627460ca2e8730c83b13922db60798ab955b0a7445353c915bb0fde1eac', 'e69887229fe6e5e97d5dcfcaefec3cea945a3ff03187feba93fde5436fae6d79619122e09053b120', 0, '2018-05-31 00:45:14'),
('a1e6875fcfba203f9c4147a45f4b7c27a12f9f0a19ad367b2be9f389495c3f8dcbcb747fa2963403', '740b669621388b7cad701d3648be2130fb33775f52c51f6e09b2ba87ef723c5d1a563d54aeeac131', 1, '2018-12-09 00:46:59'),
('a2a2cd679134444af5195b9946cb62f52265e8210d666ff74d129ee940c6dea4c3676da90c03648a', 'e9754410b236ac867f47fe2129cf094874dee3ebdc539eabe3056e883dde6b56810b8309cacf3891', 1, '2018-12-08 16:23:00'),
('a538ff948f218ef318807d54793c3b9601860b129b10d2b3f93038627bf4fd57d168cb8ceacda2ac', 'aa5f038de971c1a352611ff4528e080d7137e79cda4a7caa9354ce6257d8c76db92cf42c8c0bcbeb', 0, '2018-06-21 09:11:37'),
('a5c91d99896275ffb191bc4114eae44f6c2d040bfd62925c8f6889abc954c8a0833fe1cbc2f44670', 'eb39333d305fe331820a3e41ed9ed44296b56348977ed10f6c33559fbdbda77a842ebb789874a770', 0, '2018-06-05 20:33:58'),
('a69fd64becf6f41b4f600dce4ff5f4c19362756c417dd05d00a89ea7028739dd9634eb090975bbca', '350c78b860451a0251bf3f2556c7dbe935716641e9ae016c44de0eb3f8efcc5dca49c4883dfce161', 0, '2018-12-24 21:42:24'),
('a75986d19c4c709e3fb899619ba0e2362ccefc078006e720e37ac89667807b833e1c57fc9c759aa9', 'f1a7d1ede678651c740391bfbafacf9b936cbbbb2ca680eeef159078a22c4f2760261dfbe523cca2', 0, '2018-07-06 13:49:56'),
('a7962eae3a1f8bd55dd350917608910da8fce0680ff7d913bd685be0066cb639c6953120367d0c12', 'f2b33f4c50dcba3c759ddc4920f86fb0f27f107e3c55a33faeeb338f8b04c37e52f8b297df5ad27a', 1, '2018-12-08 16:23:22'),
('a7bc57841cb072227f1e954fb0cb0a1e6a7273dd12ae728ada37843accec37b7da943b6ee235d10c', '81a8b51fc9189608a02a16a46378cd6c2110cca94f14f3998ebef1f3842d50c54e6e597255f32f7d', 0, '2018-06-03 17:58:05'),
('a7c7a5502b925100342a2b7bd816fd7d4a7d34e88abbe6d413f6957a86e9cdf610555a30082ce547', 'eddcecd464c5baa831a6c2961521f40d601d1419e6a0b5e47687b33677f6095b5c67059bd6d5d97b', 0, '2018-12-25 16:10:54'),
('a7dfe3628bbcc984f255fe313e32dfeb05635c493cf0af35a2cd38fc59f2bed3faaf6625930ddf71', 'e60cf8b712beea8de1d68541f034ba333a9a8bc1d26d9072487db8bde5d972a8ca87d7efc1a639db', 0, '2018-07-15 16:48:31'),
('a88d10da0a978dc21892123878f1df8019f5bd8db78802b197cffb1fbb4133d4fb11666596110fa1', '6c546777a4057248bfdc9fb11b4348bb05417055e9296a9ce93d17a234083bcbeb38a3707300965a', 1, '2018-12-08 16:22:09'),
('a9717328ec85a1f8c6e88d36c0b69737509a3836f256522b49ffdb60452cd68a68631cf99edf3218', '97b1d5910914541e867c94ef84703e6bcd4ba54228c492d05578b43afef0fda98b106226073cd4d9', 1, '2018-12-08 16:22:50'),
('ab219e04649c0e283a35ea0d31b1bfc641d167aa380db0536409619fa024224e8467950e6dff8fc7', '37374a364a3b6242ec8a5290197696cb393e1a416ed93174fc7a816427f6eb1d19eacbd478649259', 0, '2018-06-04 14:03:39'),
('ab578c8632ccd9251163bd66a58e818e678c9cf468a7162a9215550df252f4f058c1625a628c3a1b', '2467cf10f9fb276c782e151d770acff1719434048ff469d996a1ded56af0bce49ac8aded2d3441d1', 0, '2018-06-03 20:24:25'),
('ab6346acd3945cc7eaf93285a28de79ec0ac6e53cc2a382f49f477810a339e1a721f9bb003f6e243', 'b8e7f3486c1d7951a9d580b268808ef41db4bd14a392668e34cdd16872c2f7215deecdeaed8f095b', 1, '2018-12-08 16:17:49'),
('ab89bb6290c65d9b5f89f27e55c8a109b1a4fa021c96468771ea30c3257399e098ab379dd1c5b628', '5235fe2938ff87bd2888bbb9c4976f941d76a907c3b592cfddf31a64d1925f24c7493ffa9b6257a7', 0, '2018-05-31 14:40:50'),
('ad4963c06189c3d975b961df7925f3ddce37cc8c46996cb14169350c90771c8eacb953317d39eff0', '11fc68b3f53306933fb290bf1289ba3a45d23fd820ad976b990b493f66f9d9b5b4342b017c575f4c', 0, '2018-07-08 16:40:38'),
('ad6dd8fdae3659dd46c2575e5c8f03dff6a65053798a9a4e3e0984d915b3c83f5b0fc6f9ff9b705d', '32aedfda67161b97f6f25c54cdf6ff112db1479a354a11f1343be226a4444da9a6b0a363a06a54b8', 0, '2018-12-11 02:38:55'),
('ad6e06f4ba4dea798af98900be211a2589514504215d8ccd6b55856c31f1665b97544f7a54dc83bf', 'ca149158fee90fbede441b6417e9afa1d2d9ed0b1c7aee7d3cb5f1cff71a189f2ac1b6e3cd009417', 1, '2018-11-14 02:35:48'),
('ae79279004cae792f7af5dd1e0a9496d4c91b94583f790857835313e70bc8b6f08bd4502dbd4decd', '037d622e26138fed6bebd104d0a1cdd5f83ee81f64934d88677d8ee8e9094e4907b8ee25c9f98f06', 0, '2018-06-05 04:05:36'),
('ae8664fee60215f1009be26eebbf52516530d7218ae2da3a45c98aad46d0996ea9038954b62225d2', 'a8d2ff318d3e33fa58725acabed5cb98dafc1a0fcc33af8f10954b6a7fdff86e778dba33c2bcffd6', 0, '2018-06-24 19:51:23'),
('b01e8e99f485dc338363d14bfbe7fd9f419c5b6f48c4a1879042a0202adce55daba29131f66b84ec', 'e1f39e3ccd5a175ee705b3016bc48b1dfcf7fc59bda1ee809ecc285fe8158818ed46257c2709fdeb', 1, '2018-11-05 17:13:46'),
('b0460fb3309cdb9d900c3001131005529c1d6c0c549e0576889a95acf642f6e5a7889fd8adfa09f5', 'd97518a4f5e1c353f01ef77f95a19f332d367cca09b3e043e921646cd4aaf260b8abb6ccf3af50f1', 1, '2018-11-05 17:13:58'),
('b07f4d53c728af610f064ed503c51619709d9e8466936cb3834ccd2bd1618b8c477dca1f8ddd188e', '62de13c740e80e56c55f30a658c913b02b841bc35378b917cfd206903b85970c50f01d3771254eac', 0, '2018-12-17 16:39:48'),
('b1471b37cd761c117401a8c2a5b7331e032b597d773b2a1e1e66c9ecf497e31fff904fc705103535', '21b7ae77e76298208207e92ff53c6747895eb31be69ede10b03e7f886082e2231f6ebafade06fd6e', 0, '2018-10-01 08:22:59'),
('b2e73da712f73b8acbada0f995424ee41483efe0c22fe08524b2bdbd23acc32c74b5e8b22c373664', 'ca96cb45212ed2a6cb255c7712c4c221eab417d9c23449d3faa0a2fc5c8586b1178a6570995188c8', 1, '2018-11-22 00:54:34'),
('b4a51a9b2f9ca0187611f0caf7501397489c4ba6788cd7db2d93eb31e3ecd99e84ae3e11cd3caafc', '9e322ae79d844578ee1a80ac0a51f66710f773852b2c01aa83419574c23a75620bbee2482743ec80', 1, '2018-12-08 16:23:40'),
('b4c6fabcec7daad62edf0c7a8988294cb1e0e990fb350a7bfbef8a64367c8c6685a90d0deabb7c2a', '0af5fb6bd47256ed7f38eeb9f8c013fef5f1e4b21291dad31961c3528062e241355bd9d390daee5a', 0, '2018-11-17 03:56:04'),
('b5c6f9f1ef8304a4e24339cb244281db2c3a5f8158a9316f705e894e4baf381cd5f07c3ace2d7367', 'e427b290d47fea9686edf7836ef7be50476d3af8afecdbb02fabc905cdd315d76832b66b7e6a6f3a', 1, '2018-11-05 17:13:59'),
('b67d71038ef2152f588cff1568822dadf02fc2b78f5542e08676a02939d311ed79912eb29780839e', 'd9b8df764ed5b3019aa5ac5f914bc9104a081a15cdde66590aadb6f0e56fe84d461ee99839ff6c09', 0, '2018-05-04 05:55:36'),
('b7275f8bae752003c8a3f98b93cdcc0eed11d4a3f1d6d5e5d09069f5f4c83d2813561d7d99148fa4', '18abd2a8b43db24b8b23e55fa740b575e4a88d867b49c602afe56069512f00e107ac34ca1f1efa6b', 0, '2018-07-20 13:13:42'),
('b8a3ce19d62434fef9a1a9d1d30cb2e3fb8cec6af77ba9e666ce7c10d9a71b6d3b5031e0373ea756', 'ca03b3a7f7667dff5d192863900edf30eb856ea0ea4e807b2e3311d1be169129facc18e981794cff', 0, '2018-05-25 00:18:48'),
('b943cec9d4e76e3a80fad31ddfde832e772fbc5b54502523fc5e0c65cf9612c0e39e22d3dff55f13', '13c7ff6de62eea55b2dac7b7312c40c9fdbe6ea51c9fba33c136abb529495c38a271fc50ddb54d04', 0, '2018-05-21 00:19:42'),
('baf2131967273ed9c34e160d850dcdd35ae586d8fbe54ad9659f269a56d7fbb5fe7a90b5288e7668', '3d9fd116f0aa7db4ab4d011d6effd1a0938b2a6090cd21b90d76d965109142aa54f90d87a2609a09', 0, '2018-12-14 12:18:15'),
('bb6bf22210426d8e05cf6e5db28e9c1b2f176ed94089ce5a8cb6e85ee7c3c71b573c3222ae55c743', 'a7e9cf40d90ff41916114fa26c5ee43e271214b8a7bfd4b01af9e37911a0de2236e26e8b530a2d8c', 0, '2018-07-23 03:35:02'),
('bbfa66a640011afde523c01e53f6c7ffb703ed8684af398ad05feaf4d08d00e43a051b2b081b2e47', 'e82538be5cd03188962f4256bf1befd0c4788a020830e4a95d2046ad07021718671bcc6f02703c85', 0, '2018-06-07 09:35:16'),
('bc2f5a95d3fed39a37dd7008815a5c79ea8a93a6dedd499e631e78d869b5cdd5a866b5c8a69492d4', '97c3f23b1c3ba9523f5f7a043224f59235b5a40754b407cb630f4ca9f7dab05b4beadc0a41f848eb', 0, '2018-11-05 17:19:57'),
('bc50d06e76cba07e0e70515bdd2d41d33f6932ca37cb0a5f099852140f6e55434652f70a99b641a7', '7708749b5ca0c1f47a8ff0bb2dc6c11c1f478335a27b089428696e1506bf6a4b0e9e083f17a4a45f', 1, '2018-10-27 18:58:55'),
('bda6be4c79197bac76753fb4c9386e75327e4550c77d4384162b5a17a17b60548f37eb40a23c4fe5', 'd719423e60c0d15ffed15abb45d2bb27b3838fc439251187ec0855ca820e4ca5da7c93abd5761e46', 0, '2018-12-17 02:36:43'),
('be63ae168e67f0baa155e536d5734cb5e9f1937c691acfa4bfe1195ceb480f87532e98e922860144', '798c6483cdc112854e8a375692bb91b2fbf0951e6f5e585c9d0449c6d3ae34eb88e194cfa70a9f55', 1, '2018-11-05 17:13:56'),
('be829d7f5b50879ea64578714126a4f4b74551ad3ed06dd1ed8fb95122c3036016576a52638b08b2', '138930ecb8bff86140471395de7f979cfa55a8a1de80245147a282449430b5362525890492df6080', 1, '2018-12-08 16:23:19'),
('be8e90d9a941c2c5bb59f5284c38a0c99b3e5ea73903d5b3a3409f5585d1cab93a6541b28560d0ae', 'e0a9901fc2f54ddf77efd5b96cc5bb6fc04e7fc917ac9f5afad37bdf0099e45d4e350c9d775fb595', 0, '2018-07-13 02:37:15'),
('c061372ac313f5589c3251d3def739822e7989d5d2b27ecdcc97e7cc3c909b7c44b5d9ee3fbbf9fc', '696a568fbfcd3e63f3bd4252f9c276467619522f1d645913d78fa82b4afb97ccd87b2eae804302a9', 0, '2018-06-27 04:41:47'),
('c074f82686b5133aa1b45719038db43428abb2510116195d061f545c2e1f3e1cddad128d64a8b098', 'e491b1b6998a42a1a8996bc63b0a3906c3fda545d854a917cecc4480ed3a0dd999733add68bfaf78', 0, '2018-12-11 03:18:07'),
('c177933ec535ff1153163ee7a00049aea106e610bf1d750f85de9444d615a59526dce501d53f7b8e', 'd800463996b373bce8ea109ff216904c01958dd03c21a5034a986f8c297b0d9b3b6cbcdc865710fb', 0, '2018-06-21 07:52:24'),
('c17de479f41c73576ad7794cb0e62504ee3bf710e8de88c2292dc9c4277eaf94a3a43bcfe163e52a', '7aa1ff589302c33394cac8c95f047546e2bbc95978bd5e36b23b31247e2b3d7cddf5624e25674393', 0, '2018-06-27 00:26:09'),
('c1d0e0a53a72aedbbd5dd25c3de96fba2a865de6b820a679d96ebfe42f6fb85781eda16ac95b63ce', '760f75a406d01838514eb77e10a251c5b63f250d9240973907c6a51f411d729f4043f08074001e19', 0, '2018-12-22 07:42:30'),
('c223ab4a44e0dc741bd0f5c33a881c9eb88a134de309116e264cf65c97ce540f7745f7a38619e8ed', '925e9ca174dd2c0e85af222e2fe4dc54549263420565f1779bf812239a4af99bb804cb4b52d4059f', 0, '2018-06-06 21:04:29'),
('c297887fad81a61bbe1059b0d7e9e357ec4dfc2bd75c1d97242feeee513c272cc02f5bb7294a4aea', '1f9c94b23404d62e6b8ed7c0a06e524a51a45c6e88b09e1f3730b990e7741b669dbc311dff7dd387', 0, '2019-01-27 02:30:49'),
('c2b345ca4b56774b77bdbd1a105c2d56bd0332d026ad0cfa79aef910886809c43ffb4b50c27a636e', 'c984e811a5cf186bd6ce0d89c8475c0baf08e16519ff642e6f32617d6544ef2dd5d6c97e64c63ef3', 0, '2018-06-06 20:14:46'),
('c377927b50518e8d9c43dc299af09376aa63272bfe0aeacb5f0f857ac299e69a26b99c57cf1d8a8c', '086530afef4715178c792404bbe7698cac809f119243dbee996ffd0fb4895c16256fc6d79d8fad12', 0, '2018-12-21 03:06:07'),
('c3b512d2cfe167debbd1840c850dad5a9253f9d97a16fda1ba2740d83a889468011e0a4d52d8dab0', 'cbc5d9e7fea9fc65a51d1df0cb208982e415ac4c61cfa115bab53182ed001e165741a821de520790', 0, '2018-12-15 19:29:46'),
('c3de8c2a715890105a0918d1559eede0b90e3466835411ac9460afa3784b20e7a73eca1b53979b16', 'c6be6fb0f5b72ec74d9f4e1814a8c29056d259e9aceaa7f20a22ac86a824b7c0cb3b84a01076c91c', 1, '2018-12-08 16:22:21'),
('c4396623b09b6362a0279e78e48ede0dd3738bd6d84fb84752808f079f2a08827fabf2cc73292dbe', '53e32c4ed9e4e81d34bb678b3d7f77a14606b88c69b7f16d5f1ac9bbacf3608d09afb270d8094078', 0, '2018-09-04 08:16:45'),
('c68c7c2be4fc22e19dfa67c6d8f4e96380e8cb159863aaf7cdc96d96ccbbbb04c9dc659aedeb40ea', '72d0ee3e07720ee8deac8f258a62e3629ec0b85064b9fa56fc558532856273295231ce5af141e0ee', 0, '2018-06-25 05:56:42'),
('c6a79ce0484d00287be15905eb5c4484a5e6a85e14383cd26e31c258c26864de0465fe0eea3f3170', '8c9953a609d3cb845a6dc4f62f302c9e06500c710a724d264a8983fc026cd3aaf8f53931b966e7ab', 0, '2018-12-15 04:27:32'),
('c6da811fcc1f89f5cf981362e3886f825db226b1dc44d76e8a85556556ea1ed403624f9a899f7482', 'dcffd2d25eae83e36041265f700b546a3cef59c7b2e0f24a9afc2c4de71e27e05ceb37a655ec8f0f', 1, '2018-12-08 16:23:46'),
('c719b6105e6d2f7ac50b45b0cfb06eb4035f37ba9ffc1427934f7c6dcfe5f068d052d2d18cdf1b66', 'dbccef91597600fcc5aa9b336b0727266bf94e5a78921df196de29dc26e087bf91e28a40b794c358', 0, '2018-12-21 01:44:10'),
('c73147d8a826552abdcf09962becdb0e80ead3e9299f81524813b61f055559dd79529ab56d4e8ab5', '5743444b12784175b34661501226e3bd3ee1b27aa74db8d07e322ce6791fc60256e8761f9877c219', 0, '2018-11-24 22:45:19'),
('c860d509540820e6880600b79a0fe872608e99ef40ed0c2eb2c5f3819b6b74f1461477e0e28b9150', '329f37a642882ef43da156bf432f2396395c52cd7f45ff67fdb8f699c9748e09748117f945647fbb', 0, '2018-06-14 05:21:33'),
('c883790e3982d2288d87573e0bb4cc01afb494e585733b74733e29dc8c49d5189c822e7dbbe3004b', '20a1a0e236767d5bf919ea2217f4c51c7e6186f6c36c3c17702466e620ecaf6e3ca2a10ca1fb04bb', 0, '2018-12-09 21:58:50'),
('c8e9df1f8c6b7b0fa15a3ea919bdbafc2215ac31970eebdcdc002b9f838733ac8908d9d9a6a34988', '173367fe7a48ae9f7c3f369d1d779cf160776014ccee49de8278b2a2017ba96d89a1385504c73325', 0, '2018-12-18 03:04:05'),
('c96a1b46f3bdc605ecdbda7d6436c7526430840435d9dfdec99caa07e58e21aeaab9a18d666de0d1', '1af5529838290f52c78ea3a5524551b030d83c467e064a73758a40f90e1bbdd33163482cbab12393', 0, '2018-12-21 13:16:32'),
('c9721c243cf2664762ea13d5a2acb21559ff240841d0715ffdd6f559940c609e8a6f9f76d8513cdf', '7f29ce1916dd94db7ce3a0f2a9e4b498b82a5c314d5ab8ce61801c15e05b512d1bba2a4850f8b771', 0, '2018-12-10 22:11:54'),
('c9adb36a0d81fed476af0926ae22a19e645bb1f17102e73a79a89e0d3727fa866a1a0144581ce8b7', '885e1f064ea3f96969475c1a103ac94d28e26a5561468150519b77cd23fed587cab19bd8e78ba73b', 1, '2018-12-08 16:23:08'),
('ca97cb54d108e27f9dfcc401b697623d23cde035a90d70b2db6c3217e6845eccce4300085343a3a4', '2112dc9f754c60f8149e5e9367a5ad484f5fd635cee4a386b9112e82f2927d7bfa6d4bb299d98529', 0, '2018-11-16 04:11:57'),
('cabf71d21cff821c2097875e33c3bc9bc5144158b117270b2eb45bc2736f1143b52e20644cbf9a54', '4180ccc6e6c91cade69ee614d9b1012eee2d5c5c1d11cf9015839794d910b938ab941c174a4fcbba', 1, '2018-12-22 07:32:26'),
('cb04a78a05ea734152856b4192a48dd104f39c308001162cb853ab71b74e996b362ca1747eb2867d', '2bd281868ad6416ba7d079de38daaad7879f5c2fe0c510b969cf56ab6417f9eeb25ee09379acc75d', 0, '2018-12-04 05:12:21'),
('cbfe77b6214e69a4a14ca3d0cc10392eed34263f75e5deec773e07037318ff785c96d9fd646eff61', '9621c36d0be215fcc612bc2fc57e60a1b705825c0a0c63b17506d012c78ec898e34decfd7d1d6191', 0, '2018-05-23 22:05:22'),
('cc3e009c4a362830c54b6c9a04b5cbdde973885b015c9d87ea228ea66965b0ba3cd2d0c13ce5ab61', '43cacf806582e59eaebd5ca163afc4d7eeda0ac21a3e7bcc80b8dd8a7b8e85d19268f3423d057d5b', 1, '2018-11-05 17:13:47'),
('cc44fd27fa02cc2a637b06178ae524b544ffaee53373992d46e0c25174b678608e5a70906b928a4b', 'ab4bb2bf9f1ec1e6c86d0e79a5d729d931dee597c5b9f828cf3fa8879a3308c0a6f03e348cb612c1', 0, '2018-07-10 19:48:49'),
('cc88e5674b48b85a279440898609577f68c2ed1c9312b209a2ed324f067fbc5c43151eda04191b34', 'e883786849ee5d6d730105857ea411e8c9ab5916e52f19f8e1f8097b92bfa8c17fcf72ae20293089', 0, '2018-05-24 15:17:35'),
('ccdc0d0312610f86826c62ccc5a9e1b38401da3b3fb771e40a833061e09de88f51d7f786472c4796', 'a1d7b9c0b3e5780ea48401726835671990eb6c8b45a4a6cd63b4017b8739545e81f6f23ca0681e48', 1, '2018-12-08 16:23:32'),
('cd6de6196eefcee3cc4e3321e3b39e0db3a764fd74c083b5a4d57a7444cb57cbba7c4f2068b1a034', 'f0bbb9341736cd68e4a91b1f66f9c50db7e9f306b973545f6613e292e0ce8c294aefa00134271d27', 0, '2018-05-23 22:14:17'),
('cd84dd2712dc9c2423d233640ce3d650646052d0ba51dedf0e8bf2cd5e0299e247ae2cbafa48628a', 'acca4e86d6ebc06e77c925b5e482f388a25fd8ac455a3d449ea7f13e7ac9dd17231f02b696d0bad7', 1, '2018-09-04 08:16:46'),
('cdd0ce86c6b51bca257d28d4c2823e7dd30416cbd7e6ab4b21b6a4f0af700cacf554b5869799a9e9', 'df30d84bb5c1aecaf6dbd18763f15db6a3cfc1ffc588a48b1bae9ade7cd0467ee020b1f5e13fab05', 1, '2018-12-08 16:23:15'),
('d03ba5d1923b35ce6e8581ba6d820e1bb96a48bd251b044f49409df138f21f34e3059bb3cc8f016d', 'fc8b0e8a5abaf5c6c825a1743824014a492ea38f7a76e0a683e36d27a30cc192b5ca298bda35f9ab', 0, '2018-06-06 20:13:18'),
('d0ee60ebf856c61a3fc3029a8f4e90212a8811d8a89fc9c65e8556340f9254015b89fb898052fc69', '302c68c8b28bc44461132ac56083ad424b2415a72e0f6a298f8146697aa6be9abfe844921e170045', 0, '2018-06-03 21:26:52'),
('d104b9ba2ddd4ec1a3c1229e493d624df239efd53742f41385e6e04b7ea55faae59e31292d67773e', '62dc9bceade5473814b7bf7e8903404a2f30ffc9ff75a39c035d8165492a2f4af99cfe4477852d72', 0, '2018-06-03 20:51:56'),
('d182ccec3781dbc12a72b17dfd607f490f999c835a058029b1866dab418f2290513496b625809787', '15c8210748b9b076bb1a8bc6b7d2cf406dde6a4d23845f5ea08ebae0b66275c620af3eee4a48d042', 0, '2018-04-27 01:32:21'),
('d18f7fdcee3fc3a12b8b830cb55670b983c560ea1d0f6fc12862ef51a2bbdbfe5646e0e3ca0f6a98', 'db46ef54779b9ffaac8a61c6c0aebbb1fc78df4e901c771fcacdf8d4f93c6ac64b98a4b53da99bee', 0, '2019-01-29 16:42:48'),
('d1f292f1f2061df6aa9866d2d000c4d5e0cbda6699e4c84a7f52b2e8b5f5e292cd9dac4b43deca91', 'ca0c65880d1ec467d0d602897f671eabd3b00246450cd92063a0e789fc081787e8aff04e26a12251', 0, '2018-07-09 11:56:54'),
('d247ee7157570099d2558420c8e0d3064f078f69d5745635c2b00b7e8e71f94801f53aa69f0f1839', '08372897114ebeb86d55ed5c8d50258e15d49cff026eb3f419338c6bd51b0638abc5418638fe8849', 0, '2018-05-24 22:59:13'),
('d4055bf42f13c57adedca29a48cb71192ee256bfdcd8ba99d17abd9dbce6bdd99a3172c5f18b03d2', '1a11afda328d059b567cc778a8678143f2eef536ee5051074de08ae90eee336ef1f9a13e98bc951b', 0, '2018-11-12 17:43:51'),
('d531aea12ae6e989ff0bee82c75ea56da2934369d06f92ab8694fe57f70c984c1e67cce12ad595f5', 'e4d7e03049e588cdb265a4179e2e1a40f93253fa543caf663099ecf7f367565f8049a92f64155a0f', 1, '2018-06-21 07:52:22'),
('d53b3a640b39951ca1b2998d18f9a313f8584f37a3a2624594440ec2871238092db65d711cac3b73', 'd2196e1f73dd6e1f364952100f44d38edef3f76eb430ffeb8f49ad17d140979330e3d0e5d7746a4e', 0, '2018-12-16 02:32:30'),
('d6203add4234c4278d97fab8bcf5dad6732ef90ce9a0dd7e1c6f6b1cc2af2b8d7f355bc147c3cdc7', '40ff93e50c36614c6c7c62080f24154f6e64bae7792661beb2f2f043e85835b6de29883ed661ee7f', 1, '2018-11-14 02:35:49'),
('d62ab0cbac6e41097a5e892f26ec5e23f6025841882f1f736b3dceddd0b63a05db72f3d187ea7044', 'a4b4ff1680bf74d59b7906e33c595ab0d4751fbee42f0321aa898f484c2fc68e20d01d25d721a13e', 0, '2019-01-27 03:05:50'),
('d63b159a8700563d6883b0f3b5b1c314e2c5ec2e9bb33e29fdd95cb63eee88c4e07b6512074734ab', '35d68db2660eaddf6b326e695de65336ccbc23c5d85e9f7193ddaba47943e029986f587b98a1f29c', 0, '2018-12-03 23:02:41'),
('d88d9999245f24d58d4c13bab58955f66792f77c4c12f450327766f72e33c0d6a85d4fa673ad5fe2', 'd4d8de05d867868ac9ece85173df1826c26a0d2a5db6282af063682e747bdafa8a0b96d9b1072dcb', 0, '2018-08-23 16:46:00'),
('d8963811f1f7fbb7d656fec4d31b7a0f9e141fd047be66655c225ff535215936ec8d64b69d69ed03', 'af94b3f7be15a280117f57f4f4700822e5c4c911b8cc3ce09f5526e2a7c4ea07fd2f2ea9fd20d913', 0, '2018-06-18 02:05:45'),
('d90af1c3fcd9e98d1e612939ea52c328a7303e13b5f34de2a65d222d4260fa74b1458b07b55108d3', '67236125f84afae8dee312bd600bc99c4134e4e641e9788e0df0d4dcf6549e4dd30e97d0bef11410', 0, '2018-06-05 10:14:51'),
('d92b49af84fcc837cc82f7e6f47a90d87f0c1d0cb798d49d84932b7a9bd26e19cb9a08ec418c4374', '43f002c2f556581f49fd5e3c98ed909606d8d0e637a8720cdcd20b7401b66ebc9ec7de3105c0d22c', 1, '2018-12-08 16:22:57'),
('da8b89bc03e2b9f7b402e135dcb75404f71c231988f150f5699d713a0d2a6209529b50a7e9d3a7dd', 'd173969a26f674042181a7fcfe30af35dbecd641733ff43649e31e6da9966c37756d018fbeaaa12e', 0, '2018-04-27 03:23:36'),
('db4a65bd5f3a7ee3043dc5e2e38c503baee3cc590e5a317a3e715fddcbaade5bf736e7eda6a35abf', '2597b2ecd9f8dc7a5e13feadfa820983ac1e58ca4b0e99bbb7c28e450b701b519510ba0a478fb7c8', 0, '2018-12-18 22:51:21'),
('dc31d48a2fa191b18aeef9cdcd273422f205c1f66e0d989204267c2f4ccec6c8a1c180a02fa11bdc', 'efa68c5e9645c84f9797d850a46e7ada11ff7d6a62e205b30106abf5536edae384128cda9dcbe708', 0, '2018-12-09 15:57:45'),
('dd0c3e6553bdb2683ed645719ce3f218363709ec5d8bfd88032e3c8a03786302cd2d833f645889a8', 'f549d3067d65eefb0373c6d4820c229ccfe5ebb7c875eb83ebe77847b286647bd7d83bf261a74527', 0, '2018-11-22 00:54:35'),
('dd175ecd1ce1dad55202274b4470e6ca8ad616610f2fb9742d04bd11e968adc72598093bb01759d2', '0fe16000944b360543207f69606a154b7cbba3c99beedb03bedbfd37f04c89247f1b4988467c98e2', 0, '2018-12-17 03:48:29'),
('dd516118d4a89ab3a9aa505285ebd555d549bcb2b45f7a7a0ce3490685b5edd036dfa533138f66fd', '55684328b7262753f2d43af42f8f606e8668406613533ec3331e74c8adf700756a1ebf53a97d76d4', 1, '2018-12-08 16:22:53'),
('ddbdf66bb48f49ba6055b71ad551101b3fab50abe1f1d99a760f0688ab5d8b43f2d5dc857a06d1ee', '43b25175e1bbeed4de2d1550e4216794652101b4253a95081e40238f441e9b69f76abbaa673ed050', 0, '2018-05-29 15:53:00'),
('ddd8a92f55e0a390b00a834f5f07f3812d16f9300d0c2c7b27c6476b1fbf04e7e59296d34ca2753f', 'ba8024319dbcf9441bbb2fd39d1620e336bea0bf2a21a01d10b7d3407475807dba083db492a66997', 0, '2018-07-20 11:26:10'),
('de68326b2306e5d4b422ba9990f5da19cddea3685b2c90ccf462ed213d9feae5ad436c98c9992653', '944b7987b6c90c3173558947963a15ec60d014f3501b2655234840b7d0b4615ac328a6f1b7610900', 0, '2018-09-27 06:04:50'),
('de7448f4f29acc0b836cf4e3f8651178d76f28602a9760fe61b200d83a6c341d0378b543e7a0aad6', 'b656b673c1206da649353136862aa067a75c1308aa39b4f0d60633c6267253dea5a179e2be2859a2', 0, '2018-06-05 06:10:52'),
('debd653c625e9b9fe60e1703e6d4983d840a736c43791f10475dc7c5fa02040b37f05451d6b71cf8', '35961ddd2fb21e0abdf1bf26cc4c509b7f806916ab5bf9d7419f1a3cb3e50ef5a5b6e2a7ee17613d', 1, '2018-07-08 19:45:32'),
('df0360e28fc4ded200cd4c5bb3410037edb8d6e825fd0a318bfccec7778b9af8ae6297f8639a5759', '0b2a933447fd1ea3f2d2f450f33d750bb4c7942ef2f326d7f352e8cba7da9ae6d1b28b319b7ec687', 0, '2018-06-24 17:19:45'),
('df79cc27efc62b5bdec4894fe5eb88aaf1a08f02b5d48e1399c4c96d8123cdeecb65620f1284fcf7', 'b930df93de406866e7b125a0b13b8459a4553832ec95f3592022cbbb24ca82fc5c70295c570db59d', 1, '2018-11-05 17:13:44'),
('e0da4fc79a29eee857a7bfe819ac887e478c4a1b6bab32f8c29c2d7d89319b028c95af600c423114', '26b36831350b0ec3f70cf1fff3816554a9942ee53af6b768001b56f9b1cec07aeb30f3b7a4b11149', 0, '2018-07-10 01:11:10'),
('e0edc104f203eedba8281bff93e1dc0eeaf1f0175dc3fd0160a77f843cf41ad2d975da5d1825f756', '9a890d1b5839fb0b20e1ce4d6eef6bd3d19ae5054d2c2f38ac52595cdf5f26c54ce89ef81977de4a', 0, '2018-12-24 23:06:52'),
('e0f98e00ce3d1c0d6cbcd6ad38b65c77b56e294eeb428d7e704d2f162647da62ad2bc20d2b5e0859', '6763d72ea440b7b7bfff72f0495bbcd5dba4c65d61ea4385fc2aa5b2fe5fc94a94b256dc8b357494', 0, '2018-08-23 11:22:56'),
('e10f1ea389e723a73c419f3d1993144c16480d6ee119491a964dd5a15d8782b9a7f89adaf1a6b314', '325dbbd3e034fa88e1ae855e5abb1fbda36ad5035ae74143910b13a25e31ab06637222edc8c94eae', 0, '2018-06-04 23:15:20'),
('e2558e9b5219a9269f7f485f5ea95d3e2ac551dcbac450cbb86340a9d0a8246d4331ac0bdd26b41a', 'caa18e5df51989735159691658b530a0fb8dd0f88bef065901228b1dd11c6b8be3b46d312e763167', 0, '2018-06-06 10:56:34'),
('e28685c927e90ecfa5f9f52ef94fda045ce406b56dca113339b17cb5ac9e482e138f0f6596e20562', 'c4679d2584508e1c475c0ede1ea833167a6439c521dd044ef1d8f0d8346729d119b285a62f8840eb', 0, '2018-10-01 14:26:18'),
('e32599977fb7976f4a71fb7e0a7a8f145b34ef1613e54e4e55feca57d7398702e6059ebc86adb0dd', '684649637ef639d727e9880519ce1ac6d53604a0c59554285ea7ea6f2a8a3794cc35b5243c36ab68', 0, '2018-12-03 03:41:05'),
('e35388588ac12dadd9f45fb5ef1c2b2f58a0348c19642a1cb3e4e5e9fa848cd31893526643a16c6c', 'ebc4945190478b1b2430aa2f2cb9a1201227ddd10345b54415d567e69e63429582b5233bbff7e38b', 0, '2018-05-31 09:09:02'),
('e4e4416f7199255dec000401f9d228b52aba7aae0af268d213e71e2adcb8f092d984f2c538ff9b0e', 'a81d7fd4203695fe6ee5c1e22bdf1cc6f8e1da22099dd25fef667628f3b680cd25120f3fcedc51cf', 0, '2018-06-06 20:18:47'),
('e523eb4ff59e48863eb4b6844bb37fe09de8dbb292df12f2355756b7872a2be2e6e974fc5513c90c', 'bbbe484f3172587003ebe326da6e9ce27eba36b4c76da33e8b215baadefd785ffb283b019b65dd89', 0, '2018-06-05 20:22:36'),
('e54d4cca26269ee9f6a755f87f419560fa56f47426a85dfcbaddf0aa8b957d51847846a6689763b0', '3d0d799f5cf07dd10113645d5d463717420ee26e336760f55dbbdc4fced1fb7af597ffddb257b3c6', 0, '2018-12-16 22:01:40'),
('e5db34871ce3adb341ae1789f7a93fe3641c0c95dc6e41fffad49848894a72150f13fee0aaae5090', 'e5153800f21f5f3d29e4b776dd26dfa0841f56970d3466615d3ec90a0f39d209a7c10d20efaa231a', 1, '2018-07-02 02:31:17'),
('e690b1daa9d5ff81d21caacfd74fd2d561e823d9f572453bc366710683f7f468b6413bdd58ba5cd9', 'c1811a980e694fe88da5bc445584bf161b382e75dd77ecd180509d19f7507f2d2b8c0831f3178338', 0, '2018-07-02 02:31:20'),
('e6b440ae7e02fce7949312afa217781ea7f5729810833ff51bc07f0849917c53e2231b6df890eef3', 'efa32011c3b1d9704e786ece01d74a81cde86c96fc4b5e8ff60ba11cc85201dcc5112323ab61e1ca', 0, '2018-12-08 16:24:07'),
('e81bd1dae731a21e083482799c693c4a28b38a1acb23f2fed449cf0105f0a0f4c0586e0bb99bc275', '5a9bde67f06139895e91178fdfa80454244bb65293539fc09f52e8222c1c34619b80106950f2ae62', 0, '2018-07-24 15:51:25'),
('e8c76adf8d09f7d275e5b86a418df16ee8dbfd8a1795168c1dfdb2ec5bf69ea69ac3f42247535ccf', '2f3e867da3ce28d1974a4310a60b8a4a552c9575a17adac4ed9e0708a22673c77d0ac1964d80efaf', 0, '2018-06-25 05:56:40'),
('e8d28b5a09346514b1a700db0fcde902bf8bb0053ee7d9e54973ab1db691e1e1e5b0acde1e1d751b', '3caff45407e85dabfda1af6eb163b315a8967f3c3e62143f480709c75c00b5d7bb3dde8a06469ca1', 0, '2018-09-13 12:14:31'),
('e973410df6f0dc9003706f30d2e9672ef1b538877251c629d62bbb9ea4b4b2c68780059f33f569bf', '85e44b1a91609f19b74c90d7e6f79beb8e6aaf19cf71b1dba1d6a2eaed7bbe4d76b223fa770b65af', 0, '2018-12-18 19:05:03'),
('e98c55f3ee5badda1b30e22777a6830c192e6b4eda600350213df7a61ab38a7e764367b58d3c09c9', 'c6b62277b2e27bb05a6266ef18b655466bedff2dcbf5a0b32c47fd63f93ee0446a561ca95da9b7b1', 0, '2018-06-04 06:19:25'),
('e9b615d5f15abc17b1f8cd5291ce1bd0cc9fd4bab8a6ec60ebd6e2082b55951fc313c0cbd5251c64', '9790f0c3d5841b8da757ebd0c4d77024902aab3b078d506bac0a4b3020be6401953f4a51d005372f', 0, '2018-09-10 14:26:30'),
('ea23a3305807cc1864b480d59e52c5f2aa274376c92715368480001c232edac3be955e532ab70f53', '189b2e2dfc562fbc439f7e5012b97d98b878293726fd2ccc8c7345c0ae9353bbcede9faca3348ee0', 0, '2018-10-01 13:01:01'),
('ea725e484ce3a2600dff2d6006af4291e1e0e5d181fe731d101b9b389d1ae2340856122b3d29527c', '9a1d2fece2e1b9159eb97290f1651d237b1f635aa7ea8bfd8b5a336fb9f2ad617e9db15d27f22233', 1, '2018-12-08 16:23:38'),
('ebb22e4e90c7e1fcfc0c8e9abf560dd1767586aab1e86fbc0f71647b513c0d7a325121495a2e0e52', '8e774b658529b6b65074e0d3f5194bd4e1e850bb2566c4cbc52b3537ff9444c9684098849e6d4598', 1, '2018-07-31 10:50:09'),
('ec270b334f0f767b0b29f9775a5391b238ea9db186e386f104f3675ddd3b9f2ceab0a6b02b8e1a09', '9407e37a9318d77aef84d4575884ac6e894d048383490879c9393e579b999dc0d24a1bd31791f0b9', 0, '2018-12-18 22:03:43'),
('ec289f63b061b1fec7153b67a3cd3781ad48fa9162e0226d15285cb6c425c0145f8fb9eb9d1c6e4d', 'c2e067af9a5253aa190a2ba183276bb90d2904db9082b4d6dc73db089e450c136a5fdc66a8e3dabf', 0, '2018-12-17 03:48:29'),
('eda8a35f6fa43eaf4ea757c2a9f5a1315124283f6e6fcdf8cf8c62c6e7fd44b79057a82261fba702', '7979132085608d9c0f731ce8e9bbbfddd4c5267842f8110f4ab6201a29fa6ec8f4e5d5b88b565ecf', 0, '2018-06-09 22:34:43'),
('ee3ec5ca3e2de7ad4547029b6013d30a3fadd57a2435913ffcaa1b9304819f485e43743d0b7a60c7', '28033486fc81b578c4b8f1e754a9d42db4f68a913fb826110b08c073eeb60a5a1b50f169e55e0dcb', 1, '2018-11-05 17:13:53'),
('ef290a61ad6eac5bc47a798d937935f0e4d1f2d7b666a1d98f0605bd6e4a18ac19b0405283d0b3b5', '3473ceaf9a63822f2a8d8f5496f5e1463a4f27b47ad138c7723dee79f0e2bbf4e23906c75af8f681', 0, '2018-12-16 22:18:02'),
('ef5dd1e30ead23d30e01703bb8ad4d2c8e6078da39109999f85ee6ee5caf2429e226849792530c98', 'bca7f9f3f58250cc512b5c1540d0ee368293c9ec50b680265f17af6569495182596b7b87ca9635c9', 0, '2018-05-23 22:31:39'),
('ef9a2dbfff77df0c7c4d340f7f43f6983deffecaf9f27956ef16aaa0471cab8c7d503058230598d9', '5f502c43b6e2bd2d07dff54b4e286d15f371a1197d4a679dfcdbc0d43dbabd45e72617be77bc3839', 1, '2018-12-08 15:41:04'),
('efe965b7f15efd43bf08a12bbaa05b313dfe6418c9d981cc219d81d171356519d184f93ea4357790', '7428eea329963a5100669be2cbf236fe188572e46cbd477c90c447a6da54282850ef9e9debfa03e9', 0, '2018-11-05 17:15:49'),
('f0bba167574afab2ea7d73ac8f6ccca79a811b0862940f6ac4b643e7d58837ed8d340a085b80b264', '97a13b3c53c3204e7fa9239df0e9b5aacc78470e3399a33cfe7db4328fbaf4bef4cddfe83a42afe7', 1, '2018-12-08 16:24:01'),
('f15f99a0b8c4592881e3d19d3a0a54fdaf0d5cf8f9ebedf2588f10fa1fc1e49b33965dc206b363d9', '71589616c0780621681d7af182a61b0b5d1d618e4fd6f7465670d1bfae995dcb4e07fa2e2b1daabc', 0, '2018-11-02 17:19:57'),
('f17f6dad7ccf27ab8bec24ca75a957360a9981bc59220eff509cb41413e42ca06f263faa50ee276f', 'f333f3c8145a4a933eef2690c655f6050a06df17376351ef86d6da2c21fb133f532f753ac638baf8', 0, '2018-11-16 03:35:06'),
('f199f9012c45965fc57ed4346ce7d8d3bcf5a419d1c424da4a6d8ff419082da49ab018c67498afe0', '33a7bffef2e09bcd8636cba9e43a56e8e725d8821cde4ff1b8288d62e8da753ea939db98f01cc15d', 0, '2018-05-28 16:56:35'),
('f1d8a3756aef32df846267f64f7ea23d550ca9e9e7bc5524734bde803469d07821ab6a949bb9dbc9', 'd036e3d1afab262aa975df91718dcc299f4aaab752e76c90eda8fa0e0d86770cdd40426bd66b9690', 0, '2018-12-24 00:42:22'),
('f22c3a81b56b9ef118fabbfd207b1935dcd64a937f02030a8da3d7eb90261a28869ba0842560f452', '44e95ecb19569ea16a2d343332dc1cf82d087f39f4534ada1be2545bf569f01f8f839ff1939108a4', 0, '2018-10-30 17:12:02'),
('f2afaf5ef220aaff357464c57cfcfd95f43654964f0bae5d1bc8e61af0dbc13dc1211516200ea0e6', '413831671fcb98ee8bf2d5ce6d5b3d575dc718c61439a34b73c8e0cc4569f1364119cc7bcbded029', 0, '2018-12-17 03:17:24'),
('f2b0a11e03901e828678bdf11fbf1528e63d5228913811a43edd0f1021f4a1f10fd83ab82d958d4b', 'e200216548bec39350a3b069373263269f867849c3ab8b5e041936a080b6bed8f0e4c1d0fb0fbf89', 0, '2018-07-05 20:06:20'),
('f2f116a4a3c33bd7ebebe34d068d51068a0e2b63ee7ee3b5c8f16816729b7bec64d684a7ae4205ee', 'f20f8eee217364a71250df069e6e64096ef7435e3eaca60098e9765c9ccee7cc95cbca1994cf5ffb', 1, '2018-12-08 16:22:37'),
('f30da62158989363b3c9866d00985e84785cf611f470291b49f787125e87cdf0d3056347e34a8419', '27e22837d0915e2be9ccf0db7e6603e973abad1429c108c2212025001fad8e43c5c50af9d0a0c3c9', 1, '2018-12-08 16:22:35'),
('f3210a7b530e8b21b387f23b6859aa6345e0ebbca3e1a01767de32cdc30485d930baef8f67cb8e2b', '236a1ba91e325b64ef2759de920295a46734baab7d08249372e4d50f167112667096e53403839cf2', 0, '2018-06-23 18:17:29'),
('f35ce0b0691a199b808739671e8da032a94554730cd23f460bdc72f21bd72e3afd76a5e344ee01b0', '83556fd72eeab35471f0f521034fb63b3ded5f97b98aa54e713a4c0f8b5b0b2340f561a2ac3f96c3', 0, '2018-10-11 11:15:33'),
('f4064440da4bcd432aad18b0f604a9c4927960273d8c0a2f27d1fb01c45e5b27d6f949c2b88fb076', 'b73a542ec11c2cc79c04ea41b35dcc23b88e22f2f462e09ec75d0ae0e80dcf31e40b1429fdd715cb', 1, '2018-12-08 16:23:54'),
('f4c64f874172820a2fd658be0448b661c46f6ca410f1599ff3519b22783004cddf89c69cae11d72e', 'c93eded05f769a8aa98454ff0650a59d4ecdf7d46fb8c44fd53c5741e4c8539e463db7768c320528', 0, '2018-05-30 15:26:03'),
('f53a4f2d00c03b29db9259238aa8497e025f84253b82ab582388ab1e3723dc4e42efbe41242c8ecf', '1fa272aae54c16f9eec0dc39d713b06bac0862d7ff7445c97724e3e7d2442108e0ef1a79e9138afa', 1, '2018-05-14 05:32:26'),
('f57ceec8edd9415114691a062fd93976362c993b36f3b17400d3a39634e1203d61b68487a49568b6', 'db52d193b5c2394d1ec742f12c4b5757d9342f50d4bd0c115cc3275d9bf708064c2ff3557ffb5eba', 1, '2018-11-22 00:54:32'),
('f5a658baee5c1167eec63d80a2878f02591a3e086a5fdcf67ab7fc4906921728ff545f16f9108bb2', 'b7743cde18b5f5cc09dd2c89ac6bc91c24dd15ea31ec221f0e5163d4f4e9f283c5e5fc91e9cfc783', 0, '2018-10-08 20:13:13'),
('f60eba1433f0fdf0fc3666631ab6b9438f4ee864a465e22d1811c4512935b4b2b8dea1a2eda65e9b', '18d9feb94b1ebca4cff89d4db50ae8c3964094aaa5818a783ad680f10e34d9909c79906c3766e10f', 0, '2018-06-08 13:39:10'),
('f6147570b550c015faff2e73bb810dbdc5db3a32cef20ab23984aeb6020a1959bfcc73aececfab83', 'af43123b61351b59432649359944d91fc102bb7770072a20daf08a6f9de318df4df3a4ff2021a3e5', 0, '2018-07-08 16:06:27'),
('f666adaa8bd4c36dd0dec7bb5b21a2857da84f2de979e948dd12c44ab5252400f882b67b40c30b71', 'f3098703b0f6e73e2dceef4f1d1e0138e5fd4a42f989e741700e5077a2dcfafdc183e5adc429902f', 0, '2018-06-06 20:12:01'),
('f6a471ccd797f7e212e77b74f87a2af95a3889e1dc2bcfd5d65d4c7791abbfcafa111ae08f01351d', '860f05686f7f9e5c4aaac7fd9d2ee6dbf790fce5172a670443faffd1427179c0c6190e4d239fbf91', 0, '2018-06-21 07:54:31'),
('f6afd1561f44b46d74a2bbca17db28ad20cb2c4dc028703662b693a80d3c3316a765b62772145fc2', '726d9bfe0669199ed847b2ac954c414d8c350e9e13d6475a4e59a0184cd733dbf8809907cd67f8a0', 0, '2018-06-18 01:57:34'),
('f77b8dd6dda50a394db2141b1bb8922d800d0f8b41519391e191a0da7f2448e78060b419971d7a20', '85afa45880a8a25a5fd4df7d6f3f03d7db6e74ac2e02d0c8b59b0c0808f614f8e15aae23d4e49323', 1, '2018-07-10 02:46:20'),
('f7ad42f1728116e0cd78a62a00d6d70a12394647da6b40a405369a990d5616a1ed265f2c14ee4a95', '8e7970fafcd8924cb239b2f95b2748e18a2570e538f0e7a8d82e8f3105c596aef120048b6faa57d9', 0, '2018-12-18 02:48:33'),
('f7d403a9243b6467aacda5f2e57501d175380b610374f25291e53f6e255db0d26749fbe041e72580', '1b3f0123197e41c144222bfd2c3ef603a4b9a863d38d06e1831871e05e7df0e2ae6e447959c776a3', 0, '2018-06-17 22:20:22'),
('f855a6df08cf76cf3ffa30af3111b62a149f71b7da0b1e703d33bb204dfa8e225c78e2ee1f03c68c', '3b37d063a93228ecf562884a6af867477d0ea7f44405a57563cba1fb65d51b579ec992a9d7b07c35', 0, '2018-07-08 10:21:52'),
('f9191cec8f8ac16ed80e2fdda27a4f956b119d95411a1c8e23a216c86b97cae42ada4cbf4d16c9ce', '804296a3ae421899587dc2d225148d6c4107a84d2f1d7b0b8bd788d73fc18c6d1ae10a319659d765', 0, '2018-06-25 06:33:48'),
('f94a31357b7ddfd66465fa3c85d8cfaa241237518a933751d5b9331d6855aaccd35fc09cd901aa3f', 'b9da448b35cb30cfe3dc51a911219a865b53d71bbec442c39e41097346bc1e6cc0ce4253dae0c261', 0, '2018-06-24 07:05:10'),
('fa38f3308f7a37d7c938cecd8ad7e1e51f5ba51bb92fc3eaf58521bba4b2b3c57449ab04776815a7', '34b08c54520a73513d4471a39ef9bcf66f214ada2dab1707f3bbbd03ad503f09b1baa9c9aabc4dfe', 0, '2018-05-25 00:14:53'),
('fac19895be4865c81c4d3b823b89e381b9b8f04db5254712ba8ce8ede56977241181664a3b3495d9', '5ebbc189282ee59bcb9e9c745bf4795880361931e89350a8fd57adcf36c34d709b6b68f3631a05e1', 0, '2018-12-17 01:54:57'),
('fb499245c0b025f9cb750cc4193e65cf861cd25ae6db3f1a0e7618476173157191fc9d9b864443be', '05ae0a06949ee2fbb7146e071a242b28ae89cabc9334b5951d9fa7b4a74d6cc344217cecaf258cb5', 1, '2018-12-08 16:23:05'),
('fb62b5dc1a17e576f9fab4c1c396af430d9a3f40b30441ebf974738831a9a54172c20649709020be', '0ab2866359f3c9ebe79f1a2ef98c30e6c5ee9b5dfdc682de42a3568950b727537ba564674ac5337b', 0, '2018-12-03 19:10:23'),
('fb731c5b95d400802818ffe5018b3c10699c0d113d3cdc9a9939b86c6bef61a27f7be05c915f6ca2', '0c35c05a65e9f8d5a3491759daceea2bbec44ccbc6986c0dd2a8522faf521e750a9948dc8b4e927b', 0, '2018-12-18 22:17:06'),
('fb9af4eb1388f096c26961e97ec85e47bcfba19aa5ccb2b75bca564b5b9d3411f9a930e3300d878d', '1ca524af6d835c30af27689910e6bfd37469980b3b6cb8cca73847d6dcf96cbe82a21ad0f64012ec', 0, '2018-05-31 00:31:21'),
('fbe66fd2da475298e02e9b1188c90a623f727794ee53e4a3020a851192a3adcbe3134f4059eb792d', 'c87083a8ede9a27eb0fc9b4611d73b8a1eec46a34dc4cbc50b739a49b007aa30c5144f96366693bd', 0, '2018-08-19 16:08:27'),
('fc85721bcd0cbb3b59c5bb4136a9d454fb56ae0062d105498a627eac85d4fcd85f8cd03a6bdf9476', 'c50b0a336cd5245f8c276dae15a7993f8bcdbd186579176a47cc8c0a97e2cc41de3311608384c920', 1, '2018-10-27 18:58:56'),
('fce1f4add5c928fc213724c11112bb6a521e37d741a70c22c3c46ffdeb760e4f40cdbef9f6bdd605', '390142f2c3eecca786e6aaee895bd32ac023c6cd693b012048ca648e2bb30b9e74f42edc78c0bcfe', 0, '2018-05-24 23:55:48'),
('fda2bf585019f95bd4fa4efe6d7d006e2e105269b84fac3d2a1a6c0b31720a7e4da4e3eea2857558', '406d33ad31511188c05203470ce433a71bf9a5862230872ba4f601e527f4e59213a3232a2d7e0484', 1, '2018-12-08 16:22:31'),
('fe161fc367cdcb3b705ce4a4829912281e02fa1bcc156e33a56ef3fbc48c39d94e67349be6c49331', '7d17c8c657ccb830a14f5af76dc63e90702597a6135c2b8571bc9612857f8598dc8a100336f7a1a1', 0, '2018-07-08 16:06:26'),
('fe39a7a4cba728f28f059ebe1a6b9abff881184abd0d3e9564deeab572976258110675a11dc0641e', '90caf752dbb28ed02bb2ee7207b620ee5f96511d82178d458baa57814b5a019e6c4b001fffd4262f', 1, '2018-12-08 16:22:47'),
('fef5e240df7d3c223b522c6cc28c28fe3b2e73e4e7ef6525d8a69d799ad152e76ca247f541c788c6', 'f9412cc3208e159c149c72bda6cac580cafd1f8e8e34d65942dd601641c18a8866b53408e166821d', 0, '2018-08-23 10:58:07'),
('fef86ed7ebc77924b90d719eb849991c33e76244b4bed06c25230b5cd4507dad693fc1247f30cbd6', 'da103781ac53e54cd2fc5d7820b4f559f8446fc41dbdff2770891132dc70aebc4eae35bb39f493cf', 1, '2018-11-23 02:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('debasishgharami12@gmail.com', 'ccc5c122407902a8a605144d017e2643fb59811ea818d4662fa2077c3bcf43d6', '2018-04-26 01:06:37'),
('shan_fusions@hotmail.com', 'aa55546c57f48038f20d2dc7d9865875166793e318694c19197597799e3d1898', '2019-08-26 23:21:24'),
('family1844@outlook.com', '1cfb39732737a2d9f8c3688a4993a7225c8d2829cb5541e868d3c6971932fed3', '2019-11-22 18:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(10,2) NOT NULL DEFAULT 0.00,
  `expiration` datetime NOT NULL,
  `status` enum('ADDED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promocodes`
--

INSERT INTO `promocodes` (`id`, `promo_code`, `discount`, `expiration`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ahs123', 5.00, '2017-12-08 00:00:00', 'EXPIRED', NULL, '2017-12-08 23:25:04', '2017-12-09 00:44:53'),
(2, 'Halmat', 50.00, '2018-04-07 00:00:00', 'EXPIRED', NULL, '2018-03-12 12:29:41', '2018-04-12 04:37:58'),
(3, 'DGTEST', 10.00, '2018-06-28 00:00:00', 'EXPIRED', NULL, '2018-05-31 07:38:52', '2018-06-29 13:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `promocode_usages`
--

CREATE TABLE `promocode_usages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `status` enum('ADDED','USED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promocode_usages`
--

INSERT INTO `promocode_usages` (`id`, `user_id`, `promocode_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 128, 2, 'EXPIRED', '2018-03-12 12:29:47', '2018-10-29 07:51:57'),
(2, 154, 3, 'EXPIRED', '2018-05-31 07:39:32', '2018-10-29 07:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` decimal(4,2) NOT NULL DEFAULT 5.00,
  `status` enum('onboarding','approved','banned') COLLATE utf8_unicode_ci NOT NULL,
  `fleet` int(11) NOT NULL DEFAULT 0,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `otp` mediumint(9) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `first_name`, `last_name`, `email`, `mobile`, `password`, `avatar`, `rating`, `status`, `fleet`, `latitude`, `longitude`, `otp`, `remember_token`, `created_at`, `updated_at`, `login_by`, `social_unique_id`) VALUES
(114, 'Jamil', 'Rehman', 'jamilurrehman1@gmail.com', '0481822935', '$2y$10$xwtyPi93lSk/SvLZ3YnrD.HE.OoLld0q8.M216lB.EqknXRygh.T6', 'app/public/provider/profile/3a46ea23d4f107b6ed62f2a1265dacd5.jpeg', 3.13, 'approved', 0, 33.56712250, 73.14649270, 457325, 'f8CEXKnBWPNONBQKbTgVHWuNLxDbHYy4trcQFR9nylvAbyqerG4mw1LtZuTD', '2018-01-25 23:04:58', '2018-09-19 21:09:00', 'manual', NULL),
(116, 'Halmat', 'Nanakaliy', 'hkurdee@gmail.com', '8473122011', '$2y$10$U9eOvegP8VU3CBsYmEzAe.LDy1pXvY7M3111UaRI9NCjIVc4HzHBi', 'app/public/provider/profile/72c0f2734ba0fccb152f44649f363e7e.jpeg', 4.90, 'approved', 0, 42.00533382, -87.88902653, 910683, NULL, '2018-02-01 07:26:57', '2018-09-23 14:47:41', 'manual', NULL),
(119, 'Adham', 'Sindy', 'adham.acn@gmail.com', '+17739468351', '$2y$10$KnpXRm4FlVtcoIc25h3t6.7hk26KHhFC7cJV.OB5fN2StbgdK6j1y', NULL, 5.00, 'approved', 0, 42.00685138, -87.89155548, 796675, 'f0a4HRtIIcx6KpGZ8QfRKCS5R812WdzjURMIE8l7hFAfNxXRJh0GHnIImSGL', '2018-02-23 09:01:10', '2018-03-08 09:46:32', 'manual', NULL),
(136, 'test', 'Drive', 'jamilurrehman72@gmail.com', '+923170043158', '$2y$10$tOGJxi2h09QKERZP3.jzROaMBrInJCKqVETf1WAyvKBCwsKN5qJNG', NULL, 5.00, 'approved', 0, 41.23608050, -75.90862330, 0, 'fqTT8PQSCOcOJllNThI5W8YL66ESY1iTFgDKvh2enK2mkIkpYBtrFA5ChRN7', '2018-04-18 18:07:11', '2019-10-12 02:10:22', 'manual', NULL),
(141, 'Debasish', 'Driver', 'debasish.gharami12@gmail.com', '+917547918933', '$2y$10$BK5Db5lEUYcWh.Ijyrku7uCzbltBQgH5TcdKVbrDBhjH4dKv3d0wW', NULL, 5.00, 'approved', 0, 22.57706070, 88.42839813, 0, NULL, '2018-05-31 07:24:47', '2018-05-31 07:54:22', 'manual', NULL),
(142, 'Miyo', 'Alexander', 'test1@gmail.com', '6122938294', '$2y$10$.ZsJxmTHHY07L2vJoQxj5e85JE0cyCQV3UM2m3aqkpoStHazVLAlm', NULL, 4.00, 'approved', 0, 33.62075390, 72.99677160, 0, 'xDOVAiRlh7zU9BxAK7PAzf3sQRQAqlPTq1N0fsuylPMUpJOLeOxYsm5dsy3u', '2018-09-19 23:36:08', '2018-10-30 20:47:14', 'manual', NULL),
(143, 'Debasish', 'Gharami', 'debasishgharami12@gmail.com', '+918101312954', '$2y$10$D.lsj5vjFgJTOlr1XO3dUuDO7LYTJ7/KrbFZz.ClcpNc56/v8/Dmu', NULL, 5.00, 'approved', 0, 22.58307930, 88.44312470, 0, NULL, '2018-09-22 18:56:26', '2018-09-22 20:36:30', 'manual', NULL),
(144, 'asd', 'dsa', 'pero@gmail.com', '+38978280113', '$2y$10$l8S8ZI1Fh3HZsGPSIYVFy.s2Yo4HsiCdIZWzj3/xLAfIBomMZr83y', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2018-09-23 05:33:05', '2018-09-23 05:33:05', 'manual', NULL),
(145, 'Faris', 'Ss', 'fbi.92@yahoo.com', '+962797676077', '$2y$10$/7YNuj4sygqg.ndeoc7bEOigyxk3PiXE2Fn8Sf1eWWjSY//CNYrtq', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2018-09-26 02:58:33', '2018-09-26 02:58:33', 'manual', NULL),
(146, 'bilal', 'khan', 'bilal@gmail.com', '+923440660242', '$2y$10$qxCOdogDHsXf/HRhm8PGLuHzmgIGf1p02NAJsGnck1uFMeedkxYIi', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2018-10-29 20:37:07', '2018-10-29 20:37:07', 'manual', NULL),
(147, 'Muhammad', 'Tayyab', 'tayyab@macrotechgroups.com', '+923082097852', '$2y$10$i2.qGxhklFuNUYeq/6qLBuVdiwhtMfqcO26374g5ThJJhIhPq.km.', NULL, 5.00, 'onboarding', 0, 31.17040630, 72.70971610, 0, NULL, '2019-07-18 18:19:15', '2019-07-18 18:27:46', 'manual', NULL),
(148, 'Admin', 'Admin', 'admin@macrotechgroups.com', '+923082097852', '$2y$10$JiUgPq2QUMhiQ0Qn2yRgjeIrJ7xcFpX6iT4mtRiAXDiM8J4jnKbWe', NULL, 5.00, 'onboarding', 0, 31.46916810, 74.29838040, 0, 'ZZuoVUICv2VWzSKBL3ClF27bWxiQqSDTTHxMVIPy5nyBScy0qYmL1I11vrO6', '2019-07-26 11:24:09', '2019-07-26 11:24:22', 'manual', NULL),
(149, 'Muhammad', 'Tayyab', 'tayyab@larasoft.io', '+923082097852', '$2y$10$mVF5Fni6AQGCZu.v1MLun.tgc/xkwYR3gja9qaPye03nvjPHBGM7G', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2019-08-13 20:17:18', '2019-08-13 20:17:18', 'manual', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provider_devices`
--

CREATE TABLE `provider_devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `udid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sns_arn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_devices`
--

INSERT INTO `provider_devices` (`id`, `provider_id`, `udid`, `token`, `sns_arn`, `type`, `created_at`, `updated_at`) VALUES
(1, 114, '', '', NULL, 'android', '2018-01-27 08:34:05', '2018-09-19 21:09:23'),
(2, 115, '', '', NULL, 'android', '2018-01-28 06:35:32', '2018-03-28 03:07:46'),
(3, 116, '5D92BD48-C6DA-4EBA-AF63-5E3629E51AA7', 'AABBCCDDEEFF', NULL, 'ios', '2018-02-01 07:26:57', '2018-09-23 14:43:53'),
(4, 117, '', '', NULL, 'android', '2018-02-21 01:39:52', '2018-07-14 19:28:20'),
(5, 118, 'BBFCE0B3-90BD-4A17-8A87-CE0BCB3CA7BD', 'AABBCCDDEEFF', NULL, 'ios', '2018-02-22 13:25:44', '2018-03-25 07:36:23'),
(6, 119, '2A02490E-9E3B-4B00-B10C-AFF2F6551C2B', 'AABBCCDDEEFF', NULL, 'ios', '2018-02-23 09:01:10', '2018-03-08 09:46:24'),
(7, 120, 'f646e58186f51f5e', 'eJrNbfp1SE4:APA91bGzxm4rm50dP9CkKTfyF_3-ttKZe2bWeYIqK7GKeCgJ-5ejDSGt2jUhV4H48nBkW7tOK4VFqCEYjKAtBnpoSSOg05BeQBn-LiRFb4ZSskm-Mf7huv3FajMTQWWfvzOHm0V-Q667', NULL, 'android', '2018-02-28 07:57:12', '2018-02-28 07:57:13'),
(8, 121, '9DC1296B-6B05-4D19-B88D-B58A85F757DC', '759d31e4f07dc51de47ae9b8066eeb5a4354512b4e970e9bba5c014ebfcb9377', NULL, 'ios', '2018-03-01 14:13:09', '2018-03-01 14:13:10'),
(9, 122, '211472F7-AB55-48BE-9E7D-2A1563775969', '38ae6f0ad0d2128a4de5e89fa411980b791f9da143f2c66c27513bf73b5d2b39', NULL, 'ios', '2018-03-13 08:24:29', '2018-03-13 08:24:29'),
(10, 123, 'd3533a1265c20f34', 'dErtx7D6ZCg:APA91bFstqjwvx5XQYXQmSImq7_MvQvarduCfoegPcrIRGuzZIPFY_M3jib0zJnKBrgqGTWCDle96lOtuqhq9jv2VS9WOeJeoZV73G1mumlL_lPOwidN43pTSj-LuSWKS8ESwByw57Yi6UWqVBLMkj7E7fwSQA2mPg', NULL, 'android', '2018-03-20 05:05:17', '2018-06-29 01:18:50'),
(11, 124, '', '', NULL, 'ios', '2018-03-27 04:15:43', '2018-03-27 04:17:23'),
(12, 125, '', '', NULL, 'android', '2018-03-28 03:10:55', '2018-03-28 03:20:12'),
(13, 126, '119D23C0-6ECF-437E-A025-89761AE1A3EE', 'c06b6bb1d06b6fc441c24b5fd5ce00ae1d79420f33a86bec51af310ee2bd0916', NULL, 'ios', '2018-03-28 17:33:58', '2018-03-28 17:38:57'),
(14, 127, 'd3533a1265c20f34', 'cv5s9VShj38:APA91bFeQfdzXBE1l8modkPgx4VbCmhRepGaV5oWxTpf_Zpk9Up__Vb2KKreYbXyj3ISX8ibwAIOnUwflTUlQIaAEsr7fKk9YFWT-8ni8Mo-jmdIJqrcYdAo-GYVCUujRfeKW1ZuTuKn', NULL, 'android', '2018-03-29 06:39:58', '2018-05-25 23:46:26'),
(15, 128, 'd3533a1265c20f34', 'fpw7xJo8TNc:APA91bEy7JsgZiQ1iM956gkY-SxRP99kj4v09HUhI8M56yAThcz8nhz_IznhohEfvo5bUbnALMMIV2CwibTtdZbTeL8IGgh13QSFW3dHMcoWLJqqSm_p5EQPLd5ZD2TOQmMwKzu10Fva', NULL, 'android', '2018-03-29 06:43:44', '2018-03-29 06:43:45'),
(16, 129, 'd3533a1265c20f34', 'cv5s9VShj38:APA91bFeQfdzXBE1l8modkPgx4VbCmhRepGaV5oWxTpf_Zpk9Up__Vb2KKreYbXyj3ISX8ibwAIOnUwflTUlQIaAEsr7fKk9YFWT-8ni8Mo-jmdIJqrcYdAo-GYVCUujRfeKW1ZuTuKn', NULL, 'android', '2018-03-29 07:50:46', '2018-05-25 23:46:56'),
(17, 130, '934D9953-C901-4DE1-AF5A-5B5CFDB0E82A', '555c0bc6f65266a6b3749e82bcda3620c8dc8f5e1f8670f332f1808ca6e37914', NULL, 'ios', '2018-03-29 08:13:49', '2018-04-07 09:54:37'),
(18, 131, '322da2e9c95eadcc', 'fr1g3-zmM-U:APA91bFITARo9pEA_rj73q0qz2GMDyhZErzyNCr4JpNiz_7KYTMcQrMyyXELBDiun-23rlROyfME-kj_dSyG01DRQaohpOsAQ-PsuabR6RzxRGnszj_uxcKqit9D5hQP5v5Y0TNdENZh', NULL, 'android', '2018-03-29 08:33:12', '2018-04-09 07:51:57'),
(19, 132, '386252fe999b4bd', 'cqQL5jVevHM:APA91bFNxQLK1y-KnHO6U_h82VtkgqDmPdRQ8r-TJdc5twNmZS1rENeGsIwZurfw3PvHL2cxirS1x5aVa3bd0yxKjSgOdtTIfO4YGmkR5GgkPTRq-yIbSiWyIbvwXsreRnCrC3VFf6NN', NULL, 'android', '2018-03-29 13:44:20', '2018-04-09 18:50:54'),
(20, 133, 'c97a730a29b5d22a', 'cwDgnghIJVo:APA91bFBeVQNW6EpELjTq4Si2NwlQLy5O8uh4EXp-FZgSo_tMu7bUW3SevxTcs4e6blyXayIiWeVuowKdM53kPSf-w9bZIlYUYE8WzIvGB4tCwU0Y_lKhb3mIrze64miFKcaO1H4gBQe', NULL, 'android', '2018-04-04 04:52:04', '2018-04-09 17:26:59'),
(21, 131, '322da2e9c95eadcc', 'fr1g3-zmM-U:APA91bFITARo9pEA_rj73q0qz2GMDyhZErzyNCr4JpNiz_7KYTMcQrMyyXELBDiun-23rlROyfME-kj_dSyG01DRQaohpOsAQ-PsuabR6RzxRGnszj_uxcKqit9D5hQP5v5Y0TNdENZh', NULL, 'android', '2018-04-09 07:51:57', '2018-04-09 07:51:57'),
(22, 132, '386252fe999b4bd', 'cqQL5jVevHM:APA91bFNxQLK1y-KnHO6U_h82VtkgqDmPdRQ8r-TJdc5twNmZS1rENeGsIwZurfw3PvHL2cxirS1x5aVa3bd0yxKjSgOdtTIfO4YGmkR5GgkPTRq-yIbSiWyIbvwXsreRnCrC3VFf6NN', NULL, 'android', '2018-04-09 08:30:18', '2018-04-09 08:30:18'),
(23, 133, 'c97a730a29b5d22a', 'cwDgnghIJVo:APA91bFBeVQNW6EpELjTq4Si2NwlQLy5O8uh4EXp-FZgSo_tMu7bUW3SevxTcs4e6blyXayIiWeVuowKdM53kPSf-w9bZIlYUYE8WzIvGB4tCwU0Y_lKhb3mIrze64miFKcaO1H4gBQe', NULL, 'android', '2018-04-09 17:26:59', '2018-04-09 17:26:59'),
(24, 134, 'bbfd3ff1667231e1', 'eLzoJknvLT8:APA91bGSHZnlYm_zlTcQ4HK3OtlLUwMbF0q_j9amHl_dNP0cMXjmuffV0-rOxu2L7hizmQQgw_09SAGTVpelCu9KzZWHDD2v0K7ua0-ktcW1vYXBPtqrzV_skGtBYIBmajXUvS_NtapU', NULL, 'android', '2018-04-09 19:08:48', '2018-04-14 00:17:27'),
(25, 135, 'd1f4402a092f4d40', 'ce3j06DE3-M:APA91bEjHc2BCOSyP30nJUMXbTNJHuaQbyfrLYw_7Jgiqb_TjKCN7pUU_SETQ5RdAKDaAblWPBeF7u3iIdPVnjUXw8VVZHXgbCZ86qafVewRInhyvB8RKLbv-OCndJtfuj17G1wBF_p7', NULL, 'android', '2018-04-11 21:02:33', '2018-04-11 21:02:33'),
(26, 136, '5f20066121524873', 'fC_urhElNJw:APA91bFnS5qjWEHZjrtclpiu_nCBIyS1zzxH_-8bfMq3qd7l45qUMyxqYn8ZI4wxl8iSRME13rWAsNUh8RUzvOnfBTw0bh4i0UFW6LCWxci6JGVNGLV9cX_a5FJZYd9V-Fnv8W3mwVF0', NULL, 'android', '2018-04-18 18:07:11', '2018-09-19 11:09:45'),
(27, 137, 'd1f4402a092f4d40', 'cbhqGkc2GzA:APA91bH_rPKhPXvJhJ9ohSB-miRE4zmtp_hjaQY8lpUvdX74TcAuPUZO8GHUV37_49r6fWTUkD2RVR888WSFtItNnAodd7c0uDRuS-vlqmeYt4f9OPexaW-G6Q3kmSXys0V_DLbqxIZe', NULL, 'android', '2018-04-18 19:46:10', '2018-04-18 19:46:10'),
(28, 138, '5EF11882-8997-4E72-8041-091B45163B17', 'ea28421dcb8598384513ffa6106a6c30083a8cc705e796b860bf07fdf56e3517', NULL, 'ios', '2018-05-03 09:01:48', '2018-05-03 09:01:48'),
(29, 139, 'BAFD1C0F-5415-465B-AA3C-9DFAE521C960', '55990e8fb8744badb8342071882107597166d1500a215e9bab4fa06ef0a5b143', NULL, 'ios', '2018-05-15 08:17:26', '2018-05-15 08:17:26'),
(30, 140, 'EF60C719-84E0-4D76-BF9C-F252F2F6DCB4', 'AABBCCDDEEFF', NULL, 'ios', '2018-05-26 04:54:51', '2018-05-27 19:57:20'),
(31, 141, 'c2e0db2180032631', 'eY2cFil2BsQ:APA91bFkQcBkHDlx7X1E1x3_Q8wv1e1s4F3xDVFMEi6r9wuAL4C6BByltGylpvYwTHLq45LyDHdoIJPNwfW8MjfF-DA4c6K8sdeEYvZvqX3c1ma95Qlz7gXxpUPJ9umSD7kWW4czIf20', NULL, 'android', '2018-05-31 07:24:47', '2018-05-31 07:24:48'),
(32, 142, 'cf77b0fac5f2520e', 'cPfUAfbl-2w:APA91bEGea90H83VpNn7ZkJ5gK8gxtcnyMmazhaQcyOc4DDv0QuakPgfnQM8cWfG3EH76rrpoo7vSSuurWdP4FydviXyEtwO42zkNvgxIRq5qx1-EOOqh0W8dvRkQRx7SWNVs6zSZXON', NULL, 'android', '2018-05-31 18:18:49', '2018-10-30 19:38:11'),
(33, 143, 'e5f43ff9d3a56ff6', 'fYEIbsFGfpY:APA91bGwot-zFUlFpMyyL1cXChp3Se8XOHT3Zj1-wdfbARfEXlhWKDlDJDIVpXFvjxPSCy1b7107d-Dx2MBtQqf1G2DAbMxYAi-97q0q7w1PAk4DI1QhC12Y5SqZ9PMIR7uz4gk0G8Gh', NULL, 'android', '2018-06-05 23:01:26', '2018-09-22 20:30:46'),
(34, 144, 'adbab47e3de9999b', 'c3Bdzkgdy2Q:APA91bHjFqRc_E9bhyed6tzgyHgOeFyqzB6d1UPZUw3vVGx99DulQFYo2UcSpmbaZ2ESqE_3cThjdkN79hnpc4Lfl6BrD1OW9NF746oMY2SkM86ViU5GcXAS_AK_8_vmr7wxBNiPWhpj', NULL, 'android', '2018-06-23 18:15:55', '2018-09-23 06:26:46'),
(35, 148, '1886ef8523766313', 'f9M5Mf-asdQ:APA91bFRAlyatkYaRL94kEM9O-XMJ_A-EgayZK01O33azOX6BYgPZulo6-q34gyIHW9Iq2U_43pwqB-jWDi6IFnRyLjdaoCmUVh2QpZdAlKO5liN_-ou4Tzlqnr-kqKp-vEgUVrcHESy2Ik9DmjAUXIlXH-f20o6xg', NULL, 'android', '2018-06-29 12:55:45', '2018-07-13 18:43:56'),
(36, 149, 'bb56c9489fa6781d', 'ds1Okz2Qnro:APA91bEeeEF-Ygauze1cYu_3ZnMLLlBzFPjQNiPzx0QyfXE2vxoV90thEozzIwj8uGo0kPOGYWC2Py3zNRlE1N9MDs6skagCknYihsWzk9M2PFrFbb-Igu3sYL9FXmnOiHHfj2EScKJPbaOAG3m5GZAjPNw2jrvcTg', NULL, 'android', '2018-07-09 18:24:00', '2018-07-09 18:24:01'),
(37, 150, 'bb56c9489fa6781d', 'ds1Okz2Qnro:APA91bEeeEF-Ygauze1cYu_3ZnMLLlBzFPjQNiPzx0QyfXE2vxoV90thEozzIwj8uGo0kPOGYWC2Py3zNRlE1N9MDs6skagCknYihsWzk9M2PFrFbb-Igu3sYL9FXmnOiHHfj2EScKJPbaOAG3m5GZAjPNw2jrvcTg', NULL, 'android', '2018-07-09 18:33:16', '2018-07-09 18:46:17'),
(38, 151, '4b589ec148d57665', 'cd-01neM8F4:APA91bHKttxzKZwtobALfUFYsXik23e28NfsgEc01WKtEUE8bY7cthPlH8mFOBg3kuwjwQG5t8i2fm83C52KwxGSoPZ1k3R_c6LIxt6b5AbzYcfgOczO2gHntYcu-zRSJ2OyFN4Db03jY9nUbiNCdJWgHhLAGqRkmA', NULL, 'android', '2018-07-09 20:58:09', '2018-07-09 23:38:07'),
(39, 152, '2645d16e4968da3d', 'cseLr3vrqVQ:APA91bFkzinCJ1i26doPc5lVe7loJjVu0Ky8pIA1wW2gjc3KNltdnS3ZJxf0r4FbUxwkY3xq_eyMOiGA7xN8h13nHIb1H9T7PCeiqgaUbBDhOd7js_8LBgcDpaDG2RyJvkSYBq4DppjIqARbPSqpkgoC1IlEeQXqqQ', NULL, 'android', '2018-07-17 06:02:51', '2018-07-17 06:02:52'),
(40, 153, '2645d16e4968da3d', 'cseLr3vrqVQ:APA91bFkzinCJ1i26doPc5lVe7loJjVu0Ky8pIA1wW2gjc3KNltdnS3ZJxf0r4FbUxwkY3xq_eyMOiGA7xN8h13nHIb1H9T7PCeiqgaUbBDhOd7js_8LBgcDpaDG2RyJvkSYBq4DppjIqARbPSqpkgoC1IlEeQXqqQ', NULL, 'android', '2018-07-17 06:08:42', '2018-07-17 12:19:05'),
(41, 154, '01E3BCD6-197B-4A48-B5AF-E0A67DF77F4B', '8088fcdc7fce2813494ed1adfb2e0fc8b53d7e15760ae67f1c245ec328bb4370', NULL, 'ios', '2018-07-19 09:09:00', '2018-07-19 09:09:01'),
(42, 155, 'AF05AAFC-2725-48F5-A972-F204D1376297', 'c7f1b46648aaa1daed48655d6dd319441d90d2c8f1cee9f1ba8481eb3add19c0', NULL, 'ios', '2018-07-21 01:36:25', '2018-07-21 01:36:25'),
(43, 146, '265d25d08d75e506', 'fFoH68R5SPw:APA91bF3oN1qfJMwIaq6rQKCG-olb37tCJWri483NJuaUXNgpA9i0piBsEpzkyhPvDKSqOOiy5D-MM6S7R8oABgIFp5pBolJU_yJZdSRYpRYqMAANzi10XwYIzSsPmOP6L3UrrvZT2WN', NULL, 'android', '2018-07-24 19:29:57', '2018-10-29 20:37:08'),
(44, 156, 'b0bd5d15a9718fb1', 'e185fwD4t6Y:APA91bHYd-dYCBzEt_TLzzHGpOLxppMcNC3oHgSa5fE8drZq_xzZRV9E6ibHz2HREtXGbk17zpncd93HhIf4AIly3vYL8r4ID80gqeSE-n9yWComXKdyBI3ceHBSCRXNQlma9ZXiWrNVunL8jf2iahsXzQX-2GBhdQ', NULL, 'android', '2018-07-25 22:53:40', '2018-07-26 00:51:58'),
(45, 157, 'b0bd5d15a9718fb1', 'fe2DT53_7nk:APA91bHh1-jcCE0-MI9G7H2tpDSjN3XFupRqbgtl8sTYcw3W5zRILDC5uABxhQwOaq6eTdftEVhAAbsMeZQdk3iruHSR8CA-yGzIJ018K0z6_OQmCnZ-q-eVhLE0DXQktHUelLzkm_dYLUUxAbUZeWU443HIxXYjkA', NULL, 'android', '2018-08-02 00:18:59', '2018-08-02 02:30:19'),
(46, 158, 'aaf276c754022c0a', 'e3-gCelhkwQ:APA91bFf9ZDJ-grusHb_WadfDC2u9O2KRp3zxG16zDdYqhHIQ8u3OKmK1q9-H_hQaXyZ9ixiSEWgxC6tfMzuFI2K3Yp-rJuQlZ_DrTDZbtON49sapOHxY6I7giq6gf2UX_bNlrdAeeKb7EYPC1CyDHKXBh4G1fqh5g', NULL, 'android', '2018-08-02 04:30:43', '2018-08-02 04:30:44'),
(47, 159, '0454E1C9-FDA5-4C63-8A77-088D6027CB60', 'ac3d1bf26950225a5bfc63bf03f08f7ac3a8e11660d703abdede8334700d55cf', NULL, 'ios', '2018-08-02 21:53:39', '2018-08-02 21:53:39'),
(48, 147, '273d9db01506c767', 'fTEuRisqstU:APA91bHTUp5vq8TWTlSQmRE0pfOWAiO9lNF7g2Vuh_1vSFr6VgzZ1Gaj0EFnRJx7wvxOWRrqxsQfJsjfRHeONoERCmrJ1FYrJtig7dvUMB02w5is_dZmp-UpCEC_dMfibJG_RuhK01t7P-YuV7zSabPFLJPkU_zuIA', NULL, 'android', '2018-08-08 00:12:33', '2018-08-08 00:12:33'),
(49, 160, '63deaa3fad891b86', 'eXf3_3HfpIs:APA91bGZpNfLocgpP7x2WuBcpUuwqAKmRNAKZA8iHponmMg9HkuHIeUhQSRZ-jdDE4tYa6wZ8GLoffhULAPSnEDJ_ugI6pMl77az36lzrOWBqHc3clYIYlgITH3c4cKfzIwlB5hjjptr', NULL, 'android', '2018-08-08 00:25:47', '2018-08-29 18:35:06'),
(50, 161, '58569C89-A51D-4245-92F1-46F66560246F', '2d755822d732df7838db3a7dcfb15a903d25f902de39196916ad5bc68d3f89ae', NULL, 'ios', '2018-08-11 23:53:03', '2018-08-11 23:53:04'),
(51, 163, '24dc2cf55ca80795', 'fnvSk3lBtW0:APA91bHrK4xLupZ1urzLy0YJzo0F3kbWzQXNdErYeeTCgQevY09rQJAUSdXm3yw6PDTBDTKuHCNB_tnLo7ANZ9a5mxuSYof_BxxtdSQKYrqF66TTbqfkz4twQZ-3hOSlTzGEOJYUDDc8SjjL_kgCfbjUKzjaSDVlgQ', NULL, 'android', '2018-08-20 10:40:48', '2018-09-10 07:47:44'),
(52, 164, '24dc2cf55ca80795', 'fnvSk3lBtW0:APA91bHrK4xLupZ1urzLy0YJzo0F3kbWzQXNdErYeeTCgQevY09rQJAUSdXm3yw6PDTBDTKuHCNB_tnLo7ANZ9a5mxuSYof_BxxtdSQKYrqF66TTbqfkz4twQZ-3hOSlTzGEOJYUDDc8SjjL_kgCfbjUKzjaSDVlgQ', NULL, 'android', '2018-08-25 09:28:49', '2018-09-05 07:41:52'),
(53, 165, '370CC2E6-6135-4291-B6A1-443C685D4C01', '8154d8ddf2df821370e3e1645eb2e3b009078b47be1252026c8f2c92437fbde2', NULL, 'ios', '2018-08-30 04:47:53', '2018-08-30 04:47:54'),
(54, 167, '32A59ED3-4EFF-4F24-A5D3-E83F24C68B64', 'e73e083d3c3b286510a0fd327810dd37574c534cfe7bde215d6b39161f39b29a', NULL, 'ios', '2018-09-05 03:04:03', '2018-09-05 03:04:04'),
(55, 168, '', '', NULL, 'android', '2018-09-07 15:47:12', '2018-09-10 23:05:48'),
(56, 169, '24dc2cf55ca80795', 'd763gxQLoww:APA91bEnEqHmmPTN5DzBAWHrYcjvJhGBq72DOdRe1hp6zAQ_XtiLfWf-Mgag5INiguLI4EJbHLWNALApVtpBUsVutC7SpLQeZoWJ_uskI_x4CJzfOzm9-qiOL5M4HhEV2C-JWH615-6A', NULL, 'android', '2018-09-10 23:06:43', '2018-09-14 04:54:34'),
(57, 170, '5266eb046f0859e6', 'dgevPMN0xtE:APA91bEN6T3ZFOHUq1JGwM0MGIHokcWbMElIG2MWL5mTIDIPM6MYG7YVKvTIjmCVaogARYkG1OXlQUDqUPHzLUAUvS0k6mtIsIvFsTHBuFAB098PuKiXcf9UVJ632ywr7bSkhyQbGb4q', NULL, 'android', '2018-09-13 11:23:05', '2018-09-13 12:06:07'),
(58, 142, '', '', NULL, 'android', '2018-09-19 23:36:08', '2018-10-29 19:47:13'),
(59, 145, '21cc53a12d027a78', 'ewPCZiCekNU:APA91bECoTxbPGCNbkuTCT0cZZn7NbRFjXVHdgeEftXDsgArhVP258bFdbvTPl6YW5cBvQHqu8gS6bXUBEhstUX778cj3JaidSZeLSt-G3wdgD8FfqN-2ZDqKDl62_AiTaBHzxzHgBkp', NULL, 'android', '2018-09-26 02:58:33', '2018-09-26 03:06:39'),
(60, 146, '265d25d08d75e506', 'fFoH68R5SPw:APA91bF3oN1qfJMwIaq6rQKCG-olb37tCJWri483NJuaUXNgpA9i0piBsEpzkyhPvDKSqOOiy5D-MM6S7R8oABgIFp5pBolJU_yJZdSRYpRYqMAANzi10XwYIzSsPmOP6L3UrrvZT2WN', NULL, 'android', '2018-10-29 20:37:07', '2018-10-29 20:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `provider_documents`
--

CREATE TABLE `provider_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `document_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('ASSESSING','ACTIVE') COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider_profiles`
--

CREATE TABLE `provider_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_secondary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_profiles`
--

INSERT INTO `provider_profiles` (`id`, `provider_id`, `language`, `address`, `address_secondary`, `city`, `country`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 112, 'English', '', '', '', 'US', '', '2017-12-08 23:15:23', '2017-12-08 23:15:23'),
(2, 116, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-05 15:02:54', '2018-02-05 15:02:54'),
(3, 114, 'English', NULL, NULL, NULL, 'US', NULL, '2018-03-07 17:09:54', '2018-03-20 04:44:16'),
(4, 118, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-25 07:38:44', '2018-03-25 07:38:44'),
(5, 159, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-02 21:54:55', '2018-08-02 21:54:55'),
(6, 161, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-12 00:29:39', '2018-08-12 00:29:39'),
(7, 142, 'English', '1248 Russell ave. N', '', 'Minneapolis', 'US', '55411', '2018-10-29 07:56:16', '2018-10-29 07:56:16');

-- --------------------------------------------------------

--
-- Table structure for table `provider_services`
--

CREATE TABLE `provider_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('active','offline','riding') COLLATE utf8_unicode_ci NOT NULL,
  `service_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_services`
--

INSERT INTO `provider_services` (`id`, `provider_id`, `service_type_id`, `status`, `service_number`, `service_model`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(2, 2, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(3, 3, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(4, 4, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(5, 5, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(6, 6, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(7, 7, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(8, 8, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(9, 9, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(10, 10, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(11, 11, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(12, 12, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(13, 13, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(14, 14, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(15, 15, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(16, 16, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(17, 17, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(18, 18, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(19, 19, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(20, 20, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(21, 21, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(22, 22, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(23, 23, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(24, 24, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(25, 25, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(26, 26, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(27, 27, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(28, 28, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(29, 29, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(30, 30, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(31, 31, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(32, 32, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(33, 33, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(34, 34, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(35, 35, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(36, 36, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(37, 37, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(38, 38, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(39, 39, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(40, 40, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(41, 41, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(42, 42, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(43, 43, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(44, 44, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(45, 45, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(46, 46, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(47, 47, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(48, 48, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(49, 49, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(50, 50, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(51, 51, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(52, 52, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(53, 53, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(54, 54, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(55, 55, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(56, 56, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(57, 57, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(58, 58, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(59, 59, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(60, 60, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(61, 61, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(62, 62, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(63, 63, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(64, 64, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(65, 65, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(66, 66, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(67, 67, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(68, 68, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(69, 69, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(70, 70, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(71, 71, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(72, 72, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(73, 73, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(74, 74, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(75, 75, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(76, 76, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(77, 77, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(78, 78, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(79, 79, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(80, 80, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(81, 81, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(82, 82, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(83, 83, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(84, 84, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(85, 85, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(86, 86, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(87, 87, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(88, 88, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(89, 89, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(90, 90, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(91, 91, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(92, 92, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(93, 93, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(94, 94, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(95, 95, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(96, 96, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(97, 97, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(98, 98, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(99, 99, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(100, 100, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(101, 101, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(102, 102, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(103, 103, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(104, 104, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(105, 105, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(106, 106, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(107, 107, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(108, 108, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(109, 109, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(110, 110, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(111, 111, 1, 'active', '2335', 'AUDI', '2017-12-08 22:06:29', '2017-12-08 22:09:11'),
(112, 113, 3, 'offline', 'lxz 2344', 'suzuki 2017', '2017-12-08 23:11:47', '2017-12-08 23:15:23'),
(113, 112, 3, 'active', 'lxz 2344', 'suzuki 2017', '2017-12-08 23:12:31', '2017-12-09 00:36:07'),
(115, 115, 1, 'offline', '2211', '1990', '2018-01-28 06:34:38', '2018-03-28 03:07:46'),
(116, 116, 1, 'offline', '3939TX', 'Chrysler 200', '2018-02-01 11:07:50', '2018-09-23 14:46:03'),
(117, 118, 1, 'active', '123`', '2017', '2018-02-22 13:25:13', '2018-03-25 07:36:38'),
(118, 119, 1, 'offline', '5466', 'Audi A8L', '2018-02-23 09:03:05', '2018-03-08 09:47:49'),
(119, 121, 1, 'offline', 'RosemontEliteTaxi Cab # 153	', 'Dodge Cara Van', '2018-03-01 14:14:34', '2018-03-01 16:44:24'),
(120, 122, 1, 'offline', '211', '1990', '2018-03-13 08:40:39', '2018-03-13 08:44:29'),
(121, 123, 1, 'riding', '123', 'Audi', '2018-03-20 05:07:49', '2018-06-29 01:25:43'),
(122, 125, 1, 'active', '123', '2014', '2018-03-28 03:13:22', '2018-06-02 18:29:51'),
(123, 117, 1, 'offline', '123', '846', '2018-03-28 03:22:42', '2018-07-14 19:28:20'),
(124, 126, 1, 'active', 'CY 4547', 'AUDI A8', '2018-03-28 17:35:52', '2018-03-28 17:40:56'),
(125, 128, 1, 'riding', '57677', '6565', '2018-03-29 06:45:53', '2018-06-29 01:00:10'),
(126, 129, 1, 'active', '03202553174', '2014', '2018-03-29 07:54:11', '2018-05-25 23:49:41'),
(127, 131, 1, 'offline', '3', '3', '2018-03-29 08:33:58', '2018-03-29 08:57:41'),
(128, 132, 1, 'active', 'CY 7869', 'Audi R8 - Black', '2018-04-09 16:57:12', '2018-04-09 18:11:29'),
(129, 136, 1, 'active', '666', '1990', '2018-04-18 18:08:02', '2018-09-20 07:21:58'),
(130, 138, 1, 'offline', '123', '2014', '2018-05-03 22:25:31', '2018-05-03 22:25:31'),
(131, 141, 2, 'active', '08101312954', 'Audi A8 2015', '2018-05-31 07:26:27', '2018-05-31 07:54:37'),
(132, 149, 1, 'offline', '5310', 'Audi', '2018-07-09 18:42:20', '2018-07-09 18:42:20'),
(133, 150, 1, 'active', '5310', 'Audi', '2018-07-09 18:43:17', '2018-07-09 18:46:24'),
(134, 151, 1, 'offline', '5310', 'Audi', '2018-07-09 21:28:27', '2018-07-09 21:28:27'),
(135, 146, 1, 'active', 'sd455', 'mehran', '2018-07-24 19:30:14', '2018-07-24 19:36:46'),
(136, 160, 1, 'active', '624', 'mehran', '2018-08-08 00:26:41', '2018-08-29 18:38:30'),
(137, 162, 1, 'offline', '777 bn', 'sidan', '2018-08-20 10:32:44', '2018-08-20 10:32:44'),
(138, 163, 1, 'active', '777 BN', 'BMW 320', '2018-08-20 10:41:50', '2018-09-11 04:14:27'),
(140, 164, 1, 'active', 'BN787', 'BMW 320', '2018-08-25 09:31:59', '2018-09-08 23:48:01'),
(141, 166, 1, 'offline', '123', 'e class', '2018-09-01 02:51:30', '2018-09-01 02:51:30'),
(142, 114, 1, 'offline', '03202553174', '2014', '2018-09-09 22:42:56', '2018-10-29 07:56:16'),
(143, 168, 1, 'offline', 'sts35', 'mehran', '2018-09-10 23:02:51', '2018-09-10 23:05:48'),
(144, 169, 1, 'active', '624', 'hino', '2018-09-10 23:07:09', '2018-09-14 04:58:48'),
(145, 171, 1, 'active', '0087611204', 'audi a3', '2018-09-13 20:01:57', '2018-09-13 20:01:57'),
(146, 142, 1, 'riding', '03202553174', '2014', '2018-09-19 23:37:40', '2018-10-30 20:05:28'),
(147, 143, 1, 'active', 'DG8745ESW', 'Audi A7', '2018-09-22 18:56:26', '2018-09-22 20:35:55'),
(148, 144, 1, 'active', 'st-252525', 'bmx', '2018-09-23 05:33:05', '2018-09-23 05:33:05'),
(149, 147, 1, 'active', 'LEA 999', 'Prius', '2019-07-18 18:19:15', '2019-07-18 18:19:15'),
(150, 148, 1, 'active', 'LLH4032', 'Prius', '2019-07-26 11:24:09', '2019-07-26 11:24:09'),
(151, 149, 1, 'active', '67576', 'hj', '2019-08-13 20:17:18', '2019-08-13 20:17:18'),
(152, 145, 1, 'offline', '23', 'chey avalanch 71', '2019-11-24 10:11:14', '2019-11-24 10:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `request_filters`
--

CREATE TABLE `request_filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `request_filters`
--

INSERT INTO `request_filters` (`id`, `request_id`, `provider_id`, `status`, `created_at`, `updated_at`) VALUES
(9, 16, 114, 2, '2018-02-03 13:11:02', '2018-02-03 13:11:23'),
(10, 16, 115, 2, '2018-02-03 13:11:02', '2018-02-03 13:11:02'),
(93, 135, 123, 0, '2018-03-28 01:44:12', '2018-03-28 01:44:12'),
(94, 135, 115, 0, '2018-03-28 01:44:12', '2018-03-28 01:44:12'),
(130, 174, 123, 0, '2018-03-28 05:49:38', '2018-03-28 05:49:38'),
(131, 181, 114, 0, '2018-03-28 06:33:31', '2018-03-28 06:33:31'),
(132, 181, 123, 0, '2018-03-28 06:33:32', '2018-03-28 06:33:32'),
(138, 189, 123, 0, '2018-03-28 06:42:48', '2018-03-28 06:42:48'),
(155, 198, 114, 0, '2018-03-28 07:06:05', '2018-03-28 07:06:05'),
(156, 198, 123, 0, '2018-03-28 07:06:05', '2018-03-28 07:06:05'),
(157, 199, 114, 0, '2018-03-28 07:09:03', '2018-03-28 07:09:03'),
(158, 199, 123, 0, '2018-03-28 07:09:03', '2018-03-28 07:09:03'),
(159, 200, 114, 0, '2018-03-28 07:10:26', '2018-03-28 07:10:26'),
(160, 200, 123, 0, '2018-03-28 07:10:26', '2018-03-28 07:10:26'),
(161, 201, 123, 0, '2018-03-28 07:12:06', '2018-03-28 07:12:06'),
(180, 212, 123, 0, '2018-03-29 06:25:10', '2018-03-29 06:25:10'),
(181, 212, 114, 0, '2018-03-29 06:25:10', '2018-03-29 06:25:10'),
(182, 221, 123, 0, '2018-03-29 07:55:11', '2018-03-29 07:55:11'),
(183, 221, 128, 0, '2018-03-29 07:55:11', '2018-03-29 07:55:11'),
(184, 222, 123, 0, '2018-03-29 07:59:41', '2018-03-29 07:59:41'),
(185, 222, 128, 0, '2018-03-29 07:59:41', '2018-03-29 07:59:41'),
(186, 224, 123, 0, '2018-03-29 08:18:10', '2018-03-29 08:18:10'),
(187, 224, 128, 0, '2018-03-29 08:18:10', '2018-03-29 08:18:10'),
(188, 224, 129, 0, '2018-03-29 08:18:10', '2018-03-29 08:18:10'),
(190, 265, 123, 0, '2018-06-29 00:41:40', '2018-06-29 00:41:40'),
(191, 265, 128, 0, '2018-06-29 00:41:40', '2018-06-29 00:41:40'),
(192, 265, 129, 0, '2018-06-29 00:41:40', '2018-06-29 00:41:40'),
(193, 267, 123, 0, '2018-06-29 00:57:44', '2018-06-29 00:57:44'),
(194, 268, 128, 0, '2018-06-29 01:00:10', '2018-06-29 01:00:10'),
(195, 268, 129, 0, '2018-06-29 01:00:10', '2018-06-29 01:00:10'),
(196, 272, 123, 0, '2018-06-29 01:22:18', '2018-06-29 01:22:18'),
(198, 274, 123, 2, '2018-06-29 01:25:43', '2018-06-29 01:25:58'),
(199, 274, 129, 0, '2018-06-29 01:25:43', '2018-06-29 01:25:43'),
(214, 358, 142, 0, '2018-10-30 20:05:13', '2018-10-30 20:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `service_types`
--

CREATE TABLE `service_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT 0,
  `fixed` int(11) NOT NULL,
  `price` float NOT NULL,
  `minute` float NOT NULL,
  `distance` float NOT NULL,
  `calculator` enum('MIN','HOUR','DISTANCE','DISTANCEMIN','DISTANCEHOUR') COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_types`
--

INSERT INTO `service_types` (`id`, `name`, `provider_name`, `image`, `capacity`, `fixed`, `price`, `minute`, `distance`, `calculator`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rideshare', 'A-Team Taxi', 'http://ateamtaximsp.com./public/uploads/3c5e220492f5b80e7801074894cb9bc941f8e8c3.png', 5, 5, 1.05, 0.5, 2, 'DISTANCEMIN', NULL, 1, '2017-12-08 20:12:27', '2019-07-28 01:00:45'),
(2, 'Medical ', 'A-Team ', NULL, 16, 5, 1.25, 0.15, 1, 'DISTANCEMIN', 'Medical Transport', 0, '2019-07-15 17:38:17', '2019-07-15 17:38:17'),
(3, 'Courier ', 'Flash delivery ', NULL, 99, 5, 1.25, 0.25, 1, 'DISTANCEMIN', 'Courier deliver services', 0, '2019-07-28 01:02:40', '2019-07-28 01:02:40'),
(4, 'Take-Out', 'Flex-Delivery', NULL, 99, 3, 1.5, 0.25, 1, 'MIN', 'Take out delivery', 0, '2019-07-28 01:04:08', '2019-07-28 01:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'site_title', 'A-Team Taxi'),
(2, 'site_logo', 'https://ateamtaxi.us/public/uploads/a7c8583a3941efe4a944f837c4215bbd7f580098.jpg'),
(3, 'site_email_logo', 'http://localhost/logo-white.png'),
(4, 'site_icon', 'https://ateamtaxi.us/public/uploads/f141fd869e2c5a5dccbd5ead8eac35c2cd88d8eb.png'),
(5, 'site_copyright', '© 2019 A-Team Taxi'),
(6, 'provider_select_timeout', '20'),
(7, 'provider_search_radius', '8'),
(8, 'base_price', '50'),
(9, 'price_per_minute', '50'),
(10, 'tax_percentage', '8'),
(11, 'stripe_secret_key', '5XpiuNbcRQMY0kMWNreRcj9V'),
(12, 'stripe_publishable_key', '4D6SrnTv37wD0g5SZ92bqVY'),
(13, 'CASH', '1'),
(14, 'CARD', '0'),
(15, 'manual_request', '0'),
(16, 'default_lang', 'en'),
(17, 'currency', '$'),
(18, 'distance', 'Km'),
(19, 'scheduled_cancel_time_exceed', '10'),
(20, 'price_per_kilometer', '10'),
(21, 'commission_percentage', '1'),
(22, 'store_link_android', 'https://play.google.com/store/apps/details?id=com.goti.partnersnew'),
(23, 'store_link_ios', ''),
(24, 'daily_target', '65'),
(25, 'surge_percentage', '3'),
(26, 'surge_trigger', '1'),
(27, 'demo_mode', '0'),
(28, 'booking_prefix', ''),
(29, 'sos_number', '911'),
(30, 'contact_number', '5207775750'),
(31, 'contact_email', 'support@ateamtaxi.us'),
(32, 'social_login', '1'),
(33, 'page_privacy', '<p><br />\r\nPrivacy<br />\r\nTABLE OF CONTENTS<br />\r\nPrivacy Policy</p>\r\n\r\n<p>Introduction<br />\r\nWhen you use Shiftmode, you trust us with your information. We are committed to keeping that trust. That starts with helping you understand our privacy practices.</p>\r\n\r\n<p>This policy describes the information we collect, how it is used and shared, and your choices regarding this information. We recommend that you read this along with our Privacy Overview, which highlights key points about our privacy practices (including what information we collect, when we collect it, and how we use it).</p>\r\n\r\n<p>Effective Date: OCT. 23,2019</p>\r\n\r\n<p><br />\r\nData Collections And Uses<br />\r\nScope<br />\r\nSUMMARY<br />\r\nThis policy applies to users of Shiftmode services anywhere in the world, including riders of Shiftmode apps, websites, features or other services.</p>\r\n\r\n<p>This policy describes how Shiftmode and its affiliates collect and use personal information to provide our services. This policy applies to all users of our apps, websites, features or other services anywhere in the world, unless covered by a separate privacy policy such as the Shiftmode Privacy Policy.&nbsp;<br />\r\nThis is for all services provide through app and website.</p>\r\n\r\n<p>This policy specifically applies to:<br />\r\nRiders: users who request or receive transportation</p>\r\n\r\n<p>Drivers: users who provide transportation individually or through partner transportation companies</p>\r\n\r\n<p>Delivery Recipients: users who request deliveries of food or other items<br />\r\nDelivery Partners: users who provide delivery services</p>\r\n\r\n<p>This policy also applies to those who provide information to Shiftmode in connection with an application to use our services, or whose information Shiftmode otherwise receives in connection with its services (such as contact information of individuals associated with Shiftmode&nbsp; restaurant partners). All those subject to this policy are referred to as &ldquo;users&rdquo; for purposes of this policy.</p>\r\n\r\n<p>The practices described in this policy are subject to applicable laws in the places in which we operate. This means that we only engage in the practices described in this policy in a particular country or region if permitted under the laws of those places. Please contact us if you have questions on our practices in your country or region.</p>\r\n\r\n<p>Data Controller<br />\r\nSUMMARY<br />\r\nShiftmode provides services to users throughout the world. If you use our services in the United States, A-Team Mobility L.L.C. is the data controller for your information.&nbsp;</p>\r\n\r\n<p>We process personal information inside United States.</p>\r\n\r\n<p>If you live in the United States, the data controller for the information you provide or that is collected by Shiftmode or its affiliates is:</p>\r\n\r\n<p>&nbsp;A-Team Mobility.L.LC.<br />\r\n&nbsp;1700 S 1st. Ave.<br />\r\n&nbsp;Yuma,AZ,85365</p>\r\n\r\n<p>Questions, comments and complaints about Shiftmode data practices can be submitted to&nbsp;<br />\r\nShiftmode data protection office through here.<br />\r\nWe process personal information inside and outside of the United States. Shiftmode transfers information of users&#39; outside the United States on the basis of mechanisms approved under applicable laws.</p>\r\n\r\n<p>The Information We Collect<br />\r\nSUMMARY<br />\r\nShiftmode collects:</p>\r\n\r\n<p>Information that you provide to Shiftmode, such as when you create your Shiftmode account.<br />\r\nInformation created when you use our services, such as location, usage and device information.<br />\r\nInformation from other sources, such as Shiftmode partners and third parties that use Shiftmode APIs.<br />\r\nThe following information is collected by or on behalf of Shiftmode:</p>\r\n\r\n<p>Information you provide<br />\r\nThis may include:</p>\r\n\r\n<p>User profile: We collect information when you create or update your Shiftmode account. This may include your name, email, phone number, login name and password, address, payment or banking information (including related payment verification information), government identification numbers such as Social Security number, driver&rsquo;s license or passport if required by law, birth date, photo and signature. This also includes vehicle or insurance information of drivers. This also includes the preferences and settings that you enable for your Shiftmode account.<br />\r\nBackground check information: We may collect background check information if you sign up to use Shiftmode services as a driver or delivery partner. This may include information such as your driver history or criminal record (where permitted by law). This information may be collected by a vendor on Shiftmode behalf.<br />\r\nDemographic data: We may collect demographic information about you, including through user surveys. In some countries, we may also receive demographic information about you from third parties.<br />\r\nUser content: We may collect information that you submit when you contact Shiftmode customer support, provide ratings or compliments for other users, or otherwise contact Shiftmode.<br />\r\nInformation created when you use our services<br />\r\nThis may include:</p>\r\n\r\n<p>Location Information</p>\r\n\r\n<p>Depending on the Shiftmode services that you use, and your app settings or device permissions, we may collect your precise or approximate location information as determined through data such as GPS, IP address and WiFi.</p>\r\n\r\n<p>If you are a driver or delivery partner, Shiftmode collects location information when the Shiftmode app is running in the foreground (app open and on-screen) or background (app open but not on screen) of your device.<br />\r\nIf you are a rider and have provided permission for the processing of location data, Shiftmode collects location information when the Shiftmode app is running in the foreground. In certain regions, Shiftmode also collects this information when the Shiftmode app is running in the background of your device if this collection is enabled through your app settings or device permissions.<br />\r\nRiders and delivery recipients may use the Shiftmode app without enabling Shiftmode to collect their location information. However, this may affect the functionality available on your Shiftmode app. For example, if you do not enable Shiftmode to collect your location information, you will have to manually enter your pickup address. In addition, location information will be collected from the driver during your trip and linked to your account, even if you have not enabled Shiftmode to collect your location information.<br />\r\nTransaction Information</p>\r\n\r\n<p>We collect transaction details related to your use of our services, including the type of services you requested or provided, your order details, delivery information, date and time the service was provided, amount charged, distance traveled, and payment method. Additionally, if someone uses your promotion code, we may associate your name with that person.</p>\r\n\r\n<p>Usage information</p>\r\n\r\n<p>We collect information about how you interact with our services. This includes information such as access dates and times, app features or pages viewed, app crashes and other system activity, type of browser, and third-party sites or service you were using before interacting with our services. In some cases, we collect this information through cookies, pixel tags, and similar technologies that create and maintain unique identifiers. To learn more about these technologies, please see our Cookie Statement.<br />\r\nDevice Information</p>\r\n\r\n<p>We may collect information about the devices you use to access our services, including the hardware models, device IP address, operating systems and versions, software, file names and versions, preferred languages, unique device identifiers, advertising identifiers, serial numbers, device motion information, and mobile network information.</p>\r\n\r\n<p>Communications data</p>\r\n\r\n<p>We enable users to communicate with each other and Shiftmode through the Shiftmode apps, websites, and other services. For example, we enable drivers and riders, and delivery partners and recipients, to call or text each other (in some countries, without disclosing their telephone numbers to each other). To provide this service, Shiftmode receives some information regarding the calls or texts, including the date and time of the call/text, and the content of the communications. Shiftmode may also use this information for customer support services (including to resolve disputes between users), for safety and security purposes, to improve our products and services and for analytics.</p>\r\n\r\n<p>Information from other sources<br />\r\nThese may include:</p>\r\n\r\n<p>User feedback, such as as ratings or compliments.</p>\r\n\r\n<p>Users providing your information in connection with referral programs.</p>\r\n\r\n<p>Users requesting services for or on your behalf.</p>\r\n\r\n<p>Users or others providing information in connection with claims or disputes.</p>\r\n\r\n<p>Shiftmode business partners through which you create or access your Shiftmode account, such as payment providers, social media services, on-demand music services, or apps or websites who use Shiftmode APIs or whose API Shiftmode uses (such as when you order a ride through Google Maps).<br />\r\nInsurance providers (if you are a driver or delivery partner).</p>\r\n\r\n<p>Financial services providers (if you are a driver or delivery partner).</p>\r\n\r\n<p>Partner transportation companies (if you are a driver who uses our services through an account associated with such a company).</p>\r\n\r\n<p>The owner of an Shiftmode for Business or Shiftmode Family profile that you use.</p>\r\n\r\n<p>Publicly available sources.</p>\r\n\r\n<p>Marketing service providers.</p>\r\n\r\n<p>Shiftmode may combine the information collected from these sources with other information in its possession.</p>\r\n\r\n<p>How We Use Your Information<br />\r\nSUMMARY&nbsp;</p>\r\n\r\n<p>Shiftmode collects and uses information to enable reliable and convenient transportation, delivery and other products and services. We also use the information we collect:</p>\r\n\r\n<p>To enhance the safety and security of our users and services<br />\r\nFor customer support<br />\r\nFor research and development<br />\r\nTo enable communications to or between users<br />\r\nTo provide promotions or contests<br />\r\nIn connection with legal proceedings<br />\r\nShiftmode does not sell or share your personal information to third parties for third party direct marketing purposes.</p>\r\n\r\n<p>Shiftmode uses the information it collects for purposes including:</p>\r\n\r\n<p>Providing services and features Shiftmode uses the information we collect to provide, personalize, maintain and improve our products and services. This includes using the information to:</p>\r\n\r\n<p>Create and update your account.<br />\r\nVerify your identity.<br />\r\nEnable transportation, deliveries, and other services. This includes automated processing of your information to enable Dynamic Pricing, in which the price of a ride is determined based on constantly varying factors such as the estimated time and distance of the predicted route, estimated traffic, and the number of riders and drivers using Shiftmode at a given moment.<br />\r\nProcess or facilitate payments for those services.<br />\r\nOffer, obtain, provide or facilitate insurance or financing solutions in connection with our services.<br />\r\nTo track the progress of your ride or delivery.<br />\r\nEnable features that allow you to share information with other people, such as when you submit a compliment about a driver, refer a friend to Shiftmode, split fares, or share your ETA.<br />\r\nEnable features to personalize your Shiftmode account, such as creating bookmarks for your favorite places, and to enable quick access to previous destinations.<br />\r\nEnable Accessibility features that make it easier for users with disabilities to use our services, such as those which enable deaf or hard-of-hearing drivers to alert their riders of their disabilities, allow only text messages from riders, and to receive flashing trip request notifications instead of sound notifications.<br />\r\nPerform internal operations necessary to provide our services, including to troubleshoot software bugs and operational problems, to conduct data analysis, testing, and research, and to monitor and analyze usage and activity trends.<br />\r\nSafety and security<br />\r\nWe use your data to help maintain the safety, security and integrity of our services and users. This includes, for example:</p>\r\n\r\n<p>Screening drivers and delivery partners prior to enabling their use of our services and at subsequent intervals, including through reviews of background checks where permitted by law, to prevent use of our services by unsafe drivers.<br />\r\nUsing information from drivers&rsquo; devices to identify unsafe driving behavior such as speeding or harsh braking and acceleration, and to raise awareness among drivers regarding such behaviors.<br />\r\nour Real-Time ID Check feature, which prompts drivers to share a selfie before going online. This helps ensure that the driver using the app matches the Shiftmode account we have on file, preventing fraud and helping to protect other users.<br />\r\nUsing device, location, profile, usage and other information to prevent, detect, and combat fraud or unsafe activities. This includes processing of such information, in certain countries, to identify practices or patterns that indicate fraud or risk of safety incidents. This may also include information from third parties. In certain cases such incidents may lead to deactivation by means of an automated decision making process. Users in the US have the right to object to this type of processing; see Section II.I.1.d for more information<br />\r\nUsing user ratings to encourage improvement by affected users, and as grounds for deactivating users with ratings below a certain minimum as may be required in their region. Calculation and deactivation may be done through an automated decision making process. Users in the US have the right to object to this type of processing; see Section II.I.1.d for more information.<br />\r\nCustomer support Shiftmode uses the information we collect (including recordings of customer support calls after notice to you and with your consent) to assist you when you contact our customer support services, including to:</p>\r\n\r\n<p>Direct your questions to the appropriate customer support person<br />\r\nInvestigate and address your concerns<br />\r\nMonitor and improve our customer support responses<br />\r\nResearch and development<br />\r\nWe may use the information we collect for testing, research, analysis and product development. This allows us to improve and enhance the safety and security of our services, develop new features and products, and facilitate insurance and finance solutions in connection with our services.</p>\r\n\r\n<p>Communications among users<br />\r\nShiftmode uses the information we collect to enable communications between our users. For example, a driver may text or call a rider to confirm a pickup location, or a restaurant or delivery partner may call a delivery recipient with information about their order.</p>\r\n\r\n<p>Communications from Shiftmode may use the information we collect to communicate with you about products, services, promotions, studies, surveys, news, updates and events.</p>\r\n\r\n<p>Shiftmode may also use the information to promote and process contests and sweepstakes, fulfill any related awards, and serve you relevant ads and content about our services and those of our business partners. You may receive some of these communications based on your profile as an Shiftmode user. Users in the US have the right to object to this type of processing; see Section II.I.1.d for more information.</p>\r\n\r\n<p>Shiftmode may also use the information to inform you about elections, ballots, referenda and other political and policy processes that relate to our services.</p>\r\n\r\n<p>Legal proceedings and requirements<br />\r\nWe may use the information we collect to investigate or address claims or disputes relating to your use of Shiftmode services, or as otherwise allowed by applicable law, or as requested by regulators, government entities, and official inquiries.</p>\r\n\r\n<p>Cookies And Third Party Technologies<br />\r\nSUMMARY Shiftmode and its partners use cookies and other identification technologies on our apps, websites, emails, and online ads for purposes described in this policy.</p>\r\n\r\n<p>Cookies are small text files that are stored on your browser or device by websites, apps, online media, and advertisements. Shiftmode uses cookies and similar technologies for purposes such as:<br />\r\nAuthenticating users<br />\r\nRemembering user preferences and settings<br />\r\nDetermining the popularity of content<br />\r\nDelivering and measuring the effectiveness of advertising campaigns<br />\r\nAnalyzing site traffic and trends, and generally understanding the online behaviors and interests of people who interact with our services We may also allow others to provide audience measurement and analytics services for us, to serve advertisements on our behalf across the Internet, and to track and report on the performance of those advertisements. These entities may use cookies, web beacons, SDKs, and other technologies to identify your device when you visit our site and use our services, as well as when you visit other online sites and services. Please see our Cookie Statement for more information regarding the use of cookies and other technologies described in this section, including regarding your choices relating to such technologies.<br />\r\nInformation Sharing And Disclosure<br />\r\nSUMMARY<br />\r\nSome of Shiftmode products, services and features require that we share information with other users or at your request. We may also share your information with our affiliates, subsidiaries and business partners, for legal reasons or in connection with claims or disputes.</p>\r\n\r\n<p>Shiftmode may share the information we collect:</p>\r\n\r\n<p>With other users<br />\r\nFor example, if you are a rider, we may share your first name, average rider rating given by drivers, and pickup and/or dropoff locations with drivers. If you share an Shiftmode Pool trip with another rider, that rider may be told your name and may see your pickup and/or dropoff location.</p>\r\n\r\n<p>If you are a driver or delivery partner, we may share information with your rider(s) including name and photo; vehicle make, model, color, license plate, and vehicle photo; location; average rating provided by riders; total number of trips; for how long you have been using the Shiftmode app; and contact information (depending upon applicable laws). If you choose to complete a driver profile, we may also share any information associated with that profile, including information that you submit and compliments that past riders have submitted about you. The rider/delivery recipient will also receive a receipt containing information such as a breakdown of amounts charged, your first name, photo, and a map of the route you took.</p>\r\n\r\n<p>At your request<br />\r\nThis includes sharing your information with:</p>\r\n\r\n<p>Other people at your request. For example, we may share your ETA and location with a friend at your request, or your trip information when you split a fare with a friend.<br />\r\nShiftmode business partners. For example, if you requested a service through a partnership or promotional offering made by a third party, Shiftmode may share your information with those third parties. This may include, for example, other apps or websites that integrate with our APIs, vehicle suppliers, or services, or those with an API or service with which we integrate, or business partners with whom Shiftmode may partner with to deliver a promotion, a contest or a specialized service.<br />\r\nWith the general public when you submit content to a public forum<br />\r\nWe love hearing from our users -- including through public forums such as Shiftmode blogs, social media, and certain features on our network. When you communicate with us through those channels, your communications may be viewable by the public.<br />\r\nWith the owner of Shiftmode accounts that you may use<br />\r\nIf you use a profile associated with another party we may share your trip information with the owner of that profile. This occurs, for example, if you are:</p>\r\n\r\n<p>A rider using your employer&rsquo;s Shiftmode for Business profile, or taking trips arranged through Shiftmode.<br />\r\nA driver using an account owned by a partner transportation company.<br />\r\nA rider who takes a trip arranged by a friend or under a Family Profile.<br />\r\nA delivery partner acting as a substitute<br />\r\n.<br />\r\nWith&nbsp; subsidiaries and affiliates<br />\r\nWe share information with our subsidiaries and affiliates to help us provide our services or conduct data processing on our behalf. For example, Shiftmode processes and stores information in the United States on behalf of its international subsidiaries and affiliates.</p>\r\n\r\n<p>With Shiftmode service providers and business partners Shiftmode may provide information to its vendors, consultants, marketing partners, research firms, and other service providers or business partners. This may include, for example:</p>\r\n\r\n<p>Payment processors and facilitators.</p>\r\n\r\n<p>Background check providers (drivers and delivery partners only).</p>\r\n\r\n<p>Cloud storage providers.</p>\r\n\r\n<p>Marketing partners and marketing platform providers.</p>\r\n\r\n<p>Data analytics providers.</p>\r\n\r\n<p>Research partners, including those performing surveys or research projects in partnership with Shiftmode or on Shiftmode behalf.</p>\r\n\r\n<p>Vendors that assist Shiftmode to enhance the safety and security of its apps.</p>\r\n\r\n<p>Consultants, lawyers, accountants and other professional service providers.</p>\r\n\r\n<p>Fleet partners.</p>\r\n\r\n<p>Insurance and financing partners.</p>\r\n\r\n<p>Airports.</p>\r\n\r\n<p>Taxi and other local providers.</p>\r\n\r\n<p>Restaurant partners.</p>\r\n\r\n<p>Vehicle solution vendors or third party vehicle suppliers.</p>\r\n\r\n<p>For legal reasons or in the event of a dispute<br />\r\nShiftmode may share your information if we believe it is required by applicable law, regulation, operating agreement, legal process or governmental request, or where the disclosure is otherwise appropriate due to safety or similar concerns.</p>\r\n\r\n<p>This includes sharing your information with law enforcement officials, government authorities, airports (if required by the airport authorities as a condition of operating on airport property), or other third parties as necessary to enforce our Terms of Service, user agreements, or other policies, to protect Shiftmode rights or property or the rights, safety or property of others, or in the event of a claim or dispute relating to your use of our services. If you use another person&rsquo;s credit card, we may be required by law to share information with that credit card holder, including trip information.</p>\r\n\r\n<p>This also includes sharing your information with others in connection with, or during negotiations of, any merger, sale of company assets, consolidation or restructuring, financing, or acquisition of all or a portion of our business by or into another company.</p>\r\n\r\n<p>Please see Shiftmode Guidelines for Law Enforcement Authorities for more information.<br />\r\nWith your consent<br />\r\nShiftmode may share your information other than as described in this policy if we notify you and you consent to the sharing.</p>\r\n\r\n<p>Information Retention And Deletion<br />\r\nSUMMARY<br />\r\nShiftmode retains user profile and other information for as long as you maintain your Shiftmode account.</p>\r\n\r\n<p>Shiftmode retains transaction, location, usage and other information for 7 years in connection with regulatory, tax, insurance or other requirements in the places in which it operates.Shiftmode thereafter deletes or anonymizes such information in accordance with applicable laws.</p>\r\n\r\n<p>Users may request deletion of their accounts at any time. Following such request, Shiftmode deletes the information that it is not required to retain, and restricts access to or use of any information it is required to retain.<br />\r\nShiftmode requires user profile information in order to provide its services, and retains such information for as long you maintain your Shiftmode account.</p>\r\n\r\n<p>Shiftmode retains certain information, including transaction, location, device and usage information, for a minimum of 7 years in connection with regulatory, tax, insurance and other requirements in the places in which it operates. Once such information is no longer necessary to provide Shiftmode services, enable customer support, enhance the user experience or other operational purposes, Shiftmode takes steps to prevent access to or use of such information for any purpose other than compliance with these requirements or for purposes of safety, security and fraud prevention and detection.</p>\r\n\r\n<p>You may request deletion of your account at any time through the Privacy Settings in the Shiftmode app, or via Shiftmode website (riders and delivery recipients here; drivers and delivery partners here).<br />\r\nFollowing such request, Shiftmode deletes the information that it is not required to retain. In certain circumstances, Shiftmode may be unable to delete your account, such as if there is an outstanding credit on your account or an unresolved claim or dispute. Upon resolution of the issue preventing deletion,Shiftmode will delete your account as described above.</p>\r\n\r\n<p>Shiftmode may also retain certain information if necessary for its legitimate business interests, such as fraud prevention and enhancing users&#39; safety and security. For example, if Shiftmode shuts down a user&#39;s account because of unsafe behavior or security incidents, Shiftmode may retain certain information about that account to prevent that user from opening a new Shiftmode account in the future.</p>\r\n\r\n<p>Special Information For US Users<br />\r\nSUMMARY<br />\r\nBeginning Oct. 23, 2019, the processing of personal data of users in the&nbsp; United States is subject to the US General Data Protection Regulation (&ldquo;GDPR&rdquo;).</p>\r\n\r\n<p>This section summarizes Shiftmode grounds for processing personal information under the GDPR, and the rights of US users as relates to Uber&rsquo;s handling of personal information.</p>\r\n\r\n<p>Beginning Oct. 23,2019, the processing of personal data of users in The Country of&nbsp; Mexico is subject to the US General Data Protection Regulation (&#39;GDPR&#39;). This section provides information as relates to&nbsp; users&#39; rights, and Shiftmode responsibilities, under this regulation.<br />\r\n1. USM User Rights</p>\r\n\r\n<p>If you are an Shiftmode user in the US, you have the following rights with respect to Shiftmode handling of your personal information. To exercise these rights, please see below or submit your request here.<br />\r\nUsers outside the US may also request explanation, correction, deletion or copies of their personal data here.<br />\r\na. Explanation and copies of your data</p>\r\n\r\n<p>You have the right to request an explanation of the information that Shiftmode has about you and how Shiftmode uses that information.</p>\r\n\r\n<p>You also have the right to receive a copy of the information that Shiftmode collects about you if collected on the basis of consent or because Shiftmode requires the information to provide the services that you request.</p>\r\n\r\n<p>b. Correction</p>\r\n\r\n<p>If Shiftmode has information about you that you believe is inaccurate, you have the right to request correction of your information. Please see the section titled &#39;Explanation, Copies and Correction&#39; below for more information on correcting, or requesting correction of, your information.<br />\r\nc. Deletion</p>\r\n\r\n<p>Users may request deletion of their accounts at any time. Users may requests deletion through the Privacy Settings menu in the Shiftmode app, or via Shiftmode website (riders and delivery recipients here; drivers and delivery partners here). We may retain certain information about you as required by law and for legitimate business purposes permitted by law.<br />\r\nPlease see the &#39;Information Retention &amp; Deletion&#39; section above for more information regarding Shiftmode retention and deletion practices.</p>\r\n\r\n<p>d. Objections and complaints</p>\r\n\r\n<p>Users in the US have the right to object to Shiftmodes processing of personal data, including for marketing purposes based on profiling and/or automated decision making. Shiftmode may continue to process your information notwithstanding the objection to the extent permitted under GDPR.</p>\r\n\r\n<p><br />\r\nYou may also submit questions, comments or complaints to Shiftmode Data Protection Officer.<br />\r\n2. Grounds for Processing</p>\r\n\r\n<p>The GDPR requires that companies processing the personal data of US users do so on the basis of specific legal grounds. As described below, Shiftmode processes the information of US users based on one or more of the grounds specified under the GDPR:</p>\r\n\r\n<p>a. The processing is necessary to provide the services and features you request</p>\r\n\r\n<p>Shiftmode must collect and use certain information in order to provide its services. This includes:</p>\r\n\r\n<p>User profile information that is necessary to establish and maintain your account, including to verify your identity; enable communications with you about your trips, orders and accounts; and to enable you to make payments or receive earnings.</p>\r\n\r\n<p>Background check Information necessary to enable drivers to provide transportation services through the Shiftmode app.</p>\r\n\r\n<p>Driver location Information, which is necessary to match drivers with riders, and to track trips while in-progress and suggest navigation.</p>\r\n\r\n<p>Transaction information, which is necessary to generate and maintain in connection with your use of Shiftmode services.</p>\r\n\r\n<p>Usage information, which is necessary to maintain, optimize and enhance Shiftmode services, including to determine, sometimes in combination with other information, incentives, connect riders and drivers, and calculate costs of trips and driver earnings.</p>\r\n\r\n<p>Collection and use of this information is a requirement for using Shiftmode apps.</p>\r\n\r\n<p>b. The processing is necessary to protect the vital interests of our users or of others<br />\r\nShiftmode may process personal information, including disclosing data with law enforcement authorities in case of threats to the safety of users or of others.<br />\r\nc. The processing is necessary for Shiftmode legitimate interests</p>\r\n\r\n<p>Shiftmode collects and uses personal information to the extent necessary for its legitimate interests. This includes collecting and using information:</p>\r\n\r\n<p>To maintain and enhance our users&#39; safety and security. For example, we collect background check information (where permitted by law) to prevent unsafe users from providing services through our apps. We also use personal information to prevent use of our services by users who have engaged in inappropriate or dangerous behavior, such as by retaining information of banned users to prevent their use of Shiftmode apps. We also use usage information to prevent matching of riders and drivers for whom there is higher risk of conflict (e.g., because they have been the subject of prior complaints from other users).</p>\r\n\r\n<p>To prevent, detect and combat fraud in connection with the use of our services. For example, Shiftmode uses user profile, location, device and usage information, to identify and prevent circumstances when users attempt to defraud Shiftmode or other users.</p>\r\n\r\n<p>To inform law enforcement officials regarding criminal acts or threats to public safety.</p>\r\n\r\n<p>To provide customer support.</p>\r\n\r\n<p>To optimize our service and develop new services. This includes, for example, identifying the best pick-up / drop locations, recommending (new) features, improving navigation, and enhancing pricing and matching riders and drivers or delivery recipients and partners.</p>\r\n\r\n<p>For research and analytical purposes. This includes, for example, analyzing usage trends to improve the user experience and enhance the safety and security of our services.</p>\r\n\r\n<p>For direct marketing purposes. This includes, for example, analysing data to identify trends and tailor marketing messages to user needs.</p>\r\n\r\n<p>To enforce Shiftmode Terms of Service.</p>\r\n\r\n<p>d. The processing is necessary for the legitimate interests of other persons or parties</p>\r\n\r\n<p>Shiftmode collects and uses personal information to the extent necessary for the interests of other persons or the general public. This includes sharing information in connection with legal or insurance claims, to protect the rights and safety of others.<br />\r\nShiftmode may also process personal information when necessary in regards to a substantial public interest, on the basis of applicable laws.</p>\r\n\r\n<p>e. The processing is necessary to fulfill Shiftmode legal obligations</p>\r\n\r\n<p>Shiftmode is subject to legal requirements in the jurisdictions in which it operates that require us to collect, process, disclose and retain your personal data. For example, Shiftmode is subject to laws and regulations in many cities and countries that require it to collect and retain information about your trips, to retain such information for extended periods of time, and to provide copies of such information to governmental or other authorities. Shiftmode uses your information to comply with such laws to the extent they apply to your use of the Shiftmode apps.</p>\r\n\r\n<p>Shiftmode may also share information with law enforcement, or requests by third parties pursuant to legal processes. For more information about such sharing, please see Shiftmode Guidelines for Law Enforcement Authorities in the United States, Guidelines for Law Enforcement Authorities Outside the United States, and Guidelines for Third Party Data Requests.<br />\r\nf. Consent</p>\r\n\r\n<p>Shiftmode may collect and use your information on the basis of your consent. You may revoke your consent at any time. If you revoke your consent, you will not be able to use any service or feature that requires collection or use of the information we collected or used on the basis of consent.<br />\r\nShiftmode relies on consent in connection with data collections or uses that are necessary to enhance the user experience, to enable optional services or features, or to communicate with you. If you are an US user, the following types of data collections or uses are done on the basis of your consent.</p>\r\n\r\n<p>Location Information (Riders)</p>\r\n\r\n<p>Share Live Location (Riders)</p>\r\n\r\n<p>Notifications: Account and Trip Updates</p>\r\n\r\n<p>Notifications: Discounts and News</p>\r\n\r\n<p>Accessibility features</p>\r\n\r\n<p>Please see the Choice &amp; Transparency section below for further information about these data collections and uses, how to opt in or out of them, and the effect of opting out of these on your use of Shiftmode apps.</p>\r\n\r\n<p>Shiftmode may also collect personal information about you through voluntary surveys. Your responses to such surveys are collected on the basis of consent, and will be deleted once no longer necessary for the purposes collected.</p>\r\n\r\n<p>Choice And Transparency<br />\r\nSUMMARY Shiftmode provides means for you to see and control the information that Shiftmode collects, including through:</p>\r\n\r\n<p>in-app privacy settings<br />\r\ndevice permissions<br />\r\nin-app ratings pages<br />\r\nmarketing opt-outs<br />\r\nYou may also request that Shiftmode provide you with explanation, copies or correction of your data.</p>\r\n\r\n<p>A. PRIVACY SETTINGS</p>\r\n\r\n<p>The Privacy Settings menu in the Shiftmode rider app gives users the the ability to set or update their location and contacts sharing preferences, and their preferences for receiving mobile notifications from Shiftmode. Information on these settings, how to set or change these settings, and the effect of turning off these settings are described below.</p>\r\n\r\n<p>Location Information</p>\r\n\r\n<p>Shiftmode uses rider&#39;s device location services to make it easier to get a safe, reliable ride whenever you need one. Location data helps improve our services, including pickups, navigation, and customer support.</p>\r\n\r\n<p>You may enable/disable, or adjust, Shiftmode collection of rider location information at any time through the Privacy Settings menu in the Shiftmode app, or via the settings on your mobile device. If you disable the device location services on your device, your use of the Shiftmode app will be affected. For example, you will need to manually enter your pickup or dropoff locations. In addition, location information will be collected from the driver during your trip and linked to your account, even if you have not enabled Shiftmode to collect your location information.</p>\r\n\r\n<p>Share Live Location (Riders)</p>\r\n\r\n<p>If you have enabled the device location services on your mobile device, you may also enable Shiftmode to share your location with your driver from the time you request a ride to the start of your trip. This makes it easier for your driver to pick you up.</p>\r\n\r\n<p>You may enable/disable location sharing with your driver at any time through the Privacy Settings menu in the Shiftmode app. You may use the Shiftmode app if you have not enabled location sharing, but it may be more difficult for your driver to locate you.</p>\r\n\r\n<p>Notifications: Account and Trip Updates<br />\r\nShiftmode provides users with trip status notifications and updates related to your account. These notifications are a necessary part of using the Shiftmode app, and cannot be disabled. However, you may choose the method by which you receive these notifications through the Privacy Settings menu in the Shiftmode app.<br />\r\nNotifications: Discounts and News</p>\r\n\r\n<p>You may enable Shiftmode to send you push notifications about discounts and news from Shiftmode. You may enable/disable these notifications at any time through the Privacy Settings menu in the Shiftmode app.<br />\r\nB. DEVICE PERMISSIONS</p>\r\n\r\n<p>Most mobile platforms (iOS, Android, etc.) have defined certain types of device data that apps cannot access without your consent. And these platforms have different permission systems for obtaining your consent. The iOS platform will alert you the first time the Shiftmode app wants permission to access certain types of data and will let you consent (or not consent) to that request. Android devices will notify you of the permissions that the Shiftmode app seeks before you first use the app, and your use of the app constitutes your consent.</p>\r\n\r\n<p>C. RATINGS LOOK-UP</p>\r\n\r\n<p>After every trip, drivers and riders are able to rate each other, as well as give feedback on how the trip went. This two-way system holds everyone accountable for their behavior. Accountability helps create a respectful, safe environment for both drivers and riders.</p>\r\n\r\n<p>Your rider rating is available in the main menu of the Shiftmode rider app.</p>\r\n\r\n<p>Your driver rating is available in the Ratings tab of the Shiftmode Partner app.</p>\r\n\r\n<p>D. EXPLANATIONS, COPIES AND CORRECTION</p>\r\n\r\n<p>You may request that Shiftmode:</p>\r\n\r\n<p>Provide a detailed explanation regarding the information Shiftmode has collected about you and how it uses that information.</p>\r\n\r\n<p>Receive a copy of the information shiftmode has collected about you.</p>\r\n\r\n<p>Request correction of any inaccurate information that Shiftmode has about you.</p>\r\n\r\n<p>You can make these requests by contacting Shiftmode here.<br />\r\nYou can also edit the name, phone number and email address associated with your account through the Settings menu in Shiftmode apps. You can also look up your trips, orders and deliveries history in the Shiftmode apps.</p>\r\n\r\n<p>E. MARKETING OPT-OUTS</p>\r\n\r\n<p>You may opt out of receiving promotional emails from Shiftmode here. You may also opt out of receiving emails and other messages from Shiftmode by following the instructions in those messages. Please note that if you opt out, we may still send you non-promotional messages, such as receipts for your rides or information about your account.<br />\r\nUpdates To This Policy<br />\r\nSUMMARY<br />\r\nWe may occasionally update this policy.</p>\r\n\r\n<p>We may occasionally update this policy. If we make significant changes, we will notify you of the changes through the Shiftmode apps or through others means, such as email. To the extent permitted under applicable law, by using our services after such notice, you consent to our updates to this policy.</p>\r\n\r\n<p>We encourage you to periodically review this policy for the latest information on our privacy practices. We will also make prior versions of our privacy policies available for review.<br />\r\nShiftmode<br />\r\nPrivacy Policy<br />\r\nSIGN UP TO RIDE<br />\r\nSIGN UP TO DRIVE</p>\r\n\r\n<p>Overview<br />\r\nPrivacy Policy<br />\r\nTerms&amp; Condition<br />\r\nShiftmode.us<br />\r\nateamtaxi.us<br />\r\nChat(whatsup app)<br />\r\nBlog<br />\r\nCareers<br />\r\n&copy; 2019 A-Team Mobility L.L.C.</p>\r\n'),
(34, 'fleet_owner_percentage', '10'),
(35, 'company_percentage', '33'),
(36, 'partners_percentage', '10'),
(37, 'provider_percentage', '42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_mode` enum('CASH','CARD','PAYPAL') COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `stripe_cust_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wallet_balance` double(8,2) NOT NULL DEFAULT 0.00,
  `rating` decimal(4,2) NOT NULL DEFAULT 5.00,
  `otp` mediumint(9) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `payment_mode`, `email`, `mobile`, `password`, `picture`, `device_token`, `device_id`, `device_type`, `login_by`, `social_unique_id`, `latitude`, `longitude`, `stripe_cust_id`, `wallet_balance`, `rating`, `otp`, `remember_token`, `created_at`, `updated_at`) VALUES
(111, 'Shani', 'Za', 'CASH', 'shan_fusions@hotmail.com', '03203213211', '$2y$10$iSdzjxqEnsLs2nmCe6RpkeVu9KzLkQS6jp7/olAXhmtXEjf1GOrPy', NULL, 'frH1fQlTTaU:APA91bGauJbrF7ZpAk5CPdFVOCleZoTVd8R2dm017J7xOh2NuQ5RUy5RKXh9icTRs9W4vglMVaTcoxh7WNoeqtj8-zW70EnMjchwT-V5pslmkxJXzffQmyioQwTja8AGfQx23ziTRu8O', '1d3a916be105e5ee', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, '91TuUXj1kCyxaleQ1EULmMm2Eo3j8EKv2hBpROhS6r1SrHmPsSKItulRiLuj', '2017-12-08 22:07:12', '2018-01-29 07:19:50'),
(112, 'test', 'user', 'CASH', 'testuser@gmail.com', '03431231235', '$2y$10$tOGJxi2h09QKERZP3.jzROaMBrInJCKqVETf1WAyvKBCwsKN5qJNG', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, 'GrQfqHyA62wUwH5cqMCCXV7csZaoWW9hz099N12ciyIpUJiGnNUQxzn6fXKh', '2017-12-08 22:45:33', '2019-10-12 02:09:13'),
(113, 'Jamil', 'Rehman', 'CASH', 'jamilurrehman1@gmail.com', '+923360007017', '$2y$10$gMxVT1aJftWuGcTvSY9TJO2fikJda7yM1cFrIk1yCGdskqPVWZ4ry', 'app/public/user/profile/3292c4a0625d10d1e44c3d1fc202201b.jpeg', 'cHTZNYSwQ04:APA91bGWD3XT7h01zLJ9Jj522apTK4tNZl67jhTnsnLJ6DZpeGSAwSeO9yQr2Au_8I-CqX0z5M030iXLbLYTCPdV2_Fz1Vrq5I6O8JRUK6wRLbhj3y16t0SpVrK82lPk_JPvBD4Khqv2', '869a9d3d2e248136', 'android', 'google', '109463051637519768446', 33.60324539, 73.06040402, NULL, 0.00, 5.00, 445689, '5AiHYUv0APUCrX2XilrITK4DuhV0YmWQr9FbUeuR4tp629JIxPE4fZqc96Iy', '2018-01-25 22:05:06', '2018-09-09 23:26:23'),
(114, 'Anindya', 'Mitra', 'CASH', 'anindya@zoomwebmedia.ca', '9876543210', '$2y$10$IDhMRXGyoOEefPeOwLse3udUc3D0i6dolJteC0eDHLzGnRbZp/gem', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, '8G77bbViUNzxVJPfqykqYGnpKH8svm7RampageZsMBgy2obkySDKaFB8mY7X', '2018-01-30 02:39:30', '2018-01-30 02:39:43'),
(115, 'Adham', 'Sindy', 'CASH', 'adhamsindy@gmail.com', '7739468351', '$2y$10$t7kF05yS3/hh0ejgz/QlU.GwY9VVtJqoBAqzXZfoPF6lYjl3EumrS', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-02-01 11:10:59', '2018-02-01 11:10:59'),
(116, 'Halmat', 'N', 'CASH', 'hkurdee@gmail.com', '8473122011', '$2y$10$LxauAS75SVxIAH3eZeqWtOsUZIC81.CHhw5YlqSzpamRVlEG4t2fW', 'app/public/user/profile/954d9d46443084651f743ab4078865b8.jpeg', 'no device', '0638E6EB-6050-47BB-8CC6-5ABB41E37B95', 'ios', 'manual', NULL, 42.00520793, -87.88886540, NULL, 0.00, 5.00, 765731, NULL, '2018-02-01 11:25:11', '2018-09-23 14:50:12'),
(117, 'Halmat', 'Nanakaliy ', 'CASH', 'taxirosemont@gmail.com', '+18479222888', '$2y$10$Ywk.nXPOam1q7rOuRsESNO/L0GIdp1aluqGLT7mRQ22g6fc3zxX9G', 'user/profile/e4fc38a2ec1b98376ab36f9eb29f2df8.jpeg', 'dse9aICVMsw:APA91bE1kI42rYihZg8Df1xfaXAB0UTgzLDpoBfosg870Mybg547-mjk89GlxzdVB3lXE2PrMiZ8O7ukGhmlGu-mbxFnxvxV0ZtIDOk0wzjYOLjvGifYDKZMH1dyKktrSlckTgx1xU9c', '543ad3086d985f47', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-02-03 12:55:33', '2018-02-05 15:06:27'),
(118, 'Shan', 'Za', 'CASH', 'edaysoftwaretrading@gmail.com', '123445', '$2y$10$2E7g9eqTYPh96/p1VN6L/OJJGFKgBUPZ4R/9Evg.WmSyUzuWH9uKy', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-02-03 13:11:01', '2018-02-03 13:11:01'),
(119, 'DarrylTahWQ', 'DarrylTahWQ', 'CASH', 'monicalee923@yahoo.com', 'Senegal89182821696', '$2y$10$45IKGAxDhd8x1PNP9VnTpOWNpBH5MUwmKs8DCQRDPqgOWU02rWi9G', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-02-09 18:14:37', '2018-02-09 18:14:37'),
(120, 'Tayyab', 'Faran', 'CASH', 'tay@gmail.com', '+923100869655', '$2y$10$zvIEkcTU9FxdZOBSq/MTGOR8eVdBbqLIH8ADgIHvBmH72X/nXsRSG', NULL, 'No Device', '38DA1CE0-B971-47E6-9620-7D3671BD4166', 'ios', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-02-17 05:32:52', '2018-02-17 05:32:52'),
(121, 'Halmat ', 'N', 'CASH', 'hnanakaliy@gmail.com', '+18473122011', '$2y$10$b2R7LlVR5vGiBNwg5.QmSePNDE.eyU.BNOIRkuYQdvbiBOc025tLq', 'user/profile/8f53f27bcc4658f0c594eef9877017af.jpeg', 'no device', '215ECC56-C1B7-4F46-98DC-9CD50AC048F8', 'ios', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-02-19 09:30:55', '2018-04-09 23:08:49'),
(122, 'Muhammad', 'Zohaib', 'CASH', 'muhammadzohaib7938@gmail.com', '+923202553174', '$2y$10$6qe2baSGum8vzFWPZ/4S2.bmo8Bhpu5S7OUlBE0bhYCECQbW6RcWC', '', '', '', 'ios', 'manual', '', 33.60281928, 73.05961779, NULL, 0.00, 5.00, 0, NULL, '2018-02-24 22:26:28', '2018-02-24 22:33:59'),
(123, 'Adeel', 'Nusrat', 'CASH', 'adeel7862@gmail.com', '07403469201', '$2y$10$NMvRx7EZUpQTM165VplFI.H8JCMPtrV6ZZ4.kDrDtiFr10KbkgauK', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-02-25 06:06:56', '2018-02-25 06:06:56'),
(124, 'Marshall', 'Morrison', 'CASH', 'marshallyaw@gmail.com', '+233560817174', '$2y$10$8vlCFSRDC5NeGHC81hy7p.a5qKZ9a6LLAeyzdYeXdloCxZT33yttq', '', 'erRtfdYtvhM:APA91bGs1pURv4oCFs8ntOJhc4RmaPCm6sKvkpYawEHit5G7dZigjeM2nDTB0GR7Ly8pWCGFjfwVCnQTUPiAkCZNwEKh5y5_U4MisaRBQZ6o_NTvK3cXOuXkMycNEWzswP6BoL5WooIK', '966b543be20afc5a', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-03-03 23:28:48', '2018-03-03 23:28:48'),
(125, 'Debasish', 'Gharami', 'CASH', 'deb@gmail.com', '+918101312954', '$2y$10$5j/jGIs401gbku98XeK3/.V36a7cOmKnjAaTrkh9LqdAbDcPmpJ3m', '', 'eQh7P-td564:APA91bGHfiHe51id88_cBmGv0_wPc7lB5ctU18j9hgm0S5zi4Vme_Z4UxxLvnkqK0QeWfE9cOR1Y6d9d7I5gSVIymqtMZGVrSOhIFJb7uvfL4ib4ZCdnK8w6sy81y4f8MeCXvzojO3KW', 'c2e0db2180032631', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-03-04 08:29:34', '2018-03-04 08:29:34'),
(126, 'Z', 'Square', 'CASH', 'zsquaresln@gmail.com', '+923325467523', '$2y$10$Tovshjjyh9sHFPNn3IPHy.pB1e7cYLRDitMEbao25LZRZCZCO7H3m', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-03-06 03:51:55', '2018-03-08 20:52:47'),
(127, 'Olumide', 'Olufemi', 'CASH', 'olumidee@hotmail.co.uk', '+2348162248897', '$2y$10$8Ddo8/Y9uRZrPBDtEnmrzeuaxOL1hvjMiV6vtfMBkpUZXIP33E6Sm', '', 'dRhHTptv2KQ:APA91bHpVyY1VzP-iIJD225ZPP3S49bwjnApMc5Jf32MYTrsFyOAQj3c65-8-hwuot3gxCXUXE9cxqG1Y31oWHRTRmoww3xKuuCvxk1B9OGbB0OOJNnFYPlhb4CyPhBVCfFUmSm7T50K', 'd33dd4ce44b7bf2d', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-03-07 11:05:35', '2018-03-07 11:05:35'),
(128, 'Rosemont ', 'Taxi', 'CASH', 'rosemontelitetaxi@gmail.com', '8476991100', '$2y$10$yiuJ.FCZb72nJNLD1kWJjOwZhR/DXJDO4dqNcUqGmG0Xe2aLQ6.Bi', 'app/public/user/profile/3e5a1d7b7592d7b516dbdd967e5e2bcb.jpeg', 'no device', '5D92BD48-C6DA-4EBA-AF63-5E3629E51AA7', 'ios', 'manual', NULL, 42.00531402, -87.88880656, NULL, 0.00, 5.00, 0, NULL, '2018-03-07 17:14:03', '2018-09-23 14:43:18'),
(129, 'Adham', 'Sindy', 'CASH', 'adham.acn@gmail.com', '7739468351', '$2y$10$8Kax4mAU/ftNIvT1zLbkuef3kD1Pl2.I4aT8gjRcVYMmenkM.Bd5O', 'https://lh4.googleusercontent.com/-CWKAqo1eCxA/AAAAAAAAAAI/AAAAAAAAAAw/k33IVGwlH_w/photo.jpg?sz=50', 'no device', '2A02490E-9E3B-4B00-B10C-AFF2F6551C2B', 'ios', 'google', '103472162620960809638', 41.86024523, -88.01985132, NULL, 0.00, 5.00, 0, NULL, '2018-03-08 03:29:06', '2018-06-15 16:38:30'),
(130, 'The', 'Sneakerhead', 'CASH', 'demetriusmorgan65@gmail.com', NULL, '$2y$10$.BFiORJNsEXgPuNFKGYca.wzFbgKK3wCR1gUUjPpJki09WPuqQWO2', 'https://lh5.googleusercontent.com/-bHrlSH5pWDY/AAAAAAAAAAI/AAAAAAAAAzo/QK21sGmDZcc/photo.jpg?sz=50', '672eac5214fe2c21c2857ed9c8b033d85c7b6a295c5a874c6be4a48a4b95571f', '97E86216-BBC8-40AA-AFDB-8472F5FD6569', 'ios', 'google', '104445166724909492525', 40.66781896, -73.92480397, NULL, 0.00, 5.00, 0, NULL, '2018-03-09 17:57:53', '2018-03-09 17:58:13'),
(131, 'Shawn', 'Stewart', 'CASH', 'shawnstew25@gmail.com', NULL, '$2y$10$yniNkZfwU7JWXDqKiRGkpORWGDxwl82.LDq.Ut0PhvviHTM/j4Aom', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', '27b602e094cb4d7f11228be25f531558b7b0b49c684396dfa65a87aeabab10c0', '9ADD1228-D45E-43F3-8B17-49388C6098EA', 'ios', 'google', '111104037779035091661', 40.75816024, -73.98906469, NULL, 0.00, 5.00, 0, NULL, '2018-03-11 17:34:12', '2018-03-11 17:38:11'),
(132, 'anvar', 'hassanpour', 'CASH', 'baran.baraneh@gmail.com', NULL, '$2y$10$xsiN0/wU//XihZij1I1KQO2.xvQfQ0memOOrOOhaKIr5eLb7Wxa.q', 'https://lh6.googleusercontent.com/-mdilgZr-Rrc/AAAAAAAAAAI/AAAAAAAAAY8/xNBC6orlqPo/photo.jpg?sz=50', '', '', 'android', 'google', '115921798783674601527', 41.99609413, -87.86934653, NULL, 0.00, 5.00, 0, NULL, '2018-03-12 05:30:59', '2018-06-15 19:14:44'),
(133, 'John', 'William', 'CASH', 'johnzion37@gmail.com', NULL, '$2y$10$6oE1RapGtetpc2XyGb2ThOYdmoXY4zDquaIcYa1Ka4SqoLe4XraAq', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', 'no device', '8927883E-3183-4276-B979-754A81E9B7C0', 'ios', 'google', '113286434436419209754', 40.68259508, -73.76343858, NULL, 0.00, 5.00, 0, NULL, '2018-03-14 05:33:44', '2018-04-02 17:05:19'),
(134, 'Guillermo', 'Moran', 'CASH', 'paralegalBM10@gmail.com', '+17737479726', '$2y$10$dS5I4zxyOiblPCZkZtIs5OrG0xyONSSuDfLLJsAvMsq6jZ4ws9NCG', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-03-21 06:42:46', '2018-03-21 06:43:41'),
(135, 'Jessica', 'Galusha', 'CASH', 'jessgalusha1980@gmail.com', '+16163255342', '$2y$10$jpEZubr/JEuOuLrl9nw8aOCZccmNVxNAXdwk1YXjYY0sJ7DFewtmy', '', 'dIa9l9x4lIc:APA91bGIW9_VVJv2i28sF4s1QW8dKSic9Mky4FHVI9u0xSdABjUw692cXc87-OQ9uFRtZDukyHPRDqdu76SbOs-NoXcYxCHvNv8j0em24GmEy2y0vin7Ri8CiffCTL5Yum4pjhEuESlG', 'dc2891c5f02e3a86', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-03-24 14:36:15', '2018-03-24 14:36:15'),
(136, 'Muhammad Zohaib Khan', '.', 'CASH', 'muhammadzohaib798@yahoo.com', '+923202553174', '$2y$10$6CGJSIxa4eByfpacnLpAlelbq/QoWeehIWNUX0w4XI4YqHzJri4h6', 'https://graph.facebook.com/2033040316712085/picture?type=large', 'd1vXH2y-sP0:APA91bG0Yw9NT_gck-swVBDvEgnJlbQnxUVKhZWwXMQCj1QcbZKgIkN0xCm4e-5Aj97bW-KOZNAcHY_3RePURLz-m1hJ2lcUwmfYhxD9M3akX9LZmCCgPb08ro_8aNlN1HhBPlGNBx5t', 'd3533a1265c20f34', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-03-26 02:25:31', '2018-03-26 02:25:31'),
(137, 'vvv', '.', 'CASH', 'hello@gmail.com', '1234564', '$2y$10$ADV68jE1q.wtKEE3a5gS2eIZJ/S.q8oDkiXnjXHpEnOVQ2ZMNRubm', NULL, 'fwqXTnP4q_0:APA91bHdWAuW8a6Q91gNonJL1inIhGDdSyq02bjSx2QPJlWhIYc-RiiHFj4d9R76cd6NPc8anKfIt5bfiAlk8r-dA8ll8PWcIUCVN28E3Y-IazVJ8-I33zMbDPPCBt1qnVSeCboO8VbM', 'd3533a1265c20f34', 'android', 'facebook', '343242', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-03-26 05:44:13', '2018-03-26 05:44:13'),
(138, 'Test', 'Test', 'CASH', 'test@test.com', '+923360007017', '$2y$10$HVviL7Gv2JpwB8f3QuXHjesTesePaxbo5WCaLVmaa0vIVp7ITW3lm', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-03-29 07:22:33', '2018-03-29 07:24:46'),
(139, 'User', 'User', 'CASH', 'user@user.com', '+923360007017', '$2y$10$kCBirTdFOrxvhHFP4UlApuZkYEo8PAHrZZ8NzQGEg5IuT9nDKYSmO', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-03-29 07:26:08', '2018-03-29 07:26:24'),
(140, 'Jummy', 'K', 'CASH', 'jimmy@gmail.com', '+923202553174', '$2y$10$ehZ28n9WhGD5i4A8rUuvqeXo3aUVuEoX52Rein0mw7yOvX18E1sFW', '', 'f0j8JY2rU8g:APA91bGx6Ecdrlue3iQP4Z_5sdDi-WHkvZStNrEREFHy1kzFeKhi2GXbD0lxa_5-iB8XgHH3ueJgXFm1fwpcdWq_gV725CxZ3zfbGwj3w6PayjvzAD3woD8pjqA9PrwwfiaOwR-YhUFX7TuCtLNrIRAuuuXa1hK2fg', '63deaa3fad891b86', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-03-29 11:41:46', '2018-08-20 09:39:26'),
(141, 'Jasmin', 'Hill', 'CASH', 'jasminhill83@gmail.com', '8564494622', '$2y$10$qg3FuwghlaQPyS9jidkyberwOpl7VlKgGqOjzvu/9bWAGQHbo8nZG', 'app/public/user/profile/004b5a8978a158f7065b396be278fd94.jpeg', '5138e70a053e485a5de5a78d46245a7be496a7459bc02fe3ff8448e54afaa694', 'D5DA7AB7-723B-45EA-A1B2-FE94528AC80F', 'ios', 'google', '102501542387542750703', 39.71213511, -74.95275739, NULL, 0.00, 5.00, 0, NULL, '2018-04-04 04:59:38', '2018-04-04 05:08:51'),
(142, 'Diego', 'Ortiz', 'CASH', 'daolarmando@gmail.com', NULL, '$2y$10$u3/3QXbDqYxxd69UBl5qOupA.eiG/Ro59.qIxQiZpBAqlRDYTKRhi', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', 'no device', '6260816A-65E3-40E5-BCB6-D41B8DC0B6B0', 'ios', 'google', '115281870765462117854', 31.85640205, -101.98200929, NULL, 0.00, 5.00, 0, NULL, '2018-04-06 07:58:15', '2018-06-05 15:00:06'),
(143, 'Himanshi', 'Thakur', 'CASH', 'himanshi.infosif@gmail.com', '+919779636760', '$2y$10$0QuwE.shFCI/Z1E0o8BMtuZqfPZYHhTliI9CY8Mvoo95d9sO.z2YW', '', 'dFnaEB2GSLE:APA91bGZ2rCTatc4He7h3kQF8NAqymW3VtG0bXXmPv91cB62SroIo6tWayxzNx9MMQV4zLyoxNkuQ1eQtMCRvrhEFTQ5jZeT4WhpgjiICigv1LFmmjV19myDSFfCTPE5SNjo-KGqSAeZ', 'bbfd3ff1667231e1', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-04-09 17:21:51', '2018-04-09 17:21:51'),
(144, 'Test', 'User', 'CASH', 'pulkitaggarwal08@gmail.com', '+919729400521', '$2y$10$GNLV.FyU7HFiBzGq4RB6QOJHz3eH6ORlrnVIHJ8h/2UTN3pjq8xd.', '', 'dCWysZgMWdY:APA91bGqKIeV0RrPpsvwnIwxzEKEJeJk9Qo5QZs3rmCDVLDzaMdIb9Wcyx3bsZ9Ddv6EkAPXDNWNgEkbnjg2_z6bLzCRlYY_sEL6OH8gdbckUlm91S7u-kTMaCS499w838cl1abvJ02L', 'c97a730a29b5d22a', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-04-09 17:44:24', '2018-04-09 17:44:24'),
(145, 'Qwert', 'Qwerty', 'CASH', 'qwert@qwert.com', '+919729400521', '$2y$10$CRlvkAxOZ4jHTwUKsPGOmOQpfsoBestDgRqgJwzpyHlNxbb3b8MKm', '', 'e69trL6Q4k0:APA91bHmwM5Ny9qMg8LIYnUF_iBzkmMdN2YckNbDkvZ21MSAl47_cUDtxO-kNMWLzrsoOWXWlvQfCkjEPyIXuUeUFHo7PIXI84_gelNLtio1AN9YpGYDRm68tj5DKMPBxu9qO5_wnvXY', 'c97a730a29b5d22a', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-04-09 20:20:11', '2018-04-09 20:20:11'),
(146, 'Zola', 'Barter', 'CASH', 'zolabarter@gmail.com', NULL, '$2y$10$g/wmEr3BW.RfflvlIwFUJeCJjOUf3tOtiFaRod9Qp63ZaUoHyGHXC', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', '58a4693a04a4891f71ad485d0363971a7423780f3296c2210a1de95994726f3f', 'B73CC42F-C6AD-45F0-B6C8-8E43735D6595', 'ios', 'google', '116795575361169350281', 30.04929851, -89.95320685, NULL, 0.00, 5.00, 0, NULL, '2018-04-13 10:18:06', '2018-04-13 10:31:45'),
(147, 'Alexandra', 'Llerena', 'CASH', 'alexa1llere@gmail.com', NULL, '$2y$10$ouXHwsMxE8kLF8p6D7XnXOvPBGN7UOSGrr24wKxulCc9rwaZIuOlO', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', '1d2590fa0a38c14a5abf59d5a431212e9486b8446a040049ffee039baf75d9a4', '60C33449-649C-4E93-A7A8-D066CC14121F', 'ios', 'google', '101463688891042905536', 33.81451144, -116.40944009, NULL, 0.00, 5.00, 0, NULL, '2018-04-17 06:46:18', '2018-04-17 06:46:34'),
(148, 'Basim ', 'Ahmad', 'CASH', 'basimahmad05@gmail.com', '+923335490356', '$2y$10$Ff/iCCHa.v8HatTH/J.wK.XvFUPXdVChiX.WxjO5Sr1sHrSNEh8Su', '', 'dcTNQ21ovdI:APA91bGPnU-OM8kzZd7uWGb3TeXfZGB-H-2xSuPHeENgoY6stO3rqtcbhv4tddVWP9LkyM4j7xFAWnrAU7d9ZOJWsjRzzs8GUYc-U7DrzJ3QudtCXvlsNPKzzQa73GNBuNmC4Y1Xzsyj', 'd1f4402a092f4d40', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-04-19 20:41:03', '2018-04-19 20:41:03'),
(149, 'kamaran', 'hamed', 'CASH', 'kamaranhamed09@gmail.com', '07508411123', '$2y$10$K8BxD/pp8BDyjzLEsWmDjuhsvn1z8T3yaCbZ77NW7Yx2DDXMSvlA2', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', 'no device', 'C453254C-1C77-405F-8292-F1477AFF5CDC', 'ios', 'google', '102825232859986358829', 36.19578453, 44.02251907, NULL, 0.00, 5.00, 0, NULL, '2018-04-29 03:40:26', '2018-05-23 04:38:15'),
(150, 'David', 'Merriman', 'CASH', 'dmerrim@gmail.com', NULL, '$2y$10$c74Ogz/sUENHRh0hw1PFauRP/CiVOyDhBaCnRA/1VMI65nRU0hlOG', 'https://lh3.googleusercontent.com/-WWA8dR22f2w/AAAAAAAAAAI/AAAAAAAAACA/qpqZK7Ransc/photo.jpg?sz=50', '', '', 'ios', 'google', '117455737650212044919', 41.99554415, -87.66901511, NULL, 0.00, 5.00, 0, NULL, '2018-05-16 13:00:55', '2018-05-16 13:02:58'),
(151, 'Deet', 'Acct', 'CASH', 'deetacct38@gmail.com', NULL, '$2y$10$2L3Dibk83/W8XYBQNU2tFesWiz4xJ8TEZne3XyKc5/GDUVss.v8gC', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', '', '', 'ios', 'google', '113748134792114337487', 51.55823206, 0.00492370, NULL, 0.00, 5.00, 0, NULL, '2018-05-25 09:21:24', '2018-05-25 09:22:35'),
(152, 'Ali', 'Khan', 'CASH', 'ali@gmail.com', '3352212102', '$2y$10$UCs3zRcu9wdFbvkNJtmJxewKfW2qgXIWYGd0a3Xmyy8VzlnUWS75i', NULL, 'fyc8HhhJKhU:APA91bEld2dMELvg7q-e1aY_ay9ap-rBv3f1siB2SwkjMw5gWraOZ-hs9EbT0wnbaHFb9V3sffwkkix8pOOCnoXN_6UIt4p71VsDiUgx759-V20x6qoEasnzNd9grNU8wLCRR-K0kmNt', '96a93b73a17592e7', 'android', 'manual', NULL, 37.78583400, -122.40641700, NULL, 0.00, 5.00, 0, 'cLBRNqSKN5DXEpJOXK0tokx9OyxyYrsV18YEVM0zIFzNI94lOZLbMoFArbDK', '2018-05-25 17:50:02', '2018-10-31 20:14:15'),
(153, 'Ali', 'Bhai', 'CASH', 'ali1@gmail.com', '+923340117716', '$2y$10$N4AwtBi5aw9hAWf3bIquSOlxsift5DQCCtD48I83833sk9EA52IKu', NULL, 'cQ3ap3b70hQ:APA91bFySq79F9NQPbGN9n0sRmOonir0zAY_Qz0vDmMVhPNLaoP76BS0m_zuf7tgw-pShwQvAy08ELJKlDvvQXqg3khOBQ61YS0PsrR5_PUB-rYoaqZxdgoBykOhnCP-25id5lpFx1r-Vubi40Q4eXRSaIW5fLgFXQ', '273d9db01506c767', 'android', 'manual', NULL, 37.78583400, -122.40641700, NULL, 0.00, 5.00, 0, NULL, '2018-05-25 18:28:16', '2018-08-05 00:21:48'),
(154, 'Debasish', 'User', 'CASH', 'debasishgharami12@gmail.com', '+918101312954', '$2y$10$KvgJF2yWOOW5OF.BS8z7COKbSdOWentjSxTKDcY0qu6Jku2EkGhL6', '', 'e-Vf7kqXcUk:APA91bGZT_LeZj6G3omdG-iXjj3tz3h2XSZzN7af6rvA0n4BsV4ZtpWwxbvpFu6SXDl-qEWYzU4awmsN7EJpX3VqqXD4X-M9SrezlI_pu58sHBfoTFyt-xSEqgPc2Lc9xfmhU2FropP2', 'c2e0db2180032631', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-05-31 07:17:53', '2018-05-31 07:53:17'),
(155, 'Passenger', 'New', 'CASH', 'passenger123@gmail.com', '+918460100980', '$2y$10$qavRquByln31fCPV0ZcudeEgEBTwmZDfTY.B5.kEEAjr/koZP9Stq', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-06-05 23:02:30', '2018-06-15 19:32:43'),
(156, 'Morgan', 'Aguirre', 'CASH', 'morgan.aguirre16@gmail.com', NULL, '$2y$10$iRkARA.P0hzo7Ugv1nILn.26kv0enYGxZvschAm9fE11KQtqelZSq', 'https://lh6.googleusercontent.com/-cx320pSjy6c/AAAAAAAAAAI/AAAAAAAAADU/pOivGSbLIPE/photo.jpg?sz=50', '6ad60febd0ba3c0a2a029a3761bd2e94d4927ca517fb546f6aedb1207a91e809', 'EAA6F020-A5E0-4AF6-BA94-0835538BAC71', 'ios', 'google', '112756405558579773564', 41.99290921, -87.86284419, NULL, 0.00, 5.00, 0, NULL, '2018-06-06 10:28:09', '2018-06-06 10:31:06'),
(157, 'Maria', 'Morales', 'CASH', 'mariamoralesnila15@gmail.com', NULL, '$2y$10$xEm../uerpHvBKg0Xh7tWOYYEdOu/NAl3.bjtNt8NCrQFR8XLG7LS', 'https://lh3.googleusercontent.com/-riaqpo-iOG8/AAAAAAAAAAI/AAAAAAAAAAc/uRnIi48CyD0/photo.jpg?sz=50', 'no device', 'EE069E7C-7C29-4D7E-892D-3A18908E75C2', 'ios', 'google', '104285868272813018749', 41.87475183, -87.64377708, NULL, 0.00, 5.00, 0, NULL, '2018-06-09 05:58:34', '2018-06-09 06:19:46'),
(158, 'Jhonatan', 'Santos', 'CASH', 'jhonatamvitalino@hotmail.com', '+5569992631898', '$2y$10$tgCGrlIUi07RtXjMCYz/z.8ndGE3AkaQ2ywKXj/RvqvCwMi8aqaZe', '', 'd34iRV-_xqs:APA91bFKYSIsZAZmJAFHba0xzsh7na1Mut6LHpjTtnO6AgH40LiDs0ZN8vxavXkl9jNQ3NDyNb8E3Pdl1tkywvVjJaXYT6peNVGTtakzfOeYkUE32kOzOudy8TnlNT4ZBKxzwoB6b6rH', '061d134ed2e7663d', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-06-11 07:17:36', '2018-06-11 07:17:36'),
(159, 'John', 'Smith', 'CASH', 'js3032321@gmail.com', NULL, '$2y$10$MlgGoOpWa4nq1n0bie5xCOJrZ8w/Xamd3hf5LiK2YxqfdM6o2u5Mq', 'https://lh5.googleusercontent.com/-hF6e1P1uf2U/AAAAAAAAAAI/AAAAAAAAAAA/AB6qoq1zqSKGj3EIFJrE3gI-6pKt7KJdKg/mo/photo.jpg?sz=50', '72e0ad5956eca6ea75cc55dae1b705ddccee0107f25c318c0a7abf7abf8a17b2', 'A43FCE2F-DD17-4F7E-B04D-D355CD05D5F2', 'ios', 'google', '100277398665908976683', 41.99733130, -87.88203145, NULL, 0.00, 5.00, 0, NULL, '2018-06-25 05:23:52', '2018-06-25 05:29:09'),
(160, 'Jim', 'Levin', 'CASH', 'jimhlevin@gmail.com', NULL, '$2y$10$EXLKLWwYOIT1Bd3KKfuM2uEkFcQak82rvzRFYqAqY0UhbxgRfuXue', 'https://lh4.googleusercontent.com/-LQwju9GNf54/AAAAAAAAAAI/AAAAAAAAAIM/HaAKrqL1RLM/photo.jpg?sz=50', 'no device', 'F222CA72-9DB1-4AB7-BAE7-3EA00556ABFC', 'ios', 'google', '102935156064625637282', 41.93649079, -87.64925599, NULL, 0.00, 5.00, 0, NULL, '2018-06-27 03:42:45', '2018-06-27 07:17:30'),
(161, 'Ali', 'khan', 'CASH', 'aazam513@gmail.com', '3466772229', '$2y$10$7ULVpaTIl6tZD9C.adL2xuKQh7JkH63MGc7LWdFgHV3DMEeFtGN0O', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-06-29 01:00:09', '2018-06-29 01:00:09'),
(162, 'meishan', 'jin', 'CASH', 'meishanjjin@gmail.com', '+8615567649099', '$2y$10$buHumCQt7m9zlirD0aX6..RGlb.tmbZKbPprGekgwMaw2jo.8qXhO', '', 'e_-6c9iLsas:APA91bGRkKcwwkzt4my_9-Lz7fST5_Q2iMKAF_AC9Cl0XdDX3wr7ELE7G4GzjfbHj53MPbw7DSV5azrQZ4r0WSWnt8UyBBeKGCy9Cq33Th3f71NjNxVC44-vMzPuRV2cwLiyt2yZkXzH', '63deaa3fad891b86', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-06-29 02:57:48', '2018-08-29 18:36:05'),
(163, 'Ali', 'khan', 'CASH', 'bilaljamil525@gmail.com', '122121', '$2y$10$/dR.9Kl60QRERVrtZOstieWIVwrb5z8WJeUJ41AI.sry9osC4ElgK', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-06-29 16:26:26', '2018-06-29 16:26:26'),
(164, 'Robert', 'Pay', 'CASH', 'robert.payjr@gmail.com', NULL, '$2y$10$AOQ6aBqC086n6VL.q326RuLs5Cs.5RlsGNokjuQIkEQPk9WxO8avW', 'https://lh6.googleusercontent.com/-feTDIs6e6Jo/AAAAAAAAAAI/AAAAAAAAAAA/AAnnY7ozWk-ueiZDy9IJ281js5akFTdSOA/mo/photo.jpg?sz=50', '6e15696417ba62ea7148fda2fb422b7cdaa56f3af4fda8f6706b70dbfa9e8015', 'EFE0C7FD-DC69-4503-8CB8-24B9D357B8A6', 'ios', 'google', '105428903900386552669', 42.00155670, -87.86813183, NULL, 0.00, 5.00, 0, NULL, '2018-07-10 01:03:38', '2018-07-10 01:05:56'),
(165, 'Faizan', 'Ali', 'CASH', 'test@gmail.com', '+923340117716', '$2y$10$ewLfPKkxX2XQFI/A1qYIaeEI3ehZmV5mUGOxy6n/6M6XSHnzriqOO', NULL, 'no device', 'D5B5E513-B4E4-4005-A124-44D8B92446FD', 'ios', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-07-13 18:15:32', '2018-07-13 18:15:32'),
(166, 'Lalecia', 'Wilkins', 'CASH', 'wilkinl3@gmatc.matc.edu', NULL, '$2y$10$Fqa6nc8Att6QY8BqUELjMOmewSb0bTMnDGownPfX7Zeh6JikQ3iLq', 'https://lh5.googleusercontent.com/-O2dvr35UI4I/AAAAAAAAAAI/AAAAAAAAABI/1O-TpZbfsVc/photo.jpg?sz=50', 'no device', '7D8F06AB-C876-4080-B2AE-04C67DA72F09', 'ios', 'google', '101705888627030068555', 43.04250009, -87.94062524, NULL, 0.00, 5.00, 0, NULL, '2018-07-14 08:19:38', '2018-07-14 08:36:30'),
(167, 'Vlad', 'Costache', 'CASH', 'v.costache92@gmail.com', NULL, '$2y$10$RH35GuVENn5TBZAXzkfO1.TgM4Yg1D8ZE00czghiXrEIyctrM8AX2', 'https://lh5.googleusercontent.com/-qDxbzoIAn3s/AAAAAAAAAAI/AAAAAAAAAH8/xrPoh1Zj6Cc/photo.jpg?sz=50', 'c9ae1ddcb076f4409641d0ca432ecb017946108be5b12a56473dcf27e11d1e71', 'A570CD95-DCBE-4A8E-AFD6-626D019ECF8D', 'ios', 'google', '106763497563246842681', 51.87593956, -0.41433097, NULL, 0.00, 5.00, 0, NULL, '2018-07-16 07:22:08', '2018-07-16 07:23:52'),
(168, 'Kayy', 'Crabb', 'CASH', 'kayycrabb@gmail.com', NULL, '$2y$10$DKgigaK3N874c8jsvh4tpe3/tLO2kANMtNQuxQ3zRtSL5te9ax.9e', 'https://lh4.googleusercontent.com/-RpX4NRizLZI/AAAAAAAAAAI/AAAAAAAAAN0/KacRbqb_j3Y/photo.jpg?sz=50', 'd9477337954f2ebc31bdf824b6b15756ebb6cbe79f715870e176859a088aa543', '5A8D1B32-E181-4045-BEE7-AD3738DCF441', 'ios', 'google', '108504391044157293496', 41.89895768, -87.66008327, NULL, 0.00, 5.00, 0, NULL, '2018-07-20 13:18:18', '2018-07-20 13:20:30'),
(169, 'Abc', 'Abc', 'CASH', 'abc@abc.abc', '+33769922254', '$2y$10$iYFRs8XiIdYRZhi5mCTgt.qjPkKaodHCeQ3/hjLjNI3jEpOKfHuPW', '', 'eumrqZ7I3W8:APA91bHr88HBJgWIZEi2Y9bGsdywixTFDmpZqBOIXCsDiDqezcMxC8Oj269_kF3JxI_7sQsoV-XYGfW9_sCjhkNbH_2QF9qnqS_JygSP0bZ88jqDyz9hwAmIXrQ6uyViMHWDKkp5NRB7DRKjrwyTqfDBE9xKWqFnPQ', '11aeeee83db00cbd', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-08-02 06:22:43', '2018-08-02 06:22:43'),
(170, 'Fast', 'F', 'CASH', 'fast@gmail.com', '+923205802299', '$2y$10$0jgf.oV7eufwVVtc1IiMbuR5/udqaKquO6umGJQoSf1LY5LA1P24C', '', 'dqUrq3yvhvM:APA91bG0_XMqCOcfP12_iY_AHXjs1mwZNyGDkBxbGs_MHJK4FFNvCsgqpkMwv8VdAJHejf5kpdfDY9r4Tvribiez-v75sX5y7r2Hsl_t3NS7anq3mYPvb0JfF_nbjrZ9mHW1uhU6N13U', '5f20066121524873', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-08-08 00:19:56', '2018-09-20 07:22:12'),
(171, 'Furious', 'F', 'CASH', 'furious@gmail.com', '+923205802299', '$2y$10$6zp0eVRWSJDHr0GYzMC7BezA9s8zimNDDNwZth5QhC8Vtno991ya6', '', 'c_6YWzcjqQw:APA91bEgAFhG83uOMO1kkKg3IcYvoaAUv6eZHuAohrSp1Cj59Jy2WTwxAvOLGepPgQfErVg55hE0sCrb0CjHDEypABC47nSC9674K7kfDMMxWXMTuqJND_HX5fh_BOLQdrSkDmnDxLwhg_2VfCPpcbusg1M8f0tYFw', '273d9db01506c767', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-08-08 00:22:54', '2018-08-08 00:30:03'),
(172, 'Aubrey', 'Benjamin', 'CASH', 'aubreybenjamin07@gmail.com', NULL, '$2y$10$4IcxJIcwyU5IdHeNxiT0pe4.U4bUohjQiABS/lp8kzk/JQXjP584e', 'https://lh3.googleusercontent.com/-f3V3oelFbJs/AAAAAAAAAAI/AAAAAAAAATA/UAWK9yQvoVI/photo.jpg?sz=50', 'no device', 'F90CF106-FD6F-4EA9-B354-05CCCC1DA38E', 'ios', 'google', '117007427531239221784', 32.79321470, -116.93623293, NULL, 0.00, 5.00, 0, NULL, '2018-08-11 04:59:35', '2018-08-11 05:10:15'),
(173, 'Edd', 'Man', 'CASH', 'eddymas78@gmail.com', NULL, '$2y$10$Iljbwz4AS/x7EOIxfdUr4eqq2iYmgrkHGDn0kLfED/ZLasq6UChsG', 'https://lh6.googleusercontent.com/-08h6Co2Tr74/AAAAAAAAAAI/AAAAAAAAAAA/AAnnY7pWVjKt7B-qjFBOEZr1R7s0TzQu7w/mo/photo.jpg?sz=50', 'No Device', 'DCEE2975-63B1-4199-BC98-FF22EEBC0993', 'ios', 'google', '108010174609885154679', 38.88893591, -77.18366303, NULL, 0.00, 5.00, 0, NULL, '2018-08-11 05:57:20', '2018-08-11 06:03:37'),
(174, 'Yiahia', 'Rinad', 'CASH', 'yiahia.rinaf@gmail.com', NULL, '$2y$10$Ih1jwMEPouzL4nz19XojDeL3w2CprfGbzsHg6W.YY5PDFmXSdm/uW', 'https://lh4.googleusercontent.com/-KWzNY6mn-mU/AAAAAAAAAAI/AAAAAAAAAB0/hVzWrD6Bq4s/photo.jpg?sz=50', 'no device', '58569C89-A51D-4245-92F1-46F66560246F', 'ios', 'google', '100446026980796119944', 23.74531027, 90.37055520, NULL, 0.00, 5.00, 0, NULL, '2018-08-12 01:45:19', '2018-09-26 01:14:45'),
(175, 'Trayy', 'Morgan', 'CASH', 'trayym813@gmail.com', NULL, '$2y$10$gQr04ZpJrbOVo5t5YBkGFuJRcd0YQtTtCLab4FikKTiESLng5mNAK', 'https://lh5.googleusercontent.com/-HtYQavCGWcM/AAAAAAAAAAI/AAAAAAAAAAA/AAnnY7pQKi55D371Nc7kqIo3N8Se8QJD5g/mo/photo.jpg?sz=50', 'f04c589e2f0def1a6969cfa19bb3cceff262eb09a6e1f412f62ce488a68990d0', 'D03DADA2-C0E0-4445-9C17-667384B63AE3', 'ios', 'google', '110310362163991791489', 25.87533200, -80.21566893, NULL, 0.00, 5.00, 0, NULL, '2018-08-13 17:56:22', '2018-08-13 17:57:27'),
(176, 'test', 'test', 'CASH', 'kashif.malik@propertyxpo.com', '+918449808780', '$2y$10$8G31bkZd1q3/9XXzC2tavuYVyU4OZcKuFUyy.07KrtaOl4nY1jNO6', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-08-15 00:43:50', '2018-08-16 01:31:17'),
(177, 'Kashif', 'Malik', 'CASH', 'wantedtalks@gmail.com', '+918449808780', '$2y$10$fX5Ea2EAGoIb.1ybwX10z.RDRW5UTDHL24gXcjeRcC.SlDZW0qqAy', '', '', '', 'android', 'manual', '', NULL, NULL, 'cus_DQFeyhTgw28c3c', 0.00, 5.00, 0, NULL, '2018-08-16 01:32:40', '2018-08-16 01:36:16'),
(178, 'kamaran', 'rauf', 'CASH', 'kamaran3000@hotmail.com', '491732632357', '$2y$10$E1S6z2.xZhibDCmcZaM8QuBHsWtrxKw.4KTmD07/pHSQAnodgCpFS', NULL, '', '', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-08-18 11:11:12', '2018-08-25 09:35:31'),
(179, 'Si', 'Ko', 'CASH', 'krauf98@gmail.com', '+491732632357', '$2y$10$ay68rR9jeT3Hg9taGr4gJ.PUxRjm0UPpjg7uKBgml0uyFJLChcrlu', '', 'c_1LXYLnOfA:APA91bE-MGbB3MRXc8JxQ-7bj7_Gj4mDa9zrTIfRqwuuzT_G6LF362ZrTDvWABPT8HUcRIR0jPHm-GWb6HUaB1EpZTqfmnUqegjjYZqTmjM7vX8Cpxgzzb7PxKrnIy2lOo3mQFE32xlHUhecF3cc3oUIFpQAUxKvhw', '24dc2cf55ca80795', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-08-25 09:36:57', '2018-09-11 04:12:23'),
(180, 'Keyawna', 'Grant', 'CASH', 'keyawnagrant@gmail.com', NULL, '$2y$10$.ZujM.UPRxqGCayevEq.LuDdd7Pd9NNnvj0Wy1r/.aZBS84xadz..', 'https://lh6.googleusercontent.com/-iq9BXt9azQs/AAAAAAAAAAI/AAAAAAAAIhQ/yfED-dopTxc/photo.jpg?sz=50', '154551e710b4b1bef64a0b241d31a60fc8344662386f7767d29cb292f4609e53', 'D92406B5-A63B-4262-8104-8E8A9B25EC10', 'ios', 'google', '110405487298933783841', 39.02552979, -94.56483794, NULL, 0.00, 5.00, 0, NULL, '2018-08-25 14:01:10', '2018-08-25 14:02:10'),
(181, 'a', 'a', 'CASH', 'a@g', 'a3', '$2y$10$euI2AmTiRoM5V4vdL1Xvmu3Yzg1V6VMUIDk8LaoAhTRd3dBTnsaKi', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-01 02:40:31', '2018-09-01 02:40:31'),
(182, 'Vzvs', 'Vzzg', 'CASH', 'zohaibn@gmail.com', '+923202553174', '$2y$10$xpollyL844dVWg6mZSBVXu26Qqi.oZfphf1F26yNf49EiwERSeNsC', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-02 02:23:04', '2018-09-19 23:39:17'),
(183, 'Carlos Miguel', 'Martinez Gonzalez', 'CASH', 'carlosmiguel.martinezgonzalez@gmail.com', '+527225854055', '$2y$10$yRAEYXK5P3kWSAugvoDD8es6PkV1UbF0lT9VrE/TkvVPjjtsZN6qS', 'app/public/user/profile/d6e22fdc4beddf401c7dd214841822c5.jpeg', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-04 10:41:04', '2018-09-10 09:24:19'),
(184, 'Lutfatun', 'Nesha', 'CASH', 'lutfatun.nesha@gmail.com', '+918019763321', '$2y$10$luZBb.vQnju7HpaqfcU5W.b3IhAYAFTBqw1BFGojXB3Cs1CPLC0bS', '', 'fWJkAYILISQ:APA91bGZAt-ywT072_J6HUqRXgOROBYwbTlWBV1R-KneZx-XLBu4v6eOQ4Fecoti2EnPXplnrSJ6wZJAIiFB7UDMwcXFQLSTBpOHk2VkjKBZGwdzuEBuzsgEvctvIssIX9WzyRFDMSZF', '355221b3489a1470', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-05 16:48:39', '2018-09-05 16:48:39'),
(185, 'ZaQuan', 'Smith', 'CASH', 'zsmith@detroitdenby.org', NULL, '$2y$10$IpEcr4tJhkI3k0AzvgcyQeVAhrYboSmdGMpgP8PTnCsiLO/LFgUUq', 'https://lh6.googleusercontent.com/-Jpnxwogg_o0/AAAAAAAAAAI/AAAAAAAAAAA/APUIFaPos9FEIyspnzQEkxQDy2Nl3QqPJw/mo/photo.jpg?sz=50', '8f82acb7328cd9851d0592e5d708a9ab0d3a1fc75d68555322467e739340916d', '24C42AC1-5E05-423D-B9F5-2E86701717E6', 'ios', 'google', '118091870651561048349', 42.44503532, -83.05055159, NULL, 0.00, 5.00, 0, NULL, '2018-09-10 17:56:22', '2018-09-10 17:56:36'),
(186, 'jawunn', 'Alley', 'CASH', 'jawunnalley3@gmail.com', NULL, '$2y$10$Gz12QppXWk66YIOH5W9XKemD9bP3gFnA.Ho3xiUXjP8n7s3NG8Kq.', 'https://lh4.googleusercontent.com/-uTjxJCrHnzc/AAAAAAAAAAI/AAAAAAAAAAA/APUIFaNMcpwsutf47BqOVVe1P5Eg9_pEIg/mo/photo.jpg?sz=50', '98c57bded2f4cad9b413596786a41b7889bcd202fd95b7efa42fbd87449b8c7f', '73A17EB8-9C8E-4B70-B3EE-440500C000C9', 'ios', 'google', '105206643978433571969', 29.89006096, -95.49843242, NULL, 0.00, 5.00, 0, NULL, '2018-09-10 21:55:27', '2018-09-10 22:18:58'),
(187, 'Rar', 'K', 'CASH', 'rar@gmail.com', '+923129103929', '$2y$10$YyLIjoBsQrKuNIwf7zbFV.JVTIZ2KmAouu3WOPV/XEDAG4HEfWT8W', '', 'dYQmrd7i3D8:APA91bH-m8tKwIj-6cvmhA8IvBkobHrzufAnB1fMUq_abeIDYk5ctk6FOCKHo2vzMhaqLdJODgz35clNwfgcFyfohYY9Zz7IQqdgmzbxWw9fpGrChvn_qcZJF5pJe0rjxqqB7qhNEHrx', '63deaa3fad891b86', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-10 22:57:43', '2018-09-26 04:46:08'),
(188, 'Munkhbaatar', 'Jonon', 'CASH', 'jonon1969@gmail.com', '+97699249812', '$2y$10$u42fgikzo5ADwZtfMMDvMeJRXV4jNw4yjJRQvIp8F6WSjUWXIzrUi', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-11 04:58:49', '2018-09-18 02:18:16'),
(189, 'ali', 'bou', 'CASH', 'ali.bouaoune@gmail.com', '+213671682605', '$2y$10$ZfZO1Awf9AE8Bg5TTKaEI.gq5OSUuqVIDLLnA.kgIlShfy395hK5a', '', 'fI691YzWH-c:APA91bEnrs9ZT_B5TMXC7sYIDwIL33b2ZQAZBbDI0qlngtNR1QnUbqls49oFkI6_wxOFLPeUiVNUb3SeCIjSyj3og0oSIXMCfNChCbJ0quGAiHJto803AfACCpM4H3rjSXN9d0hZR3Iv', 'ab174c0ed6359534', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-12 05:11:53', '2018-09-12 10:57:14'),
(190, 'Ahmed', 'Rashad', 'CASH', 'bin.rashad@gmail.com', '+967734144244', '$2y$10$.gr8SG8/AiAeKiksCo2XsO.SrNmndDXqn5JhKkUhcu0Y9vplvK1ou', '', 'cM6QoTthuXo:APA91bHnNbEHYbodv1N51RDyJTp7UNHM3epj6Ikvc_CBO0l4mR4_UWgqPcIhy071_ROBpa7vXI1tPSL19BYWaCWBoAHtDh507Gk2nDtnCy9m_dzsMIm2Lh7SrsujM1AVv3gWG0CwXF-s', '1ad3ff4fc38b044d', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-12 09:38:54', '2018-09-13 08:36:00'),
(191, 'Jose', 'Rodriguez', 'CASH', 'jmra0226@gmail.com', '+573208732439', '$2y$10$t0J9hyt6VVPWoLyQ2eSZbOL4mL5BGgh/52d29nI/rCkLu7UeY6P.G', 'app/public/user/profile/50fbd736e3e18301f8face1ac6a845a7.jpeg', 'elFkZY18pyo:APA91bHpZFF-utYdTUFXsTKwZ7kkHe-6snxZtw1cNuJZIIHr-9IWorXhbUak8rZdYefcECKRTWM6oe9drfW8mVCU7cIUMSslvY1JJpFN80-YMstOOFlBOYTXInA-C-sGqYaMbfYS2x-7', 'bab897c27cfcde76', 'android', 'manual', '', NULL, NULL, 'cus_Dc1PT3T2k2YiPM', 0.00, 5.00, 0, NULL, '2018-09-15 06:28:31', '2018-09-26 13:33:35'),
(192, 'Fg', 'Vgg', 'CASH', 'abhaynabby@gmail.com', '+918109692018', '$2y$10$dzrQFhzGdJ7kYTe5Nnns3uCRkqbsUBv5B/YvtoS2AL7PIIdqDKiF.', '', 'cq8bhRntyeE:APA91bHNWUAHyty4TgZzdHmFnEMgqsiVbujhzCZDaEX2PXoA_y69yUZXbPkcnHQO4ccLJpez-yIVc5DFy4N38pJwZlKDl4junyFFaJBrfISyRlvhCUxMnM3wWTfcTesyZvmwWeN3G64w', '17da81469e872e19', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 338236, NULL, '2018-09-15 11:03:44', '2018-09-20 14:50:16'),
(193, 'Kunj', 'Bihari', 'CASH', 'kunjroy80@gmail.com', '+917987929695', '$2y$10$4czB0Gqxb5VhCRVmj/p.q.ORESJOqmJ6zIrpWuyESfKgjJaD2cElS', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-15 19:18:15', '2018-09-15 19:45:40'),
(194, 'Shashwat', 'Pandey', 'CASH', 'shashwatp145@gmail.com', '+918789228973', '$2y$10$lSQqb4DO17RLBWkxIK3Rlu1dsDDz1m4zXeiKZDZ32ux4cjaxypjry', '', 'dOBnGJTsEto:APA91bFn21-GihWCJqo8KtoD3mEyyCUO8K5OgCMxJxYtlcActWw9yaT3I_T_hfa6wBMESBUPoQWjHWcVm3btOvJfSc-XCbLnZTazVFRztmEHQ6B51rembkRMOs7nQtdeUZ3rep2I2lRj', '79b27e5eac2ecc23', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-17 02:29:45', '2018-09-19 03:05:07'),
(195, 'Akshat', 'Nanda', 'CASH', 'akshatnanda23@gmail.com', '+917903748417', '$2y$10$Z0aLJ0UJO97/crNPfgeiMewmmYutBp3rLg4gdYs1xQW3RabD3aXrS', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-17 02:31:32', '2018-09-18 05:25:30'),
(196, 'Bapid', 'Bb', 'CASH', 'bapid@bit-degree.com', '+918789228973', '$2y$10$NKIt4UwppNlrQ8ENog4/EunnUrMjmWCAns9bdI0gQUEU1M9K5cX3y', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-18 05:01:44', '2018-09-18 05:05:08'),
(197, 'Shjdk', 'Jfjf', 'CASH', 'bp@gmail.com', '+918789228973', '$2y$10$2GRWyZs3sDgUi4NXypsai.0u/kRLK81YH/znMhoHlkdYhG0myz5ra', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-18 05:17:57', '2018-09-18 05:18:52'),
(198, 'Prakhar', 'Pragya', 'CASH', 'pragyaprakhar30@gmail.com', '+919110901232', '$2y$10$twgQBvrsa8GyAjSGINxYQ.WELZNYYSfcUMGBszunktPaaPAFZryru', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-18 21:04:18', '2018-09-18 21:07:10'),
(199, 'SM', 'Mahi', 'CASH', 'mahi7ete@gmail.com', '+8801678048994', '$2y$10$7/gZylEPCeHNH.wnlnTXSumNvDMcDaRlZ.Pjyn/uvK2vEOAZoklsa', '', 'cYe611e9r9g:APA91bGb_Kefc6j16n9DTm1qeLLeQig05asx1pvG1dVzbCf38A6As_YWiGlIncY_M6nppya8cMHp8L5PTDRCIAjY9_sxPQHG5VHjmk8HmfbhxXcoTISfzVpJGxpiV0AJVb9Y0zPMgAIc', 'eefe2b4f6de1efd6', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-20 02:05:02', '2018-09-20 03:22:41'),
(200, 'Abhay', 'Utkarsh', 'CASH', 'abhaynabby@outlook.Com', '+918109692018', '$2y$10$aDyO7fl6bqVGFnTvRrmB7OkIBo6YWJyzyMsJ86rjw7zWUOkOIda9C', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-20 04:53:24', '2018-09-20 05:02:06'),
(201, 'Utkarsh', 'Abhay', 'CASH', 'diamonddevs@gmail.com', '+918109692018', '$2y$10$syFTO4RmENo91Ujilbvvz.NVxWew8a34Qi/iahDorzU/7DRRA/M.C', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-20 05:03:42', '2018-09-20 05:06:04'),
(202, 'Jose ', 'Soli', 'CASH', 'solivellas@hotmail.com', '+13473144385', '$2y$10$m7Zmmk9pboltJ.5EKoQxP.O4wkfxlZG1fZwJ4VGcbwlOo5VKetjOW', '', 'dR-lg_XFe-Y:APA91bFcp6UYmQB5l0GZoc0_rR5Qj7Rwi1mkCgrphnjBQujFOZB-dTxpwcqH_T62DXAuF5LtRoAKwPD8TR2tB_Nz-a2efXysPYd3Wkjqrk5VKcaXN8-oZ0-P-N7PbZUDDkx4OCj7cI-J', '0cdc01e284bf2ddb', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-20 05:51:20', '2018-09-20 05:52:54'),
(203, 'Alan', 'Aripez', 'CASH', 'alanaripez@gmail.com', '+526241225832', '$2y$10$z9rzJ5uXLzBBrwnajEFhVe0qh1dtXOz78jfh4a6R46.RZSFkBnrhK', '', 'fW7kFGA7gRg:APA91bFSmBfxwQk41WVSPbnMIlgYp9spoSXI7xtF8Qs_Eh_dQHCxa-M7eRmsGW0V6gj1zU8zCxdR8GLGEjjxItefzedth_icznOpSCcoieb8RAx6oZtIUkzxUIGNipfdedo5GxrJHn5r', '4fc480e35963613e', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-20 10:56:59', '2018-09-20 10:56:59'),
(204, 'Julio', 'Lopes', 'CASH', 'juliotarcom@hotmail.com', NULL, '$2y$10$Rh9niMOgffjysl4Z/WmxnOEQ.Rmf.n17KtgPNAINIRa3YRyLhtK8e', 'https://lh3.googleusercontent.com/-oedm0zkSDII/AAAAAAAAAAI/AAAAAAAAADU/Bs9x4-ImZpU/photo.jpg?sz=50', 'no device', 'B69F503F-6A0C-4095-9A9F-5F79FB5F5909', 'ios', 'google', '102504299710180364465', -20.75416202, -42.87903435, NULL, 0.00, 5.00, 0, NULL, '2018-09-21 17:53:00', '2018-09-25 05:55:26'),
(205, 'DEBASISH', 'GHARAMI', 'CASH', 'debasish.gharami12@gmail.com', '+917547918933', '$2y$10$GmAxNPbA7y4DVwVqfZPSfOKvsF/jzekfFz26GowE3fl.bYn2gKUjC', '', 'dRseqqSeWHY:APA91bGYAVq0Wnfvwl4cL1ygP1pxj48KZRbhIsf0YtLSVatOag2LNuQAWw_kZilRiXfy1HKEViohspHFX0ZXfg2VSUk3qRwvTHS5NWdahRpVv5eM6qdz6bnn3K1GFAXsdVOsf-DVgkwh', 'e5f43ff9d3a56ff6', 'android', 'manual', '', NULL, NULL, 'cus_DeP8AcG3VDUrdi', 0.00, 5.00, 0, NULL, '2018-09-22 20:16:32', '2018-09-22 20:32:40'),
(206, 'Asd', 'Dsa', 'CASH', 'dragan@gmail.com', '+38970872691', '$2y$10$eZwc7UTlJzXMJiUhxk6z.OR03bq.Ta7jX/MXE5VrNOX7GXlEgcBZ.', 'app/public/user/profile/110a05313e7ce9bee0e0a171ad58fc88.jpeg', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, 'tRFI2yjsG4ptdM6yNPyE5yf3bvy0odt3WAg1eV3c6f75Rq5KaiNbcGDSPDeG', '2018-09-23 04:15:31', '2018-09-24 04:24:19'),
(207, 'Mostafa', 'Biomee', 'CASH', 'm.biomee@gmail.com', '+201099098059', '$2y$10$YnLJbcjbG3aeeu8htJVkc.rfGLiZTOt2wJ3frSMd.DmgxYN6yjR4W', '', 'dSRsryA1kEY:APA91bHvqA7GefWm6W9La3mubRzRHtqvZcH5fcK5heC33j2kWCMCMPnBatc5Wqpk1beQW_XVdoZx7-OjYmbi_k_WhjvokVNnJJW7E6pu9V0yO06B-suSwWlp7arpC_Y6xyADl4MPZiMd', '64dffbef18c39baf', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-25 12:31:45', '2018-09-25 12:31:45'),
(208, 'Alpesh', 'Ramani', 'CASH', 'dnkalpesh@gmail.com', '+919375852210', '$2y$10$ZiPlPXbkG30IX3QRXXAKWO0JeZLt0Hf/NyTa/pwAh0hwdueaqcc7u', '', 'c7JExrYmZmY:APA91bGdiKz6mGgBI-B0H5VDWsmnJ9EQhe-gBuSvb3PzBSPfNvlYjFTRthXbClpXf5Hr_Capl4t6XZkHcHKXA9Sh0SsijbEu7hknR-5A6xXSpiNb-hnP2Tj_YhFiFgLvyyLjVBw-q6lR', 'e5404efc4d90c654', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-25 22:16:34', '2018-09-25 22:16:34'),
(209, 'Kakajjsjs', 'Jdudujdb', 'CASH', 'imarco.tesen@gmail.com', '+51989596444', '$2y$10$fkXOXbyB6oczDrZIUuL.iebjERaKbexLbpSRv01k8Pl2U3hDWXHZW', '', 'fsJQUd8KMEI:APA91bEp0WVTa7yb2Gt-VZ4NW7nOB5uRFsnfqUWMudLfjLLdecnhGOTeAyCA9Z3lJS4ysrSo3cH92GAVbFc3J1KwuAchF3FyGkUm0qzKC1s10RgF7NXE_GZsKsYLhDzJ_PNVMOSKEQxZ', 'f3225c69053f4598', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-09-26 17:28:15', '2018-09-26 17:28:15'),
(210, 'bill', 'khan', 'CASH', 'bill@gmail.com', '+923466772229', '$2y$10$GsfevmqywvhNkI9dHn.m6OSDhB6yRaq5unxkD6Ad7mZElg6/mi88K', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, 'JpjHgZaTLKy9ZhWwb2j5y0Vzvfr5VpeZOvorlXaqJPifmPIrzPjx4HTRVwEc', '2018-10-29 07:15:10', '2018-10-29 07:15:16'),
(211, 'farhan', 'khan', 'CASH', 'farhan@gmail.com', '+923440660242', '$2y$10$dxO5Dgo3eiq3lxybAh25UOA8v0RC6NxLLXPeRMcbLBWN7nJdE9f66', '', 'f9sGm4kfsoA:APA91bHMsA6yiFQwyz8CdD4oRR3LiwtwjFbPhgOoSXialGSZpoMVOh9gGuh2UoBwvJK8x767bW8Y0xMdrtzVoKR7F1Oyv9GiIrH8vONcFw-6DGnuOYCw8ZWVukluktfC0Q3r-FDLiKLi', '265d25d08d75e506', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-10-29 20:42:13', '2018-10-29 20:42:13'),
(212, 'Miyo', 'Alexander', 'CASH', 'ateammobility@gmail.com', '+16126959523', '$2y$10$5ReqIKNHfble3Of2VmfK3.QsAKped5QTOEktjZNMjs91OKZ2Qx9Oe', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-10-31 20:42:47', '2018-10-31 20:44:49'),
(213, 'Miyo', 'Alexander', 'CASH', 'ateamservices@live.com', '6122938294', '$2y$10$kQ/pcARi7WdpFpVz1CCjs.5cHD0bkPyK3ykXN7WVXZBmwVtWngEre', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-11-01 13:23:18', '2018-11-01 13:23:18'),
(214, 'GregoryHiplyNN', 'GregoryHiplyNN', 'CASH', 'las@lasercalibration.ru', 'Zambia88266389317', '$2y$10$k92S72OP9ZlHdne.9qhKm.zpcRObrM.3LseYUMvSrulFFKahT9OcW', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2018-11-01 21:04:45', '2018-11-01 21:04:45'),
(215, 'Miyo', 'Alexander', 'CASH', 'Family1844@outlook.com', '6512313907', '$2y$10$WagD2ImCz5n/TBQ8iHaWOOPxU2ZWaUAPo9cXL1w4fOQHDO3egYamW', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, 'QzuDmTW8STBFkfW9RlaIW22pTXW1PXeDSUQb3OJn32ISqiBZO4D5QBweUlPH', '2019-07-16 03:07:32', '2019-07-16 23:45:35'),
(216, 'Muhammad', 'Tayyab', 'CASH', 'tayyab@macrotechgroups.com', '+923082097852', '$2y$10$Ed8oXJkRDEuqarXJA3.0uelfoucZkJNpyLwJEj3XvhqGoUqb22wua', NULL, NULL, NULL, 'android', 'manual', NULL, 31.46910630, 74.29475940, NULL, 0.00, 5.00, 0, '925pjPyWbA5DrznfSOVkaIzmSMtbHQGnZ17dtIjaD3f0brZui3vpY0Tt69p4', '2019-07-16 20:00:03', '2019-07-26 06:15:23'),
(217, 'Muhammad', 'Tayyab', 'CASH', 'm.tayyab9736@gmail.com', '+923082097852', '$2y$10$9HLza/pW2M0ej8RfC68AkO6okejublAOXpgjVXNbI2wTGGsVspuzm', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, 'GzeEsK3Q5I5GLAwcx2kUaCUZb0jJJiRmX6lhGRJi4cB82yImuB679gexKMVk', '2019-07-18 07:09:08', '2019-07-26 10:03:01'),
(218, 'Admin', 'Admin', 'CASH', 'admin@macrotechgroups.com', '+923418877111', '$2y$10$ATt4qwfHC.mU5igHEV2bs.tKUcpE9MG1L60GZNQn6y1AJzPvuDYtK', 'app/public/user/profile/6e0c94c36f410df3c63c893e4be65b3f.jpeg', NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2019-07-26 11:25:37', '2019-07-26 13:21:43'),
(219, 'Yousuf', 'Awan', 'CASH', 'yousufawan27@gmail.com', '+923333044200', '$2y$10$ZbQHko1ZVCXVrgTSGifyG.xv.UBrcElAWbvxSGUXj3qsN.IGE8fW2', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2019-10-23 01:13:08', '2019-10-23 01:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_requests`
--

CREATE TABLE `user_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL DEFAULT 0,
  `current_provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('SEARCHING','CANCELLED','ACCEPTED','STARTED','ARRIVED','PICKEDUP','DROPPED','COMPLETED','SCHEDULED') COLLATE utf8_unicode_ci NOT NULL,
  `cancelled_by` enum('NONE','USER','PROVIDER') COLLATE utf8_unicode_ci NOT NULL,
  `cancel_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` enum('CASH','CARD','PAYPAL') COLLATE utf8_unicode_ci NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `distance` double(15,8) DEFAULT NULL,
  `s_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s_latitude` double(15,8) NOT NULL,
  `s_longitude` double(15,8) NOT NULL,
  `d_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_latitude` double(15,8) NOT NULL,
  `d_longitude` double(15,8) NOT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `schedule_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  `user_rated` tinyint(1) NOT NULL DEFAULT 0,
  `provider_rated` tinyint(1) NOT NULL DEFAULT 0,
  `use_wallet` tinyint(1) NOT NULL DEFAULT 0,
  `surge` tinyint(1) NOT NULL DEFAULT 0,
  `route_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_requests`
--

INSERT INTO `user_requests` (`id`, `booking_id`, `user_id`, `provider_id`, `current_provider_id`, `service_type_id`, `status`, `cancelled_by`, `cancel_reason`, `payment_mode`, `paid`, `distance`, `s_address`, `s_latitude`, `s_longitude`, `d_address`, `d_latitude`, `d_longitude`, `assigned_at`, `schedule_at`, `started_at`, `finished_at`, `user_rated`, `provider_rated`, `use_wallet`, `surge`, `route_key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(65, 'TRNX253062', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 14.00000000, 'Street 10, Islamabad, Pakistan', 33.65202530, 73.02818260, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-07 00:57:19', NULL, '2018-03-07 01:24:31', '2018-03-07 01:24:39', 1, 1, 0, 0, '{sklEshv|LaAn@}DeJuE}KsHgQwEcL{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzASd@{ArAaHzFaDzBiChBiDxB{@j@[{@eAoC{PjLoEkKUYi@]}@e@OOWk@yAoDIOQLoChBaC`BmAz@wCoH', NULL, '2018-03-07 00:57:19', '2018-03-07 02:14:46'),
(66, 'TRNX598641', 126, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 14.00000000, 'Street 10, Islamabad, Pakistan', 33.65202530, 73.02818260, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-07 01:28:10', NULL, '2018-03-07 01:31:10', '2018-03-07 16:27:42', 1, 1, 0, 0, '{sklEshv|LaAn@}DeJuE}KsHgQwEcL{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzASd@{ArAaHzFaDzBiChBiDxB{@j@[{@eAoC{PjLoEkKUYi@]}@e@OOWk@yAoDIOQLoChBaC`BmAz@wCoH', NULL, '2018-03-07 01:28:10', '2018-03-08 04:56:21'),
(67, 'TRNX933407', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7057 Barry Street,Rosemont, IL 60018 ,United States ', 42.00689784, -87.89154906, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-07 17:22:19', NULL, '2018-03-07 17:23:13', '2018-03-07 17:23:27', 1, 1, 0, 0, 'cnk_G|jmwO|E?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-03-07 17:22:19', '2018-03-07 17:23:49'),
(68, 'TRNX631464', 126, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 4.00000000, 'Saddar Rd, Islamabad, Pakistan', 33.71218350, 73.07908010, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-08 04:57:48', NULL, '2018-03-08 04:58:24', '2018-03-08 04:59:20', 1, 1, 0, 0, 'wkwlEqg`}LO_@HGkDgIiF}LsC{GaDvBwDjC_DrBORABEDM?II?O@Cg@kAaEoJYm@gJbGgItF{F~DoHfFuDlBiB~@y@d@_@^cAj@{IhGc@ZnBbF~ApDdD|HFXCJST{DlCYTvExKlCgBwCoH', NULL, '2018-03-08 04:57:48', '2018-03-08 05:03:06'),
(69, 'TRNX686031', 126, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 4.00000000, 'Saddar Rd, Islamabad, Pakistan', 33.71218350, 73.07908010, 'F-7, Islamabad, Pakistan', 33.71986330, 73.05528540, '2018-03-08 05:03:45', NULL, NULL, NULL, 0, 0, 0, 0, 'wkwlEqg`}Lt@hBTh@HG}@yBPKfAhCpAxCRRh@V`@ZXj@Xb@h@Zl@`@kAx@iOfKOJ[s@M]CEGIIAKDa@V]Pm@HaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|EoCnBbAzBtGjOxBvErAlDrBvE`AxB|BxF`DxHrA_AlAy@TDD@', NULL, '2018-03-08 05:03:45', '2018-03-08 05:04:25'),
(70, 'TRNX420640', 126, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 7.00000000, 'Saddar Rd, Islamabad, Pakistan', 33.71218350, 73.07908010, 'F-8 Markaz, Islamabad, Pakistan', 33.71157690, 73.03978980, '2018-03-08 05:04:43', NULL, '2018-03-08 05:07:35', '2018-03-08 05:07:37', 1, 1, 0, 0, 'wkwlEqg`}Lt@hBTh@HG}@yBPKfAhCpAxCRRh@V`@ZXj@Xb@h@Zl@`@kAx@iOfKOJ[s@M]CEGIIAKDa@V]Pm@HaCzAe_@hWwXdRiClByCpByGlEaCdBsOlKaEnCAHGNGPAJAX?Td@dAvHtQnIvRlCvGxAfDlDlIvLlYrFfMb@lA~@vBbKzUbHlPdEqCzDoCxHiFhFqDlCiBt@|At@bBxCmBJG|@nBBFo@b@', NULL, '2018-03-08 05:04:43', '2018-03-08 05:08:07'),
(71, 'TRNX787322', 126, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 11.00000000, 'Saddar Rd, Islamabad, Pakistan', 33.71218350, 73.07908010, 'F-11 Markaz, Islamabad, Pakistan', 33.68433120, 72.98849950, '2018-03-08 05:08:25', NULL, NULL, NULL, 0, 0, 0, 0, 'wkwlEqg`}Lt@hBTh@HG}@yBPKfAhCpAxCRRh@V`@ZXj@Xb@h@Zl@`@kAx@iSdNgBlAmJtG_Aj@FNeAh@pB~E_@XqBkEIESB}@n@KL?Zp@pBWR@P@RRf@tE|KdDbIn@vAlCjGr@|Av@jBhEjKxB|EpFtMzE|KxMp[jDbIbCrFjFnMtDpIjH`QlDjIbGvNZdAx@nB^r@vDhJrDnIbDtH|EhL~GjPvOr^dE~Jh@hAVZRPHCT?T@RFJHJT@T?J?FRd@vBnFtErKlGfOpPn`@zIvS|ChHmRlMaJdGq@b@YRIXKTMP?J?RGf@]hB]vBAf@@XxCnHdBxDt@jB`@bAj@fAb@h@bA`AJHI^u@bIbCf@FJ?RIh@GREr@CxASE', NULL, '2018-03-08 05:08:25', '2018-03-08 05:10:11'),
(72, 'TRNX326925', 126, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 11.00000000, 'Saddar Rd, Islamabad, Pakistan', 33.71218350, 73.07908010, 'F-11 Markaz, Islamabad, Pakistan', 33.68433120, 72.98849950, '2018-03-08 05:11:07', NULL, NULL, NULL, 0, 0, 0, 0, 'wkwlEqg`}Lt@hBTh@HG}@yBPKfAhCpAxCRRh@V`@ZXj@Xb@h@Zl@`@kAx@iSdNgBlAmJtG_Aj@FNeAh@pB~E_@XqBkEIESB}@n@KL?Zp@pBWR@P@RRf@tE|KdDbIn@vAlCjGr@|Av@jBhEjKxB|EpFtMzE|KxMp[jDbIbCrFjFnMtDpIjH`QlDjIbGvNZdAx@nB^r@vDhJrDnIbDtH|EhL~GjPvOr^dE~Jh@hAVZRPHCT?T@RFJHJT@T?J?FRd@vBnFtErKlGfOpPn`@zIvS|ChHmRlMaJdGq@b@YRIXKTMP?J?RGf@]hB]vBAf@@XxCnHdBxDt@jB`@bAj@fAb@h@bA`AJHI^u@bIbCf@FJ?RIh@GREr@CxASE', NULL, '2018-03-08 05:11:07', '2018-03-08 05:11:34'),
(73, 'TRNX378387', 126, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 4.00000000, 'Saddar Rd, Islamabad, Pakistan', 33.71218350, 73.07908010, 'F-7, Islamabad, Pakistan', 33.71986330, 73.05528540, '2018-03-08 05:12:45', NULL, '2018-03-08 05:15:12', '2018-03-08 05:15:18', 1, 1, 0, 0, 'wkwlEqg`}Lt@hBTh@HG}@yBPKfAhCpAxCRRh@V`@ZXj@Xb@h@Zl@`@kAx@iOfKOJ[s@M]CEGIIAKDa@V]Pm@HaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|EoCnBbAzBtGjOxBvErAlDrBvE`AxB|BxF`DxHrA_AlAy@TDD@', NULL, '2018-03-08 05:12:45', '2018-03-08 05:15:39'),
(74, 'TRNX278992', 126, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 7.00000000, 'Saddar Rd, Islamabad, Pakistan', 33.71354040, 73.07908010, 'F-8 Markaz, Islamabad, Pakistan', 33.71157690, 73.03978980, '2018-03-08 05:16:29', NULL, NULL, NULL, 0, 0, 0, 0, 'wtwlEcg`}L[s@hAw@rCkBPOVl@|ApDfAhCpAxCRRh@VRLLLXj@Xb@LJZNl@`@uQ`MOJ[s@M]GKGCK?y@f@[H]DaCzAe_@hWwPhL_GzDiClBsL~HaCdBoA|@cMnIaEnCAHGNGPCd@?Td@dAvHtQnIvRlCvGdB`ExQ`c@rFfMb@lAbMrYbHlPdEqCzDoCfKeHhH_Ft@|At@bBxCmBJG|@nBBFOJ_@V', NULL, '2018-03-08 05:16:29', '2018-03-08 05:16:51'),
(75, 'TRNX163229', 126, 114, 114, 1, 'CANCELLED', 'PROVIDER', '', 'CASH', 0, 9.00000000, 'Saddar Rd, Islamabad, Pakistan', 33.71354040, 73.07908010, 'F-9, Islamabad, Pakistan', 33.70172350, 73.02281730, '2018-03-08 05:17:31', NULL, NULL, NULL, 0, 0, 0, 0, 'wtwlEcg`}LrBzEvBbFd@p@HPiA`BW\\]^a@VgA^oB`@sAXw@P_Ab@eJhGcAn@}@r@P^j@lA^|@x@rBpB~EOLOJWk@}AcDCAM?YLs@l@EVr@zBWR@H@ZjAxCvHxQZr@~@pB|AvD~AjDxDpJ`CnFhF|LxChHnCjGjI~RxEfLhC|FbHtP|KnWxD`JlGnOp@~ANd@Tr@|@nB~@vBvF~MvDvIjOf^pJdUfHlP|BrF^n@ZVh@Ch@NJRBd@AJSj@a@`@UJWDU?WEMOKQGi@Fc@HODEEk@ESo@_B_EoJeLgXoBkEeG|DoLjIm@b@a@d@eA~A]r@Gd@', NULL, '2018-03-08 05:17:31', '2018-03-08 23:03:27'),
(76, 'TRNX918689', 129, 0, 116, 1, 'CANCELLED', 'USER', NULL, 'CASH', 0, 5.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00685138, -87.89155548, '1472 Willow Ave, Des Plaines, IL 60016, USA', 42.04774900, -87.88731400, '2018-03-08 09:47:35', NULL, NULL, NULL, 0, 0, 0, 0, 'ymk_G|jmwOrE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@Ak@DwMRyCBw@AwJBwIB_SDwKDg@COKYe@q@`@QHICMAe@@mE?kJAmA?OFGBcB?s@?gA@eE?yDCmB?u@Iu@AcB?wAAqICk@Cc@IeAo@kCmBeJ{GiDeCqDoCoIsGkHqFmA{@uB_BUOKCUMQKIAI@MNQf@EPGBO~EI|B[`@g@?qDAaJBsDCCwBKgJ?y@eBbE', NULL, '2018-03-08 09:47:10', '2018-03-08 09:47:36'),
(77, 'TRNX882477', 129, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 5.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00685004, -87.89155682, '1472 Willow Ave, Des Plaines, IL 60016, USA', 42.04774900, -87.88731400, '2018-03-08 09:50:09', NULL, '2018-03-08 09:51:30', '2018-03-08 09:51:55', 1, 1, 0, 0, 'ymk_G|jmwOrE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@Ak@DwMRyCBw@AwJBwIB_SDwKDg@COKYe@q@`@QHICMAe@@mE?kJAmA?OFGBcB?s@?gA@eE?yDCmB?u@Iu@AcB?wAAqICk@Cc@IeAo@kCmBeJ{GiDeCqDoCoIsGkHqFmA{@uB_BUOKCUMQKIAI@MNQf@EPGBO~EI|B[`@g@?qDAaJBsDCCwBKgJ?y@eBbE', NULL, '2018-03-08 09:50:09', '2018-03-08 09:53:20'),
(78, 'TRNX509211', 121, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00686900, -87.89159920, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-03-08 14:13:48', NULL, '2018-03-08 14:14:17', '2018-03-08 14:14:33', 1, 1, 0, 0, '}mk_G|jmwOvE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-03-08 14:13:48', '2018-03-08 14:14:58'),
(79, 'TRNX665253', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 13.00000000, '37 Street 1, Islamabad 67337, Pakistan', 33.65806000, 73.03923640, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-09 01:17:26', NULL, '2018-03-09 01:18:18', '2018-03-09 01:43:45', 1, 1, 0, 0, 'izllEcox|L]TGQ}DiJoHeQ{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzASd@{ArAaHzFaDzBiChBiDxB{@j@[{@eAoC{PjLoEkKUYi@]}@e@OOWk@yAoDIOQLoChBaC`BmAz@wCoH', NULL, '2018-03-09 01:17:26', '2018-03-09 02:00:14'),
(80, 'TRNX436780', 113, 0, 114, 1, 'CANCELLED', 'USER', NULL, 'CASH', 0, 14.00000000, 'Street 10, Islamabad, Pakistan', 33.65202530, 73.02818260, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-09 02:00:32', NULL, NULL, NULL, 0, 0, 0, 0, '{sklEshv|LaAn@}DeJuE}KsHgQwEcL{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzASd@{ArAaHzFaDzBiChBiDxB{@j@[{@eAoC{PjLoEkKUYi@]}@e@OOWk@yAoDIOQLoChBaC`BmAz@wCoH', NULL, '2018-03-09 02:00:32', '2018-03-09 05:11:55'),
(81, 'TRNX336602', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00683046, -87.89155118, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-09 04:30:21', NULL, '2018-03-09 04:30:40', '2018-03-09 04:30:42', 1, 1, 0, 0, 'umk_G|jmwOnE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-03-09 04:30:21', '2018-03-09 04:30:52'),
(82, 'TRNX890665', 113, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Street 10, Islamabad, Pakistan', 33.65202530, 73.02818260, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-10 20:20:52', NULL, NULL, NULL, 0, 0, 0, 0, '{sklEshv|LaAn@}DeJuE}KsHgQwEcL{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzASd@{ArAaHzFaDzBiChBiDxB{@j@[{@eAoC{PjLoEkKUYi@]}@e@OOWk@yAoDIOQLoChBaC`BmAz@wCoH', NULL, '2018-03-10 20:20:52', '2018-03-10 20:21:06'),
(83, 'TRNX896831', 113, 0, 114, 1, 'CANCELLED', 'USER', 'dgegr', 'CASH', 0, 14.00000000, 'Street 10, Islamabad, Pakistan', 33.65202530, 73.02818260, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-10 20:25:33', NULL, NULL, NULL, 0, 0, 0, 0, '{sklEshv|LaAn@}DeJuE}KsHgQwEcL{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzASd@{ArAaHzFaDzBiChBiDxB{@j@[{@eAoC{PjLoEkKUYi@]}@e@OOWk@yAoDIOQLoChBaC`BmAz@wCoH', NULL, '2018-03-10 20:25:33', '2018-03-10 20:25:41'),
(84, 'TRNX432368', 113, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 13.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65641100, 73.03656150, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-10 20:51:43', NULL, NULL, NULL, 0, 0, 0, 0, 'knllEe{w|LaAn@oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzASd@{ArAaHzFaDzBiChBiDxB{@j@[{@eAoC{PjLoEkKUYi@]}@e@OOWk@yAoDIOQLoChBaC`BmAz@wCoH', NULL, '2018-03-10 20:51:43', '2018-03-10 20:52:06'),
(85, 'TRNX496926', 128, 116, 116, 1, 'CANCELLED', 'USER', NULL, 'CASH', 0, 6.00000000, '2272 West Devon Avenue,Des Plaines, IL 60018 ,United States ', 41.99616166, -87.86930308, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-12 05:35:26', NULL, NULL, NULL, 0, 0, 0, 0, 'yii_G`~hwOBjB`AEBnDHlCF\\@vBFbFDz@{@~E]hBc@tBiBpKsDdTaAdGQt@c@zC[nBSbB~@?bD@tBEdIEjB?r@EzASzA]`Bq@`BcAh@e@`AeA^e@t@mAvCkGxAkCn@}@`@a@x@u@h@a@r@a@^Ox@Wf@Mr@KtCYz@IzCOxAEN?BD@@@@HBZDl@NdAb@|DzBjHrEfBdAd@LX@z@G`BM\\?\\D^LLJbAvAbAtDl@bBhEfNlDfLRr@VlBJrBArBSrB_@fBUr@Yn@Yj@_@f@oHvIw@z@gCxCwF~Ga@d@Yl@Ux@Iz@?bQAlLBz@Fv@h@xCrAnHRn@^f@f@XvC`@VKd@Aj@DtDh@pAVf@PZDHBVPNDTCTMVYP[b@eAr@sA', NULL, '2018-03-12 05:35:26', '2018-03-12 05:35:46'),
(86, 'TRNX989184', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 6.00000000, '2272 West Devon Avenue,Des Plaines, IL 60018 ,United States ', 41.99619329, -87.86936987, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-12 05:36:11', NULL, '2018-03-12 05:36:51', '2018-03-12 05:37:15', 1, 1, 0, 0, 'wii_Gn~hwO@|A`AEBnDHlCF\\@vBFbFDz@{@~E]hBc@tBiBpKsDdTaAdGQt@c@zC[nBSbB~@?bD@tBEdIEjB?r@EzASzA]`Bq@`BcAh@e@`AeA^e@t@mAvCkGxAkCn@}@`@a@x@u@h@a@r@a@^Ox@Wf@Mr@KtCYz@IzCOxAEN?BD@@@@HBZDl@NdAb@|DzBjHrEfBdAd@LX@z@G`BM\\?\\D^LLJbAvAbAtDl@bBhEfNlDfLRr@VlBJrBArBSrB_@fBUr@Yn@Yj@_@f@oHvIw@z@gCxCwF~Ga@d@Yl@Ux@Iz@?bQAlLBz@Fv@h@xCrAnHRn@^f@f@XvC`@VKd@Aj@DtDh@pAVf@PZDHBVPNDTCTMVYP[b@eAr@sA', NULL, '2018-03-12 05:36:11', '2018-03-12 05:37:34'),
(87, 'TRNX500734', 128, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 8.00000000, '7047 Barry Street,Rosemont, IL 60018 ,United States ', 42.00676993, -87.89164011, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-12 12:27:45', '2018-03-16 01:59:00', NULL, NULL, 0, 0, 0, 0, 'imk_G|jmwObE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-03-12 12:27:45', '2018-03-12 12:28:06'),
(88, 'TRNX554170', 128, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 8.00000000, '7047 Barry Street,Rosemont, IL 60018 ,United States ', 42.00680772, -87.89157681, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-12 12:30:05', NULL, NULL, NULL, 0, 0, 0, 0, 'qmk_G|jmwOjE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-03-12 12:30:05', '2018-03-12 12:30:28'),
(89, 'TRNX183823', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00685471, -87.89154637, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-12 12:30:57', NULL, '2018-03-12 12:31:55', '2018-03-12 12:35:46', 1, 1, 0, 0, 'ymk_G|jmwOrE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-03-12 12:30:57', '2018-03-12 12:36:35'),
(90, 'TRNX985768', 128, 116, 116, 1, 'PICKEDUP', 'USER', NULL, 'CASH', 0, 7.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00688021, -87.89153801, '6200 River Rd, Schiller Park, IL 60176, USA', 41.97315400, -87.86284000, '2018-03-15 08:50:26', NULL, '2018-03-15 08:51:23', NULL, 0, 0, 0, 0, '_nk_G|jmwOxE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJSiTCqAEcFIsFKu@GsHAcEOyQKmOOkMFW?m@?aBCuCCaE?o@h@]zFgDlAq@bAm@hCwA`CwARWxBsArMoHlDkB|Aq@hBq@jC{@vNmErGuBd@OLFdDeATCvBm@HWjA]xBq@|NoEpA]VCzACzAPhDb@`C\\`CXHRtEn@B?~@LhGz@bAN`Eb@bBRvL|AxARj@LxC^z@FnCZpFr@tBRrAHz@BbBGrBQlFu@vB[BdB', '2018-03-16 12:22:16', '2018-03-15 08:50:26', '2018-03-16 12:22:16'),
(91, 'TRNX926512', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00682479, -87.89148253, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-16 12:22:52', NULL, '2018-03-16 12:23:07', '2018-03-16 12:23:14', 1, 1, 0, 0, 'smk_G|jmwOlE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-03-16 12:22:52', '2018-03-16 12:23:24'),
(92, 'TRNX889364', 113, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65641100, 73.03656150, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-20 05:21:27', NULL, NULL, NULL, 0, 0, 0, 0, 'knllEe{w|LaAn@oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-03-20 05:21:27', '2018-03-20 05:21:49'),
(93, 'TRNX619011', 113, 123, 123, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65641100, 73.03656150, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-20 05:22:48', NULL, '2018-03-20 05:23:26', '2018-03-20 05:23:52', 1, 1, 0, 0, 'knllEe{w|LaAn@oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-03-20 05:22:48', '2018-03-20 05:25:08'),
(94, 'TRNX536167', 113, 123, 123, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65641100, 73.03656150, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-20 05:28:49', NULL, '2018-03-20 05:29:39', '2018-03-20 05:30:11', 1, 1, 0, 0, 'knllEe{w|LaAn@oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-03-20 05:28:49', '2018-03-20 05:30:54'),
(95, 'TRNX900836', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00691281, -87.89148176, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-20 06:07:16', NULL, '2018-03-20 06:07:37', '2018-03-20 06:08:14', 1, 1, 0, 0, 'enk_G|jmwO~E?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-03-20 06:07:16', '2018-03-20 06:08:30'),
(96, 'TRNX244149', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 7.00000000, '1655 South Elmhurst Road,Elk Grove Village, IL 60007 ,United States ', 42.00269259, -87.93989450, '2811 S Scott St, Des Plaines, IL 60018, USA', 42.00244200, -87.87439000, '2018-03-20 07:43:18', NULL, '2018-03-20 07:43:29', '2018-03-20 07:52:55', 1, 1, 0, 0, 'ysj_GpvvwOkIF@hA_DAmEFKKQAmF?]?[?QQUMIUG}@Kc@F{@DeA@mAGoEIyOCeMQkYE{EJc@MgRK_NOkAIiJY_UIoHEoDIyFAcAHq@EgGG}Fe@y\\UgNQuUI}IEsAKqJMkLK{JMcLG{HEkC?i@hNsDj\\kIOsR_@u_@', NULL, '2018-03-20 07:43:18', '2018-03-20 07:53:11'),
(97, 'TRNX590953', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00689296, -87.89151261, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-20 09:10:52', NULL, '2018-03-20 09:11:17', '2018-03-20 09:11:21', 1, 1, 0, 0, 'ank_G|jmwOzE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-03-20 09:10:52', '2018-03-20 09:12:04'),
(98, 'TRNX237742', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 31.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00682117, -87.89156420, 'Chicago Loop, Chicago, IL, USA', 41.87863500, -87.62505500, '2018-03-21 09:21:06', NULL, '2018-03-21 09:21:27', '2018-03-21 09:21:51', 1, 1, 0, 0, 'smk_G|jmwOlE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XiAx@eB~AMLa@p@TvUB|DX?OoTCcAD[D}@PiAVu@NU^e@~@q@n@a@`@OrAUx@Ct@@tCEnFEjADjA@@Y@M@AAuENcC\\yBZmAz@aChEkMj@iB?g@tGwQ~I{VbFmNhA{CdA_CdBuCjA_Bv@aAzA_B|B_Cx@q@Vi@lAqAdDgD|B}B`AoAn@u@Xe@r@qAj@qAdHeP`R_b@rBeFpA{DhAaEz@eDlCuLdA}Fv@sFb@iEJgBNoCF[BmAFyGAcFOmJDq@EaCI}GE{@OmIK{GQaKQgJEoBSuMUaNDyI@oEV{KZaIRkDt@kLbAsNXaDb@qDdByK`@uCRsBZ}FDkC?mNCuPEeMMcn@Koz@?uJDcBZmD`@eCl@yBv@qBvZgp@bU_f@tEyJt@iBf@wAb@yA`BqHt@eFHi@dAgE^oAnAiDxAaDhAcCdGoMRa@jG}MzAyCrDoGNYxCoFt@_Bp@sB`A}DbAyERy@d@iAf@cA`@{@~@cBv@iA~BsDrA_Cn@gAJQTSxDiH~DmIfA}B|A_D~EgKxFwMzC}GJShDwHhHkOhAyB|AmDxGmNfDgHnBkEh@aBbAaDh@sA\\q@~@sAf@g@jA_A`BiA`MwFzBoAb@[j@i@|AeBpA{Bt@eBr@}Bd@}Br@yEj@oDh@sCb@{Al@{AzDiI~AgDfByD~KcUl@oAbGuL|A}CzDcI~CgG|CiGlDeHdByD~AoE`BwEnBcFr@yAvBoE`AqBlK{TxBwE|HiP|FcMtEwJlGyMbH}NbAiBdCmDzBgCbB_Bh@g@xB{AfBaAtBiA`PeI~CkB~@g@j@[xAaAhAaArAwAlFoGdAaAdAs@`Ag@z@]~@Yt@MpAOhAC|ADtERpBBpBGvAO`C]r@KrA_@pBw@zI{C~@]nBy@bB}@h@_@rAaAzB_Cz@eAj@_A`BsCn@mA|@_BjAmBbC_EhB}CnB{DvEcIn@iA`B{ChAmBd@s@jAsAnCqCj@i@nDyBfBw@v@UhB]nAOfBGtFIvCA~BMxCEzAVdD`@NM|@CfDErCHvA@A_@?y@Ag@CaMGmRCiJCwHG_K@_FCeHCuNIuKGmIGqE', NULL, '2018-03-21 09:21:06', '2018-03-21 09:22:41'),
(99, 'TRNX309369', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00685119, -87.89155157, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-21 14:58:15', NULL, '2018-03-21 14:58:39', '2018-03-21 14:58:45', 1, 1, 0, 0, 'ymk_G|jmwOrE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOlDCbIAtE?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKDF\\Hd@JZHl@V~BpAtG~DlDzBr@X`@DXAbCS^?P@h@L\\Xx@lAbAtDrEtNlEpNPr@ZlBLpBApBOrB]hBUr@Wp@[l@]f@_@f@oItJkHvImB|B[j@Ut@Mx@A~@?xIAzQ@x@Fz@Lv@lBpKPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-03-21 14:58:15', '2018-03-21 14:58:54'),
(100, 'TRNX113234', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 10.00000000, 'H-10, Islamabad, Pakistan', 33.65975690, 73.03923640, 'G-6, Islamabad, Pakistan', 33.71315610, 73.08479790, '2018-03-22 20:25:22', NULL, '2018-03-22 20:25:41', '2018-03-22 20:25:43', 1, 1, 0, 0, 'gemlEymx|LsByE{AbAoE~Ca@ISM}@}@gA_Ao@c@[KaCzAw@l@q@b@mIbGqD~BaC`BoEqKoJuT_EkJqDoIoDsI{BmFiEwJyAmDaAoBSMMQa@w@m@sA_MtIQLK[]y@QEK@s@`@SFUCaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIq@yAc@aA}AyDw@eCaAcEk@_Ca@gAWi@i@aAcBiCuB{CqAoCiBoEmBr@u@h@aG|DcErCmIzFsA~@oGfEtAfD', NULL, '2018-03-22 20:25:22', '2018-03-22 20:26:15'),
(101, 'TRNX460152', 128, 116, 116, 1, 'CANCELLED', 'PROVIDER', NULL, 'CASH', 0, 29.07800000, '7051 Barry Street, Rosemont, IL, USA', 42.00692540, -87.89179620, '50 West Ohio Street, Chicago, IL, USA', 41.89267810, -87.63011080, '2018-03-23 14:44:36', '2018-03-23 04:00:00', NULL, NULL, 0, 0, 0, 0, 'ink_G|jmwObF?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XiAx@eB~AMLa@p@TvUB|DX?OoTCcAD[D}@PiAVu@NU^e@~@q@n@a@`@OrAUx@Ct@@tCEnFEjADjA@@Y@M@AAuENcC\\yBZmAz@aChEkMj@iB?g@tGwQ~I{VbFmNhA{CdA_CdBuCjA_Bv@aAzA_B|B_Cx@q@Vi@lAqAdDgD|B}B`AoAn@u@Xe@r@qAj@qAdHeP`R_b@rBeFpA{DhAaEz@eDlCuLdA}Fv@sFb@iEJgBNoCF[BmAFyGAcFOmJDq@EaCI}GE{@OmIK{GQaKQgJEoBSuMUaNDyI@oEV{KZaIRkDt@kLbAsNXaDb@qDdByK`@uCRsBZ}FDkC?mNCuPEeMMcn@Koz@?uJDcBZmD`@eCl@yBv@qBvZgp@bU_f@tEyJt@iBf@wAb@yA`BqHt@eFHi@dAgE^oAnAiDxAaDhAcCdGoMRa@jG}MzAyCrDoGNYxCoFt@_Bp@sB`A}DbAyERy@d@iAf@cA`@{@~@cBv@iA~BsDrA_Cn@gAJQTSxDiH~DmIfA}B|A_D~EgKxFwMzC}GJShDwHhHkOhAyB|AmDxGmNfDgHnBkEh@aBbAaDh@sA\\q@~@sAf@g@jA_A`BiA`MwFzBoAb@[j@i@|AeBpA{Bt@eBr@}Bd@}Br@yEj@oDh@sCb@{Al@{AzDiI~AgDfByD~KcUl@oAbGuL|A}CzDcI~CgG|CiGlDeHdByD~AoE`BwEnBcFr@yAvBoE`AqBlK{TxBwE|HiP|FcMtEwJlGyMbH}NbAiBdCmDzBgCbB_Bh@g@xB{AfBaAtBiA`PeI~CkB~@g@j@[xAaAhAaArAwAlFoGdAaAdAs@`Ag@z@]~@Yt@MpAOhAC|ADtERpBBpBGvAO`C]r@KrA_@pBw@zI{C~@]nBy@bB}@h@_@rAaAzB_Cz@eAj@_A`BsCh@aA~@q@DE\\[b@]b@UlAc@`AUv@UTO\\_@V_@Ts@NiA@g@Cg@Gg@Mq@e@aCCQi@cDI{@EeB@kAPgDJmDB}AEaNAcK?uEIaAAyFCa@?sAAyFHmHJaDE_HCgQEyHAkE', NULL, '2018-03-23 14:44:36', '2018-03-23 14:46:24'),
(102, 'TRNX786067', 113, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 0.00000000, '1800 Ellis Street,San Francisco, CA 94115, USA ,United States ', 37.78583400, -122.40641700, '51 Yerba Buena Lane,San Francisco, CA 94103, USA ,United States ', 37.78554600, -122.40451400, '2018-03-23 18:07:38', NULL, NULL, NULL, 0, 0, 0, 0, 'w_seFpnbjVEm@@i@F[HQhAsAqAaB', NULL, '2018-03-23 18:07:38', '2018-03-23 18:07:59'),
(103, 'TRNX103358', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 0.00000000, '1800 Ellis Street,San Francisco, CA 94115, USA ,United States ', 37.78583400, -122.40641700, '200-298 Stevenson Street,San Francisco, CA 94103, USA ,United States ', 37.78548900, -122.40516500, '2018-03-23 18:08:53', NULL, '2018-03-23 18:10:58', '2018-03-23 18:25:45', 1, 1, 0, 0, 'w_seFpnbjVEm@@i@F[HQhAsA[a@', NULL, '2018-03-23 18:08:53', '2018-03-23 18:26:29'),
(104, 'TRNX981081', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 6.00000000, '2851 Sawmill Park Drive,Dublin, OH 43017 ,United States ', 40.07941877, -83.09391056, '2851 Sawmill Park Drive,Dublin, OH 43017 ,United States ', 40.04205300, -83.08851000, '2018-03-24 17:10:17', NULL, '2018-03-24 17:10:41', '2018-03-24 17:10:58', 1, 1, 0, 0, '}`ssFxgdzNBmDAOAgAB]rOZbTf@~P`@hPd@pAF~FPnAFlEJtA@bCAr@?lA@RIzA?xFJ~AFCpAa@tLu@d_@GfCI|Dr@_@jDmBbDoBpIeItKsKhC_CnC{BxA_Ap@[`Bi@nEk@vBYxHq@rBOh@EJDlFa@rC_@HIlJcAn@GvAEfABxENj@@BgBDkAtAAz@CPCVGRK\\]P]Po@Ba@b@{_@c@AUBc@TQJSDi@Ck@Se@tB', NULL, '2018-03-24 17:10:17', '2018-03-24 17:11:16'),
(105, 'TRNX622582', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 0.00000000, '3078-3086 Wakeshire Drive,Dublin, OH 43017 ,United States ', 40.08485104, -83.09917525, '3078-3086 Wakeshire Drive,Dublin, OH 43017 ,United States ', 40.08485100, -83.09917500, '2018-03-26 01:22:49', NULL, '2018-03-26 01:23:19', '2018-03-26 01:23:27', 1, 1, 0, 0, 'i_tsF~hezN', NULL, '2018-03-26 01:22:49', '2018-03-26 01:23:53'),
(106, 'TRNX113687', 128, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 528.00000000, '2851 Sawmill Park Drive,Dublin, OH 43017 ,United States ', 40.07945158, -83.09388136, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-26 01:25:13', NULL, NULL, NULL, 0, 0, 0, 0, '}`ssFtgdzNeZiJmXg@_d@y@qTnC_GnO}B~b@cAdr@R|XzAlpDuBhkDkS|f@ei@hYoqBt}@_dFx~GioBfaBubCxfFkvDvaI{zBn_DwAtsAf}@ttB`d@jUkSreAe|AloFufAb{F{l@`}F{v@bxAcdA`|@ybDtxCmWdbBiK|iCjBxhHwShhAegAjxAgiAnpAq~@vdBepApnBsWd`B_i@rwA}cBx`BuxDdkBghFvn@wxDfi@wqBjv@c{A|j@e}AfWobA_Laq@rw@{aAxe@sXjh@mmAbn@{hA|dCkhApxAc_GlcGucCrsCmsAnwAk~@rlBcc@jeAcBdF_F`U}e@BaOBaWBwh@J_SM_nBEyxAiAwnD~@sbD`B_T?yJ`]Hvt@]rpAnA|nDWtbJaaAtcH~@ruFkQxuBNjwIyJ~qAabChrCi{@vuAwQ`v@_@~zL`@drDpTnnA_@xdHu^`cBis@vu@{Htd@uJndJ{v@trFmj@|uB}fJh`PehEt~H}h@bjBiI|zAixAjuGwaAhfCwtCb`M}{A~rDgxE`r@gdDlAi`A`aB}ZtPodAlLaNdq@ea@jnFmi@daByJveDxX|MlpAzb@zo@l_Ara@vjAht@thCxB`rBbPve@|G~k@oI`kAt@v_O{CreQcdBfqKifAx|AyqAfgBwJhtDZznEiNp~@uV`x@_NxeHil@vgGgeBhwIaTpk@m\\vsD_qAvzHyeB~xDesBnhBqg@rcAac@jtCvFbeNzV|fCGtoC}u@tnDcxAb|Gmi@hmB}|@h_Bae@t~@eLfn@gIp~GurBhcOyi@n_BoyB||DmOldAhChfD_OvkIsAbmK{E~nDsVpkCg~@jzKqjAxlDkM~jFsCxjFy}@h~K}q@`|Fu~Br`HmD|fR_NxfDgv@x`Jej@v{Cid@tJuzBud@k~BtM}kBvD{}@js@gcAlPs]b|@uhB`K}cAYig@lDdIxi@eOfeAkMreD~Bl`Cz\\~hApKt|BwEdo@cWn`@gRrz@eHfsDuY`s@aKdjAq`@|sBlHdtBbf@~uFmBdi@qZlZgt@xLsVdi@iEdbBec@bsF~J`eD}Hb}BaK|wJo^fjA}[|Qyr@nl@w`@dn@{l@hEwv@vj@{yC~v@cdBqAkbApKkb@va@mo@|~@}}EdmHweCnyDkKpn@kXn_@qkEqByeEzF_S`w@w^j]cbCeAizAlJimAbsAcl@xGkv@ph@ecBjfD{dAzcCyv@zeAyp@lvAsdApbCoeA~}C{IdbIdBdfC{@~{@zh@~fBwKtb@uOpt@lGxTdW{A', NULL, '2018-03-26 01:25:13', '2018-03-26 01:25:40'),
(107, 'TRNX838561', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 12.00000000, 'H-10, Islamabad, Pakistan', 33.65975690, 73.03923640, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 00:24:25', NULL, NULL, NULL, 0, 0, 0, 0, 'gemlEymx|LsByE{AbAoE~Ca@ISM}@}@gA_Ao@c@[KaCzAw@l@q@b@mIbGqD~BaC`BoEqKoJuT_EkJqDoIoDsI{BmFiEwJyAmDaAoBSMMQa@w@m@sA_MtIQLK[]y@QEK@s@`@SFUCaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 00:24:25', '2018-03-27 00:24:46'),
(108, 'TRNX691098', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'H-10, Islamabad, Pakistan', 33.65358340, 73.03096270, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 00:26:04', NULL, NULL, NULL, 0, 0, 0, 0, 'w|klEk{v|Lg@kAwA~@oAwC}KuWyDiJgD}HkRed@cTeg@yN{\\_@u@c@g@]i@u@{AiBqEMYNMdTsNjA_AWs@MMO?aBdAMDW?eLzHi^nVkPvKcJjGiCfBkDhCwA`AaFvDKb@]`@cDjCy@|@m@Va@b@i@bAUr@O~@[bCUbCUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]aBaEUk@{EaLeAqCq@{A{IeSk@{AyJuUgJyTsMwZcDaIa@YWIm@ASNkAt@kSfNo`@`XoKhHoe@z[iP|KQd@iA|@GNFTh@nAs@f@yKpHOJKUYw@Wk@i@mAk@oAxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 00:26:04', '2018-03-27 00:26:25'),
(109, 'TRNX551029', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 15.00000000, 'H-10, Islamabad, Pakistan', 33.65216580, 73.02843220, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 00:27:14', NULL, NULL, NULL, 0, 0, 0, 0, 'ktklEekv|L`@bAsA|@yIsSiGwNuFuMoHiQcKkVwRud@eTcg@gDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNcSbNyRtM_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 00:27:14', '2018-03-27 00:27:37'),
(110, 'TRNX432516', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 15.00000000, 'H-10, Islamabad, Pakistan', 33.65238010, 73.02881780, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 00:30:01', NULL, NULL, NULL, 0, 0, 0, 0, 'uuklEsmv|LmBwEuA~@}CkHiGwNuFuMoHiQcKkVwRud@eTcg@gDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNcSbNyRtM_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 00:30:01', '2018-03-27 00:30:23'),
(111, 'TRNX772793', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 12.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65648800, 73.03620720, 'F-7, Islamabad, Pakistan', 33.71986330, 73.05528540, '2018-03-27 00:35:17', NULL, NULL, NULL, 0, 0, 0, 0, 'qollEizw|L[RoA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYiAgA{@g@k@M}@CkD?uAKeCo@_Dq@a@E[?s@HYHwBbAo@b@oCnBqGbEuShNgEvCkBdAkWhQkNnJqFvDoBtAa@`@kD|BsAv@yEpD{FzDKIGKACAUdAs@dJaGLYJi@?Sc@iAwAz@_EtCYP}GoP}AuDqFrDmAt@}GcPRSrA_AlAy@ZF', NULL, '2018-03-27 00:35:17', '2018-03-27 00:35:38'),
(112, 'TRNX105419', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 9.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65299060, 73.02984950, 'F-10 Markaz, Islamabad, Pakistan', 33.69523080, 73.01285460, '2018-03-27 00:35:57', NULL, '2018-03-27 00:36:23', '2018-03-27 00:36:25', 1, 1, 0, 0, 'ezklEqsv|Lu@f@lHzPvDbJpCtGzA|D|BfFjCfGnDhINZW\\Yf@Yb@mFtD_MpIYVmAtBaEnH}AfCwEbDm]vUiP`L}AhAg@`@Q_@sV}k@g@UYM[C[?[Ze@d@k@d@wQ`MiDxBqAx@mCnBgAv@Sp@Gh@ANBFjA|CF@LFFP?NGNMFM?GCAAm@ZWHsDfCqHfF}F|D_K`H}CxBFLUNkBoE]SQC_@@uA~@sAx@qRpMcJdGeBpAaEkJsK{VuE{KqG{OiLeXiBmEeAv@N^', NULL, '2018-03-27 00:35:57', '2018-03-27 00:40:43'),
(113, 'TRNX131201', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65365110, 73.03113510, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 00:40:56', NULL, '2018-03-27 00:41:13', '2018-03-27 00:41:16', 1, 1, 0, 0, 'g}klEk|v|LWk@wA~@oAwC}KuWyDiJgD}HkRed@cTeg@yN{\\_@u@c@g@]i@u@{AiBqEMYNMdTsNjA_AWs@MMO?aBdAMDW?eLzHi^nVkPvKcJjGiCfBkDhCwA`AaFvDKb@]`@cDjCy@|@m@Va@b@i@bAUr@O~@[bCUbCUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]aBaEUk@{EaLeAqCq@{A{IeSk@{AyJuUgJyTsMwZcDaIa@YWIm@ASNkAt@kSfNo`@`XoKhHoe@z[iP|KQd@iA|@GNFTh@nAs@f@yKpHOJKUYw@Wk@i@mAk@oAxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 00:40:56', '2018-03-27 00:41:25'),
(114, 'TRNX436816', 128, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Street 10, Islamabad, Pakistan', 33.65648800, 73.03627820, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 04:31:40', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE_{w|LcHoP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 04:31:17', '2018-03-27 04:32:01'),
(115, 'TRNX812250', 128, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 15.00000000, 'Street 10, Islamabad, Pakistan', 33.65255210, 73.02913680, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 04:35:43', NULL, NULL, NULL, 0, 0, 0, 0, 'uvklEuov|LmAuCuA~@}CkHiGwNuFuMoHiQcKkVwRud@eTcg@gDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNcSbNyRtM_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 04:35:22', '2018-03-27 04:36:04'),
(116, 'TRNX579338', 128, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 9.00000000, 'Street 10, Islamabad, Pakistan', 33.65649010, 73.03626560, 'Rawalpindi 46000, Pakistan', 33.60372920, 73.04850620, '2018-03-27 04:42:36', NULL, NULL, NULL, 0, 0, 0, 0, 'aqllE}zw|LnMtZbOx]vDbJpCtGzA|D|BfFjCfGnDhIdP{K|AeAd@e@j@{@VYROh@Kb@MhAo@`CgBlJuG`FeDlA[t@KfFe@tGo@|Da@|CWt@EVG~ByAlDiCzCxG|BvFdA|BZ|@`@z@rAbDfHlPhAtCnB|Ef@jA`@JZFTAnAyAt@eA`AiBf@C^EjAWnBg@t@MB?Xk@pCmGp@{AbAoB`AsB~B{ErCwG~CoHh@qAvAsC\\y@ZoAbAiB~@kBz@uBFIHGJD^DFEFIl@yAf@iAHMHEXEtDKXERI|@e@VUFKDWOcBOoBHg@Ra@tAeBh@m@jLoJdFaEjBqAdI{FbAm@b@[j@WjDwA`GeCxFmB|Ak@X]LYBW[eAe@c@HQSoD?_Ad@qCpC_LtAyDl@_Ed@{C`@q@Fw@{@M', NULL, '2018-03-27 04:42:15', '2018-03-27 04:44:40'),
(117, 'TRNX437120', 128, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Street 10, Islamabad, Pakistan', 33.65653580, 73.03626560, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 04:46:38', NULL, NULL, NULL, 0, 0, 0, 0, 'eqllEa{w|LaHmP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 04:46:17', '2018-03-27 04:46:59'),
(118, 'TRNX705855', 128, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Street 10, Islamabad, Pakistan', 33.65655150, 73.03626460, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 04:47:32', NULL, NULL, NULL, 0, 0, 0, 0, 'eqllEc{w|LaHkP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 04:47:32', '2018-03-27 04:47:53'),
(119, 'TRNX211552', 128, 0, 115, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Street 10, Islamabad, Pakistan', 33.65655210, 73.03626470, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 04:50:59', NULL, NULL, NULL, 0, 0, 0, 0, 'eqllEc{w|LaHkP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 04:50:37', '2018-03-27 04:51:14'),
(120, 'TRNX812418', 128, 0, 115, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Street 10, Islamabad, Pakistan', 33.65655860, 73.03626510, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 04:52:56', NULL, NULL, NULL, 0, 0, 0, 0, 'eqllEc{w|LaHkP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 04:52:15', '2018-03-27 04:53:17'),
(121, 'TRNX454410', 128, 0, 115, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Service Rd N, Islamabad, Pakistan', 33.65659780, 73.03626520, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 05:12:38', NULL, NULL, NULL, 0, 0, 0, 0, 'gqllEg{w|L_HgP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 05:12:12', '2018-03-27 05:12:55'),
(122, 'TRNX815045', 128, 0, 115, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 11.00000000, 'Service Rd N, Islamabad, Pakistan', 33.65659960, 73.03626350, 'F-10 Markaz, Islamabad, Pakistan', 33.69523080, 73.01285460, '2018-03-27 05:15:38', NULL, NULL, NULL, 0, 0, 0, 0, 'gqllEg{w|L_HgP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDwNxJoDdCu@j@gFlDmL~HaBjAcE`CiHnEmJvGiGjEcG`EuPdLoBvAyClBEPc@h@CR@VZlAvF~MvDvInEnKlT|g@fHlP|BrF^n@ZVh@Ch@NJRBVAXSj@a@`@UJWDU?OAa@J_@PcEpC{HhFcIpF{@t@HNzClHVh@IFg@\\Yg@I@GDc@}@GEG?K@Si@', NULL, '2018-03-27 05:14:56', '2018-03-27 05:15:43'),
(123, 'TRNX202695', 128, 0, 115, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65647320, 73.03625620, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 05:26:48', NULL, NULL, NULL, 0, 0, 0, 0, 'kollEmzw|La@VoA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-03-27 05:25:44', '2018-03-27 05:27:10'),
(124, 'TRNX752040', 128, 0, 0, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65661430, 73.03630300, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 05:43:25', NULL, NULL, NULL, 0, 0, 0, 0, 'kqllEo{w|L{G_P}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 05:43:25', '2018-03-27 05:45:57'),
(125, 'TRNX707598', 128, 0, 0, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65649220, 73.03624670, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 05:57:11', NULL, NULL, NULL, 0, 0, 0, 0, 'aqllEyzw|LeHuP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 05:57:11', '2018-03-27 05:57:43'),
(126, 'TRNX218510', 128, 0, 0, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65651390, 73.03625610, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-27 05:57:55', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 05:57:55', '2018-03-27 05:59:43'),
(127, 'TRNX439311', 113, 0, 0, 1, 'CANCELLED', 'USER', 'hi', 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-27 06:50:31', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-27 06:50:31', '2018-03-27 13:34:02'),
(128, 'TRNX650236', 129, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 12.00000000, '1470 Willow Avenue,Des Plaines, IL 60016 ,United States ', 42.04765397, -87.88747225, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-03-27 13:03:37', NULL, NULL, NULL, 0, 0, 0, 0, 'oks_G|plwOqDlIuB?OG[EMIMOzCaHtB_FnAqCnAyBh@mAfBoGzCeLzDkOn@_C\\cA\\s@bA}Ah@m@hAy@t@a@HCFOlBw@f@Wv@q@|@oAXm@v@}BZ_AJGRm@xAgETo@f@iA|@oAv@u@bA}@|A_A|@w@POd@s@b@}@Vo@L[NIDGL]Zk@n@}@h@i@jA}@v@c@`Ac@r@WdHiBfG_BtBm@LIFIDI`Ck@jAYdB[lBWrAKrCIlG@dRH`TFxABlBN|B\\bCn@nDvA`PpGjBj@~Bd@pBTnAF~@@|C?`F@jG?vL@bJAtAEfCWvBc@tBm@jGsBlOcFnAa@pA[lASfBS|BIbA?`BFvBRrB^vG`BrPbEtA\\z@TJTNLbA`@nAp@v@r@xA|A\\Xd@Tj@Nn@HTDLJpCPlAN`ARdAd@lA`Al@v@vArCzC|Jp@lBV`@vAnBz@rCpAhElEpN|@pCvD|LbAtDrEtNfAjDnC~I^jBNpB@pBKrB[lBi@dBu@xA]f@QRoItJiKbM]d@Yp@Qx@Gx@?nBA`[D~@Hv@|BfMVl@`@b@PJTFpBV\\FXKj@?l@DhDf@`@Jn@Jf@P`@FFDTLRFTITOT[P[^}@r@sA', NULL, '2018-03-27 13:03:37', '2018-03-27 13:04:00'),
(129, 'TRNX458101', 113, 0, 0, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 7.00000000, 'Street 25 Lane 7, Rawalpindi 46000, Pakistan', 33.58012690, 73.09806590, 'Korang Town, Rawalpindi, Pakistan', 33.57820140, 73.13938610, '2018-03-27 13:34:30', NULL, NULL, NULL, 0, 0, 0, 0, 'ws}kEa}c}LuAwCrBwAlA}@d@W|Aa@v@YZOfBeA`DmBnA{@NE^CpAc@rBoAt@q@b@q@jBmCn@_AP]R}@XeB\\iAR[lAmBRiAH}@LYAC?AJQX_@iAo@EGKWYw@cA_Do@{Bc@kCfD_Bt@[`AW`Be@pCw@~@_A\\i@HYr@yDZ}AlAaHn@@`AG`A[t@s@j@s@dCaDdAqAfCaBPOAAAACCAGAIFONEJFDPf@?~AHt@Rh@TpB|AlA`AtBzA~A|@vAVb@NXVX\\LF\\FXAVG`BgAy@uH[sAU{@c@wB]sBsAkFg@oBKuAEqBQ{BWkDQkBSoAi@sC{@kFs@aE}@yEw@mFgAsFeA{FeAcGuBh@uBl@wI`CkMnDeLbDgGdBU?qA`@mBl@Q@CCa@sBm@qAu@iCI]B]D[He@JQjAeBpB}CFOBQ@wCC{MDgEAAAAACAE@O}CwGsCgG{@gBcBlA', NULL, '2018-03-27 13:34:30', '2018-03-27 13:34:30'),
(130, 'TRNX827326', 129, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 13.00000000, 'G 2, Islamabad, Pakistan', 33.65221230, 73.02854440, 'G-6, Islamabad, Pakistan', 33.71315610, 73.08479790, '2018-03-27 23:58:56', NULL, '2018-03-27 23:59:47', '2018-03-27 23:59:58', 1, 1, 0, 0, 'wtklE{kv|Ll@xAsA|@yIsSiGwNuFuMoHiQcKkVwRud@eTcg@gDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIq@yAc@aA}AyDw@eCaAcEk@_Ca@gAWi@i@aAcBiCuB{CqAoCiBoEmBr@u@h@aG|DcErCmIzFsA~@oGfEtAfD', NULL, '2018-03-27 23:58:34', '2018-03-28 00:00:14'),
(131, 'TRNX892353', 129, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 15.00000000, 'G 2, Islamabad, Pakistan', 33.65260930, 73.02931320, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 00:00:32', NULL, '2018-03-28 00:01:27', '2018-03-28 00:02:02', 1, 1, 0, 0, 'ewklEspv|L}@wBuA~@}CkHiGwNuFuMoHiQcKkVwRud@eTcg@gDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNcSbNyRtM_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 00:00:32', '2018-03-28 00:14:22'),
(132, 'TRNX760963', 129, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65627760, 73.03626860, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 00:21:06', NULL, '2018-03-28 00:22:35', '2018-03-28 00:35:02', 1, 1, 0, 0, 'mnllEc{w|L_Al@oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-03-28 00:20:45', '2018-03-28 00:46:14');
INSERT INTO `user_requests` (`id`, `booking_id`, `user_id`, `provider_id`, `current_provider_id`, `service_type_id`, `status`, `cancelled_by`, `cancel_reason`, `payment_mode`, `paid`, `distance`, `s_address`, `s_latitude`, `s_longitude`, `d_address`, `d_latitude`, `d_longitude`, `assigned_at`, `schedule_at`, `started_at`, `finished_at`, `user_rated`, `provider_rated`, `use_wallet`, `surge`, `route_key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(133, 'TRNX725217', 129, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65635370, 73.03627430, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 00:46:43', NULL, '2018-03-28 00:47:03', '2018-03-28 00:48:04', 1, 1, 0, 0, 'ynllE{zw|Ls@d@oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-03-28 00:46:43', '2018-03-28 00:58:56'),
(134, 'TRNX894394', 129, 0, 0, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 15.00000000, 'Street 10, Islamabad, Pakistan', 33.65203030, 73.02818980, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 01:36:46', NULL, NULL, NULL, 0, 0, 0, 0, '{sklEshv|LaAn@}DeJuE}KsHgQwEcL{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-03-28 01:36:46', '2018-03-28 01:41:26'),
(137, 'TRNX980839', 113, 0, 115, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Service Rd N, Islamabad, Pakistan', 33.65657970, 73.03626350, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 01:59:38', NULL, NULL, NULL, 0, 0, 0, 0, 'gqllEe{w|L_HiP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 01:59:09', '2018-03-28 02:00:37'),
(138, 'TRNX330028', 113, 0, 123, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65649480, 73.03623190, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 02:15:14', NULL, NULL, NULL, 0, 0, 0, 0, '_qllEwzw|LgHwP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 02:15:14', '2018-03-28 02:15:46'),
(139, 'TRNX758535', 113, 0, 123, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65651450, 73.03629310, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 02:17:35', NULL, NULL, NULL, 0, 0, 0, 0, 'eqllEc{w|LaHkP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 02:17:14', '2018-03-28 02:20:38'),
(140, 'TRNX167494', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 12.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65649880, 73.03629640, 'F-7, Islamabad, Pakistan', 33.71986330, 73.05528540, '2018-03-28 02:21:30', NULL, '2018-03-28 02:22:03', '2018-03-28 02:22:23', 1, 1, 0, 0, 'eqllEa{w|LaHmP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]eAkC[[_@_@w@k@g@Ok@GoBAoCCqAUaFkA}@Mw@Bq@NwBbA[TSLoCnBoCdB{A`AcLrH_NhJkBdAuVvPkBpAsFvDmMxIeAx@QRw@h@sBrAaAf@s@l@wDrCyDhCaAp@IECECEE]`GyDhD{BHOHUBO@[c@oAwDdCyB|A{JeVmH|EQJKWgE{JkAqCfAw@lBqAR@HB', NULL, '2018-03-28 02:21:30', '2018-03-28 02:23:07'),
(141, 'TRNX777128', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 15.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65649880, 73.03629640, 'F-5, Islamabad, Pakistan', 33.73684380, 73.08922450, '2018-03-28 02:23:41', NULL, '2018-03-28 02:24:00', '2018-03-28 02:24:15', 1, 1, 0, 0, 'eqllEa{w|LaHmP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]eAkC[[_@_@w@k@g@Ok@GoBAoCCqAUaFkA}@Mw@Bq@NwBbA[TSLoCnBoCdB{A`AcLrH_NhJkAdAiBrAaLvHkA|@}AdA}B`BUPAHQXONODQ@OEKKIMGUCc@aHkPcAkCq@cBc@eAiIyRqD_JuBqEw@sB{AiDmByE{CiHaEcJ{BoFsAyCcHwP{Tkh@i@yAc@y@c@gAgAsCuAaDqAaDiH}P]eAo@XsCfByCnBoAz@sBrAcH~EgDbCuA_DiAuB_GaNcC`Bo@Zk@Nc@C{@QcCqA_Ae@c@K_@Ak@DUDCOKw@Oo@', NULL, '2018-03-28 02:23:41', '2018-03-28 02:40:34'),
(142, 'TRNX102539', 113, 0, 123, 1, 'CANCELLED', 'USER', 'bb', 'CASH', 0, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65651130, 73.03629380, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 02:41:19', NULL, NULL, NULL, 0, 0, 0, 0, 'eqllEc{w|LaHkP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 02:41:04', '2018-03-28 02:53:42'),
(143, 'TRNX438376', 113, 0, 123, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65648750, 73.03629120, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 02:54:28', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE_{w|LcHoP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 02:54:07', '2018-03-28 02:59:15'),
(145, 'TRNX660277', 113, 0, 123, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, 'Noor Floor Mill, Street 7, Islamabad 44000, Pakistan', 33.65642650, 73.03628870, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 03:01:43', NULL, NULL, NULL, 0, 0, 0, 0, 'collEuzw|Li@^oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@yCiHtTaOjA_AM_@OYCGMAIBwA`A]FM?}@l@eErCqNvJkWbQyHfFmRpMsEfDyAfAwDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-03-28 03:01:43', '2018-03-28 03:02:24'),
(155, 'TRNX477688', 113, 0, 114, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 03:50:54', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 03:50:54', '2018-03-28 03:52:38'),
(156, 'TRNX315486', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 03:53:13', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 03:52:49', '2018-03-28 03:53:44'),
(157, 'TRNX233444', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 03:58:42', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 03:58:22', '2018-03-28 03:59:03'),
(158, 'TRNX478229', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 04:01:12', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 04:00:51', '2018-03-28 04:01:35'),
(161, 'TRNX288844', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 04:13:36', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 04:13:15', '2018-03-28 04:13:43'),
(164, 'TRNX537452', 113, 0, 114, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 04:47:19', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 04:47:19', '2018-03-28 04:51:19'),
(165, 'TRNX704264', 113, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 05:22:57', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 05:22:57', '2018-03-28 05:22:57'),
(182, 'TRNX450700', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 06:34:30', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 06:34:09', '2018-03-28 06:34:34'),
(184, 'TRNX361897', 113, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 06:35:49', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 06:35:49', '2018-03-28 06:36:13'),
(190, 'TRNX105139', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 06:44:51', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 06:44:30', '2018-03-28 06:44:51'),
(191, 'TRNX601781', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 06:45:36', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 06:45:15', '2018-03-28 06:45:59'),
(192, 'TRNX695372', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 06:47:36', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 06:47:13', '2018-03-28 06:49:07'),
(193, 'TRNX809023', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 06:50:08', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 06:49:32', '2018-03-28 06:50:29'),
(194, 'TRNX642311', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 06:54:55', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 06:54:11', '2018-03-28 06:54:57'),
(195, 'TRNX829333', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 06:56:25', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 06:55:43', '2018-03-28 06:56:47'),
(196, 'TRNX638110', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 06:58:35', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 06:57:51', '2018-03-28 06:58:36'),
(197, 'TRNX648799', 113, 0, 123, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 07:03:42', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 07:03:11', '2018-03-28 07:04:05'),
(202, 'TRNX218285', 113, 0, 123, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, '', 33.65651390, 73.03625610, '', 33.72778020, 73.07299340, '2018-03-28 07:16:30', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AWs@GIKEQFyA~@MDW?sBtAsNvJgX|QiD|BaKxGcJjGiCfBkDhCwA`AaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-03-28 07:16:30', '2018-03-28 08:15:09'),
(203, 'TRNX421422', 113, 0, 123, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 4.00000000, 'Muhammad Mansha Yaad Rd, Islamabad, Pakistan', 33.71150980, 73.07428450, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 08:19:31', NULL, NULL, NULL, 0, 0, 0, 0, 'ygwlEki_}LTl@FZDVHTHRKJFNj@pAfAfCCDHNlBnEh@]|@m@pBsApDcCYu@y@mBgDcIsB}E_@IS?U@GAiOfKOJ[s@M]GKGCK?OHi@\\[H]DaCzAe_@hWwPhLsCjBIVMRgAz@CPNb@`@z@OJmH|E_DzBa@aAe@iA_AsBKWRMfEuCyKwWdDyBwCoH', NULL, '2018-03-28 08:19:31', '2018-03-28 08:20:19'),
(204, 'TRNX358882', 113, 0, 114, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 3.00000000, 'Muhammad Mansha Yaad Rd, Islamabad, Pakistan', 33.71326170, 73.07799640, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 08:20:50', NULL, NULL, NULL, 0, 0, 0, 0, 'irwlEk_`}Ld@[nBvENPT\\P^eBdCc@`@c@T}Ad@oDr@s@R[LyBxAeHvEc@V}@r@j@jA|@xBqDfCgH|ESJOa@]_A_@aASg@yBzAkBnAuI~FQa@g@mAw@gBkAsC[m@e@_@o@[g@]QYq@cB}@sBgCbB{DnCm@`@wCoH', NULL, '2018-03-28 08:20:50', '2018-03-28 08:22:15'),
(205, 'TRNX825275', 113, 0, 114, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 4.00000000, 'Muhammad Mansha Yaad Rd, Islamabad, Pakistan', 33.71150980, 73.07428450, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 08:23:22', NULL, NULL, NULL, 0, 0, 0, 0, 'ygwlEki_}LTl@FZDVHTHRKJFNj@pAfAfCCDHNlBnEh@]|@m@pBsApDcCYu@y@mBgDcIsB}E_@IS?U@GAiOfKOJ[s@M]GKGCK?OHi@\\[H]DaCzAe_@hWwPhLsCjBIVMRgAz@CPNb@`@z@OJmH|E_DzBa@aAe@iA_AsBKWRMfEuCyKwWdDyBwCoH', NULL, '2018-03-28 08:23:22', '2018-03-28 08:26:24'),
(206, 'TRNX573176', 113, 0, 114, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 4.00000000, 'Muhammad Mansha Yaad Rd, Islamabad, Pakistan', 33.71150980, 73.07428450, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 08:23:23', NULL, NULL, NULL, 0, 0, 0, 0, 'ygwlEki_}LTl@FZDVHTHRKJFNj@pAfAfCCDHNlBnEh@]|@m@pBsApDcCYu@y@mBgDcIsB}E_@IS?U@GAiOfKOJ[s@M]GKGCK?OHi@\\[H]DaCzAe_@hWwPhLsCjBIVMRgAz@CPNb@`@z@OJmH|E_DzBa@aAe@iA_AsBKWRMfEuCyKwWdDyBwCoH', NULL, '2018-03-28 08:23:23', '2018-03-28 08:26:31'),
(207, 'TRNX467237', 113, 0, 114, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 3.00000000, 'Muhammad Mansha Yaad Rd, Islamabad, Pakistan', 33.71343240, 73.07777350, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 08:28:01', NULL, NULL, NULL, 0, 0, 0, 0, '}swlEc_`}LNP~A|DBDD?H?LAh@KTGFDT\\P^eBdCc@`@c@T}Ad@oB^_ARs@R[LyBxAeHvEc@V}@r@j@jA|@xBqDfCgH|ESJOa@]_A_@aASg@yBzAkBnAuI~FQa@g@mAw@gBkAsC[m@e@_@o@[g@]QYq@cB}@sBgCbB{DnCm@`@wCoH', NULL, '2018-03-28 08:28:01', '2018-03-28 08:29:24'),
(208, 'TRNX376362', 113, 0, 123, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 4.00000000, 'Muhammad Mansha Yaad Rd, Islamabad, Pakistan', 33.71326200, 73.07799620, 'F-5/1, Islamabad, Pakistan', 33.73219890, 73.08996220, '2018-03-28 08:34:46', NULL, NULL, NULL, 0, 0, 0, 0, 'irwlEk_`}LlBsAnAw@y@iB|@o@HGwAaDeBgEqEoKyAiD_A}BcAp@yDjC{DhC_An@MNA@ABABGBE@KGCO@E@C{DcJeAcCkEpCiHzEaDxBqGnEmDbCkBpA{@f@}Av@gExBe@\\KN]P_Aj@aErCcD~BSPKWcAwBuAoDg@iASs@Qw@w@aKWcCSeAUw@g@mA}AqDuA_DiAuBdHwEpA_AmCaGqAaD_@}@Oe@', NULL, '2018-03-28 08:29:46', '2018-03-28 08:34:52'),
(209, 'TRNX877507', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 3.00000000, 'G-6/2 Street 30, Islamabad, Pakistan', 33.71326200, 73.07799620, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 08:41:45', NULL, '2018-03-28 08:42:27', '2018-03-28 08:42:43', 1, 1, 0, 0, 'irwlEk_`}Ld@[nBvENPT\\P^eBdCc@`@c@T}Ad@oDr@s@R[LyBxAeHvEc@V}@r@j@jA|@xBqDfCgH|ESJOa@]_A_@aASg@yBzAkBnAuI~FQa@g@mAw@gBkAsC[m@e@_@o@[g@]QYq@cB}@sBgCbB{DnCm@`@wCoH', NULL, '2018-03-28 08:41:45', '2018-03-28 08:43:02'),
(210, 'TRNX768896', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 3.00000000, 'G-6/2 Street 30, Islamabad, Pakistan', 33.71326200, 73.07799620, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-28 08:43:15', NULL, '2018-03-28 08:43:46', '2018-03-28 08:43:58', 1, 1, 0, 0, 'irwlEk_`}Ld@[nBvENPT\\P^eBdCc@`@c@T}Ad@oDr@s@R[LyBxAeHvEc@V}@r@j@jA|@xBqDfCgH|ESJOa@]_A_@aASg@yBzAkBnAuI~FQa@g@mAw@gBkAsC[m@e@_@o@[g@]QYq@cB}@sBgCbB{DnCm@`@wCoH', NULL, '2018-03-28 08:43:15', '2018-03-28 08:48:47'),
(226, 'TRNX612117', 140, 0, 129, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 3.00000000, 'Gali 16, G 6/2 G-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.71302830, 73.07775240, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-03-29 12:58:29', NULL, NULL, NULL, 0, 0, 0, 0, 'wpwlEo_`}LjBjETTNZHPiA`BW\\KLa@\\s@Z}Ab@eDn@w@Ve@TaEpCgFfD}@r@P^j@lA^|@JXOJmBtAiChBeFdDy@yBg@qAmDbCmKfHa@cA_CoFm@wAUYi@]c@SYQOOqB{EIOQLoChBoE|CwCoH', NULL, '2018-03-29 12:58:29', '2018-03-29 12:58:36'),
(227, 'TRNX270224', 113, 0, 123, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 13.00000000, 'Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.65649640, 73.03601140, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-04-07 03:06:45', NULL, NULL, NULL, 0, 0, 0, 0, 'apllE_zw|LKHoA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@eBcEwACYAKCcAr@{MbJcGbEoRrMsMdJQLK[]y@GCU?s@`@SFUCaFvDKb@]`@cDjCy@|@m@Va@b@i@bAUr@O~@[bCUbCUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]aBaEUk@{EaLeAqCq@{A{IeSk@{AyJuUgJyTsMwZcDaIa@YWIm@ASNkAt@kSfNo`@`XoKhHoe@z[iP|KQd@iA|@GNFTh@nAs@f@yKpHOJKUYw@Wk@i@mAk@oAxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-04-07 03:06:45', '2018-04-07 03:07:14'),
(228, 'TRNX524090', 113, 0, 123, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, 'Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.65218610, 73.02846360, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-04-07 03:08:25', NULL, NULL, NULL, 0, 0, 0, 0, 'otklEkkv|Ld@hAsA|@yIsSiGwNuFuMoHiQcKkVwRud@eTcg@gDuHc@g@]i@u@{AcAeCO?yACSE_W`Q}R|M{NbK[{@Q[ECM?cAh@U@ICi@b@wDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-04-07 03:07:42', '2018-04-07 03:08:45'),
(230, 'TRNX842430', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 15.00000000, 'Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.65203180, 73.02819130, 'F-5, Islamabad, Pakistan', 33.73684380, 73.08922450, '2018-04-07 03:14:05', NULL, '2018-04-07 03:16:59', '2018-04-07 03:17:02', 1, 1, 0, 0, '{sklEshv|LaAn@}DeJuE}KsHgQwEcL{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@eBcEwACYAKCcAr@{MbJcGbEoRrMsMdJQLK[]y@GCU?s@`@SFUCaFvDoPbLmDfCuPhL_BbAaBjAcE`CiHnEeEvCwIfGsE~CcFhD{M`JaBlAgDvBoA|@UPO[[m@Sg@wAwCgBkEeCuFgDwHiHcQoEeKaDkHw@kB{AsDgCmGMk@k@yAmQ_b@cCqFu@sAiIyRqD_JuBqEw@sB{AiDmByE{CiHaEcJoEiKcHwP{Tkh@i@yAc@y@c@gAgAsCuAaDqAaDiH}P]eAo@XsCfByCnBoAz@sBrAcH~EgDbCuA_DiAuB_GaNcC`Bo@Zk@Nc@C{@QcCqA_Ae@c@K_@Ak@DUDCOKw@Oo@', NULL, '2018-04-07 03:13:22', '2018-04-07 03:17:11'),
(231, 'TRNX464354', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 6.00000000, '5–9 Laycock Street,Surfers Paradise,(null)', -28.00524745, 153.43117007, 'Southport QLD 4215, Australia', -27.97379400, 153.41831400, '2018-04-10 00:53:41', NULL, '2018-04-10 00:54:16', '2018-04-10 00:55:03', 1, 1, 0, 0, 'nw|iD{_ng\\m@rIQzB^Bb@?X?d@Gl@MCf@Kv@IdA?\\]Fk@LcA`@yAx@qDxBgBlAk@Pi@N{@Dg@Ey@QaAY}Bk@eBWoC]_BMi@GYHQLUVEb@C^@|@ZdJA`@AZGd@Bf@?@@@?@@D?BCHC@A@Od@m@fHk@|G@j@BB@HCHEDm@nHM`@IjAAj@?@@@@@@B?DAHGFA?OxAm@pDCf@^fIJx@{@FgEZyBP_C^_APuDf@mAPgBZqG~A}AR}BBgDEgBHaEf@m@FoC`@aARgAZwB~@g@T}@Zo@PiBTgBLmDJoALo@Jo@LSYHe@v@aJsHy@OCXwD?KEKIGqEc@qAByA@SE]KYQWUW[[s@a@uAA@A@C@C@GAGOFMBA@?{DmLg@{@UYeAwAiAcAiDoCm@UQGCIcAWOEi@@i@NOHWZAb@EJKn@ObBMvA', NULL, '2018-04-10 00:53:41', '2018-04-10 02:00:07'),
(232, 'TRNX884174', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 14.00000000, '942 Street 2, I-10/2 I 10/2 I 10, Islamabad, Federal Capital Territory, Pakistan', 33.65227210, 73.02861430, 'F-6, Islamabad, Pakistan', 33.72778020, 73.07299340, '2018-04-10 22:13:07', NULL, '2018-04-10 22:13:39', '2018-04-10 22:13:44', 1, 1, 0, 0, '_uklEklv|LcC_GuA~@}CkHiGwNuFuMoHiQcKkVwRud@eTcg@gDuHc@g@]i@u@{AcAeCO?yACSE_W`Q}R|M{NbK[{@Q[ECM?cAh@U@ICi@b@wDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-04-10 22:13:07', '2018-04-12 02:49:03'),
(233, 'TRNX533261', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7057 Barry Street,Rosemont, IL 60018 ,United States ', 42.00687429, -87.89158309, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-04-11 09:47:03', NULL, '2018-04-11 09:47:35', '2018-04-11 09:47:44', 1, 1, 0, 0, '}mk_G|jmwOvE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOlDCbIAtE?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKDF\\Hd@JZHl@V~BpAtG~DlDzBr@X`@DXAbCS^?P@h@L\\Xx@lAbAtDrEtNlEpNPr@ZlBLpBApBOrB]hBUr@Wp@[l@]f@_@f@oItJkHvImB|B[j@Ut@Mx@A~@?xIAzQ@x@Fz@Lv@lBpKPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-04-11 09:47:03', '2018-04-11 09:48:06'),
(234, 'TRNX150551', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00680317, -87.89142049, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-04-14 13:55:59', NULL, '2018-04-14 13:56:43', '2018-04-14 13:57:07', 1, 1, 0, 0, 'omk_G|jmwOhE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOlDCbIAtE?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKDF\\Hd@JZHl@V~BpAtG~DlDzBr@X`@DXAbCS^?P@h@L\\Xx@lAbAtDrEtNlEpNPr@ZlBLpBApBOrB]hBUr@Wp@[l@]f@_@f@oItJkHvImB|B[j@Ut@Mx@A~@?xIAzQ@x@Fz@Lv@lBpKPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-04-14 13:55:59', '2018-04-14 13:57:33'),
(235, 'TRNX736757', 116, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 8.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00686910, -87.89155970, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-04-14 14:11:41', NULL, NULL, NULL, 0, 0, 0, 0, '}mk_G|jmwOvE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOlDCbIAtE?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKDF\\Hd@JZHl@V~BpAtG~DlDzBr@X`@DXAbCS^?P@h@L\\Xx@lAbAtDrEtNlEpNPr@ZlBLpBApBOrB]hBUr@Wp@[l@]f@_@f@oItJkHvImB|B[j@Ut@Mx@A~@?xIAzQ@x@Fz@Lv@lBpKPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-04-14 14:11:41', '2018-04-14 14:12:03'),
(236, 'TRNX267352', 116, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 8.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00686840, -87.89152330, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-04-14 14:12:21', NULL, NULL, NULL, 0, 0, 0, 0, '}mk_G|jmwOvE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOlDCbIAtE?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKDF\\Hd@JZHl@V~BpAtG~DlDzBr@X`@DXAbCS^?P@h@L\\Xx@lAbAtDrEtNlEpNPr@ZlBLpBApBOrB]hBUr@Wp@[l@]f@_@f@oItJkHvImB|B[j@Ut@Mx@A~@?xIAzQ@x@Fz@Lv@lBpKPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', NULL, '2018-04-14 14:12:21', '2018-04-14 14:12:42'),
(237, 'TRNX588138', 113, 0, 129, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 13.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65631760, 73.03638940, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72778020, 73.07299340, '2018-04-16 23:48:39', NULL, NULL, NULL, 0, 0, 0, 0, 'knllEe{w|LaAn@oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@eBcEwACYAKCcAr@{MbJcGbEoRrMsMdJQLK[]y@GCU?s@`@SFUCaFvDKb@]`@cDjCy@|@m@Va@b@i@bAUr@O~@[bCUbCUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]aBaEUk@{EaLeAqCq@{A{IeSk@{AyJuUgJyTsMwZcDaIa@YWIm@ASNkAt@kSfNo`@`XoKhHoe@z[iP|KQd@iA|@GNFTh@nAs@f@yKpHOJKUYw@Wk@i@mAk@oAxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-04-16 23:23:59', '2018-04-16 23:48:58'),
(238, 'TRNX379775', 113, 114, 114, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 13.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65656300, 73.03633090, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72778020, 73.07299340, '2018-04-16 23:50:04', NULL, NULL, NULL, 0, 0, 0, 0, 'kqllEm{w|L{GaP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AcAeCO?yACSE_W`Qyb@`Z[{@Q[ECM?cAh@U@ICi@b@wDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNmHbFy[lT}CvBaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-04-16 23:50:04', '2018-04-16 23:50:55'),
(239, 'TRNX864690', 113, 114, 114, 1, 'CANCELLED', 'PROVIDER', NULL, 'CASH', 0, 7.00000000, 'Street 25 Lane 7, Chaklala Housing Scheme 3, Rawalpindi, Punjab 46000,Pakistan ,Pakistan ', 33.58016034, 73.09814029, 'Korang Town Rawalpindi, Islamabad, Islamabad Capital Territory, Pakistan', 33.57820100, 73.13938600, '2018-04-18 17:42:16', NULL, NULL, NULL, 0, 0, 0, 0, '_t}kEo}c}LmAiCrBwAnA}@j@YtA_@v@YZOfBeAzCiBtA_ANE^CpAc@rBoAt@q@b@q@jBmCn@_AP]R}@XeB\\iAR[lAmBRiAH}@LYAC?AJQX_@iAo@EGKWYw@cA_Do@{Bc@kCfD_Bt@[`AW`Be@pCw@~@_A\\i@HYr@yDZ}AlAaHl@@~@E~@Yr@s@l@s@fCcDfAqAfCcBROAAAACCAGAIFONEJFDPfBDx@Jn@RrA|@`CnBnDbCd@Tr@Nb@Fb@NXVNPVR\\FXAVG`BgAs@yGI_@WqAUy@c@wB]sB_@aB{AyFKuAEqBQ{BWkDQkBw@sEuB}L}@yEw@mFsBuKYyAeAcGuBh@aAXgD~@yIbCiMlDuIdC_FtAY@qA`@eA^_ARCCY}ASq@_@y@YcAYeAG]B]D[He@vAwBpB}CFOBQ?eAAsI?yEDgECAAGAE@O_BiDkB{DaD_HcBlA', NULL, '2018-04-18 17:42:16', '2018-04-18 17:57:11'),
(240, 'TRNX303677', 116, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 5.00000000, 'Nawroz, Erbil, Iraq', 36.16933010, 43.96567550, 'Unnamed Road, Erbil, Iraq,Erbil,Erbil Governorate', 36.19495751, 43.97284470, '2018-04-20 02:27:17', NULL, '2018-04-20 02:28:13', '2018-04-20 02:28:22', 1, 1, 0, 0, '_jw{EsbjkGj@QvHdJvAdBq@d@w@\\sBj@uF`AsJr@yHPoNHcIEcLBgFEeCIaHI}LCoEGaCCkOYBAiMDuAAaKe@uAQ_AKoE{@wIaByJiBwEiAoCkA`GqVp@Pn@Fp@En@Sd@W`@_@\\g@Vm@H_@LcA?_@D@|@`@jA}EpCmLBSCEvAj@lBx@vAl@', NULL, '2018-04-20 02:27:17', '2018-04-20 02:28:38'),
(241, 'TRNX442885', 116, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 9.00000000, 'Nawroz, Erbil, Iraq', 36.16792660, 43.96689900, 'Qalat, Erbil, Iraq,Erbil,Erbil Governorate', 36.18989521, 44.00994368, '2018-04-20 04:46:25', NULL, '2018-04-20 04:47:04', '2018-04-20 04:47:17', 1, 1, 0, 0, '}_w{E{hjkGfFvGeEbGvAdBq@d@w@\\sBj@uF`AsJr@yHPoNHcIEcLB}@CCMGYMWSOIEc@}A_@wAqGgg@kDyYaCkTgCaVs@oFI_CwA}MuEu^i@sEWuB]oE?EbCOfAQ~Ci@?c@IWiB\\eBTI{AWaB]mAa@oAcBkCm@eA_@aCMuAKq@J{@X{A^qAeEh@e@FELSq@g@}AW]o@w@T]^y@JULk@\\sB\\aBJSJMHGB?B?FCBEBG?EnAr@THV@X?ZU|@uD\\{@b@k@dBkAjC{B~BsBzE{DrDwClBeBj@a@~A}@p@[B@F@NCJIFSA[EKCCG_AA{EA_C@gDIoBAk@gB`@iEd@uGv@iB`@sEn@kJvAsEh@{@LkBb@QJmAr@eAjAC@@Kk@oB', NULL, '2018-04-20 04:46:25', '2018-04-20 04:48:15'),
(242, 'TRNX375849', 116, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 3.00000000, 'Nawroz, Erbil, Iraq', 36.16933010, 43.96567550, 'Unnamed Road, Erbil, Iraq,Erbil,Erbil Governorate', 36.15569065, 43.96995932, '2018-04-20 09:14:57', NULL, NULL, NULL, 0, 0, 0, 0, '_jw{EsbjkGj@QvHdJ`IcLvCeEmByBhKgOnA\\`C~ClDzEADAH?PDNHLLFN?B?pBhCtFrHl@l@|@hAJ??Mw@oAe@}@U[FOjHmSjA}CtFhDlAkDdC`B', NULL, '2018-04-20 09:14:57', '2018-04-20 09:15:18'),
(243, 'TRNX452525', 116, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 15.00000000, 'Unnamed Road, Iraq', 36.12852530, 43.93966960, 'Erbil, Iraq,Erbil,Kurdistan Region', 36.19091127, 43.98877703, '2018-04-20 23:33:03', NULL, NULL, NULL, 0, 0, 0, 0, 'wno{EqzdkGVdAh@z@AdAXrAf@hB?tAW~@i@d@Wb@FnA?lAS~AMjB[dA}B`C{A|AmBxAcBt@wA`@kFT_DJ}@MyFy@kDiBYs@OgAi@{@QuAP_E\\cBV}@QgAc@qAu@k@Um@Q_Ao@s@i@_AaAkAgBgDqAkAUeASuCUmB]oDSoBwAiC_AoBIs@]_Cy@yBo@iAq@uBo@gCaA}B_ByCyA{B{ByGQo@EHMV}@r@}OdIcAZm@PE`@G`@o@d@mGrCwA`A{@Zg@FgASkAO}ARgEhAsBz@iD|AmBnCiKlG}AlA_E~CEp@q@b@s@T{@HuDJ_CZiBj@aGzAgA`@uIrDiGlDUFA[a@_Cy@_Cq@mAgJ|@sDv@sAdAs@n@qAzBq@pAIjARhF@n@i@b@iAdAoZoLSIy@uGyBwPy@oGoEg^qFgb@eAsIoBqQw@qHWwCIcC@EFMBMBY?OCYGYMWSOIEc@}A_@wAmBuN{E}_@sBmQUyBcAh@eCr@mB^m@JaBFwD?aL{@sFs@uE{@oEiAGGKMQOWMG{@a@}Cw@uHkAqKEu@GgE?{BDa@DyAAmAIiASsBISQo@Ia@aJbAaC\\AGKc@UYg@Q]BMFWVOZeEgADOfD_Nf@cBv@kBf@}@bA{Az@}@l@i@`@_@|A{@bBs@z@UXG~ASxCIvBRlAVlBl@dAf@zBxApBtB`@l@CBgDlDGHkClCq@y@y@q@eAi@m@UOE@OTgB', NULL, '2018-04-20 23:33:03', '2018-04-20 23:33:24'),
(244, 'TRNX586480', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 0.00000000, '1800 Ellis Street,San Francisco, CA 94115, USA ,United States ', 37.78583400, -122.40641700, '1800 Ellis Street,San Francisco, CA 94115, USA ,United States ', 37.78583400, -122.40641700, '2018-04-21 21:01:02', NULL, '2018-04-21 21:01:36', '2018-04-21 21:02:52', 1, 1, 0, 0, 'u_seFznbjV', NULL, '2018-04-21 21:01:02', '2018-04-21 21:04:06'),
(245, 'TRNX514007', 116, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 5.00000000, 'Kurdistan, Erbil, Iraq,Erbil,Erbil Governorate', 36.20304557, 44.01312444, 'Bakhtiari, Erbil, Iraq,Erbil,Erbil Governorate', 36.20646382, 43.98599759, '2018-04-21 23:07:01', NULL, '2018-04-21 23:08:02', '2018-04-21 23:08:55', 1, 1, 0, 0, '{{}{E_jskGhDf@?BO|E[dKKhAO?oEMOIOCQFGNALT`HFb@jA~IdAvG|BhGrElJRn@Vv@dBjHrArC|AzC`DdFdFdFrDfDdHfEBDB@Kf@sCnL_It\\eGpVoBlIu@fCGHOJMFe@DmE{ByKaGiKwFiG}DaDiCTu@jByC', NULL, '2018-04-21 23:07:01', '2018-04-21 23:10:02'),
(246, 'TRNX183928', 149, 116, 116, 1, 'CANCELLED', 'USER', NULL, 'CASH', 0, 6.00000000, 'شارع قاضي محمد، اربيل، العراق ,العراق ', 36.15550715, 43.99770198, 'Shekh Omer ,Municipality OneErbilالعراق,العراق ', 36.19040200, 44.01258800, '2018-04-29 03:43:18', NULL, NULL, NULL, 0, 0, 0, 0, '}rt{EshpkGGfBB@f@BRoGMiGWuGk@{RaAca@OsDe@iMA{BIiEBkICsCGg@u@JqEp@eGr@{PrB}OrBwLxAwJnAyF|@}Fr@oNp@GJsAPwBVuALgDd@s@@wDj@mBPsDn@{FjBaBVgB`@iEd@uGv@iB`@sEn@kJvA}@uByAcFSuAJgBPmBC?mCP?SAuCoATkHrAaBdH', NULL, '2018-04-29 03:43:18', '2018-04-29 03:43:42'),
(250, 'TRNX715815', 113, 0, 114, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, 'G 24, I-10/2 I 10/2 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.64722310, 73.03201320, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72778020, 73.07299340, '2018-05-21 23:13:19', '2018-05-21 23:15:00', NULL, NULL, 0, 0, 0, 0, 'kvjlE}`w|LZt@_@TyBxAoChBgIvFcEnCcCbBsA|@}DeJuE}K{DcJ_GiNaJiToRid@qTah@gGmNkF}L_@g@_@i@a@q@eBcEqBEKCcAr@{MbJyTlOmSnNQLK[]y@QEK@s@`@SFUCaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-05-21 23:12:58', '2018-05-21 23:13:30'),
(251, 'TRNX304241', 113, 114, 114, 1, 'CANCELLED', 'PROVIDER', 'ffd', 'CASH', 0, 13.00000000, 'G 24, I-10/2 I 10/2 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.65625420, 73.03628360, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72778020, 73.07299340, '2018-05-21 23:16:01', NULL, NULL, NULL, 0, 0, 0, 0, 'inllEg{w|LcAp@oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@eBcEwACYAKCcAr@{MbJcGbEoRrMsMdJQLK[]y@GCU?s@`@SFUCaFvDKb@]`@cDjCy@|@m@Va@b@i@bAUr@O~@[bCUbCUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]aBaEUk@{EaLeAqCq@{A{IeSk@{AyJuUgJyTsMwZcDaIa@YWIm@ASNkAt@kSfNo`@`XoKhHoe@z[iP|KQd@iA|@GNFTh@nAs@f@yKpHOJKUYw@Wk@i@mAk@oAxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-05-21 23:14:58', '2018-05-21 23:21:52'),
(252, 'TRNX818403', 113, 114, 114, 1, 'CANCELLED', 'PROVIDER', '', 'CASH', 0, 13.00000000, 'G 24, I-10/2 I 10/2 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.65630970, 73.03620050, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72778020, 73.07299340, '2018-05-21 23:23:02', NULL, NULL, NULL, 0, 0, 0, 0, 'wnllE}zw|Lu@f@oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@eBcEwACYAKCcAr@{MbJcGbEoRrMsMdJQLK[]y@GCU?s@`@SFUCaFvDKb@]`@cDjCy@|@m@Va@b@i@bAUr@O~@[bCUbCUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]aBaEUk@{EaLeAqCq@{A{IeSk@{AyJuUgJyTsMwZcDaIa@YWIm@ASNkAt@kSfNo`@`XoKhHoe@z[iP|KQd@iA|@GNFTh@nAs@f@yKpHOJKUYw@Wk@i@mAk@oAxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-05-21 23:22:41', '2018-05-21 23:23:15'),
(253, 'TRNX330386', 113, 114, 114, 1, 'CANCELLED', 'PROVIDER', '', 'CASH', 0, 14.00000000, 'G 24, I-10/2 I 10/2 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.64848750, 73.03259330, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72778020, 73.07299340, '2018-05-21 23:24:01', NULL, NULL, NULL, 0, 0, 0, 0, 'k_klEggw|Lz@k@AEoBuEm@yAsA~@aC~AsGpEeInF_An@wA~@y@oB{DcJwBcFwEcL{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@eBcEwACYAKCcAr@{MbJcGbEoRrMsMdJQLK[]y@GCU?s@`@SFUCaFvDKb@]`@cDjCy@|@m@Va@b@i@bAUr@O~@[bCUbCUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]aBaEUk@{EaLeAqCq@{A{IeSk@{AyJuUgJyTsMwZcDaIa@YWIm@ASNkAt@kSfNo`@`XoKhHoe@z[iP|KQd@iA|@GNFTh@nAs@f@yKpHOJKUYw@Wk@i@mAk@oAxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-05-21 23:23:43', '2018-05-21 23:24:27'),
(254, 'TRNX799451', 113, 114, 114, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 13.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65648570, 73.03623740, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72778020, 73.07299340, '2018-05-21 23:30:01', NULL, NULL, NULL, 0, 0, 0, 0, '_qllEwzw|LgHwP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AcAeCO?yACSE_W`Qyb@`Z[{@Q[ECM?cAh@U@ICi@b@wDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNmHbFy[lT}CvBaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-05-21 23:29:18', '2018-05-21 23:30:13'),
(255, 'TRNX335511', 113, 114, 114, 1, 'CANCELLED', 'PROVIDER', '', 'CASH', 0, 10.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65652040, 73.03624310, 'F-10 Markaz F-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.69523080, 73.01285460, '2018-05-21 23:32:01', NULL, NULL, NULL, 0, 0, 0, 0, 'aqllE}zw|LeHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AcAeCO?yACSE_W`Qyb@`Z[{@Q[ECM?cAh@U@ICi@b@wDrCiL~HkBpAgD~BoGlEgOdKcI|EiDrBmBpAwCtBcEvCqFtD{EbDoCjBsM~IqA|@mBlAAFGPYZGNATBVX`AdCfGrDnIbDtH|EhL~GjPvOr^dE~Jh@hAVZRPHCT?T@RFJHJT@TC^Yj@OPSJWHWBYCa@J_@PqKjHyCpBgD~BoBnA{@t@rA~ChBfEQN_@TQ_@CEEAOFg@aAEAQ@Si@', NULL, '2018-05-21 23:30:52', '2018-06-06 17:11:09'),
(256, 'TRNX100956', 113, 0, 114, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 13.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65652120, 73.03624330, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72778020, 73.07299340, '2018-05-21 23:31:54', '2018-05-22 03:20:00', NULL, NULL, 0, 0, 0, 0, 'aqllE}zw|LeHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AcAeCO?yACSE_W`Qyb@`Z[{@Q[ECM?cAh@U@ICi@b@wDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNmHbFy[lT}CvBaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkH_GkNdDyBwCoH', NULL, '2018-05-21 23:31:54', '2018-05-21 23:32:00'),
(257, 'TRNX773786', 152, 0, 118, 1, 'CANCELLED', 'USER', NULL, 'CASH', 0, 1.00000000, '1800 Ellis Street,San Francisco, CA 94115, USA ,United States ', 37.78583400, -122.40641700, '111-199 Geary Street,San Francisco, CA 94108, USA ,United States ', 37.78758200, -122.40651400, '2018-05-25 18:23:56', NULL, NULL, NULL, 0, 0, 0, 0, '{~reFbmbjVlEbGjBhC_AnASJSAmD\\oA`@cAJc@DK}AKyAQcDq@mJKeBiBToAPHtAVjE', NULL, '2018-05-25 18:23:56', '2018-05-25 18:24:12'),
(258, 'TRNX149432', 153, 129, 129, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 14.00000000, 'G 24, I-10/2 I 10/2 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.64722310, 73.03201320, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72778020, 73.07299340, '2018-05-25 23:49:01', NULL, '2018-05-25 23:49:33', '2018-05-25 23:49:34', 1, 1, 0, 0, 'kvjlE}`w|LZt@_@TyBxAoChBgIvFcEnCcCbBsA|@}DeJuE}K{DcJ_GiNaJiToRid@qTah@gGmNkF}L_@g@_@i@a@q@eBcEqBEKCcAr@{MbJyTlOmSnNQLK[]y@QEK@s@`@SFUCaFvDKb@]`@sAdAoAdAy@|@m@Va@b@i@bAUr@O~@SzA]jDUhAUb@YXe@Pc@FSAe@M_@Wa@k@cDkG{@cBg@oAk@{B]gBk@gBq@gBMo@ASsBiF_LaXwNi]wBmF{EaLeAqCq@{A{IeSk@{AuNe]kFiMsMwZcDaIa@YWIm@ASNkAt@kAt@aSbNu`@dXgErC_C~AoIzF_[~SiP|KQd@SPu@j@EF?Pn@zAs@f@yKpHOJKUYw@k@oAaAyBxB{A`BgAeBeE_EoJsBaFVQlCgBwCoH', NULL, '2018-05-25 23:47:27', '2018-05-25 23:49:46'),
(259, 'TRNX360010', 154, 141, 141, 2, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, 'RDB Boulevard, Block GP, K-1, GP Block, Sector V, Salt Lake City, Kolkata, West Bengal 700091, India', 22.56859779, 88.43305206, 'Murari Pukur, Ultadanga, Kolkata, West Bengal 700067, India', 22.59295300, 88.38916500, '2018-05-31 07:29:36', NULL, '2018-05-31 07:33:09', '2018-05-31 07:35:07', 1, 1, 0, 0, 's{vhCwcwzOlCtAkApDaCtGaDnJ}E~MaGbQyE|MELbA^nB~@vB~@d]vNhElBpKfE`KfElB~@~ChAtDdBn@XfD|AZRTXRh@Pz@F`@JdBDvAeCnBgKrIeAx@oEpCsAp@eBn@wBv@mEvAgPxFoDtAuB`A}HbDaDjAmCdAaCv@yDx@oHpAkJzAoKhBqDf@}Cf@y@NqIdD{ChAaDbAeCz@mE~AcAj@?BADCDGFk@^YRsAl@iCfAqBr@uBx@o@`@Ub@UlAG|@i@tCg@~DAr@]pCId@UEqBQeAFk@BGFMF[Fu@j@[ZUb@c@~AWbAGz@EZg@rACFsAdF[pA', NULL, '2018-05-31 07:29:36', '2018-05-31 07:36:40'),
(260, 'TRNX437590', 154, 141, 141, 2, 'CANCELLED', 'PROVIDER', NULL, 'CASH', 0, 4.00000000, 'RDB Boulevard, Block GP, K-1, GP Block, Sector V, Salt Lake City, Kolkata, West Bengal 700091, India', 22.57211494, 88.42314148, '305, Eastern Metropolitan Bypass, Milan Nagar, Nabapally, Sector IV, Salt Lake City, Kolkata, West Bengal 700010, India,Kolkata,West Bengal', 22.55779286, 88.41158241, '2018-05-31 07:53:17', '2018-06-01 13:25:00', NULL, NULL, 0, 0, 0, 0, 'yrwhCucuzOuDlKELbA^nB~@vB~@d]vNhElBpKfE`KfElB~@~ChAtDdBn@XfD|AZRTXRh@Pz@F`@VjAFJLFNFH?l@]|@]v@EjABx@HzA\\~@b@b@Vv@r@v@|@hEzEr@dAr@jAn@tA`@xAZzATzBX|EWBGqAQwCW_CU_A_@sAk@oA_AaBi@w@oByBwCgDcA{@{@]m@S{B]k@C{@Jm@Ra@RqA`A', NULL, '2018-05-31 07:53:17', '2018-05-31 07:54:37'),
(261, 'TRNX282260', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 21.00000000, 'Konrad-Adenauer-Straße 82G,63073 Offenbach am Main ,Deutschland ', 50.08953427, 8.79625187, 'Speicherstraße, 60327 Frankfurt am Main, Deutschland', 50.10100100, 8.66197700, '2018-06-12 21:27:46', NULL, '2018-06-12 21:29:00', '2018-06-12 21:29:54', 1, 1, 0, 0, '_bvpHo~tt@Za@Tr@PNd@BxDU|HMlDIhAlOfApOPxBx@|Lp@pJn@|H^nFdBfWZbDPl@`CpER|@Dt@o@fCQr@O`@_BzBkDpGOJm@~@kAbC_AdBKJm@l@KLCHSL{@p@q@j@sEfDsAbAi@\\a@Ja@V}@ZcIr@UA@^D~@XdF\\fHd@vM\\fJZ~GNvDDn@DX?nAA|AKzBWpDYjBe@bC_AjEMRmAdFcAhEeB~HiB`HiEvO[x@Wf@c@j@kAdAuC`CgAjAu@~@_BnCc@~@aA|C_@lBKnA]tBIr@MfAAbAJx@Tb@VTd@P`@HXBRATMTYh@_BTu@NSLKRKRA`@@fANb@ItBb@xCv@|C`AzBx@rGdCvG~BxBl@fCn@xCn@`C^zC\\tEZlHVhEJdER|Db@xCf@pCl@fBf@hBl@zB|@xB`AnB`AfAn@zCnBx@l@rFzDtDtCZr@~A|ArAzAb@j@dBpCt@bAj@n@~@p@~@h@pEbBvC`ARV^Zd@t@JXPr@XvBTlAPf@Xf@xAxAV^Vn@Tz@Hr@D`ADjCLfIFtDTzALfE\\lHb@tG`AxKt@bHnDtZl@fFxAjNjAfNb@fITnHL`HDvFF|MBrT@bZIny@Hnb@Nf[Vr`@V~KT`FXzE^zEb@xEd@xDj@dEbCdNjBvJFjAB`@f@|CNfAB`@Ad@Kd@GRORYRc@Hk@CQE[QUSsAqB_CwDSK[e@gA{AkCuCyBkBmA{@qBcAmAi@oBm@gAWsCg@aBSeF{@{BWgFy@eJqBsRgEqCo@iJsBcBc@g@a@SYmAiCkCaGs@wAk@_A_@WYIc@Ce@@aCp@e@PQFqA`@oBb@y@FmATSBQ?MEk@Ui@IaJ{D_N{FgH{C{AeAeH_JsKeNiB}BIYoE}FeKsMaBqBkBeCMI}AsBi@[[ISLe@^S\\_@d@o@x@}CpDYXyAhBKPY|@O\\YZsFbHkBzBkArAo@ZmAb@eAGq@Ee@TGFELBV\\nATx@BVZhA^jAzAxDpFdOrA}@fC_CPIBIEQcBcG', NULL, '2018-06-12 21:27:46', '2018-06-12 21:30:20'),
(262, 'TRNX280987', 128, 0, 116, 1, 'CANCELLED', 'USER', NULL, 'CASH', 0, 31.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00684886, -87.89155955, 'Chicago Loop, Chicago, IL, USA', 41.87863500, -87.62505500, '2018-06-13 11:40:15', NULL, NULL, NULL, 0, 0, 0, 0, 'ymk_G|jmwOrE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XiAx@eB~AMLa@p@TvUB|DX?OoTCcAD[D}@PiAVu@NU^e@~@q@n@a@`@OrAUx@Ct@@tCEnFEjADjA@@Y@M@AAuENcC\\yBZmAz@aChEkMj@iB?g@tGwQ~EgNxBwG`FoNn@eBdAeCt@yAtBcDhAwA~@aApBsBnCqCrHwH~AiBnA{A`BwCfHmPdPq^nCoGh@wAdA{Cr@yBfAeE`AyDrAiGj@gCf@uCv@gFZuC\\}DNmCHw@DwBDsIIyIEgD@}@M_KGcBWiNKmHSwKOgGe@{[FiPd@mQVcF\\uFxAcT^{EZyCt@aFf@}Cv@kFRsBRuCJuD@sDCc\\AqBIue@GmPGef@Es_@D{BLkBTsBTmAb@kBv@yBlAkC|P{^tOk\\~KaV|FaMh@uAb@uAp@iCr@aDTiAx@yFr@aDV{@fAeDnBmEt@aBfQm_@tDeHxAeCvCiFj@iAl@yA|@yCpAgG`@gBf@qAN_@x@cBdAmBdBiC|CgFXg@l@cAPMnBoD`C{EvDaIb@w@lDqHbCeF`FiLvB_Fx@eBHSlD{HpFiLxBoEz@oBfFwKbCgFnFmLpAeEp@mB^w@l@cA|@gAx@u@n@e@t@g@|Ay@hGsCtB}@zBoAfA}@bBiBrA_Ct@eBr@}Bd@}Bh@qD`@kCl@mD^{A`@qA|AkDzBuEpAoCTg@`EqIdFaKxBoEr@_BnGgM`BkDjGaMbCyErGuMvAiDl@eBnByFbCgGrAoCbCcFnNiZ`BiD|IiRjB_EfA_C|B{E|GwNjHkOpAaClBwC~@mAnAuAx@}@`A{@`@_@dAu@z@m@x@c@b@UbL}F|FyCnBkAh@[pBgAjCkBp@o@dGkHjAkAz@q@jAs@z@a@x@Yz@SlAQbAGrA@dGVv@BtBCdBKdBUdBYdAUlCaAbEuAlHkCpC{A|AiAlBoBxAcB|@_B|B}Dd@}@rAwBfCgEjB{C`BgDfCqEtA}BjC}ExAgCdA{A`EeEXWTUjC_BDCxAw@f@S^OpAWjBYbBIvEK~DA`ACnAI|BCZAdARb@FvC\\HKFCpEGhBDdBFl@AA]?S?]ASCkIE{UEaJC}IEcICmNAmKGgNK_MGqE', NULL, '2018-06-13 11:40:15', '2018-06-13 11:40:32'),
(263, 'TRNX856109', 128, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 31.00000000, '7041 Barry Street,Rosemont, IL 60018 ,United States ', 42.00686866, -87.89146393, 'Chicago Loop, Chicago, IL, USA', 41.87863500, -87.62505500, '2018-06-13 12:06:05', NULL, '2018-06-13 12:06:28', '2018-06-13 12:06:32', 1, 1, 0, 0, '}mk_G|jmwOvE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XiAx@eB~AMLa@p@TvUB|DX?OoTCcAD[D}@PiAVu@NU^e@~@q@n@a@`@OrAUx@Ct@@tCEnFEjADjA@@Y@M@AAuENcC\\yBZmAz@aChEkMj@iB?g@tGwQ~EgNxBwG`FoNn@eBdAeCt@yAtBcDhAwA~@aApBsBnCqCrHwH~AiBnA{A`BwCfHmPdPq^nCoGh@wAdA{Cr@yBfAeE`AyDrAiGj@gCf@uCv@gFZuC\\}DNmCHw@DwBDsIIyIEgD@}@M_KGcBWiNKmHSwKOgGe@{[FiPd@mQVcF\\uFxAcT^{EZyCt@aFf@}Cv@kFRsBRuCJuD@sDCc\\AqBIue@GmPGef@Es_@D{BLkBTsBTmAb@kBv@yBlAkC|P{^tOk\\~KaV|FaMh@uAb@uAp@iCr@aDTiAx@yFr@aDV{@fAeDnBmEt@aBfQm_@tDeHxAeCvCiFj@iAl@yA|@yCpAgG`@gBf@qAN_@x@cBdAmBdBiC|CgFXg@l@cAPMnBoD`C{EvDaIb@w@lDqHbCeF`FiLvB_Fx@eBHSlD{HpFiLxBoEz@oBfFwKbCgFnFmLpAeEp@mB^w@l@cA|@gAx@u@n@e@t@g@|Ay@hGsCtB}@zBoAfA}@bBiBrA_Ct@eBr@}Bd@}Bh@qD`@kCl@mD^{A`@qA|AkDzBuEpAoCTg@`EqIdFaKxBoEr@_BnGgM`BkDjGaMbCyErGuMvAiDl@eBnByFbCgGrAoCbCcFnNiZ`BiD|IiRjB_EfA_C|B{E|GwNjHkOpAaClBwC~@mAnAuAx@}@`A{@`@_@dAu@z@m@x@c@b@UbL}F|FyCnBkAh@[pBgAjCkBp@o@dGkHjAkAz@q@jAs@z@a@x@Yz@SlAQbAGrA@dGVv@BtBCdBKdBUdBYdAUlCaAbEuAlHkCpC{A|AiAlBoBxAcB|@_B|B}Dd@}@rAwBfCgEjB{C`BgDfCqEtA}BjC}ExAgCdA{A`EeEXWTUjC_BDCxAw@f@S^OpAWjBYbBIvEK~DA`ACnAI|BCZAdARb@FvC\\HKFCpEGhBDdBFl@AA]?S?]ASCkIE{UEaJC}IEcICmNAmKGgNK_MGqE', NULL, '2018-06-13 12:06:05', '2018-06-13 12:06:57');
INSERT INTO `user_requests` (`id`, `booking_id`, `user_id`, `provider_id`, `current_provider_id`, `service_type_id`, `status`, `cancelled_by`, `cancel_reason`, `payment_mode`, `paid`, `distance`, `s_address`, `s_latitude`, `s_longitude`, `d_address`, `d_latitude`, `d_longitude`, `assigned_at`, `schedule_at`, `started_at`, `finished_at`, `user_rated`, `provider_rated`, `use_wallet`, `surge`, `route_key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(264, 'TRNX860847', 129, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 0.00000000, '173 Illinois 38,Lombard, IL 60148 ,United States ', 41.85979294, -88.01965783, '173 Illinois 38,Lombard, IL 60148 ,United States ', 41.85979300, -88.01965800, '2018-06-15 16:37:20', NULL, '2018-06-15 16:37:51', '2018-06-15 16:37:54', 1, 1, 0, 0, 'ovn~FzifxO', NULL, '2018-06-15 16:37:20', '2018-06-15 16:38:20'),
(269, 'TRNX303348', 161, 123, 0, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 0, 7.02700000, 'Noor Floor Mill, Street 7, Islamabad, Pakistan', 33.65641100, 73.03656150, 'G-8 Markaz Road, Islamabad, Pakistan', 33.69953070, 73.04790490, '2018-06-29 01:01:49', '2018-06-29 02:00:00', NULL, NULL, 0, 0, 0, 0, 'knllEe{w|LaAn@oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@eBcEwACYAKCcAr@{MbJcGbEoRrMsMdJQLK[]y@GCU?s@`@SFUCaFvDoPbLmDfCuPhL_BbA}AnAY`@s@j@k@d@IZ@PHRLPFHQLcAn@yCvB{@t@{@h@{BnAcBtAUNIQCQAODYp@}@RSFQ@MAOcBwDaBcD_@i@WU}@m@q@WoAUmBa@MGSIYU]e@y@_BmAyCaFeL{CvByCtBaElC?@A@EDE?KGcB_E', NULL, '2018-06-29 01:01:49', '2018-06-29 01:01:49'),
(274, 'TRNX130077', 161, 123, 123, 1, 'STARTED', 'NONE', NULL, 'CASH', 0, 9.67400000, 'Noor Floor Mill, Street 7, Islamabad, Pakistan', 33.65641100, 73.03656150, 'F-10 Markaz, Islamabad, Pakistan', 33.69523080, 73.01285460, '2018-06-29 01:55:01', NULL, NULL, NULL, 0, 0, 0, 0, 'knllEe{w|LaAn@oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@eBcEwACYAKCcAr@{MbJcGbEoRrMsMdJQLK[]y@GCU?s@`@SFUCaFvDoPbLmDfCuPhL_BbA}AnAaEdCkHnEeEvCuIbG}EdDmFnDeMrIiBjAMJsCnBENOPUVER@TXlAvF~MjBhExCdH|Nn]xQrb@|BrF^n@ZVTCh@DRHDHFT@^IZ[f@QNUJWDU?OAa@J_@PcEpC{HhFcDzB_DtBmAbAoExCz@lBXn@p@e@d@`A@@D@BAfAw@Si@', NULL, '2018-06-29 01:25:43', '2018-06-29 01:25:58'),
(275, 'TRNX935032', 163, 0, 0, 1, 'SEARCHING', 'NONE', NULL, 'CASH', 0, 5.64100000, 'I-10, Islamabad, Pakistan', 33.64679570, 73.03757610, 'Faizabad, Pakistan', 33.66350940, 73.08406020, '2018-06-29 16:26:27', '2018-06-29 02:00:00', NULL, NULL, 0, 0, 0, 0, 'asjlEedx|LyDeJKS|AeA`As@rCkBrA_A~CuBhA{@h@g@x@a@xDgCpCmBjBqAJTx@lB|@k@}CgHsE{K{G{OqCsGeCkGgAiCmB}DyAmDmAgCmB{EsC_H{CaHkKqVoAyC_AaCYm@iAyCmBoEsEcKyAyD]y@mAmCcLqWqDmIyAsD_DgH{GuNyDgHwAgCwAuC]aAQNs@PIB', NULL, '2018-06-29 16:26:27', '2018-06-29 16:26:27'),
(276, 'TRNX762048', 153, 146, 146, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 13.00000000, 'Service Rd N, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.65681010, 73.03517780, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72778020, 73.07299340, '2018-07-24 19:36:10', NULL, '2018-07-24 19:36:31', '2018-07-24 19:36:34', 0, 1, 0, 0, 'cpllE{sw|LJM^EyCuHyD_JMa@Ke@Aa@_@}@mEkKmRed@{Ssf@qHaQ_@u@c@g@]i@u@{AcAeCO?yACSE{B|A_`@xWkGfEqMbJ[{@Q[ECM?KDw@b@U@ICi@b@wDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@In@c@|DSjBWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CcA{Ce@sACc@sBiFaGiNgH}P{M{[eFwL_B_EcCoFeGsNqKaW{GmP}Oc_@cDaIa@YWIm@AiAt@{@h@mRrMmTbOcRdMmEtCe_@hWwPhLsCjBIVMRgAz@CPNb@`@z@OJmH|E_DzBa@aAe@iA_AsBKWRMfEuCyKwWdDyBwCoH', NULL, '2018-07-24 19:36:10', '2018-07-24 19:36:46'),
(277, 'Txicab558871', 116, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00682670, -87.89162760, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-07-30 09:28:07', NULL, '2018-07-30 09:28:47', '2018-07-30 09:28:56', 1, 1, 0, 0, 'umk_G|jmwOnE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOlDCbIAtE?dDB`CDjF?`G?vGIvE?dBMrBa@pAe@rAs@dAw@t@q@n@y@n@}@p@qAlCwFn@mAp@cAzA_Bh@e@dAo@n@WbAYf@KdAKlCYnBMjBIdAABDBBLDXBt@RjAh@`B~@tG~DlDzB`@RPD`@D`CQh@CX?`@F\\NPPx@lAbAtDrEtNfAjDnC~IPr@NdAHv@DfAA`CSrB_@fBUr@e@dA}@pA_HbIw@z@gCxCwF~GQR]f@Wr@Ox@ClAAt\\BhADj@jBrKVnAVl@NRZTf@PvBXL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@F`@VR@VIVUPYl@sAnAeC', NULL, '2018-07-30 09:28:07', '2018-07-30 09:29:12'),
(278, 'Txicab223809', 113, 0, 146, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 18.00000000, 'City-Sadar Road, Ittehad Colony, Rawalpindi, Punjab 46000, Pakistan', 33.60625080, 73.05429730, 'Korang Town Rawalpindi, Islamabad, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, '2018-09-09 22:41:16', NULL, NULL, NULL, 0, 0, 0, 0, 'qvblEkl{|L@aAIAEI?OQe@CMAMv@c@lBy@HKPILC`@Jr@RZPDVn@jEbC]jCa@n@En@ENOf@wCd@aDVgBPHVLVBvCp@fDz@`G|A\\ALITUrB~DfBnDlA~BbAbBhCtC|@bA|G|HbA[pFoH`FmHh@m@f@m@zDoFzBeDn@oA^kA^{A^qCl@}FLw@VkARw@d@yAp@_BhAqBx@sAr@aAt@w@v@e@RAN@dAw@`@_@`@g@r@mA\\u@\\iALw@VaBB_@Eu@McAaA}Fg@uDwAuKWyCGeBQcC_@mCSw@Wy@[o@i@}@cEmF{DoEkAgBiEwHiB_DYYa@Uc@So@Oq@?iAZo@^e@Ru@Vs@JmAH}@AaCO{CIwF]_AOw@Q{Am@q@_@mA_Ao@m@oAcBa@u@a@_As@}BW}AQaBuAy[SmFc@yIm@eKWaC[}@u@wA_PqVsGgKiD}FaEoGgMaS_A{AO_@Mk@Ea@?iAJ_AjAcEtDkNlAcEhDkM~@_DzBoGvEeMnCiIv@uBlCaG~BkFpAaDvAwCVo@Ry@ZiCFcCCaAOeAQyAWiAg@sAq@mA]m@OQ[Yu@i@{EcCy@e@mE}B{CaBKGy@i@i@A{@Bs@XqAt@w@n@QZGd@@\\Nf@PR\\Nd@B~@SvEyC\\CvAkAjFqDlEsCpRiMjBsAfGcE|Q{LlFsDdEqCz@g@jCkBbIsFjBmAvMeJ|GoEbI{F`NgJvAaAJZwAbAkOnKyGlEHZFZDh@Al@@PRf@v@pAxAlAP\\v@nC?nADNn@fByAvAw@p@STIV?^F\\nCvFJTJGPELBLHTVnCjE`EdH`AbBRJDBdAIzDe@bC}@dH{Bu@mD_@oBzDqC', NULL, '2018-07-30 21:52:14', '2018-09-09 22:41:21'),
(279, 'Txicab913980', 171, 0, 114, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 10.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65654530, 73.03626680, 'F-10 Markaz F-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.69523080, 73.01285460, '2018-08-08 00:29:19', NULL, NULL, NULL, 0, 0, 0, 0, 'eqllEc{w|LaHkP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AcAeCO?yACSE_W`Qyb@`Z[{@Q[ECM?cAh@U@ICi@b@wDrCiL~HkBpAgD~BoGlEaK`Hc@V}AnAcI|EwGhEyIjGwFvDkFlDiCfBiMpImA`AkBlAAFINYZINATDTT`AdCfGrDnIbDtH|EhL~GjPvOr^dE~Jh@hAVZRPHCT?T@RFJHJT@TC^Yj@OPSJWHWBYCa@J_@PqKjHyCpBwBxAi@d@mClBEr@?Rx@lBdBhEQN_@TQ_@CEEAOFg@aAEAQ@Si@', NULL, '2018-08-08 00:28:16', '2018-08-08 00:29:28'),
(280, 'Txicab971600', 171, 0, 129, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 10.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65654460, 73.03626810, 'F-10 Markaz F-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.69523080, 73.01285460, '2018-08-08 00:30:26', NULL, NULL, NULL, 0, 0, 0, 0, 'eqllEc{w|LaHkP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AcAeCO?yACSE_W`Qyb@`Z[{@Q[ECM?cAh@U@ICi@b@wDrCiL~HkBpAgD~BoGlEaK`Hc@V}AnAcI|EwGhEyIjGwFvDkFlDiCfBiMpImA`AkBlAAFINYZINATDTT`AdCfGrDnIbDtH|EhL~GjPvOr^dE~Jh@hAVZRPHCT?T@RFJHJT@TC^Yj@OPSJWHWBYCa@J_@PqKjHyCpBwBxAi@d@mClBEr@?Rx@lBdBhEQN_@TQ_@CEEAOFg@aAEAQ@Si@', NULL, '2018-08-08 00:30:03', '2018-08-08 00:30:46'),
(281, 'Txicab738576', 170, 0, 129, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 12.00000000, 'Service Rd N, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.65743880, 73.03600350, 'F-6/1 F 6/1 F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72713680, 73.07831880, '2018-08-08 00:50:51', NULL, NULL, NULL, 0, 0, 0, 0, 'wtllE}}w|LHBZKyD_JMa@Ke@Aa@_@}@mEkK}KyWcTeg@yN{\\_@u@c@g@]i@u@{AcAeCO?yACSE{B|A_`@xWkGfEqMbJ[{@Q[ECM?KDw@b@U@ICi@b@wDrCiL~HkBpAkCfBqFxD{LlIc@V}AnAcI|EwGhEwCrBiI|FmGfEwE~CiMpI]Vo@h@kBlAeAj@e@^[i@}@uBiAaCaAaCgAcCsCuGeA{BoBwEwG}OqEeKeDyH}EwL[eAmJcUmJmTqAaCcNk\\sCkGiAuCaBsDiBqE_DsH_E_JsDwIeDcIiE_KgRmc@Q?Q@yClBsBvA}A|@uAr@wCzAu@d@MBg@TIpAl@vA', NULL, '2018-08-08 00:50:29', '2018-08-08 00:51:02'),
(282, 'Txicab961545', 170, 160, 160, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 10.00000000, 'Service Rd N, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.65743880, 73.03600350, 'F-10 Markaz F-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.69523080, 73.01285460, '2018-08-08 00:51:12', NULL, '2018-08-08 00:51:27', '2018-08-08 00:51:30', 1, 1, 0, 0, 'wtllE}}w|LHBZKyD_JMa@Ke@Aa@_@}@mEkK}KyWcTeg@yN{\\_@u@c@g@]i@u@{AcAeCO?yACSE{B|A_`@xWkGfEqMbJ[{@Q[ECM?KDw@b@U@ICi@b@wDrCiL~HkBpAkCfBqFxD{LlIc@V}AnAcI|EwGhEwCrBiI|FmGfEwE~CiMpI]Vo@h@kBlAAFINYZINATDTT`AdCfGrDnIlArChEbKfGrNnIdShIlRdE~Jh@hAVZRPHCT?h@HJHDHFV?\\Ob@]d@SJWHWBYCa@J_@PqKjHyCpBwBxAi@d@mClBE\\?T?Rx@lBdBhEQN_@TQ_@CEKAIFg@aAEAQ@Si@', NULL, '2018-08-08 00:51:12', '2018-08-08 00:51:40'),
(283, 'Txicab180746', 170, 0, 160, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 25.00000000, 'Corniche St - Sharjah - United Arab Emirates', 25.33656130, 55.37515210, 'Financial Center Rd - Dubai - United Arab Emirates', 25.19061370, 55.29353380, '2018-08-18 09:08:29', NULL, NULL, NULL, 0, 0, 0, 0, 'cpsyCkn~pIy@c@MYAM@UHO^YrCN|ABdHEtCSnEc@`BQpAYlEcAhBk@nAe@fAi@~CiCvFoFfAgA`BaBjC_Cl@m@TUX[l@_A^aA`@iBZ{BBUPUPO\\QZFpAhAzAvAjGzF`DtCzArAt@f@^ZFLJRNCtFaAzB_@bCc@jCa@v@KvDEDH^Dn@Jr@R|@ZtAh@VFT@NATG`@Ub@Qb@Eh@B\\LZTp@`@ZJjCdCnItHbFpEhE`EvDjEfC|D~@hBzFzNvIvV~@|Bz@dBfB~CtArBp@~@tBrBbA~@dDjCjAr@dAf@hAf@fBl@rA\\tDr@`Hx@fYxCnQlB`CXnDh@hCh@xAd@tDvAlCzA`BlAtFxF`CnCzEvFtHpIzKhMlGbHpDlEfEnF`G|GdDfDpCbDfF`GdLpMtIfKtAxAfAv@bBp@~@RhAJl@@fAEv@GfC[xOmBrBGv@?nCRvC^xBVtFz@`JjAnAJtDJfCC`CKjCUnAQvDaAdDgAdJgDrEeB~B}@dDeAfDgApCaA`Bi@|E}@lCM`BAfCL|@LnAXxBl@zCvAdBdApApAfRpOjE`E~AxArDdExCpDpErGpBpDtAdDX`AdAjEh@rC^zDPhEEtEOjC[pC[zBi@`CeAjDeBhDoDxIw@|AwBbDwCxG{@tB_@d@W`@IL[LQBa@ESMIMGWC[?[Lc@V_@ZQTER@v@?d@RdAVxAVhBRbBJ|BFvBAxAEhGg@xAIdA?hBFjDVvGn@bJt@tD\\dCZpEd@rK`AzGr@rJ~@~VfCp@JlB`@|Ad@|Al@|Av@jBlArFtDnAv@bB`AdC~@~Bl@vCd@`AHvCLpB?dCE|GIzEIxBOxSiC`MaBxASNB`@AnHs@zBSrASlASfAU\\Cn@IxA[lAYbCk@~@E`A@x@LfA`@dAt@n@v@\\n@Z|@P|@F`AC~BKbDBVWrCc@hGa@|FqAbQu@|JUpDWvDCn@Ih@g@fFk@tEUlAm@lA_@b@a@\\u@Zg@Hu@FmGZ]HoJV_GX_BRcBZ', NULL, '2018-08-18 09:08:29', '2018-08-18 09:08:50'),
(284, 'Txicab775578', 170, 160, 160, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 18.00000000, 'Corniche St - Sharjah - United Arab Emirates', 25.33655910, 55.37515500, 'Dubai Festival City - Dubai - United Arab Emirates', 25.21710030, 55.36136350, '2018-08-18 09:09:14', NULL, '2018-08-18 09:10:01', '2018-08-18 09:11:07', 1, 1, 0, 0, 'cpsyCkn~pIy@c@MYAM@UHO^YrCN|ABdHEtCSnEc@`BQpAYlEcAhBk@nAe@fAi@~CiCvFoFfAgA`BaBjC_Cl@m@TUX[l@_A^aA`@iBZ{BBUPUPO\\QZFpAhAzAvAjGzF`DtCzArAt@f@^ZFLJRNCtFaAzB_@bCc@jCa@v@KvDEDH^Dn@Jr@R|@ZtAh@VFT@NATG`@Ub@Qb@Eh@B\\LZTp@`@ZJjCdCnItHbFpEhE`EvDjEfC|D~@hBzFzNvIvV~@|Bz@dBfB~CtArBp@~@tBrBbA~@dDjCjAr@dAf@hAf@fBl@rA\\tDr@`Hx@fYxCnQlB`CXnDh@hCh@xAd@tDvAlCzA`BlAtFxF`CnCzEvFtHpIzKhMlGbHpDlEfEnF`G|GdDfDpCbDfF`GdLpMtIfKtAxAfAv@bBp@~@RhAJl@@fAEv@GfC[xOmBrBGv@?nCRvC^xBVtFz@`JjAnAJtDJfCC`CKjCUnAQbACp@Mv@QpBq@rCcA`@C|B_AxCeAxDuAvFmBxEkAj@UtAy@^]`AcAnA_BtEqGvDaFrBcCl@_AdAcBx@cB|A{D`BqDt@wAhBoC`CaD~BqCbAeA~AyAd@c@zDwCbIgGrB}AvDqCxB}AjB_B^e@r@wAh@qAhAoD~BgGxAqDxD_JjFcNxFoOZ[Tc@bByDV[XOpBWlBi@j@QtAQpAEl@J^T@DDJBDG`@SpAUxBIbB@tBFzANdBAVEDGLCP@RHNLHH@Zf@j@`Bh@jAzA|BHTAD?F@PFNLJNBF?PHVXR^', NULL, '2018-08-18 09:09:14', '2018-08-18 09:11:20'),
(285, 'Txicab643840', 170, 0, 160, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 15.00000000, 'Auf dem Domhof 13, 53179 Bonn, Deutschland', 50.65970530, 7.18803420, '53340 Meckenheim, Deutschland', 50.62588780, 7.03195070, '2018-08-18 10:47:59', NULL, NULL, NULL, 0, 0, 0, 0, 'kqetH}yzj@{AmDEDYZcBpBs@x@c@r@aAfDI`@YbB}@n@GTCNCjA@zDEnCE`COxDa@pHAxAHRFFK\\Mf@m@vC[nAUpBS|@[|@Yr@Wf@GHZhALn@FHHHP@RE`BqAXOPKVGVBTLj@n@|@nBzB|FV\\THXFZPzE~IPr@RbAFPtAxBpAhBRh@Hn@@vAMjACz@L|@^r@j@`Bp@jBRf@X^h@b@~@j@jDfB~AdAl@h@RTTd@Xp@xCfGf@z@^f@v@n@b@RpBt@h@ZpA`@h@XLBVTr@z@Vh@dCpGrAbC^j@pDvEHT|ApBvBpC`BnBTRPPH@PFd@TfAb@`AVhB\\j@Jh@RzBbAvAt@dAt@dBlApE~C\\TbCpA`Az@X`@dBxCz@hAhCdDb@t@|B`GxCjHjAzCr@jCj@lB\\r@pA|B^\\`@H`@A`@EHb@Px@@Hh@pCJlAVjDAf@e@~ESlASl@U`@eA`BWf@M`@Ex@@v@RjEVjFMbFQxEKlBOzBYjDCnBDfATzAfDnNRpAJ|@FpA@dAGvDDrBJtApBxNJjBC`CaAvQUdFCrAA`IHpNCxGAnACh@CDCFAFUFeALuBRUD{@FcDPwCb@iAVi@Po@ZeBhA{AzAeAxA{@~Aq@dBq@zByC`M_AdCm@pAgBfCkAxBs@jBq@rBa@fAGNJLx@~@~@nAfBzCt@~Ad@pAr@`C|AnGl@zBh@|AdAzCxApDpAfCdBxC|ErHl@z@rFzIvEjHl@rARd@`@tAVtALrAHtB?l@CzBK|CGhGAjD@^Q|IMrKC`AB`DNtBPtA\\lBrF`\\p@|CjBpGPt@DXt@jEf@zFNrCJfDArAAdAAbA_@|O?jCDpCFfBT~C^bDFRv@lH@\\DdCEDGPATFTLLF@`@dBDRp@dHRhCDn@RzA^xB`@hAR`@d@~@z@~Ab@b@~AhB`A~Ar@`BZv@f@dBZzARvARnCTpFXxDPdALbB`A~Op@fKBlCDjCArC?JJ@n@FlABn@DvBBXD@BFFFBFAFGBK?ET?', NULL, '2018-08-18 10:47:59', '2018-08-18 10:48:20'),
(286, 'Txicab719385', 170, 160, 160, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 15.00000000, 'Auf dem Domhof 13, 53179 Bonn, Deutschland', 50.65970530, 7.18803800, '53340 Meckenheim, Deutschland', 50.62588780, 7.03195070, '2018-08-18 10:48:44', NULL, '2018-08-18 10:49:51', '2018-08-18 11:01:54', 1, 1, 0, 0, 'kqetH}yzj@{AmDEDYZcBpBs@x@c@r@aAfDI`@YbB}@n@GTCNCjA@zDEnCE`COxDa@pHAxAHRFFK\\Mf@m@vC[nAUpBS|@[|@Yr@Wf@GHZhALn@FHHHP@RE`BqAXOPKVGVBTLj@n@|@nBzB|FV\\THXFZPzE~IPr@RbAFPtAxBpAhBRh@Hn@@vAMjACz@L|@^r@j@`Bp@jBRf@X^h@b@~@j@jDfB~AdAl@h@RTTd@Xp@xCfGf@z@^f@v@n@b@RpBt@h@ZpA`@h@XLBVTr@z@Vh@dCpGrAbC^j@pDvEHT|ApBvBpC`BnBTRPPH@PFd@TfAb@`AVhB\\j@Jh@RzBbAvAt@dAt@dBlApE~C\\TbCpA`Az@X`@dBxCz@hAhCdDb@t@|B`GxCjHjAzCr@jCj@lB\\r@pA|B^\\`@H`@A`@EHb@Px@@Hh@pCJlAVjDAf@e@~ESlASl@U`@eA`BWf@M`@Ex@@v@RjEVjFMbFQxEKlBOzBYjDCnBDfATzAfDnNRpAJ|@FpA@dAGvDDrBJtApBxNJjBC`CaAvQUdFCrAA`IHpNCxGAnACh@CDCFAFUFeALuBRUD{@FcDPwCb@iAVi@Po@ZeBhA{AzAeAxA{@~Aq@dBq@zByC`M_AdCm@pAgBfCkAxBs@jBq@rBa@fAGNJLx@~@~@nAfBzCt@~Ad@pAr@`C|AnGl@zBh@|AdAzCxApDpAfCdBxC|ErHl@z@rFzIvEjHl@rARd@`@tAVtALrAHtB?l@CzBK|CGhGAjD@^Q|IMrKC`AB`DNtBPtA\\lBrF`\\p@|CjBpGPt@DXt@jEf@zFNrCJfDArAAdAAbA_@|O?jCDpCFfBT~C^bDFRv@lH@\\DdCEDGPATFTLLF@`@dBDRp@dHRhCDn@RzA^xB`@hAR`@d@~@z@~Ab@b@~AhB`A~Ar@`BZv@f@dBZzARvARnCTpFXxDPdALbB`A~Op@fKBlCDjCArC?JJ@n@FlABn@DvBBXD@BFFFBFAFGBK?ET?', NULL, '2018-08-18 10:48:44', '2018-08-18 11:02:21'),
(287, 'Txicab985867', 170, 160, 160, 1, 'CANCELLED', 'PROVIDER', 'not', 'CASH', 0, 1.00000000, 'Auf dem Domhof 13, 53179 Bonn, Deutschland', 50.65971140, 7.18802850, 'Oberaustraße 96, 53179 Bonn, Deutschland,Bonn,Nordrhein-Westfalen', 50.65229736, 7.19512358, '2018-08-18 11:03:22', NULL, NULL, NULL, 0, 0, 0, 0, 'kqetH}yzj@{AmDVOd@k@bCgCb@|@z@lBd@`Ad@|@Zi@RYJKjAgAvHuHvAkAjA}@|@y@vA{Av@m@XWdAgA`B{BlAqBpBsCfBsC', NULL, '2018-08-18 11:03:22', '2018-08-18 11:12:59'),
(288, 'Txicab347158', 178, 160, 160, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, 'Auf dem Domhof 13, 53179 Bonn, Deutschland', 50.65972380, 7.18807400, 'Ellesdorfer Str. 50, 53179 Bonn, Deutschland,Bonn,Nordrhein-Westfalen', 50.66311780, 7.17857536, '2018-08-18 11:13:05', NULL, '2018-08-18 11:13:52', '2018-08-18 11:15:04', 1, 1, 0, 0, 'kqetH}yzj@{AmDEDYZcBpBs@x@c@r@aAfDI`@YbB}@n@GTCNCjA@zDmB_AI?MDIPMzAYlEu@rRBhAJr@HV`AtCPJ\\wB', NULL, '2018-08-18 11:13:05', '2018-08-18 11:15:24'),
(289, 'Txicab177102', 178, 160, 160, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 4.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65969820, 7.18801380, 'Rheinallee 66, 53173 Bonn, Deutschland,Bonn,Nordrhein-Westfalen', 50.68890906, 7.16638003, '2018-08-18 23:35:59', NULL, '2018-08-19 00:56:20', '2018-08-19 00:56:23', 1, 1, 0, 0, 'kqetH}yzj@{AmDVOd@k@bCgCi@wAWy@K[mAuD{@kB[w@SP[TWXmA|A_AfA]XOB[D[F_@P[VsDjDsD`DoAhAeFtE{@r@g@f@OB_Al@ORQREZ]h@m@jAsElKKj@GdBo@n@i@n@a@r@yBhEkG~Lw@rAq@|@y@~@mB`CMe@WcAQoAGSQFo@Za@ZEJiBvAcAx@u@l@eBnAqCbCiDtCeAv@eBhAcIxF]`@aBtCg@h@m@d@i@ZkHbFeChAi@Rq@`@_CrAcAp@e@XCCI?EB[PgFpAmCp@OBwEVe@?[@iC`AQJWPqBvAJ^tAfE', NULL, '2018-08-18 23:35:59', '2018-08-19 00:56:36'),
(290, 'Txicab815582', 178, 0, 160, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 22.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65963170, 7.18807780, '53604 Bad Honnef, Deutschland', 50.64261730, 7.22624460, '2018-08-19 00:57:42', NULL, NULL, NULL, 0, 0, 0, 0, 'cketHa`{j@_@y@cBuDk@iBo@qBg@uAo@uA]}@g@`@uA|Au@bAa@b@]Xi@HQBWJg@Z}@|@}BrByBhBqBhBeFtE{BrBOB_Al@a@f@EZMRk@bAa@x@mDhIUf@Kj@GdBk@j@ED]`@e@v@u@rAgIdPy@xAo@`Ai@j@kCbD_BrB_B~B}CbE[h@Sd@Ol@Ix@Ex@?nAEzAUnAWt@iBlDwDfIiDlH}A|C_DzGs@~Ac@jAEPa@fAyDrIa@l@c@h@k@j@kBlA]R_DjAmCfAeAn@q@p@{@pAcCrEeAhBsAnCoAtDY`AY~@SvAWnBs@zDg@jBi@tA_@r@s@jAcAbAqDzCq@t@}@vAsAtCoAnCc@^o@Xs@Pk@Va@`@m@bAg@x@oCxE}BhEeEhHw@hAgCnCmIvIoClCuHvH}FtFcG`GwK~K}JnKo@LK?SGSMsD{DmAqAWUWKyEaG}@iAoByBgCkCwCqCoAkAwBiBqB{AiBoAoCgBqCeBoEqC}AeAeBgAmSeMw@g@_Aq@o@k@u@w@q@_Ak@{@s@wAk@wAWy@g@oBs@qDg@gEUaDWwGSaIWcIWsEYiDEuAMwAK}AEkB?k@JkDPqDRkA`@aIL}ATaB^}AZ{@\\s@`@i@d@g@vCkCr@m@H[jCcClCyCxFcHzE}F`CiClCkCjEaErFwEbGgFpEuDfBqAtA_AfAi@zAk@~Ac@bBY|D[rEc@r@KxBi@`Bc@lE_BvAq@~C}AnEeCfF{CvAw@|AcAjIsFnGqEnBsAxAy@bHuDtEyBdPwHzHeD`IcDvFmC~BoAxCiB~AeArBcBlAkAdBqBnAgBpF{H|@gArB{BvAsA`BkA|CcB|Am@zBm@vB[lBKlBAlA@hEV|Gr@vBPdCJv@@jBE`AEtB[jBg@tB}@xA{@rByAnCeCjCuCjDiE~@oA`CmD|FaJjJuNxFqItCoD`AaA|AsAvAcAlBkAtDwBzEkCzGqDvIiElD_BzCoAfGgC~b@kQrN}F|CcA|Bc@dCWVFTJHNDT?^Ab@YEuCk@a@Aq@H_Cz@cA^Es@GuAOkCIo@I]]wAGg@?Qi@]oAu@_DwAh@cCVi@|BmDf@iAXu@^yAWWUWiC{CWnD', NULL, '2018-08-19 00:57:42', '2018-08-19 00:58:02'),
(291, 'Txicab951921', 178, 160, 160, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 22.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65964340, 7.18808730, 'Bad Neuenahr, 53474 Bad Neuenahr-Ahrweiler, Deutschland', 50.54461700, 7.13646800, '2018-08-19 01:29:18', NULL, '2018-08-19 01:30:04', '2018-08-19 10:56:42', 1, 1, 0, 0, 'eketHc`{j@{@mBc@}@i@wAWy@K[mAuD{@kB[w@`CaBx@g@|CyBtA_AxBuAp@g@jA}@lA}@nIgGrFyDnIkFNDNDFF\\p@BJNYfAsBRYl@y@d@a@vFeDjFcDpBoAxAiAhNcN|AyAv@m@t@m@rAu@xAq@|@[tAa@dEm@jAKxAEzA@|CRzBPdCT`ADzAEbAKzBk@jCw@tMqDxBo@xCiAbA]jCq@n@Mt@MVD|AUz@CfA@lAF`D`@`Gz@tALdCJtFI`Q_@lA@jAPr@TjB|@p@ZPNb@RjA`@ZDp@Dx@Ev@Ip@QNKvBgApFwCrH{DbAi@`Bm@rAWt@MjBIdDGlGQ|PiA^@lCUv@Ir@OtBs@fDcA`AQrAMtAEdBDtALtAV~Ah@lAh@|A~@vAdAnDzC`I`HdAbA\\VhAn@`@NzATl@B~@AzF]rB[fBe@dCcA|CwAnEsB~AaA|@w@f@o@dCsDbJcKzDoEdAqAnAmBnDaG`AeBvAyCvAwCrEuIfCaFbBqDJIvAcCzCmGLY|AmD|@mBx@uAZc@nBmCn@gAt@wAlDyHDSjDcHZu@HIr@oBjAyCh@eAn@eAtA_BlC{BfAcAr@{@hAoBVm@h@kAtBmDtD_GxFoItAqBJGhBaCj@y@`AeAdDoCtCcClA_ArA}@nBmAlBcAlCmAhBq@jDcArA]~IoBnBc@`Bg@xDe@z@S~@a@dBcAZMTGRC^BPFd@XZr@TvA|Htp@v@fHd@hD~@zIn@pHb@|FDxBCjAGbAUlBw@xEo@dGWnBI|@YvC?\\iAnLoBvSIXSbBQzAKrAKdCC~LBPIhOKbXOd`@EbLF~CNvBPrATlAh@fBv@vBxCbHtFjMtGdOj@fBPx@Fj@D`@Av@AdBBfBFhALbAVx@JTz@nAvE~LdB`EhD`I^~@d@~Ap@lCd@lCNhAJdA@d@AfBMjC[bDS~DYbFEjGCjAOhB]nCiApFyAdGg@pAk@p@mAhAg@p@g@zAu@rBe@|@m@~@w@v@MPET?Z?zEHnLFrIDn@pA~Ff@`CXdBh@pFLv@n@|CP~@\\jAjAtE\\lA\\bAlCdGd@lA^pALp@Jx@DxBCp@G|@IpAMtAi@~DSbBCnA?pEDZOxLUlRQbE_@zDWhCzC\\t@FtAN?@?D@BBFDBB@@?CbAAtB?`@@z@DfAHxALnAXvAJ^NX^V^FLHBBFQB_@F}F`BYlDk@F@', NULL, '2018-08-19 01:29:18', '2018-08-19 10:56:54'),
(292, 'Txicab299792', 178, 160, 160, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65969700, 7.18807900, 'Im Rosenberg 7, 53179 Bonn, Deutschland,Bonn,Nordrhein-Westfalen', 50.64980423, 7.19790537, '2018-08-19 10:57:25', NULL, '2018-08-19 10:58:26', '2018-08-19 10:58:37', 1, 1, 0, 0, 'iketHk`{j@nAfCp@eArDiDjFmFpCyBtCuC|@q@tAwAv@iAl@u@lAqBpBsC~AiChFsHxA{B`AKFK?YCMRC\\M^]TGJA', NULL, '2018-08-19 10:57:25', '2018-08-20 00:13:45'),
(293, 'Txicab625919', 140, 160, 160, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 3.00000000, '68 Street 30, G-6/2 G 6/2 G-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.71343680, 73.07834230, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72968920, 73.07459930, '2018-08-20 09:36:39', NULL, '2018-08-20 09:36:57', '2018-08-20 09:36:57', 1, 1, 0, 0, 'yrwlEoc`}LyAgDcCbBsCnBa@TuB}EkBqEcByDiCkGC?A?ECGK@Og@kAaEoJYm@gJbGgItF_MrIkBrAuDlBiB~@y@d@_@^cAj@{IhGc@ZnBbF~ApDdD|HFXCJSTkFrDyDgJ', NULL, '2018-08-20 09:36:39', '2018-08-20 09:37:07'),
(294, 'Txicab167159', 178, 160, 160, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 2.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65968990, 7.18801800, 'Mainzer Str. 24, 53179 Bonn, Deutschland', 50.66918870, 7.18154440, '2018-08-20 10:02:56', NULL, '2018-08-20 10:04:06', '2018-08-20 10:04:17', 1, 1, 0, 0, 'kqetH}yzj@{AmDVOd@k@bCgCi@wAWy@K[mAuD{@kB[w@SP[TWXmA|A_AfA]XOB[D[F_@P[VsDjDsD`DoAhAeFtE{@r@g@f@OB_Al@ORQREZ]h@m@jAsElKKj@GdBo@n@i@n@a@r@yBhEw@|AHd@BJLPHBJAbAmAh@qA', NULL, '2018-08-20 10:02:56', '2018-08-20 10:04:35'),
(295, 'Txicab260325', 178, 0, 160, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 2.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65969900, 7.18804420, 'Drachenfelsstraße 13, 53343 Wachtberg, Deutschland,Wachtberg,Nordrhein-Westfalen', 50.64669869, 7.18599636, '2018-08-20 10:18:50', NULL, NULL, NULL, 0, 0, 0, 0, 'kqetH}yzj@{AmDVOd@k@bCgCb@|@z@lBrB`EpAzBn@r@VTNUROz@_@z@SjA_@tA]x@Qt@YVSX[Xh@h@j@`Az@fCpBTJz@|@xClEl@r@dAv@b@VrEhCpDlBvHdEhBdAJ_@DOLORA`LpA\\cGH}@dAgE@YGs@yBuD_@E_Ci@', NULL, '2018-08-20 10:18:50', '2018-08-20 10:19:10'),
(296, 'Txicab575922', 178, 0, 160, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 1.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65969480, 7.18804410, 'Nibelungenstraße 18, 53179 Bonn, Deutschland,Bonn,Nordrhein-Westfalen', 50.65860760, 7.19805155, '2018-08-20 10:19:36', NULL, NULL, NULL, 0, 0, 0, 0, 'kqetH}yzj@{AmDVOd@k@bCgCi@wAWy@K[mAuD{@kB[w@`CaBx@g@|CyBtA_AxBuAp@g@jA}@lA}@gB}JiAeGI@k@Zu@\\A@', NULL, '2018-08-20 10:19:36', '2018-08-20 10:19:58'),
(297, 'Txicab518991', 178, 160, 160, 1, 'CANCELLED', 'USER', 'rrtt', 'CASH', 0, 15.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65970470, 7.18803920, '53340 Meckenheim, Deutschland', 50.62588780, 7.03195070, '2018-08-20 10:21:52', NULL, NULL, NULL, 0, 0, 0, 0, 'kqetH}yzj@{AmDEDYZcBpBs@x@c@r@aAfDI`@YbB}@n@GTCNCjA@zDEnCE`COxDa@pHAxAHRFFK\\Mf@m@vC[nAUpBS|@[|@Yr@Wf@GHZhALn@FHHHP@RE`BqAXOPKVGVBTLj@n@|@nBzB|FV\\THXFZPzE~IPr@RbAFPtAxBpAhBRh@Hn@@vAMjACz@L|@^r@j@`Bp@jBRf@X^h@b@~@j@jDfB~AdAl@h@RTTd@Xp@xCfGf@z@^f@v@n@b@RpBt@h@ZpA`@h@XLBVTr@z@Vh@dCpGrAbC^j@pDvEHT|ApBvBpC`BnBTRPPH@PFd@TfAb@`AVhB\\j@Jh@RzBbAvAt@dAt@dBlApE~C\\TbCpA`Az@X`@dBxCz@hAhCdDb@t@|B`GxCjHjAzCr@jCj@lB\\r@pA|B^\\`@H`@A`@EHb@Px@@Hh@pCJlAVjDAf@e@~ESlASl@U`@eA`BWf@M`@Ex@@v@RjEVjFMbFQxEKlBOzBYjDCnBDfATzAfDnNRpAJ|@FpA@dAGvDDrBJtApBxNJjBC`CaAvQUdFCrAA`IHpNCxGAnACh@CDCFAFUFeALuBRUD{@FcDPwCb@iAVi@Po@ZeBhA{AzAeAxA{@~Aq@dBq@zByC`M_AdCm@pAgBfCkAxBs@jBq@rBa@fAGNJLx@~@~@nAfBzCt@~Ad@pAr@`C|AnGl@zBh@|AdAzCxApDpAfCdBxC|ErHl@z@rFzIvEjHl@rARd@`@tAVtALrAHtB?l@CzBK|CGhGAjD@^Q|IMrKC`AB`DNtBPtA\\lBrF`\\p@|CjBpGPt@DXt@jEf@zFNrCJfDArAAdAAbA_@|O?jCDpCFfBT~C^bDFRv@lH@\\DdCEDGPATFTLLF@`@dBDRp@dHRhCDn@RzA^xB`@hAR`@d@~@z@~Ab@b@~AhB`A~Ar@`BZv@f@dBZzARvARnCTpFXxDPdALbB`A~Op@fKBlCDjCArC?JJ@n@FlABn@DvBBXD@BFFFBFAFGBK?ET?', NULL, '2018-08-20 10:21:52', '2018-08-20 10:43:46'),
(298, 'Txicab988820', 178, 163, 163, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 2.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65966040, 7.18805560, 'Mallwitzstraße 41, 53177 Bonn, Deutschland,Bonn,Nordrhein-Westfalen', 50.67265281, 7.17316970, '2018-08-20 10:44:10', NULL, '2018-08-20 10:45:46', '2018-08-20 10:45:54', 1, 1, 0, 0, 'eketHc`{j@rB`Ep@jA^n@n@r@VTuApBU^oBlDkEdIqAjC{@rAoBjCoE~Em@~@e@z@a@bAOj@_@zAWxA[jAStAAZK`@Mf@Sj@Qf@i@bAk@t@mArAw@l@qFxDUJc@J_@AUIkBeAUKSGi@Ou@Ic@@a@Bw@RoAr@oJjGi@Tw@Rm@FoA@y@Gg@Kc@OIC', NULL, '2018-08-20 10:44:10', '2018-08-20 10:46:09'),
(299, 'Txicab682263', 178, 163, 163, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 2.00000000, 'Pintgasse 2, 53424 Remagen, Deutschland', 50.57945300, 7.22929480, 'Am Mätes-Knippchen, 53424 Remagen, Deutschland,Remagen,Rheinland-Pfalz', 50.57508536, 7.22615205, '2018-08-21 01:52:07', NULL, '2018-08-21 01:52:51', '2018-08-21 01:53:11', 1, 1, 0, 0, 'cyusHq|bk@y@k@]MOGKr@[vDOlB@^Dd@HVx@bAT`@`@n@lA|@FJi@bAoA~Bm@d@g@VGHELE^Dz@L\\^p@jBgE|@mBx@uAbAuAr@aAT`@x@jAd@bBN|@JtALdA@v@Y|@OTu@z@^~CXdBR~@\\|@R[BSNwBLSLQRQjDeBTWFY\\qF?o@CQEWaAsCg@wAESAiAd@NPNn@|@XXF?FG', NULL, '2018-08-21 01:52:07', '2018-08-21 04:59:16'),
(300, 'Txicab893424', 178, 163, 163, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 3.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65953460, 7.18793140, 'Vulkanstraße 83, 53179 Bonn, Deutschland,Bonn,Nordrhein-Westfalen', 50.64912268, 7.19043810, '2018-08-21 10:25:15', NULL, '2018-08-21 10:26:52', '2018-08-21 10:26:57', 1, 1, 0, 0, 'sjetHe_{j@zBjEb@t@d@p@t@t@`@c@PKn@UtA_@~Ac@`AWhA]NIPOVYJV`@h@d@b@xD|CTJ\\^hAxAhCnDv@v@~BrApEfCpDlBfJfFVu@LKFAzKpAJ@XaFBq@L}@l@{BR}@?g@CWAKuAaCc@s@QAeAUeAWaEo@wBm@aFsA}@a@e@SI_@I[Yc@Si@Ec@HsBLkA`@gAb@_AvBaD', NULL, '2018-08-21 10:25:15', '2018-08-21 10:27:15'),
(301, 'Txicab950961', 116, 0, 116, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 8.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00689820, -87.89157340, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-08-24 07:55:06', NULL, NULL, NULL, 0, 0, 0, 0, 'cnk_G|jmwO|E?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOlDCbIAtE?dDB`CDjF?`G?vGIvE?dBMrBa@pAe@rAs@dAw@t@q@n@y@n@}@p@qAlCwFn@mAp@cAzA_Bh@e@dAo@n@WbAYf@KdAKlCYnBMjBIdAABDBBLDXBt@RjAh@`B~@tG~DlDzB`@RPD`@D`CQh@CX?`@F\\NPPx@lAbAtDrEtNfAjDnC~IPr@NdAHv@DfAA`CSrB_@fBUr@e@dA}@pA_HbIw@z@gCxCwF~GQR]f@Wr@Ox@ClAAt\\BhADj@jBrKVnAVl@NRZTf@PvBXL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@F`@VR@VIVUPYl@sAnAeC', NULL, '2018-08-24 07:55:06', '2018-08-24 07:55:22'),
(302, 'Txicab383866', 178, 160, 160, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 3.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65969440, 7.18802660, 'Mehlemer Str., 53424 Remagen, Deutschland,Remagen,Rheinland-Pfalz', 50.64790199, 7.20508832, '2018-08-25 09:13:36', NULL, '2018-08-25 09:14:05', '2018-08-25 09:14:34', 1, 1, 0, 0, 'kqetH}yzj@{AmDVOd@k@bCgCi@wAWy@K[mAuD{@kB[w@`CaBx@g@|CyBtA_AxBuAp@g@jA}@lA}@nIgGrFyDnIkFNDNDFF\\p@BJNYfAsBRYl@y@d@a@vFeDjFcDpBoAxAiAhNcNa@sEUFgAXoBf@mAVQkASs@GEMAiCf@', NULL, '2018-08-25 09:13:36', '2018-08-25 09:15:04'),
(303, 'Txicab195311', 178, 0, 163, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 3.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65968520, 7.18802040, 'Gutenbergallee 24, 53179 Bonn, Deutschland,Bonn,Nordrhein-Westfalen', 50.68019359, 7.17524707, '2018-08-25 09:34:37', NULL, NULL, NULL, 0, 0, 0, 0, 'kqetH}yzj@{AmDVOd@k@bCgCi@wAWy@K[mAuD{@kB[w@SP[TWXmA|A_AfA]XOB[D[F_@P[VsDjDsD`DoAhAeFtE{@r@g@f@OB_Al@ORQREZ]h@m@jAsElKKj@GdBo@n@i@n@a@r@yBhEkG~Lw@rAq@|@y@~@mB`CMe@WcAQoAGSQFo@Za@ZEJiBvAcAx@u@l@eBnAqCbCiDtCeAv@eBhAcIxF]`@Wd@KY_AmEeAgE', NULL, '2018-08-25 09:34:19', '2018-08-25 09:34:59'),
(304, 'Txicab151662', 179, 0, 163, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 3.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65969040, 7.18802670, 'Rolandstraße 50, 53179 Bonn, Deutschland,Bonn,Nordrhein-Westfalen', 50.68074850, 7.17484877, '2018-08-25 09:37:42', NULL, NULL, NULL, 0, 0, 0, 0, 'kqetH}yzj@{AmDVOd@k@bCgCi@wAWy@K[mAuD{@kB[w@SP[TWXmA|A_AfA]XOB[D[F_@P[VsDjDsD`DoAhAeFtE{@r@g@f@OB_Al@ORQREZ]h@m@jAsElKKj@GdBo@n@i@n@a@r@yBhEkG~Lw@rAq@|@y@~@mB`CMe@WcAQoAGSQFo@Za@ZEJiBvAcAx@u@l@eBnAqCbCiDtCeAv@eBhAcIxF]`@Wd@KY_AmEmA}EOw@wApA', NULL, '2018-08-25 09:37:21', '2018-08-25 09:38:11'),
(305, 'Txicab279104', 179, 0, 163, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 1.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65968810, 7.18802240, 'Schloßallee 2, 53179 Bonn, Deutschland,Bonn,Nordrhein-Westfalen', 50.66273844, 7.19090112, '2018-08-25 09:39:42', NULL, NULL, NULL, 0, 0, 0, 0, 'kqetH}yzj@{AmDVOd@k@bCgCi@wAWy@K[mAuD{@kB[w@SP[TWXmA|A_AfA]XOB[D[F_@PQm@', NULL, '2018-08-25 09:39:21', '2018-08-25 09:40:04'),
(306, 'Txicab494249', 179, 164, 164, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 4.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65968440, 7.18802190, 'Moltkestraße 43, 53173 Bonn, Deutschland', 50.68364480, 7.15936300, '2018-08-25 09:40:43', NULL, '2018-08-25 09:41:06', '2018-08-25 09:42:13', 1, 1, 0, 0, 'kqetH}yzj@{AmDEDYZcBpBs@x@c@r@aAfDI`@YbB}@n@GTCNCjA@zDEnCE`COxDa@pHAxAHRFFK\\Mf@m@vC[nAUpBS|@[|@Yr@g@z@{@fAoAlAqEbD{A~@SDW@YGa@SgBaAa@Mi@M}@Ga@Bc@Fu@TkIpFoBjAy@X_@H}@HoA?{@M_AY_@O][uA[w@YsAe@YIOB_@LUNo@z@cAnB]z@W|@e@hBOn@Yp@sCbGwE|JyArCiB`EmBpEIFcFvKs@zAiB`E_@nAc@hBy@zCQt@kCmBMOEIAESNmA~Bc@rA_@|@', NULL, '2018-08-25 09:40:43', '2018-08-25 09:43:11'),
(307, 'Txicab825351', 179, 0, 163, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 26.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65968130, 7.18801350, '53359 Rheinbach, Deutschland', 50.62530700, 6.94770050, '2018-08-26 10:04:08', NULL, NULL, NULL, 0, 0, 0, 0, 'kqetH}yzj@{AmDEDYZcBpBwAlBaAfDI`@YbB}@n@GTCNCjACjIE`COxDa@pHAxAHRFFK\\Mf@iAfFUpBS|@[|@Yr@Wf@GHZhALn@FHZJRElCmBVGl@Pj@n@|@nBzB|FV\\n@PZPzE~Il@hCfDbFRh@Hn@@vAMjACz@L|@jAtCp@jBl@fAh@b@~@j@jDfB~AdA`A~@hE~IfAbBv@n@b@RpBt@h@ZpA`@h@Xd@Xr@z@|CzHrAbCpEbGHT|ApBvBpC`BnBp@f@~B`AjDt@tA^zBbA|CjBtIbGbCpA`Az@~BzDdEnFb@t@|B`GdFfM~AxF\\r@pA|B^\\`@H`@A`@EHb@Px@@Hh@pCJlAVjDAf@e@~ESlAi@nA}AhCM`@Ex@TbGVjFMbFQxE[hFYjDCnBDfATzAfDnNRpARnCE|FDrBJtApBxNJjBC`CaAvQYxHFrXCxGAnAGn@CFWN{D`@qALcDPaFz@yAl@eBhA{AzAeAxA{@~Aq@dBq@zByC`M_AdCm@pAgBfCkAxBs@jBq@rBa@fAGNJLx@~@~@nAfBzCzApDpCpKl@zBh@|AdAzCxApDpAfCbIlMl@z@jMfSl@rAt@zBVtALrAHtBChDSfLAjDO|JQtMB`D`@jEpGn_@p@|CjBpGlAzGf@zFNrCHzFChCQlHOj@IPW^eCOg@UQYS{@@m@Ps@j@u@\\i@z@k@dBaApFiBrBc@vBUvBG~CFpBRjCh@fBh@fBr@pBdAlBpAbBxAxCdDhDfFxCbGv@dBrPfe@zDxInBhDxBbDjEjFhCdCvBbBbC~AtE~BtDpA~EnAxDn@xGx@fLnAvDj@zCn@fD`AzChApCtA|E|C~FvE`NjM`Az@Th@LVbBpBhEbFlAfAr@h@lAx@LVHJJH`ApA`@fAdAfF`ArFB|@Gt@Ed@y@`DkAvFC`@sChKwCxKaGxTyJr^qEhO_DpJyEnMqAfDwFpMeE~IkM|WaGxLcKvS}IlQiJpPuFrI_JrLeCtCa@d@]JEBa@\\_A`@m@H]CiAg@o@]c@IY?]L_@`@e@`AiB|FEPDDnAbApEzDfE|DrCnCtAzA`H`IJZh@v@ATG\\e@`AsHrNaCnE_BdCoAxAcBvAuAj@W?EEKCULEf@NZL?PlAO|AUdAeAtBgG~Ks@bA[l@GBI?MNCR?Fa@`AeC`F{ApCdDfGn@jAtD`Ed@j@e@rAw@`CBPDd@H|@R|DTvES`FC~BSxG[JIB_Et@cFjAe@@}A]q@U]K?f@Aj@@v@NxCBvDKrAAH', NULL, '2018-08-26 10:04:08', '2018-08-26 10:04:31'),
(308, 'Txicab870608', 179, 164, 164, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 26.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65981820, 7.18795990, '53359 Rheinbach, Deutschland', 50.62530700, 6.94770050, '2018-08-26 10:05:30', NULL, '2018-08-26 10:08:07', '2018-08-26 10:08:20', 1, 1, 0, 0, 'kqetH}yzj@{AmDEDYZcBpBwAlBaAfDI`@YbB}@n@GTCNCjACjIE`COxDa@pHAxAHRFFK\\Mf@iAfFUpBS|@[|@Yr@Wf@GHZhALn@FHZJRElCmBVGl@Pj@n@|@nBzB|FV\\n@PZPzE~Il@hCfDbFRh@Hn@@vAMjACz@L|@jAtCp@jBl@fAh@b@~@j@jDfB~AdA`A~@hE~IfAbBv@n@b@RpBt@h@ZpA`@h@Xd@Xr@z@|CzHrAbCpEbGHT|ApBvBpC`BnBp@f@~B`AjDt@tA^zBbA|CjBtIbGbCpA`Az@~BzDdEnFb@t@|B`GdFfM~AxF\\r@pA|B^\\`@H`@A`@EHb@Px@@Hh@pCJlAVjDAf@e@~ESlAi@nA}AhCM`@Ex@TbGVjFMbFQxE[hFYjDCnBDfATzAfDnNRpARnCE|FDrBJtApBxNJjBC`CaAvQYxHFrXCxGAnAGn@CFWN{D`@qALcDPaFz@yAl@eBhA{AzAeAxA{@~Aq@dBq@zByC`M_AdCm@pAgBfCkAxBs@jBq@rBa@fAGNJLx@~@~@nAfBzCzApDpCpKl@zBh@|AdAzCxApDpAfCbIlMl@z@jMfSl@rAt@zBVtALrAHtBChDSfLAjDO|JQtMB`D`@jEpGn_@p@|CjBpGlAzGf@zFNrCHzFChCQlHOj@IPW^eCOg@UQYS{@@m@Ps@j@u@\\i@z@k@dBaApFiBrBc@vBUvBG~CFpBRjCh@fBh@fBr@pBdAlBpAbBxAxCdDhDfFxCbGv@dBrPfe@zDxInBhDxBbDjEjFhCdCvBbBbC~AtE~BtDpA~EnAxDn@xGx@fLnAvDj@zCn@fD`AzChApCtA|E|C~FvE`NjM`Az@Th@LVbBpBhEbFlAfAr@h@lAx@LVHJJH`ApA`@fAdAfF`ArFB|@Gt@Ed@y@`DkAvFC`@sChKwCxKaGxTyJr^qEhO_DpJyEnMqAfDwFpMeE~IkM|WaGxLcKvS}IlQiJpPuFrI_JrLeCtCa@d@]JEBa@\\_A`@m@H]CiAg@o@]c@IY?]L_@`@e@`AiB|FEPDDnAbApEzDfE|DrCnCtAzA`H`IJZh@v@ATG\\e@`AsHrNaCnE_BdCoAxAcBvAuAj@W?EEKCULEf@NZL?PlAO|AUdAeAtBgG~Ks@bA[l@GBI?MNCR?Fa@`AeC`F{ApCdDfGn@jAtD`Ed@j@e@rAw@`CBPDd@H|@R|DTvES`FC~BSxG[JIB_Et@cFjAe@@}A]q@U]K?f@Aj@@v@NxCBvDKrAAH', NULL, '2018-08-26 10:05:30', '2018-08-26 10:08:48'),
(309, 'Txicab766193', 179, 164, 164, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 12.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65978110, 7.18792670, '53424 Remagen, Deutschland', 50.57328040, 7.23855330, '2018-08-26 10:09:45', NULL, '2018-08-26 10:10:42', '2018-08-26 10:10:50', 1, 1, 0, 0, 'kqetH}yzj@{AmDVOd@k@bCgCi@wAWy@K[mAuD{@kB[w@`CaBx@g@|CyBtA_AxBuAp@g@jA}@lA}@nIgGrFyDnIkFNDNDFF\\p@BJNYfAsBRYl@y@d@a@vFeDjFcDpBoAxAiAhNcN|AyAv@m@t@m@rAu@xAq@|@[tAa@dEm@jAKxAEzA@|CRzBPdCT`ADzAEbAKzBk@jCw@tMqDxBo@xCiAbA]jCq@n@Mt@MVD|AUz@CfA@lAF`D`@`Gz@tALdCJtFI`Q_@lA@jAPr@TjB|@p@ZPNb@RjA`@ZDp@Dx@Ev@Ip@QNKvBgApFwCrH{DbAi@`Bm@rAWt@MjBIdDGlGQ|PiA^@lCUv@Ir@OtBs@fDcA`AQrAMtAEdBDtALtAV~Ah@lAh@|A~@vAdAnDzC`I`HdAbA\\VhAn@`@NzATl@B~@AzF]rB[fBe@dCcA|CwAnEsB~AaA|@w@f@o@dCsDbJcKzDoEdAqAnAmBnDaG`AeBvAyCvAwCrEuIfCaFbBqDJIvAcCzCmGLY|AmD|@mBx@uAZc@nBmCn@gAt@wAlDyHDSjDcHZu@HIr@oBjAyCh@eAn@eAtA_BNMEOSc@OU[Qa@QwAaA_GwDlCiEpF_KbApApB_DPWX~@', NULL, '2018-08-26 10:09:45', '2018-08-26 10:11:04'),
(310, 'Txicab381722', 179, 164, 163, 1, 'CANCELLED', 'USER', 'hh', 'CASH', 0, 12.00000000, 'Meckenheimer Str. 34D, 53179 Bonn, Deutschland', 50.65968550, 7.18803260, 'Kasernenstraße 26, 53111 Bonn, Deutschland,Bonn,Nordrhein-Westfalen', 50.73698371, 7.09877394, '2018-08-27 00:12:49', NULL, NULL, NULL, 0, 0, 0, 0, 'kqetH}yzj@{AmDEDYZcBpBs@x@c@r@aAfDI`@YbB}@n@GTCNCjA@zDEnCE`COxDa@pHAxAHRFFK\\Mf@m@vC[nAUpBS|@[|@Yr@g@z@{@fAoAlAqEbD{A~@SDW@YGa@SgBaAa@Mi@M}@Ga@Bc@Fu@TkIpFoBjAy@X_@H}@HoA?{@M_AY_@O][uA[w@YsAe@YIOB_@LUNo@z@cAnB]z@W|@e@hBOn@Yp@sCbGwE|JyArCiB`EmBpEIFcFvKs@zAk@nAWl@]p@QEa@BOBo@RQP{@VQHcA^iA`@_A`@y@l@w@~@c@t@uBpCc@|@s@jAMTeAvB_ArCcAbD_@rCi@fDs@~Ce@rAe@~@o@hAy@~@iDrCaA~@{@nAiA~BcBxD]Xm@\\_ATk@XOHi@t@y@tAeChEs@nAaAlBqEzH}@tA_ChCsL|L}E~EgQ|PkMpM}EdFmH~H{AbBuAvBsAfB{AzAcGrFuIbIeFbF}HjIWRC?KCKDIDO\\CPa@p@yAjBwBjCiBhCqChDiBdC_EnFuEjG[r@SfAgApLq@tHk@rFyBdS]jEm@vFQ`BQbEQ~EAFG@sBToC`@KP_ALe@NqAf@YP}BrAgAz@iBbBaC|BkEpEcDjDgCjC[^g@t@sAxBSVOJGByAgBwDmFKt@Gz@IZWHMAIIIW?[@_AE[Q[OOU?UHKJIPIj@Eb@{@rC{@jDcAvF_A`FUt@]RWJS?_AGu@Ik@Mw@IaHs@KCCGDk@Ls@h@eC@WEaAE{AISKGMC}BEGAKMAYFaACWaAE', NULL, '2018-08-27 00:12:28', '2018-08-27 00:14:14'),
(311, 'Txicab258421', 179, 164, 164, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 2.00000000, 'Meckenheimer Str. 34C, 53179 Bonn, Deutschland', 50.65972800, 7.18814880, 'Rheinufer, 53179 Bonn, Deutschland,Bonn,Nordrhein-Westfalen', 50.67069518, 7.18843415, '2018-08-27 00:16:06', NULL, '2018-08-27 00:16:28', '2018-08-27 00:16:31', 1, 1, 0, 0, 'qketHw`{j@o@yAc@}@i@wAWy@K[mAuD{@kB[w@SP[TWXmA|A_AfA]XOB[D[F_@P[VsDjDsD`DoAhAeFtE{@r@g@f@OB_Al@ORQRU[OSQSm@_@a@M_@C_@BYVe@h@m@^a@Pa@Hy@DmAI_@CUHCA?AAGGGI?C@A@[aBsAoG', NULL, '2018-08-27 00:16:06', '2018-08-27 00:17:10'),
(312, 'Txicab289286', 179, 164, 164, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, 'Akşemsettin Mahallesi, Sarıgüzel Cd. No:93, 34080 Fatih/İstanbul, Türkei', 41.01972070, 28.94502740, 'Yavuz Sultan Selim Mahallesi, Mihri Kelam Sk. No:6, 34083 Fatih/İstanbul, Türkei,null,İstanbul', 41.02308175, 28.95219024, '2018-08-28 01:42:50', NULL, '2018-08-28 01:43:31', '2018-08-28 01:43:35', 1, 1, 0, 0, 'stjyFajtoDbAiAhBcBHKmAgCsAuCoAlAcChCmBjBsBcEkBaEEq@ScGB{C?e@LqAeBs@j@sCsAm@', NULL, '2018-08-28 01:42:50', '2018-08-28 01:44:23'),
(313, 'Txicab326434', 162, 160, 160, 1, 'CANCELLED', 'PROVIDER', '', 'CASH', 0, 11.00000000, 'Service Rd N, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.65681010, 73.03517780, 'F-7, Islamabad, Islamabad Capital Territory, Pakistan', 33.72203840, 73.05703720, '2018-08-29 18:37:02', NULL, NULL, NULL, 0, 0, 0, 0, 'cpllE{sw|LJM^EyCuHyD_JMa@Ke@Aa@_@}@mEkKmRed@{Ssf@qHaQ_@u@c@g@]i@u@{AcAeCO?yACSE{B|A_`@xWkGfEqMbJ[{@Q[ECM?KDw@b@U@ICi@b@wDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@In@c@|DSjBWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CcA{Ce@sACc@sBiFaGiNgH}PsLoYm@m@[Y{@g@k@M}@CkD?uAKeCo@_Dq@a@E[?s@HYHwBbAo@b@oCnBaF~CsH`FqKjHgEvCkBdAkWhQiD|BsPhLoBtAa@`@kD|BsAv@yEpD{FzDOMEKAUdAs@dJaGTm@Bi@c@iAwAz@_EtCYP}GoP}AuDqFrDmAt@[u@aNy[EK', NULL, '2018-08-29 18:36:05', '2018-08-29 18:38:30'),
(314, 'Txicab722082', 179, 164, 164, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 1.00000000, 'Molla Gürani Mahallesi, Adnan Menderes Blv. No:67, 34093 Fatih/İstanbul, Türkei', 41.01558380, 28.94184580, 'Haseki Sultan Mahallesi, Münifpaşa Sokağı No:32, 34096 Fatih/İstanbul, Türkei,null,İstanbul', 41.01037927, 28.93956810, '2018-08-30 01:48:09', NULL, NULL, NULL, 0, 0, 0, 0, 'uziyFousoD?MxAiCjAkBh@`@dBfApA|@lG|D~BdB{AhEsA`DKZ@JFRRRLHJOh@aAvAn@`C`AlBp@@Q@yE@m@', NULL, '2018-08-30 01:48:09', '2018-09-05 07:40:00'),
(315, 'Txicab832982', 181, 0, 0, 1, 'SEARCHING', 'NONE', NULL, 'CASH', 0, 31.11900000, 'Terminal 5, Longford, Hounslow, UK', 51.47146600, -0.48798060, 'London Hilton on Park Lane, Park Lane, London, UK', 51.50565360, -0.15042000, '2018-09-01 02:40:31', '2018-09-02 03:00:00', NULL, NULL, 0, 0, 0, 0, 'm_dyHzr~AvE?TCNFVLv@FLFT\\Hj@A\\Kf@SXYFiBDiAVgAd@SP_@Lq@XcAp@WTYJcAfAsBhCw@nAg@?SCi@c@[c@c@[WEUBSLQTK\\EXBbDPp@PFVf@F^@h@Ij@GP@p@B\\lBvMXxDLzD?vE[zEq@~GOvCEjBAxCFpBXrBLp@Vr@Zn@`@d@p@`@XBZEZOPSR_@Jc@FcAAk@Iq@M[]g@k@i@o@a@y@c@c@I}Bi@aBe@iDu@a@a@{JoAwCc@iCk@eCs@eBo@aCcAiAm@kBiAuBwA}BiBmBeBgEkE{EcFsBqBkC}B_EsC}BsA[Ck@SaBm@_B]u@Ee@Gq@?yARcBh@cCp@y@Hy@?{@Kq@OsAo@a@WuDuDqDkEk@mA]uAQqBBmBRaBZgAf@qA`AyBz@kBx@sCf@cDHoAJeD^sQJuI@{HFo@GaEE}COcGWcHwAyXu@oPg@cOo@sRU_OCuFDgFNkUJiJZcLj@yOd@sKbCsf@fBqd@~DyqAlC}}@RkE`@eF^mEn@kFlBiMdC_NlEkVhCwOr@{FdAuKb@iIRyFD{C?_LEsEKqDSyD{@iLaBoQsBkZg@cJy@_McAgKo@yEwA_IcCcK_EyMiEiO}A{Hm@mDu@gFy@sH]oE_@cHw@gWs@gXe@cROeGEmGFsELcDNaC\\wDh@aEn@qDbB}GdGsSbAyC|CoJbFwPnEgO~@yDp@{Ed@iGLyFC_EKoCc@{FYsBi@_DsDaOm@qC_@{BYeCOcCIsBIcGCaRBsJDyYG}BG{@YwBmAcF{BqIe@sBUqBA}BHoAh@cFXyB^wBx@_DjFkO~C_JbBmGz@iDl@aC^oBxAiLZsDFoBTmHf@iFj@wEJuDBuF@kn@DkBP{ElA_ORaEG}@Os@UoAI_BKc@o@eBcDeJuDcMk@uBcBoFgAkEaA}FsA{IUmCKuCC{CG_ID_DF{FX{Gn@wNBqAIwEU_JUiLM}VC}L@yAJsBV_Cn@wENwABmBEuFDyGL_EZeGFuABiDImEUyCy@kIQiB{@qGYsD]uF[iBk@{Bs@mA}AiBg@mASs@_AuDc@_B{@gDeDgNGu@KkGIuGFuGPaRO{Dq@wSc@oOa@wJ}PzB{Q~Bg@HAQMwCEwD@oHKcFIaBKeDwADAoCA}DIu_@EsJe@cR_@_M_@yMo@kOe@gKMiAUq@Yg@k@c@c@GSM]e@Ug@KB{A_@oAKkAEe@DaA`@i@\\WOUMJO\\a@d@k@h@w@v@w@ZSp@OTCG}@AAAACCKCGAQHe@`@GCQi@', NULL, '2018-09-01 02:40:31', '2018-09-01 02:40:31'),
(316, 'Txicab262047', 182, 0, 146, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 2.00000000, '49 Gali 17, G-6/2 G 6/2 G-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.71247090, 73.07871120, 'F-6/1 F 6/1 F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72713680, 73.07831880, '2018-09-02 02:23:22', NULL, NULL, NULL, 0, 0, 0, 0, 'imwlEme`}L[s@RQr@e@}G_PkGaO{IbG}CrBOP?BEDMBIIAO@GgCcG{BcFgJbGyGrEwEbDcIvF}@l@kAl@sE~By@d@_@^]PIpAl@vA', NULL, '2018-09-02 02:23:22', '2018-09-02 02:23:27'),
(317, 'Txicab371603', 152, 0, 160, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 11.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65646150, 73.03639880, 'F-7, Islamabad, Islamabad Capital Territory, Pakistan', 33.72203840, 73.05703720, '2018-09-04 20:16:51', NULL, NULL, NULL, 0, 0, 0, 0, 'kqllEm{w|L{GaP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AcAeCO?yACSE_W`Qyb@`Z[{@Q[ECM?cAh@U@ICi@b@wDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYiAgA{@g@k@M}@CkD?uAKeCo@_Dq@a@E[?s@HYHwBbAo@b@oCnBqGbEuShNgEvCkBdAkWhQkNnJqFvDoBtAa@`@kD|BsAv@yEpD{FzDKIGKACAUdAs@dJaGLYJi@?Sc@iAwAz@_EtCYP}GoP}AuDqFrDmAt@}GcPeFwL', NULL, '2018-09-04 20:16:51', '2018-09-04 20:16:54'),
(318, 'Txicab600557', 152, 0, 160, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 11.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65657960, 73.03635470, 'F-7, Islamabad, Islamabad Capital Territory, Pakistan', 33.72203840, 73.05703720, '2018-09-04 20:17:07', NULL, NULL, NULL, 0, 0, 0, 0, 'mqllEs{w|LwNc]eQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AcAeCO?yACSE_W`Qyb@`Z[{@Q[ECM?cAh@U@ICi@b@wDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYiAgA{@g@k@M}@CkD?uAKeCo@_Dq@a@E[?s@HYHwBbAo@b@oCnBqGbEuShNgEvCkBdAkWhQkNnJqFvDoBtAa@`@kD|BsAv@yEpD{FzDKIGKACAUdAs@dJaGLYJi@?Sc@iAwAz@_EtCYP}GoP}AuDqFrDmAt@}GcPeFwL', NULL, '2018-09-04 20:17:07', '2018-09-04 20:17:10'),
(319, 'Txicab365374', 152, 0, 129, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 11.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65653420, 73.03621730, 'F-7, Islamabad, Islamabad Capital Territory, Pakistan', 33.72203840, 73.05703720, '2018-09-04 20:17:33', NULL, NULL, NULL, 0, 0, 0, 0, 'aqllE{zw|LeHsP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AcAeCO?yACSE_W`Qyb@`Z[{@Q[ECM?cAh@U@ICi@b@wDrCETQ\\u@n@eAz@eB`BMLc@N]Va@l@_@bAUv@[jCe@lEWn@W\\c@TYHc@@e@GYQY[{AmCyC}Fg@oA[gAm@{CiBoFCc@sBiFaGiNgH}PsLoYiAgA{@g@k@M}@CkD?uAKeCo@_Dq@a@E[?s@HYHwBbAo@b@oCnBqGbEuShNgEvCkBdAkWhQkNnJqFvDoBtAa@`@kD|BsAv@yEpD{FzDKIGKACAUdAs@dJaGLYJi@?Sc@iAwAz@_EtCYP}GoP}AuDqFrDmAt@}GcPeFwL', NULL, '2018-09-04 20:17:33', '2018-09-04 20:17:36'),
(320, 'Txicab111805', 152, 0, 129, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 10.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65653600, 73.03622940, 'F-9, Islamabad, Islamabad Capital Territory, Pakistan', 33.70172350, 73.02281730, '2018-09-04 20:17:46', NULL, NULL, NULL, 0, 0, 0, 0, 'aqllE{zw|LeHsP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AcAeCO?yACSE_W`Qyb@`Z[{@Q[ECM?cAh@U@ICi@b@wDrCiL~HkBpAgD~BoGlEaK`Hc@V}AnAcI|EwGhEyIjGwFvDkFlDiCfBiMpImA`AkBlAAFINYZINATDTT`AdCfGrDnIbDtH|EhL~GjPvOr^dE~Jh@hAVZRPHCT?T@RFJHJT@TC^Yj@OPSJWHWBYCOKKOISAi@Ja@HMI{@Oc@q@{AuQ{b@oBkEeG|D}MnJa@d@eA~Ac@dAAR', NULL, '2018-09-04 20:17:46', '2018-09-04 20:17:49'),
(321, 'Txicab148899', 152, 0, 129, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 8.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65653770, 73.03624100, 'F-8, Islamabad, Islamabad Capital Territory, Pakistan', 33.70870090, 73.03967790, '2018-09-04 20:17:58', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE}zw|LcHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AcAeCO?yACSE_W`Qyb@`Z[{@Q[ECM?cAh@U@ICi@b@wDrCiL~HkBpAgD~BoGlEaK`Hc@V}AnAcI|EwGhEyIjGwFvDkFlDiCfBiMpImA`AkBlAeAj@e@^yAdAmAt@qAz@WRM[e@kAkBiEmFiMqDgIyDeJoDbCwF|DuBvAaFhDcDxBMWFEhCgBTO', NULL, '2018-09-04 20:17:58', '2018-09-04 20:18:03'),
(322, 'Txicab153675', 152, 0, 129, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 9.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65653910, 73.03625060, 'F-11 Markaz F-11, Islamabad, Islamabad Capital Territory, Pakistan', 33.68433120, 72.98849950, '2018-09-04 20:18:14', NULL, NULL, NULL, 0, 0, 0, 0, 'cqllE_{w|LpMvZbOx]fDfI`DpHzA|DhBbEd@dAxHjQe@l@]r@URwB|AoOlKc@X[`@uIlOQRy@j@eHzEyc@nZsIhGcA_CaU}h@OGe@WWG[AO@SP[^a@\\mFtD{KrHeFbDqEbDs@l@?FAJGLUHOCSFONq@r@}AxAo@^qBt@gDvBgExCkAt@kFpDoGnEiAz@s@h@yAx@sAx@oDbCmT|NcDvBg@^B`@?TMhAe@`CQrA?b@BVb@hAjDdIpBzEl@pAf@v@r@v@h@b@Ml@q@tHl@LpAVDBDNGp@GNGb@Ap@A`ASE', NULL, '2018-09-04 20:18:14', '2018-09-04 20:18:21'),
(323, 'Txicab514884', 179, 164, 164, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 4.00000000, 'Erbil, Irak', 36.19448600, 43.96449140, 'Unnamed Road, Erbil, Irak,Erbil,Erbil Governorate', 36.19986688, 43.96144431, '2018-09-05 07:42:13', NULL, '2018-09-05 07:43:04', '2018-09-05 07:43:30', 1, 1, 0, 0, 'mg|{Es{ikGXUP[L]Dc@Ag@Gc@O_@UW[S[Ge@@a@P[ZSd@In@Bp@Lf@T^JJFBiArG_IyAyJiBwEiAoCkAyHcD{CuAoAo@eCaBYOMf@XPwExRwC|LREVCb@FzAp@~FbCbO~FtSlInLxEFU?Cg@SiOgGiKeEf@uBnBkI', NULL, '2018-09-05 07:42:13', '2018-09-06 02:21:27'),
(324, 'Txicab996082', 179, 164, 164, 1, 'CANCELLED', 'PROVIDER', 'hh', 'CASH', 0, 3.00000000, 'Barzani Namir, Erbil, Irak', 36.18970560, 43.99901500, 'Saidawa, Erbil, Irak,Erbil,Erbil Governorate', 36.18470189, 44.01931297, '2018-09-06 05:14:40', NULL, NULL, NULL, 0, 0, 0, 0, 'uh{{E}ppkGh@UhCgBv@y@d@q@`@o@^y@JULk@\\sB\\aBJSJMHGB?FAHK@InAr@THV@X?ZU|@uD\\{@b@k@dBkAjC{B~BsBzE{DrDwClBeBj@a@~A}@p@[B@F@FALEHMDYIYCCG_AA{EA_C@gDIoBAk@}@wC_CcEuAwBgCqDiAcAwAqAu@o@u@e@{ByAsCgBuA{@rAyFv@cDvB|@AHs@pA', NULL, '2018-09-06 05:14:40', '2018-09-06 05:21:02'),
(325, 'Txicab932443', 116, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 6.00000000, '2838 Scott St, Des Plaines, IL 60018, USA ,United States ', 42.00236599, -87.87492128, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-09-08 02:25:39', NULL, '2018-09-08 02:26:43', '2018-09-08 02:27:12', 1, 1, 0, 0, 'yqj_Gh`jwO{@?JjHRbUNhPAjABlH?V`B?fC?lA?dDB`CD|C?pE?|B?xBC|CE|B?xA?r@ExB[vAa@d@QrAs@dAw@t@q@n@y@n@}@`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKDF\\Hd@JZHl@V~BpAtG~DlDzBr@X`@DXAbCS^?P@h@L\\Xx@lAbAtDrEtNlEpNPr@RbAHt@Fz@BfA?v@EhAUnBc@fBWp@g@bA_@f@oHvIw@z@gCxCwF~Ga@d@Yl@Ux@IfA?nBA`[HzAzBhMPp@\\h@ZTRJzBX\\FXKj@?l@DhDf@`@Jn@Jf@P`@FZRNDTCTMVYP[b@eAnAeC', NULL, '2018-09-08 02:25:39', '2018-09-08 02:27:48'),
(326, 'Txicab933267', 116, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 6.00000000, '1955 Pratt St, Des Plaines, IL 60018, USA ,United States ', 42.00250264, -87.87506876, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-09-08 02:28:20', NULL, '2018-09-08 02:28:42', '2018-09-08 02:28:45', 1, 1, 0, 0, 'ssj_GfbjwOZl[HfKD~GBvHvG?vC?xBHfG?bF@tBErCApDCbA?fACp@G|@Mr@MvAe@p@[`BcAh@e@r@u@l@u@t@mAvCkGxAkCn@}@`@a@x@u@h@a@r@a@^Ox@Wf@Mr@KtCYz@IzCOxAEN?BD@@@@HBZDl@NdAb@|DzBjHrEfBdAd@LX@z@G`BM\\?\\D^LLJbAvAbAtDl@bBhEfNlDfLRr@PdAHv@Dx@@fAAdAEz@WlBe@fBe@fA[j@]f@QRoItJiKbM]d@Yp@Qx@GhA?|I?fQ?zALvAxBxLRn@^f@ZRTFxBXRDHELERAd@@lEl@pAVf@PZDHBXPRFTITOT[P[nAuC^m@', NULL, '2018-09-08 02:28:20', '2018-09-08 02:28:56'),
(327, 'Txicab623970', 179, 164, 164, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 7.00000000, '‌Qalat, Erbil, Irak', 36.19140280, 44.00491920, 'Ankawa, Erbil, Irak', 36.23561260, 43.98912900, '2018-09-08 23:45:43', NULL, '2018-09-08 23:46:24', '2018-09-08 23:46:43', 1, 1, 0, 0, 'us{{EguqkG~@~AOj@MEq@Uk@Qg@OCTyC~MaCrK_@zAYfABJMFJBiBjIM?aFH_DDkFhFGT?DeBaBsCkCwCeFo@mAu@yAoA{CSg@{@sDU_AUi@K[KH[X{LdE_IjC{KlDyBd@mHtDsOvGcMlFmGhBaEbBg@F}@ToBRmC`@gBPYFy@FwKzAzCxMkBx@qStPoP`NyA|@oQxJEAeAEaAU{@i@i@_AgCwEw@q@e@]c@yAUmAa@yBo@HoJnAGkAWsEM}G?I', NULL, '2018-09-08 23:45:43', '2018-09-08 23:47:44'),
(328, 'Txicab566932', 113, 0, 114, 2, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Taimur Rd, Gawal Mandi, Rawalpindi, Punjab 46000, Pakistan', 33.60274220, 73.05973190, 'Korang Town Rawalpindi, Islamabad, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, '2018-09-09 22:52:52', NULL, NULL, NULL, 0, 0, 0, 0, 'aablEan||LBv@DXFLLJF@ZDBkCD_DBa@Fo@n@iDh@wCBE\\M~@Iz@Mb@OXQRUN]Na@Fo@mEkF{AiAkAq@k@Sk@KiAOqAGqACeA?_@B]AsAFgA?kAFcA@_@BQ@A_@NAr@EtDUfAKpBGxABTBHCPAdBJn@@LAFI@{AIuCKeCCkB@{EAeDG[KYa@{@m@mASo@AACCAM@EA_@A{AEe@_@eBa@{B]oDs@kF?AA?AE?EAa@R{Bd@aECWiBuCs@yAJK~BuBxCqC|@w@z@h@`@VRF|CXdFl@xDR@KBEb@CJQNYYgBUoCEy@GUKOSSBi@?Wk@cPGsDFW[_ISmFc@yIm@eKWaC[}@u@wAuNwTaGmJ{@sAiD}FgPiWaDcFO_@Mk@GeA@e@J_AjAcEvCwKj@uB~@aDvAkFpA_F~@_DzBoGvEeMnCiIv@uBlGmNpAaDvAwCVo@Ry@ZiCFcCCaAa@_DWiAg@sAq@mA]m@OQ[Yu@i@{EcCy@e@oIoEe@Wy@i@i@A{@Bs@XqAt@w@n@QZGd@@\\Nf@PR\\Nd@B~@SvEyC\\CvAkApGkEfRaMpDaCjBsAtRqMjG_EjJuGnAu@`EsCbD{BdDwBbRmMxE}CJVLj@Hl@A~@FTt@tANTjA~@LLP\\p@|BH`@Cr@@Pr@pBgC`CSPOXCX@XDRtAtCdAvBRKR?FBRPdBjCbBnCtEfIZNtCYhBUVGjBu@bBg@`EsAq@yCOy@SiABCvDmC', NULL, '2018-09-09 22:52:52', '2018-09-09 22:53:12'),
(329, 'Txicab680561', 113, 0, 146, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Taimur Rd, Gawal Mandi, Rawalpindi, Punjab 46000, Pakistan', 33.60242830, 73.05948270, 'Korang Town Rawalpindi, Islamabad, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, '2018-09-09 23:04:46', NULL, NULL, NULL, 0, 0, 0, 0, '{~alEyl||LFaFJgALs@hAqGDIPI\\GvAM`@I^SXULSXu@Fo@aE_Fu@q@sA{@_Ac@m@Ok@K}AM_DIe@@u@@sAFgA?gBFyAFA_@F?j@EbEWnCQp@Ax@@n@DPEvBJp@?HEBKAuCWeH@qEA{DGm@Yu@w@}ASe@GYCAACACAG@KA_BEq@Ms@m@yCc@}Dk@uEIi@AAAA?E?A?ACUJmAn@uFAWGQoAiBgAyBb@a@~HiHfBdAlBRhGr@lDR`@B?G@E@ADA^CFIHQHOCQc@}CIkBGa@IQMMKM?_@BS?k@o@{PCgB?UFWo@yOy@sPW_EO}AMy@_@w@k@gAoLuQgBoCSYcGoJoA}BoCqEmMgSsAsBwAaCe@w@K[Mq@Ce@?_@Ds@VmAlB{GhCoJjBuGhDkMx@iCtE_MpEuMz@gC~FuMpDoIv@cBRy@PkANuC@kAIcAQyAScAc@{Aa@{@s@iAO]WWeAw@wFuCmHyD_B}@_Am@gAC]D[HiBdAaA|@M`@A`@F`@NZVPb@LR?~@SvEyCLANATS`Aw@lBqArCmBtL}HvLcIjA{@dPuKzGoElFsDdEqCz@g@jCkBbIsFjBmAvMeJ|GoETr@Jp@@RAl@@PRf@v@pALLdAv@NR~@`D?nADNn@fByAvAw@p@STIV?^F\\nCvFJTJGPELBLHTVnCjE`EdH`AbBRJDBdAIzDe@bC}@dH{Bu@mD_@oBzDqC', NULL, '2018-09-09 23:04:03', '2018-09-09 23:05:07'),
(330, 'Txicab875524', 113, 0, 146, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 16.00000000, 'Taimur Rd, Gawal Mandi, Rawalpindi, Punjab 46000, Pakistan', 33.60268190, 73.05971950, 'Bhitai Rd, F-7-4, F-7, F-7 Markaz F 7 Markaz F-7, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.71866060, 73.05435660, '2018-09-09 23:07:01', NULL, NULL, NULL, 0, 0, 0, 0, 'y~alEen||LDuDJgALs@hAqGDIPI\\GvAM`@I^SXULSXu@Fo@aE_Fu@q@sA{@_Ac@m@Ok@K}AM_DIe@@u@@sAFgA?gBFyAFcENyLl@uEZsAJcBH_CFkA?e@Bk@BqABy@AyAG{FYwGo@qTiBaAO}Bm@aA[aBq@uDwBs@_@yBgAcCwAcImEm@[eGeDuAy@qK_G{FaD}@i@gBs@{Ag@eFyAqU{GkDaAgEuA_`@}KqLcDiLkDkBe@eD{@cLmDmDgAwAg@{MwDoAUuBa@gDmA{@c@q@SaBc@gHyBmEqAuD{A_B_AsAKmAC}DNaDBeBB_AHkAVo@F_DlBgUpOaDxByYdSyLfIyXhReHzEcW|PaGfEqGjEkL`IeH|EsR|MSLoCnBoCdB{A`A{AbAgInF_NhJkBdAuVvPkBpAoOjKqDdCeAx@QRw@h@sBrAaAf@s@l@wDrCyDhCaAp@IECEEKCW`GyDhD{BHOHUDk@c@oAwDdCyB|A{JeV_CsF', NULL, '2018-09-09 23:06:15', '2018-09-09 23:07:22'),
(331, 'Txicab210688', 113, 0, 146, 2, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Taimur Rd, Gawal Mandi, Rawalpindi, Punjab 46000, Pakistan', 33.60268610, 73.05971770, 'Korang Town Rawalpindi, Islamabad, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, '2018-09-09 23:13:59', NULL, NULL, NULL, 0, 0, 0, 0, 'y~alEen||LDuDJgALs@hAqGDIPI\\GvAM`@I^SXULSXu@Fo@aE_Fu@q@sA{@_Ac@m@Ok@K}AM_DIe@@u@@sAFgA?gBFyAFA_@F?j@EbEWnCQp@Ax@@n@DPEvBJp@?HEBKAuCWeH@qEA{DGm@Yu@w@}ASe@GYCAACACAG@KA_BEq@Ms@m@yCc@}Dk@uEIi@AAAA?E?A?ACUJmAn@uFAWGQoAiBgAyBb@a@~HiHfBdAlBRhGr@lDR`@B?G@E@ADA^CFIHQHOCQc@}CIkBGa@IQMMKM?_@BS?k@o@{PCgB?UFWo@yOy@sPW_EO}AMy@_@w@k@gAoLuQgBoCSYcGoJoA}BoCqEmMgSsAsBwAaCe@w@K[Mq@Ce@?_@Ds@VmAlB{GhCoJjBuGhDkMx@iCtE_MpEuMz@gC~FuMpDoIv@cBRy@PkANuC@kAIcAQyAScAc@{Aa@{@s@iAO]WWeAw@wFuCmHyD_B}@_Am@gAC]D[HiBdAaA|@M`@A`@F`@NZVPb@LR?~@SvEyCLANATS`Aw@lBqArCmBtL}HvLcIjA{@dPuKzGoElFsDdEqCz@g@jCkBbIsFjBmAvMeJ|GoETr@Jp@@RAl@@PRf@v@pALLdAv@NR~@`D?nADNn@fByAvAw@p@STIV?^F\\nCvFJTJGPELBLHTVnCjE`EdH`AbBRJDBdAIzDe@bC}@dH{Bu@mD_@oBzDqC', NULL, '2018-09-09 23:13:16', '2018-09-09 23:14:20');
INSERT INTO `user_requests` (`id`, `booking_id`, `user_id`, `provider_id`, `current_provider_id`, `service_type_id`, `status`, `cancelled_by`, `cancel_reason`, `payment_mode`, `paid`, `distance`, `s_address`, `s_latitude`, `s_longitude`, `d_address`, `d_latitude`, `d_longitude`, `assigned_at`, `schedule_at`, `started_at`, `finished_at`, `user_rated`, `provider_rated`, `use_wallet`, `surge`, `route_key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(332, 'Txicab587697', 113, 0, 114, 2, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Taimur Rd, Gawal Mandi, Rawalpindi, Punjab 46000, Pakistan', 33.60294060, 73.05963250, 'Korang Town Rawalpindi, Islamabad, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, '2018-09-09 23:24:09', NULL, NULL, NULL, 0, 0, 0, 0, 'aablEwm||LD|@FPPPb@FD_EBmBJgAvAeIHMj@MvAM`@I^SXUf@iAFo@aE_Fu@q@sA{@_Ac@yA[}AMgACwAEe@@u@@sAFgA?gBFk@@m@DA_@F?j@E|@GbDUpBKp@Ax@@n@DPEv@DjBFJCFOAuCOqDGsB?sB?yGGm@EOw@aBg@gAK]CEAK@EAk@EgBk@sC_@}B_@aEi@wD?AA?AE?EAG?g@j@aFLsAI]oAiBgAyBjE_EvCkCvA|@NFXF|Ed@~BXlDR`@B?G@EFC^CFIHQHOCQc@}CIkBGa@IQMMKM?_@BS?k@o@{PCgB?UFWo@yOIuBo@}LW_EO}AMy@_@w@k@gAoLuQgBoCwGiKoA}BoCqEaP{V}ByDK[Mq@CeADs@VmAlB{GvBaIbAoDvCsKjAkEx@iCtE_MpEuMz@gCv@gB`G}MvB_Fv@cBRy@PkANuC@kAIcAQyAScAc@{Aa@{@s@iAO]WWeAw@gMuGqDoBkAu@gAC]D[HiBdAaA|@M`@A`@F`@NZVPb@LR?~@SvEyCLANATS`Aw@lBqArCmB^WnRgM|EaDjA{@xQ{LfFiDlFsDdEqCz@g@`FmDlFqDjBmAvMeJ|GoE\\nADh@Al@@PRf@v@pArAdANRd@|AXbA@d@Ah@DNn@fByAvAw@p@STIV?^F\\nCvFJTJGPELBLHTVnCjExAbCfB`D`AbBRJDBD?zFo@bC}@dH{Bu@mD_@oBzDqC', NULL, '2018-09-09 23:24:09', '2018-09-09 23:24:32'),
(333, 'Txicab912810', 113, 0, 129, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 14.00000000, 'Taimur Rd, Gawal Mandi, Rawalpindi, Punjab 46000, Pakistan', 33.60266710, 73.05979890, 'Korang Town Rawalpindi, Islamabad, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, '2018-09-09 23:25:55', NULL, NULL, NULL, 0, 0, 0, 0, 'y~alEyn||LHaEFo@n@iDh@wCBE\\M~@Iz@Mb@OXQRUN]Na@Fo@mEkF{AiAkAq@k@Sk@KiAOqAGqACeA?_@B]AsAFgA?kAFcA@_@BQ@A_@NAr@EtDUfAKpBGxABTBHCPAdBJn@@LAFI@{AIuCKeCCkB@{EAeDG[KYa@{@m@mASo@CCCK@KCyBEe@_@eBa@{B]oDo@yECQAAAA?E?A?AAa@R{Bd@aECWiBuCs@yAJK~BuBxCqC|@w@z@h@`@VRF|CXdFl@xDR@KBEb@CJQNYYgBUoCEy@GUKOSSBi@?Wk@cPGsDFW[_ISmFc@yIm@eKWaC[}@u@wAuNwTaGmJ{@sAiD}FgPiWaDcFO_@Mk@GeA@e@J_AjAcEvCwKj@uB~@aDvAkFpA_F~@_DzBoGvEeMnCiIv@uBlGmNpAaDvAwCVo@Ry@ZiCFcCCaAa@_DWiAg@sAq@mA]m@OQ[Yu@i@{EcCy@e@oIoEe@Wy@i@i@A{@Bs@XqAt@w@n@QZGd@@\\Nf@PR\\Nd@B~@SvEyC\\CvAkApGkEfRaMpDaCjBsAtRqMjG_EjJuGnAu@`EsCbD{BdDwBbRmMxE}CJVLj@Hl@A~@FTt@tANTjA~@LLP\\p@|BH`@Cr@@Pr@pBgC`CSPOXCX@XDRtAtCdAvBRKR?FBRPdBjCbBnCtEfIZNtCYhBUVGjBu@bBg@`EsAq@yCOy@SiABCvDmC', NULL, '2018-09-09 23:25:55', '2018-09-09 23:26:10'),
(334, 'Txicab766647', 113, 0, 114, 2, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 14.00000000, 'Taimur Rd, Gawal Mandi, Rawalpindi, Punjab 46000, Pakistan', 33.60266830, 73.05979000, 'Korang Town Rawalpindi, Islamabad, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, '2018-09-09 23:26:23', NULL, NULL, NULL, 0, 0, 0, 0, 'y~alEyn||LHaEFo@n@iDh@wCBE\\M~@Iz@Mb@OXQRUN]Na@Fo@mEkF{AiAkAq@k@Sk@KiAOqAGqACeA?_@B]AsAFgA?kAFcA@_@BQ@A_@NAr@EtDUfAKpBGxABTBHCPAdBJn@@LAFI@{AIuCKeCCkB@{EAeDG[KYa@{@m@mASo@CCCK@KCyBEe@_@eBa@{B]oDo@yECQAAAA?E?A?AAa@R{Bd@aECWiBuCs@yAJK~BuBxCqC|@w@z@h@`@VRF|CXdFl@xDR@KBEb@CJQNYYgBUoCEy@GUKOSSBi@?Wk@cPGsDFW[_ISmFc@yIm@eKWaC[}@u@wAuNwTaGmJ{@sAiD}FgPiWaDcFO_@Mk@GeA@e@J_AjAcEvCwKj@uB~@aDvAkFpA_F~@_DzBoGvEeMnCiIv@uBlGmNpAaDvAwCVo@Ry@ZiCFcCCaAa@_DWiAg@sAq@mA]m@OQ[Yu@i@{EcCy@e@oIoEe@Wy@i@i@A{@Bs@XqAt@w@n@QZGd@@\\Nf@PR\\Nd@B~@SvEyC\\CvAkApGkEfRaMpDaCjBsAtRqMjG_EjJuGnAu@`EsCbD{BdDwBbRmMxE}CJVLj@Hl@A~@FTt@tANTjA~@LLP\\p@|BH`@Cr@@Pr@pBgC`CSPOXCX@XDRtAtCdAvBRKR?FBRPdBjCbBnCtEfIZNtCYhBUVGjBu@bBg@`EsAq@yCOy@SiABCvDmC', NULL, '2018-09-09 23:26:23', '2018-09-09 23:26:34'),
(335, 'Txicab665009', 179, 163, 163, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 10.00000000, 'Rojhelat, Irak', 36.19570300, 44.07926130, 'Unnamed Road, Erbil, Irak,Erbil,Erbil Governorate', 36.19056519, 44.05260589, '2018-09-10 07:49:18', NULL, '2018-09-10 07:49:56', '2018-09-10 07:50:01', 1, 1, 0, 0, '}m|{Emf`lGJ~AtAOLzALjBpAOlGq@~Eg@v@eAfBvAdAv@RHXEC[NaKB_@~A@D_EB?pABBgBdGDjDFzAB?oBhINJ\\TB@YI]AGL@hLZfBDAr@@FF@JC?Gh@@pFVGnDpFPxUdA~BLxDNxE\\rHx@nDZdEZ|NtArHp@SlPm@dg@y@tp@RFzA|@pEdB`Bn@`Bv@dHdDMrAOd@IFK?g@O_@MG?GHGBC?IJi@`ByBeAwMyFaLoE_J{CmBk@qBvHeCjJeAhEI\\sNkCoToD{Do@kCc@}@]gDk@oAnMAFq@KASeAQkHsA{AWg@|EAFuAU_C_@aBWWtCw@hIa@fEgHkAoAUa@bFGFk@KcBUsASUnBUnBgAS', NULL, '2018-09-10 07:49:18', '2018-09-10 07:50:36'),
(336, 'Txicab541152', 179, 163, 163, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, 'Rojhelat, Irak', 36.19628320, 44.07912820, 'Unnamed Road, Erbil, Irak,Erbil,Erbil Governorate', 36.17722113, 44.06158391, '2018-09-10 08:01:23', NULL, '2018-09-10 21:56:55', '2018-09-10 21:57:00', 1, 1, 0, 0, '}m|{Eif`lGJzAtAOLzALjBpAOlGq@~Eg@v@eAfBvAdAv@RHXEC[NaKB_@~A@D_EB?pABBgBdGDjDFzAB?oBhINJ\\TB@YI]AGL@hLZfBDAr@@FF@JC?Gh@@pFVGnDpFPxUdA~BLxDNxE\\rHx@nDZdEZ|NtArHp@SlPm@dg@y@tp@RFzA|@pEdB`Bn@`Bv@dHdDMrAOd@IFK?g@O_@MG?GHGBC?IJi@`ByBeAwMyFaLoE_J{CmBk@cN{DmLuCeLeCa@xESxBbANk@nFvB`@', NULL, '2018-09-10 08:01:23', '2018-09-10 21:57:23'),
(337, 'Txicab919387', 179, 163, 163, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 1.00000000, 'Peshawa Qazi, Erbil, Irak', 36.21751420, 43.98534670, 'Unnamed Road, Erbil, Irak,Erbil,Erbil Governorate', 36.21322088, 43.98498069, '2018-09-10 21:57:51', NULL, NULL, NULL, 0, 0, 0, 0, '}v`|Ea{mkGlGxOzOcL`As@', NULL, '2018-09-10 21:57:51', '2018-09-10 21:58:29'),
(338, 'Txicab540943', 187, 169, 169, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 10.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65652550, 73.03623800, 'F-10 Markaz F-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.69523080, 73.01285460, '2018-09-10 23:09:22', NULL, '2018-09-10 23:09:55', '2018-09-10 23:09:59', 1, 1, 0, 0, 'aqllE}zw|LeHqP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AcAeCO?yACSE_W`Qyb@`Z[{@Q[ECM?cAh@U@ICi@b@wDrCiL~HkBpAgD~BoGlEaK`Hc@V}AnAcI|EwGhEyIjGwFvDkFlDiCfBiMpImA`AkBlAAFINYZINATDTT`AdCfGrDnIbDtH|EhL~GjPvOr^dE~Jh@hAVZRPHCT?T@RFJHJT@TC^Yj@OPSJWHWBYCa@J_@PqKjHyCpBwBxAvAbDnAtCXn@q@d@oCjBg@^GFUm@sA_DEB_Ar@N^', NULL, '2018-09-10 23:09:22', '2018-09-10 23:10:31'),
(339, 'Txicab454186', 179, 163, 163, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 4.00000000, 'Sultan Muthafar\'s Shrine, Sultan Muthafar, Erbil 066223, Irak', 36.19149150, 44.00444910, 'Shorsh, Erbil, Irak', 36.20642720, 44.02077870, '2018-09-11 04:12:23', NULL, '2018-09-11 04:13:14', '2018-09-11 04:14:21', 1, 1, 0, 0, 'et{{EwqqkGsAa@]Ku@_@[UiBqAgB_BKW@G?IIMCASk@YeAs@wDWoBMeCK_D?SK?C?yCB{LJiDB_E@uNCyI]GaCNyDVmG`BeNXoB^kBbA}ExBsG`CcGTa@[YOMM^_A|AkCfI{BwBs@u@iDoCwD}Cm@UcCy@UKm@c@[UgA{@?DBvB', NULL, '2018-09-11 04:12:23', '2018-09-11 04:14:35'),
(340, 'Txicab671810', 116, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 6.00000000, '2811 Scott St, Des Plaines, IL 60018, USA ,United States ', 42.00252222, -87.87487894, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416200, -87.90732100, '2018-09-13 15:47:46', NULL, '2018-09-13 15:48:47', '2018-09-13 15:49:34', 1, 1, 0, 0, 'wrj_Gh`jwO]?JjHRbUNhPAjABlH?V`B?fC?lA?dDB`CD|C?pE?rFA`DGjB?bA?fACp@G|@MzA]`Bq@`BcAh@e@r@u@l@u@t@mAdAwB~B}Ej@aAn@}@`@a@x@u@h@a@r@a@v@YhA[xBWjCWzCOxAEN?BD@@B@h@JhA\\tBhAjBdAjHrEfBdALDp@HjCS`@AT?f@JZRbAvAbAtDl@bBhEfN`DdKTz@R`ATrBBdA?z@CfAGv@[lBi@dBg@dA]f@_@f@oItJkHvImB|B[j@Ut@Mx@AlA?fOAlLDjAHv@pBzKNt@Zl@NPZRr@NnBVVKd@Aj@DtDh@pAVf@PZDHBb@VRAVKTWR[vAcD^m@', NULL, '2018-09-13 15:47:46', '2018-09-13 15:50:01'),
(341, 'Txicab445406', 187, 0, 169, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 2.00000000, 'Sultan Muthafar, Erbil, Irak', 36.18953510, 44.00396910, 'Barzany Namr, Erbil, Irak,Erbil,Erbil Governorate', 36.19861691, 44.01120029, '2018-09-14 04:55:47', NULL, NULL, NULL, 0, 0, 0, 0, 'yg{{EwoqkGLxB{B{@}EaBmAa@cBg@u@_@MKu@c@cAy@eB}AKS?A?A@C?EAGAGMGMBGN@PiGrEeCdB{AnAm@ZyA|@iAl@[ASGk@e@IGMi@SiDQ{Ee@{PIuBAaB?GM@cEA?G?qC`C?RAY[Kk@N}@Z]DC', NULL, '2018-09-14 04:55:03', '2018-09-14 04:56:08'),
(342, 'Txicab381797', 187, 169, 169, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 7.00000000, 'Sultan Muthafar, Erbil, Irak', 36.19168500, 44.00418320, 'Ankawa, Erbil, Irak', 36.23561260, 43.98912900, '2018-09-14 04:57:40', NULL, '2018-09-14 04:58:08', '2018-09-14 04:58:34', 1, 1, 0, 0, '}t{{EmqqkGtAXgEzQuCxLw@QgASMGBJKDHDiBjIeDDkFJmFjFCVsCmCeB_BOU}CsFoAcCcBcEqAsFa@eAURQNUFsHjCaH`CwLvDsBp@yBd@mHtDeMnFaGdC_GfCUHgGfBiDvAm@PQ@i@Pm@Hy@HoC^iANw@FYFy@FsJtAc@DLh@lCnLkBx@ae@v_@iTvLkAGaAU{@i@qDwGw@q@c@Ye@}Aw@gE_LxASuDKiBEmCGyC', NULL, '2018-09-14 04:57:40', '2018-09-14 04:58:56'),
(343, 'Txicab202615', 128, 0, 0, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 286.02600000, '7051 West Barry Avenue, Chicago, IL, USA', 41.93633300, -87.80284570, '7051 Barry Street, Hudsonville, MI, USA', 42.86421320, -85.95614230, '2018-09-14 08:15:18', '2018-09-13 23:00:00', NULL, NULL, 0, 0, 0, 0, '}u}~Fx~{vO\\u`@AqFsGqBqDDiu@bAca@f@qe@dHac@G_MBuGAAoFEcNEi]Ki]EqF{F?yCIw\\QmAkTAkf@hDsM`Qka@v`@qhAjZgs@ltAarCnL{R`TyKpJ}V|Ly^|]_t@tf@wfA|z@_hB`NkOfa@oTlWuTtUShUiFjSaLbS{[lX_c@bJmFxTiAjo@_BfkA_Evm@@fU|ChYcLrNwp@`GoPtMoE`jB}BpfAc@bZxGtxAqBlcACj_@wAlRySxEmq@pvCgpEtdBohCnv@wpA|VyWzb@ur@nRa^`r@gt@n_@cSnsANhp@bBjy@qOfrBsk@bo@sf@hi@kChLkH~Q}\\lZkj@fOqH|`@uJlKwN|Qwf@fIib@vBkfGdHmtBnJsoAoBsi@yKymAj@ccAzFkaCfUmaBbGuh@`CsrAnE_UvLmRbLoGva@gEbOuCrNaNtHmY?aUqPy_AuIsmA_Sg_Ff_@yOvNoOsXu[af@mbAcIm\\{]ysDtAsyDeHgv@iVqbAeAeeB_@kxAoP}v@koAmuB}D}c@aBobB{FsuCyKsb@qpDo|HyNy{@~Au~KaAqyBqImZc]}c@_f@{k@gKwVeSy}B}EsT_t@ixAkXyTwsAm]eSyDkhAs@wa@sDsW}Ty}DalHegAqfBi}@kqA{eAm~@oh@ef@_]}UwoAs`A}t@{pA{jBu|DumCw_GsNcVwNiKsGuBsYcB_{@_AuSiIi`C}pByaAuy@g\\uJs{@rKu_@wO{zA_z@_|C{bBo|DidA}{@mBiRiK}cAczBo}@wmA}n@_v@uPcs@s]cnCcMgi@waAecCo]a{@uRcXiuAow@yqCk{AqZa\\cl@kcAiN_p@oUkFsiBpAqi@~BqgAnc@ms@vUyp@uI{qDo_A}YkFyeAAsYeKiaB}kC_RuQi_@kN{b@}Kcp@uZo~B_~AqpAgm@{eAoe@skBcj@g}Aee@ya@w_@ioA_fBwsBow@k_AgX{}AAmaBO}XmGolBcgA_iAky@on@wi@eUgEuvBcBofAiRc{Bq@yrDlD}mBfDm_AwX{a@oBkeDvVw]qGqVqP{pA}sByNuTyp@eY_mAm`@qSuSoYsb@cZoSyWqFowA~@eiAc@cZmL{oCmbBcZqc@}Pgp@oPkoBoBiuDaEiw@se@e`As~@gwAw[ka@cb@uz@y^{h@mi@aa@st@qW_ZkToPq[_QebA_SaqAgSyb@iq@ie@cFkPmIoJGapB`A{yBu[CwaBCuh@GaA{D`@nDtJze@`H~]pNvt@oIB}rAV_l@HmG[sb@l@gEF?}P?sE', NULL, '2018-09-14 08:15:18', '2018-09-17 05:55:45'),
(344, 'Txicab619279', 187, 114, 114, 2, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 10.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65634330, 73.03622640, 'F-10 Markaz F-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.69523080, 73.01285460, '2018-09-18 23:43:30', NULL, '2018-09-18 23:43:52', '2018-09-18 23:43:57', 1, 1, 0, 0, '{nllEyzw|Lq@b@oA}C{FaNcOy]{Qac@iHqPkIuRuA}C_@g@_@i@a@q@eBcEwACYAKCcAr@{MbJcGbEoRrMsMdJQLK[]y@GCU?s@`@SFUCaFvDoPbLmDfCuPhL_BbA}AnAaEdCkHnEeEvCuIbG}EdDmFnDeMrIiBjAMJsCnBENOPUVER@TXlAvF~MjBhExCdH|Nn]xQrb@|BrF^n@ZVTCh@DRHDHFT@^IZ[f@QNUJWDU?OAa@J_@PcEpC{HhFcDzBi@d@oBtA]VCPAV?\\fClGVh@IFg@\\Sc@KCC@GDc@}@GEG?K@Si@', NULL, '2018-09-18 23:43:30', '2018-09-18 23:44:29'),
(345, 'Txicab918426', 187, 114, 114, 2, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 0.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65637130, 73.03612630, 'I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.65641470, 73.03654170, '2018-09-18 23:44:49', NULL, '2018-09-18 23:45:15', '2018-09-18 23:45:19', 1, 1, 0, 0, 'gollEqzw|LXQ', NULL, '2018-09-18 23:44:49', '2018-09-18 23:46:19'),
(346, 'Txicab224096', 187, 114, 114, 2, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 10.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65660480, 73.03622160, 'Dhoke Kala Khan Rawalpindi, Punjab, Pakistan', 33.65368200, 73.09143770, '2018-09-18 23:47:15', NULL, '2018-09-18 23:47:45', '2018-09-18 23:47:47', 1, 1, 0, 0, 'eqllEc{w|LaHkP}EgLeQya@wE_LoJyTuHiQgDuHc@g@]i@u@{AiBqEMYNMdTsNjA_AlH_FhCiBsAeDo@yAlFsDdFmDn@e@HTFHP?t@k@XQLAR?zBwAdKgFvDoBjDqBRu@X{ADa@}GsOwHkQaC}F_DgHkG}MgE}HaCgEo@wA]aAkAaDUsA[aA_@i@kAgAmCaCcBqAcAY[GYAc@FWPSXMZGd@?f@Hd@N^XXZNd@@h@EzAa@bCiBx@e@nPeLrCiBvHiFtNuJx@g@?SvE}CbRuMJe@Js@Ei@KYOQOISGY?SBm@\\a@`@ITCT?`@DVHTBNAPb@~@~@pBn@jARd@X\\\\BPAt@[h@YXYJCJDNNuFtDgDzBq@j@kD~Bi@b@LNv@|@jA~ATd@PE', NULL, '2018-09-18 23:47:15', '2018-09-18 23:48:09'),
(347, 'Txicab700562', 187, 114, 114, 2, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 0.00000000, 'Noor Floor Mill, Street 7, I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.65659160, 73.03624210, 'I-10/3 I 10/3 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.65641470, 73.03654170, '2018-09-18 23:56:30', NULL, '2018-09-18 23:57:00', '2018-09-18 23:57:37', 1, 1, 0, 0, 'eqllEc{w|LVl@~@m@', NULL, '2018-09-18 23:56:30', '2018-09-18 23:57:52'),
(348, 'Txicab581577', 170, 0, 136, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 2.00000000, '67 Church St, Wilkes-Barre, PA 18702, USA', 41.23625280, -75.90898540, '439 S Franklin St, Wilkes-Barre, PA 18702, USA,Wilkes-Barre,Pennsylvania', 41.23977439, -75.89569140, '2018-09-19 11:10:47', NULL, NULL, NULL, 0, 0, 0, 0, '{|tzF~|hnMmHoHhCmFgK_KnC}FlC_GhAqCr@}@iBmAe@_AcDcHcHoO', NULL, '2018-09-19 11:10:47', '2018-09-19 11:11:09'),
(349, 'Txicab316948', 152, 114, 114, 2, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 18.00000000, 'PWD Housing Society Rawalpindi, Punjab, Pakistan', 33.57086990, 73.14528670, 'Islamabad, Islamabad Capital Territory, Pakistan', 33.68442020, 73.04788480, '2018-09-19 20:51:30', NULL, '2018-09-19 20:51:52', '2018-09-19 20:51:59', 1, 1, 0, 0, '}x{kE_em}LyIySmBtAOJSc@q@cBqBuEaD}HcBkDyAcD?ABKEMk@^cGzDyDjC}LhIiFrDmNxJ}OpK{OjKcCdBwJxGiA|@sA|@uA|@aCdBcGzDyJvGsQ~LiNpJaMrI_EnCuChB{d@f[yWpQ_JlGcLtHmWlQaPpKiNhJun@tb@aa@lX}z@zk@_YvRuGjEwDdCcDzB}NdKyIhGuD~B_LvHGN_DlBuGnEiPzK{V|PaDzBoIzFgBhAuCpBoMtIyJzGiYrRkNxJaC|A}@dBQ`@Mh@I~@?r@Fn@Fj@PjA?h@Cj@Qz@m@~@g@x@]z@Kp@Cd@@fAJx@Hb@Db@vAdDzFdNpBlEjKtVVFn@fAjCvFxGzO~CfH', NULL, '2018-09-19 20:51:30', '2018-09-19 20:52:17'),
(350, 'Txicab730103', 182, 142, 142, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 3.00000000, '17 Street 14, G-6/2 G 6/2 G-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.71295120, 73.07765200, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72968920, 73.07459930, '2018-09-19 23:39:17', NULL, '2018-09-19 23:39:40', '2018-09-19 23:39:47', 1, 1, 0, 0, 'kpwlEw~_}L~ArDTTNZHPiA`BW\\KLa@\\s@Z}Ab@eDn@w@Ve@TaEpCcFhD}BqFiBeE_An@vFxMj@lA^|@JXOJmBtAiChBeFdDy@yBg@qAmDbCwRvMk@`@GNMTWXa@XgFhDoByEiMqZyFcN', NULL, '2018-09-19 23:39:17', '2018-09-19 23:39:57'),
(351, 'Txicab222856', 202, 136, 136, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 2.00000000, '67 Church St, Wilkes-Barre, PA 18702, EE. UU.', 41.23625280, -75.90898540, '346 McLean St, Wilkes-Barre, PA 18702, EE. UU.,Wilkes-Barre,Pennsylvania', 41.22626728, -75.89452531, '2018-09-20 05:52:54', NULL, '2018-09-20 05:53:56', '2018-09-20 05:55:58', 0, 1, 0, 0, '{|tzF~|hnMmHoHhCmFrJlJp@v@`E{IjBcELm@L_AJs@rAyCp@}ArDeIbFoKxKmVlEiJbDzC', NULL, '2018-09-20 05:52:54', '2018-09-20 05:56:22'),
(352, 'Txicab951148', 170, 0, 136, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 2.00000000, '82-84-86 Church St, Wilkes-Barre, PA 18702, USA', 41.23634070, -75.90864160, '30 Sullivan St, Wilkes-Barre, PA 18702, USA,Wilkes-Barre,Pennsylvania', 41.23910200, -75.89597035, '2018-09-20 07:22:12', NULL, NULL, NULL, 0, 0, 0, 0, '_~tzFx{hnMiGiGhCmF|CyGjGyMh@_AiCsF{B{EcGqMwFyLkClC', NULL, '2018-09-20 07:22:12', '2019-10-12 02:10:12'),
(353, 'Txicab822879', 205, 0, 141, 2, 'CANCELLED', 'USER', '', 'CASH', 0, 7.00000000, 'Thakdari Rd, Krishnapur, Kestopur, Kolkata, West Bengal 700059, India', 22.58305320, 88.44309440, 'Murari Pukur, Ultadanga, Kolkata, West Bengal 700067, India', 22.59295300, 88.38916500, '2018-09-22 20:21:47', NULL, NULL, NULL, 0, 0, 0, 0, 'cvyhCwayzOz@`@j@d@PJIDw@h@s@z@[J[JELO^WdAQp@EDKBUAMBGNI|@CLGHMFS@QNo@r@[TiBdAkAV[HKHa@pACN?j@ZlBBf@GrBEnAKPo@vAaAxC[`AGJGHE@DbAX`A@F?FEFcFjCmAp@c@LmBZq@Xy@h@YVe@l@W\\cAz@aFnCuEhCuCbBuAp@q@`@g@`@qEpC}KvGcDjBmFzC{AbA}BrAgAr@cA|@u@`Ag@p@k@hAu@nBcAzDEPGFIAmA{@k@_@VtBAVV|C@fBKnBOp@aAtOyAtPKjB@pAP`BT`AZbAjBnEnAxB~G|MhB|DVp@~@dB`ApBhF~IhJnQ~@rBdA|B`G`LtGzKhCvExElIb@\\XJLb@GFMF[F]Xg@`@SX_@z@e@pBQbBgApC_@xAc@pBOt@', NULL, '2018-09-22 20:21:47', '2018-09-22 20:22:06'),
(354, 'Txicab269441', 205, 143, 143, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 16.00000000, 'Thakdari Rd, Krishnapur, Kestopur, Kolkata, West Bengal 700059, India', 22.58310940, 88.44309890, 'Gariahat, Kolkata, West Bengal, India', 22.51700760, 88.36581900, '2018-09-22 20:32:40', NULL, '2018-09-22 20:34:17', '2018-09-22 20:35:17', 1, 1, 0, 0, 'cvyhCwayzOz@`@j@d@PJp@Mf@I`@OXS`@e@t@yANW?QImBa@mHGwBA]NAq@cQWsDQcCWsDWc@K{@KkCt@@@zBDdBNfBb@hFz@lPVfIZtHJjBJf@l@dBRj@d@lAF\\LbADnB?hB?vDGvC]zC@VF\\@^CZM\\y@bAQXWx@Ux@iAdDoEnMe@z@gA~@ELANBLv@|ApC|F~CxG`KpS~DxHlDrGb@p@NPVN~@b@nErBrGlC~CpAx@VrAf@nB~@fBt@rGlCzGtC`YtLpGfCbCbAxGxC~ChAxAt@xAt@`DpAdAh@XTPZTz@TxATv@HFRHL@l@]|@]v@En@@t@FfB^`Bp@b@X~@~@jEbFlAbBrA|Bf@nANj@Z|AT|B`@tGPbAPh@`@~@tBxDl@bAx@dApBbC@HBNLR|DpFtBrCl@l@z@v@XPzAr@n@RdATfQlCfAR`@Pn@d@V`@Jd@H|@I|ASbBEpABbBNjBb@pCxBtOR`AnB~MJdADnA@rAIfCEp@S`BSzACnABxAR`CZfBXhAfBxFb@pAnBpFzA~Dx@jCb@nBP|ADfA?nAC`AQlEAp@BlAJ~AAr@g@zHCx@Ab@Kn@y@bFs@nDmChKe@bAi@h@y@b@aAZoAh@s@h@y@|@}@`BHJF\\?P`ALzGdAdBPdCVrAVpCZnFp@bBHpA?hEWjAF`Ch@^DhDRpAHVA`BWtCu@dI_BjC]vAYpC{@vAW~@Bl@Dx@Dr@EjCHvCZbD^bDh@zB\\fCf@fHb@z@@~@Ez@Kz@SrG{AfFsAdC]?CBIPSJGLCNBLFLNDTAVETMNUF[EQOGS?KyAPBx@', NULL, '2018-09-22 20:32:40', '2018-09-22 20:36:02'),
(355, 'Txicab434295', 116, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 31.00000000, '10377 Lunt Ave, Rosemont, IL 60018, USA ,United States ', 42.00531291, -87.88893614, 'Chicago Loop, Chicago, IL, USA', 41.87863500, -87.62505500, '2018-09-23 14:44:34', NULL, '2018-09-23 14:45:36', '2018-09-23 14:45:45', 1, 1, 0, 0, 'cdk_Gb{lwOuDDcBA_DAsFDiDEJzJLxIBhE@n@TAl@@v@Rz@h@RPn@a@~@YnBOt@@pAErHEvCFBe@AyCFaCT{Bl@mCjEmMvAgENs@AUtEmMvFuOnDqKhFaOt@mBdA}BdBuCjA_Bv@_A|A_BxB}BjMqM`AoAn@u@Xe@r@qAj@qAdHePpGsNnIkRrBeFpA{DhAaEz@eDlCuLdA}Fv@sFb@iEJgBNoCF[BmAFyGAcFOmJDq@EaCI}GE{@OmIK{GQaKQgJEoBSuMUaNDyI@oEV{KZaIRkDt@kLbAsNXaDb@qDf@eD|@sF`@uCRsBZ}FDkC?mNCuPKqi@GwQEi[Ee^?uJDcBZmD`@eCl@yBv@qBvIeRxXql@hLoVtEyJt@iBf@wAb@yA`BqH~@oGdAgE^oAnAiDxAaDhAcCdGoMRa@jG}MzAyCrDoGNYxCoFt@_Bp@sB`A}DbAyERy@lAmC`@{@~@cBv@iA~BsDrA_Cn@gAJQTSxDiH~DmIfA}B|A_D~EgKxFwMzC}GzCyGhAeCxFwLhAyB|AmDxGmNfDgHnBkEh@aBbAaDh@sA\\q@~@sAf@g@jA_A`BiA`MwFzBoAb@[j@i@|AeBpA{Bt@eBr@}Bd@}Br@yEj@oDh@sCb@{Al@{AzDiIfEaJ~KcUl@oAbGuL|A}CzDcI~CgG|CiGlDeHdByD~AoE`BwEnBcFr@yAvBoEp@sA|KyUvLaW|FcMbBoD~JaTbH}NbAiBdCmDzBgCbB_Bh@g@xB{AfBaAtBiA`PeI~CkB~@g@j@[xAaAhAaArAwAlFoGdAaAdAs@`Ag@z@]~@Yt@MpAOhAC|ADtERpBBpBGvAO`C]r@KrA_@pBw@zI{C~@]nBy@bB}@h@_@rAaAzB_Cz@eAj@_A`BsCh@aA~@q@DE\\[b@]b@UlAc@`AUv@UTO\\_@V_@Ts@NiA@g@Cg@Gg@Mq@e@aCCQi@cDI{@EeB@kA\\uI@kEKk]E}HCcG?eDF{CJyFA_HGcOE}JA{FAcJAmGfCCV?zCED?zCE\\AbBCXTr@n@t@f@XFZ?ZEvAq@hB_ARKZITMJQb@Ed@CbA@hBE~BC|@Gz@?xA@~@AbBC|A?jKIzCCtECjCCE}BAsA', NULL, '2018-09-23 14:44:34', '2018-09-23 14:46:19'),
(356, 'Txicab753555', 152, 142, 142, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 23.00000000, '370 Street 36, PWD Housing Society Sector C PWD Society, Islamabad, Islamabad Capital Territory, Pakistan', 33.56710720, 73.14650220, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72968920, 73.07459930, '2018-10-29 06:31:39', NULL, '2018-10-29 06:32:00', '2018-10-29 06:32:08', 1, 1, 0, 0, '}`{kE_mm}LdCbG_An@oAx@eDrBkA`AuA|@}AdAoA|@yEcLC@kBqEgCeGgCeGUNgBpAs@cBuC{G}CwHiCqFe@cABKEMIFiCbBkGdEkMpIi[tTkTtNuJvGyA`A_G`EgBnAqA`A_BbA{DnCkEpCy@j@gRhMmKjH}N~JaFjDuE~CiChB{BtAaG|DuZxSeO`KsI|FcJnGwMzIyUfPkHzEwE`DyIzFuE~CwJxGgz@hk@wz@vk@q^xVgChBiJ`G{CtBwF|D{MhJkFvDcCzAsEzC_G`ECFAD_DlBgUpOaDxByYdSyLfIyXhReHzEcW|PaGfEqGjEkL`IeH|EsR|MSLoCnBoCdB{A`A{AbAgInF_NhJkAdAiBrAaLvHkA|@}AdA}B`BUPAHQXONODQ@OEKKQc@Cc@aHkPuBoFkDqIaEmJaD_Ic@VmEtCUNOW{DeJ}BoFuAeDw@eBcFyL{AoDe@sA[{@eAoC{PjLiFnDk@`@GNMTWXa@XgFhDoHiQ{I_TgDeI', NULL, '2018-10-29 06:31:39', '2018-10-29 06:32:24'),
(357, 'Txicab676381', 152, 142, 142, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 20.00000000, 'Street 8, Rawalpindi, Punjab 46000, Pakistan', 33.62066120, 72.99675890, 'F-6, Islamabad, Islamabad Capital Territory, Pakistan', 33.72968920, 73.07459930, '2018-10-29 07:06:15', NULL, '2018-10-29 07:06:31', '2018-10-29 07:06:40', 1, 1, 0, 0, 'gpelE_dp|LXFRN`@d@O}A@OpAa@p@]~@e@z@g@Qm@YeA`Ag@tAu@x@e@Qa@_@_AeAaCeDyH_AyB|@o@e@kA}AqDy@kBcB}DsRmd@kEiK}HwQsHiQcKkVgGoNkCoGgDxBoAx@YP]JeBLiBNu@J}CXsFh@iFb@wARo@P]NsE|CkChBgCfBoFvDg@ZaAX_@JUR]h@k@r@]VgCfBqNtJW\\Yf@Yb@mFtD_MpIYVmAtBaEnH}AfCwEbDm]vUiP`L}AhAg@`@Q_@sV}k@s@_BmUaj@yAiDwByEaF}JkBsEiC}G{FuN}KoWmI}RyD}Iw@iBoHcPeL{YmA{C_AuB{BsFqI{QsBiFaGiNgH}PsLoYmGcO_B_EcCoF{Qcc@wI_T}Oc_@cDaIa@YWIm@AiAt@aTvNkX`RyPfLaCzAe_@hWwPhLsCjBIVMRaAr@INBPJZ`@z@OJmH|E_DzB{@sBe@gAe@cAKWRMfEuCyCkHuMg[yDgJ', NULL, '2018-10-29 07:06:15', '2018-10-29 07:06:55'),
(358, 'Txicab436893', 152, 142, 142, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 7.00000000, 'Street 8, Rawalpindi, Punjab 46000, Pakistan', 33.62066560, 72.99673570, 'I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.64679570, 73.03757610, '2018-10-30 20:05:13', NULL, '2018-10-30 20:05:45', '2018-10-30 20:16:13', 1, 0, 0, 0, 'gpelE_dp|LXFRN`@d@O}A@OpAa@p@]~@e@z@g@Qm@YeA`Ag@tAu@x@e@Qa@_@_AeAaCeDyH_AyB|@o@e@kA}AqDy@kBcB}DsRmd@kEiK}HwQsHiQcKkVgGoNkCoGgDxBoAx@YP]JeBLiBNu@J}CXsFh@iFb@wARo@P]NsE|CkChBgCfBwAbAURM]kDcIgJkTeCmGEIbCcB|@o@dC_BnDcCyCeHyGwO}BqF_DmH', NULL, '2018-10-30 20:05:13', '2018-10-30 20:47:14'),
(359, 'A-Team361273', 213, 0, 0, 1, 'SEARCHING', 'NONE', NULL, 'CASH', 0, 641.16900000, 'O\'Hare, Chicago, IL, USA', 41.97729830, -87.83689090, '1248 Russell Ave N, Minneapolis, MN, USA', 44.99116810, -93.31043960, '2018-11-01 13:23:19', '2018-10-31 16:00:00', NULL, NULL, 0, 0, 0, 0, 'iue_GpsbwOms@aHlGfW_N`dC{l@dkAg~AxiEc_BjnIcuA~{BecBfzE}l@jlHq]xxGd@hj_@{VvqEwn@jkCutG|gSc{CvwP}{EhcTqoFbxVieA~mDkGjvAnBdxOuFtcDqcAluBsIjfCmXjyAizIxF_zHgBgjA|J_xCrcAk}Ajr@udBxAudDzw@irBr@ccDyMu`B{qAckAcYk{DgAs_Bze@cuKpIu`OrIifB|nBmu@hQ}kBuCkcFmAee@~Iiw@ngAosBzt@efCtn@coDnqDetDlkCuuA`AepAdUecBds@gs@tIci@rg@c|AjvB{oArzBg`@x|DiE|rCudA`oEg|A|tCqpAjsBmb@bKis@fFuiDv`@cdBfJoy@mIq`E|tAwsEt_Co~Ch}DubAl}@ecBnl@ehDjsAykEnrD}qFt_G_nBvo@ygBpVkiDfW}iBfScdA`Loz@pm@mjDtwBil@tNimBu[y`B`Ecd@vTym@fhB{qAlgAw|@hqDqpB|zLuS``DqO~kEgt@|{E_aAj~Jw[hzBuiAzn@{s@r^iiCau@_~@d@i|Blq@e}AmB{yDnkFojG|gM}|CvbHcxBrrJ_t@zvByiEthEidDpxB{{Ax|AwtArlBww@`nBgk@buA}mAjiGi}@fcGse@pfA}a@`}Aun@pzAifA|nDwwArmH}vCjfL{iAzlEiaCxeDah@jxAwz@vWe{AxK{|Cto@egBrr@sjC|P_~BhBwvBlnB}j@fjBegBhoE}dC~|Gg{CxxGymBl_DmsAd}EuaDtzHe_C|iCuaAflBwl@tkD_wAnkCaaBhuEetA~jEcnBt|C{|@zqBuk@nl@ez@ltAofA|oCa|B~cCcoA|bAys@n~@oeAhl@gu@zp@e[pt@{iApk@iyAxhAizAdiAosCxbBy|@rlA}aBn{CavDfvCui@ti@c{@rvBmyA`kGmp@zhAwfAff@c}Bl}@afDdzBqeBzo@c}ApiB_yB~zBwcBh`DpBdgOwsAjwFiXrt@wx@bg@enD|xBipAhwAky@hdCgk@fuDwvBr~Js}D|tKub@xgJrAjeHmRd{DE~mI}GflBeYt_Beg@jiEpDrvHpIveEiZzpDaw@pbC}Q~aTaKpxKqR`rGtCvmBgJ~mC}QpxLpAneIapAdcDyXlx@qFbnFiNreEyA`{IdGxdNrsApiJsBjoa@iRbdGWf{D{Mp^fMjh@mG~~@zUtx@kEjkBy@zcJss@tfDe^hrAoGlq@zMzj@yJ`iBh@x`CnBhqBufAeCom@bFQx|AA|]kSpGk@YwRxB', NULL, '2018-11-01 13:23:19', '2018-11-01 13:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_images`
--

CREATE TABLE `user_request_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(10) NOT NULL,
  `img_src` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_request_images`
--

INSERT INTO `user_request_images` (`id`, `request_id`, `img_src`, `created_at`, `updated_at`) VALUES
(1, 221, 'app/public/', '2018-03-29 07:55:11', '2018-03-29 07:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_payments`
--

CREATE TABLE `user_request_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `promocode_id` int(11) DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed` double(10,2) NOT NULL DEFAULT 0.00,
  `distance` double(10,2) NOT NULL DEFAULT 0.00,
  `commision` double(10,2) NOT NULL DEFAULT 0.00,
  `discount` double(10,2) NOT NULL DEFAULT 0.00,
  `tax` double(10,2) NOT NULL DEFAULT 0.00,
  `wallet` double(10,2) NOT NULL DEFAULT 0.00,
  `surge` double(10,2) NOT NULL DEFAULT 0.00,
  `total` double(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fleet_owner` double(10,2) NOT NULL DEFAULT 0.00,
  `company` double(10,2) NOT NULL DEFAULT 0.00,
  `partners` double(10,2) NOT NULL DEFAULT 0.00,
  `provider` double(10,2) NOT NULL DEFAULT 0.00,
  `escrow` double(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_request_payments`
--

INSERT INTO `user_request_payments` (`id`, `request_id`, `promocode_id`, `payment_id`, `payment_mode`, `fixed`, `distance`, `commision`, `discount`, `tax`, `wallet`, `surge`, `total`, `created_at`, `updated_at`, `fleet_owner`, `company`, `partners`, `provider`, `escrow`) VALUES
(1, 1, NULL, NULL, NULL, 20.00, 7.50, 0.00, 0.00, 0.00, 0.00, 0.00, 27.50, '2018-01-27 08:40:53', '2018-01-27 08:40:53', 0.00, 0.00, 0.00, 0.00, 0.00),
(2, 3, NULL, NULL, NULL, 20.00, 7.50, 0.00, 0.00, 0.00, 0.00, 0.00, 27.50, '2018-01-27 08:49:29', '2018-01-27 08:49:29', 0.00, 0.00, 0.00, 0.00, 0.00),
(3, 4, NULL, NULL, NULL, 20.00, 31.50, 0.00, 0.00, 0.00, 0.00, 0.00, 51.50, '2018-01-28 06:40:43', '2018-01-28 06:40:43', 0.00, 0.00, 0.00, 0.00, 0.00),
(4, 13, NULL, NULL, NULL, 20.00, 10.50, 0.00, 0.00, 0.00, 0.00, 0.00, 30.50, '2018-02-01 18:59:45', '2018-02-01 18:59:45', 0.00, 0.00, 0.00, 0.00, 0.00),
(5, 15, NULL, NULL, NULL, 20.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 32.00, '2018-02-03 13:00:24', '2018-02-03 13:00:24', 0.00, 0.00, 0.00, 0.00, 0.00),
(6, 19, NULL, NULL, NULL, 20.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 32.00, '2018-02-03 13:18:29', '2018-02-03 13:18:29', 0.00, 0.00, 0.00, 0.00, 0.00),
(7, 20, NULL, NULL, NULL, 20.00, 9.00, 0.00, 0.00, 0.00, 0.00, 0.00, 29.00, '2018-02-03 16:22:43', '2018-02-03 16:22:43', 0.00, 0.00, 0.00, 0.00, 0.00),
(8, 23, NULL, NULL, NULL, 20.00, 4.50, 0.00, 0.00, 0.00, 0.00, 0.00, 24.50, '2018-02-04 11:09:47', '2018-02-04 11:09:47', 0.00, 0.00, 0.00, 0.00, 0.00),
(9, 27, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 15.04, '2018-02-19 09:32:57', '2018-02-19 09:32:57', 0.00, 0.00, 0.00, 0.00, 0.00),
(10, 29, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 15.04, '2018-02-20 05:36:51', '2018-02-20 05:36:51', 0.00, 0.00, 0.00, 0.00, 0.00),
(11, 30, NULL, NULL, NULL, 4.00, 8.28, 0.00, 0.00, 0.00, 0.00, 0.00, 12.28, '2018-02-21 07:58:27', '2018-02-21 07:58:27', 0.00, 0.00, 0.00, 0.00, 0.00),
(12, 33, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 15.04, '2018-02-23 09:07:58', '2018-02-23 09:07:58', 0.00, 0.00, 0.00, 0.00, 0.00),
(13, 35, NULL, NULL, NULL, 4.00, 17.94, 0.00, 0.00, 0.00, 0.00, 0.00, 21.94, '2018-02-24 07:07:55', '2018-02-24 07:07:55', 0.00, 0.00, 0.00, 0.00, 0.00),
(14, 36, NULL, NULL, NULL, 4.00, 41.40, 0.00, 0.00, 0.00, 0.00, 0.00, 45.40, '2018-02-24 07:24:38', '2018-02-24 07:24:38', 0.00, 0.00, 0.00, 0.00, 0.00),
(15, 37, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 15.04, '2018-02-24 09:47:19', '2018-02-24 09:47:19', 0.00, 0.00, 0.00, 0.00, 0.00),
(16, 41, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 15.04, '2018-02-28 14:53:09', '2018-02-28 14:53:09', 0.00, 0.00, 0.00, 0.00, 0.00),
(17, 48, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 15.04, '2018-03-03 05:37:51', '2018-03-03 05:37:51', 0.00, 0.00, 0.00, 0.00, 0.00),
(18, 50, NULL, NULL, NULL, 4.00, 85.56, 0.00, 0.00, 0.00, 0.00, 0.00, 89.56, '2018-03-03 19:29:28', '2018-03-03 19:29:28', 0.00, 0.00, 0.00, 0.00, 0.00),
(19, 51, NULL, NULL, NULL, 4.00, 8.28, 0.00, 0.00, 0.00, 0.00, 0.00, 12.28, '2018-03-04 09:21:18', '2018-03-04 09:21:18', 0.00, 0.00, 0.00, 0.00, 0.00),
(20, 53, NULL, NULL, NULL, 4.00, 24.84, 0.00, 0.00, 0.00, 0.00, 0.00, 28.84, '2018-03-06 01:32:38', '2018-03-06 01:32:38', 0.00, 0.00, 0.00, 0.00, 0.00),
(21, 59, NULL, NULL, NULL, 4.00, 16.56, 0.00, 0.00, 0.00, 0.00, 0.00, 20.56, '2018-03-06 04:58:43', '2018-03-06 04:58:43', 0.00, 0.00, 0.00, 0.00, 0.00),
(22, 60, NULL, NULL, NULL, 4.00, 16.56, 0.00, 0.00, 0.00, 0.00, 0.00, 20.56, '2018-03-06 17:24:28', '2018-03-06 17:24:28', 0.00, 0.00, 0.00, 0.00, 0.00),
(23, 63, NULL, NULL, NULL, 4.00, 12.42, 0.00, 0.00, 0.00, 0.00, 0.00, 16.42, '2018-03-06 23:04:05', '2018-03-06 23:04:05', 0.00, 0.00, 0.00, 0.00, 0.00),
(24, 65, NULL, NULL, NULL, 4.00, 19.32, 0.00, 0.00, 0.00, 0.00, 0.00, 23.32, '2018-03-07 01:24:36', '2018-03-07 01:24:36', 0.00, 0.00, 0.00, 0.00, 0.00),
(25, 65, NULL, NULL, NULL, 4.00, 19.32, 0.00, 0.00, 0.00, 0.00, 0.00, 23.32, '2018-03-07 01:24:39', '2018-03-07 01:24:39', 0.00, 0.00, 0.00, 0.00, 0.00),
(26, 66, NULL, NULL, NULL, 4.00, 19.32, 0.00, 0.00, 0.00, 0.00, 0.00, 23.32, '2018-03-07 16:27:42', '2018-03-07 16:27:42', 0.00, 0.00, 0.00, 0.00, 0.00),
(27, 67, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 15.04, '2018-03-07 17:23:27', '2018-03-07 17:23:27', 0.00, 0.00, 0.00, 0.00, 0.00),
(28, 68, NULL, NULL, NULL, 4.00, 5.52, 0.00, 0.00, 0.00, 0.00, 0.00, 9.52, '2018-03-08 04:59:20', '2018-03-08 04:59:20', 0.00, 0.00, 0.00, 0.00, 0.00),
(29, 70, NULL, NULL, NULL, 4.00, 9.66, 0.00, 0.00, 0.00, 0.00, 0.00, 13.66, '2018-03-08 05:07:37', '2018-03-08 05:07:37', 0.00, 0.00, 0.00, 0.00, 0.00),
(30, 73, NULL, NULL, NULL, 4.00, 5.52, 0.00, 0.00, 0.00, 0.00, 0.00, 9.52, '2018-03-08 05:15:18', '2018-03-08 05:15:18', 0.00, 0.00, 0.00, 0.00, 0.00),
(31, 77, NULL, NULL, NULL, 4.00, 6.90, 0.00, 0.00, 0.00, 0.00, 0.00, 10.90, '2018-03-08 09:51:55', '2018-03-08 09:51:55', 0.00, 0.00, 0.00, 0.00, 0.00),
(32, 78, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 15.04, '2018-03-08 14:14:33', '2018-03-08 14:14:33', 0.00, 0.00, 0.00, 0.00, 0.00),
(33, 79, NULL, NULL, NULL, 4.00, 17.94, 0.00, 0.00, 0.00, 0.00, 0.00, 21.94, '2018-03-09 01:43:45', '2018-03-09 01:43:45', 0.00, 0.00, 0.00, 0.00, 0.00),
(34, 81, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 15.04, '2018-03-09 04:30:42', '2018-03-09 04:30:42', 0.00, 0.00, 0.00, 0.00, 0.00),
(35, 86, NULL, NULL, NULL, 4.00, 7.56, 0.00, 0.00, 0.00, 0.00, 0.00, 11.56, '2018-03-12 05:37:15', '2018-03-12 05:37:15', 0.00, 0.00, 0.00, 0.00, 0.00),
(36, 89, 2, NULL, NULL, 4.00, 10.08, 0.00, 50.00, 0.00, 0.00, 0.00, 0.00, '2018-03-12 12:35:46', '2018-03-12 12:35:46', 0.00, 0.00, 0.00, 0.00, 0.00),
(37, 91, NULL, NULL, NULL, 4.00, 10.08, 0.00, 0.00, 0.00, 0.00, 0.00, 14.08, '2018-03-16 12:23:14', '2018-03-16 12:23:14', 0.00, 0.00, 0.00, 0.00, 0.00),
(38, 93, NULL, NULL, NULL, 4.00, 17.64, 0.00, 0.00, 0.00, 0.00, 0.00, 21.64, '2018-03-20 05:23:52', '2018-03-20 05:23:52', 0.00, 0.00, 0.00, 0.00, 0.00),
(39, 94, NULL, NULL, NULL, 4.00, 17.64, 0.00, 0.00, 0.00, 0.00, 0.00, 21.64, '2018-03-20 05:30:11', '2018-03-20 05:30:11', 0.00, 0.00, 0.00, 0.00, 0.00),
(40, 95, NULL, NULL, NULL, 4.00, 10.08, 0.00, 0.00, 0.00, 0.00, 0.00, 14.08, '2018-03-20 06:08:14', '2018-03-20 06:08:14', 0.00, 0.00, 0.00, 0.00, 0.00),
(41, 96, 2, NULL, NULL, 4.00, 8.82, 0.00, 50.00, 0.00, 0.00, 0.00, 0.00, '2018-03-20 07:52:55', '2018-03-20 07:52:55', 0.00, 0.00, 0.00, 0.00, 0.00),
(42, 97, NULL, NULL, NULL, 4.00, 10.08, 0.00, 0.00, 0.00, 0.00, 0.00, 14.08, '2018-03-20 09:11:21', '2018-03-20 09:11:21', 0.00, 0.00, 0.00, 0.00, 0.00),
(43, 98, NULL, NULL, NULL, 4.00, 39.06, 0.00, 0.00, 0.00, 0.00, 0.00, 43.06, '2018-03-21 09:21:51', '2018-03-21 09:21:51', 0.00, 0.00, 0.00, 0.00, 0.00),
(44, 99, NULL, NULL, NULL, 4.00, 10.08, 0.00, 0.00, 0.00, 0.00, 0.00, 14.08, '2018-03-21 14:58:45', '2018-03-21 14:58:45', 0.00, 0.00, 0.00, 0.00, 0.00),
(45, 100, NULL, NULL, NULL, 4.00, 12.60, 0.00, 0.00, 0.00, 0.00, 0.00, 16.60, '2018-03-22 20:25:43', '2018-03-22 20:25:43', 0.00, 0.00, 0.00, 0.00, 0.00),
(46, 103, NULL, NULL, NULL, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, '2018-03-23 18:25:45', '2018-03-23 18:25:45', 0.00, 0.00, 0.00, 0.00, 0.00),
(47, 104, 2, NULL, NULL, 4.00, 7.56, 0.00, 50.00, 0.00, 0.00, 0.00, 0.00, '2018-03-24 17:10:58', '2018-03-24 17:10:58', 0.00, 0.00, 0.00, 0.00, 0.00),
(48, 105, 2, NULL, NULL, 4.00, 0.00, 0.00, 50.00, 0.00, 0.00, 0.00, 0.00, '2018-03-26 01:23:27', '2018-03-26 01:23:27', 0.00, 0.00, 0.00, 0.00, 0.00),
(49, 112, NULL, NULL, NULL, 4.00, 11.34, 0.00, 0.00, 0.00, 0.00, 0.00, 15.34, '2018-03-27 00:36:25', '2018-03-27 00:36:25', 0.00, 0.00, 0.00, 0.00, 0.00),
(50, 113, NULL, NULL, NULL, 4.00, 17.64, 0.00, 0.00, 0.00, 0.00, 0.00, 21.64, '2018-03-27 00:41:16', '2018-03-27 00:41:16', 0.00, 0.00, 0.00, 0.00, 0.00),
(51, 130, NULL, NULL, NULL, 4.00, 16.38, 0.00, 0.00, 0.00, 0.00, 0.00, 20.38, '2018-03-27 23:59:58', '2018-03-27 23:59:58', 0.00, 0.00, 0.00, 0.00, 0.00),
(52, 131, NULL, NULL, NULL, 4.00, 18.90, 0.00, 0.00, 0.00, 0.00, 0.00, 22.90, '2018-03-28 00:02:02', '2018-03-28 00:02:02', 0.00, 0.00, 0.00, 0.00, 0.00),
(53, 132, NULL, NULL, NULL, 4.00, 17.64, 0.00, 0.00, 0.00, 0.00, 0.00, 21.64, '2018-03-28 00:35:02', '2018-03-28 00:35:02', 0.00, 0.00, 0.00, 0.00, 0.00),
(54, 133, NULL, NULL, NULL, 4.00, 17.64, 0.00, 0.00, 0.00, 0.00, 0.00, 21.64, '2018-03-28 00:48:04', '2018-03-28 00:48:04', 0.00, 0.00, 0.00, 0.00, 0.00),
(55, 140, NULL, NULL, NULL, 4.00, 15.12, 0.00, 0.00, 0.00, 0.00, 0.00, 19.12, '2018-03-28 02:22:23', '2018-03-28 02:22:23', 0.00, 0.00, 0.00, 0.00, 0.00),
(56, 141, NULL, NULL, NULL, 4.00, 18.90, 0.00, 0.00, 0.00, 0.00, 0.00, 22.90, '2018-03-28 02:24:15', '2018-03-28 02:24:15', 0.00, 0.00, 0.00, 0.00, 0.00),
(57, 209, NULL, NULL, NULL, 4.00, 3.78, 0.00, 0.00, 0.00, 0.00, 0.00, 7.78, '2018-03-28 08:42:43', '2018-03-28 08:42:43', 0.00, 0.00, 0.00, 0.00, 0.00),
(58, 210, NULL, NULL, NULL, 4.00, 3.78, 0.00, 0.00, 0.00, 0.00, 0.00, 7.78, '2018-03-28 08:43:58', '2018-03-28 08:43:58', 0.00, 0.00, 0.00, 0.00, 0.00),
(59, 211, NULL, NULL, NULL, 4.00, 3.78, 0.00, 0.00, 0.00, 0.00, 0.00, 7.78, '2018-03-28 09:10:30', '2018-03-28 09:10:30', 0.00, 0.00, 0.00, 0.00, 0.00),
(60, 227, NULL, NULL, NULL, 60.00, 5.04, 0.00, 0.00, 0.00, 0.00, 0.00, 65.04, '2018-04-03 09:32:48', '2018-04-03 09:32:48', 0.00, 0.00, 0.00, 0.00, 0.00),
(61, 227, NULL, NULL, NULL, 60.00, 5.04, 0.00, 0.00, 0.00, 0.00, 0.00, 65.04, '2018-04-03 09:32:50', '2018-04-03 09:32:50', 0.00, 0.00, 0.00, 0.00, 0.00),
(62, 230, NULL, NULL, NULL, 60.00, 18.90, 0.00, 0.00, 0.00, 0.00, 0.00, 78.90, '2018-04-07 03:17:02', '2018-04-07 03:17:02', 0.00, 0.00, 0.00, 0.00, 0.00),
(63, 231, NULL, NULL, NULL, 60.00, 7.56, 0.00, 0.00, 0.00, 0.00, 0.00, 67.56, '2018-04-10 00:55:03', '2018-04-10 00:55:03', 0.00, 0.00, 0.00, 0.00, 0.00),
(64, 232, NULL, NULL, NULL, 60.00, 17.64, 0.00, 0.00, 0.00, 0.00, 0.00, 77.64, '2018-04-10 22:13:43', '2018-04-10 22:13:43', 0.00, 0.00, 0.00, 0.00, 0.00),
(65, 232, NULL, NULL, NULL, 60.00, 17.64, 0.00, 0.00, 0.00, 0.00, 0.00, 77.64, '2018-04-10 22:13:44', '2018-04-10 22:13:44', 0.00, 0.00, 0.00, 0.00, 0.00),
(66, 233, 2, NULL, NULL, 60.00, 10.08, 0.00, 50.00, 0.00, 0.00, 0.00, 20.08, '2018-04-11 09:47:44', '2018-04-11 09:47:44', 0.00, 0.00, 0.00, 0.00, 0.00),
(67, 234, NULL, NULL, NULL, 60.00, 10.08, 0.00, 0.00, 0.00, 0.00, 0.00, 70.08, '2018-04-14 13:57:07', '2018-04-14 13:57:07', 0.00, 0.00, 0.00, 0.00, 0.00),
(68, 240, NULL, NULL, NULL, 60.00, 6.30, 0.00, 0.00, 0.00, 0.00, 0.00, 66.30, '2018-04-20 02:28:22', '2018-04-20 02:28:22', 0.00, 0.00, 0.00, 0.00, 0.00),
(69, 241, NULL, NULL, NULL, 60.00, 11.34, 0.00, 0.00, 0.00, 0.00, 0.00, 71.34, '2018-04-20 04:47:17', '2018-04-20 04:47:17', 0.00, 0.00, 0.00, 0.00, 0.00),
(70, 244, NULL, NULL, NULL, 60.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 60.00, '2018-04-21 21:02:52', '2018-04-21 21:02:52', 0.00, 0.00, 0.00, 0.00, 0.00),
(71, 245, NULL, NULL, NULL, 60.00, 6.30, 0.00, 0.00, 0.00, 0.00, 0.00, 66.30, '2018-04-21 23:08:55', '2018-04-21 23:08:55', 0.00, 0.00, 0.00, 0.00, 0.00),
(72, 247, NULL, NULL, NULL, 60.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 60.00, '2018-04-29 03:44:38', '2018-04-29 03:44:38', 0.00, 0.00, 0.00, 0.00, 0.00),
(73, 258, NULL, NULL, NULL, 60.00, 17.64, 0.00, 0.00, 0.00, 0.00, 0.00, 77.64, '2018-05-25 23:49:34', '2018-05-25 23:49:34', 0.00, 0.00, 0.00, 0.00, 0.00),
(74, 259, NULL, NULL, NULL, 5.00, 10.56, 0.00, 0.00, 0.00, 0.00, 0.00, 15.56, '2018-05-31 07:35:07', '2018-05-31 07:35:07', 0.00, 0.00, 0.00, 0.00, 0.00),
(75, 261, NULL, NULL, NULL, 3.00, 26.46, 0.00, 0.00, 0.00, 0.00, 0.00, 29.46, '2018-06-12 21:29:54', '2018-06-12 21:29:54', 0.00, 0.00, 0.00, 0.00, 0.00),
(76, 263, NULL, NULL, NULL, 3.00, 39.06, 0.00, 0.00, 0.00, 0.00, 0.00, 42.06, '2018-06-13 12:06:32', '2018-06-13 12:06:32', 0.00, 0.00, 0.00, 0.00, 0.00),
(77, 264, NULL, NULL, NULL, 3.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, '2018-06-15 16:37:54', '2018-06-15 16:37:54', 0.00, 0.00, 0.00, 0.00, 0.00),
(78, 276, NULL, NULL, NULL, 3.00, 16.38, 0.00, 0.00, 0.00, 0.00, 0.00, 19.38, '2018-07-24 19:36:34', '2018-07-24 19:36:34', 0.00, 0.00, 0.00, 0.00, 0.00),
(79, 277, NULL, NULL, NULL, 3.00, 10.08, 0.00, 0.00, 0.00, 0.00, 0.00, 13.08, '2018-07-30 09:28:56', '2018-07-30 09:28:56', 0.00, 0.00, 0.00, 0.00, 0.00),
(80, 282, NULL, NULL, NULL, 3.00, 12.60, 0.00, 0.00, 0.00, 0.00, 0.00, 15.60, '2018-08-08 00:51:29', '2018-08-08 00:51:29', 0.00, 0.00, 0.00, 0.00, 0.00),
(81, 282, NULL, NULL, NULL, 3.00, 12.60, 0.00, 0.00, 0.00, 0.00, 0.00, 15.60, '2018-08-08 00:51:30', '2018-08-08 00:51:30', 0.00, 0.00, 0.00, 0.00, 0.00),
(82, 284, NULL, NULL, NULL, 3.00, 22.68, 0.00, 0.00, 0.00, 0.00, 0.00, 25.68, '2018-08-18 09:11:07', '2018-08-18 09:11:07', 0.00, 0.00, 0.00, 0.00, 0.00),
(83, 286, NULL, NULL, NULL, 3.00, 18.90, 0.00, 0.00, 0.00, 0.00, 0.00, 21.90, '2018-08-18 11:01:54', '2018-08-18 11:01:54', 0.00, 0.00, 0.00, 0.00, 0.00),
(84, 288, NULL, NULL, NULL, 3.00, 1.26, 0.00, 0.00, 0.00, 0.00, 0.00, 4.26, '2018-08-18 11:15:04', '2018-08-18 11:15:04', 0.00, 0.00, 0.00, 0.00, 0.00),
(85, 289, NULL, NULL, NULL, 3.00, 5.04, 0.00, 0.00, 0.00, 0.00, 0.00, 8.04, '2018-08-19 00:56:23', '2018-08-19 00:56:23', 0.00, 0.00, 0.00, 0.00, 0.00),
(86, 291, NULL, NULL, NULL, 3.00, 27.72, 0.00, 0.00, 0.00, 0.00, 0.00, 30.72, '2018-08-19 10:56:42', '2018-08-19 10:56:42', 0.00, 0.00, 0.00, 0.00, 0.00),
(87, 292, NULL, NULL, NULL, 3.00, 1.26, 0.00, 0.00, 0.00, 0.00, 0.00, 4.26, '2018-08-19 10:58:37', '2018-08-19 10:58:37', 0.00, 0.00, 0.00, 0.00, 0.00),
(88, 293, NULL, NULL, NULL, 3.00, 3.78, 0.00, 0.00, 0.00, 0.00, 0.00, 6.78, '2018-08-20 09:36:57', '2018-08-20 09:36:57', 0.00, 0.00, 0.00, 0.00, 0.00),
(89, 294, NULL, NULL, NULL, 3.00, 2.52, 0.00, 0.00, 0.00, 0.00, 0.00, 5.52, '2018-08-20 10:04:17', '2018-08-20 10:04:17', 0.00, 0.00, 0.00, 0.00, 0.00),
(90, 298, NULL, NULL, NULL, 3.00, 2.52, 0.00, 0.00, 0.00, 0.00, 0.00, 5.52, '2018-08-20 10:45:54', '2018-08-20 10:45:54', 0.00, 0.00, 0.00, 0.00, 0.00),
(91, 299, NULL, NULL, NULL, 3.00, 2.52, 0.00, 0.00, 0.00, 0.00, 0.00, 5.52, '2018-08-21 01:53:11', '2018-08-21 01:53:11', 0.00, 0.00, 0.00, 0.00, 0.00),
(92, 300, NULL, NULL, NULL, 3.00, 3.78, 0.00, 0.00, 0.00, 0.00, 0.00, 6.78, '2018-08-21 10:26:55', '2018-08-21 10:26:55', 0.00, 0.00, 0.00, 0.00, 0.00),
(93, 300, NULL, NULL, NULL, 3.00, 3.78, 0.00, 0.00, 0.00, 0.00, 0.00, 6.78, '2018-08-21 10:26:57', '2018-08-21 10:26:57', 0.00, 0.00, 0.00, 0.00, 0.00),
(94, 302, NULL, NULL, NULL, 3.00, 3.78, 0.00, 0.00, 0.00, 0.00, 0.00, 6.78, '2018-08-25 09:14:34', '2018-08-25 09:14:34', 0.00, 0.00, 0.00, 0.00, 0.00),
(95, 306, NULL, NULL, NULL, 3.00, 5.04, 0.00, 0.00, 0.00, 0.00, 0.00, 8.04, '2018-08-25 09:42:13', '2018-08-25 09:42:13', 0.00, 0.00, 0.00, 0.00, 0.00),
(96, 308, NULL, NULL, NULL, 3.00, 32.76, 0.00, 0.00, 0.00, 0.00, 0.00, 35.76, '2018-08-26 10:08:20', '2018-08-26 10:08:20', 0.00, 0.00, 0.00, 0.00, 0.00),
(97, 309, NULL, NULL, NULL, 3.00, 15.12, 0.00, 0.00, 0.00, 0.00, 0.00, 18.12, '2018-08-26 10:10:50', '2018-08-26 10:10:50', 0.00, 0.00, 0.00, 0.00, 0.00),
(98, 311, NULL, NULL, NULL, 3.00, 2.52, 0.00, 0.00, 0.00, 0.00, 0.00, 5.52, '2018-08-27 00:16:31', '2018-08-27 00:16:31', 0.00, 0.00, 0.00, 0.00, 0.00),
(99, 312, NULL, NULL, NULL, 3.00, 1.26, 0.00, 0.00, 0.00, 0.00, 0.00, 4.26, '2018-08-28 01:43:35', '2018-08-28 01:43:35', 0.00, 0.00, 0.00, 0.00, 0.00),
(100, 323, NULL, NULL, NULL, 3.00, 5.04, 0.00, 0.00, 0.00, 0.00, 0.00, 8.04, '2018-09-05 07:43:31', '2018-09-05 07:43:31', 0.00, 0.00, 0.00, 0.00, 0.00),
(101, 325, NULL, NULL, NULL, 3.00, 7.56, 0.00, 0.00, 0.00, 0.00, 0.00, 10.56, '2018-09-08 02:27:12', '2018-09-08 02:27:12', 0.00, 0.00, 0.00, 0.00, 0.00),
(102, 326, NULL, NULL, NULL, 3.00, 7.56, 0.00, 0.00, 0.00, 0.00, 0.00, 10.56, '2018-09-08 02:28:45', '2018-09-08 02:28:45', 0.00, 0.00, 0.00, 0.00, 0.00),
(103, 327, NULL, NULL, NULL, 3.00, 8.82, 0.00, 0.00, 0.00, 0.00, 0.00, 11.82, '2018-09-08 23:46:43', '2018-09-08 23:46:43', 0.00, 0.00, 0.00, 0.00, 0.00),
(104, 335, NULL, NULL, NULL, 3.00, 12.60, 0.00, 0.00, 0.00, 0.00, 0.00, 15.60, '2018-09-10 07:50:01', '2018-09-10 07:50:01', 0.00, 0.00, 0.00, 0.00, 0.00),
(105, 336, NULL, NULL, NULL, 3.00, 10.08, 0.00, 0.00, 0.00, 0.00, 0.00, 13.08, '2018-09-10 21:57:00', '2018-09-10 21:57:00', 0.00, 0.00, 0.00, 0.00, 0.00),
(106, 338, NULL, NULL, NULL, 3.00, 12.60, 0.00, 0.00, 0.00, 0.00, 0.00, 15.60, '2018-09-10 23:09:59', '2018-09-10 23:09:59', 0.00, 0.00, 0.00, 0.00, 0.00),
(107, 339, NULL, NULL, NULL, 3.00, 5.04, 0.00, 0.00, 0.00, 0.00, 0.00, 8.04, '2018-09-11 04:14:21', '2018-09-11 04:14:21', 0.00, 0.00, 0.00, 0.00, 0.00),
(108, 340, NULL, NULL, NULL, 3.00, 7.56, 0.00, 0.00, 0.00, 0.00, 0.00, 10.56, '2018-09-13 15:49:34', '2018-09-13 15:49:34', 0.00, 0.00, 0.00, 0.00, 0.00),
(109, 342, NULL, NULL, NULL, 3.00, 8.82, 0.00, 0.00, 0.00, 0.00, 0.00, 11.82, '2018-09-14 04:58:34', '2018-09-14 04:58:34', 0.00, 0.00, 0.00, 0.00, 0.00),
(110, 344, NULL, NULL, NULL, 5.00, 13.20, 0.18, 0.00, 0.00, 0.00, 0.00, 18.20, '2018-09-18 23:43:57', '2018-09-18 23:43:57', 0.00, 0.00, 0.00, 0.00, 0.00),
(111, 345, NULL, NULL, NULL, 5.00, 0.00, 0.05, 0.00, 0.00, 0.00, 0.00, 5.00, '2018-09-18 23:45:19', '2018-09-18 23:45:19', 0.00, 0.00, 0.00, 0.00, 0.00),
(112, 346, NULL, NULL, NULL, 5.00, 13.20, 0.18, 0.00, 0.00, 0.00, 0.00, 18.20, '2018-09-18 23:47:47', '2018-09-18 23:47:47', 0.00, 0.00, 0.00, 0.00, 0.00),
(113, 347, NULL, NULL, NULL, 5.00, 0.00, 0.05, 0.00, 0.00, 0.00, 0.00, 5.00, '2018-09-18 23:57:37', '2018-09-18 23:57:37', 0.00, 0.00, 0.00, 0.00, 0.00),
(114, 349, NULL, NULL, NULL, 5.00, 23.76, 0.29, 0.00, 0.00, 0.00, 0.00, 28.76, '2018-09-19 20:51:59', '2018-09-19 20:51:59', 0.00, 0.00, 0.00, 0.00, 0.00),
(115, 350, NULL, NULL, NULL, 3.00, 3.78, 0.07, 0.00, 0.00, 0.00, 0.00, 6.78, '2018-09-19 23:39:43', '2018-09-19 23:39:43', 0.00, 0.00, 0.00, 0.00, 0.00),
(116, 350, NULL, NULL, NULL, 3.00, 3.78, 0.07, 0.00, 0.00, 0.00, 0.00, 6.78, '2018-09-19 23:39:47', '2018-09-19 23:39:47', 0.00, 0.00, 0.00, 0.00, 0.00),
(117, 351, NULL, NULL, NULL, 3.00, 2.52, 0.06, 0.00, 0.00, 0.00, 0.00, 5.52, '2018-09-20 05:55:58', '2018-09-20 05:55:58', 0.00, 0.00, 0.00, 0.00, 0.00),
(118, 354, NULL, NULL, NULL, 3.00, 20.16, 0.23, 0.00, 0.00, 0.00, 0.00, 23.16, '2018-09-22 20:35:17', '2018-09-22 20:35:17', 0.00, 0.00, 0.00, 0.00, 0.00),
(119, 355, NULL, NULL, NULL, 3.00, 39.06, 0.42, 0.00, 0.00, 0.00, 0.00, 42.06, '2018-09-23 14:45:45', '2018-09-23 14:45:45', 0.00, 0.00, 0.00, 0.00, 0.00),
(120, 356, NULL, NULL, NULL, 3.00, 28.98, 0.32, 0.00, 0.00, 0.00, 0.00, 31.98, '2018-10-29 06:32:08', '2018-10-29 06:32:08', 0.00, 0.00, 0.00, 0.00, 0.00),
(121, 357, NULL, NULL, NULL, 3.00, 25.20, 0.28, 0.00, 0.00, 0.00, 0.00, 28.20, '2018-10-29 07:06:34', '2018-10-29 07:06:34', 0.00, 0.00, 0.00, 0.00, 0.00),
(122, 357, NULL, NULL, NULL, 3.00, 25.20, 0.28, 0.00, 0.00, 0.00, 0.00, 28.20, '2018-10-29 07:06:40', '2018-10-29 07:06:40', 0.00, 0.00, 0.00, 0.00, 0.00),
(123, 358, NULL, NULL, NULL, 3.00, 8.82, 0.12, 0.00, 0.00, 0.00, 0.00, 11.82, '2018-10-30 20:16:13', '2018-10-30 20:16:13', 0.00, 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `user_request_ratings`
--

CREATE TABLE `user_request_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `user_rating` int(11) NOT NULL DEFAULT 0,
  `provider_rating` int(11) NOT NULL DEFAULT 0,
  `user_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_request_ratings`
--

INSERT INTO `user_request_ratings` (`id`, `request_id`, `user_id`, `provider_id`, `user_rating`, `provider_rating`, `user_comment`, `provider_comment`, `created_at`, `updated_at`) VALUES
(1, 1, 113, 114, 1, 1, '', '', '2018-01-27 08:41:02', '2018-01-27 08:46:31'),
(2, 3, 113, 114, 5, 1, '', '', '2018-01-27 08:49:40', '2018-01-27 08:49:58'),
(3, 4, 111, 115, 5, 5, '', '', '2018-01-28 06:41:07', '2018-01-28 06:42:46'),
(4, 13, 113, 114, 5, 5, 'good', 'k', '2018-02-01 18:59:59', '2018-02-01 19:00:09'),
(5, 15, 117, 116, 5, 5, 'lovely ride', '', '2018-02-03 13:00:39', '2018-02-03 13:00:59'),
(6, 19, 117, 116, 5, 5, 'lovely ', 'lovely ride', '2018-02-03 13:18:56', '2018-02-03 13:19:12'),
(7, 20, 117, 116, 5, 5, '', '', '2018-02-03 16:23:04', '2018-02-03 16:23:10'),
(8, 23, 117, 116, 5, 5, '', '', '2018-02-04 11:10:00', '2018-02-04 11:10:07'),
(9, 27, 121, 116, 5, 5, '', '', '2018-02-19 09:33:17', '2018-02-19 09:33:21'),
(10, 29, 121, 116, 5, 5, '', '', '2018-02-20 05:37:04', '2018-02-20 05:37:16'),
(11, 30, 121, 116, 5, 5, '', '', '2018-02-21 07:58:39', '2018-02-21 07:58:43'),
(12, 33, 121, 119, 5, 5, '', '', '2018-02-23 09:08:11', '2018-02-23 09:08:12'),
(13, 35, 113, 114, 1, 5, '', '', '2018-02-24 07:08:25', '2018-02-24 07:08:31'),
(14, 36, 113, 116, 5, 5, '', '', '2018-02-24 07:27:40', '2018-02-24 07:27:47'),
(15, 37, 113, 116, 5, 5, '', '', '2018-02-24 09:47:50', '2018-02-24 09:47:55'),
(16, 41, 121, 116, 5, 5, '', 'Thank you!', '2018-02-28 14:53:55', '2018-02-28 14:54:17'),
(17, 48, 113, 119, 5, 5, 'loo', 'good looking man mashallah ', '2018-03-03 05:38:12', '2018-03-03 05:38:14'),
(18, 50, 113, 116, 5, 5, '', '', '2018-03-03 19:29:43', '2018-03-03 19:30:01'),
(19, 51, 113, 116, 5, 5, '', '', '2018-03-04 09:21:23', '2018-03-04 09:21:32'),
(20, 53, 113, 114, 5, 5, '', '', '2018-03-06 01:33:04', '2018-03-06 01:33:11'),
(21, 59, 126, 114, 5, 5, '', '', '2018-03-06 04:58:51', '2018-03-06 04:59:20'),
(22, 60, 126, 114, 5, 5, '', '', '2018-03-06 17:24:35', '2018-03-07 01:21:47'),
(23, 63, 113, 114, 1, 1, '', '', '2018-03-06 23:04:11', '2018-03-06 23:04:25'),
(24, 65, 113, 114, 5, 5, '', '', '2018-03-07 01:27:56', '2018-03-07 02:14:46'),
(25, 66, 126, 114, 5, 5, '', '', '2018-03-07 16:28:15', '2018-03-08 04:56:21'),
(26, 67, 128, 116, 5, 5, '', 'thanks ', '2018-03-07 17:23:44', '2018-03-07 17:23:49'),
(27, 68, 126, 114, 5, 5, '', 'fhf', '2018-03-08 04:59:31', '2018-03-08 05:03:06'),
(28, 70, 126, 114, 5, 5, '', 'bvjjvj', '2018-03-08 05:08:02', '2018-03-08 05:08:07'),
(29, 73, 126, 114, 5, 5, '', '', '2018-03-08 05:15:27', '2018-03-08 05:15:39'),
(30, 77, 129, 116, 1, 1, 'ugly ', '', '2018-03-08 09:52:39', '2018-03-08 09:53:20'),
(31, 78, 121, 116, 5, 5, '', '', '2018-03-08 14:14:52', '2018-03-08 14:14:58'),
(32, 79, 113, 114, 5, 5, '', '', '2018-03-09 01:43:52', '2018-03-09 02:00:14'),
(33, 81, 128, 116, 5, 5, '', '', '2018-03-09 04:30:49', '2018-03-09 04:30:52'),
(34, 86, 128, 116, 5, 5, '', '', '2018-03-12 05:37:31', '2018-03-12 05:37:34'),
(35, 89, 128, 116, 5, 5, 'great ', '', '2018-03-12 12:36:07', '2018-03-12 12:36:35'),
(36, 91, 128, 116, 5, 5, '', '', '2018-03-16 12:23:22', '2018-03-16 12:23:24'),
(37, 93, 113, 123, 1, 5, ' ccc', '', '2018-03-20 05:24:13', '2018-03-20 05:25:08'),
(38, 94, 113, 123, 1, 5, '', 'bzbzbsbbzhshsh', '2018-03-20 05:30:36', '2018-03-20 05:30:54'),
(39, 95, 128, 116, 5, 5, '', '', '2018-03-20 06:08:26', '2018-03-20 06:08:30'),
(40, 96, 128, 116, 5, 5, '', '', '2018-03-20 07:53:05', '2018-03-20 07:53:11'),
(41, 97, 128, 116, 5, 5, '', '', '2018-03-20 09:11:31', '2018-03-20 09:12:04'),
(42, 98, 128, 116, 5, 5, '', '', '2018-03-21 09:22:03', '2018-03-21 09:22:41'),
(43, 99, 128, 116, 5, 5, '', '', '2018-03-21 14:58:52', '2018-03-21 14:58:54'),
(44, 100, 113, 114, 1, 1, '', '', '2018-03-22 20:25:52', '2018-03-22 20:26:15'),
(45, 103, 113, 114, 5, 4, '', '', '2018-03-23 18:26:11', '2018-03-23 18:26:29'),
(46, 104, 128, 116, 5, 5, '', '', '2018-03-24 17:11:07', '2018-03-24 17:11:16'),
(47, 105, 128, 116, 5, 5, '', '', '2018-03-26 01:23:46', '2018-03-26 01:23:53'),
(48, 112, 113, 114, 1, 1, '', '', '2018-03-27 00:36:32', '2018-03-27 00:40:43'),
(49, 113, 113, 114, 1, 1, '', '', '2018-03-27 00:41:22', '2018-03-27 00:41:25'),
(50, 130, 129, 114, 1, 3, '', '', '2018-03-28 00:00:05', '2018-03-28 00:00:14'),
(51, 131, 129, 114, 4, 3, '', '', '2018-03-28 00:02:09', '2018-03-28 00:14:22'),
(52, 132, 129, 114, 1, 1, '', '', '2018-03-28 00:46:07', '2018-03-28 00:46:14'),
(53, 133, 129, 114, 1, 1, '', '', '2018-03-28 00:48:14', '2018-03-28 00:58:56'),
(54, 140, 113, 114, 1, 5, '', '', '2018-03-28 02:22:57', '2018-03-28 02:23:07'),
(55, 141, 113, 114, 1, 1, '', '', '2018-03-28 02:24:58', '2018-03-28 02:40:34'),
(56, 209, 113, 114, 1, 1, '', '', '2018-03-28 08:42:57', '2018-03-28 08:43:02'),
(57, 210, 113, 114, 1, 1, '', '', '2018-03-28 08:48:38', '2018-03-28 08:48:47'),
(58, 211, 113, 114, 0, 1, NULL, '', '2018-03-28 09:10:36', '2018-03-28 09:10:36'),
(59, 227, 113, 114, 0, 1, NULL, '', '2018-04-03 09:32:53', '2018-04-03 09:32:53'),
(60, 230, 113, 114, 1, 1, '', '', '2018-04-07 03:17:06', '2018-04-07 03:17:11'),
(61, 231, 113, 114, 5, 5, '', '', '2018-04-10 00:55:13', '2018-04-10 02:00:07'),
(62, 232, 113, 114, 5, 1, '', '', '2018-04-10 22:13:49', '2018-04-12 02:49:03'),
(63, 233, 128, 116, 5, 5, '', '', '2018-04-11 09:48:02', '2018-04-11 09:48:06'),
(64, 234, 128, 116, 5, 5, '', '', '2018-04-14 13:57:25', '2018-04-14 13:57:33'),
(65, 240, 116, 116, 5, 5, '', '', '2018-04-20 02:28:32', '2018-04-20 02:28:38'),
(66, 241, 116, 116, 5, 5, '', '', '2018-04-20 04:47:55', '2018-04-20 04:48:15'),
(67, 244, 113, 114, 5, 5, '', '', '2018-04-21 21:03:24', '2018-04-21 21:04:06'),
(68, 245, 116, 116, 5, 5, '', '', '2018-04-21 23:09:33', '2018-04-21 23:10:02'),
(69, 247, 149, 116, 5, 5, '', '', '2018-04-29 03:44:57', '2018-04-29 03:45:07'),
(70, 249, 113, 114, 0, 5, NULL, '', '2018-05-21 23:07:11', '2018-05-21 23:07:11'),
(71, 258, 153, 129, 5, 5, '', '', '2018-05-25 23:49:41', '2018-05-25 23:49:46'),
(72, 259, 154, 141, 5, 5, 'good', 'good but not expected', '2018-05-31 07:35:57', '2018-05-31 07:36:40'),
(73, 261, 113, 114, 5, 5, '', '', '2018-06-12 21:30:13', '2018-06-12 21:30:20'),
(74, 263, 128, 116, 5, 5, '', '', '2018-06-13 12:06:45', '2018-06-13 12:06:57'),
(75, 264, 129, 116, 5, 5, 'cute deiver ', '', '2018-06-15 16:38:02', '2018-06-15 16:38:20'),
(76, 276, 153, 146, 0, 5, NULL, '', '2018-07-24 19:36:46', '2018-07-24 19:36:46'),
(77, 277, 116, 116, 5, 5, '', '', '2018-07-30 09:29:07', '2018-07-30 09:29:12'),
(78, 282, 170, 160, 5, 1, '', '', '2018-08-08 00:51:34', '2018-08-08 00:51:40'),
(79, 284, 170, 160, 1, 5, '', '', '2018-08-18 09:11:17', '2018-08-18 09:11:20'),
(80, 286, 170, 160, 3, 3, '', '', '2018-08-18 11:02:06', '2018-08-18 11:02:21'),
(81, 288, 178, 160, 1, 1, '', '', '2018-08-18 11:15:16', '2018-08-18 11:15:24'),
(82, 289, 178, 160, 1, 1, '', '', '2018-08-19 00:56:29', '2018-08-19 00:56:36'),
(83, 291, 178, 160, 1, 1, '', '', '2018-08-19 10:56:48', '2018-08-19 10:56:54'),
(84, 292, 178, 160, 1, 1, '', '', '2018-08-19 10:59:04', '2018-08-20 00:13:45'),
(85, 293, 140, 160, 5, 5, '', '', '2018-08-20 09:37:03', '2018-08-20 09:37:07'),
(86, 294, 178, 160, 1, 1, '', '', '2018-08-20 10:04:28', '2018-08-20 10:04:35'),
(87, 298, 178, 163, 4, 5, '', '', '2018-08-20 10:46:01', '2018-08-20 10:46:09'),
(88, 299, 178, 163, 1, 1, '', '', '2018-08-21 04:59:02', '2018-08-21 04:59:16'),
(89, 300, 178, 163, 1, 1, '', '', '2018-08-21 10:27:09', '2018-08-21 10:27:15'),
(90, 302, 178, 160, 4, 3, '', '', '2018-08-25 09:14:56', '2018-08-25 09:15:04'),
(91, 306, 179, 164, 1, 1, '', '', '2018-08-25 09:42:56', '2018-08-25 09:43:11'),
(92, 308, 179, 164, 1, 1, '', '', '2018-08-26 10:08:40', '2018-08-26 10:08:48'),
(93, 309, 179, 164, 4, 1, '', '', '2018-08-26 10:10:58', '2018-08-26 10:11:04'),
(94, 311, 179, 164, 5, 1, 'driver is very good', '', '2018-08-27 00:16:40', '2018-08-27 00:17:10'),
(95, 312, 179, 164, 1, 1, '', '', '2018-08-28 01:44:11', '2018-08-28 01:44:23'),
(96, 323, 179, 164, 1, 1, '', '', '2018-09-05 07:44:16', '2018-09-06 02:21:27'),
(97, 325, 116, 116, 5, 5, '', '', '2018-09-08 02:27:46', '2018-09-08 02:27:48'),
(98, 326, 116, 116, 5, 5, '', '', '2018-09-08 02:28:49', '2018-09-08 02:28:56'),
(99, 327, 179, 164, 1, 3, 'تتل', '', '2018-09-08 23:47:23', '2018-09-08 23:47:44'),
(100, 335, 179, 163, 4, 1, '', '', '2018-09-10 07:50:15', '2018-09-10 07:50:35'),
(101, 336, 179, 163, 1, 5, '', '', '2018-09-10 21:57:09', '2018-09-10 21:57:23'),
(102, 338, 187, 169, 1, 1, '', '', '2018-09-10 23:10:27', '2018-09-10 23:10:31'),
(103, 339, 179, 163, 1, 3, '', '', '2018-09-11 04:14:27', '2018-09-11 04:14:35'),
(104, 340, 116, 116, 5, 5, '', '', '2018-09-13 15:49:59', '2018-09-13 15:50:01'),
(105, 342, 187, 169, 1, 1, '', ' تتاللببي', '2018-09-14 04:58:48', '2018-09-14 04:58:56'),
(106, 344, 187, 114, 5, 5, '', '', '2018-09-18 23:44:25', '2018-09-18 23:44:29'),
(107, 345, 187, 114, 5, 5, '', '', '2018-09-18 23:45:36', '2018-09-18 23:46:19'),
(108, 346, 187, 114, 5, 5, '', '', '2018-09-18 23:47:59', '2018-09-18 23:48:09'),
(109, 347, 187, 114, 5, 5, '', '', '2018-09-18 23:57:45', '2018-09-18 23:57:52'),
(110, 349, 152, 114, 4, 4, '', '', '2018-09-19 20:52:12', '2018-09-19 20:52:17'),
(111, 350, 182, 142, 5, 5, '', '', '2018-09-19 23:39:52', '2018-09-19 23:39:57'),
(112, 351, 202, 136, 0, 5, NULL, 'chevere', '2018-09-20 05:56:22', '2018-09-20 05:56:22'),
(113, 354, 205, 143, 5, 5, '', 'test', '2018-09-22 20:35:55', '2018-09-22 20:36:02'),
(114, 355, 116, 116, 5, 5, '', '', '2018-09-23 14:45:59', '2018-09-23 14:46:19'),
(115, 356, 152, 142, 5, 5, '', '', '2018-10-29 06:32:20', '2018-10-29 06:32:24'),
(116, 357, 152, 142, 5, 5, '', '', '2018-10-29 07:06:52', '2018-10-29 07:06:55'),
(117, 358, 152, 142, 1, 0, '', NULL, '2018-10-30 20:47:14', '2018-10-30 20:47:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_email_unique` (`email`);

--
-- Indexes for table `account_password_resets`
--
ALTER TABLE `account_password_resets`
  ADD KEY `account_password_resets_email_index` (`email`),
  ADD KEY `account_password_resets_token_index` (`token`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatchers`
--
ALTER TABLE `dispatchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dispatchers_email_unique` (`email`);

--
-- Indexes for table `dispatcher_password_resets`
--
ALTER TABLE `dispatcher_password_resets`
  ADD KEY `dispatcher_password_resets_email_index` (`email`),
  ADD KEY `dispatcher_password_resets_token_index` (`token`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fleets`
--
ALTER TABLE `fleets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fleets_email_unique` (`email`);

--
-- Indexes for table `fleet_password_resets`
--
ALTER TABLE `fleet_password_resets`
  ADD KEY `fleet_password_resets_email_index` (`email`),
  ADD KEY `fleet_password_resets_token_index` (`token`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode_usages`
--
ALTER TABLE `promocode_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `providers_email_unique` (`email`);

--
-- Indexes for table `provider_devices`
--
ALTER TABLE `provider_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_documents`
--
ALTER TABLE `provider_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_profiles`
--
ALTER TABLE `provider_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_services`
--
ALTER TABLE `provider_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_filters`
--
ALTER TABLE `request_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_types`
--
ALTER TABLE `service_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_requests`
--
ALTER TABLE `user_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_request_images`
--
ALTER TABLE `user_request_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_request_payments`
--
ALTER TABLE `user_request_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_request_ratings`
--
ALTER TABLE `user_request_ratings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dispatchers`
--
ALTER TABLE `dispatchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `fleets`
--
ALTER TABLE `fleets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promocode_usages`
--
ALTER TABLE `promocode_usages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `provider_devices`
--
ALTER TABLE `provider_devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `provider_documents`
--
ALTER TABLE `provider_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider_profiles`
--
ALTER TABLE `provider_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `provider_services`
--
ALTER TABLE `provider_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `request_filters`
--
ALTER TABLE `request_filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `service_types`
--
ALTER TABLE `service_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `user_requests`
--
ALTER TABLE `user_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `user_request_images`
--
ALTER TABLE `user_request_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_request_payments`
--
ALTER TABLE `user_request_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `user_request_ratings`
--
ALTER TABLE `user_request_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
