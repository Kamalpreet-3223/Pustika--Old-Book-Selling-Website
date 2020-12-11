-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 04:55 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pustika-bucket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(1, 'HSK', '$$', 'hari01584@gmail.com', '8872276957', 'FZR', '$5$rounds=535000$/aZcgCuhLQo8Lle5$IskgTI..PWhJAzN/R0KFriecscbvdEffH5HfxBOuE/1', 'manager', '0'),
(2, 'Admin', 'User', 'supersu@s', '00000000000', 'earth', '$5$rounds=535000$oAqAfLqFXt.vR.oR$e8glznWrzA5BclBSpBJnSHJNk2DhYVuTE7Gd/NRCXw9', 'manager', '0'),
(5, 'Admin2', 'User', 'supersu@s1', '00000000000', 'earth', '$5$rounds=535000$oAqAfLqFXt.vR.oR$e8glznWrzA5BclBSpBJnSHJNk2DhYVuTE7Gd/NRCXw9', 'manager', '0');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `ofname` text NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ddate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `ofname`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(1, NULL, 'Kashmiri Chador', 1, 2, 'Khilkhet, Dhaka', '01609876543', 'no', '2018-09-21 13:05:07', NULL),
(2, NULL, 'Nur Mohsin', 1, 3, 'Khilkhet, Dhaka', '01609876543', 'no', '2018-09-21 13:08:55', NULL),
(3, NULL, 'Nur Mohsin', 2, 4, 'Dhaka', '09876543123', 'no', '2018-09-21 13:13:04', NULL),
(4, NULL, 'Nur Mohsin', 4, 1, 'Manikganj', '798345', 'no', '2018-09-21 13:18:47', NULL),
(5, NULL, 'Nur Mohsin', 9, 4, 'Dhaka, Bangladesh', '01609876543', 'no', '2018-09-22 02:01:02', NULL),
(6, NULL, 'Nur Mohsin', 2, 1, 'Manikganj', '01609876543', 'no', '2018-09-22 02:09:29', NULL),
(7, 9, 'Nur Mohsin', 2, 1, 'Manikganj', '01609876543', 'no', '2018-09-22 02:10:46', NULL),
(8, 9, 'Nur Mohsin', 1, 1, 'Manikganj', '0994', 'no', '2018-09-22 03:04:13', NULL),
(9, 9, 'Kashmiri Chador', 12, 4, 'Dhaka', '01609876543', 'no', '2018-09-22 03:21:14', '2018-09-29'),
(10, 9, 'Chador', 13, 1, 'Dhaka', '01609876543', 'no', '2018-09-22 03:22:05', '2018-09-29'),
(11, NULL, 'Harishankar Kumar', 1, 1, '21', '88755', 'no', '2020-11-21 01:20:01', '2020-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `item`, `pCode`, `picture`, `date`) VALUES
(27, 'Let Us C', 200, 'Basic book for C programming by Y.Kanetkar', 1, 'sub01', 'book', 'UTA003', 'letuscyash.jpg', '2020-11-21 14:44:52'),
(28, 'C++ by E.Balaguruswamy', 300, 'Good condition book of previous session', 1, 'sub01', 'book', 'UTA043', 'ebalaswami.jpg', '2020-11-21 14:49:53'),
(29, 'C Programming for Arduino by Julien Bayle', 350, 'Good condition Book', 1, 'sub01', 'Julien Bayle', 'UTA004', 'C_programming_for_arduino_Julien_Bayle.jpg', '2020-11-21 14:58:21'),
(30, 'Introduction to Algorithms by Thomas H. Corem', 399, 'Book for Beginners and in good condition', 1, 'sub01', 'Thomas H. Corem', 'UTA020', 'Introduction_to_algorithms_by_Thomas_H._Corem.jpg', '2020-11-21 15:08:45'),
(37, 'Mathematics for finance by Marek Capinski', 300, 'Good book with all basic topics covered', 1, 'sub02', 'Book', 'UED002', 'mathematics_for_finance_by_Marek_Capinski.jpg', '2020-11-21 15:44:17'),
(38, 'Thomas and Finney Calculus and DifferentialEquation', 299, 'Book is in a good condition and have all topics covered', 1, 'sub02', 'Thomas and Finney', 'UMA010', 'Thomas_and_Finney_Calculus.jpg', '2020-11-21 17:12:32'),
(39, 'Mathematics for Engineers by Anthony Croft', 310, 'Book is in a good condition and has perfect pages', 1, 'sub02', 'Book', 'UMA011', 'Mathematics_for_Engineers_by_Anthony_Croft.jpg', '2020-11-21 17:15:26'),
(40, 'H.S. Kasana book for Complex Variables', 350, 'Book is of latest version and has good condition', 1, 'sub02', 'Book', 'UMA014', 'H.S._Kasana_book_for_Complex_Variables.jpg', '2020-11-21 17:18:07'),
(41, 'Hughes Book for Electrical Engineering', 325, 'Book is in good condition and has all topics covered', 1, 'sub03', 'Book by Hughes', 'UES011', 'Hughes_electricalengineering.jpg', '2020-11-21 17:22:35'),
(42, 'Nagrath Kothari Book for Electrical Engineering', 299, 'Book is in a good condition and is useful for B.Tech course', 1, 'sub03', 'Writer-Nagrath Kothari', 'UES011', 'Nagrath_Kothari_electrical_engineering.jpg', '2020-11-21 17:24:24'),
(43, 'NK Verma Applied Physics', 300, 'Book is really good in its condition and have very basic topics also covered', 1, 'sub03', 'Book for Applied Physics', 'UES016', 'NK_Verma_Applied_Physics.jpg', '2020-11-21 17:26:09'),
(44, 'Fundamental of Electrical Circuit by Charles Alexander', 300, 'Book is in a good condition', 1, 'sub03', 'Book', 'UES005', 'Fundamental_of_electrical_circuit_by_Charles_alexander.jpg', '2020-11-21 17:56:19'),
(45, 'Engineering Circuit analysis by William Hayt', 299, 'Book is in good condition', 1, 'sub03', 'Extra ', 'UES002', 'Engineering_circuit_analysis_by_william_hayt.jpg', '2020-11-21 17:59:50'),
(46, 'Statics and Dynamics by R.C. Hibbler Mechanics', 325, 'Book is good for beginners and is in good condition', 1, 'sub04', 'Book', 'UES001', 'R.C._Hibbler_Mechanics.jpg', '2020-11-21 18:04:25'),
(47, 'V.Raghavan Engineering Materials', 310, 'Book is in good condition', 1, 'sub04', 'Engineering material', 'UES005', 'V.Raghavan_Engineering_Materials.jpg', '2020-11-21 18:05:52'),
(48, 'I.H. Shames Engineering Mechanics:Statics and Dynamics', 350, 'Book is really good for mechanics and have good problems', 1, 'sub04', 'Mechanics', 'UES008', 'Shames_Engineering_Mechanics.jpg', '2020-11-21 18:09:29'),
(49, 'A. Nelson Mechanics Statics and Dynamics', 299, 'Book is good and covers basic concept', 1, 'sub04', 'Book', 'UES010', 'A_Nelson_Mechanics_Statics_and_Dynamics.jpg', '2020-11-21 18:13:43'),
(52, 'Engineering Chemistry By Shikha Aggarwal', 310, 'Book is in good condition', 1, 'sub05', 'Chemistry Book', 'UCB002', 'Engineering_Chemistry_By_Shikha_Aggarwal.jpg', '2020-11-21 18:20:37'),
(53, 'Engineering-Chemistry-Dr HG Bhatt', 310, 'Book is in good condition', 1, 'sub05', 'Book', 'UCB025', 'Engineering-Chemistry-Dr_HG_Bhatt.png', '2020-11-21 18:50:31'),
(54, 'Air-Pollution-HVN Rao', 299, 'Book is in good condition', 1, 'sub06', '1', 'UEN001', 'Rao-H-V-N-Rao-Air-Pollution.jpg', '2020-11-21 18:53:29'),
(55, 'Introduction to environmental engineerind and science by Gilbert M Masters', 300, 'Book is in good condition', 1, 'sub06', '1', 'UEN025', 'Introduction_to_environmental_engineerind_and_science_by_Gilbert_M_Masters.jpg', '2020-11-21 19:00:11'),
(56, 'A software engineer by Roger S. Pressman', 325, 'Book is in good condition with really good content', 1, 'sub07', 'Book', 'UVE011', 'A_software_engineer_by_Roger_S._Pressman.jpg', '2020-11-21 19:12:03'),
(57, 'Computer System Architecture by M. Morris Mano', 340, 'Book is of great use it covers all topics', 1, 'sub07', '1', 'UCV001', 'computer_system_architecture_by_M._Morris_Mano.jpg', '2020-11-21 19:13:26'),
(58, 'Data Mining Concept and Techniques by Jiawei Han', 328, 'Book is in good condition', 1, 'sub07', 'Book for electives', 'UED001', 'data_mining_concept_and_techniques_by_Jiawei_Han.jpg', '2020-11-21 19:15:19'),
(59, 'Principle of Corporate Finance by Brealey', 300, 'Book is good for Corporate finance topic and is in good condition', 1, 'sub07', 'Book', 'UCA001', 'Principle_of_corporate_finance_by_Brealey.jpeg', '2020-11-21 19:16:42'),
(60, 'Mathematics by Manan Khurama', 300, 'Book is good for JEE preparation', 1, 'sub08', 'Book for competition', 'UBN001', 'Mathematics_by_Manan_Khurama.jpg', '2020-11-21 19:19:04'),
(61, 'Pathfinder for Olympiad & JEE Physics by Arvind Tiwari', 340, 'Book is in good condition', 1, 'sub08', 'By Arvind Tiwari', 'UBA002', 'Pathfinder_for_Olympiad_&_JEE_Physics_by_Arvind_Tiwari.jpg', '2020-11-21 19:21:40'),
(62, 'A Textbook of Organic Chemistry for JEE Main and Advanced by Dr RK Gupta', 320, 'Book is good for JEE preparations', 1, 'sub08', '1', 'UCA-005', 'A_Textbook_of_Organic_Chemistry_for_JEE_Main_and_Advanced_by_Dr_RK_Gupta.jpg', '2020-11-21 19:23:32'),
(63, 'Book on aptitude by R.K. Aggarwal', 325, 'Book is in good condition', 1, 'sub08', 'Book', 'UCA-008', 'Book_on_aptitude_by_R.K._Aggarwal.jpg', '2020-11-21 19:25:31'),
(64, 'Zero to One by Peter Thiel', 250, 'Book is in good condition', 1, 'sub09', '1', 'UAB001', 'Zero_to_One.jpg', '2020-11-21 19:32:58'),
(65, 'Rich Dad and Poor Dad by Robert', 300, 'Book is in good condition', 1, 'sub09', 'Book', 'UAB004', 'Rich_Dad_and_Poor_Dad_by_Robert.jpg', '2020-11-21 19:36:02'),
(66, 'The Power of Positive Thinking by Norman Vincent', 290, 'Book is in good condition', 1, 'sub09', '1', 'UAB-005', 'The_Power_of_Positive_Thinking_by_Norman_Vincent.jpg', '2020-11-21 19:38:04'),
(67, 'The Power of Positive Attitude by Fredrick Douglas', 249, 'Book is in good condition', 1, 'sub09', 'Book', 'UAB008', 'The_Power_of_Positive_Attitude_by_Fredrick_Douglas.jpg', '2020-11-21 19:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_level`
--

CREATE TABLE IF NOT EXISTS `product_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `v_shape` varchar(10) NOT NULL DEFAULT 'no',
  `polo` varchar(10) NOT NULL DEFAULT 'no',
  `clean_text` varchar(10) NOT NULL DEFAULT 'no',
  `design` varchar(10) NOT NULL DEFAULT 'no',
  `chain` varchar(10) NOT NULL DEFAULT 'no',
  `leather` varchar(10) NOT NULL DEFAULT 'no',
  `hook` varchar(10) NOT NULL DEFAULT 'no',
  `color` varchar(10) NOT NULL DEFAULT 'no',
  `formal` varchar(10) NOT NULL DEFAULT 'no',
  `converse` varchar(10) NOT NULL DEFAULT 'no',
  `loafer` varchar(10) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `product_level`
--

INSERT INTO `product_level` (`id`, `product_id`, `v_shape`, `polo`, `clean_text`, `design`, `chain`, `leather`, `hook`, `color`, `formal`, `converse`, `loafer`) VALUES
(1, 1, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(2, 2, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(3, 3, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes'),
(4, 4, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no'),
(5, 5, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(6, 6, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(7, 7, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(8, 8, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(9, 9, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(10, 10, 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(14, 14, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no'),
(12, 12, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(13, 13, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes'),
(15, 15, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no'),
(16, 16, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no'),
(17, 17, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(18, 18, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(19, 19, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(20, 20, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'no'),
(21, 21, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no'),
(22, 22, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(23, 23, 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(24, 24, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(25, 25, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(26, 26, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(27, 27, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(28, 28, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(29, 29, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(30, 30, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(31, 31, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(32, 32, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(33, 33, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(34, 34, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(35, 35, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(36, 36, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(37, 37, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(38, 38, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(39, 39, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(40, 40, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(41, 41, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(42, 42, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(43, 43, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(44, 44, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(45, 45, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(46, 46, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(47, 47, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(48, 48, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(49, 49, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(50, 50, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(51, 51, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(52, 52, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(53, 53, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(54, 54, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(55, 55, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(56, 56, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(57, 57, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(58, 58, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(59, 59, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(60, 60, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(61, 61, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(62, 62, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(63, 63, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(64, 64, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(65, 65, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(66, 66, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(67, 67, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `product_view`
--

CREATE TABLE IF NOT EXISTS `product_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `product_view`
--

INSERT INTO `product_view` (`id`, `user_id`, `product_id`, `date`) VALUES
(1, 9, 9, '2018-09-22 02:19:30'),
(2, 9, 7, '2018-09-27 02:47:43'),
(3, 9, 12, '2018-09-22 03:20:59'),
(4, 9, 10, '2018-09-29 03:07:11'),
(5, 9, 5, '2018-09-22 03:19:19'),
(6, 9, 8, '2018-09-21 15:57:50'),
(7, 9, 6, '2018-09-22 02:12:54'),
(8, 9, 1, '2018-09-22 03:03:36'),
(9, 19, 7, '2020-11-21 08:32:28'),
(10, 19, 8, '2020-11-21 10:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `mobile`, `reg_time`, `online`, `activation`) VALUES
(20, 'Admin', 'supersu@s', 'supersu', '$5$rounds=535000$oAqAfLqFXt.vR.oR$e8glznWrzA5BclBSpBJnSHJNk2DhYVuTE7Gd/NRCXw9', '+00000000000', '2020-11-21 12:48:22', '0', 'yes'),
(19, 'Harishankar Kumar', 'hari01584@gmail.com', 'hari01584', '$5$rounds=535000$/aZcgCuhLQo8Lle5$IskgTI..PWhJAzN/R0KFriecscbvdEffH5HfxBOuE/1', '+918872276957', '2020-11-21 03:57:29', '1', 'yes');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
