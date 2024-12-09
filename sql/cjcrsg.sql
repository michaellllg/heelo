-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 08:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cjcrsg`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountinfo`
--

CREATE TABLE `accountinfo` (
  `accountID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` int(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp(),
  `life_stage` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `activation_token` varchar(255) DEFAULT NULL,
  `otp_code` varchar(6) DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accountinfo`
--

INSERT INTO `accountinfo` (`accountID`, `memberID`, `email`, `password`, `phone`, `address`, `dateCreated`, `lastUpdated`, `life_stage`, `image`, `is_active`, `activation_token`, `otp_code`, `otp_expiry`) VALUES
(1, 1, 'hazel@gmail.com', '12345', 214712, 'San Bartolomes', '2024-12-07 14:04:37', '2024-11-22 12:30:51', 'College Student', 'Manlangit,Michael N. Birthcert.jpg', 1, NULL, NULL, NULL),
(2, 2, 'diana@gmail.com', '12345', 2147483647, 'San Roquess', '2024-12-07 05:19:00', '2024-11-22 13:51:58', 'Professional', 'bibleverse.png', 1, NULL, NULL, NULL),
(3, 3, 'ashley@gmail.com', '12345', 2147483647, 'Alaminos', '2024-12-07 05:19:03', '2024-11-22 13:59:39', 'College Student', 'qrcode.png', 1, NULL, NULL, NULL),
(4, 4, 'mnm@gmail.com', '12345', 2147483647, 'San Roque', '2024-12-07 05:19:06', '2024-11-23 08:29:34', 'College Student', 'QR_Code_001.png', 1, NULL, NULL, NULL),
(5, 5, 'onini@gmail.com', '12345', 2147483647, 'santiago', '2024-12-07 05:19:09', '2024-11-28 08:09:25', 'College Student', 'tyron.jpg', 1, NULL, NULL, NULL),
(49, 50, 'nacionm007@gmail.com', '12345', 0, '', '2024-12-08 05:27:55', '2024-12-07 12:13:31', NULL, NULL, 1, NULL, NULL, NULL),
(50, 51, 'manlangitn07@gmail.com', 'michaelw3r', 2323, 'San Roques', '2024-12-08 04:18:20', '2024-12-08 04:11:56', 'College Student', 'tyron.jpg', 1, NULL, '711792', '2024-12-08 05:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `accountrole`
--

CREATE TABLE `accountrole` (
  `accRoleID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accountrole`
--

INSERT INTO `accountrole` (`accRoleID`, `memberID`, `roleID`, `dateCreated`) VALUES
(1, 1, 1, '2024-11-22 12:30:51'),
(2, 2, 1, '2024-11-22 13:51:58'),
(3, 3, 1, '2024-11-22 13:59:39'),
(4, 4, 2, '2024-12-05 14:13:26'),
(5, 5, 3, '2024-11-28 08:09:25'),
(42, 50, 2, '2024-12-07 12:13:31'),
(43, 51, 2, '2024-12-08 04:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `atten_id` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`atten_id`, `memberID`, `date`) VALUES
(1, 1, '2024-01-01 05:49:17'),
(2, 2, '2024-12-01 05:49:28'),
(3, 3, '2024-12-15 05:49:39'),
(4, 6, '2024-11-03 06:08:01'),
(5, 5, '2024-12-07 06:17:00'),
(6, 3, '2024-12-22 14:50:59'),
(7, 1, '2024-12-08 15:08:38'),
(8, 1, '2024-12-01 07:40:51'),
(9, 3, '2024-12-01 07:40:59'),
(10, 1, '2024-12-15 14:05:24'),
(11, 1, '2024-12-06 11:36:31'),
(12, 2, '2024-12-06 12:13:59'),
(13, 1, '2024-12-07 07:10:05'),
(14, 4, '2024-12-07 14:15:18'),
(15, 2, '2024-12-08 04:33:29'),
(16, 3, '2024-12-08 04:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberID`, `name`, `status`, `dateCreated`, `lastUpdated`) VALUES
(1, 'Hazel Anne Malitig', 'Inactive', '2024-11-22 12:30:51', '2024-12-01 08:57:11'),
(2, 'Diana Hernandez', 'Inactive', '2024-11-22 13:51:58', '2024-11-30 02:52:19'),
(3, 'Ashley Garcia', 'Inactive', '2024-11-22 13:59:39', '2024-11-30 02:25:32'),
(4, 'Michael Nacion', 'Inactive', '2024-11-23 08:29:34', '2024-12-01 13:23:54'),
(5, 'Kenneth Onan', 'Active', '2024-11-28 08:09:25', '2024-11-28 12:05:43'),
(6, 'Kb Ventolina', 'Inactive', '2024-11-28 10:00:36', '2024-11-28 10:01:53'),
(48, 'maricar panganiban', 'Active', '2024-12-07 09:11:54', '2024-12-07 09:11:54'),
(49, 'Tuna', 'Active', '2024-12-07 09:31:42', '2024-12-07 09:31:42'),
(50, 'Ashley Garcia', 'Active', '2024-12-07 12:13:31', '2024-12-07 12:13:31'),
(51, 'Michael N. Manlangit', 'Active', '2024-12-08 04:11:56', '2024-12-08 04:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleID` int(11) NOT NULL,
  `roletype` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleID`, `roletype`) VALUES
(1, 'Admin'),
(2, 'Member'),
(3, 'Visitor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountinfo`
--
ALTER TABLE `accountinfo`
  ADD PRIMARY KEY (`accountID`),
  ADD KEY `memberID` (`memberID`),
  ADD KEY `idx_email` (`email`);

--
-- Indexes for table `accountrole`
--
ALTER TABLE `accountrole`
  ADD PRIMARY KEY (`accRoleID`),
  ADD KEY `roleID` (`roleID`),
  ADD KEY `memberID` (`memberID`),
  ADD KEY `idx_memberID` (`memberID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`atten_id`),
  ADD KEY `memberID` (`memberID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountinfo`
--
ALTER TABLE `accountinfo`
  MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `accountrole`
--
ALTER TABLE `accountrole`
  MODIFY `accRoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `atten_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accountinfo`
--
ALTER TABLE `accountinfo`
  ADD CONSTRAINT `accountinfo_ibfk_1` FOREIGN KEY (`memberID`) REFERENCES `member` (`memberID`);

--
-- Constraints for table `accountrole`
--
ALTER TABLE `accountrole`
  ADD CONSTRAINT `accountrole_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `role` (`roleID`),
  ADD CONSTRAINT `accountrole_ibfk_2` FOREIGN KEY (`memberID`) REFERENCES `member` (`memberID`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`memberID`) REFERENCES `member` (`memberID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
