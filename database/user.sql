-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2021 at 03:36 PM
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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(30) NOT NULL,
  `fname` varchar(190) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `email` varchar(90) NOT NULL,
  `Profile_photo` varchar(255) NOT NULL DEFAULT 'imges/person_outline.svg',
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
(1, 'FWEFEFERG', 'jainil112', 'jainilprajapati8092@gmail.com', 'imges/close.svg', 'edfgrtedwf', 382016, '2021-10-14 20:54:55', '98e12958bd84cd6db83fb90e7ad0d9021313afdd', 0),
(2, 'FWEFEFERG', 'kishan118', 'kishan8092@gmail.com', 'php/images/user1.png', 'edfgrtedwf', 382016, '2021-10-14 20:56:56', '98e12958bd84cd6db83fb90e7ad0d9021313afdd', 0),
(3, 'JAINIL PRAJAPATI B', 'kishan', 'bseds@gamil.com', 'php/images/user2.png', '103,Ambikadham-1 sector-15,gandhinager', 382016, '2021-10-14 20:57:54', '83add00ae8ba1d2dcfcb56d53524eab0a6cf498a', 0),
(4, 'KRISH PATEL', 'Krish1707', 'krishpatel@gmail.com', 'php/images/close.svg', 'pethapur,gadhinager', 382016, '2021-10-23 10:02:03', '0a8a049b06d1183540ddfa8b14f29532d273c8c4', 0),
(5, 'Dhruv raval', 'Dhruv raval', 'DJraval@gmail.com', 'php/images/close.svg', 'Mehshana,gandhinager', 382016, '2021-10-23 10:02:03', '0a8a049b06d1183540ddfa8b14f29532d273c8c4', 0),
(6, 'BHAVYA BHAVSHAR', 'bhavya012', 'bhavya012@gmail.com', 'imges/person_outline.svg', '103,Ambikadham-1 sector-15,gandhinager', 382016, '2021-11-06 13:33:04', '1eeb65bae656479467f57b9e690549df26c12b60', 0),
(7, 'UNKNOWN', 'unknowjrbvuhervoiu hhthb gbg puih5 uut5h', 'unknow@gmail.com', 'php/images/130218979_112420490716118_508434697698919479_n.jpg', '103,Ambikadham-1 sector-15,gandhinager', 382016, '2021-11-07 16:30:48', '1eeb65bae656479467f57b9e690549df26c12b60', 0),
(8, 'jainil prajapati b', 'DHRUV121', 'DJRaval121@gmail.com', 'imges/person_outline.svg', '103,Ambikadham-1 sector-15,gandhinager', 382016, '2021-11-25 13:34:29', '1eeb65bae656479467f57b9e690549df26c12b60', 0),
(9, 'priyanshu', 'Priyanshu127', 'pri127@gmail.com', 'imges/person_outline.svg', '103,Ambikadham-1 sector-15,gandhinager', 382016, '2021-12-16 18:00:53', '1eeb65bae656479467f57b9e690549df26c12b60', 0);

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `MysqlTrigger` BEFORE UPDATE ON `user` FOR EACH ROW SET NEW.fname=UPPer(NEW.fname)
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
