-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2018 at 02:01 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_educational`
--

CREATE TABLE `booking_educational` (
  `user_id` int(11) NOT NULL,
  `college_name` varchar(300) CHARACTER SET utf8 NOT NULL,
  `college_address` varchar(300) CHARACTER SET utf8 NOT NULL,
  `degree` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Branch` varchar(150) CHARACTER SET utf8 NOT NULL,
  `year` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_educational`
--

INSERT INTO `booking_educational` (`user_id`, `college_name`, `college_address`, `degree`, `Branch`, `year`) VALUES
(1, 'msu', 'fatehgunj', 'Diploma', 'Information Technology', 'T.Y.'),
(2, 'msu', 'fatehgunj,vadodara', 'Diploma', 'Information Technology', 'S.Y.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_gaurdian`
--

CREATE TABLE `booking_gaurdian` (
  `user_id` int(11) NOT NULL,
  `g_name` varchar(300) CHARACTER SET utf8 NOT NULL,
  `g_address` varchar(300) CHARACTER SET utf8 NOT NULL,
  `g_mobile` bigint(10) NOT NULL,
  `g_email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `occupation` varchar(100) CHARACTER SET utf8 NOT NULL,
  `anual_income` int(50) NOT NULL,
  `relationship` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_gaurdian`
--

INSERT INTO `booking_gaurdian` (`user_id`, `g_name`, `g_address`, `g_mobile`, `g_email`, `occupation`, `anual_income`, `relationship`) VALUES
(1, 'Dilipbhai', 'dfdfdfdfddsddff,vadodra', 1234567890, 'a@gmail.com', 'businessman', 100000, 'uncle'),
(2, 'Dilipbhai', 'dfddfdfdfdfdf,vadodara', 1234567890, 'ad@gmail.com', 'businessman', 1000, 'uncle');

-- --------------------------------------------------------

--
-- Table structure for table `booking_localgaurdian`
--

CREATE TABLE `booking_localgaurdian` (
  `user_id` int(11) NOT NULL,
  `LG_name` varchar(300) CHARACTER SET utf8 NOT NULL,
  `LG_address` varchar(300) CHARACTER SET utf8 NOT NULL,
  `LG_relationship` varchar(300) CHARACTER SET utf8 NOT NULL,
  `LG_mobile` bigint(15) NOT NULL,
  `LG_email` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_localgaurdian`
--

INSERT INTO `booking_localgaurdian` (`user_id`, `LG_name`, `LG_address`, `LG_relationship`, `LG_mobile`, `LG_email`) VALUES
(1, 'sdsddsd', 'sddsdsds', 'uncle', 1234567890, 'a@gmail.com'),
(2, 'fdfdfdfdf', 'sssssssssssssss', 'uncle', 1212112121, 'as@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `booking_personal`
--

CREATE TABLE `booking_personal` (
  `user_id` int(100) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `mobile_no` bigint(15) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(300) CHARACTER SET utf8 NOT NULL,
  `package` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date_of_birth` date NOT NULL,
  `bloodgroup` text CHARACTER SET utf8 NOT NULL,
  `nationality` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_personal`
--

INSERT INTO `booking_personal` (`user_id`, `name`, `mobile_no`, `email`, `address`, `package`, `date_of_birth`, `bloodgroup`, `nationality`) VALUES
(1, 'aditya', 7383379795, 'adpanchal15@gmail.com', '258,fdfdffd,vadodara', '2400 per month with breakfast', '1999-10-26', 'a+', 'Indian'),
(2, 'Avani', 8485918203, 'avaniaditya19@gmail.com', '258,Vadodara', '2400 per month with breakfast', '1998-08-13', 'a+', 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `User_Id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile_no` bigint(15) NOT NULL,
  `city` text NOT NULL,
  `college` varchar(20) NOT NULL,
  `reference` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`User_Id`, `first_name`, `last_name`, `email`, `mobile_no`, `city`, `college`, `reference`) VALUES
(1, 'cx', 'cssd', 'adpanchal15@gmail.com', 1234567890, 'vbv', 'FGFG', 'fdfffgfg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `User_Id` int(20) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Account_Type` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`User_Id`, `Password`, `Account_Type`) VALUES
(1, '8982a27807d2fdc776faacd621bdc676', 1),
(2, 'ef941d39c481cfd635cf47ae3b3b8f6c', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_educational`
--
ALTER TABLE `booking_educational`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `booking_gaurdian`
--
ALTER TABLE `booking_gaurdian`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `booking_localgaurdian`
--
ALTER TABLE `booking_localgaurdian`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `booking_personal`
--
ALTER TABLE `booking_personal`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`User_Id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_educational`
--
ALTER TABLE `booking_educational`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `booking_gaurdian`
--
ALTER TABLE `booking_gaurdian`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `booking_localgaurdian`
--
ALTER TABLE `booking_localgaurdian`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `booking_personal`
--
ALTER TABLE `booking_personal`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `User_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
