-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 05:52 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swing`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `b_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `veh_no` varchar(12) NOT NULL,
  `insurance` varchar(20) NOT NULL DEFAULT '',
  `carriage_permit` varchar(20) NOT NULL,
  `reg_certificate` varchar(20) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cars_pool`
--

CREATE TABLE `cars_pool` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `avail_seats` int(11) NOT NULL,
  `luggage` int(11) NOT NULL,
  `message` text NOT NULL,
  `source` varchar(20) NOT NULL,
  `destination` varchar(12) NOT NULL,
  `source_timing` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `destination_timing` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_change` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(20) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars_pool`
--

INSERT INTO `cars_pool` (`id`, `u_id`, `c_id`, `avail_seats`, `luggage`, `message`, `source`, `destination`, `source_timing`, `destination_timing`, `last_change`, `modified_by`, `created_by`, `created_on`) VALUES
(1, 1, 1, 4, 0, 'No Luggage Allowed', '32.6565', '56.336', '2019-03-03 09:00:06', '2019-02-25 18:30:00', '2019-03-03 11:49:40', '', '', '0000-00-00 00:00:00'),
(2, 1, 1, 5, 1, 'Zyada Luggage na lana bhai logo', '32.8989,89.8989', '32.9999,87.3', '2019-03-03 09:00:08', '0000-00-00 00:00:00', '2019-03-03 11:49:40', '', '', '0000-00-00 00:00:00'),
(3, 1, 1, 5, 1, 'Zyada Luggage na lana bhai logo', '32.8989,89.8989', '32.9999,87.3', '2019-03-03 09:00:09', '0000-00-00 00:00:00', '2019-03-03 11:49:40', '', '', '0000-00-00 00:00:00'),
(4, 1, 1, 5, 1, 'Zyada Luggage na lana bhai logo', '32.8989,89.8989', '32.9999,87.3', '2019-03-03 09:00:11', '0000-00-00 00:00:00', '2019-03-03 11:49:40', '', '', '0000-00-00 00:00:00'),
(5, 1, 1, 5, 1, 'Zyada Luggage na lana bhai logo', '32.8989,89.8989', '32.9999,87.3', '2019-03-03 09:00:13', '0000-00-00 00:00:00', '2019-03-03 11:49:40', '', '', '0000-00-00 00:00:00'),
(6, 1, 0, 5, 1, 'Zyada Luggage na lana bhai logo', '32.8989,89.8989', '32.9999,87.3', '2019-03-03 09:00:15', '0000-00-00 00:00:00', '2019-03-03 11:49:40', '', '', '0000-00-00 00:00:00'),
(7, 0, 0, 2, 1, 'dffkjl', '32.8989,89.8989', '32.9999,87.3', '2019-02-28 18:30:00', '0000-00-00 00:00:00', '2019-03-03 11:49:40', '', '', '0000-00-00 00:00:00'),
(8, 1, 0, 2, 1, 'dffkjl', '32.8989,89.8989', '32.9999,87.3', '2019-02-28 18:30:00', '0000-00-00 00:00:00', '2019-03-03 11:49:40', '', '', '0000-00-00 00:00:00'),
(9, 1, 0, 2, 1, 'Zyada Luggage na lana bhai logo', '32.8989,89.8989', '32.9999,87.3', '2019-03-15 18:30:00', '0000-00-00 00:00:00', '2019-03-03 11:49:40', '', '', '0000-00-00 00:00:00'),
(10, 1, 1, 7, 1, 'pick me up near Police Lines', '32.8989,89.8989', '32.9999,87.3', '2019-03-08 18:30:00', '0000-00-00 00:00:00', '2019-03-03 11:49:40', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `msg_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `message` varchar(400) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delivered` int(11) NOT NULL,
  `seen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`msg_id`, `sender_id`, `reciever_id`, `message`, `date`, `delivered`, `seen`) VALUES
(1, 1, 0, 'hey i\'am interested in buying this car,', '2019-03-02 14:13:49', 1, 0),
(2, 2, 2, 'Hey ! That sounds cool', '2019-03-02 14:14:05', 1, 0),
(3, 1, 0, 'hello', '2019-03-03 03:50:31', 1, 0),
(4, 2, 2, 'Hey', '2019-03-03 03:51:40', 1, 0),
(5, 1, 0, 'Hi', '2019-03-03 05:19:14', 1, 0),
(6, 2, 2, 'Hello sir !', '2019-03-03 05:19:21', 1, 0),
(7, 1, 0, 'hi aji', '2019-03-03 12:20:50', 1, 0),
(8, 2, 2, 'Hello sir', '2019-03-03 12:20:57', 1, 0),
(9, 1, 0, 'pick me up near Police Lines', '2019-03-16 07:05:32', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(69) NOT NULL,
  `password` varchar(400) NOT NULL,
  `dor` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `route` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `phone`, `email`, `password`, `dor`, `route`) VALUES
(1, 'Aman', 95966638, 'aman@email.com', 'ccda1683d8c97f8f2dff2ea7d649b42c', '2019-03-24 02:43:25', 'PJ-GN'),
(2, 'Gaman', 4545, 'gaman@email.com', 'gaman', '2019-03-24 02:57:23', 'PJ-TT');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `bus_id` int(11) NOT NULL,
  `lat` varchar(11) NOT NULL,
  `lon` varchar(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`bus_id`, `lat`, `lon`, `time`) VALUES
(1, '32.80225940', '74.8966399', '2019-03-23 16:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `pool_data`
--

CREATE TABLE `pool_data` (
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `pickup_spot` varchar(12) NOT NULL,
  `destination` varchar(12) NOT NULL,
  `amount_paid` float NOT NULL,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pool_data`
--

INSERT INTO `pool_data` (`p_id`, `u_id`, `pickup_spot`, `destination`, `amount_paid`, `modified_on`, `modified_by`, `created_by`, `created_on`) VALUES
(1, 0, '', '', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(2, 0, '', '', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(3, 0, '', '', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(4, 0, '', '', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(5, 0, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(6, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(7, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(8, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(9, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(10, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(11, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(12, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(13, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(14, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(15, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(16, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(17, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(18, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(19, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(20, 1, '78.226', '45.33', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(21, 1, '78.226', '45.33', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(22, 1, '', '', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(23, 1, '55565', '1000', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(24, 1, '89.3666', '78.22235', 0, '2019-03-03 11:53:35', 0, 0, '0000-00-00 00:00:00'),
(25, 1, '55565', '1000', 0, '2019-03-23 23:31:57', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pool_notifications`
--

CREATE TABLE `pool_notifications` (
  `n_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT 'Pool Request',
  `value` varchar(400) NOT NULL,
  `pickup_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `pickup_spot` varchar(12) NOT NULL,
  `destination` varchar(12) NOT NULL,
  `status` int(11) NOT NULL,
  `seen` int(11) NOT NULL,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pool_notifications`
--

INSERT INTO `pool_notifications` (`n_id`, `u_id`, `c_id`, `title`, `value`, `pickup_time`, `pickup_spot`, `destination`, `status`, `seen`, `modified_on`, `modified_by`, `created_by`, `created_on`) VALUES
(1, 1, 1, 'Pool Request', 'pick me up near Police Lines', '2019-03-03 09:57:05', '55565', '1000', 1, 0, '2019-03-03 11:53:58', 0, 0, '0000-00-00 00:00:00'),
(2, 1, 1, 'Pool Request', 'jkjkj', '2019-03-03 09:57:54', '78.226', '45.33', 1, 0, '2019-03-03 11:53:58', 0, 0, '0000-00-00 00:00:00'),
(3, 1, 0, 'Pool Request', '', '2019-03-03 10:04:00', '', '', 1, 0, '2019-03-03 11:53:58', 0, 0, '0000-00-00 00:00:00'),
(4, 1, 1, 'Pool Request', 'jkjkj', '2019-03-03 09:57:54', '78.226', '45.33', 1, 0, '2019-03-03 11:53:58', 0, 0, '0000-00-00 00:00:00'),
(5, 1, 1, 'Pool Request', 'pick me up near Police Lines', '2019-03-03 10:17:27', '89.3666', '78.22235', 0, 0, '2019-03-03 11:53:58', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(69) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(400) NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `pan` varchar(20) NOT NULL,
  `dl` varchar(20) NOT NULL,
  `dlb` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `phone`, `password`, `status`, `image`, `pan`, `dl`, `dlb`) VALUES
(1, 'Pankaj Sharma', 'babluseth3522@gmail.com', 0, 'e10adc3949ba59abbe56e057f20f883e', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_cars`
--

CREATE TABLE `user_cars` (
  `c_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `capacity` int(11) NOT NULL,
  `milage` int(11) NOT NULL,
  `reg_no` varchar(12) NOT NULL,
  `model` varchar(10) NOT NULL,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cars`
--

INSERT INTO `user_cars` (`c_id`, `u_id`, `name`, `number`, `capacity`, `milage`, `reg_no`, `model`, `modified_on`, `modified_by`, `created_by`, `created_on`) VALUES
(1, 1, 'Micra', 'jk4545', 5, 15, 'ki89898', 'XVS', '2019-03-03 11:54:43', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `u_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`u_id`, `c_id`, `modified_on`, `modified_by`, `created_on`, `created_by`) VALUES
(1, 1, '2019-03-03 12:37:10', 0, '0000-00-00 00:00:00', 0),
(1, 1, '2019-03-03 12:37:10', 0, '0000-00-00 00:00:00', 0),
(1, 1, '2019-03-03 12:37:10', 0, '0000-00-00 00:00:00', 0),
(1, 1, '2019-03-03 12:37:10', 0, '0000-00-00 00:00:00', 0),
(1, 1, '2019-03-03 12:37:10', 0, '0000-00-00 00:00:00', 0),
(1, 1, '2019-03-03 12:37:10', 0, '0000-00-00 00:00:00', 0),
(1, 1, '2019-03-03 12:37:10', 0, '0000-00-00 00:00:00', 0),
(1, 1, '2019-03-03 12:37:10', 0, '0000-00-00 00:00:00', 0),
(1, 1, '2019-03-03 12:37:10', 0, '0000-00-00 00:00:00', 0),
(1, 1, '2019-03-03 12:37:10', 0, '0000-00-00 00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars_pool`
--
ALTER TABLE `cars_pool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `pool_data`
--
ALTER TABLE `pool_data`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `pool_notifications`
--
ALTER TABLE `pool_notifications`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cars`
--
ALTER TABLE `user_cars`
  ADD PRIMARY KEY (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars_pool`
--
ALTER TABLE `cars_pool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pool_data`
--
ALTER TABLE `pool_data`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pool_notifications`
--
ALTER TABLE `pool_notifications`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_cars`
--
ALTER TABLE `user_cars`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
