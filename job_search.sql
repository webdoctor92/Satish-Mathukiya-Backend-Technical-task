-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2019 at 01:10 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_search`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`) VALUES
(1, 'Company A'),
(2, 'Company B'),
(3, 'Company C'),
(4, 'Company D'),
(5, 'Company E'),
(6, 'Company F'),
(7, 'Company G'),
(8, 'Company H'),
(9, 'Company J'),
(10, 'Company K');

-- --------------------------------------------------------

--
-- Table structure for table `company_needs`
--

DROP TABLE IF EXISTS `company_needs`;
CREATE TABLE IF NOT EXISTS `company_needs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `property_type` enum('apartment','house','flat') NOT NULL,
  `property_insurance` enum('yes','no') NOT NULL DEFAULT 'no',
  `car_type` enum('5 door car','4 door car','3 door car','2 door car') NOT NULL,
  `car_insurance` enum('yes','no') NOT NULL DEFAULT 'no',
  `car_driving_license` enum('yes','no') NOT NULL DEFAULT 'no',
  `social_security_number` enum('yes','no') NOT NULL DEFAULT 'no',
  `work_permit` enum('yes','no') NOT NULL DEFAULT 'no',
  `two_wheeler_type` enum('scooter','bike','motorcycle') NOT NULL,
  `two_wheeler_insurance` enum('yes','no') NOT NULL DEFAULT 'no',
  `two_wheeler_license` enum('yes','no') NOT NULL DEFAULT 'no',
  `massage_qualification_certificate` enum('yes','no') NOT NULL DEFAULT 'no',
  `liability_insurance` enum('yes','no') NOT NULL DEFAULT 'no',
  `place_type` enum('storage place','garage') NOT NULL,
  `join_immediately` enum('yes','no') NOT NULL DEFAULT 'no',
  `paypal_account` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_needs`
--

INSERT INTO `company_needs` (`id`, `company_id`, `property_type`, `property_insurance`, `car_type`, `car_insurance`, `car_driving_license`, `social_security_number`, `work_permit`, `two_wheeler_type`, `two_wheeler_insurance`, `two_wheeler_license`, `massage_qualification_certificate`, `liability_insurance`, `place_type`, `join_immediately`, `paypal_account`) VALUES
(1, 1, 'apartment', 'yes', '', 'no', 'no', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no'),
(2, 1, 'house', 'yes', '', 'no', 'no', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no'),
(3, 2, '', 'no', '5 door car', 'yes', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no'),
(4, 2, '', 'no', '4 door car', 'yes', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no'),
(5, 3, '', 'no', '', 'no', 'no', 'yes', 'yes', '', 'no', 'no', 'no', 'no', '', 'no', 'no'),
(6, 4, 'apartment', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no'),
(7, 4, 'house', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no'),
(8, 4, 'flat', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no'),
(9, 5, '', 'no', '5 door car', 'no', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no'),
(10, 5, '', 'no', '4 door car', 'no', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no'),
(11, 5, '', 'no', '3 door car', 'no', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no'),
(12, 5, '', 'no', '2 door car', 'no', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no'),
(13, 6, '', 'no', '', 'no', 'no', 'no', 'no', 'scooter', 'yes', 'yes', 'no', 'no', '', 'no', 'no'),
(14, 6, '', 'no', '', 'no', 'no', 'no', 'no', 'bike', 'yes', 'yes', 'no', 'no', '', 'no', 'no'),
(15, 6, '', 'no', '', 'no', 'no', 'no', 'no', 'motorcycle', 'yes', 'yes', 'no', 'no', '', 'no', 'no'),
(16, 7, '', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no', 'yes', 'yes', '', 'no', 'no'),
(17, 8, '', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no', 'no', 'no', 'storage place', 'no', 'no'),
(18, 8, '', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no', 'no', 'no', 'garage', 'no', 'no'),
(19, 9, '', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'yes', 'no'),
(20, 10, '', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'no', 'no', 'no', '', 'no', 'yes');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company_needs`
--
ALTER TABLE `company_needs`
  ADD CONSTRAINT `company_needs_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
