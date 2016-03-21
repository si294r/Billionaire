-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 173.194.252.243
-- Generation Time: Mar 21, 2016 at 08:46 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `billionaire_prod`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`facebook_id`),
  ADD KEY `country` (`country`);

