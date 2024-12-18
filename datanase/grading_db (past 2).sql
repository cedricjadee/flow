-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 06:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grading_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_tb`
--

CREATE TABLE `acc_tb` (
  `a_id` int(50) NOT NULL,
  `a_fn` varchar(50) DEFAULT NULL,
  `a_email` varchar(50) DEFAULT NULL,
  `a_password` varchar(250) DEFAULT NULL,
  `a_type` enum('staff','student','admin') DEFAULT NULL,
  `a_grade` varchar(50) DEFAULT NULL,
  `a_gender` varchar(50) DEFAULT NULL,
  `a_age` int(50) DEFAULT NULL,
  `a_pc` varchar(50) DEFAULT NULL,
  `a_pcn` varchar(50) DEFAULT NULL,
  `a_image` varchar(50) DEFAULT NULL,
  `a_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acc_tb`
--

INSERT INTO `acc_tb` (`a_id`, `a_fn`, `a_email`, `a_password`, `a_type`, `a_grade`, `a_gender`, `a_age`, `a_pc`, `a_pcn`, `a_image`, `a_status`) VALUES
(1, 'Jhude Rubio', 'jhuderubio@gmail.com', '$2y$10$13wS.B0KhJnZm8c.Pkz.cOZaldhllNljzT2KvtTraItjaxaFmMzGW', 'staff', '123', 'male', 123, '123', '123', '123', 'active'),
(2, 'alfred', 'alfred@gmail.com', '$2y$10$JaP655xNgimMcwKGjxEgeu2iHlj0A0jiea/9LMjnAoWuaI.nCeU9y', 'admin', '123', 'male', 123, '123', '123', '123', 'active'),
(3, 'kim', 'kim@gmail.com', '$2y$10$J2lkZSG2QVDpYyhP59EVrO1OxnxX28izUbSrQDu8J98UbblFn3Zou', 'student', '123', 'male', 123, '123', '123', '213', 'active'),
(4, 'jade', 'jade@gmail.com', '$2y$10$z2kN7nEczIbWF50t058pIe10MWEq7txBfpyGd97ZFkokSrPSie4ly', 'student', '213', 'male', 123, '123', '123', '123', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `appeal_tb`
--

CREATE TABLE `appeal_tb` (
  `ap_id` int(11) NOT NULL,
  `ap_message` longtext NOT NULL,
  `ap_status` varchar(50) NOT NULL,
  `a_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appeal_tb`
--

INSERT INTO `appeal_tb` (`ap_id`, `ap_message`, `ap_status`, `a_id`) VALUES
(1, 'yawa', 'Accepted', 1),
(2, 'diko kadawat grabi dakoa jud sa akong grado tapos ', 'Accepted', 2),
(3, 'yati jud oy', 'Declined', 3),
(4, 'diko musoghot asdlaskndklasndlkasndlkadlknaslkdnas', 'Declined', 4);

-- --------------------------------------------------------

--
-- Table structure for table `grades_tb`
--

CREATE TABLE `grades_tb` (
  `g_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `g_science1` double DEFAULT NULL,
  `g_science2` double DEFAULT NULL,
  `g_science3` double DEFAULT NULL,
  `g_science4` double DEFAULT NULL,
  `g_math1` double DEFAULT NULL,
  `g_math2` double DEFAULT NULL,
  `g_math3` double DEFAULT NULL,
  `g_math4` double DEFAULT NULL,
  `g_programming1` double DEFAULT NULL,
  `g_programming2` double DEFAULT NULL,
  `g_programming3` double DEFAULT NULL,
  `g_programming4` double NOT NULL,
  `g_reed1` double DEFAULT NULL,
  `g_reed2` double DEFAULT NULL,
  `g_reed3` double DEFAULT NULL,
  `g_reed4` double DEFAULT NULL,
  `g_prelim` double DEFAULT NULL,
  `g_midterm` double DEFAULT NULL,
  `g_prefinal` double DEFAULT NULL,
  `g_final` double DEFAULT NULL,
  `g_total` double DEFAULT NULL,
  `g_1` double DEFAULT NULL,
  `g_2` double DEFAULT NULL,
  `g_3` double DEFAULT NULL,
  `g_4` double DEFAULT NULL,
  `g_asd1` double DEFAULT NULL,
  `g_asd2` double DEFAULT NULL,
  `g_asd3` double DEFAULT NULL,
  `g_asd4` double DEFAULT NULL,
  `g_atay1` double DEFAULT NULL,
  `g_atay2` double DEFAULT NULL,
  `g_atay3` double DEFAULT NULL,
  `g_atay4` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades_tb`
--

INSERT INTO `grades_tb` (`g_id`, `a_id`, `g_science1`, `g_science2`, `g_science3`, `g_science4`, `g_math1`, `g_math2`, `g_math3`, `g_math4`, `g_programming1`, `g_programming2`, `g_programming3`, `g_programming4`, `g_reed1`, `g_reed2`, `g_reed3`, `g_reed4`, `g_prelim`, `g_midterm`, `g_prefinal`, `g_final`, `g_total`, `g_1`, `g_2`, `g_3`, `g_4`, `g_asd1`, `g_asd2`, `g_asd3`, `g_asd4`, `g_atay1`, `g_atay2`, `g_atay3`, `g_atay4`) VALUES
(1, 1, 1.9, NULL, NULL, NULL, 1.4, NULL, NULL, NULL, 1.3, NULL, NULL, 0, 1.3, NULL, NULL, NULL, 1.4749999999999999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 90, 89, 1.9, 3, 90, 75, 1.8, 1.4, 90, 87, 1.7, 1.2, 90, 88, 1.6, 2, 90, 84.75, 1.75, 1.9000000000000001, 36.045, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1.9, 1.5, 2.5, 2.3, 1.8, 1.4, 1.8, 2.3, 1.7, 1.3, 2, 2, 1.6, 1.2, 3.1, 1.6, 1.75, 1.35, 2.35, 2.05, 1.94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_tb`
--

CREATE TABLE `notification_tb` (
  `n_id` int(11) NOT NULL,
  `ap_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `n_description` varchar(50) NOT NULL,
  `n_createdAt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification_tb`
--

INSERT INTO `notification_tb` (`n_id`, `ap_id`, `a_id`, `n_description`, `n_createdAt`) VALUES
(1, 1, 1, 'Your appeal has been approved', ''),
(2, 2, 2, 'Your appeal has been approved', ''),
(3, 3, 3, 'Your appeal has been disapproved', ''),
(4, 4, 4, 'Your appeal has been disapproved', '');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_tb`
--

CREATE TABLE `subjects_tb` (
  `sub_id` int(11) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `sub_code` varchar(50) NOT NULL,
  `sub_createdAt` varchar(50) NOT NULL,
  `a_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects_tb`
--

INSERT INTO `subjects_tb` (`sub_id`, `sub_name`, `sub_code`, `sub_createdAt`, `a_id`, `g_id`) VALUES
(1, 'asd', 'asd', '', 1, 1),
(2, 'atay', 'atay', '2024-12-13 22:09:34', 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_tb`
--
ALTER TABLE `acc_tb`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `appeal_tb`
--
ALTER TABLE `appeal_tb`
  ADD PRIMARY KEY (`ap_id`),
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `grades_tb`
--
ALTER TABLE `grades_tb`
  ADD PRIMARY KEY (`g_id`),
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `notification_tb`
--
ALTER TABLE `notification_tb`
  ADD PRIMARY KEY (`n_id`),
  ADD KEY `ap_id` (`ap_id`),
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `subjects_tb`
--
ALTER TABLE `subjects_tb`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `a_id` (`a_id`),
  ADD KEY `g_id` (`g_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_tb`
--
ALTER TABLE `acc_tb`
  MODIFY `a_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `appeal_tb`
--
ALTER TABLE `appeal_tb`
  MODIFY `ap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `grades_tb`
--
ALTER TABLE `grades_tb`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notification_tb`
--
ALTER TABLE `notification_tb`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects_tb`
--
ALTER TABLE `subjects_tb`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appeal_tb`
--
ALTER TABLE `appeal_tb`
  ADD CONSTRAINT `appeal_tb_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `acc_tb` (`a_id`);

--
-- Constraints for table `grades_tb`
--
ALTER TABLE `grades_tb`
  ADD CONSTRAINT `grades_tb_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `acc_tb` (`a_id`);

--
-- Constraints for table `notification_tb`
--
ALTER TABLE `notification_tb`
  ADD CONSTRAINT `notification_tb_ibfk_1` FOREIGN KEY (`ap_id`) REFERENCES `appeal_tb` (`ap_id`),
  ADD CONSTRAINT `notification_tb_ibfk_2` FOREIGN KEY (`a_id`) REFERENCES `acc_tb` (`a_id`);

--
-- Constraints for table `subjects_tb`
--
ALTER TABLE `subjects_tb`
  ADD CONSTRAINT `subjects_tb_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `acc_tb` (`a_id`),
  ADD CONSTRAINT `subjects_tb_ibfk_2` FOREIGN KEY (`g_id`) REFERENCES `grades_tb` (`g_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
