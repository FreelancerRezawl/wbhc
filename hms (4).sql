-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 09, 2024 at 03:54 PM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '30-10-2022 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 500, '2022-11-10', '12:45 PM', '2022-11-06 12:21:48', 1, 0, '2022-11-06 12:23:35'),
(2, 'ENT', 1, 2, 500, '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 0, '2023-12-14 19:46:13'),
(3, 'ENT', 1, 1, 500, '2023-12-12', '12:45 AM', '2023-12-14 18:42:25', 1, 0, '2023-12-14 19:46:36'),
(4, 'ENT', 1, 7, 500, '2023-12-18', '3:15 AM', '2023-12-14 21:10:56', 1, 0, '2023-12-25 14:28:11'),
(5, 'ENT', 1, 7, 500, '2023-12-18', '3:15 AM', '2023-12-14 21:11:55', 1, 1, NULL),
(6, 'ENT', 1, 7, 500, '2023-12-19', '2:15 PM', '2023-12-22 08:14:00', 1, 1, NULL),
(7, 'ENT', 1, 10, 500, '2023-12-23', '10:45 PM', '2023-12-25 16:38:53', 1, 1, NULL),
(8, 'Anesthesiology', 4, 7, 500, '2024-01-18', '9:45 AM', '2024-01-04 15:40:18', 1, 0, '2024-01-05 06:02:29'),
(9, 'Anesthesiology', 4, 4, 500, '2024-01-17', '12:15 PM', '2024-01-05 06:03:21', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` text DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(4, 'Anesthesiology', 'Dr. Shah Muhammad Ali', 'Square Hospital, Panthapath', '500', '123456789', 'dr.shahmuhammadali@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-01-04 15:26:42', NULL),
(5, 'Anesthesiology', 'Dr. Bhabesh Chandra Mondal', 'Square Hospital, Panthapath', '400', '', 'dr.bhabeshchandramondal@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-01-04 15:28:39', NULL),
(6, 'Anesthesiology', 'Dr. Quamrul Islam', 'Square Hospital, Panthapath', '500', '', 'dr.quamrulislam@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-01-04 15:30:13', NULL),
(7, 'Cardiology', 'Prof. Dr. Mohammed Habibullah', 'National Institute of Cardiovascular Diseases ()', '500', '', 'prof.dr.mohammedhabibullah@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2024-01-04 15:33:35', NULL),
(8, 'Dermatology', 'Prof. Dr. Md. Shaheen Reza', 'Square Hospitals Ltd. ()', '500', '', 'aaarr@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-01-04 15:35:26', NULL),
(9, 'Cardiology', 'Dr. Shah Muhammad Ali', 'Dhaka', '500', '', 'testdoctor@gmail.com', '29a256b86c56390abe3955effa23b62c', '2024-01-08 08:40:41', NULL),
(10, 'Dermatology', 'Dr. Quamrul Islam new', 'HHH', '500', '', 'testdocto@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-01-08 16:21:45', NULL),
(11, 'Anesthesiology', 'xxxxx', 'xxxxxxx', '500', '', 'xxxx@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-01-08 16:23:16', NULL),
(12, 'Anesthesiology', 'Dr. Shah Muhammad Ali', 'Dhaka', '700', '', 'testdoctr@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-01-09 13:11:22', NULL),
(13, 'Anesthesiology', 'KOWSAR CHOWDHURY', 'Chowdory para, Citissory\r\nMirzapur', '500', '01751327900', 'sd@gmail.com', '12345678', '2024-01-09 14:40:05', '2024-01-09 14:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-12-14 19:27:06', NULL, 1),
(28, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-12-14 19:40:07', NULL, 1),
(29, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-12-22 08:15:46', NULL, 1),
(30, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-12-25 13:55:17', NULL, 0),
(31, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-12-25 13:56:06', '08-01-2024 03:04:29 AM', 1),
(32, 4, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-04 15:42:37', NULL, 1),
(33, NULL, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-04 16:14:36', NULL, 0),
(34, 4, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-04 16:15:08', NULL, 1),
(35, 4, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-04 16:27:25', NULL, 1),
(36, 4, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-04 16:45:29', NULL, 1),
(37, 4, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-05 05:31:18', NULL, 1),
(38, 4, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-05 13:00:28', NULL, 1),
(39, 4, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-07 16:21:37', '07-01-2024 10:02:35 PM', 1),
(40, 4, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-08 05:17:28', '08-01-2024 10:53:25 AM', 1),
(41, 4, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-08 13:04:20', NULL, 1),
(42, 4, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-08 13:38:01', NULL, 1),
(43, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-01-08 16:47:57', NULL, 0),
(44, NULL, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-09 13:10:03', NULL, 0),
(45, 12, 'testdoctr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-09 13:11:56', NULL, 1),
(46, 12, 'testdoctr@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-09 13:16:23', NULL, 1),
(47, NULL, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-09 13:32:40', NULL, 0),
(48, 4, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-09 13:32:49', NULL, 1),
(49, 4, 'dr.shahmuhammadali@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-09 13:50:54', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(18, 'Anesthesiology', '2024-01-04 15:14:06', NULL),
(19, 'Cardiology', '2024-01-04 15:14:31', NULL),
(20, 'Dermatology', '2024-01-04 15:14:39', NULL),
(21, 'Emergency Medicine', '2024-01-04 15:14:51', NULL),
(22, 'Endocrinology', '2024-01-04 15:15:01', NULL),
(23, 'Anesthesiology', '2024-01-06 14:37:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `file_contents` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fileup`
--

CREATE TABLE `fileup` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fileup`
--

INSERT INTO `fileup` (`id`, `title`, `image`) VALUES
(1, 'mr reza', 0x343230352d34306e616a72756c2e706e67),
(2, 'Md R', 0x373133342d6d61746975722e706e67),
(3, 'hhh', 0x313433362d34306e616a72756c2e706e67),
(4, 'hhhf', 0x393339362d37383539323830392d6f6e6c696e652d6d65646963616c2d73657276696365732d6d616e2d61742d636f6d70757465722d61736b696e672d666f722d6d65646963616c2d6164766963652d666c61742d69636f6e732d616e642d7468696e2d6c696e652d69636f6e732d7365742e6a7067),
(5, 'MD Rezawl', 0x343636392d4155544f4d4f42494c452e6a7067),
(6, 'rrr', 0x343234332d416476616e636564436865636b6f75742e706e67),
(7, 'HH', 0x313839332d416476616e636564436865636b6f75742e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Anuj kumar', 'anujk30@test.com', 1425362514, 'This is for testing purposes.   This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.', '2022-10-30 16:52:03', 'hkhakslkdjjdhhdhd hdhhfhf hfhf ', '2024-01-04 15:12:21', 1),
(2, 'Anuj kumar', 'ak@gmail.com', 1111122233, 'This is for testing', '2022-11-06 13:13:41', 'Contact the patient', '2022-11-06 13:13:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve;\">In recent years, online medical services have revolutionized healthcare, offering unparalleled accessibility and convenience. Telehealth consultations, remote monitoring through wearable technology, prescription services, and mental health support are transforming the way patients access and receive medical care. While these services provide numerous benefits, challenges such as data security and equitable access must be carefully considered. As technology continues to reshape healthcare, online medical services are playing a pivotal role in creating a more patient-centric, efficient, and accessible healthcare system.</span><br></li></ul>', NULL, NULL, '2023-12-01 07:21:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(2, 4, 'Md', 177160077, 'test@gmail.com', 'male', 'Chowdory para, Citissory\r\nMirzapur', 50, 'no', '2024-01-08 05:22:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-14 20:19:34', '15-12-2023 02:00:44 AM', 1),
(7, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-14 20:38:51', '15-12-2023 02:45:08 AM', 1),
(8, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-15 07:06:02', '15-12-2023 01:15:31 PM', 1),
(9, NULL, 'Reza', 0x3a3a3100000000000000000000000000, '2023-12-15 08:54:36', NULL, 0),
(10, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-15 08:55:50', '15-12-2023 02:37:31 PM', 1),
(11, NULL, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2023-12-15 09:08:42', NULL, 0),
(12, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-12-15 09:09:08', NULL, 0),
(13, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-12-22 06:49:42', NULL, 0),
(14, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-22 06:49:54', NULL, 1),
(15, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-22 08:12:51', NULL, 1),
(16, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-25 13:48:12', NULL, 1),
(17, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-25 15:41:55', NULL, 1),
(18, 10, 'xy@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-25 16:34:45', '25-12-2023 10:13:46 PM', 1),
(19, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-04 15:39:22', NULL, 1),
(20, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-05 05:29:34', NULL, 1),
(21, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-05 13:44:06', NULL, 1),
(22, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-05 14:04:27', NULL, 1),
(23, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-06 14:10:03', NULL, 1),
(24, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-06 14:23:22', '06-01-2024 07:57:01 PM', 1),
(25, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-06 16:31:11', NULL, 1),
(26, NULL, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-06 17:57:20', NULL, 0),
(27, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-07 06:45:28', NULL, 1),
(28, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-07 16:40:34', '07-01-2024 10:12:20 PM', 1),
(29, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-08 13:49:43', '08-01-2024 07:27:16 PM', 1),
(30, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-08 16:23:46', '08-01-2024 10:17:42 PM', 1),
(31, 7, 'x@gmail.com', 0x3a3a3100000000000000000000000000, '2024-01-09 13:17:56', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `phoneNumber` varchar(15) DEFAULT NULL,
  `selectedOption` enum('Bkash','Nagad','Rocket') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`, `phoneNumber`, `selectedOption`) VALUES
(3, 'MD', 'Tangail', 'Dhaka', 'male', 'help.rezawl71@gmail.com', 'c03c1be11db23e35e82b32b0ed880161', '2023-12-14 20:07:37', NULL, NULL, NULL),
(4, 'hrx', 'Tangail', 'Tangail', 'female', 'hrx@gmail.com', '0117d0cae97cf961e5f5e126d31b73cc', '2023-12-14 20:10:35', NULL, NULL, NULL),
(5, 'ee', 'eee', 'eee', 'male', 'ee@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-12-14 20:11:32', NULL, NULL, NULL),
(6, 'Reza', 'Dhaka', 'Dhaka', 'male', 'reza@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2023-12-14 20:17:24', NULL, NULL, NULL),
(7, 'xx', 'xx', 'xx', 'female', 'x@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2023-12-14 20:18:56', NULL, NULL, NULL),
(8, 'Reza', 'Tangail', 'Tangail', 'male', 'tushitaslima@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-15 08:53:27', NULL, NULL, NULL),
(9, 'd', 'Tangail', 'Dhaka', 'female', 'd@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2023-12-15 08:55:26', NULL, NULL, NULL),
(10, 'mdx', 'aa', 'sss', 'female', 'xy@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2023-12-25 16:30:58', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fileup`
--
ALTER TABLE `fileup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fileup`
--
ALTER TABLE `fileup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
