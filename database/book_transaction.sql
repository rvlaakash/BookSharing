-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2021 at 02:01 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

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
-- Table structure for table `book_transaction`
--

CREATE TABLE `book_transaction` (
  `book_id` int(255) NOT NULL COMMENT 'This is book id',
  `book_name` varchar(255) NOT NULL COMMENT 'This is book name',
  `book_price` int(255) NOT NULL COMMENT 'This is book price',
  `book_author` varchar(255) NOT NULL COMMENT 'This is book publisher name',
  `book_coverpage` varchar(255) DEFAULT NULL COMMENT 'This is image of book cover',
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
(4, '4gerg', 321, 'erherh5', 'uploads/Screenshot (21)98324.png', 2012, 'rgewbhew4wb4', 7, NULL, '2021-12-16 20:18:48'),
(5, '4gerg', 321, 'erherh5', 'uploads/Screenshot (10)16855.png', 2012, 'rgewbhew4wb4', 7, NULL, '2021-12-16 20:19:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_transaction`
--
ALTER TABLE `book_transaction`
  ADD PRIMARY KEY (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_transaction`
--
ALTER TABLE `book_transaction`
  MODIFY `book_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'This is book id', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
