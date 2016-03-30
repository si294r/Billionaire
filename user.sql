-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2016 at 10:44 PM
-- Server version: 10.0.23-MariaDB-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Billionaire_prod`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `facebook_id` varchar(50) NOT NULL DEFAULT '',
  `display_name` varchar(30) DEFAULT NULL,
  `networth` double NOT NULL DEFAULT '0',
  `networth_2` double NOT NULL DEFAULT '0',
  `networth_pow` int(11) NOT NULL DEFAULT '0',
  `appVersion` varchar(10) DEFAULT NULL,
  `device_type` varchar(10) DEFAULT NULL,
  `country` varchar(5) NOT NULL DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`facebook_id`, `display_name`, `networth`, `networth_2`, `networth_pow`, `appVersion`, `device_type`, `country`, `create_time`, `update_time`) VALUES
('1112', '', 123, 0, 0, '', '', 'CA', '2016-03-21 17:01:58', '2016-03-22 02:58:40'),
('112233', 'user', 121, 351, 2, '1.2', 'android', 'ID', '2016-03-23 17:25:44', '2016-03-28 04:35:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`facebook_id`),
  ADD KEY `country` (`country`);
