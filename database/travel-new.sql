-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2017 at 10:12 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `Advid` int(50) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Companyname` varchar(100) NOT NULL,
  `Pic` varchar(1000) NOT NULL,
  `Detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`Advid`, `Title`, `Companyname`, `Pic`, `Detail`) VALUES
(1, 'Tour and Travel', 'Eflio .com', '115.jpg', 'Find information on the travel and trade provided by Kaler Enterprises. Users can get detailed information about the travel agents, inbound tour operators, tourist transport operators, adventure tour operators, domestic tour operators, etc. in India. Guidelines for respective agencies and operators are provided. List of approved travel trade operators can be accessed.\n'),
(2, 'Tour and Travel', ' Life Trip Travel Agency ', '117.jpg', 'Find information on the travel and trade provided by My Tour. Users can get detailed information about the travel agents, inbound tour operators, tourist transport operators, adventure tour operators, domestic tour operators, etc. in India. Guidelines for respective agencies and operators are provided. List of approved travel trade operators can be accessed.\r\n'),
(3, 'Tour and Travel', 'New View Travel Agency', '119.jpg', 'Find information on the travel and trade provided by My Tour. Users can get detailed information about the travel agents, inbound tour operators, tourist transport operators, adventure tour operators, domestic tour operators, etc. in India. Guidelines for respective agencies and operators are provided. List of approved travel trade operators can be accessed.'),
(5, 'Tour and Travel', 'Sysny', '118.jpg', 'Find information on the travel and trade provided by My Tour. Users can get detailed information about the travel agents, inbound tour operators, tourist transport operators, adventure tour operators, domestic tour operators, etc. in India. Guidelines for respective agencies and operators are provided. List of approved travel trade operators can be accessed.\r\n'),
(8, 'Tour and Travel', 'Merrific', '124.jpg', 'Find information on the travel and trade provided by My Tour. Users can get detailed information about the travel agents, inbound tour operators, tourist transport operators, adventure tour operators, domestic tour operators, etc. in India. Guidelines for respective agencies and operators are provided. List of approved travel trade operators can be accessed.\r\n'),
(9, 'Tour and Travel', 'Easymost', '125.jpg', 'Find information on the travel and trade provided by My Tour. Users can get detailed information about the travel agents, inbound tour operators, tourist transport operators, adventure tour operators, domestic tour operators, etc. in India. Guidelines for respective agencies and operators are provided. List of approved travel trade operators can be accessed.'),
(10, 'Tour and Travel', 'Guideaid', '118.jpg', 'Find information on the travel and trade provided by My Tour. Users can get detailed information about the travel agents, inbound tour operators, tourist transport operators, adventure tour operators, domestic tour operators, etc. in India. Guidelines for respective agencies and operators are provided. List of approved travel trade operators can be accessed.'),
(11, 'Tour and Travel', 'Vyand', '126.jpg', 'Find information on the travel and trade provided by My Tour. Users can get detailed information about the travel agents, inbound tour operators, tourist transport operators, adventure tour operators, domestic tour operators, etc. in India. Guidelines for respective agencies and operators are provided. List of approved travel trade operators can be accessed.'),
(12, 'Tour and Travel', 'Celouro', '127.jpg', 'Find information on the travel and trade provided by My Tour. Users can get detailed information about the travel agents, inbound tour operators, tourist transport operators, adventure tour operators, domestic tour operators, etc. in India. Guidelines for respective agencies and operators are provided. List of approved travel trade operators can be accessed.'),
(14, 'Tourism', 'Destinations Travel', '113.jpg', 'Find information on the travel and trade provided by My Tour. Users can get detailed information about the travel agents, inbound tour operators, tourist transport operators, adventure tour operators, domestic tour operators, etc. in India. Guidelines for respective agencies and operators are provided. List of approved travel trade operators can be accessed.'),
(15, 'Tourism', 'Adventure Makers', '111.jpg', 'Find information on the travel and trade provided by My Tour. Users can get detailed information about the travel agents, inbound tour operators, tourist transport operators, adventure tour operators, domestic tour operators, etc. in India. Guidelines for respective agencies and operators are provided. List of approved travel trade operators can be accessed.'),
(16, 'Tourism', 'Goin My Way', '104.jpg', 'Find information on the travel and trade provided by My Tour. Users can get detailed information about the travel agents, inbound tour operators, tourist transport operators, adventure tour operators, domestic tour operators, etc. in India. Guidelines for respective agencies and operators are provided. List of approved travel trade operators can be accessed.');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(100) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created`) VALUES
(1, 'Family Tours', 'Special for family', 0),
(3, 'Adventure Tours', '', 0),
(4, 'Special Event Tours', '', 0),
(5, 'National Parks', '', 0),
(7, 'Small Group Tours', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phno` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Message` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `Name`, `Phno`, `Email`, `Message`) VALUES
(7, 'Yusuph', '0714454282', 'kajabukama@gmail.com', 'Example of message from the user');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `Enquiryid` int(50) NOT NULL,
  `Packageid` int(50) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Mobileno` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `NoofDays` int(50) NOT NULL,
  `Child` int(50) NOT NULL,
  `Adults` int(50) NOT NULL,
  `Message` varchar(900) NOT NULL,
  `Statusfield` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`Enquiryid`, `Packageid`, `Name`, `Gender`, `Mobileno`, `Email`, `NoofDays`, `Child`, `Adults`, `Message`, `Statusfield`) VALUES
(3, 1, 'Manpreet', 'Female', '9779730479', 'manpreetkaler13@yahoo.com', 2, 1, 4, 'We have read about the interest your advertisement in the times of India about the vacation trip. We will appreciate, if you kindly send the detailed information about the cost of the trip,the luggage wight, economy class and first class and etc. . The above information is required for our managing director who will like to enjoy the holiday trip along with his family.', 'Pending'),
(5, 2, 'Nandni', 'Female', '7696303090', 'nandni@gmail.com', 2, 2, 3, 'We have read about the interest your advertisement in the times of India about the vacation trip. We will appreciate, if you kindly send the detailed information about the cost of the trip,the luggage wight, economy class and first class and etc. . The above information is required for our managing director who will like to enjoy the holiday trip along with his family.', 'Pending'),
(6, 5, 'Rakesh', 'Male', '9876123456', 'rakesh@yahoo.com', 4, 2, 2, 'We have read about the interest your advertisement in the times of India about the vacation trip. We will appreciate, if you kindly send the detailed information about the cost of the trip,the luggage wight, economy class and first class and etc. . The above information is required for our managing director who will like to enjoy the holiday trip along with his family.', 'Pending'),
(7, 4, 'Navneet', 'Female', '9463958058', 'neerubawa@yahoo.com', 8, 2, 6, 'We have read about the interest your advertisement in the times of India about the vacation trip. We will appreciate, if you kindly send the detailed information about the cost of the trip,the luggage wight, economy class and first class and etc. . The above information is required for our managing director who will like to enjoy the holiday trip along with his family.', 'Pending'),
(8, 3, 'Rohan', 'Male', '9501065206', 'rohan@gmail.com', 3, 1, 5, 'We have read about the interest your advertisement in the times of India about the vacation trip. We will appreciate, if you kindly send the detailed information about the cost of the trip,the luggage wight, economy class and first class and etc. . The above information is required for our managing director who will like to enjoy the holiday trip along with his family.', 'Pending'),
(9, 6, 'Jassi', 'Female', '9876123456', 'jass@gmail.com', 2, 1, 5, 'We have read about the interest your advertisement in the times of India about the vacation trip. We will appreciate, if you kindly send the detailed information about the cost of the trip,the luggage wight, economy class and first class and etc. . The above information is required for our managing director who will like to enjoy the holiday trip along with his family.', 'Pending'),
(10, 11, 'Shavir', 'Male', '9915510777', 'shavirpaul@gmail.com', 6, 1, 2, 'We have read about the interest your advertisement in the times of India about the vacation trip. We will appreciate, if you kindly send the detailed information about the cost of the trip,the luggage wight, economy class and first class and etc. . The above information is required for our managing director who will like to enjoy the holiday trip along with his family.', 'Pending'),
(11, 13, 'Nikhil', 'Male', '9871234561', 'nikhil@gmail.com', 2, 2, 2, 'We have read about the interest your advertisement in the times of India about the vacation trip. We will appreciate, if you kindly send the detailed information about the cost of the trip,the luggage wight, economy class and first class and etc. . The above information is required for our managing director who will like to enjoy the holiday trip along with his family.', 'Pending'),
(12, 15, 'Rehan', 'Male', '9876123456', 'rehan@yahoo.com', 3, 3, 2, 'We have read about the interest your advertisement in the times of India about the vacation trip. We will appreciate, if you kindly send the detailed information about the cost of the trip,the luggage wight, economy class and first class and etc. . The above information is required for our managing director who will like to enjoy the holiday trip along with his family.', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(200) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` int(200) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `detail` varchar(8000) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `category`, `subcategory`, `price`, `image`, `detail`, `created`) VALUES
(29, 'asfdfsdfsdfsdf', 1, 25, 450000, 'windows_8_logo-wallpaper-1366x768.jpg', 'asfdsfgfdgfd fdgfgdfgfdgdfg', 1497130695);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`id`, `enquiry_id`, `sender`, `message`) VALUES
(1, 1, 6, 'sfsfdfdfsdfdsf'),
(2, 7, 6, 'asdsadsadsadsadsadsad');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `catid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `catid`, `image`, `description`, `created`) VALUES
(25, 'National Parks in Kerala', 5, 'windows_4-wallpaper-1366x768.jpg', 'Keralaa the gods own country is famous for its backwater, beaches and scenic beauty and wildlife, wildlife in Kerala are indeed some of the most magnificent and varied found anywhere in the world. The Western Ghats, the natural mountain barriers of Kerala, bordering Tamil Nadu and Karnataka are home to the majority of Kerala\'s wildlife, below is the list of some of the important wildlife national parks in Kerela.', 0),
(26, 'National Parks in Rajasthan', 5, '6.jpg', 'Rajasthan the Largest state of India, famous for its rich culture and heritage, also have rich flora and fauna, although the forest cover is very little compare to other Indian states. Ranthambore National park at Rajasthan is world famous for tigers, below is the list of important wildlife national parks in Rajasthan. ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'Administrator',
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `created`) VALUES
(9, 'Abbas', 'Daudi', 'abbas@gmail.com', 'abbas', 'Administrator', 1496256825),
(6, 'Yusuph', 'Kajabukama', 'kajabukama@gmail.com', 'Yusuph', 'Administrator', 1496243870);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`Advid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`Enquiryid`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `Advid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `Enquiryid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
