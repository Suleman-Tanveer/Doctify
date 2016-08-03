-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2016 at 08:50 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `doctor_id` varchar(50) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `appointment_timestamp` int(11) NOT NULL,
  `appointment_upcomingpast` int(11) NOT NULL,
  `appointment_fee_new` int(11) NOT NULL,
  `appointment_fee_followup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` varchar(50) NOT NULL,
  `title` varchar(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` bit(2) NOT NULL,
  `picture` blob NOT NULL,
  `logo` blob NOT NULL,
  `phone no` varchar(20) NOT NULL,
  `professional body` varchar(50) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `other procedure` varchar(200) NOT NULL,
  `about` varchar(200) NOT NULL,
  `membership` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_fee`
--

CREATE TABLE `doctor_fee` (
  `fee_id` int(11) NOT NULL,
  `follow_up_fee` int(50) NOT NULL,
  `new_fee` int(50) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `healthcheck`
--

CREATE TABLE `healthcheck` (
  `healthcheck_id` int(11) NOT NULL,
  `healthcheck_category` text NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL,
  `time_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `patient_id` int(11) NOT NULL,
  `doctor_id` varchar(50) NOT NULL,
  `healthcheck_id` int(11) NOT NULL,
  `scan_id` int(11) NOT NULL,
  `appointment_no` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `insurance_id` int(50) NOT NULL,
  `insurance_name` varchar(50) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` varchar(50) NOT NULL,
  `languages_Name` varchar(50) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `message_email` varchar(50) NOT NULL,
  `message_timestamp` timestamp NOT NULL,
  `message_message` varchar(200) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_address`
--

CREATE TABLE `patient_address` (
  `patient_address_id` int(11) NOT NULL,
  `patient_city` varchar(50) NOT NULL,
  `patient_house_no` varchar(50) NOT NULL,
  `patient_postcode` varchar(50) NOT NULL,
  `patient_street` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_data`
--

CREATE TABLE `patient_data` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `patient_E-mail` varchar(50) NOT NULL,
  `patient_dob` varchar(50) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_phone`
--

CREATE TABLE `patient_phone` (
  `phone_no` int(11) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `practice_table`
--

CREATE TABLE `practice_table` (
  `practice_id` int(11) NOT NULL,
  `practice_name` varchar(50) NOT NULL,
  `practice_hospital` varchar(50) NOT NULL,
  `practice_secretary` varchar(50) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recommendation`
--

CREATE TABLE `recommendation` (
  `recommendation_id` int(11) NOT NULL,
  `recommendation_new` longtext NOT NULL,
  `recommendation_request` longtext NOT NULL,
  `recommendation_approved` longtext NOT NULL,
  `recommendation_pending` longtext NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scan`
--

CREATE TABLE `scan` (
  `scan_id` int(11) NOT NULL,
  `scan_category` text NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `special interest`
--

CREATE TABLE `special interest` (
  `special_interest_id` int(11) NOT NULL,
  `speical_interest_name` longtext NOT NULL,
  `other_interest` longtext NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `speciality`
--

CREATE TABLE `speciality` (
  `speciality_id` int(50) NOT NULL,
  `speciality_Name` varchar(50) NOT NULL,
  `sub_Speicality` varchar(50) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `healthcheck`
--
ALTER TABLE `healthcheck`
  ADD PRIMARY KEY (`healthcheck_id`),
  ADD UNIQUE KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`insurance_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `patient_address`
--
ALTER TABLE `patient_address`
  ADD PRIMARY KEY (`patient_address_id`);

--
-- Indexes for table `patient_data`
--
ALTER TABLE `patient_data`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_phone`
--
ALTER TABLE `patient_phone`
  ADD PRIMARY KEY (`phone_no`),
  ADD UNIQUE KEY `patient_id` (`patient_id`);

--
-- Indexes for table `practice_table`
--
ALTER TABLE `practice_table`
  ADD PRIMARY KEY (`practice_id`);

--
-- Indexes for table `recommendation`
--
ALTER TABLE `recommendation`
  ADD PRIMARY KEY (`recommendation_id`);

--
-- Indexes for table `scan`
--
ALTER TABLE `scan`
  ADD PRIMARY KEY (`scan_id`);

--
-- Indexes for table `special interest`
--
ALTER TABLE `special interest`
  ADD PRIMARY KEY (`special_interest_id`);

--
-- Indexes for table `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`speciality_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `healthcheck`
--
ALTER TABLE `healthcheck`
  MODIFY `healthcheck_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `insurance_id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_address`
--
ALTER TABLE `patient_address`
  MODIFY `patient_address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_data`
--
ALTER TABLE `patient_data`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_phone`
--
ALTER TABLE `patient_phone`
  MODIFY `phone_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `practice_table`
--
ALTER TABLE `practice_table`
  MODIFY `practice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recommendation`
--
ALTER TABLE `recommendation`
  MODIFY `recommendation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scan`
--
ALTER TABLE `scan`
  MODIFY `scan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `special interest`
--
ALTER TABLE `special interest`
  MODIFY `special_interest_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speciality`
--
ALTER TABLE `speciality`
  MODIFY `speciality_id` int(50) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
