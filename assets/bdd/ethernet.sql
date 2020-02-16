-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 16, 2020 at 09:41 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ethernet`
--

-- --------------------------------------------------------

--
-- Table structure for table `dht`
--

CREATE TABLE IF NOT EXISTS `dht` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temp` float NOT NULL,
  `hum` float NOT NULL,
  `tdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `dht`
--

INSERT INTO `dht` (`id`, `temp`, `hum`, `tdate`) VALUES
(1, 29.5, 75, '2019-10-13 12:41:22'),
(2, 25, 75, '2019-11-01 10:07:01'),
(3, 23, 81, '2019-11-01 10:07:01'),
(4, 25, 75, '2019-11-01 10:07:06'),
(5, 23, 81, '2019-11-01 10:07:06'),
(6, 33, 79, '2019-11-01 10:11:12'),
(7, 35, 64, '2019-11-01 10:11:12'),
(8, 29, 74, '2019-11-01 10:11:12'),
(9, 27.6, 73.8, '2019-11-01 10:11:12'),
(10, 20, 89.74, '2019-11-01 10:11:12'),
(11, 22, 86.4, '2019-11-01 10:11:12'),
(12, 23.41, 85, '2019-11-01 10:11:12'),
(13, 31, 65.15, '2019-11-01 10:11:12'),
(14, 39.7, 60.3, '2019-11-01 10:11:12'),
(15, 29.45, 63.75, '2019-11-01 10:11:12'),
(16, 23, 89.4, '2019-11-04 15:06:50'),
(17, 35, 78.74, '2019-11-04 15:06:50'),
(18, 12.31, 43.32, '2019-11-04 17:39:31'),
(19, 55, 45, '2020-02-14 22:35:29'),
(20, 58, 67, '2020-02-14 22:35:29'),
(21, 55, 45, '2020-02-14 22:35:43'),
(22, 58, 67, '2020-02-14 22:35:43'),
(23, 32, 25, '2020-02-14 22:49:21'),
(24, 46, 67, '2020-02-14 22:49:21'),
(25, 23, 43.32, '2020-02-14 23:14:11'),
(26, 58, 67, '2020-02-14 23:14:11'),
(27, 25, 45, '2020-02-14 23:38:10'),
(28, 60, 67, '2020-02-14 23:38:10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
