-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 07:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artisticlane`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` varchar(20) NOT NULL,
  `admin_pwd` varchar(20) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `admin_phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_pwd`, `admin_name`, `email_id`, `admin_phone`) VALUES
('admin', 'admin', 'Artistic Lane', 'art@gmail.com', 9845123546);

-- --------------------------------------------------------

--
-- Table structure for table `art_info`
--

CREATE TABLE `art_info` (
  `art_id` int(10) NOT NULL,
  `art_name` varchar(50) NOT NULL,
  `art_category` varchar(20) NOT NULL,
  `art_price` int(20) NOT NULL,
  `art_discount` int(10) NOT NULL,
  `art_photo` varchar(50) NOT NULL,
  `art_detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `art_info`
--

INSERT INTO `art_info` (`art_id`, `art_name`, `art_category`, `art_price`, `art_discount`, `art_photo`, `art_detail`) VALUES
(2, 'Paquin', 'Art Deco', 200000, 195000, ' ../img/26-03-2017-1490512983.jpg', '										This is cool pic for art deco. and look like real life image.					'),
(3, 'Sculpture', 'Art Deco', 25000, 23500, ' 	\n../img/26-03-2017-1490513039.jpg', '					This is cool pic for art deco. and look like real life image.\r\n				'),
(4, 'Art1', 'Fine Art', 1500, 100, ' ../img/26-03-2017-1490513278.jpg', 'This cool and Attractive image . and this famous art & represent to the community. 				 123'),
(5, 'art2', 'Fine Art', 3000, 300, ' ../img/26-03-2017-1490513330.jpg', '										This cool and Attractive image . and this famous art & represent to the community.\r\n				1212				'),
(6, 'Art3', 'Fine Art', 3500, 1000, '../img/26-03-2017-1490513373.jpg', 'This cool and Attractive image . and this famous art & represent to the community.\r\n'),
(7, 'Art1', 'Folk', 2000, 100, '../img/26-03-2017-1490516560.jpg', 'This is art for folk and too good . and its official art. this is art used to'),
(8, 'Art2', 'Folk', 1800, 500, '../img/26-03-2017-1490516896.jpg', 'This is art for folk and too good . and its official art. this is art used to decorate.'),
(9, 'krishna', 'Folk', 1234, 1000, '../img/26-03-2017-1490516947.jpg', 'This is art for folk and too good . and its official art. this is art used to decorate.'),
(10, 'Art1', 'Pop Art', 1900, 1000, '../img/26-03-2017-1490517387.jpg', 'This Is Attractive  ARt. This is art very use.'),
(11, 'Art2', 'Pop Art', 2200, 1000, ' ../img/28-02-2019-1551351752.jpg', '										This Is Attractive ARt. This is art very unique.\r\n								'),
(12, 'Art3', 'Pop Art', 5000, 2000, '../img/26-03-2017-1490517473.jpg', 'This Is Attractive ARt. This is art very use.\r\n'),
(13, 'Art1', 'Street Art', 2000, 1000, '../img/26-03-2017-1490517588.jpg', 'This is art too good and most use of the day..				'),
(14, 'Art2', 'Street Art', 1200, 1000, '../img/26-03-2017-1490517690.jpg', 'This is art for folk and too good . and its official art. this is art used to decorate.\r\n'),
(15, 'Art3', 'Street Art', 2000, 120, '../img/26-03-2017-1490517718.jpg', 'This is art for folk and too good . and its official art. this is art used to decorate.'),
(16, 'Art4', 'Street Art', 5500, 2000, '../img/26-03-2017-1490517770.jpg', 'This Is Attractive ARt. This is art very use.\r\n'),
(17, 'Art2har', 'Fine Art', 1000, 500, '../img/26-03-2017-1490520544.jpg', 'this is good product'),
(18, 'Diana Hobson Fine Art LA', 'Fine Art', 5000, 1000, '../img/09-02-2019-1549710979.jpg', 'Diana Hobson Fine Art LA, Art Gallery, Venice, Venice'),
(19, 'Celtic Art', 'Fine Art', 200000, 195000, '../img/02-03-2019-1551527463.jpg', 'Broadly speaking, the earliest Celtic arts and crafts appeared in Iron Age Europe with the first migrations of Celts coming from the steppes of Southern Russia, from about 1000 BCE onwards. Any European art, craftwork or architecture before this date derives from earlier Bronze Age societies of the Urnfield culture (1200-750 BCE), or the Tumulus (1600-1200 BCE), Unetice (2300-1600 BCE) or Beaker (2800â€“1900 BCE) cultures.\r\nSee also: Irish Bronze Age and Irish Iron Age.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_info`
--

CREATE TABLE `booking_info` (
  `bart_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `art_id` int(10) NOT NULL,
  `Name` text NOT NULL,
  `bart_name` varchar(50) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `delivery_address` varchar(50) NOT NULL,
  `bart_quantity` int(10) NOT NULL,
  `bart_date` varchar(30) NOT NULL DEFAULT 'CURRENT_TIMESTAMP(50)',
  `bart_price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `booking_info`
--

INSERT INTO `booking_info` (`bart_id`, `cust_id`, `art_id`, `Name`, `bart_name`, `order_status`, `delivery_address`, `bart_quantity`, `bart_date`, `bart_price`) VALUES
(2, 1, 3, 'vishal', 'Sculpture', 'Available', 'Burari, Delhi', 5, '2022-04-26 16:28:35', 12500),
(3, 1, 4, 'vishal', 'Art1', 'Available', 'Burari, Delhi', 5, '2022-04-26 16:28:51', 7500),
(7, 3, 5, 'Brock ', 'art2', 'Available', 'EL, Philipins', 2, '2022-05-13 16:04:33', 6000),
(8, 3, 10, 'Brock ', 'Art1', 'Available', '64378,EL, Mountain , Philipins', 2, '2022-05-15 16:21:25', 3800),
(13, 1, 3, 'Aishwarrya', 'Sculpture', 'Available', 'Lohegaon', 2, '2022-05-17 21:44:58', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `cust_id` int(10) NOT NULL,
  `cust_pwd` varchar(20) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `cust_Fname` varchar(10) NOT NULL,
  `cust_Lname` varchar(10) NOT NULL,
  `cust_sex` varchar(10) NOT NULL,
  `cust_phone` bigint(10) NOT NULL,
  `cust_state` varchar(20) NOT NULL,
  `cust_place` varchar(20) NOT NULL,
  `cust_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`cust_id`, `cust_pwd`, `cust_email`, `cust_Fname`, `cust_Lname`, `cust_sex`, `cust_phone`, `cust_state`, `cust_place`, `cust_address`) VALUES
(1, '1234', 'aishwaryashrivastava123@gmail.com', 'Aishwarrya', 'Shrivastav', 'Female', 9899171714, 'Agra', 'India', 'H-No: b 973, Street No. 8,, Nathu colony, Burari, '),
(3, 'cust', 'Shashank@gmail.com', 'Shashank ', 'Arya', 'Male', 9845123546, 'Nainital', 'Uttrakhand', 'H/No. 702 Ram Colony, Nainital'),
(4, 'Password@123', 'Ragini@gmail.com', 'Ragini', 'Pandey', 'Female', 9841241456, 'Pune', 'India', 'H/No 451 NDA, Pune');

-- --------------------------------------------------------

--
-- Table structure for table `exhibition_events`
--

CREATE TABLE `exhibition_events` (
  `ex_id` int(100) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_about` varchar(500) NOT NULL,
  `event_category` varchar(100) NOT NULL,
  `event_venue` varchar(500) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(500) NOT NULL,
  `event_photo` varchar(900) NOT NULL,
  `g_url` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exhibition_events`
--

INSERT INTO `exhibition_events` (`ex_id`, `event_name`, `event_about`, `event_category`, `event_venue`, `event_date`, `event_time`, `event_photo`, `g_url`) VALUES
(7, 'Kala Sutra - 2022 ', 'Group show', 'Pop Art', '7A Kennedy Road Central, Hong Kong', '2022-02-22', ' 12:00', '../img/eventimages/14803275202.png', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3692.05571899707!2d114.16306561490542!3d22.275879085336292!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3404006879a43efd%3A0x5012aac7ca342320!2sAsia%20Society%20Hong%20Kong%20Center!5e0!3m2!1sen!2sin!4v1652803745005!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(8, 'Art Dubai / Modern 2023', 'Group show at booth M10.', 'Art Deco', 'Madinat Jumeirah', '2023-04-04', ' 10:00', '../img/eventimages/1521453751Dubai-Medium.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d231099.559377373!2d55.119675829118016!3d25.17182057770618!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f6a53621d8839%3A0x809eebc41608ad43!2sArt%20Dubai!5e0!3m2!1sen!2sin!4v1652803557177!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(10, 'Art Stage Singapore 2024', 'Group show', 'Art Deco', 'Marina Bay Sands Expo & Convention Centre', '2024-03-01', '15:33', '../img/eventimages/26-03-2017-1490516560.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.819303593541!2d103.84291831475396!3d1.2822021990648087!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da190cd5fe97f5%3A0x220c387576c55cc!2sArt%20Stage%20Singapore!5e0!3m2!1sen!2sin!4v1652803613165!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(11, 'Art Therapy Hong Kong 2022', 'Street Art Display', 'Street Art', 'Art Therapy Hong Kong, 11th Floor, Office No, Somptueux Central, 113,, 52 Wellington St, Central, Hong Kong', '2022-12-12', '12:12', '../img/eventimages/28-02-2019-1551354109.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3691.8979297818078!2d114.15313781490562!3d22.28185598533328!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x34040064d2bdc441%3A0xd16e95440dcabeb3!2sArt%20Therapy%20Hong%20Kong!5e0!3m2!1sen!2sin!4v1652804044437!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_info`
--

CREATE TABLE `feedback_info` (
  `feed_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `Feed_Status` varchar(50) NOT NULL,
  `Feed_Response` varchar(50) NOT NULL,
  `Feed_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `feedback_info`
--

INSERT INTO `feedback_info` (`feed_id`, `cust_id`, `email_id`, `Feed_Status`, `Feed_Response`, `Feed_type`) VALUES
(2, 3, 'cust', 'I like quality', 'Positive', 'Quality'),
(5, 1, 'aishwaryashrivastava123@gmail.com', 'late delivery', 'Negative', 'Service');

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `pay_id` int(10) NOT NULL,
  `bart_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `pay_amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`pay_id`, `bart_id`, `cust_id`, `pay_amount`) VALUES
(2, 2, 1, 12500),
(3, 3, 1, 7500),
(7, 7, 3, 6000),
(8, 8, 3, 3800),
(13, 13, 1, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `resetpass`
--

CREATE TABLE `resetpass` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resetpass`
--

INSERT INTO `resetpass` (`id`, `code`, `email`) VALUES
(1, '16283c5d9f2671', 'aishwaryashrivastava123@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `Login_id` (`email_id`);

--
-- Indexes for table `art_info`
--
ALTER TABLE `art_info`
  ADD PRIMARY KEY (`art_id`);

--
-- Indexes for table `booking_info`
--
ALTER TABLE `booking_info`
  ADD PRIMARY KEY (`bart_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `art_id` (`art_id`),
  ADD KEY `cust_id_2` (`cust_id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `cust_email` (`cust_email`),
  ADD UNIQUE KEY `cust_id_4` (`cust_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `cust_id_2` (`cust_id`),
  ADD KEY `cust_id_3` (`cust_id`);

--
-- Indexes for table `exhibition_events`
--
ALTER TABLE `exhibition_events`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedback_info`
--
ALTER TABLE `feedback_info`
  ADD PRIMARY KEY (`feed_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `bart_id` (`bart_id`,`cust_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `resetpass`
--
ALTER TABLE `resetpass`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `art_info`
--
ALTER TABLE `art_info`
  MODIFY `art_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `booking_info`
--
ALTER TABLE `booking_info`
  MODIFY `bart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `cust_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exhibition_events`
--
ALTER TABLE `exhibition_events`
  MODIFY `ex_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback_info`
--
ALTER TABLE `feedback_info`
  MODIFY `feed_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_info`
--
ALTER TABLE `payment_info`
  MODIFY `pay_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `resetpass`
--
ALTER TABLE `resetpass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_info`
--
ALTER TABLE `booking_info`
  ADD CONSTRAINT `booking_info_ibfk_1` FOREIGN KEY (`art_id`) REFERENCES `art_info` (`art_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_info_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer_info` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback_info`
--
ALTER TABLE `feedback_info`
  ADD CONSTRAINT `feedback_info_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_info` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD CONSTRAINT `payment_info_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_info` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_info_ibfk_2` FOREIGN KEY (`bart_id`) REFERENCES `booking_info` (`bart_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
