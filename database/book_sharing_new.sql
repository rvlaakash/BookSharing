-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2022 at 02:50 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_sharing`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(60) NOT NULL COMMENT 'This is admin id',
  `admin_name` varchar(255) NOT NULL COMMENT 'this is admin name',
  `admin_email` varchar(255) NOT NULL COMMENT 'This is admin email id',
  `password` varchar(255) NOT NULL COMMENT 'this is admin password'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `book_transaction`
--

CREATE TABLE `book_transaction` (
  `book_id` int(255) NOT NULL COMMENT 'This is book id',
  `book_name` varchar(255) NOT NULL COMMENT 'This is book name',
  `book_price` int(255) NOT NULL COMMENT 'This is book price',
  `book_author` varchar(255) NOT NULL COMMENT 'This is book publisher name',
  `book_coverpage` text DEFAULT NULL COMMENT 'This is image of book cover',
  `book_publish_year` year(4) NOT NULL COMMENT 'This is book publish date',
  `book_description` text NOT NULL COMMENT 'This is book description',
  `seller_id` int(255) NOT NULL COMMENT 'This is seller id',
  `buyer_id` int(11) DEFAULT NULL,
  `upload_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_transaction`
--

INSERT INTO `book_transaction` (`book_id`, `book_name`, `book_price`, `book_author`, `book_coverpage`, `book_publish_year`, `book_description`, `seller_id`, `buyer_id`, `upload_time`) VALUES
(19, 'ki', 2020, 'kishan', 'media/Book_cover_image1aoe_launch_1920x120080816.jpg', 2019, 'alksjh', 12, NULL, '2021-12-22 08:00:06'),
(20, 'k', 999, 'Stan lee', 'media/Book_cover_imageScreenshot (218)29809.png', 1999, 'kk', 12, NULL, '2021-12-25 20:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_guy`
--

CREATE TABLE `delivery_guy` (
  `delivery_guy_id` int(255) NOT NULL COMMENT 'This is delivery guy id',
  `delivery_guy_name` varchar(255) NOT NULL COMMENT 'This is delivery guy name',
  `delivery_guy_email` varchar(255) NOT NULL COMMENT 'This is delivery guy email',
  `delivery_guy_dob` date NOT NULL COMMENT 'This is delivery guy date of birth',
  `delivery_guy_address` varchar(255) NOT NULL,
  `delivery_guy_pincode` int(255) NOT NULL COMMENT 'This is delivery guy pincode',
  `delivery_guy_password` varchar(255) NOT NULL COMMENT 'This is delivery guy password',
  `delivery_guy_proof` varchar(255) NOT NULL COMMENT 'This is delivery guy id proof or adhar-card'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `Report_id` int(12) NOT NULL,
  `Report_msg` text NOT NULL,
  `reporter_id` int(12) NOT NULL,
  `reported_user_id` int(12) NOT NULL,
  `report_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(30) NOT NULL,
  `fname` varchar(190) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `email` varchar(90) NOT NULL,
  `Profile_photo` varchar(255) NOT NULL DEFAULT 'php/images/person_outline.svg',
  `address` text NOT NULL,
  `pincode` int(20) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `password` varchar(255) NOT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fname`, `user_name`, `email`, `Profile_photo`, `address`, `pincode`, `create_date`, `password`, `Status`) VALUES
(12, 'kishan rathod', 'kishan', 'ki@gmail.com', 'php/images/person_outline.svg', 'sevaliya', 388245, '2021-12-22 07:58:39', '5d5ffd878cc0947a896edca30a0bcacc852980ea', NULL);

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `MysqlTrigger` BEFORE UPDATE ON `user` FOR EACH ROW SET NEW.fname=UPPer(NEW.fname)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `usermessages`
--

CREATE TABLE `usermessages` (
  `msgid` int(11) NOT NULL,
  `sender` int(255) NOT NULL,
  `receiver` int(255) NOT NULL,
  `usermsg` text NOT NULL,
  `send_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wanr_user_delivery_guy`
--

CREATE TABLE `wanr_user_delivery_guy` (
  `wanr_id` int(255) NOT NULL,
  `warn_user_id` int(255) NOT NULL,
  `warning_messge` text NOT NULL,
  `warn_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `book_transaction`
--
ALTER TABLE `book_transaction`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `delivery_guy`
--
ALTER TABLE `delivery_guy`
  ADD PRIMARY KEY (`delivery_guy_id`),
  ADD UNIQUE KEY `delivery_guy_email` (`delivery_guy_email`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`Report_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `usermessages`
--
ALTER TABLE `usermessages`
  ADD PRIMARY KEY (`msgid`);

--
-- Indexes for table `wanr_user_delivery_guy`
--
ALTER TABLE `wanr_user_delivery_guy`
  ADD PRIMARY KEY (`wanr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(60) NOT NULL AUTO_INCREMENT COMMENT 'This is admin id';

--
-- AUTO_INCREMENT for table `book_transaction`
--
ALTER TABLE `book_transaction`
  MODIFY `book_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'This is book id', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `delivery_guy`
--
ALTER TABLE `delivery_guy`
  MODIFY `delivery_guy_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'This is delivery guy id';

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `Report_id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `usermessages`
--
ALTER TABLE `usermessages`
  MODIFY `msgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `wanr_user_delivery_guy`
--
ALTER TABLE `wanr_user_delivery_guy`
  MODIFY `wanr_id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
