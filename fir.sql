-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2017 at 02:50 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fir`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `parent_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `home_district` varchar(50) NOT NULL,
  `police_station` varchar(100) NOT NULL,
  `date_of_incident` varchar(10) NOT NULL,
  `date&time_of_reporting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `place` varchar(60) NOT NULL,
  `district_incident` varchar(50) NOT NULL,
  `detail` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `cname`, `parent_name`, `address`, `contact`, `email`, `home_district`, `police_station`, `date_of_incident`, `date&time_of_reporting`, `place`, `district_incident`, `detail`) VALUES
(1, 'shraddha duwal', 'shyam duwal', 'kamalbinayak', '9841111111', 'shraddhaduwal@gmail.com', 'Bhaktapur', 'Bhaktapur', '2017-2-19', '2017-10-17 14:40:10', 'kamalbinayak', 'Bhaktapur', 'my bag was stolen'),
(2, 'ram shrestha', 'hari shrestha', 'kathmandu', '9841222222', 'ramshrestha@gmail.com', 'Kathmandu', 'Kathmandu', '2017-6-7', '2017-10-17 14:41:28', 'kathmandu', 'Kathmandu', 'my daughter lost'),
(3, 'shyam krishna thapa', 'hari krishna thapa', 'kathmandu', '9841333333', 'shyamkrishna@gmail.com', 'Kathmandu', 'Kathmandu', '2017-5-6-', '2017-10-17 14:43:06', 'kathmandu', 'Kathmandu', 'i lost my passport near durbar marg'),
(4, 'sita gurung', 'gita gurung', 'kathmandu', '9841444444', 'sitagurung@gmail.com', 'Kathmandu', 'Kathmandu', '2015-01-3', '2017-10-17 14:44:53', 'kathmandu', 'Bhaktapur', 'i lost my passport');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `status`) VALUES
(1, 'shraddha', '2e9993829549cb3969986608c1b54c0d', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
