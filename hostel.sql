-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 22, 2023 at 07:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ID` varchar(100) NOT NULL,
  `DATE` date NOT NULL,
  `STATUS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ID`, `DATE`, `STATUS`) VALUES
('2022UCA1850', '2023-11-11', 'Present'),
('EMP003', '2023-11-12', 'Present'),
('2022UCA1850', '2023-11-13', 'Present'),
('2022UCA1801', '2023-11-21', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `C_ID` varchar(100) NOT NULL,
  `S_ID` varchar(100) NOT NULL,
  `ROOM` varchar(100) NOT NULL,
  `HOSTEL` varchar(100) NOT NULL,
  `TITLE` varchar(200) NOT NULL,
  `DETAILS` varchar(1000) NOT NULL,
  `PHONE` varchar(100) NOT NULL,
  `STATUS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`C_ID`, `S_ID`, `ROOM`, `HOSTEL`, `TITLE`, `DETAILS`, `PHONE`, `STATUS`) VALUES
('1', '2022UCA1849', 'A409', 'Raman', 'Hello', 'World', '9971628229', ''),
('2', '2022UCA1850', 'B304', 'Raman', '', '', '9971568229', ''),
('3', '2022UCA1850', 'B304', 'Raman', 'Washroom Cleanliness', 'Washrooms not clean', '9971568229', ''),
('4', '2022UCA1850', 'B304', 'Raman', 'Washroom Cleanliness', 'Washrooms not clean', '9971568229', '');

-- --------------------------------------------------------

--
-- Table structure for table `laundry`
--

CREATE TABLE `laundry` (
  `WM_ID` varchar(100) NOT NULL,
  `STATUS` varchar(100) NOT NULL,
  `HOSTEL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laundry`
--

INSERT INTO `laundry` (`WM_ID`, `STATUS`, `HOSTEL`) VALUES
('WM001', 'FULL', 'Raman'),
('WM002', 'FREE', 'Raman'),
('WM003', 'FULL', 'Raman'),
('WM001', 'FREE', 'JC BOSE'),
('WM002', 'FREE', 'JC BOSE'),
('WM003', 'FREE', 'JC BOSE'),
('WM001', 'FREE', 'Ramanujan'),
('WM002', 'FREE', 'Ramanujan'),
('WM003', 'FREE', 'Ramanujan'),
('WM001', 'FREE', 'Bhaskara'),
('WM002', 'FREE', 'Bhaskara'),
('WM003', 'FREE', 'Bhaskara'),
('WM001', 'FREE', 'Aryabhatta'),
('WM002', 'FREE', 'Aryabhatta'),
('WM003', 'FREE', 'Aryabhatta'),
('WM001', 'FREE', 'Alaknanda'),
('WM002', 'FREE', 'Alaknanda'),
('WM003', 'FREE', 'Alaknanda'),
('WM001', 'FREE', 'Saraswati'),
('WM002', 'FREE', 'Saraswati'),
('WM003', 'FREE', 'Saraswati'),
('WM001', 'FREE', 'Kaveri'),
('WM002', 'FREE', 'Kaveri'),
('WM003', 'FREE', 'Kaveri');

-- --------------------------------------------------------

--
-- Table structure for table `mess_absence`
--

CREATE TABLE `mess_absence` (
  `A_ID` varchar(100) NOT NULL,
  `S_ID` varchar(100) NOT NULL,
  `MEAL_TYPE` varchar(100) NOT NULL,
  `DATE` date NOT NULL,
  `HOSTEL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mess_absence`
--

INSERT INTO `mess_absence` (`A_ID`, `S_ID`, `MEAL_TYPE`, `DATE`, `HOSTEL`) VALUES
('1', '2022UCA1850', 'Lunch', '2023-11-14', 'Raman'),
('2', '2022UCA1850', 'Tomo', '2023-11-08', 'Raman'),
('3', '2022UCA1850', 'Tomo', '2023-11-08', 'Raman'),
('4', '2022UCA1850', 'BreakFast', '2023-11-15', 'Raman'),
('5', '2022UCA1850', 'Lunch', '2023-11-15', 'Raman'),
('6', '2022UCA1850', 'BreakFast', '0000-00-00', 'Raman'),
('7', '2022UCA1850', 'BreakFast', '2023-11-01', ''),
('8', '2022UCA1850', 'BreakFast', '2023-11-01', 'Raman'),
('9', '2022UCA1872', 'Lunch', '2023-11-02', 'JC BOSE'),
('10', '2022UCA1850', 'Lunch', '2023-11-15', 'Raman'),
('11', '2022UCA1850', 'BreakFast', '2023-11-17', 'Raman'),
('12', '2022UCA1850', 'BreakFast', '2023-11-17', 'Raman'),
('13', '2022UCA1801', 'Lunch', '2023-10-31', 'Bhaskara');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `R_ID` varchar(100) NOT NULL,
  `S_ID` varchar(100) NOT NULL,
  `TYPE` varchar(100) NOT NULL,
  `ROOM` varchar(10) NOT NULL,
  `HOSTEL` varchar(100) NOT NULL,
  `DETAILS` varchar(1000) DEFAULT NULL,
  `S_PHONE` varchar(100) NOT NULL,
  `STATUS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`R_ID`, `S_ID`, `TYPE`, `ROOM`, `HOSTEL`, `DETAILS`, `S_PHONE`, `STATUS`) VALUES
('1', '2022UCA1850', 'Housekeeping', 'B304', 'Raman', 'Clean My room', '9971568229', ''),
('2', '2022UCA1801', 'Maintenance', 'A102', 'Bhaskara', 'Fix my fan', '9918728829', '');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `SG_ID` varchar(100) NOT NULL,
  `S_ID` varchar(100) NOT NULL,
  `HOSTEL` varchar(100) NOT NULL,
  `SUGGEST` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`SG_ID`, `S_ID`, `HOSTEL`, `SUGGEST`) VALUES
('1', 'EMP003', 'Raman', 'Food can be better'),
('2', '2022UCA1850', 'Raman', 'Food can be better'),
('3', '2022UCA1801', 'Bhaskara', 'dfgtyhuj');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USERNAME` varchar(12) NOT NULL,
  `TYPE` varchar(100) NOT NULL,
  `HOSTEL` varchar(100) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `ROOM` varchar(10) DEFAULT NULL,
  `PHONE` varchar(15) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `COMMENT` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USERNAME`, `TYPE`, `HOSTEL`, `NAME`, `ROOM`, `PHONE`, `PASSWORD`, `COMMENT`) VALUES
('2022UCA1801', 'Student', 'Bhaskara', 'Aditya', 'A102', '9918728829', '1234', ''),
('2022UCA1843', 'Student', 'Raman', 'Mitansh Sharma', 'A111', '9987652668', '1010', NULL),
('2022UCA1849', 'Student', 'Raman', 'Chaitanya Yadav', 'A409', '9971628229', '5678', NULL),
('2022UCA1850', 'Student', 'Raman', 'Tanmay Pawar', 'B304', '9971568229', '1234', NULL),
('2022UCA1872', 'Student', 'JC BOSE', 'Test', 'A262', '999', '9999', ''),
('EMP001', 'Staff-Housekeeping/Maintenance', 'Raman', 'Ramesh Kumar', 'A101', '8167829965', '0001', NULL),
('EMP002', 'Staff-Housekeeping/Maintenance', 'Raman', 'Vikram Singla', '', '8816729883', '0000', ''),
('EMP003', 'Staff-Admin', 'Raman', 'Vardhan Mishra', 'A101', '9918273668', 'Hello', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USERNAME`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
