-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2022 at 04:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` text COLLATE utf8_unicode_ci NOT NULL,
  `Password` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `Password`) VALUES
(1, 'admin@gmail.com', 'pass@123');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(12) NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `category` text COLLATE utf8_unicode_ci NOT NULL,
  `subcategory` text COLLATE utf8_unicode_ci NOT NULL,
  `nature` text COLLATE utf8_unicode_ci NOT NULL,
  `comp` text COLLATE utf8_unicode_ci NOT NULL,
  `file` text COLLATE utf8_unicode_ci NOT NULL,
  `pending` int(11) NOT NULL,
  `date` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `user`, `category`, `subcategory`, `nature`, `comp`, `file`, `pending`, `date`) VALUES
(1, 'aakash12', 'Student', 'IT', 'Noise Pollution', 'There is a noise pollution in our class. Due to that noise pollution we cannot focus on study.\r\nSo please change our classroom as soon as possible. ', './uploads/', 0, 'June 5, 2022, 7:42 pm'),
(2, 'Saurabh129', 'Student', 'Information Technology', 'Maintenance of the computer of AI/ML lab', 'Sir I want to inform you that some of the devices such as monitor, CPU and mouse are not working properly.\r\nSo kindly fix these issues as soon as possible.', './uploads/', 0, 'June 7, 2022, 11:08 am'),
(3, 'aakash12', 'Student', 'IT', 'water filter cleanup', 'There are lot of dirt near water filter on 3rd yr kindly ask the cleaner to clean it.', './uploads/', 0, 'June 7, 2022, 11:15 am'),
(4, 'aakash12', 'Student', 'IT', 'Noise Pollution', '5tfygvyhjijojnuy7', './uploads/', 0, 'June 7, 2022, 12:12 pm');

-- --------------------------------------------------------

--
-- Table structure for table `completedcomp`
--

CREATE TABLE `completedcomp` (
  `id` int(11) NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `compnum` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `completedcomp`
--

INSERT INTO `completedcomp` (`id`, `user`, `remarks`, `compnum`) VALUES
(1, 'aakash12', 'Problem Solve\r\n', '1'),
(2, 'Saurabh129', '', '2'),
(3, 'aakash12', 'your problem is solved', '3'),
(4, 'aakash12', 'Solve your', '4');

-- --------------------------------------------------------

--
-- Table structure for table `inprogressomp`
--

CREATE TABLE `inprogressomp` (
  `id` int(11) NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `compnum` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlogininfo`
--

CREATE TABLE `userlogininfo` (
  `id` int(11) NOT NULL,
  `fname` text COLLATE utf8_unicode_ci NOT NULL,
  `lname` text COLLATE utf8_unicode_ci NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `date` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userlogininfo`
--

INSERT INTO `userlogininfo` (`id`, `fname`, `lname`, `user`, `date`) VALUES
(1, 'Aakash', 'Sharma', 'aakash12', 'June 5, 2022, 7:40 pm'),
(2, 'Saurabh', 'Sakharkar', 'Saurabh129', 'June 7, 2022, 11:05 am'),
(3, 'Saurabh', 'Sakharkar', 'Saurabh129', 'June 7, 2022, 11:11 am'),
(4, 'Aakash', 'Sharma', 'aakash12', 'June 7, 2022, 11:13 am'),
(5, 'Aakash', 'Sharma', 'aakash12', 'June 7, 2022, 12:11 pm'),
(6, 'Aakash', 'Sharma', 'aakash12', 'June 7, 2022, 12:15 pm');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `fname` text COLLATE utf8_unicode_ci NOT NULL,
  `lname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `gender` text COLLATE utf8_unicode_ci NOT NULL,
  `pass` text COLLATE utf8_unicode_ci NOT NULL,
  `date` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `username`, `fname`, `lname`, `email`, `phone`, `gender`, `pass`, `date`) VALUES
(0, 'aakash12', 'Aakash', 'Sharma', 'aakash@gmail.com', '07038398546', 'Male', '123', 'June 5, 2022, 7:39 pm'),
(0, 'Saurabh129', 'Saurabh', 'Sakharkar', 'saurabh@gmail.com', '08848841848', 'Male', 'pass123', 'June 7, 2022, 11:04 am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `completedcomp`
--
ALTER TABLE `completedcomp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inprogressomp`
--
ALTER TABLE `inprogressomp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogininfo`
--
ALTER TABLE `userlogininfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `completedcomp`
--
ALTER TABLE `completedcomp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inprogressomp`
--
ALTER TABLE `inprogressomp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlogininfo`
--
ALTER TABLE `userlogininfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
